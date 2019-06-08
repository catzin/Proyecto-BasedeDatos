from PyQt5 import QtWidgets, QtGui, QtCore, Qt
from PyQt5.QtGui import QIcon, QImage, QPixmap
import sys
import estilos
from Conexion import *


class PaisOrigen:

    def __init__(self):
        self.app = QtWidgets.QApplication(sys.argv)
        self.window = QtWidgets.QMainWindow()
        self.window.setWindowTitle("Datos del País de Origen")
        self.window.resize(944, 495)

        self.window.setStyleSheet("background-image: url(:/background/fondo.jpg);")

        self.label = QtWidgets.QLabel(self.window)
        self.label.resize(944, 495)
        # self.label.setScaledContents(True)
        self.colocarBotones()
        #self.window.show()
        #sys.exit(self.app.exec_())

    def colocarBotones(self):
        self.Etiqueta1 = QtWidgets.QLabel(self.window)
        self.Etiqueta1.setText("País de Origen:")
        self.Etiqueta1.setGeometry(25, 10, 140, 100)
        self.Etiqueta1.setStyleSheet("QLabel { background-color : red; color : black; font-size: 20px;}")

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
        self.pais.setGeometry(170, 50, 200, 30)
        self.pais.addItems(Paises)
        self.pais.setStyleSheet("QComboBox{font-size:18px}")

        self.Etiqueta2 = QtWidgets.QLabel(self.window)
        self.Etiqueta2.setText("Motivos de Salida:")
        self.Etiqueta2.setGeometry(400, 10, 170, 100)
        self.Etiqueta2.setStyleSheet("QLabel{ background-color : red; color : black; font-size: 20px;}")

        self.motivos = QtWidgets.QComboBox(self.window)
        motivos = ["Conflicto interno","Violencia generalizada","Discriminación por raza","Creencias religiosas","Violencia intrafamiliar","Motivo personal","No especificado"]
        self.motivos.addItems(motivos)
        self.motivos.setStyleSheet("QComboBox{font-size:18px}")
        self.motivos.setGeometry(570, 50, 310, 25)

        self.Etiqueta4 = QtWidgets.QLabel(self.window)
        self.Etiqueta4.setText("Fecha de Salida:")
        self.Etiqueta4.setGeometry(25, 75, 160, 110)
        self.Etiqueta4.setStyleSheet("QLabel{ background-color : red; color : black; font-size: 20px;}")

        self.fechaSalida = QtWidgets.QLineEdit(self.window)
        self.fechaSalida.setGeometry(180, 115, 150, 30)
        self.fechaSalida.setStyleSheet("QLineEdit{ background-color : red; color : black; font-size: 20px;}")

        self.Etiqueta5 = QtWidgets.QLabel(self.window)
        self.Etiqueta5.setText("Ocupación en el país de origen:")
        self.Etiqueta5.setStyleSheet("QLabel { background-color : red; color : black; font-size: 20px;}")
        self.Etiqueta5.setGeometry(350, 115, 280, 25)

        self.ocupacion = QtWidgets.QComboBox(self.window)
        ocupaciones = ["Personal administrativo","Trabajador agropecuario","Comerciante agropecuario ","Trabajador industrial","Funcionario superior o personal directivo","Profesionista","Otro"]
        self.ocupacion.addItems(ocupaciones)
        self.ocupacion.setStyleSheet("QComboBox {font-size:18px}")
        self.ocupacion.setGeometry(640,115,240,25)


        self.boton = QtWidgets.QPushButton(self.window)
        self.boton.setText("Continuar")
        self.boton.setGeometry(800, 400, 100, 30)
        self.boton.setStyleSheet("QPushButton { background : #5DADE2; color : black; font-size: 20px;}")


   
