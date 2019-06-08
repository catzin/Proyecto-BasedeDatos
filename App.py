from PyQt5 import QtWidgets,QtGui,QtCore,Qt
from DatosPersonales import *
from MenuAdministrador import *
from DatosFamiliar import *
from DatosMexico import *
from PaisOrigen import *
import sys
#/Users/Catzin/Documents/PycharmProjects/basesfinal/venv/bin/python /Users/Catzin/Documents/PycharmProjects/basesfinal/prueba.py
if __name__ == '__main__':
    
    app = QtWidgets.QApplication(sys.argv)
    datosfam = DatosFamiliar()
    paisO = PaisOrigen()
    datosM = DatosMexico()
    datosper = DatosPersonales(datosfam,paisO,datosM)
    menu = MenuAdministrador(datosper)
    menu.mostrarMenu()


    app.exec_()
    









