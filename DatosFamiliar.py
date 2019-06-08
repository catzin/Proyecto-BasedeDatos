from PyQt5 import QtWidgets, QtGui, QtCore, Qt
from PyQt5.QtGui import QIcon, QImage, QPixmap
import sys
import estilos
from Conexion import *
from Familiar import *


class DatosFamiliar:

    def __init__(self):
     
        #self.app = QtWidgets.QApplication(sys.argv)
        self.window = QtWidgets.QMainWindow()
        self.window.setWindowTitle("Datos de Familiares")
        self.window.resize(400, 495)
        self.window.setStyleSheet("background-image: url(:/background/fondo.jpg);")
        self.label = QtWidgets.QLabel(self.window)
        # self.label.setScaledContents(True)
        self.colocarBotones()
        #self.window.show()
        #sys.exit(self.app.exec_())

    def colocarBotones(self):
        self.Etiqueta1 = QtWidgets.QLabel(self.window)
        self.Etiqueta1.setText("Nombre(s):")
        self.Etiqueta1.setGeometry(25, 10, 100, 100)
        self.Etiqueta1.setStyleSheet("QLabel { background-color : red; color : black; font-size: 20px;}")

        self.nombre = QtWidgets.QLineEdit(self.window)
        self.nombre.setGeometry(150,49,200,25)
        self.nombre.setStyleSheet("QLineEdit { background-color : red; color : black; font-size:18px;}")


        self.ape = QtWidgets.QLabel(self.window)
        self.ape.setText("Apellidos:")
        self.ape.setGeometry(25, 70, 90, 80)
        self.ape.setStyleSheet("QLabel { background-color : blue; color : black; font-size: 20px;}")


        self.Apellidos = QtWidgets.QLineEdit(self.window)
        self.Apellidos.setGeometry(150,100,200,25)
        self.Apellidos.setStyleSheet("QLineEdit { background-color : red; color : black; font-size:18px;}")

        self.fecha = QtWidgets.QLabel(self.window)
        self.fecha.setText("Fecha de Nacimiento:")
        self.fecha.setGeometry(25,150, 200, 25)
        self.fecha.setStyleSheet("QLabel{ background-color : red; color : black; font-size: 20px;}")


        self.fechaNacimiento = QtWidgets.QLineEdit(self.window)
        self.fechaNacimiento.setGeometry(230, 150, 150, 30)
        self.fechaNacimiento.setStyleSheet("QLineEdit{ background-color : red; color : black; font-size: 20px;}")

        self.sex = QtWidgets.QLabel(self.window)
        self.sex.setText("Sexo:")
        self.sex.setStyleSheet("QLabel { background-color : red; color : black; font-size: 20px;")
        self.sex.setGeometry(25, 190, 90, 30)

        self.sexo = QtWidgets.QComboBox(self.window)
        # x , y , largo , ancho
        self.sexo.setGeometry(15, 230, 90, 30)
        sexos = ['M', 'F']
        self.sexo.addItems(sexos)
        self.sexo.setStyleSheet("QComboBox{font-size: 18px}")


        self.pare = QtWidgets.QLabel(self.window)
        self.pare.setText("Parentesco:")
        self.pare.setStyleSheet("QLabel { background-color : red; color : black; font-size: 20px;}")
        self.pare.setGeometry(110, 190, 120, 30)

        self.parentesco = QtWidgets.QComboBox(self.window)
        # x , y , largo , ancho
        self.parentesco.setGeometry(120, 230, 110, 30)
        parentescos = ["Hermano(a)", "Padre", "Hijo(a)", "Abuelo(a)", "Nieto(a)", "Primo(a)", "Tío(a)"]
        self.parentesco.addItems(parentescos)
        self.parentesco.setStyleSheet("QComboBox{font-size: 18px}")

        self.origen = QtWidgets.QLabel(self.window)
        self.origen.setText("País de origen:")
        self.origen.setGeometry(260, 190, 120, 30)
        self.origen.setStyleSheet("QLabel{ background-color : red; color : black; font-size: 20px;}")

        Paises = ["Afganistan", "Albania", "Alemania", "Andorra", "Angola", "Anguilla", "Antigua Y Barbuda",
                  "Antillas Holandesas", "Arabia Saudi", "Argelia", "Argentina", "Armenia", "Aruba", "Australia",
                  "Austria", "Azerbaiyan", "Bahamas", "Bahrein", "Bangladesh", "Barbados", "Belarus", "Belgica",
                  "Belice", "Benin", "Bermudas", "Bhután", "Bolivia", "Bosnia Y Herzegovina", "Botswana", "Brasil",
                  "Brunei", "Bulgaria", "Burkina Faso", "Burundi", "Cabo Verde", "Camboya", "Camerun", "Canada", "Chad",
                  "Chile", "China", "Chipre", "Colombia", "Comores", "Congo", "Corea", "Corea Del Norte ",
                  "Costa De Marfil", "Costa Rica", "Croacia", "Cuba", "Dinamarca", "Djibouti", "Dominica", "Ecuador",
                  "Egipto", "El Salvador", "Emiratos Arabes Unidos", "Eritrea", "Eslovenia", "España",
                  "Estados Unidos De America", "Estonia", "Etiopia", "Fiji", "Filipinas", "Finlandia", "Francia",
                  "Gabon", "Gambia", "Georgia", "Ghana", "Gibraltar", "Granada", "Grecia", "Groenlandia", "Guadalupe",
                  "Guam", "Guatemala", "Guayana Francesa", "Guernesey", "Guinea", "Guinea Ecuatorial", "Guinea-Bissau",
                  "Guyana", "Haiti", "Honduras", "Hong Kong", "Hungria", "India", "Indonesia", "Iran", "Iraq",
                  "Irlanda", "Isla De Man", "Isla Norfolk", "Islandia", "Islas Aland", "Islas Caimán", "Islas Cook",
                  "Islas Del Canal", "Islas Feroe", "Islas Malvinas", "Islas Marianas Del Norte", "Islas Marshall",
                  "Islas Pitcairn", "Islas Salomon", "Islas Turcas Y Caicos", "Islas Virgenes Britanicas",
                  "Islas Vírgenes De Los Estados Unidos", "Israel", "Italia", "Jamaica", "Japon", "Jersey", "Jordania",
                  "Kazajstan", "Kenia", "Kirguistan", "Kiribati", "Kuwait", "Laos", "Lesotho", "Letonia", "Libano",
                  "Liberia", "Libia", "Liechtenstein", "Lituania", "Luxemburgo", "Macao", "Macedonia ", "Madagascar",
                  "Malasia", "Malawi", "Maldivas", "Mali", "Malta", "Marruecos", "Martinica", "Mauricio", "Mauritania",
                  "Mayotte", "Mexico", "Micronesia", "Moldavia", "Monaco", "Mongolia", "Montenegro", "Montserrat",
                  "Mozambique", "Myanmar", "Namibia", "Nauru", "Nepal", "Nicaragua", "Niger", "Nigeria", "Niue",
                  "Noruega", "Nueva Caledonia", "Nueva Zelanda", "Oman",
                  "Otros Paises  O Territorios De America Del Norte", "Otros Paises O Territorios  De Sudamerica",
                  "Otros Paises O Territorios De Africa", "Otros Paises O Territorios De Asia",
                  "Otros Paises O Territorios De La Union Europea", "Otros Paises O Territorios De Oceania",
                  "Otros Paises O Territorios Del Caribe Y America Central",
                  "Otros Paises O Territorios Del Resto De Europa", "Paises Bajos", "Pakistan", "Palaos", "Palestina",
                  "Panama", "Papua Nueva Guinea", "Paraguay", "Peru", "Polinesia Francesa", "Polonia", "Portugal",
                  "Puerto Rico", "Qatar", "Reino Unido", "Rep.Democratica Del Congo", "Republica Centroafricana",
                  "Republica Checa", "Republica Dominicana", "Republica Eslovaca", "Reunion", "Ruanda", "Rumania",
                  "Rusia", "Sahara Occidental", "Samoa", "Samoa Americana", "San Bartolome", "San Cristobal Y Nieves",
                  "San Marino", "San Martin (Parte Francesa)", "San Pedro Y Miquelon ", "San Vicente Y Las Granadinas",
                  "Santa Helena", "Santa Lucia", "Santa Sede", "Santo Tome Y Principe", "Senegal", "Serbia",
                  "Seychelles", "Sierra Leona", "Singapur", "Siria", "Somalia", "Sri Lanka", "Sudafrica", "Sudan",
                  "Suecia", "Suiza", "Surinam", "Svalbard Y Jan Mayen", "Swazilandia", "Tadyikistan", "Tailandia",
                  "Tanzania", "Timor Oriental", "Togo", "Tokelau", "Tonga", "Trinidad Y Tobago", "Tunez",
                  "Turkmenistan", "Turquia", "Tuvalu", "Ucrania", "Uganda", "Uruguay", "Uzbekistan", "Vanuatu",
                  "Venezuela", "Vietnam", "Wallis Y Fortuna", "Yemen", "Zambia", "Zimbabwe"]
        
 
        self.pais = QtWidgets.QComboBox(self.window)
        # x , y , largo , ancho
        self.pais.setGeometry(250, 230, 140, 30)
        self.pais.addItems(Paises)
        self.pais.setStyleSheet("QComboBox{font-size:18px}")


        self.boton = QtWidgets.QPushButton(self.window)
        self.boton.setText("Listo")
        self.boton.setGeometry(270, 400, 100, 30)
        self.boton.setStyleSheet("QPushButton { background : #5DADE2; color : black; font-size: 20px;}")
        #self.boton.clicked.connect(self.insertarDatosFam)

    

    def mostrarFormulario(self):
        self.window.show()




