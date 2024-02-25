-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: copa_libertadores
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipos` (
  `idEquipo` int NOT NULL AUTO_INCREMENT,
  `nombreEquipo` varchar(30) NOT NULL,
  `paisEquipo` varchar(15) NOT NULL,
  `colorEquipo` varchar(30) NOT NULL,
  `sociosEquipo` int DEFAULT '0',
  `estadioEquipo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idEquipo`),
  KEY `nombreEquipo` (`nombreEquipo`),
  KEY `estadioEquipo` (`estadioEquipo`),
  KEY `idEquipo` (`idEquipo`),
  KEY `paisEquipo` (`paisEquipo`),
  CONSTRAINT `paisEquipo` FOREIGN KEY (`paisEquipo`) REFERENCES `paises` (`nombrePais`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,'Boca Juniors','Argentina','Azul y Amarillo',315000,'Alberto J Armando'),(2,'River Plate','Argentina','Blanco y Rojo',300000,'Mas Monumental'),(3,'Flamengo','Brasil','Negro y Rojo',145000,'Maracana'),(4,'Nacional','Uruguay','Azul y Blanco',130800,'Gran Parque Central'),(5,'Palmeiras','Brasil','Verde',135000,'Allianz Parque'),(6,'Internacional','Brasil','Blanco y Rojo',75000,'Beira Rio'),(7,'Atletico Paranaense','Brasil','Negro y Rojo',43150,'Arena de Baixada'),(8,'Colo Colo','Chile','Blanco y Rojo',86000,'Monumental'),(9,'Independiente del Valle','Ecuador','Blanco y Negro',12000,'Banco Guayaquil'),(10,'Libertad','Paraguay','Blanco y Negro',12000,'Tigo la Huerta'),(11,'Olimpia','Paraguay','Negro y Blanco',49000,'Manuel Ferreira'),(12,'Bolivar','Bolivia','Celeste',7000,'Libertador Simon Bolivar'),(13,'Racing Club','Argentina','Celeste y Blanco',90000,'Presidente Peron'),(14,'Fluminense','Brasil','Verde y Bordo',89333,'Maracana'),(15,'The Strongest','Bolivia','Amarillo y Negro',16000,'Hernando Siles'),(16,'Melgar','Peru','Rojo y Negro',56433,'Monumental UNSA'),(17,'Alianza Lima','Peru','Blanco y Negro',31685,'Alejandro Villanueva'),(18,'Argentinos Juniors','Argentina','Blanco y Rojo',20221,'Diego Armando Maradona'),(19,'Metropolitanos','Venezuela','Violeta',8600,'Olimpico de la UCV'),(20,'Aucas','Ecuador','Rojo y Amarillo',18799,'Gonzalo Pozo Ripalda'),(21,'Monagas','Venezuela','Azul y Rojo',45632,'Monumental de Maturin'),(22,'Liverpool','Uruguay','Azul y Negro',8500,'Belvedere'),(23,'Deportivo Pereira','Colombia','Rojo y Amarillo',25630,'Hernan Ramirez Villegas'),(24,'Deportivo Ñublense','Chile','Rojo',11300,'Bicentenario Municipal'),(25,'Patronato','Argentina','Rojo y Negro',17890,'Presbitero Bartolome Grelia'),(26,'Sporting Cristal','Peru','Celeste',11600,'Alberto Gallardo'),(27,'Cerro Porteño','Paraguay','Azul y Rojo',41500,'General Pablo Rojas'),(28,'Atletico Mineiro','Brasil','Blanco y Negro',36980,'Arena MRV'),(29,'Independiente Medellin','Colombia','Rojo y Azul',46000,'Atanasio Girardot');
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fases`
--

