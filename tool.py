#!/usr/bin/python3

from PyQt5.QtCore import *
from PyQt5.QtGui import *
from PyQt5.QtWidgets import *
import sys
import serial
import math


class SiliconToaster:
    def __init__(self, dev):
        self.ser = serial.Serial(dev, 9600)

    def read_voltage(self):
        """
        Retrieve voltage measurement from the device.
        :return: Voltage measurement.
        :rtype: float
        """
        self.ser.write(b'\x02')
        data = int.from_bytes(self.ser.read(2), 'big')
        return (data / 2**12) * 3.6 * 1000 * 0.74

    def on(self):
        """
        Turn on high-voltage generation.
        """
        self.ser.write(b'\x01\x01')
        assert self.ser.read(1) == b'\x01'
    
    def off(self):
        """
        Turn off high-voltage generation.
        """
        self.ser.write(b'\x01\x00')
        assert self.ser.read(1) == b'\x01'

    def set_pwm_settings(self, period: int, width: int):
        """
        Reconfigure PWM settings.
        :param period: Timer max counter value for PWM generation. Defines the
            period.
        :param width: Timer comparator value for PWM generation. Defines the
            pulse width.
        """
        if period < 1:
            raise ValueError('Invalid PWM period')
        if (width < 0) or (width > period):
            raise ValueError('Invalid PWM width')
        command = bytearray(b'\x03')
        command += period.to_bytes(2, 'big')
        command += width.to_bytes(2, 'big')
        self.ser.write(command)
        assert self.ser.read(1) == b'\x03'

    def software_shoot(self, duration: int):
        """
        Generate a pulse with the device to discharge de capacitors.
        """
        assert duration in range(0x10000)
        command = bytearray(b'\x04')
        command += duration.to_bytes(2, 'big')
        self.ser.write(command)
        assert self.ser.read(1) == b'\x04'


class VoltageViewer(QWidget):
    def __init__(self):
        super().__init__()
        self.setMinimumHeight(200)
        self.setMinimumWidth(200)
        self.data = []
        self.hist_size = 400
        self.vmax = 1500
        self.vsafe = 1000
        self.avg_samples = self.hist_size

    def paintEvent(self, event):
        """ Draw the widget. """
        painter = self.painter = QPainter()
        painter.begin(self)
        painter.setRenderHint(QPainter.Antialiasing)
        painter.fillRect(self.rect(), QBrush(Qt.black))

        width = self.width()
        height = self.height()

        y0 = self.w2sy(self.vsafe)
        y1 = self.w2sy(self.vmax)
        painter.fillRect(0, y0, width, y1-y0, QBrush(QColor(70, 20, 0), Qt.BDiagPattern))
        
        for i in range(0, self.vmax, 100):
            if i < self.vsafe:
                painter.setPen(QPen(QColor(50, 50, 50)))
            else:
                painter.setPen(QPen(QColor(70, 20, 0)))
            y = round(self.w2sy(i)) - 0.5
            painter.drawLine(QLineF(0, y, width, y))

        painter.setPen(QPen(Qt.yellow))
        for i in range(len(self.data)-1):
            v0 = self.data[i]
            v1 = self.data[i+1]
            x0 = self.w2sx(i)
            x1 = self.w2sx(i+1)
            y0 = self.w2sy(v0)
            y1 = self.w2sy(v1)
            painter.drawLine(QLineF(x0, y0, x1, y1))

        # Calculate average and standard deviation
        if len(self.data):
            samples = self.data[-self.avg_samples:]
            avg = sum(samples) / len(samples)
            std_dev = 0
            for value in self.data:
                std_dev += (value - avg) ** 2
            std_dev = math.sqrt(std_dev / len(samples))

            text_rect = self.rect()
            text = f"{self.data[-1]:.0f} V\n{avg:.0f} V\n{std_dev:.3f}"
            font = painter.font()
            font.setPixelSize(20)
            painter.setFont(font)
            painter.drawText(text_rect, Qt.AlignHCenter | Qt.AlignTop, text)

        painter.end()

    def add_data(self, value):
        self.data.append(value)
        while len(self.data) > self.hist_size:
            self.data.pop(0)

    def w2sy(self, y: float) -> float:
        """
        World-to-screen ordinate conversion.
        :param y: Ordinate in world.
        :return: Ordinate on screen.
        """
        h = self.height()
        return h - (y / self.vmax) * h

    def w2sx(self, x: float) -> float:
        """
        World-to-screen abscissa conversion.
        :param x: Abscissa in world.
        :return: Abscissa on screen.
        """
        return (x / (self.hist_size-1)) * self.width()


class Window(QWidget):
    def __init__(self):
        super().__init__()
        vbox = QVBoxLayout()
        vbox.setContentsMargins(4, 4, 4, 4)
        self.setLayout(vbox)
        hbox = QHBoxLayout()
        vbox.addLayout(hbox)
        
        w = QPushButton('On')
        hbox.addWidget(w)
        w.clicked.connect(self.on)

        w = QPushButton('Off')
        hbox.addWidget(w)
        w.clicked.connect(self.off)

        w = self.period_edit = QLineEdit('100')
        w.setMaximumWidth(50)
        w.setValidator(QIntValidator(1, 65535))
        hbox.addWidget(w)

        w = self.width_edit = QLineEdit('5')
        w.setMaximumWidth(50)
        w.setValidator(QIntValidator(1, 65535))
        hbox.addWidget(w)

        w = QPushButton('Apply')
        hbox.addWidget(w)
        w.clicked.connect(self.set_pwm_settings)
        
        w = self.shoot_edit = QLineEdit('10')
        w.setMaximumWidth(50)
        w.setValidator(QIntValidator(1, 0x10000))
        hbox.addWidget(w)
        
        w = QPushButton('Shoot')
        hbox.addWidget(w)
        w.clicked.connect(self.shoot)

        w = self.viewer = VoltageViewer()
        vbox.addWidget(w)

        self.silicon_toaster = SiliconToaster('/dev/ttyUSB0')

        timer = self.timer = QTimer()
        timer.setInterval(25)
        timer.timeout.connect(self.refresh_voltage)
        timer.start()

    def refresh_voltage(self):
        v = self.silicon_toaster.read_voltage()
        self.viewer.add_data(v)
        self.viewer.repaint()

    def on(self):
        """ Turn-on high voltage generation. """
        self.silicon_toaster.on()
    
    def off(self):
        """ Turn-off high voltage generation. """
        self.silicon_toaster.off()

    def set_pwm_settings(self):
        """ Reconfigure device PWM settings from UX input. """
        period = int(self.period_edit.text())
        width = int(self.width_edit.text())
        self.silicon_toaster.set_pwm_settings(period, width)

    def shoot(self):
        """ Software shoot with duration from UX. """
        duration = int(self.shoot_edit.text())
        self.silicon_toaster.software_shoot(duration)


if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = Window()
    window.show()
    sys.exit(app.exec_())
