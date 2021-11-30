-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto-final
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `idactor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(200) NOT NULL,
  `lugarNacimiento` int NOT NULL,
  PRIMARY KEY (`idactor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Brad Pit',' Pitt',1);
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `idgenero` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Ciencia Ficcion'),(2,'Terror'),(3,'Suspenso');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas` (
  `idpelicula` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `genero` int NOT NULL,
  `director` varchar(100) NOT NULL,
  `anno` varchar(50) NOT NULL,
  PRIMARY KEY (`idpelicula`),
  KEY `fk_idGenero_idx` (`genero`),
  CONSTRAINT `fk_idGenero` FOREIGN KEY (`genero`) REFERENCES `genero` (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (1,'Venom','Venom',1,'Tony','2008'),(2,'Spiderman: No Way Home','Spiderman',1,'tony','2008'),(3,'Batman Begins','Batman',1,'tony','2008'),(4,'Kill Bill Vol.1','Kill Bill',1,'Avengers','2013'),(5,'Pulp Fiction','Pulp Fiction',1,'Andy Serkis','\"2021-09-30\"'),(6,'Army Of Dead','Army Of Dead',1,'Tony','hoy'),(7,'John Wick: Chapter 4','John Wick',1,'Tony','hoy'),(8,'Terminator','Terminator',1,'Tony','2008'),(9,'Overlord','Overlord',1,'tony','2008'),(10,'John Rambo','Rambo',1,'tony','2008'),(11,'The Avengers','The Avengers',1,'Avengers','2013'),(12,'The Purge','The Purge',1,'Tony','hoy'),(13,'TAKEN 3','TAKEN 3',1,'Tony','2008'),(14,'The Raid 2','The Raid 2',1,'tony','2008'),(15,'Enter the dragon','Enter the dragon',1,'tony','2008'),(16,'Thor','Thor',1,'Avengers','2013'),(17,'Shang-Chi and The Legend of the Rings','Shang-Chi and The Legend of the Rings',1,'Tony','hoy'),(18,'No time to die','No time to die',1,'Tony','2008'),(19,'Venom: Let there be carnage','Venom: Let there be carnage',1,'tony','2008'),(20,'Finch','Finch',1,'tony','2008'),(21,'Apex','Apex',1,'Avengers','2013'),(22,'Amina','Amina',1,'Tony','hoy'),(24,'Eternals','Eternals',1,'tony','2008'),(25,'Army of thieves','Army of thieves',1,'tony','2008'),(26,'Dune','Dune',1,'Avengers','2013'),(27,'Free guy','Free guy',1,'Tony','hoy'),(28,'Plan A','Plan A',1,'Tony','2008'),(29,'Next-Door Nigthmare','Next-Door Nigthmare',1,'tony','2008'),(30,'Snake Eyes','Snake Eyes',1,'tony','2008'),(31,'Demon Slayer - The movie','Demon Slayer - The movie',1,'Avengers','2013'),(32,'The Suicide Squad','The Suicide Squad',1,'Tony','2021'),(33,'Me Before You','Me Before You',1,'tony','2008'),(34,'Your Name','Your Name',1,'Avengers','2013'),(35,'Lalaland','Lalaland',1,'Tony','hoy'),(36,'Weathering With You','Weathering With You',1,'Tony','2008'),(37,'Rascal does not dream of a dreaming girl','Rascal does not dream of a dreaming girl',1,'tony','2008'),(38,'After we fell','After we fell',1,'tony','2008'),(39,'The fault of our stars','The fault of our stars',1,'Avengers','2013'),(40,'Safe Haven','Safe Haven',1,'Tony','hoy'),(41,'A Wisker Away','A Wisker Away',1,'Tony','2008'),(42,'A Silent Voice','A Silent Voice',1,'tony','2008'),(43,'Pride and Predijuce','Pride and Predijuce',1,'tony','2008'),(44,'If i Stay','If i Stay',1,'Avengers','2013'),(45,'I Want To Eat Your Pancreas','I Want To Eat Your Pancreas',1,'Tony','2021'),(46,'Josee, the tiger And the fish','Josee, the tiger And the fish',1,'Avengers','2013'),(47,'Recuerdame','Recuerdame',1,'Tony','hoy'),(48,'Harry And Meghan: A Royal Romance','Harry And Meghan: A Royal Romance',1,'Tony','2008'),(62,'\"Cruella\"','\"Cruella\"',1,'Craig Gillespie','\"2021-05-26\"');
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idproducto` int NOT NULL AUTO_INCREMENT,
  `idcliente` int NOT NULL,
  `idpelicula` int NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `cantidad` int NOT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,1,1,'Venom',4,3500),(2,1,1,'Venom',8,3500),(3,1,1,'Venom',7,3500),(4,1,1,'Venom',11,3500),(5,1,1,'Venom',17,3500),(6,1,1,'Venom',5,3500),(7,1,1,'Venom',9,3500),(8,11,1,'Venomm',55,4500),(9,11,1,'Venomm',56,4500),(10,11,1,'Venomm',57,4500),(11,11,1,'Venomm',5,4500),(12,11,1,'Venomm',1,4500),(13,11,1,'Venomm',99,4500),(14,11,1,'Venomm',7,4500),(15,11,1,'Venomm',2,4500),(16,11,1,'Venomm',9,4500),(17,11,1,'Venomm',33,4500),(18,11,1,'Venomm',9,4500),(19,11,1,'Venomm',5,4500);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reparto`
--

DROP TABLE IF EXISTS `reparto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reparto` (
  `idreparto` int NOT NULL AUTO_INCREMENT,
  `actor` int NOT NULL,
  `pelicula` int NOT NULL,
  PRIMARY KEY (`idreparto`),
  KEY `fk_idPelicula_idx` (`pelicula`),
  KEY `fk_idActor_idx` (`actor`),
  CONSTRAINT `fk_idActor` FOREIGN KEY (`actor`) REFERENCES `actor` (`idactor`),
  CONSTRAINT `fk_idPelicula` FOREIGN KEY (`pelicula`) REFERENCES `peliculas` (`idpelicula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reparto`
--

LOCK TABLES `reparto` WRITE;
/*!40000 ALTER TABLE `reparto` DISABLE KEYS */;
INSERT INTO `reparto` VALUES (1,1,1);
/*!40000 ALTER TABLE `reparto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `rol` varchar(15) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `password` decimal(20,0) NOT NULL,
  `fecha_creacion` varchar(20) NOT NULL,
  `ultima_conexion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'moises','Administrador','moises',123,'2021-11-12','2021-11-12'),(2,'juan','Cliente','juan',123,'2021-11-12','2021-11-12'),(3,'pedrox','Administrador','pedro',465,'2021-11-12','2021-11-12'),(8,'Jose','Administrador','jose',123,'2021-11-18','2021-11-18'),(11,'Sofia Rojas','Cliente','sofia',1234,'2021-11-19','2021-11-19'),(12,'Carlos','Administrador','carlos',1234,'2021-11-30','2021-11-29');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-29 23:51:23
