from PyQt5 import QtWidgets,QtGui,QtCore,Qt
from PyQt5.QtGui import QIcon,QImage,QPixmap
import sys
from DatosPersonales import *
from DatosFamiliar import *
import estilos

class MenuAdministrador:
    def __init__(self,datosp):
    
        self.datosp = datosp
       
        #self.datos = datos
        #self.app = QtWidgets.QApplication(sys.argv)
        self.window = QtWidgets.QMainWindow()
        self.window.setWindowTitle("Menu")
        self.window.setStyleSheet("background-image: url(:/background/mexico.png);")
        self.image1Path ="/Users/Catzin/Documents/PycharmProjects/bases/log.png"
        self.colocarImagen()
        self.colocarBotones()
        self.window.resize(400, 500)
        #self.window.show()
        

    def colocarImagen(self):
       
        self.image = QtGui.QImage(self.image1Path)
        self.label = QtWidgets.QLabel(self.window)
        self.label.setGeometry(100,20,200,200)
        self.label.setPixmap(QtGui.QPixmap.fromImage(self.image))
        self.label.setScaledContents(True)
    
    def mostrarMenu(self):
        self.window.show()
        #sys.exit(self.app.exec_())

    def colocarBotones(self):
        self.registrarMigrante = QtWidgets.QPushButton(self.window)
        self.registrarMigrante.setText("Registar Datos Personales")
        self.registrarMigrante.setGeometry(100,250,200,50)
        self.registrarMigrante.clicked.connect(self.showEvent)

        self.DatosPais = QtWidgets.QPushButton(self.window)
        self.DatosPais.setText("Entrevistador")
        self.DatosPais.setGeometry(100,310,200,50)
        #self.DatosPais.clicked.connect(self.showPaisOrigen)
    
     
    def showEvent(self,event):
        self.datosp.window.show()
    
