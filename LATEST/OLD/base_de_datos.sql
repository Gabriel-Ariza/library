-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: education
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aprendiz`
--

DROP TABLE IF EXISTS `aprendiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aprendiz` (
  `id_aprendiz` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `id_ruta` int DEFAULT NULL,
  `edad` int NOT NULL,
  PRIMARY KEY (`id_aprendiz`),
  KEY `id_ruta` (`id_ruta`),
  CONSTRAINT `aprendiz_ibfk_1` FOREIGN KEY (`id_ruta`) REFERENCES `ruta` (`id_ruta`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aprendiz`
--

LOCK TABLES `aprendiz` WRITE;
/*!40000 ALTER TABLE `aprendiz` DISABLE KEYS */;
INSERT INTO `aprendiz` VALUES (91,'Juan Pérez',4,20),(92,'María Rodríguez',5,22),(93,'Pedro Gómez',6,25),(94,'Luisa Martínez',7,21),(95,'Ana García',8,23),(96,'Carlos Sánchez',9,24),(97,'Laura Díaz',10,26),(98,'Javier López',11,22),(99,'Sofía Hernández',12,24),(100,'Andrés Ruiz',13,20),(101,'Carmen Castro',14,22),(102,'Diego Navarro',15,23),(103,'Valentina Mora',5,25),(104,'Martín Vargas',6,26),(105,'Fernanda Ríos',7,21),(106,'Ricardo Herrera',8,22),(107,'Paula Medina',9,24),(108,'Gabriel Toro',10,23),(109,'Isabela Suárez',11,22),(110,'Miguel Rueda',12,24);
/*!40000 ALTER TABLE `aprendiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrera` (
  `id_carrera` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'Desarrollo de Software'),(2,'Electrónica'),(3,'Mecánica'),(4,'Automatización'),(5,'Seguridad y Salud Ocupacional'),(6,'Soldadura'),(7,'Desarrollo de Software'),(8,'Electrónica'),(9,'Mecánica Automotriz'),(10,'Seguridad y Salud Ocupacional'),(11,'Soldadura');
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `id_curso` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `id_instructor` int DEFAULT NULL,
  PRIMARY KEY (`id_curso`),
  KEY `id_instructor` (`id_instructor`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`id_instructor`) REFERENCES `instructor` (`id_instructor`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (41,'Matemáticas Básicas',1),(42,'Álgebra Computacional',2),(43,'Programación Básica',1),(44,'Inglés',5),(45,'Electrónica Básica',6),(46,'Motor de Cuatro Tiempos',4),(47,'Enfermedades Laborales',2),(48,'Higiene Postural en el Trabajo',2),(49,'Ergonomía',3),(50,'Legislación Laboral en Colombia',NULL),(51,'Materiales de Soldadura',3),(52,'Métodos de Soldadura',3),(53,'Fusión de Metales',7),(54,'Buceo 1',9),(55,'Buceo 2',9),(56,'Riesgo Eléctrico',8),(57,'Bases de Datos Relacionales',6),(58,'Bases de Datos NO Relacionales',5),(59,'Electrónica Digital',6),(60,'Microprocesadores',6);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso_ruta`
--

DROP TABLE IF EXISTS `curso_ruta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso_ruta` (
  `id_ruta` int NOT NULL,
  `id_curso` int NOT NULL,
  KEY `id_ruta` (`id_ruta`),
  KEY `id_curso` (`id_curso`),
  CONSTRAINT `curso_ruta_ibfk_1` FOREIGN KEY (`id_ruta`) REFERENCES `ruta` (`id_ruta`),
  CONSTRAINT `curso_ruta_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_ruta`
--

LOCK TABLES `curso_ruta` WRITE;
/*!40000 ALTER TABLE `curso_ruta` DISABLE KEYS */;
INSERT INTO `curso_ruta` VALUES (4,41),(5,42),(6,43),(7,44),(8,45),(9,46),(10,47),(11,48),(12,49),(13,50),(14,51),(15,52);
/*!40000 ALTER TABLE `curso_ruta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor` (
  `id_instructor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `especialidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_instructor`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (1,'Ricardo Vicente Jaimes','Sistemas'),(2,'Marinela Narvaez','Salud Ocupacional'),(3,'Agustín Parra Granados','Soldadura'),(4,'Nelson Raúl Buitrago','Mecánica'),(5,'Roy Hernando Llamas','Inglés'),(6,'Maria Jimena Monsalve','Electrónica'),(7,'Benito Ruiz','Fusión de Metales'),(8,'Pepe Cuenca','Riesgo Eléctrico'),(9,'Jose Alvarez','Buceo');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `id_matricula` int NOT NULL AUTO_INCREMENT,
  `id_aprendiz` int DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `Estado_Matricula` enum('En Ejecución','Terminado','Cancelado') DEFAULT 'En Ejecución',
  PRIMARY KEY (`id_matricula`),
  KEY `id_estudiante` (`id_aprendiz`),
  CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`id_aprendiz`) REFERENCES `aprendiz` (`id_aprendiz`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES (1,91,'2023-01-01','2023-06-30','En Ejecución'),(2,92,'2023-02-15','2023-08-15','Terminado'),(3,93,'2023-03-20','2023-09-20','Cancelado'),(4,94,'2023-04-10','2023-10-10','En Ejecución'),(5,95,'2023-05-05','2023-11-05','En Ejecución'),(6,96,'2023-06-22','2023-12-22','Terminado'),(7,97,'2023-07-18','2024-01-18','En Ejecución'),(8,98,'2023-08-30','2024-02-29','Cancelado'),(9,99,'2023-09-14','2024-03-14','En Ejecución'),(10,100,'2023-10-03','2024-04-03','Terminado'),(11,101,'2023-11-20','2024-05-20','En Ejecución'),(12,102,'2023-12-25','2024-06-25','En Ejecución'),(13,103,'2024-01-08','2024-07-08','Cancelado'),(14,104,'2024-02-14','2024-08-14','En Ejecución'),(15,105,'2024-03-09','2024-09-09','Terminado'),(16,106,'2024-04-27','2024-10-27','En Ejecución'),(17,107,'2024-05-15','2024-11-15','En Ejecución'),(18,108,'2024-06-03','2024-12-03','Cancelado'),(19,109,'2024-07-22','2025-01-22','En Ejecución'),(20,110,'2024-08-18','2025-02-18','En Ejecución');
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruta`
--

DROP TABLE IF EXISTS `ruta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ruta` (
  `id_ruta` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `id_carrera` int DEFAULT NULL,
  PRIMARY KEY (`id_ruta`),
  KEY `id_carrera` (`id_carrera`),
  CONSTRAINT `ruta_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruta`
--

LOCK TABLES `ruta` WRITE;
/*!40000 ALTER TABLE `ruta` DISABLE KEYS */;
INSERT INTO `ruta` VALUES (4,'Sistemas de Información Empresariales',1),(5,'Videojuegos',1),(6,'Machine Learning',1),(7,'Microcontroladores',2),(8,'Robótica',2),(9,'Dispositivos Bio-médicos',2),(10,'Motores Híbridos',3),(11,'Vehículos de Uso Agrícola',3),(12,'Sistemas de Gestión en Seguridad Ocupacional',4),(13,'Soldadura Autógena Industrial',5),(14,'Soldadura Eléctrica Industrial',5),(15,'Soldadura Submarina',5);
/*!40000 ALTER TABLE `ruta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-20 22:17:09
