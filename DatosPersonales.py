from PyQt5 import QtWidgets,QtGui,QtCore,Qt
from PyQt5.QtGui import QIcon,QImage,QPixmap
import sys
import estilos
from Migrante import *
from Conexion import *
from DatosFamiliar import *
from Familiar import *

class DatosPersonales:

    def __init__(self,datosf,paiso,datosm):
        self.datosf = datosf
        self.paiso = paiso
        self.datosm = datosm
        self.idmigrante = 0
        self.window = QtWidgets.QMainWindow()
        self.window.setWindowTitle("Datos Personales")
        self.window.resize(944, 495)
        self.window.setStyleSheet("background-image: url(:/background/fondo.jpg);")
        self.label = QtWidgets.QLabel(self.window)
        self.label.resize(944,495)
        #self.label.setScaledContents(True)
        self.colocarBotones()
        #self.window.show()
        #sys.exit(self.app.exec_())


    def colocarBotones(self):
        self.Etiqueta1  = QtWidgets.QLabel(self.window)
        self.Etiqueta1.setText("Nombre(s):")
        self.Etiqueta1.setGeometry(25,10,130,100)
        self.Etiqueta1.setStyleSheet("QLabel { background-color : red; color : black; font-size: 20px;}")

        self.nombre = QtWidgets.QLineEdit(self.window)
        self.nombre.setStyleSheet("QLineEdit { background-color : red; color : black; font-size: 18px;}")
        self.nombre.setGeometry(130,50,200,25)

        self.Etiqueta2  = QtWidgets.QLabel(self.window)
        self.Etiqueta2.setText("Apellidos:")
        self.Etiqueta2.setGeometry(350,10,130,100)
        self.Etiqueta2.setStyleSheet("QLabel{ background-color : red; color : black; font-size: 20px;}")

        self.Apellidos = QtWidgets.QLineEdit(self.window)
        self.Apellidos.setStyleSheet("QLineEdit { background-color : red; color : black; font-size: 18px;}")
        self.Apellidos.setGeometry(450,50,200,25)

        self.Etiqueta3  = QtWidgets.QLabel(self.window)
        self.Etiqueta3.setText("Estado civil:")
        self.Etiqueta3.setGeometry(670,10,130,100)
        self.Etiqueta3.setStyleSheet("QLabel{ background-color : red; color : black; font-size: 20px;}")
        

        self.estadoCivil = QtWidgets.QComboBox(self.window)
        # x , y , largo , ancho
        self.estadoCivil.setGeometry(790,45,130,30)
        estados = ["Soltero(a)","Unión libre","Casado(a)","Divorciado(a)","Viudo(a)","Otro"]
        self.estadoCivil.addItems(estados)
        self.estadoCivil.setStyleSheet("QComboBox{font: 18px}")

        self.Etiqueta4  = QtWidgets.QLabel(self.window)
        self.Etiqueta4.setText("Fecha de Nacimiento:")
        self.Etiqueta4.setGeometry(25,75,200,110)
        self.Etiqueta4.setStyleSheet("QLabel{ background-color : red; color : black; font-size: 20px;}")

        self.fechaNacimiento = QtWidgets.QLineEdit(self.window)
        self.fechaNacimiento.setGeometry(230,115,150,30)
        self.fechaNacimiento.setStyleSheet("QLineEdit{ background-color : red; color : black; font-size: 20px;}")

        self.Etiqueta5 = QtWidgets.QLabel(self.window)
        self.Etiqueta5.setText("Sexo:")
        self.Etiqueta5.setStyleSheet("QLabel { background-color : red; color : black; font-size: 20px;}")
        self.Etiqueta5.setGeometry(415,115,200,25)

        self.sexo = QtWidgets.QComboBox(self.window)
        # x , y , largo , ancho
        self.sexo.setGeometry(480,115,90,30)
        sexos = ['M','F']
        self.sexo.addItems(sexos)
        self.sexo.setStyleSheet("QComboBox{font-size: 18px}")

        self.Etiqueta6 = QtWidgets.QLabel(self.window)
        self.Etiqueta6.setText("País de Nac:")
        self.Etiqueta6.setGeometry(635,115,200,25)
        self.Etiqueta6.setStyleSheet("QLabel{ background-color : red; color : black; font-size: 20px;}")

        Paises = ["Afganistan","Albania","Alemania","Andorra","Angola","Anguilla","Antigua Y Barbuda","Antillas Holandesas","Arabia Saudi","Argelia","Argentina","Armenia","Aruba","Australia","Austria","Azerbaiyan","Bahamas","Bahrein","Bangladesh","Barbados","Belarus","Belgica","Belice","Benin","Bermudas","Bhután","Bolivia","Bosnia Y Herzegovina","Botswana","Brasil","Brunei","Bulgaria","Burkina Faso","Burundi","Cabo Verde","Camboya","Camerun","Canada","Chad","Chile","China","Chipre","Colombia","Comores","Congo","Corea","Corea Del Norte ","Costa De Marfil","Costa Rica","Croacia","Cuba","Dinamarca","Djibouti","Dominica","Ecuador","Egipto","El Salvador","Emiratos Arabes Unidos","Eritrea","Eslovenia","España","Estados Unidos De America","Estonia","Etiopia","Fiji","Filipinas","Finlandia","Francia","Gabon","Gambia","Georgia","Ghana","Gibraltar","Granada","Grecia","Groenlandia","Guadalupe","Guam","Guatemala","Guayana Francesa","Guernesey","Guinea","Guinea Ecuatorial","Guinea-Bissau","Guyana","Haiti","Honduras","Hong Kong","Hungria","India","Indonesia","Iran","Iraq","Irlanda","Isla De Man","Isla Norfolk","Islandia","Islas Aland","Islas Caimán","Islas Cook","Islas Del Canal","Islas Feroe","Islas Malvinas","Islas Marianas Del Norte","Islas Marshall","Islas Pitcairn","Islas Salomon","Islas Turcas Y Caicos","Islas Virgenes Britanicas","Islas Vírgenes De Los Estados Unidos","Israel","Italia","Jamaica","Japon","Jersey","Jordania","Kazajstan","Kenia","Kirguistan","Kiribati","Kuwait","Laos","Lesotho","Letonia","Libano","Liberia","Libia","Liechtenstein","Lituania","Luxemburgo","Macao","Macedonia ","Madagascar","Malasia","Malawi","Maldivas","Mali","Malta","Marruecos","Martinica","Mauricio","Mauritania","Mayotte","Mexico","Micronesia","Moldavia","Monaco","Mongolia","Montenegro","Montserrat","Mozambique","Myanmar","Namibia","Nauru","Nepal","Nicaragua","Niger","Nigeria","Niue","Noruega","Nueva Caledonia","Nueva Zelanda","Oman","Otros Paises  O Territorios De America Del Norte","Otros Paises O Territorios  De Sudamerica","Otros Paises O Territorios De Africa","Otros Paises O Territorios De Asia","Otros Paises O Territorios De La Union Europea","Otros Paises O Territorios De Oceania","Otros Paises O Territorios Del Caribe Y America Central","Otros Paises O Territorios Del Resto De Europa","Paises Bajos","Pakistan","Palaos","Palestina","Panama","Papua Nueva Guinea","Paraguay","Peru","Polinesia Francesa","Polonia","Portugal","Puerto Rico","Qatar","Reino Unido","Rep.Democratica Del Congo","Republica Centroafricana","Republica Checa","Republica Dominicana","Republica Eslovaca","Reunion","Ruanda","Rumania","Rusia","Sahara Occidental","Samoa","Samoa Americana","San Bartolome","San Cristobal Y Nieves","San Marino","San Martin (Parte Francesa)","San Pedro Y Miquelon ","San Vicente Y Las Granadinas","Santa Helena","Santa Lucia","Santa Sede","Santo Tome Y Principe","Senegal","Serbia","Seychelles","Sierra Leona","Singapur","Siria","Somalia","Sri Lanka","Sudafrica","Sudan","Suecia","Suiza","Surinam","Svalbard Y Jan Mayen","Swazilandia","Tadyikistan","Tailandia","Tanzania","Timor Oriental","Togo","Tokelau","Tonga","Trinidad Y Tobago","Tunez","Turkmenistan","Turquia","Tuvalu","Ucrania","Uganda","Uruguay","Uzbekistan","Vanuatu","Venezuela","Vietnam","Wallis Y Fortuna","Yemen","Zambia","Zimbabwe"]
        
        self.pais = QtWidgets.QComboBox(self.window)
        # x , y , largo , ancho
        self.pais.setGeometry(780,115,140,30)
        self.pais.addItems(Paises)
        self.pais.setStyleSheet("QComboBox{font-size:18px}")

        self.Etiqueta5 = QtWidgets.QLabel(self.window)
        self.Etiqueta5.setText("Nivel de Estudios:")
        self.Etiqueta5.setStyleSheet("QLabel { background-color : red; color : black; font-size: 20px;}")
        self.Etiqueta5.setGeometry(25,180,170,30)

        niveles = ["Ninguno","Primaria completa","Primaria incompleta","Secundaria completa","Secundaria incompleta","Carrera Técnica","Preparatoria","Preparatoria incompleta","Universidad","Universidad incompleta","Maestría","Doctorado"]
        self.estudios = QtWidgets.QComboBox(self.window)
        # x , y , largo , ancho
        self.estudios.setGeometry(200,180,190,30)
        self.estudios.addItems(niveles)
        self.estudios.setStyleSheet("QComboBox {font-size:18px}")


        self.Etiqueta6 = QtWidgets.QLabel(self.window)
        self.Etiqueta6.setText("Religión:")
        self.Etiqueta6.setStyleSheet("QLabel { background-color : red; color : black; font-size: 20px;}")
        self.Etiqueta6.setGeometry(730,180,180,25)
        religiones = ["Budista","Católico", "Cristiano","Hindú","Islám","Judío", "Ateo", "Otra"]
        self.religion = QtWidgets.QComboBox(self.window)
        # x , y , largo , ancho
        self.religion.setGeometry(820,180,100,30)
        self.religion.addItems(religiones)
        self.religion.setStyleSheet("QComboBox {font-size:18px}")

  
        self.registrar = QtWidgets.QPushButton(self.window)
        self.registrar.setText("Registrar")
        self.registrar.setGeometry(690,400,100,30)
        self.registrar.setStyleSheet("QPushButton { background : #5DADE2; color : black; font-size: 20px;}")
        self.registrar.clicked.connect(self.insertarDatos)
    

        self.continuar  = QtWidgets.QPushButton(self.window)
        self.continuar.setText("Continuar")
        self.continuar.setGeometry(800,400,100,30)
        self.continuar.setStyleSheet("QPushButton { background : #5DADE2; color : black; font-size: 20px;}")
        self.continuar.clicked.connect(self.DatosOrigen)


        self.agregar = QtWidgets.QPushButton(self.window)
        self.agregar.setText("Agregar Persona")
        self.agregar.setGeometry(530,400,150,30)
        self.agregar.setStyleSheet("QPushButton { background : #5DADE2; color : black; font-size: 20px;}")
        self.agregar.clicked.connect(self.agregarPersona)
    
    def refrescar(self):
        self.nombre.setText("")
        self.Apellidos.setText("")
        self.fechaNacimiento.setText("")

    def recuperarId(self,id):
        self.ultimoId = id

    def insertarDatos(self):
        Conec = Conexion()
        nombremi = self.nombre.text()+' '+self.Apellidos.text() 
        self.idmigrante = Conec.idMigrante()
        idGrado = Conec.idGrado(self.estudios.currentText())
        migrante = Migrante(nombremi,self.estadoCivil.currentText(),self.fechaNacimiento.text(),self.sexo.currentText(),self.pais.currentText(),self.religion.currentText(),self.idmigrante,idGrado)
        Conec.insertarDatos(migrante)
        self.refrescar()
       
    def DatosOrigen(self):
        self.window.close()
        self.paiso.window.show()
        self.paiso.boton.clicked.connect(self.insertarDatosOrigen)
    
    def insertarDatosOrigen(self):
        Conec = Conexion()
        idDatos = Conec.idDatosPO()
        idOcupacion = Conec.idOcupacion(self.paiso.ocupacion.currentText())
        idMotivos = Conec.idMotivos(self.paiso.motivos.currentText())
        Conec.insertarDatosPaisO(self.paiso.fechaSalida.text(),idDatos,self.idmigrante,idOcupacion,idMotivos,self.paiso.pais.currentText())
        self.paiso.window.close()
        self.datosm.window.show()
        self.datosm.boton.clicked.connect(self.insertarDatosMexico)
        self.datosm.window.close()
        #print(self.paiso.fechaSalida.text(),idDatos,self.idmigrante,idOcupacion,idMotivos,self.paiso.pais.currentText())
        

    
    def agregarPersona(self):
        self.datosf.window.show()
        self.datosf.boton.clicked.connect(self.insertarDatosFam)
    

    def nombreCompleto(self,nom,ape):
        return nom+' '+ape

    def insertarDatosFam(self):

        Conec = Conexion()
        nomfa = self.nombreCompleto(self.datosf.nombre.text(),self.datosf.Apellidos.text())
        idFam = Conec.idFamiliar()
        familiar = Familiar(nomfa,self.datosf.sexo.currentText(),self.datosf.fechaNacimiento.text(),self.datosf.parentesco.currentText(),idFam,self.idmigrante,self.datosf.pais.currentText())
        #familiar.mostrarDatos()
        Conec.insertarDatosFamiliar(familiar)
        self.datosf.nombre.setText("")
        self.datosf.Apellidos.setText("")
        self.datosf.fechaNacimiento.setText("")
        #self.datosf.window.close()
    
    def insertarDatosMexico(self):
        Conec = Conexion()
        idDatos = Conec.idDatosM()
        Conec.insertarDatosMexico(self.datosm.fechaLledaga.text(),self.datosm.estado.currentText(),self.datosm.domicilio.text(),idDatos,self.idmigrante)
        #print(self.datosm.fechaLlegada.text(),self.datosm.estado.currentText(),self.datosm.Domicilio.text(),idDatos,self.idmigrante,self.datosm.telefono.text())
        
    
        
  
  
        

        


      
    








