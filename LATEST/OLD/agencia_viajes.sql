-- MySQL dump 10.13  Distrib 8.2.0, for Win64 (x86_64)
--
-- Host: localhost    Database: agencia_viajes
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `aerolinea`
--

DROP TABLE IF EXISTS `aerolinea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aerolinea` (
  `id_aerolinea` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_aerolinea`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aerolinea`
--

LOCK TABLES `aerolinea` WRITE;
/*!40000 ALTER TABLE `aerolinea` DISABLE KEYS */;
INSERT INTO `aerolinea` VALUES (1,'VIVA AIR'),(2,'LATAM'),(3,'Avianca'),(4,'American Airlines'),(5,'Delta Air Lines'),(6,'United Airlines'),(7,'Emirates'),(8,'British Airways'),(9,'Qatar Airways'),(10,'Lufthansa'),(11,'Singapore Airlines'),(12,'Cathay Pacific'),(13,'Turkish Airlines'),(14,'Etihad Airways'),(15,'Southwest Airlines'),(16,'Ryanair'),(17,'Air France'),(18,'Qantas'),(19,'KLM Royal Dutch Airlines'),(20,'China Southern Airlines'),(21,'JetBlue Airways'),(22,'Alaska Airlines'),(23,'Air Canada'),(24,'Scandinavian Airlines'),(25,'Finnair'),(26,'Iberia'),(27,'ANA All Nippon Airways'),(28,'Japan Airlines'),(29,'EVA Air'),(30,'Virgin Atlantic'),(31,'Hawaiian Airlines'),(32,'Spirit Airlines'),(33,'Frontier Airlines'),(34,'Aeromexico'),(35,'Copa Airlines'),(36,'LATAM Airlines Group'),(37,'Azul Brazilian Airlines'),(38,'Air New Zealand'),(39,'AirAsia'),(40,'IndiGo'),(41,'Volaris'),(42,'Wizz Air'),(43,'GOL Linhas Aéreas'),(44,'Norwegian Air Shuttle'),(45,'Royal Air Maroc'),(46,'Kenya Airways'),(47,'Ethiopian Airlines'),(48,'EgyptAir'),(49,'Garuda Indonesia'),(50,'Saudia'),(51,'Turkmenistan Airlines'),(52,'Uzbekistan Airways'),(53,'Air Astana'),(54,'SriLankan Airlines'),(55,'Pakistan International Airlines'),(56,'Vietnam Airlines'),(57,'Philippine Airlines'),(58,'Malaysia Airlines'),(59,'Thai Airways'),(60,'Bangkok Airways');
/*!40000 ALTER TABLE `aerolinea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `id_ciudad` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Bucaramanga'),(2,'Bogota'),(3,'Medellin'),(4,'Cali'),(5,'Cartagena'),(6,'Santa Marta'),(7,'Pereira'),(8,'Cúcuta'),(9,'Villavicencio'),(10,'Manizales'),(11,'Pasto'),(12,'Montería'),(13,'Ibagué'),(14,'Neiva'),(15,'Barranquilla'),(16,'Armenia'),(17,'Popayán'),(18,'Sincelejo'),(19,'Tunja'),(20,'Riohacha'),(21,'Valledupar'),(22,'Quibdó'),(23,'Florencia'),(24,'Mocoa'),(25,'Puerto Carreño'),(26,'San Andrés'),(27,'Guaviare'),(28,'Mitú'),(29,'Puerto Inírida'),(30,'Leticia'),(31,'Arauca'),(32,'Yopal'),(33,'San José del Guaviare'),(34,'Buenaventura'),(35,'Quibdó'),(36,'Riohacha'),(37,'Soacha'),(38,'Soledad'),(39,'Envigado'),(40,'Tuluá'),(41,'Bello'),(42,'Buenaventura'),(43,'Palmira'),(44,'Montería'),(45,'Floridablanca'),(46,'Itagüí'),(47,'Girardot'),(48,'Fusagasugá'),(49,'Girón'),(50,'Zipaquirá'),(51,'Magangué'),(52,'Ipiales'),(53,'Rionegro'),(54,'Chía'),(55,'Turbo'),(56,'Duitama'),(57,'Maicao'),(58,'Facatativá'),(59,'Fundación');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'pepe'),(2,'Harry Potter'),(3,'Dobby'),(4,'Remus Lupin'),(5,'Minerva McGonagall'),(6,'Bellatrix Lestrange'),(7,'Cedric Diggory'),(8,'Fleur Delacour'),(9,'Arthur Weasley'),(10,'Molly Weasley'),(11,'Lucius Malfoy'),(12,'Nymphadora Tonks'),(13,'Viktor Krum'),(14,'Cho Chang'),(15,'Lavender Brown'),(16,'Parvati Patil'),(17,'Padma Patil'),(18,'Dean Thomas'),(19,'Seamus Finnigan'),(20,'Oliver Wood'),(21,'Argus Filch'),(22,'Sybill Trelawney'),(23,'Cornelius Fudge'),(24,'Madame Pomfrey'),(25,'Gilderoy Lockhart'),(26,'Kingsley Shacklebolt'),(27,'Xenophilius Lovegood'),(28,'Olympe Maxime'),(29,'Rita Skeeter'),(30,'Dolores Umbridge'),(31,'Moaning Myrtle'),(32,'Nearly Headless Nick'),(33,'Kreacher'),(34,'Mad-Eye Moody'),(35,'Barty Crouch Jr.'),(36,'Vincent Crabbe'),(37,'Gregory Goyle'),(38,'Peeves'),(39,'Aberforth Dumbledore'),(40,'Gellert Grindelwald'),(41,'Nagini'),(42,'Bellatrix Black'),(43,'Ted Tonks'),(44,'Fenrir Greyback'),(45,'Regulus Black'),(46,'Amos Diggory'),(47,'Dedalus Diggle'),(48,'Augusta Longbottom'),(49,'Rufus Scrimgeour'),(50,'Ernie Macmillan'),(51,'Justin Finch-Fletchley'),(52,'Zacharias Smith'),(53,'Colin Creevey'),(54,'Cormac McLaggen'),(55,'Marcus Flint'),(56,'Adrian Pucey'),(57,'Penelope Clearwater'),(58,'Alicia Spinnet'),(59,'Angelina Johnson'),(60,'Katie Bell');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coches`
--

DROP TABLE IF EXISTS `coches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coches` (
  `id_coches` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `fecha_recogida` date NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `id_empresa` int DEFAULT NULL,
  `id_reserva` int DEFAULT NULL,
  PRIMARY KEY (`id_coches`),
  KEY `id_empresa` (`id_empresa`),
  KEY `id_reserv` (`id_reserva`),
  CONSTRAINT `id_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`),
  CONSTRAINT `id_reserv` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id_reserva`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coches`
--

LOCK TABLES `coches` WRITE;
/*!40000 ALTER TABLE `coches` DISABLE KEYS */;
INSERT INTO `coches` VALUES (1,'SPARK GT','2019','2023-11-26','2023-12-28',1,2),(2,'SPARK GT','2019','2023-11-26','2023-12-28',1,2),(3,'NISSAN SENTRA','2020','2024-01-10','2024-01-20',2,3),(4,'TOYOTA COROLLA','2021','2024-02-15','2024-03-01',3,4),(5,'HONDA CIVIC','2022','2024-04-05','2024-04-15',4,5),(6,'FORD MUSTANG','2023','2024-05-20','2024-05-30',5,6),(7,'CHEVROLET CAMARO','2024','2024-06-25','2024-07-05',6,7),(8,'VOLKSWAGEN JETTA','2025','2024-08-10','2024-08-20',7,8),(9,'BMW 3 SERIES','2026','2024-09-15','2024-09-25',8,9),(10,'MERCEDES-BENZ C CLASS','2027','2024-10-30','2024-11-10',9,10),(11,'AUDI A4','2028','2024-12-05','2025-01-05',10,11),(12,'TESLA MODEL 3','2029','2025-02-20','2025-03-01',11,12),(13,'HYUNDAI ELANTRA','2030','2025-04-10','2025-04-20',12,13),(14,'KIA FORTE','2031','2025-05-25','2025-06-05',13,14),(15,'MAZDA 3','2032','2025-07-10','2025-07-20',14,15),(16,'SUBARU IMPREZA','2033','2025-08-15','2025-08-25',15,16),(17,'JEEP WRANGLER','2034','2025-09-30','2025-10-10',16,17),(18,'TOYOTA RAV4','2035','2025-11-05','2025-11-15',17,18),(19,'NISSAN ROGUE','2036','2025-12-20','2026-01-05',18,19),(20,'HONDA CR-V','2037','2026-02-25','2026-03-05',19,20),(21,'FORD ESCAPE','2038','2026-04-10','2026-04-20',20,21),(22,'CHEVROLET EQUINOX','2039','2026-05-15','2026-05-25',21,22),(23,'VOLKSWAGEN TIGUAN','2040','2026-06-30','2026-07-10',22,23),(24,'BMW X3','2041','2026-08-05','2026-08-15',23,24),(25,'MERCEDES-BENZ GLC','2042','2026-09-20','2026-09-30',24,25),(26,'AUDI Q5','2043','2026-10-25','2026-11-04',25,26),(27,'TESLA MODEL Y','2044','2026-12-10','2027-01-10',26,27),(28,'HYUNDAI TUCSON','2045','2027-02-15','2027-03-01',27,28),(29,'KIA SPORTAGE','2046','2027-04-05','2027-04-15',28,29),(30,'MAZDA CX-5','2047','2027-05-20','2027-05-30',29,30),(31,'SUBARU FORESTER','2048','2027-06-25','2027-07-05',30,31),(32,'JEEP CHEROKEE','2049','2027-08-10','2027-08-20',31,32),(33,'TOYOTA HIGHLANDER','2050','2027-09-15','2027-09-25',32,33),(34,'NISSAN PATHFINDER','2051','2027-10-30','2027-11-10',33,34),(35,'HONDA PILOT','2052','2027-12-05','2028-01-05',34,35),(36,'FORD EXPLORER','2053','2028-02-20','2028-03-01',35,36),(37,'CHEVROLET TRAVERSE','2054','2028-04-10','2028-04-20',36,37),(38,'VOLKSWAGEN ATLAS','2055','2028-05-25','2028-06-05',37,38),(39,'BMW X5','2056','2028-07-10','2028-07-20',38,39),(40,'MERCEDES-BENZ GLE','2057','2028-08-15','2028-08-25',39,40),(41,'AUDI Q7','2058','2028-09-30','2028-10-10',40,41),(42,'TESLA MODEL X','2059','2028-11-05','2028-11-15',41,42),(43,'HYUNDAI PALISADE','2060','2028-12-20','2029-01-05',42,43),(44,'KIA TELLURIDE','2061','2029-02-25','2029-03-05',43,44),(45,'MAZDA CX-9','2062','2029-04-10','2029-04-20',44,45),(46,'SUBARU ASCENT','2063','2029-05-15','2029-05-25',45,46),(47,'JEEP GRAND CHEROKEE','2064','2029-06-30','2029-07-10',46,47),(48,'TOYOTA 4RUNNER','2065','2029-08-05','2029-08-15',47,48),(49,'NISSAN ARMADA','2066','2029-09-20','2029-09-30',48,49),(50,'HONDA PASSPORT','2067','2029-10-25','2029-11-04',49,50),(51,'FORD BRONCO','2068','2029-12-10','2030-01-10',50,51),(52,'CHEVROLET BLAZER','2069','2030-02-15','2030-03-01',51,52),(53,'VOLKSWAGEN TAUAREG','2070','2030-04-05','2030-04-15',52,53),(54,'BMW X7','2071','2030-05-20','2030-05-30',53,54),(55,'MERCEDES-BENZ GLS','2072','2030-06-25','2030-07-05',54,55),(56,'AUDI Q8','2073','2030-08-10','2030-08-20',55,56),(57,'TESLA MODEL S','2074','2030-09-15','2030-09-25',56,57),(58,'HYUNDAI SANTA FE','2075','2030-10-30','2030-11-10',57,58),(59,'KIA SORENTO','2076','2030-12-05','2031-01-05',58,59),(60,'MAZDA CX-30','2077','2031-02-20','2031-03-01',59,60);
/*!40000 ALTER TABLE `coches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `nombre` varchar(50) NOT NULL,
  `id_empresa` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES ('FEDEGAN',1),('Asus',2),('Microsoft',3),('Apple',4),('Samsung',5),('Sony',6),('LG',7),('Google',8),('Amazon',9),('Facebook',10),('Twitter',11),('Intel',12),('IBM',13),('HP',14),('Dell',15),('Oracle',16),('Nvidia',17),('Cisco',18),('Panasonic',19),('Philips',20),('Lenovo',21),('Acer',22),('Toshiba',23),('Xiaomi',24),('Huawei',25),('Hitachi',26),('Qualcomm',27),('Adobe',28),('WhatsApp',29),('Uber',30),('Airbnb',31),('Netflix',32),('PayPal',33),('Spotify',34),('Tesla',35),('SpaceX',36),('LinkedIn',37),('Reddit',38),('Dropbox',39),('Ebay',40),('Pinterest',41),('Snapchat',42),('Zoom',43),('Slack',44),('Etsy',45),('Vimeo',46),('Flickr',47),('Wikipedia',48),('Groupon',49),('Alibaba',50),('Shopify',51),('Mozilla',52),('Pandora',53),('TikTok',54),('Zillow',55),('Yelp',56),('StubHub',57),('Eventbrite',58),('Zynga',59),('Giphy',60);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `id_hotel` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `tipo_habitacion` varchar(50) NOT NULL,
  `fecha_check_in` date NOT NULL,
  `fecha_check_out` date NOT NULL,
  `id_reserva` int DEFAULT NULL,
  PRIMARY KEY (`id_hotel`),
  KEY `id_reserva_hotel` (`id_reserva`),
  CONSTRAINT `id_reserva_hotel` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id_reserva`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'HILTON','1','2024-12-12','2024-12-16',1),(2,'HILTON','1','2023-12-01','2023-12-04',1),(3,'HILTON','1','2024-12-12','2024-12-16',1),(4,'HILTON','1','2023-12-01','2023-12-04',1),(5,'HILTON','1','2023-12-15','2023-12-20',2),(6,'MARINA','2','2024-01-05','2024-01-10',3),(7,'WESTIN','3','2023-11-20','2023-11-25',4),(8,'SHERATON','4','2024-02-08','2024-02-12',5),(9,'RADISSON','5','2024-03-15','2024-03-18',6),(10,'MARRIOTT','1','2024-04-22','2024-04-27',7),(11,'HOLIDAY INN','2','2024-05-10','2024-05-15',8),(12,'IBIS','3','2024-06-28','2024-07-03',9),(13,'ACCOR','4','2024-08-14','2024-08-18',10),(14,'NOVOTEL','5','2024-09-19','2024-09-23',11),(15,'FOUR SEASONS','1','2024-10-25','2024-10-30',12),(16,'INTERCONTINENTAL','2','2024-11-18','2024-11-22',13),(17,'WALDORF ASTORIA','3','2024-12-20','2024-12-24',14),(18,'PARK HYATT','4','2023-12-28','2024-01-02',15),(19,'OMNI','5','2024-02-02','2024-02-06',16),(20,'HYATT REGENCY','1','2024-03-12','2024-03-16',17),(21,'MGM GRAND','2','2024-04-08','2024-04-12',18),(22,'VENETIAN','3','2024-05-27','2024-05-31',19),(23,'CAESARS PALACE','4','2024-06-14','2024-06-18',20),(24,'WYNN','5','2024-07-10','2024-07-14',21),(25,'MANDALAY BAY','1','2024-08-26','2024-08-30',22),(26,'COSMOPOLITAN','2','2024-09-30','2024-10-04',23),(27,'BELLAGIO','3','2024-11-05','2024-11-09',24),(28,'ENCORE','4','2024-12-01','2024-12-05',25),(29,'PALAZZO','5','2023-12-06','2023-12-10',26),(30,'PARIS','1','2024-01-14','2024-01-18',27),(31,'PLANET HOLLYWOOD','2','2024-02-20','2024-02-24',28),(32,'FLAMINGO','3','2024-03-25','2024-03-29',29),(33,'THE LINQ','4','2024-04-29','2024-05-03',30),(34,'HARRAH\'S','5','2024-06-06','2024-06-10',31),(35,'GOLDEN NUGGET','1','2024-07-16','2024-07-20',32),(36,'THE D','2','2024-08-12','2024-08-16',33),(37,'BINION\'S','3','2024-09-18','2024-09-22',34),(38,'FREMONT','4','2024-10-24','2024-10-28',35),(39,'CALIFORNIA','5','2024-11-30','2024-12-04',36),(40,'MAIN STREET STATION','1','2023-12-05','2023-12-09',37),(41,'EL CORTEZ','2','2024-01-11','2024-01-15',38),(42,'THE ORLEANS','3','2024-02-17','2024-02-21',39),(43,'PALMS','4','2024-03-23','2024-03-27',40),(44,'RED ROCK','5','2024-04-28','2024-05-02',41),(45,'GREEN VALLEY RANCH','1','2024-06-04','2024-06-08',42),(46,'SUNCOAST','2','2024-07-10','2024-07-14',43),(47,'SOUTH POINT','3','2024-08-15','2024-08-19',44),(48,'M RESORT','4','2024-09-21','2024-09-25',45),(49,'GOLD COAST','5','2024-10-27','2024-10-31',46),(50,'STATION CASINOS','1','2024-12-02','2024-12-06',47),(51,'WESTGATE','2','2023-12-08','2023-12-12',48),(52,'CIRCUS CIRCUS','3','2024-01-14','2024-01-18',49),(53,'TI','4','2024-02-20','2024-02-24',50),(54,'THE PALAZZO','5','2024-03-27','2024-03-31',51),(55,'THE SIGNATURE','1','2024-05-02','2024-05-06',52),(56,'VDARA','2','2024-06-09','2024-06-13',53),(57,'PALMS PLACE','3','2024-07-15','2024-07-19',54),(58,'NOBU HOTEL','4','2024-08-21','2024-08-25',55),(59,'WALDORF ASTORIA','5','2024-09-27','2024-10-01',56),(60,'FOUR SEASONS','1','2024-11-02','2024-11-06',57),(61,'DELANO','2','2024-12-08','2024-12-12',58),(62,'MANDARIN ORIENTAL','3','2023-12-14','2023-12-18',59),(63,'THE COSMOPOLITAN','4','2024-01-20','2024-01-24',60),(64,'THE VENETIAN','5','2024-02-25','2024-02-29',61);
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `id_reserva` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `id_cliente` int DEFAULT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,'Convencion empresarial',1),(2,'Excursion',2),(3,'Convención empresarial',1),(4,'Excursión en la playa',2),(5,'Visita a museo local',3),(6,'Tour gastronómico',4),(7,'Viaje de aventura',5),(8,'Retiro espiritual',6),(9,'Tour histórico',7),(10,'Taller de fotografía',8),(11,'Curso de cocina',9),(12,'Ruta de senderismo',10),(13,'Visita a viñedos',11),(14,'Clases de surf',12),(15,'Paseo en globo aerostático',13),(16,'Día de spa',14),(17,'Excursión en bicicleta',15),(18,'Tour arquitectónico',16),(19,'Visita a parque nacional',17),(20,'Curso de buceo',18),(21,'Viaje en kayak',19),(22,'Retiro de yoga',20),(23,'Recorrido en tren panorámico',21),(24,'Taller de pintura al óleo',22),(25,'Curso de idiomas',23),(26,'Camping en la montaña',24),(27,'Tour de avistamiento de aves',25),(28,'Cata de vinos',26),(29,'Tour en helicóptero',27),(30,'Excursión de pesca',28),(31,'Visita a jardín botánico',29),(32,'Taller de artesanía',30),(33,'Recorrido en barco',31),(34,'Curso de música',32),(35,'Paseo a caballo',33),(36,'Taller de teatro',34),(37,'Ruta fotográfica',35),(38,'Tour en quad',36),(39,'Visita a reserva natural',37),(40,'Día de rafting',38),(41,'Tour en moto',39),(42,'Clases de baile',40),(43,'Recorrido en autobús turístico',41),(44,'Tour de arqueología',42),(45,'Curso de meditación',43),(46,'Excursión en 4x4',44),(47,'Visita a cascada',45),(48,'Tour de observación de estrellas',46),(49,'Visita a granja local',47),(50,'Ruta fotográfica nocturna',48),(51,'Curso de jardinería',49),(52,'Paseo en barco de vela',50),(53,'Recorrido en tranvía',51),(54,'Curso de escritura creativa',52),(55,'Tour de geología',53),(56,'Taller de escultura',54),(57,'Excursión en globo aerostático',55),(58,'Visita a cuevas',56),(59,'Taller de cerámica',57),(60,'Día de espeleología',58),(61,'Tour de astronomía',59),(62,'Ruta de fotografía urbana',60);
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vuelos`
--

DROP TABLE IF EXISTS `vuelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vuelos` (
  `id_vuelo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `num_vuelo` char(6) NOT NULL,
  `fecha` date NOT NULL,
  `hora_entrada` datetime NOT NULL,
  `hora_salida` datetime NOT NULL,
  `id_origen` int NOT NULL,
  `id_aerolinea` int NOT NULL,
  `id_destino` int NOT NULL,
  `id_reserva` int NOT NULL,
  PRIMARY KEY (`id_vuelo`),
  KEY `id_origen` (`id_origen`),
  KEY `id_aerolinea` (`id_aerolinea`),
  KEY `id_destino` (`id_destino`),
  KEY `id_reserva` (`id_reserva`),
  CONSTRAINT `id_aerolinea` FOREIGN KEY (`id_aerolinea`) REFERENCES `aerolinea` (`id_aerolinea`),
  CONSTRAINT `id_destino` FOREIGN KEY (`id_destino`) REFERENCES `ciudad` (`id_ciudad`),
  CONSTRAINT `id_origen` FOREIGN KEY (`id_origen`) REFERENCES `ciudad` (`id_ciudad`),
  CONSTRAINT `id_reserva` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id_reserva`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vuelos`
--

LOCK TABLES `vuelos` WRITE;
/*!40000 ALTER TABLE `vuelos` DISABLE KEYS */;
INSERT INTO `vuelos` VALUES (1,'GTA-44X','1','2023-12-24','2023-12-24 15:30:00','2023-12-24 16:30:00',2,2,1,1),(2,'GTA-44X','2231','2023-12-24','2023-12-24 15:30:00','2023-12-24 16:30:00',1,1,2,2),(3,'Vuelo 1','1001','2023-12-25','2023-12-25 08:00:00','2023-12-25 10:00:00',1,1,2,1),(4,'Vuelo 2','1002','2023-12-26','2023-12-26 09:30:00','2023-12-26 11:30:00',2,2,1,2),(5,'Vuelo 3','1003','2023-12-27','2023-12-27 11:00:00','2023-12-27 13:00:00',3,3,4,3),(6,'Vuelo 4','1004','2023-12-28','2023-12-28 13:30:00','2023-12-28 15:30:00',4,4,3,4),(7,'Vuelo 58','1058','2024-01-20','2024-01-20 17:00:00','2024-01-20 19:00:00',14,2,15,58),(8,'Vuelo 59','1059','2024-01-21','2024-01-21 18:30:00','2024-01-21 20:30:00',15,3,16,59),(9,'Vuelo 60','1060','2024-01-22','2024-01-22 20:00:00','2024-01-22 22:00:00',16,4,17,60);
/*!40000 ALTER TABLE `vuelos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-27 19:53:26
