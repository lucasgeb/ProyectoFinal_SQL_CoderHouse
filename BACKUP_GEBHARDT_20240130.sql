-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: copa_libertadores
-- ------------------------------------------------------
-- Server version	8.0.35

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
  `nombreEquipo` varchar(50) NOT NULL,
  `paisEquipo` varchar(50) NOT NULL,
  `colorEquipo` varchar(50) DEFAULT NULL,
  `sociosEquipo` int DEFAULT NULL,
  `estadioEquipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idEquipo`),
  KEY `nombreEquipo` (`nombreEquipo`),
  KEY `estadioEquipo` (`estadioEquipo`),
  KEY `idEquipo` (`idEquipo`),
  KEY `paisEquipo` (`paisEquipo`),
  CONSTRAINT `paisEquipo` FOREIGN KEY (`paisEquipo`) REFERENCES `paises` (`nombrePais`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,'Boca Juniors','Argentina','Azul y Amarillo',315000,'Alberto J Armando'),(2,'River Plate','Argentina','Blanco y Rojo',300000,'Mas Monumental'),(3,'Peñarol','Uruguay','Negro y Amarillo',85000,'Campeon del Siglo'),(4,'Nacional','Uruguay','Azul y blanco',130800,'Gran Parque Central'),(5,'Palmeiras','Brasil','Verde',135000,'Allianz Parque'),(6,'Internacional','Brasil','Blanco y Rojo',75000,'Beira Rio'),(7,'Universidad de Chile','Chile','Blanco y Azul',96000,'San Carlos de Apoquindo'),(8,'Colo Colo','Chile','Blanco y Rojo',86000,'Monumental'),(9,'Emelec','Ecuador','Azul',45000,'George Capwell'),(10,'America de Cali','Ecuador','Blanco y Rojo',75000,'Olimpico Pascual Guerrero'),(11,'Olimpia','Paraguay','Negro y Blanco',49000,'Manuel Ferreira'),(12,'Nacional','Paraguay','Rojo Azul y Blanco',55000,'Arsenio Erico'),(13,'Racing Club','Argentina','Celeste y Blanco',90000,'Presidente Peron'),(14,'Fluminense','Brasil','Verde y Bordo',89333,'Maracana'),(15,'Independiente','Argentina','Rojo',100000,'Libertadores de America');
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
  `nombreFase` varchar(50) NOT NULL,
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
  `nombreJugador` varchar(50) NOT NULL,
  `apellidoJugador` varchar(50) NOT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `equipoJugador` varchar(50) DEFAULT NULL,
  `posicion` varchar(50) NOT NULL,
  `pegada` enum('DIESTRO','ZURDO') DEFAULT NULL,
  `golesJugador` int DEFAULT NULL,
  `amonestaciones` int DEFAULT NULL,
  `expulsiones` int DEFAULT NULL,
  PRIMARY KEY (`idJugador`),
  KEY `paisJugador` (`nacionalidad`),
  KEY `equipoJugador` (`equipoJugador`),
  CONSTRAINT `equipoJugador` FOREIGN KEY (`equipoJugador`) REFERENCES `equipos` (`nombreEquipo`),
  CONSTRAINT `paisJugador` FOREIGN KEY (`nacionalidad`) REFERENCES `paises` (`nombrePais`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadores`
--

LOCK TABLES `jugadores` WRITE;
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` VALUES (1,'German','Cano','Argentina',35,'Fluminense','Delantero','DIESTRO',13,2,0),(2,'Edison','Cavani','Uruguay',36,'Boca Juniors','Delantero','DIESTRO',1,2,0),(3,'Nicolas','De la Cruz','Uruguay',26,'River Plate','Mediocampista','DIESTRO',1,2,0),(4,'Leonardo','Sigali','Argentina',35,'Racing Club','Defensor','DIESTRO',0,1,0),(5,'Endrick','Moreira','Brasil',17,'Palmeiras','Delantero','ZURDO',1,1,1),(6,'Rony','Barbosa','Brasil',35,'Palmeiras','Delantero','DIESTRO',3,3,0),(7,'Lucas','Soto','Chile',20,'Colo Colo','Defensor','DIESTRO',0,0,0),(8,'Agustin','Bouzat','Argentina',29,'Colo Colo','Delantero','ZURDO',0,2,0),(9,'Enner','Valencia','Ecuador',34,'Internacional','Delantero','DIESTRO',4,0,0),(10,'Alan','Patrick','Brasil',32,'Internacional','Mediocampista','DIESTRO',5,3,0),(11,'Luis','Advindula','Peru',33,'Boca Juniors','Defensor','DIESTRO',2,1,0),(12,'Dario','Benedetto','Argentina',33,'Boca Juniors','Delantero','DIESTRO',0,2,0),(13,'Jorman','Campuzano','Colombia',25,'Boca Juniors','Mediocampista','DIESTRO',0,0,0),(14,'Frank','Fabra','Colombia',30,'Boca Juniors','Defensor','ZURDO',0,2,1),(15,'Marcelo','Vieira','Brasil',35,'Fluminense','Defensor','ZURDO',1,5,0),(16,'Marlon','Santos','Brasil',28,'Fluminense','Defensor','ZURDO',1,1,0),(17,'Paulo','Ganso','Brasil',34,'Fluminense','Mediocampista','DIESTRO',0,0,0),(18,'Felipe','Melo','Brasil',40,'Fluminense','Defensor','DIESTRO',1,2,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_auditoria`
--

LOCK TABLES `log_auditoria` WRITE;
/*!40000 ALTER TABLE `log_auditoria` DISABLE KEYS */;
INSERT INTO `log_auditoria` VALUES (1,'INSERT','JUGADOR','root@localhost','2024-01-24'),(2,'INSERT','JUGADOR','root@localhost','2024-01-24'),(3,'INSERT','JUGADOR','root@localhost','2024-01-24'),(4,'INSERT','JUGADOR','root@localhost','2024-01-24'),(5,'INSERT','JUGADOR','root@localhost','2024-01-24'),(6,'INSERT','JUGADOR','root@localhost','2024-01-24'),(7,'INSERT','JUGADOR','root@localhost','2024-01-24'),(8,'INSERT','JUGADOR','root@localhost','2024-01-24');
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
  `nombrePais` varchar(50) NOT NULL,
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
  `añoEdicion` int NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `estadio` varchar(50) DEFAULT NULL,
  `equipoVisitante` varchar(50) NOT NULL,
  `equipoLocal` varchar(50) NOT NULL,
  `golesVisitante` varchar(50) NOT NULL,
  `golesLocal` int DEFAULT NULL,
  `resultado` enum('LOCAL','VISITANTE','EMPATE','SUSPENDIDO') NOT NULL,
  PRIMARY KEY (`idPartido`),
  KEY `año` (`añoEdicion`),
  KEY `estadioParido` (`estadio`),
  KEY `local` (`equipoLocal`),
  KEY `visitante` (`equipoVisitante`),
  CONSTRAINT `año` FOREIGN KEY (`añoEdicion`) REFERENCES `torneos` (`añoEdicion`),
  CONSTRAINT `estadioParido` FOREIGN KEY (`estadio`) REFERENCES `equipos` (`estadioEquipo`),
  CONSTRAINT `local` FOREIGN KEY (`equipoLocal`) REFERENCES `equipos` (`nombreEquipo`),
  CONSTRAINT `visitante` FOREIGN KEY (`equipoVisitante`) REFERENCES `equipos` (`nombreEquipo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidos`
--

LOCK TABLES `partidos` WRITE;
/*!40000 ALTER TABLE `partidos` DISABLE KEYS */;
INSERT INTO `partidos` VALUES (1,2023,'2023-08-24 21:30:00','Maracana','Olimpia','Fluminense','0',2,'LOCAL'),(2,2023,'2023-08-31 21:30:00','Manuel Ferreira','Fluminense','Olimpia','3',1,'VISITANTE'),(3,2023,'2023-09-28 21:30:00','Alberto J Armando','Palmeiras','Boca Juniors','0',0,'EMPATE'),(4,2023,'2023-10-05 21:30:00','Allianz Parque','Boca Juniors','Palmeiras','1',1,'EMPATE'),(5,2023,'2023-09-27 21:30:00','Maracana','Internacional','Fluminense','2',2,'EMPATE'),(6,2023,'2023-10-04 21:30:00','Beira Rio','Fluminense','Internacional','1',2,'VISITANTE'),(7,2023,'2023-11-04 17:00:00','Maracana','Boca Juniors','Fluminense','1',2,'LOCAL');
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
  `añoEdicion` int NOT NULL,
  `fase` varchar(50) DEFAULT NULL,
  `equipoCampeon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idTorneo`),
  KEY `añoEdicion` (`añoEdicion`),
  KEY `faseTorneo` (`fase`),
  KEY `campeon` (`equipoCampeon`),
  CONSTRAINT `campeon` FOREIGN KEY (`equipoCampeon`) REFERENCES `equipos` (`nombreEquipo`),
  CONSTRAINT `faseTorneo` FOREIGN KEY (`fase`) REFERENCES `fases` (`nombreFase`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `torneos`
--

LOCK TABLES `torneos` WRITE;
/*!40000 ALTER TABLE `torneos` DISABLE KEYS */;
INSERT INTO `torneos` VALUES (1,2018,NULL,'River Plate'),(3,2020,NULL,'Palmeiras'),(4,2021,NULL,'Palmeiras'),(6,2023,NULL,'Fluminense');
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

-- Dump completed on 2024-01-30 22:04:07
