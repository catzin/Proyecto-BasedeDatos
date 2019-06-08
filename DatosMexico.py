from PyQt5 import QtWidgets, QtGui, QtCore, Qt
from PyQt5.QtGui import QIcon, QImage, QPixmap
import sys
import estilos
from Conexion import *


class DatosMexico:

    def __init__(self):
        self.app = QtWidgets.QApplication(sys.argv)
        self.window = QtWidgets.QMainWindow()
        self.window.setWindowTitle("Datos en México")
        self.window.resize(400, 495)
        self.window.setStyleSheet("background-image: url(:/background/fondo.jpg);")
        self.label = QtWidgets.QLabel(self.window)
        self.label.resize(944, 495)
        # self.label.setScaledContents(True)
        self.colocarBotones()
    

    def colocarBotones(self):

        self.Etiqueta4 = QtWidgets.QLabel(self.window)
        self.Etiqueta4.setText("Fecha de Llegada:")
        self.Etiqueta4.setGeometry(50, 10, 160, 110)
        self.Etiqueta4.setStyleSheet("QLabel{ background-color : red; color : black; font-size: 20px;}")

        self.fechaLlegada = QtWidgets.QLineEdit(self.window)
        self.fechaLlegada.setGeometry(220, 50, 150, 30)
        self.fechaLlegada.setStyleSheet("QLineEdit{ background-color : red; color : black; font-size: 20px;}")

        self.Etiqueta1 = QtWidgets.QLabel(self.window)
        self.Etiqueta1.setText("Estado:")
        self.Etiqueta1.setGeometry(50, 80, 140, 50)
        self.Etiqueta1.setStyleSheet("QLabel { background-color : red; color : black; font-size: 20px;}")

        Estados = ["Aguascalientes","Baja California","Baja California Sur","Campeche","Chiapas","Chihuahua","Ciudad de México","Coahuila","Colima","Durango","Guanajuato","Guerrero","Hidalgo","Jalisco","Estado de México","Michoacán","Morelos","Nayarit","Nuevo León","Oaxaca","Puebla","Querétaro","Quintana Roo","San Luis Potosí","Sinaloa","Sonora","Tabasco","Tamaulipas","Tlaxcala","Veracruz","Yucatán","Zacatecas"]

        self.estado = QtWidgets.QComboBox(self.window)
        # x , y , largo , ancho
        self.estado.setGeometry(50, 150, 200, 30)
        self.estado.addItems(Estados)
        self.estado.setStyleSheet("QComboBox{font-size:18px}")

        self.Etiqueta2 = QtWidgets.QLabel(self.window)
        self.Etiqueta2.setText("Domicilio en México:")
        self.Etiqueta2.setGeometry(50, 200, 250, 25)
        self.Etiqueta2.setStyleSheet("QLabel{ background-color : red; color : black; font-size: 20px;}")

        self.Domicilio = QtWidgets.QLineEdit(self.window)
        self.Domicilio.setGeometry(50, 250, 300, 30)
        self.Domicilio.setStyleSheet("QLineEdit{ background-color : red; color : black; font-size: 20px;}")

        self.Etiqueta3 = QtWidgets.QLabel(self.window)
        self.Etiqueta3.setGeometry(50,300,100,30)
        self.Etiqueta3.setStyleSheet("QLabel{ background-color : red; color : black; font-size: 20px;}")
        self.Etiqueta3.setText("Teléfono:")
        #self.Etiqueta3.setStyleSheet("QLabel{ background: orange; color : black; font-size: 20px;}")

        self.telefono = QtWidgets.QLineEdit(self.window)
        self.telefono.setStyleSheet("QLineEdit{ background-color : red; color : black; font-size: 18px;}")
        self.telefono.setGeometry(200,300,150,30)

        self.boton = QtWidgets.QPushButton(self.window)
        self.boton.setText("Continuar")
        self.boton.setGeometry(280, 400, 100, 30)
        self.boton.setStyleSheet("QPushButton { background : #5DADE2; color : black; font-size: 20px;}")
        


        