DROP TABLE IF EXISTS `fases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fases` (
  `idFase` int NOT NULL AUTO_INCREMENT,
  `nombreFase` varchar(20) NOT NULL,
  PRIMARY KEY (`idFase`),
  KEY `nombreFase` (`nombreFase`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fases`
--

LOCK TABLES `fases` WRITE;
/*!40000 ALTER TABLE `fases` DISABLE KEYS */;
INSERT INTO `fases` VALUES (3,'Cuarto de final'),(1,'Fase de grupos'),(5,'Final'),(2,'Octavo de final'),(4,'Semifinal');
/*!40000 ALTER TABLE `fases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugadores`
--

DROP TABLE IF EXISTS `jugadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugadores` (
  `idJugador` int NOT NULL AUTO_INCREMENT,
  `nombreJugador` varchar(20) NOT NULL,
  `apellidoJugador` varchar(20) NOT NULL,
  `nacionalidad` varchar(15) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `equipoJugador` varchar(30) DEFAULT NULL,
  `posicion` varchar(20) NOT NULL,
  `pegada` enum('DIESTRO','ZURDO') DEFAULT NULL,
  `golesJugador` int DEFAULT '0',
  `amonestaciones` int DEFAULT '0',
  `expulsiones` int DEFAULT '0',
  PRIMARY KEY (`idJugador`),
  KEY `paisJugador` (`nacionalidad`),
  KEY `equipoJugador` (`equipoJugador`),
  CONSTRAINT `equipoJugador` FOREIGN KEY (`equipoJugador`) REFERENCES `equipos` (`nombreEquipo`),
  CONSTRAINT `paisJugador` FOREIGN KEY (`nacionalidad`) REFERENCES `paises` (`nombrePais`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadores`
--

LOCK TABLES `jugadores` WRITE;
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` VALUES (1,'German','Cano','Argentina',35,'Fluminense','Delantero','DIESTRO',13,2,0),(2,'Edison','Cavani','Uruguay',36,'Boca Juniors','Delantero','DIESTRO',1,2,0),(3,'Nicolas','De la Cruz','Uruguay',26,'River Plate','Mediocampista','DIESTRO',1,2,0),(4,'Leonardo','Sigali','Argentina',35,'Racing Club','Defensor','DIESTRO',0,1,0),(5,'Endrick','Moreira','Brasil',17,'Palmeiras','Delantero','ZURDO',1,1,1),(6,'Rony','Barbosa','Brasil',35,'Palmeiras','Delantero','DIESTRO',3,3,0),(7,'Lucas','Soto','Chile',20,'Colo Colo','Defensor','DIESTRO',0,0,0),(8,'Agustin','Bouzat','Argentina',29,'Colo Colo','Delantero','ZURDO',0,2,0),(10,'Enner','Valencia','Ecuador',34,'Internacional','Delantero','DIESTRO',4,0,0),(11,'Samuel','Xavier','Brasil',33,'Fluminense','Defensor','DIESTRO',0,2,1),(12,'André','Da Costa','Brasil',22,'Fluminense','Mediocampista','DIESTRO',1,3,0),(13,'Paulo','Ganso','Brasil',34,'Fluminense','Mediocampista','ZURDO',6,6,0),(14,'Mantheus','Martinelli','Brasil',22,'Fluminense','Mediocampista','DIESTRO',0,5,0),(15,'Nino','Mota','Brasil',26,'Fluminense','Defensor','DIESTRO',1,6,0),(16,'Ronnie','Fernandez','Chile',33,'Bolivar','Delantero','DIESTRO',2,5,0),(17,'Francisco','Dacosta','Brasil',28,'Bolivar','Delantero','DIESTRO',0,1,0),(18,'Patricio','Rodriguez','Argentina',33,'Bolivar','Delantero','DIESTRO',3,2,0),(19,'Gabriel','Villamil','Bolivia',22,'Bolivar','Mediocampista','DIESTRO',2,5,0),(20,'Bruno','Savio','Brasil',29,'Bolivar','Mediocampista','DIESTRO',0,1,0),(21,'Diego','Bejarano','Bolivia',32,'Bolivar','Defensor','DIESTRO',4,7,0),(22,'Rene','Gaucho','Brasil',31,'Internacional','Defensor','ZURDO',0,3,0),(23,'Nahuel','Hernandez','Colombia',26,'Internacional','Defensor','ZURDO',0,1,0),(24,'Gabriel','Mercado','Argentina',36,'Internacional','Defensor','DIESTRO',5,11,1),(25,'Alan','Patrick','Brasil',32,'Internacional','Mediocampista','DIESTRO',6,3,0),(26,'Carlos','Aranguiz','Chile',34,'Internacional','Mediocampista','DIESTRO',1,4,0),(27,'Gabriel','Hauche','Argentina',37,'Racing Club','Delantero','DIESTRO',3,4,1),(28,'Maxi','Romero','Argentina',25,'Racing Club','Delantero','DIESTRO',1,0,0),(29,'Agustin','Ojeda','Argentina',19,'Racing Club','Delantero','DIESTRO',1,0,0),(30,'Anibal','Moreno','Argentina',24,'Racing Club','Mediocampista','DIESTRO',1,1,0),(31,'Jonatan','Gomez','Argentina',34,'Racing Club','Mediocampista','DIESTRO',4,6,0),(32,'Tobías','Rubio','Argentina',19,'Racing Club','Defensor','DIESTRO',0,2,0),(33,'Arley','Rodriguez','Colombia',31,'Deportivo Pereira','Delantero','DIESTRO',1,6,0),(34,'Angelo','Rodriguez','Colombia',34,'Deportivo Pereira','Delantero','DIESTRO',1,6,0),(35,'Maicol','Medica','Colombia',26,'Deportivo Pereira','Mediocampista','ZURDO',0,3,1),(36,'Joan','Quinteros','Colombia',28,'Deportivo Pereira','Defensor','DIESTRO',0,3,1),(37,'Eduardo','Moreno','Colombia',22,'Deportivo Pereira','Defensor','DIESTRO',0,1,0),(38,'Juan Pablo','Zuluaga','Colombia',30,'Deportivo Pereira','Mediocampista','DIESTRO',0,1,0),(39,'Weverton','Da Silva','Brasil',36,'Palmeiras','Mediocampista','DIESTRO',0,5,0),(40,'Marcos','Rocha','Brasil',35,'Palmeiras','Defensor','DIESTRO',1,1,0),(41,'Gustavo','Portillo','Paraguay',30,'Palmeiras','Defensor','DIESTRO',3,4,0),(42,'Gabriel','Menino','Brasil',23,'Palmeiras','Mediocampista','DIESTRO',0,3,0),(43,'Ze','Rafael','Brasil',30,'Palmeiras','Mediocampista','DIESTRO',0,1,0),(44,'Joaquin','Piquerez','Uruguay',25,'Palmeiras','Defensor','ZURDO',3,1,0),(45,'Luis','Advindula','Peru',33,'Boca Juniors','Defensor','DIESTRO',2,1,0),(46,'Dario','Benedetto','Argentina',33,'Boca Juniors','Delantero','DIESTRO',0,2,0),(47,'Jorman','Campuzano','Colombia',25,'Boca Juniors','Mediocampista','DIESTRO',0,0,0),(48,'Frank','Fabra','Colombia',30,'Boca Juniors','Defensor','ZURDO',0,2,1);
/*!40000 ALTER TABLE `jugadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_auditoria`
--

DROP TABLE IF EXISTS `log_auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_auditoria` (
  `ID_LOG` int NOT NULL AUTO_INCREMENT,
  `NOMBRE_DE_ACCION` varchar(50) DEFAULT NULL,
  `NOMBRE_TABLA` varchar(50) DEFAULT NULL,
  `USUARIO` varchar(100) DEFAULT NULL,
  `FECHA_UPD_INS_DEL` date DEFAULT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_auditoria`
--

LOCK TABLES `log_auditoria` WRITE;
/*!40000 ALTER TABLE `log_auditoria` DISABLE KEYS */;
INSERT INTO `log_auditoria` VALUES (1,'INSERT','JUGADOR','root@localhost','2024-02-24'),(2,'INSERT','JUGADOR','root@localhost','2024-02-24'),(3,'INSERT','JUGADOR','root@localhost','2024-02-24'),(4,'INSERT','JUGADOR','root@localhost','2024-02-24'),(5,'INSERT','JUGADOR','root@localhost','2024-02-24'),(6,'INSERT','JUGADOR','root@localhost','2024-02-24'),(7,'INSERT','JUGADOR','root@localhost','2024-02-24'),(8,'INSERT','JUGADOR','root@localhost','2024-02-24'),(9,'INSERT','JUGADOR','root@localhost','2024-02-24'),(10,'INSERT','JUGADOR','root@localhost','2024-02-24'),(11,'INSERT','JUGADOR','root@localhost','2024-02-24'),(12,'INSERT','JUGADOR','root@localhost','2024-02-24'),(13,'INSERT','JUGADOR','root@localhost','2024-02-24'),(14,'INSERT','JUGADOR','root@localhost','2024-02-24'),(15,'INSERT','JUGADOR','root@localhost','2024-02-24'),(16,'INSERT','JUGADOR','root@localhost','2024-02-24'),(17,'INSERT','JUGADOR','root@localhost','2024-02-24'),(18,'INSERT','JUGADOR','root@localhost','2024-02-24'),(19,'INSERT','JUGADOR','root@localhost','2024-02-24'),(20,'INSERT','JUGADOR','root@localhost','2024-02-24'),(21,'INSERT','JUGADOR','root@localhost','2024-02-24'),(22,'INSERT','JUGADOR','root@localhost','2024-02-24'),(23,'INSERT','JUGADOR','root@localhost','2024-02-24'),(24,'INSERT','JUGADOR','root@localhost','2024-02-24'),(25,'INSERT','JUGADOR','root@localhost','2024-02-24'),(26,'INSERT','JUGADOR','root@localhost','2024-02-24'),(27,'INSERT','JUGADOR','root@localhost','2024-02-24'),(28,'INSERT','JUGADOR','root@localhost','2024-02-24'),(29,'INSERT','JUGADOR','root@localhost','2024-02-24'),(30,'INSERT','JUGADOR','root@localhost','2024-02-24'),(31,'INSERT','JUGADOR','root@localhost','2024-02-24'),(32,'INSERT','JUGADOR','root@localhost','2024-02-24'),(33,'INSERT','JUGADOR','root@localhost','2024-02-24'),(34,'INSERT','JUGADOR','root@localhost','2024-02-24'),(35,'INSERT','JUGADOR','root@localhost','2024-02-24'),(36,'INSERT','JUGADOR','root@localhost','2024-02-24'),(37,'INSERT','JUGADOR','root@localhost','2024-02-24'),(38,'INSERT','JUGADOR','root@localhost','2024-02-24'),(39,'INSERT','JUGADOR','root@localhost','2024-02-24'),(40,'INSERT','JUGADOR','root@localhost','2024-02-24'),(41,'INSERT','JUGADOR','root@localhost','2024-02-24'),(42,'INSERT','JUGADOR','root@localhost','2024-02-24'),(43,'INSERT','JUGADOR','root@localhost','2024-02-24'),(44,'INSERT','JUGADOR','root@localhost','2024-02-24'),(45,'INSERT','JUGADOR','root@localhost','2024-02-24'),(46,'INSERT','JUGADOR','root@localhost','2024-02-24'),(47,'INSERT','JUGADOR','root@localhost','2024-02-24');
/*!40000 ALTER TABLE `log_auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_auditoria2`
--

DROP TABLE IF EXISTS `log_auditoria2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_auditoria2` (
  `ID_LOG` int NOT NULL AUTO_INCREMENT,
  `NOMBREJUGADOR` varchar(50) DEFAULT NULL,
  `APELLIDOJUGADOR` varchar(50) DEFAULT NULL,
  `EQUIPOJUGADOR` varchar(50) DEFAULT NULL,
  `NOMBRE_DE_ACCION` varchar(50) DEFAULT NULL,
  `NOMBRE_TABLA` varchar(50) DEFAULT NULL,
  `USUARIO` varchar(100) DEFAULT NULL,
  `FECHA_UPD_INS_DEL` date DEFAULT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_auditoria2`
--

LOCK TABLES `log_auditoria2` WRITE;
/*!40000 ALTER TABLE `log_auditoria2` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_auditoria2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paises` (
  `idPais` int NOT NULL AUTO_INCREMENT,
  `nombrePais` varchar(15) NOT NULL,
  PRIMARY KEY (`idPais`),
  KEY `nombrePais` (`nombrePais`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (1,'Argentina'),(2,'Bolivia'),(3,'Brasil'),(4,'Chile'),(5,'Colombia'),(6,'Ecuador'),(7,'Paraguay'),(8,'Peru'),(9,'Uruguay'),(10,'Venezuela');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidos`
--

DROP TABLE IF EXISTS `partidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidos` (
  `idPartido` int NOT NULL AUTO_INCREMENT,
  `añoEdicion` year NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `estadio` varchar(30) DEFAULT NULL,
  `fase` varchar(20) DEFAULT NULL,
  `equipoVisitante` varchar(30) NOT NULL,
  `equipoLocal` varchar(30) NOT NULL,
  `golesVisitante` int NOT NULL DEFAULT '0',
  `golesLocal` int DEFAULT '0',
  `resultado` enum('LOCAL','VISITANTE','EMPATE','SUSPENDIDO') NOT NULL,
  PRIMARY KEY (`idPartido`),
  KEY `año` (`añoEdicion`),
  KEY `estadioPartido` (`estadio`),
  KEY `fasePartido` (`fase`),
  KEY `local` (`equipoLocal`),
  KEY `visitante` (`equipoVisitante`),
  CONSTRAINT `año` FOREIGN KEY (`añoEdicion`) REFERENCES `torneos` (`añoEdicion`),
  CONSTRAINT `estadioPartido` FOREIGN KEY (`estadio`) REFERENCES `equipos` (`estadioEquipo`),
  CONSTRAINT `fasePartido` FOREIGN KEY (`fase`) REFERENCES `fases` (`nombreFase`),
  CONSTRAINT `local` FOREIGN KEY (`equipoLocal`) REFERENCES `equipos` (`nombreEquipo`),
  CONSTRAINT `visitante` FOREIGN KEY (`equipoVisitante`) REFERENCES `equipos` (`nombreEquipo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidos`
--

LOCK TABLES `partidos` WRITE;
/*!40000 ALTER TABLE `partidos` DISABLE KEYS */;
INSERT INTO `partidos` VALUES (2,2023,'2023-09-23 21:30:00','Hernan Ramirez Villegas','Cuarto de final','Palmeiras','Deportivo Pereira',4,0,'LOCAL'),(3,2023,'2023-08-23 21:30:00','Alberto J Armando','Cuarto de final','Racing Club','Boca Juniors',0,0,'EMPATE'),(4,2023,'2023-08-24 21:30:00','Maracana','Cuarto de final','Olimpia','Fluminense',0,2,'LOCAL'),(5,2023,'2023-08-29 19:00:00','Beira Rio','Cuarto de final','Bolivar','Internacional',0,2,'LOCAL'),(6,2023,'2023-08-30 21:30:00','Presidente Peron','Cuarto de final','Boca Juniors','Racing Club',0,0,'EMPATE'),(7,2023,'2023-09-30 21:30:00','Allianz Parque','Cuarto de final','Deportivo Pereira','Palmeiras',0,0,'EMPATE'),(8,2023,'2023-08-31 21:30:00','Manuel Ferreira','Cuarto de final','Fluminense','Olimpia',3,1,'VISITANTE'),(9,2023,'2023-09-27 21:30:00','Maracana','Semifinal','Internacional','Fluminense',2,2,'EMPATE'),(10,2023,'2023-09-28 21:30:00','Alberto J Armando','Semifinal','Palmeiras','Boca Juniors',0,0,'EMPATE'),(11,2023,'2023-10-04 21:30:00','Beira Rio','Semifinal','Fluminense','Internacional',2,1,'VISITANTE'),(12,2023,'2023-10-05 21:30:00','Allianz Parque','Semifinal','Boca Juniors','Palmeiras',1,1,'EMPATE'),(13,2023,'2023-11-04 17:00:00','Maracana','Final','Boca Juniors','Fluminense',1,2,'LOCAL');
/*!40000 ALTER TABLE `partidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `torneos`
--

DROP TABLE IF EXISTS `torneos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torneos` (
  `idTorneo` int NOT NULL AUTO_INCREMENT,
  `añoEdicion` year NOT NULL,
  `equipoCampeon` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idTorneo`),
  KEY `añoEdicion` (`añoEdicion`),
  KEY `campeon` (`equipoCampeon`),
  CONSTRAINT `campeon` FOREIGN KEY (`equipoCampeon`) REFERENCES `equipos` (`nombreEquipo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `torneos`
--

LOCK TABLES `torneos` WRITE;
/*!40000 ALTER TABLE `torneos` DISABLE KEYS */;
INSERT INTO `torneos` VALUES (1,2018,'River Plate'),(2,2019,'Flamengo'),(3,2020,'Palmeiras'),(4,2021,'Palmeiras'),(5,2022,'Flamengo'),(6,2023,'Fluminense');
/*!40000 ALTER TABLE `torneos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_detallesjugador`
--

DROP TABLE IF EXISTS `v_detallesjugador`;
/*!50001 DROP VIEW IF EXISTS `v_detallesjugador`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_detallesjugador` AS SELECT 
 1 AS `idJugador`,
 1 AS `nombreJugador`,
 1 AS `apellidoJugador`,
 1 AS `posicion`,
 1 AS `equipoJugador`,
 1 AS `nombreEquipo`,
 1 AS `nacionalidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_equiposporpaiscongroupby`
--

DROP TABLE IF EXISTS `v_equiposporpaiscongroupby`;
/*!50001 DROP VIEW IF EXISTS `v_equiposporpaiscongroupby`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_equiposporpaiscongroupby` AS SELECT 
 1 AS `nombrePais`,
 1 AS `cantidadEquipos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_equiposporsocios`
--

DROP TABLE IF EXISTS `v_equiposporsocios`;
/*!50001 DROP VIEW IF EXISTS `v_equiposporsocios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_equiposporsocios` AS SELECT 
 1 AS `idEquipo`,
 1 AS `nombreEquipo`,
 1 AS `paisEquipo`,
 1 AS `colorEquipo`,
 1 AS `sociosEquipo`,
 1 AS `estadioEquipo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_jugadoresargentinos`
--

DROP TABLE IF EXISTS `v_jugadoresargentinos`;
/*!50001 DROP VIEW IF EXISTS `v_jugadoresargentinos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_jugadoresargentinos` AS SELECT 
 1 AS `nombreJugador`,
 1 AS `apellidoJugador`,
 1 AS `equipoJugador`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_jugadoresdiestroscongol`
--

DROP TABLE IF EXISTS `v_jugadoresdiestroscongol`;
/*!50001 DROP VIEW IF EXISTS `v_jugadoresdiestroscongol`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_jugadoresdiestroscongol` AS SELECT 
 1 AS `nombreJugador`,
 1 AS `apellidoJugador`,
 1 AS `nacionalidad`,
 1 AS `equipoJugador`,
 1 AS `posicion`,
 1 AS `pegada`,
 1 AS `golesJugador`,
 1 AS `amonestaciones`,
 1 AS `expulsiones`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_detallesjugador`
--

/*!50001 DROP VIEW IF EXISTS `v_detallesjugador`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_detallesjugador` AS select `j`.`idJugador` AS `idJugador`,`j`.`nombreJugador` AS `nombreJugador`,`j`.`apellidoJugador` AS `apellidoJugador`,`j`.`posicion` AS `posicion`,`j`.`equipoJugador` AS `equipoJugador`,`e`.`nombreEquipo` AS `nombreEquipo`,`p`.`nombrePais` AS `nacionalidad` from ((`jugadores` `j` join `equipos` `e` on((`j`.`equipoJugador` = `e`.`nombreEquipo`))) join `paises` `p` on((`j`.`nacionalidad` = `p`.`nombrePais`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_equiposporpaiscongroupby`
--

/*!50001 DROP VIEW IF EXISTS `v_equiposporpaiscongroupby`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_equiposporpaiscongroupby` AS select `p`.`nombrePais` AS `nombrePais`,count(`e`.`idEquipo`) AS `cantidadEquipos` from (`equipos` `e` join `paises` `p` on((`e`.`paisEquipo` = `p`.`nombrePais`))) group by `p`.`nombrePais` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_equiposporsocios`
--

/*!50001 DROP VIEW IF EXISTS `v_equiposporsocios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_equiposporsocios` AS select `equipos`.`idEquipo` AS `idEquipo`,`equipos`.`nombreEquipo` AS `nombreEquipo`,`equipos`.`paisEquipo` AS `paisEquipo`,`equipos`.`colorEquipo` AS `colorEquipo`,`equipos`.`sociosEquipo` AS `sociosEquipo`,`equipos`.`estadioEquipo` AS `estadioEquipo` from `equipos` order by `equipos`.`sociosEquipo` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_jugadoresargentinos`
--

/*!50001 DROP VIEW IF EXISTS `v_jugadoresargentinos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_jugadoresargentinos` AS select `jugadores`.`nombreJugador` AS `nombreJugador`,`jugadores`.`apellidoJugador` AS `apellidoJugador`,`jugadores`.`equipoJugador` AS `equipoJugador` from `jugadores` where (`jugadores`.`nacionalidad` = 'Argentina') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_jugadoresdiestroscongol`
--

/*!50001 DROP VIEW IF EXISTS `v_jugadoresdiestroscongol`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_jugadoresdiestroscongol` AS select `jugadores`.`nombreJugador` AS `nombreJugador`,`jugadores`.`apellidoJugador` AS `apellidoJugador`,`jugadores`.`nacionalidad` AS `nacionalidad`,`jugadores`.`equipoJugador` AS `equipoJugador`,`jugadores`.`posicion` AS `posicion`,`jugadores`.`pegada` AS `pegada`,`jugadores`.`golesJugador` AS `golesJugador`,`jugadores`.`amonestaciones` AS `amonestaciones`,`jugadores`.`expulsiones` AS `expulsiones` from `jugadores` where ((`jugadores`.`pegada` = 'DIESTRO') and (`jugadores`.`golesJugador` > 0)) */;
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

-- Dump completed on 2024-02-24 14:52:06
