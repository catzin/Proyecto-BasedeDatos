-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: Migracion2
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Datos_Mexico`
--

DROP TABLE IF EXISTS `Datos_Mexico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Datos_Mexico` (
  `fechallegada` varchar(80) NOT NULL,
  `estado` varchar(80) NOT NULL,
  `domicilio` varchar(80) NOT NULL,
  `idDatos` int(11) NOT NULL,
  `idMigrante` int(11) NOT NULL,
  `telefono` varchar(80) NOT NULL,
  PRIMARY KEY (`idDatos`),
  KEY `idMigrante` (`idMigrante`),
  CONSTRAINT `datos_mexico_ibfk_1` FOREIGN KEY (`idMigrante`) REFERENCES `migrante` (`idMigrante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Datos_Mexico`
--

LOCK TABLES `Datos_Mexico` WRITE;
/*!40000 ALTER TABLE `Datos_Mexico` DISABLE KEYS */;
INSERT INTO `Datos_Mexico` VALUES ('22/03/2015','Chiapas','calle 56 Morelos',1,1,''),('03/04/2017','Chiapas','Calle inventada Tuxtla Gutierrez',2,2,'56744598'),('13/04/2019','Campeche','La Cruz lt10 Mz23',3,3,'55-96-63-52-41'),('14/11/2019','Chiapas','Lunaria lt12 Mz20',4,4,'55-63-21-45-65'),('14/11/2019','Chiapas','Mesilla lt15 Mz53',5,5,'55-32-56-89-14'),('12/05/2019','Campeche','Mesones lt22 Mz53',6,6,'55-58-47-12-52'),('21/05/2019','Chiapas','Acapulco lt66 Mz243',7,7,'55-45-85-56-52'),('23/02/2019','Chiapas','Capulina lt20 Mz53',8,8,'55-69-52-58-45'),('14/11/2019','Campeche','Santa Marta lt8 Mz20',9,9,'55-96-87-41-23'),('14/02/2019','Campeche','La Cruz lt9 Mz20',10,10,'55-12-87-41-23'),('05/11/2019','Yucatan','La Cruz Xochiac lt81 Mz20',11,11,'55-17-87-41-23'),('05/02/2019','Yucatan','Lazaro Cardenas lt12 Mz20',12,12,'55-03-87-41-23'),('14/05/2019','Yucatan','Lazaro Cardenas lt14 Mz20',13,13,'55-20-87-41-23'),('14/05/2019','Chiapas','La Cruz lt8 Mz122',14,14,'55-20-30-41-23'),('11/02/2019','Chiapas','Capulina Luz lt1 Mz20',15,15,'55-14-25-41-23'),('14/11/2019','Puebla','Capulina lt8 Mz11',16,16,'55-52-63-41-23'),('03/11/2019','Puebla','Mesilla lt8 Mz222',17,17,'55-41-12-41-23'),('26/02/2019','Puebla','Mesilla lt8 Mz233',18,18,'55-94-84-41-23'),('14/11/2019','Yucatan','La Cruz lt8 Mz220',19,19,'55-95-32-41-23'),('14/03/2019','Campeche','Santa Marta lt8 Mz20',20,20,'55-74-85-41-23'),('11/11/2019','Puebla','La Cruz Lomas lt28 Mz20',21,21,'55-45-65-41-23'),('14/03/2019','Puebla','Santa Marta lt18 Mz20',22,22,'55-36-25-41-23'),('26/02/2019','Puebla','Miguel Hidalgo Luz lt28 Mz20',23,23,'55-12-63-41-23'),('14/02/2019','Campeche','Miguel Hidalgo lt38 Mz20',24,24,'55-96-74-41-23'),('14/03/2019','Campeche','San Agel lt48 Mz20',25,25,'55-45-85-96-23'),('14/11/2019','Yucatan','Mesilla lt8 Mz250',26,26,'55-96-52-69-23'),('26/11/2019','Oaxaca','Santa Marta lt8 Mz260',27,27,'55-21-87-41-23'),('26/05/2019','Oaxaca','Lazaro Cardenas lt8 Mz270',28,28,'55-23-87-41-23'),('03/05/2019','Chiapas','Santa Marta lt8 Mz280',29,29,'55-48-87-41-23'),('06/11/2019','Chiapas','Santa Marta lt8 Mz290',30,30,'55-86-87-41-23'),('02/06/2019','Campeche','La Cruz lt48 Mz40',31,31,'55-66-87-41-23'),('23/11/2019','Campeche','Santa Marta Coatepeclt8 Mz210',32,32,'55-56-57-41-23'),('14/11/2019','CDMX','Santa Marta lt28 Mz220',33,33,'55-56-57-41-23'),('14/11/2019','CDMX','Lazaro Cardenas lt38 Mz20',34,34,'55-46-57-41-23'),('06/06/2019','CDMX','Lazaro Cardenas lt48 Mz20',35,35,'55-26-27-41-23'),('06/11/2019','CDMX','Acapulco lt48 Mz220',36,36,'55-26-87-41-23'),('14/12/2019','Campeche','Acapulco lt58 Mz20',37,37,'55-66-87-41-23'),('14/11/2019','CDMX','Santa Maria lt68 Mz20',38,38,'55-86-87-41-23'),('23/11/2019','Yucatan','Acapulco lt68 Mz220',39,39,'55-76-87-41-23'),('14/05/2019','Oaxaca','Santa Marta Coatepec lt8 Mz240',40,40,'55-66-87-41-23'),('18/80/2019','Oaxaca','Lazaro Cardenas cedros lt8 Mz210',41,41,'55-56-87-41-23'),('17/11/2019','CDMX','Santa Marta lt8 Mz200',42,42,'55-41-87-41-23'),('07/11/2019','Campeche','La Cruz lt15 Mz220',43,43,'55-74-96-41-23'),('07/01/2019','Campeche','La Cruz lt10 Mz210',44,44,'55-21-32-41-23'),('23/11/2019','Chiapas','La Cruz lt81 Mz222',45,45,'55-52-65-41-23'),('14/08/2019','Campeche','San Agel lt8 Mz210',46,46,'55-85-46-41-23'),('04/08/2019','Chiapas','Mesilla Rosa lt8 Mz200',47,47,'55-86-87-41-23'),('04/09/2019','Chiapas','Santa Marta lt8 Mz210',48,48,'55-96-87-71-73'),('04/11/2019','Puebla','Santa Marta lt08 Mz20',49,49,'55-96-87-71-23'),('24/09/2019','Puebla','Santa Marta lt08 Mz250',50,50,'55-96-57-661-23'),('24/11/2019','Oaxaca','Lazaro Cardenas lt8 Mz260',51,51,'55-46-87-41-23'),('24/09/2019','Chiapas','Miguel Hidalgo lt8 Mz270',52,52,'55-38-67-41-23'),('10/11/2019','CDMX','Santa Marta lt8 Mz280',53,53,'55-75-87-41-23'),('14/11/2019','CDMX','San Agel lt18 Mz20',54,54,'55-65-85-46-95'),('12/09/2019','CDMX','Lazaro Cardenas lt28 Mz20',55,55,'55-35-94-41-23'),('12/01/2019','Oaxaca','Capulina cedros lt38 Mz20',56,56,'55-25-87-41-23'),('22/01/2019','Campeche','Acapulco lt8 Mz250',57,57,'55-78-87-41-23'),('21/12/2019','CDMX','Miguel Hidalgo lt8 Mz270',58,58,'55-99-7-41-23'),('15/12/2019','Campeche','Miguel Hidalgo lt8 Mz20',59,59,'55-97-45-41-23'),('10/04/2019','Chiapas','Lagunilla verde lt20 Mz233',60,60,'55-56-63-63-52');
/*!40000 ALTER TABLE `Datos_Mexico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DatosContacto`
--

DROP TABLE IF EXISTS `DatosContacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `DatosContacto` (
  `telefono` varchar(80) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `Domicilio_asociado` varchar(80) NOT NULL,
  `idDatosContacto` int(11) NOT NULL,
  `idMigrante` int(11) NOT NULL,
  PRIMARY KEY (`idDatosContacto`),
  KEY `idMigrante` (`idMigrante`),
  CONSTRAINT `datoscontacto_ibfk_1` FOREIGN KEY (`idMigrante`) REFERENCES `migrante` (`idMigrante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DatosContacto`
--

LOCK TABLES `DatosContacto` WRITE;
/*!40000 ALTER TABLE `DatosContacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `DatosContacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DatosPaisOrigen`
--

DROP TABLE IF EXISTS `DatosPaisOrigen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `DatosPaisOrigen` (
  `fechaDeSalida` varchar(80) NOT NULL,
  `idDatos_PaisOrigen` int(11) NOT NULL,
  `idMigrante` int(11) NOT NULL,
  `idOcupacion` int(11) NOT NULL,
  `idMotivos` int(11) NOT NULL,
  `paisOrigen` varchar(80) NOT NULL,
  PRIMARY KEY (`idDatos_PaisOrigen`),
  KEY `idMigrante` (`idMigrante`),
  KEY `idOcupacion` (`idOcupacion`),
  KEY `idMotivos` (`idMotivos`),
  CONSTRAINT `datospaisorigen_ibfk_1` FOREIGN KEY (`idMigrante`) REFERENCES `migrante` (`idMigrante`),
  CONSTRAINT `datospaisorigen_ibfk_2` FOREIGN KEY (`idOcupacion`) REFERENCES `ocupacion` (`idOcupacion`),
  CONSTRAINT `datospaisorigen_ibfk_3` FOREIGN KEY (`idMotivos`) REFERENCES `motivos` (`idMotivos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DatosPaisOrigen`
--

LOCK TABLES `DatosPaisOrigen` WRITE;
/*!40000 ALTER TABLE `DatosPaisOrigen` DISABLE KEYS */;
INSERT INTO `DatosPaisOrigen` VALUES ('22/06/1999',1,1,1,1,'Honduras'),('02/05/2003',2,7,6,7,'Mexico'),('22/06/2018',3,8,4,1,'Australia'),('22/06/2018',4,9,7,1,'Australia'),('22/06/2018',5,9,7,1,'Australia'),('15/05/2017',6,10,7,2,'Austria'),('22/05/1993',7,11,7,1,'Afganistan'),('22/07/2018',8,61,7,1,'Australia'),('22/07/2018',9,62,7,5,'Afganistan'),('22/05/2018',10,63,1,1,'Afganistan'),('05/02/2019',11,11,6,6,'Brazil'),('22/06/199',12,12,5,2,'Israel'),('06/02/2019',13,13,3,2,'Brazil'),('06/02/2019',14,14,2,4,'Chile'),('06/03/2019',15,15,2,4,'Chile'),('06/03/2019',16,16,2,6,'Chile'),('05/03/2019',17,17,3,3,'Costa Rica'),('05/05/2019',18,18,4,3,'Costa Rica'),('27/05/2019',19,19,3,1,'Venezuela'),('27/05/2019',20,20,3,1,'Costa Rica'),('25/05/2019',21,21,4,1,'Costa Rica'),('25/05/2019',22,22,3,1,'Costa Rica'),('24/03/2019',23,23,2,4,'Venezuela'),('24/04/2019',24,24,3,4,'Honduras'),('24/04/2019',25,25,2,2,'Honduras'),('31/06/2019',26,26,4,2,'Peru'),('28/06/2019',27,27,5,2,'Paraguay'),('28/05/2019',28,28,6,2,'Peru'),('25/06/2019',29,29,3,2,'Peru'),('25/06/2019',30,30,2,3,'Honduras'),('25/06/2019',31,31,1,3,'Honduras'),('24/06/2019',32,32,3,3,'Paraguay'),('24/06/2019',33,33,4,3,'Paraguay'),('08/06/2019',34,34,5,3,'Honduras'),('08/06/2019',35,35,6,3,'Honduras'),('07/05/2019',36,36,7,3,'Peru'),('06/05/2019',37,37,7,3,'Peru'),('07/05/2019',38,38,5,5,'Peru'),('05/05/2019',39,39,3,5,'Honduras'),('04/05/2019',40,40,2,5,'Honduras'),('04/07/2019',41,41,1,5,'Honduras'),('03/07/2019',42,42,3,5,'Honduras'),('02/07/2019',43,43,2,5,'Peru'),('02/07/2019',44,44,3,4,'Venezuela'),('02/07/2019',45,45,1,4,'Venezuela'),('01/07/2019',46,46,1,4,'Honduras'),('01/05/2019',47,47,1,4,'Guatemala'),('01/05/2019',48,48,2,2,'Guatemala'),('15/05/2019',49,49,3,2,'Venezuela'),('15/05/2019',50,50,3,4,'Venezuela'),('15/05/2019',51,51,3,5,'Paraguay'),('06/02/2019',52,52,6,5,'Paraguay'),('06/02/2019',53,53,5,5,'Paraguay'),('06/02/2019',54,54,4,5,'Venezuela'),('16/02/2019',55,55,1,7,'Guatemala'),('15/02/2019',56,56,2,2,'Guatemala'),('11/05/2019',57,57,3,1,'Guatemala'),('23/03/2019',58,58,4,1,'Guatemala'),('12/03/2019',59,59,3,1,'Honduras'),('06/04/2019',60,60,4,1,'Venezuela');
/*!40000 ALTER TABLE `DatosPaisOrigen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Documentos`
--

DROP TABLE IF EXISTS `Documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Documentos` (
  `idMigrante` int(11) NOT NULL,
  `idNombreDoc` int(11) NOT NULL,
  KEY `idMigrante` (`idMigrante`),
  KEY `fk_idNombreDoc` (`idNombreDoc`),
  CONSTRAINT `documentos_ibfk_1` FOREIGN KEY (`idMigrante`) REFERENCES `migrante` (`idMigrante`),
  CONSTRAINT `fk_idNombreDoc` FOREIGN KEY (`idNombreDoc`) REFERENCES `nombredoc` (`idNombreDoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Documentos`
--

LOCK TABLES `Documentos` WRITE;
/*!40000 ALTER TABLE `Documentos` DISABLE KEYS */;
INSERT INTO `Documentos` VALUES (1,1);
/*!40000 ALTER TABLE `Documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Entrevista`
--

DROP TABLE IF EXISTS `Entrevista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Entrevista` (
  `noSala` int(11) NOT NULL,
  `fecha` varchar(80) NOT NULL,
  `idEntrevista` int(11) NOT NULL,
  `idEntrevistador` int(11) NOT NULL,
  `idMigrante` int(11) NOT NULL,
  `hora` varchar(30) NOT NULL,
  PRIMARY KEY (`idEntrevista`),
  KEY `idEntrevistador` (`idEntrevistador`),
  KEY `idMigrante` (`idMigrante`),
  CONSTRAINT `entrevista_ibfk_1` FOREIGN KEY (`idEntrevistador`) REFERENCES `entrevistador` (`idEntrevistador`),
  CONSTRAINT `entrevista_ibfk_2` FOREIGN KEY (`idMigrante`) REFERENCES `migrante` (`idMigrante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Entrevista`
--

LOCK TABLES `Entrevista` WRITE;
/*!40000 ALTER TABLE `Entrevista` DISABLE KEYS */;
INSERT INTO `Entrevista` VALUES (1,'03/05/2019',1,1,1,'12:00'),(2,'04/05/2019',2,3,2,'18:00'),(2,'04/05/2019',3,3,3,'18:00'),(2,'04/05/2019',4,3,4,'18:00'),(3,'04/05/2019',5,3,5,'13:00'),(4,'04/05/2019',6,3,6,'18:00'),(5,'03/04/2019',7,5,7,'12:00'),(4,'05/04/2019',8,5,8,'15:00'),(5,'03/04/2019',9,5,9,'16:00');
/*!40000 ALTER TABLE `Entrevista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Entrevistador`
--

DROP TABLE IF EXISTS `Entrevistador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Entrevistador` (
  `idEntrevistador` int(11) NOT NULL,
  `Nombre` varchar(80) NOT NULL,
  `telefono` varchar(80) NOT NULL,
  `correo` varchar(80) NOT NULL,
  PRIMARY KEY (`idEntrevistador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Entrevistador`
--

LOCK TABLES `Entrevistador` WRITE;
/*!40000 ALTER TABLE `Entrevistador` DISABLE KEYS */;
INSERT INTO `Entrevistador` VALUES (1,'Luis Toledo Perez','55-56-78-92-38','luis@gmail.com'),(2,'José abrera Luis','55-84-56-39-28','jose@gmail.com'),(3,'Carlos Ruiz Ruiz','55-65-96-32-14','carlangas@gmail.com'),(4,'Josue Ruiz Herradura','55-95-85-45-25','eltachas@gmail.com'),(5,'Mario Fermino Herrera','55-25-36-36-25','amaramuerte@gmail.com'),(6,'Luis Herradura Godoy','55-14-52-85-74','lavidamelap@gmail.com'),(7,'Federica Montoya Herrera','55-74-85-96-36','alvbd@gmail.com'),(8,'Ximena Ruiz Rubio','55-52-56-58-54','jossej@gmail.com'),(9,'Ariana Ruiz Perez','55-65-85-52-52','yaestas@gmail.com'),(10,'Frida Sofia Angeles Aguilar','55-63-96-52-85','esapared@gmail.com'),(11,'Rubi Montoya Angeles','55-85-52-41-74','teamo@gmail.com'),(12,'Ximena Perez Godoy','55-14-52-63-52','platicamos@gmail.com'),(13,'Diana Angeles Perez','55-14-11-22-33','amormio@gmail.com'),(14,'Maria Godoy Vera','55-63-52-85-85','mariag@gmail.com'),(15,'Daniela Vera Angeles','55-85-52-41-41','danichikis@gmail.com'),(16,'Arya Stark De Winterfell','55-85-96-98-65','winteriscoming@gmail.com'),(17,'Pablo Rubio Vera','55-74-78-79-52','pablitobb@gmail.com'),(18,'Sergio Rojas Lopez','55-12-23-36-69','elrojas@gmail.com'),(19,'Hugo Rojas Ruiz','55-12-45-41-20','sugus@gmail.com'),(20,'Oribe Peralta Rubio','55-10-20-30-15','elhermoso@gmail.com'),(21,'Juan Grabriel Mercado','55-63-52-85-74','noestoymuertoxd@gmail.com'),(22,'Ricardo Perez Yabez','55-25-6-69-36','saquenlamota@gmail.com'),(23,'Federico Hernandez Vera','55-32-65-98-52','megustanmenores@gmail.com'),(24,'Julio Preciado Soto','55-21-22-54-59','venganaregalarmesudinero@gmail.com'),(25,'Paulina Rubio Solorza','55-36-63-58-85','oseawe@gmail.com'),(26,'Ricardo Montaner Mendez','55-25-45-40-20','soyelmessideanciano@gmail.com'),(27,'Enrique Peña Nieto','55-20-36-52-60','<3@gmail.com'),(28,'Andres Manuel Lopez Obrador','55-66-66-66-66','mecansoganso@gmail.com'),(29,'Pepe Arroyo Rubio','55-10-20-65-85','jojojo@gmail.com'),(30,'Marco Antonio Solis','55-20-25-63','yisus@gmail.com'),(31,'Patricio Estrella Perez','55-31','haaaa@gmail.com'),(32,'Bob Esponja Smith','55-85-46-50-42','estoylisto@gmail.com'),(33,'Oscar de la Oya','55-63-69-52-52','unos@gmail.com'),(34,'Oscar Lopez Perez','55-21-25-23','amorypaz@gmail.com'),(35,'Saul Alvarez Money','55-23-63-36-32','megustaeldinero@gmail.com'),(36,'Javier Solis Guerrero','55-24-25-55','caguamon@gmail.com'),(37,'Benito Juarez Perez','55-42-52-58-45','amoralapatria@gmail.com'),(38,'Pablo Rubio Lopez','55-21-14-47-85','otravezyoweee@gmail.com'),(39,'Daniel Ramos Perez','55-85-52-52-58','soylav@gmail.com'),(40,'Jimena Gonzales Vazquez','55-14-15-25-25','vamosac***@gmail.com'),(41,'Leonardo Lopez Fernandez','55-85-52-12-23','amoramormio@gmail.com'),(42,'Javier Ramos Vera','55-14-45-52-52','soylav@gmail.com'),(43,'Annette Hernandez Capistran','55-85-96-65','soyotaku@gmail.com'),(44,'Luis Antonio Cortez','55-41-12-12-23','soybienloc@gmail.com'),(45,'Oscar Ortigoza Baez','55-25-14-45-45','soy laverengena@gmail.com'),(46,'Julio Regalado Cabezon','55-25-36-25-58','Julio@gmail.com'),(47,'Diana Cazadora Vera','55-66-33-22-11','soybienL@gmail.com'),(48,'Gonzalo Montoya Ortiz','55-23-56-86-23','soyunchvoruco@gmail.com'),(49,'Tabata Jalil Mendez','55-12-45-65-32','megusta@gmail.com'),(50,'Sheila Ruiz Mendez','55-65-68-53-52','soybien@gmail.com');
/*!40000 ALTER TABLE `Entrevistador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Familiares`
--

DROP TABLE IF EXISTS `Familiares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Familiares` (
  `nombre` varchar(80) NOT NULL,
  `sexo` char(1) NOT NULL,
  `fechaNacimiento` varchar(80) NOT NULL,
  `parentesco` varchar(80) NOT NULL,
  `idFamiliares` int(11) NOT NULL,
  `idMigrante` int(11) NOT NULL,
  `paisNacimiento` varchar(80) NOT NULL,
  PRIMARY KEY (`idFamiliares`),
  KEY `idMigrante` (`idMigrante`),
  CONSTRAINT `familiares_ibfk_1` FOREIGN KEY (`idMigrante`) REFERENCES `migrante` (`idMigrante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Familiares`
--

LOCK TABLES `Familiares` WRITE;
/*!40000 ALTER TABLE `Familiares` DISABLE KEYS */;
INSERT INTO `Familiares` VALUES ('Kenya Flores Vallejo','F','23/04/2015','Hermano(a)',1,1,'Honduras'),('Kenya Vallejo Serrano','F','06/01/2004','Hermano(a)',2,7,'Mexico'),('Karla  Faro Rojas','F','22/04/2012','Hermano(a)',3,10,'Austria'),('Juan Tarso Ramos','H','20/05/1955','hermano',4,10,'Honduras'),('Silvia Rojas Tarso','M','09/04/1967','hermano',5,1,'Brazil'),('Diana Tarso Rubio','M','24/12/1996','hermano',6,50,'Brazil'),('Diana Carrillo De Las Nieves','M','01/04/1948','hermano',7,8,'Brazil'),('Pablo Ramos Carrillo','H','12/06/1982','hermano',8,8,'Honduras'),('Juan Carrillo Gonzales','H','15/04/1970','hermano',9,8,'Brazil'),('Pablo Hoyos Carrillo','H','13/05/1997','sobrino',10,10,'Peru'),('Pepe Hoyos Nava','H','14/05/1997','sobrino',11,11,'Brazil'),('Pablo Hoyos Rubio','M','13/05/1997','sobrino',12,12,'Chile'),('Ana Vera Perez','M','21/06/1997','sobrino',13,13,'Brazil'),('Diana Hoyos Rubio','M','12/06/1985','sobrino',14,15,'Chile'),('Sheila Vera Mendez','M','12/06/1964','sobrino',15,15,'Chile'),('Oscar Guerra Mendez','H','13/08/1988','sobrino',16,15,'Chile'),('Luis Mendez Ramos','H','13/08/1963','sobrino',17,17,'Costa Rica'),('Michael Ramos Mendez','H','14/12/1988','sobrino',18,27,'Costa Rica'),('Juan Ramos Mendez','H','04/12/1990','sobrino',19,27,'Venezuela'),('Oscar Mendez Ramos','H','05/12/1980','sobrino',20,27,'Costa Rica'),('Fernando Ramos Nava','H','09/12/1990','hijo',21,21,'Costa Rica'),('Juan Hernandez Nava','H','09/12/1990','hijo',22,22,'Costa Rica'),('Pepe Rubio Nava','H','05/12/1976','hijo',23,22,'Venezuela'),('Oscar Nava Perez','H','05/02/1975','hijo',24,22,'Honduras'),('Luis Elizalde Vazquez','H','05/02/1975','hijo',25,25,'Honduras'),('AndreHernandez Vazquez','M','06/02/1988','hijo',26,25,'Peru'),('Silvia Vazquez Hoyos','M','07/02/1998','hijo',27,20,'Paraguay'),('Andrea Vazquez Ruiz','M','07/02/1998','hijo',28,20,'Peru'),('Jela Elizalde Vazquez','M','27/1/1989','hijo',29,29,'Peru'),('Bertha Vera Perez','M','27/11/1987','hijo',30,30,'Honduras'),('Martha Elizalde Gonzalez','M','30/11/1969','primo',31,7,'Honduras'),('Pablo Ruiz Gonzalez','H','29/11/1985','primo',32,32,'Paraguay'),('Mario Rojas Gonzalez','H','29/10/1964','primo',33,33,'Paraguay'),('Mauricio Gonzalez Perez','H','11/10/1964','primo',34,7,'Honduras'),('Pablo Lopez Gonzalez','H','11/10/1961','primo',35,35,'Honduras'),('Jorge Hernandez Lopez','H','21/10/1962','primo',36,36,'Peru'),('Juan Ramos Perez','H','11/09/1966','primo',37,37,'Peru'),('Juan Rubio Lopez','H','21/09/1954','primo',38,38,'Peru'),('Patricio Ruiz Lopez','H','11/09/1946','primo',39,12,'Honduras'),('Oscar Lopez Perez','H','21/09/1966','tio',40,12,'Honduras'),('Patricio Rubio Perez','H','24/08/1987','tio',41,41,'Honduras'),('Hugo Arroyo Rubio','H','24/08/1987','tio',42,42,'Honduras'),('Victor Rubio Peralta','H','22/08/1987','tio',43,43,'Peru'),('Hugo Vera Ruiz','H','26/03/1985','tio',44,44,'Venezuela'),('Sergio Rubio Lopez','H','26/03/1999','tio',45,45,'Venezuela'),('Pablo Villalobos Vera','H','26/03/1994','tio',46,46,'Honduras'),('Arya Vera Perez','M','26/02/1993','tio',47,47,'Guatemala'),('Diana Vera Angeles','M','25/02/1951','tio',48,48,'Guatemala'),('Deyanira Godoy Vera','M','15/02/1961','tio',49,49,'Venezuela'),('Daniela Angeles Perez','M','18/02/1987','tio',50,50,'Venezuela'),('Jimena Angeles Godoy','M','18/02/1949','padre',51,51,'Paraguay'),('Rubi Rubio Angeles','M','19/01/1989','padre',52,52,'Paraguay'),('Sofia Angeles Aguilar','M','19/01/1978','padre',53,45,'Paraguay'),('Mariana Rubio Perez','M','20/04/1978','padre',54,54,'Venezuela'),('Jimena Rubio Rubio','M','20/04/1995','padre',55,55,'Guatemala'),('Federico Ruiz Herrera','H','20/04/1985','abuelo',56,55,'Guatemala'),('Julio Herrera Godoy','H','25/06/1995','padre',57,57,'Guatemala'),('Luis Fermin Herrera','H','12/05/1976','padre',58,59,'Guatemala'),('Daniel Ruiz Herrera','H','12/04/1976','nieto',59,59,'Honduras'),('Ramon Herrera Ruiz','H','01/02/1989','padre',60,60,'Venezuela'),('Juanita Lopez Lopez','M','03/05/2015','Hijo(a)',61,61,'Afganistan'),('Enrique Castro Gonzalez','M','02/04/2015','Hermano(a)',62,62,'Afganistan'),(' ','M','','Hermano(a)',63,62,'Afganistan');
/*!40000 ALTER TABLE `Familiares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GradoMaximo`
--

DROP TABLE IF EXISTS `GradoMaximo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `GradoMaximo` (
  `idGradoMaximo` int(11) NOT NULL,
  `grado` varchar(80) NOT NULL,
  PRIMARY KEY (`idGradoMaximo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GradoMaximo`
--

LOCK TABLES `GradoMaximo` WRITE;
/*!40000 ALTER TABLE `GradoMaximo` DISABLE KEYS */;
INSERT INTO `GradoMaximo` VALUES (1,'Ninguno'),(2,'Primaria completa'),(3,'Primaria incompleta'),(4,'Secundaria completa'),(5,'Carrera Técnica'),(6,'Preparatoria'),(7,'Preparatoria incompleta'),(8,'Universidad'),(9,'Universidad incompleta'),(10,'Maestría'),(11,'Doctorado');
/*!40000 ALTER TABLE `GradoMaximo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Migrante`
--

DROP TABLE IF EXISTS `Migrante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Migrante` (
  `nombre` varchar(80) NOT NULL,
  `estadoCivil` varchar(80) NOT NULL,
  `fechaNacimiento` varchar(80) NOT NULL,
  `sexo` char(1) NOT NULL,
  `paisNacimiento` varchar(80) NOT NULL,
  `religion` varchar(80) NOT NULL,
  `idMigrante` int(11) NOT NULL,
  `idGradoMaximo` int(11) NOT NULL,
  PRIMARY KEY (`idMigrante`),
  KEY `idGradoMaximo` (`idGradoMaximo`),
  CONSTRAINT `migrante_ibfk_1` FOREIGN KEY (`idGradoMaximo`) REFERENCES `gradomaximo` (`idGradoMaximo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Migrante`
--

LOCK TABLES `Migrante` WRITE;
/*!40000 ALTER TABLE `Migrante` DISABLE KEYS */;
INSERT INTO `Migrante` VALUES ('Hugo Flores Flores','Soltero(a)','22/07/1996','M','Honduras','Católico',1,3),('Juan Lopez Lopez','Soltero(a)','02/05/1999','M','Afganistan','Budista',2,1),('Kevin Gonzalez Perez','Soltero(a)','05/06/1999','M','Aruba','Otra',3,2),('Karla Estrada Perez','Soltero(a)','05/05/1964','M','Belgica','Budista',4,8),('Juan Gomez Gomez','Soltero(a)','04/04/1994','M','Argentina','Budista',5,8),('Ernesto  Taboada Lopez','Soltero(a)','01/04/1967','M','Afganistan','Budista',6,1),('Ehecatzin Vallejo Serrano','Soltero(a)','22/07/1996','M','Mexico','Otra',7,8),('Vladimir Gomez Farias','Soltero(a)','04/06/1996','M','Australia','Católico',8,8),('Ricardo Perez Sereno','Soltero(a)','04/03/1998','M','Bahrein','Judío',9,8),('Pablo Faro Rojas','Viudo(a)','20/05/1965','M','Austria','Católico',10,6),('Fernado Mirafuentes Lopez','Soltero(a)','30/05/1993','M','Afganistan','Budista',11,7),('Ricardo Sereno Sereno','Viudo(a)','09/04/1963','M','Israel','Judío',12,6),('Javier Lopez Tarso','Soltero(a)','02/03/1696','H','Honduras','Hind˙',13,11),('Javier Serrrano Sereno','Viudo(a)','09/05/1963','M','Israel','Judío',14,2),('Pepe Navaz Fierro','Viudo(a)','25/06/1964','H','Honduras','Budista',15,4),('Ricardo Perez Perez','Viudo(a)','09/04/1963','M','Israel','Judío',16,6),('Maria lagos Rubio','Viudo(a)','01/12/1998','M','Brazil','Cristiano',17,6),('Maria Antonieta De Las Nieves','Viudo(a)','01/04/1998','M','Brazil','Hindú',18,7),('Pepe Amado Carrillo','Soltero(a)','12/05/1992','H','Honduras','Hindú˙',19,8),('Juan Gabriel Gonzalez','Soltero(a)','15/04/1970','H','Brazil','Católico',20,9),('Armando Hoyos Perez','Unión libre','12/02/1997','H','Perú','Ateo',21,10),('Juan Elizalde Perez','Casado(a)','12/06/1997','M','Brazil','Ateo',22,11),('Juan Osorio Rubio','Viudo(a)','13/06/1997','M','Chile','Budista',23,2),('Alejandra Guzman Perez','Soltero(a)','13/06/1997','M','Chile','Hindú',24,3),('Erika Mendez Rubio','Unión libre','13/06/1965','M','Chile','Hindú',25,4),('Sheila Xanat Mendez','Unión libre','15/06/1984','M','Chile','Hindú',26,5),('Luis Guerra Carmen','Soltero(a)','15/08/1998','H','Chile','Islam',27,4),('Carlos Perez Vera','Viudo(a)','16/08/1963','H','Costa Rica','Islam',28,11),('Julia Elizalde Gonzales','Casado(a)','27/1/1988','F','Perú','Budista',29,2),('Bertha Elizalde Perez','Soltero(a)','27/11/1988','F','Honduras','Cristiano',30,3),('Marisol Elizalde Vera','Casado','28/11/1998','M','Honduras','Cristiano',31,5),('Francisco Elizalde Gonzalez','Divorciado(a)','29/11/1988','H','Paraguay','Catolico',32,11),('Mario Rojas Perez','Casado','22/11/1988','H','Paraguay','Cristiano',33,5),('Carlos Vera Perez','Divorciado(a)','11/10/1968','H','Honduras','Otra',34,11),('Jorge Perez Perez','Divorciado(a)','11/10/1968','H','Honduras','Cristiano',35,6),('Jorge Hernandez Ramos','Soltero(a)','21/10/1960','H','Peru','Cristiano',36,6),('Juan Ramos Perez','UniÛn Libre','11/09/1968','H','Peru','Cristiano',37,7),('Federico Lopez Perez','Soltero(a)','21/09/1958','H','Peru','Cristiano',38,8),('Patricio Elizalde Lopez','Soltero(a)','11/09/1948','H','Honduras','Otra',39,9),('Juan Lopez Perez','Otro','21/09/1968','H','Honduras','Isl·m',40,4),('Patricio Herrera Perez','Soltero(a)','24/08/1988','H','Honduras','Cristiano',41,1),('Hugo Arroyo Peralta','Soltero(a)','24/08/1988','H','Honduras','Cristiano',42,2),('Hugo Peralta Peralta','Soltero(a)','22/08/1986','H','Peru','Cristiano',43,4),('Sergio Ramos Peralta','Soltero(a)','26/03/1986','H','Venezuela','Cristiano',44,4),('Sergio Villalobos Perez','Soltero(a)','26/03/1998','H','Venezuela','Cristiano',45,5),('Juan Villalobos Agular','Otro','26/03/1998','H','Honduras','CatÛlico',46,6),('Sayuri Elizalde Perez','Otro','26/02/1998','M','Guatemala','JudÌo',47,7),('Jimena Godoy Perez','Otro','26/02/1941','M','Guatemala','Budista',48,8),('Jimena Godoy Contreras','Soltero(a)','15/02/1941','M','Venezuela','Otra',49,9),('Jimena Contreras Perez','Soltero(a)','18/02/1991','M','Venezuela','Otra',50,5),('Ximena Elizalde Contreras','Soltero(a)','18/02/1941','M','Paraguay','Otra',51,5),('Paola Elizalde Aguilar','Divorciado(a)','19/01/1974','M','Paraguay','Otra',52,2),('Maria Aguilar Perez','Divorciado(a)','19/01/1974','M','Paraguay','Otra',53,3),('Mariana Elizalde Perez','Divorciado(a)','20/04/1974','M','Venezuela','JudÌo',54,4),('Julia Islas Perez','Divorciado(a)','20/04/1985','M','Guatemala','JudÌo',55,5),('Federico Islas Herrera','Otro','20/04/1995','H','Guatemala','JudÌo',56,6),('Gerardo ZuÒiga Perez','Viudo(a)','25/06/1985','H','Guatemala','Budista',57,7),('David Fermin Ruiz','Divorciado(a)','12/05/1996','H','Guatemala','Budistaa',58,8),('David Ruiz Angel','Casado(a)','12/04/1996','H','Honduras','Budista',59,9),('Hugo Rivera Garcia','UniÛn Libre','01/02/1969','H','Venezuela','JudÌo',60,6),('Juanito Lopez Lopez','Soltero(a)','02/06/1965','M','Afganistan','Budista',61,8),('Alejandro Delgado Garcia','Soltero(a)','25/03/1994','M','Honduras','Islám',62,8),('David  Real','Soltero(a)','02/05/1996','M','Afganistan','Budista',63,4);
/*!40000 ALTER TABLE `Migrante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `most_hora_fecha_sala_en_entrevista`
--

DROP TABLE IF EXISTS `most_hora_fecha_sala_en_entrevista`;
/*!50001 DROP VIEW IF EXISTS `most_hora_fecha_sala_en_entrevista`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `most_hora_fecha_sala_en_entrevista` AS SELECT 
 1 AS `entrevistador`,
 1 AS `Migrante`,
 1 AS `Fecha`,
 1 AS `Hora`,
 1 AS `sala`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `most_nombre_grado_familiares_parentescos`
--

DROP TABLE IF EXISTS `most_nombre_grado_familiares_parentescos`;
/*!50001 DROP VIEW IF EXISTS `most_nombre_grado_familiares_parentescos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `most_nombre_grado_familiares_parentescos` AS SELECT 
 1 AS `migrante`,
 1 AS `grado`,
 1 AS `familiares`,
 1 AS `parentesco`,
 1 AS `Pais`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Motivos`
--

DROP TABLE IF EXISTS `Motivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Motivos` (
  `idMotivos` int(11) NOT NULL,
  `motivos` varchar(80) NOT NULL,
  PRIMARY KEY (`idMotivos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Motivos`
--

LOCK TABLES `Motivos` WRITE;
/*!40000 ALTER TABLE `Motivos` DISABLE KEYS */;
INSERT INTO `Motivos` VALUES (1,'Conflicto interno'),(2,'Violencia generalizada'),(3,'Discriminación por raza'),(4,'Creencias religiosas'),(5,'Violencia intrafamiliar'),(6,'Motivo personal'),(7,'No especificado');
/*!40000 ALTER TABLE `Motivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nombreDoc`
--

DROP TABLE IF EXISTS `nombreDoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nombreDoc` (
  `idNombreDoc` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  PRIMARY KEY (`idNombreDoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nombreDoc`
--

LOCK TABLES `nombreDoc` WRITE;
/*!40000 ALTER TABLE `nombreDoc` DISABLE KEYS */;
INSERT INTO `nombreDoc` VALUES (1,'Pasaporte'),(2,'Acta de nacimiento'),(3,'ID'),(4,'Visa');
/*!40000 ALTER TABLE `nombreDoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ocupacion`
--

DROP TABLE IF EXISTS `Ocupacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Ocupacion` (
  `idOcupacion` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  PRIMARY KEY (`idOcupacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ocupacion`
--

LOCK TABLES `Ocupacion` WRITE;
/*!40000 ALTER TABLE `Ocupacion` DISABLE KEYS */;
INSERT INTO `Ocupacion` VALUES (1,'Personal administrativo'),(2,'Trabajador agropecuario'),(3,'Comerciante agropecuario '),(4,'Trabajador industrial'),(5,'Funcionario superior o personal directivo'),(6,'Profesionista'),(7,'Otro');
/*!40000 ALTER TABLE `Ocupacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `most_hora_fecha_sala_en_entrevista`
--

/*!50001 DROP VIEW IF EXISTS `most_hora_fecha_sala_en_entrevista`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_hora_fecha_sala_en_entrevista` AS select `e`.`Nombre` AS `entrevistador`,`m`.`nombre` AS `Migrante`,`em`.`fecha` AS `Fecha`,`em`.`hora` AS `Hora`,`em`.`noSala` AS `sala` from ((`entrevistador` `e` join `entrevista` `em`) join `migrante` `m`) where ((`m`.`idMigrante` = `em`.`idMigrante`) and (`em`.`idEntrevistador` = `e`.`idEntrevistador`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most_nombre_grado_familiares_parentescos`
--

/*!50001 DROP VIEW IF EXISTS `most_nombre_grado_familiares_parentescos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_nombre_grado_familiares_parentescos` AS select `m`.`nombre` AS `migrante`,`g`.`grado` AS `grado`,`f`.`nombre` AS `familiares`,`f`.`parentesco` AS `parentesco`,`m`.`paisNacimiento` AS `Pais` from ((`migrante` `m` join `familiares` `f`) join `gradomaximo` `g`) where ((`m`.`idMigrante` = `f`.`idMigrante`) and (`g`.`idGradoMaximo` = `m`.`idGradoMaximo`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-04 14:58:16
