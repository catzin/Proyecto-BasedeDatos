class Familiar:
    def __init__(self,nombre,sexo,fechaNa,parentesco,idF,idM,paisNa):
        self.nombre = nombre
        self.sexo = sexo
        self.fechaNa = fechaNa
        self.parentesco = parentesco
        self.idF = idF
        self.idM = idM
        self.paisNa = paisNa
    
    def mostrarDatos(self):
        print(self.nombre)
        print(self.sexo)
        print(self.fechaNa)
        print(self.parentesco)
        print(self.idF)
        print(self.idM)
        print(self.paisNa)
        