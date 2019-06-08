import pymysql
from Migrante import *
from Familiar import *

class Conexion:
  
    def __init__(self):
        self.null = None
        self.bd = pymysql.connect('localhost','root','catzin96','Migracion2')
        self.cursor = self.bd.cursor()
        print("Conexion exitosa")
    
    def insertarDatosFamiliar(self,f):

        datos = (f.nombre,f.sexo,f.fechaNa,f.parentesco,f.idF,f.idM,f.paisNa)
        sql = "INSERT INTO Familiares(nombre,sexo,fechaNacimiento,parentesco,idFamiliares,idMigrante,paisNacimiento) values(%s,%s,%s,%s,%s,%s,%s)"
        self.cursor.execute(sql,datos)
        self.bd.commit() 


    def insertarDatos(self,m):
        datos = (m.nombre,m.Ecivil,m.fechaNacimiento,m.sexo,m.PaisNa,m.religion,m.idMigrante,m.idGradoMaximo)
        sql = "INSERT INTO Migrante(nombre,estadoCivil,fechaNacimiento,sexo,paisNacimiento,religion,idMigrante,idGradoMaximo) values(%s,%s,%s,%s,%s,%s,%s,%s)"
        self.cursor.execute(sql,datos)
        self.bd.commit() 
    
    def insertarDatosPaisO(self,fechaSalida,idDatos,idmi,idOcupa,idMoti,paisO):
        datos = (fechaSalida,idDatos,idmi,idOcupa,idMoti,paisO)
        sql = "INSERT INTO DatosPaisOrigen(fechaDeSalida,idDatos_PaisOrigen,idMigrante,idOcupacion,idMotivos,paisOrigen) values(%s,%s,%s,%s,%s,%s)"
        self.cursor.execute(sql,datos)
        self.bd.commit()
    
    def insertarDatosMexico(self,fechaLledaga,estado,domicilio,idDatos,idmi,tel):
        datos = (fechaLledaga,estado,domicilio,idDatos,idmi,tel)
        sql = "INSERT INTO Datos_Mexico (fechallegada,estado,domicilio,idDatos,idMigrante) values (%s,%s,%s,%s,%s,%s)"
        self.cursor.execute(sql,datos)
        self.bd.commit()
    
    def idDatosM(self):
        sql = "SELECT MAX(idDatos) from Datos_Mexico"
        self.cursor.execute(sql)
        self.bd.commit()
        indice = self.cursor.fetchall()
        id = int(indice[0][0])
        return id+1

       
       



       
    def idGrado(self,nombreGrado):
        sql = "SELECT idGradoMaximo from GradoMaximo where grado = %s"
        self.cursor.execute(sql,nombreGrado)
        self.bd.commit()
        datos = self.cursor.fetchall()
        id = int(datos[0][0])
        return id 
    
    def idDatosPO(self):
        sql = "SELECT MAX(idDatos_PaisOrigen) from DatosPaisOrigen"
        self.cursor.execute(sql)
        self.bd.commit()
        indice = self.cursor.fetchall()
        id = int(indice[0][0])
        return id+1
    
    def idOcupacion(self,ocupacion):
        sql = "SELECT idOcupacion from Ocupacion where nombre = %s"
        self.cursor.execute(sql,ocupacion)
        self.bd.commit()
        indice = self.cursor.fetchall()
        id = int(indice[0][0])
        return id
    

    def idMotivos(self,motivos):
        sql = "SELECT idMotivos from Motivos where motivos = %s"
        self.cursor.execute(sql,motivos)
        self.bd.commit()
        indice = self.cursor.fetchall()
        id = int(indice[0][0])
        return id

      
    
    def idMigrante(self):
        sql = "SELECT MAX(idMigrante) from Migrante"
        self.cursor.execute(sql)
        self.bd.commit()
        indice = self.cursor.fetchall()
        id = int(indice[0][0])
        return id+1
    
    def idFamiliar(self):
        sql = "SELECT MAX(idFamiliares) from Familiares"
        self.cursor.execute(sql)
        self.bd.commit()
        indice = self.cursor.fetchall()
        id = int(indice[0][0])
        return id+1
    
    
    def apellidosMigrante(self,apellidos):
        sql = "SELECT idMigrante from Migrante where apellidos = %s"
        self.cursor.execute(sql,apellidos)
        self.bd.commit()
        indice = self.cursor.fetchall()
        id = int(indice[0][0])
        print(id)
        #return id


    def nombreCompleto(self,nombre):
        sql = "SELECT nombre,apellidos from Migrante where nombre = %s"
        self.cursor.execute(sql,nombre)
        self.bd.commit()
        apellidos = self.apellidosMigrante(nombre)
        completo = nombre + ' ' +apellidos
        return completo

    def idEspecifico(self,nombre):
        sql = "SELECT idMigrante from Migrante where nombre = %s"
        self.cursor.execute(sql,nombre)
        self.bd.commit()
        indice = self.cursor.fetchall()
        id = int(indice[0][0])
        return id




       
         

        


          

        
    
        

    

        
    
     
       