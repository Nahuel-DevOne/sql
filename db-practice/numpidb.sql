-- MariaDB dump 10.19  Distrib 10.11.4-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: numpidb
-- ------------------------------------------------------
-- Server version	10.11.4-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `apellido` varchar(200) DEFAULT NULL,
  `documento` varchar(20) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `seccion_id` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seccion_id` (`seccion_id`),
  KEY `documento` (`documento`),
  KEY `nombre` (`nombre`(4)),
  FULLTEXT KEY `apellido` (`apellido`),
  CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`seccion_id`) REFERENCES `secciones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
INSERT INTO `estudiantes` VALUES
(1,'andres','vasquez',NULL,28,'A'),
(2,'rosita','chavez',NULL,22,'B'),
(3,'juan','gomez',NULL,28,NULL),
(4,'andrea','buitrago',NULL,27,'B'),
(5,'camilo','guevara',NULL,24,'C'),
(6,'jose','gonzales',NULL,23,'A'),
(7,'maria','marin',NULL,25,'A'),
(8,'andres','marin',NULL,22,'C'),
(9,'pablo','guevara',NULL,23,NULL),
(10,'andrea','sanchez',NULL,21,'B'),
(11,'camilo','castro',NULL,27,'B'),
(12,'juan','fuentes',NULL,23,'A'),
(13,'sofia','osorio',NULL,24,'C'),
(14,'jose','moreno',NULL,25,'B'),
(15,'ana','osorio',NULL,22,'A'),
(16,'samuel','pablo',NULL,21,NULL);
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imc`
--

DROP TABLE IF EXISTS `imc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imc` (
  `edad` int(11) DEFAULT NULL,
  `sexo` varchar(6) DEFAULT NULL,
  `imc` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imc`
--

LOCK TABLES `imc` WRITE;
/*!40000 ALTER TABLE `imc` DISABLE KEYS */;
INSERT INTO `imc` VALUES
(19,'female',27.9),
(18,'male',33.77),
(28,'male',33),
(33,'male',22.705),
(32,'male',28.88),
(31,'female',25.74),
(46,'female',33.44),
(37,'female',27.74),
(37,'male',29.83),
(60,'female',25.84),
(25,'male',26.22),
(62,'female',26.29),
(23,'male',34.4),
(56,'female',39.82),
(27,'male',42.13),
(19,'male',24.6),
(52,'female',30.78),
(23,'male',23.845),
(56,'male',40.3),
(30,'male',35.3),
(60,'female',36.005),
(30,'female',32.4),
(18,'male',34.1),
(34,'female',31.92),
(37,'male',28.025),
(59,'female',27.72),
(63,'female',23.085),
(55,'female',32.775),
(23,'male',17.385),
(31,'male',36.3),
(22,'male',35.6),
(18,'female',26.315),
(19,'female',28.6),
(63,'male',28.31),
(28,'male',36.4),
(19,'male',20.425),
(62,'female',32.965),
(26,'male',20.8),
(35,'male',36.67),
(60,'male',39.9),
(24,'female',26.6),
(31,'female',36.63),
(41,'male',21.78),
(37,'female',30.8),
(38,'male',37.05),
(55,'male',37.3),
(18,'female',38.665),
(28,'female',34.77),
(60,'female',24.53),
(36,'male',35.2),
(18,'female',35.625),
(21,'female',33.63),
(48,'male',28),
(36,'male',34.43),
(40,'female',28.69),
(58,'male',36.955),
(58,'female',31.825),
(18,'male',31.68),
(53,'female',22.88),
(34,'female',37.335),
(43,'male',27.36),
(25,'male',33.66),
(64,'male',24.7),
(28,'female',25.935),
(20,'female',22.42),
(19,'female',28.9),
(61,'female',39.1),
(40,'male',26.315),
(40,'female',36.19),
(28,'male',23.98),
(27,'female',24.75),
(31,'male',28.5),
(53,'female',28.1),
(58,'male',32.01),
(44,'male',27.4),
(57,'male',34.01),
(29,'female',29.59),
(21,'male',35.53),
(22,'female',39.805),
(41,'female',32.965),
(31,'male',26.885),
(45,'female',38.285),
(22,'male',37.62),
(48,'female',41.23),
(37,'female',34.8),
(45,'male',22.895),
(57,'female',31.16),
(56,'female',27.2),
(46,'female',27.74),
(55,'female',26.98),
(21,'female',39.49),
(53,'female',24.795),
(59,'male',29.83),
(35,'male',34.77),
(64,'female',31.3),
(28,'female',37.62),
(54,'female',30.8),
(55,'male',38.28),
(56,'male',19.95),
(38,'male',19.3),
(41,'female',31.6),
(30,'male',25.46),
(18,'female',30.115),
(61,'female',29.92),
(34,'female',27.5),
(20,'male',28.025),
(19,'female',28.4),
(26,'male',30.875),
(29,'male',27.94),
(63,'male',35.09),
(54,'male',33.63),
(55,'female',29.7),
(37,'male',30.8),
(21,'female',35.72),
(52,'male',32.205),
(60,'male',28.595),
(58,'male',49.06),
(29,'female',27.94),
(49,'female',27.17),
(37,'female',23.37),
(44,'male',37.1),
(18,'male',23.75),
(20,'female',28.975),
(44,'male',31.35),
(47,'female',33.915),
(26,'female',28.785),
(19,'female',28.3),
(52,'female',37.4),
(32,'female',17.765),
(38,'male',34.7),
(59,'female',26.505),
(61,'female',22.04),
(53,'female',35.9),
(19,'male',25.555),
(20,'female',28.785),
(22,'female',28.05),
(19,'male',34.1),
(22,'male',25.175),
(54,'female',31.9),
(22,'female',36),
(34,'male',22.42),
(26,'male',32.49),
(34,'male',25.3),
(29,'male',29.735),
(30,'male',28.69),
(29,'female',38.83),
(46,'male',30.495),
(51,'female',37.73),
(53,'female',37.43),
(19,'male',28.4),
(35,'male',24.13),
(48,'male',29.7),
(32,'female',37.145),
(42,'female',23.37),
(40,'female',25.46),
(44,'male',39.52),
(48,'male',24.42),
(18,'male',25.175),
(30,'male',35.53),
(50,'female',27.83),
(42,'female',26.6),
(18,'female',36.85),
(54,'male',39.6),
(32,'female',29.8),
(37,'male',29.64),
(47,'male',28.215),
(20,'female',37),
(32,'female',33.155),
(19,'female',31.825),
(27,'male',18.905),
(63,'male',41.47),
(49,'male',30.3),
(18,'male',15.96),
(35,'female',34.8),
(24,'female',33.345),
(63,'female',37.7),
(38,'male',27.835),
(54,'male',29.2),
(46,'female',28.9),
(41,'female',33.155),
(58,'male',28.595),
(18,'female',38.28),
(22,'male',19.95),
(44,'female',26.41),
(44,'male',30.69),
(36,'male',41.895),
(26,'female',29.92),
(30,'female',30.9),
(41,'female',32.2),
(29,'female',32.11),
(61,'male',31.57),
(36,'female',26.2),
(25,'male',25.74),
(56,'female',26.6),
(18,'male',34.43),
(19,'male',30.59),
(39,'female',32.8),
(45,'female',28.6),
(51,'female',18.05),
(64,'female',39.33),
(19,'female',32.11),
(48,'female',32.23),
(60,'female',24.035),
(27,'female',36.08),
(46,'male',22.3),
(28,'female',28.88),
(59,'male',26.4),
(35,'male',27.74),
(63,'female',31.8),
(40,'male',41.23),
(20,'male',33),
(40,'male',30.875),
(24,'male',28.5),
(34,'female',26.73),
(45,'female',30.9),
(41,'female',37.1),
(53,'female',26.6),
(27,'male',23.1),
(26,'female',29.92),
(24,'female',23.21),
(34,'female',33.7),
(53,'female',33.25),
(32,'male',30.8),
(19,'male',34.8),
(42,'male',24.64),
(55,'male',33.88),
(28,'male',38.06),
(58,'female',41.91),
(41,'female',31.635),
(47,'male',25.46),
(42,'female',36.195),
(59,'female',27.83),
(19,'female',17.8),
(59,'male',27.5),
(39,'male',24.51),
(40,'female',22.22),
(18,'female',26.73),
(31,'male',38.39),
(19,'male',29.07),
(44,'male',38.06),
(23,'female',36.67),
(33,'female',22.135),
(55,'female',26.8),
(40,'male',35.3),
(63,'female',27.74),
(54,'male',30.02),
(60,'female',38.06),
(24,'male',35.86),
(19,'male',20.9),
(29,'male',28.975),
(18,'male',17.29),
(63,'female',32.2),
(54,'male',34.21),
(27,'male',30.3),
(50,'male',31.825),
(55,'female',25.365),
(56,'male',33.63),
(38,'female',40.15),
(51,'male',24.415),
(19,'male',31.92),
(58,'female',25.2),
(20,'female',26.84),
(52,'male',24.32),
(19,'male',36.955),
(53,'female',38.06),
(46,'male',42.35),
(40,'male',19.8),
(59,'female',32.395),
(45,'male',30.2),
(49,'male',25.84),
(18,'male',29.37),
(50,'male',34.2),
(41,'male',37.05),
(50,'male',27.455),
(25,'male',27.55),
(47,'female',26.6),
(19,'male',20.615),
(22,'female',24.3),
(59,'male',31.79),
(51,'female',21.56),
(40,'female',28.12),
(54,'male',40.565),
(30,'male',27.645),
(55,'female',32.395),
(52,'female',31.2),
(46,'male',26.62),
(46,'female',48.07),
(63,'female',26.22),
(59,'female',36.765),
(52,'male',26.4),
(28,'female',33.4),
(29,'male',29.64),
(25,'male',45.54),
(22,'female',28.82),
(25,'male',26.8),
(18,'male',22.99),
(19,'male',27.7),
(47,'male',25.41),
(31,'male',34.39),
(48,'female',28.88),
(36,'male',27.55),
(53,'female',22.61),
(56,'female',37.51),
(28,'female',33),
(57,'female',38),
(29,'male',33.345),
(28,'female',27.5),
(30,'female',33.33),
(58,'male',34.865),
(41,'female',33.06),
(50,'male',26.6),
(19,'female',24.7),
(43,'male',35.97),
(49,'male',35.86),
(27,'female',31.4),
(52,'male',33.25),
(50,'male',32.205),
(54,'male',32.775),
(44,'female',27.645),
(32,'male',37.335),
(34,'male',25.27),
(26,'female',29.64),
(34,'male',30.8),
(57,'male',40.945),
(29,'male',27.2),
(40,'male',34.105),
(27,'female',23.21),
(45,'male',36.48),
(64,'female',33.8),
(52,'male',36.7),
(61,'female',36.385),
(52,'male',27.36),
(61,'female',31.16),
(56,'female',28.785),
(43,'female',35.72),
(64,'male',34.5),
(60,'male',25.74),
(62,'male',27.55),
(50,'male',32.3),
(46,'female',27.72),
(24,'female',27.6),
(62,'male',30.02),
(60,'female',27.55),
(63,'male',36.765),
(49,'female',41.47),
(34,'female',29.26),
(33,'male',35.75),
(46,'male',33.345),
(36,'female',29.92),
(19,'male',27.835),
(57,'female',23.18),
(50,'female',25.6),
(30,'female',27.7),
(33,'male',35.245),
(18,'female',38.28),
(46,'male',27.6),
(46,'male',43.89),
(47,'male',29.83),
(23,'male',41.91),
(18,'female',20.79),
(48,'female',32.3),
(35,'male',30.5),
(19,'female',21.7),
(21,'female',26.4),
(21,'female',21.89),
(49,'female',30.78),
(56,'female',32.3),
(42,'female',24.985),
(44,'male',32.015),
(18,'male',30.4),
(61,'female',21.09),
(57,'female',22.23),
(42,'female',33.155),
(26,'male',32.9),
(20,'male',33.33),
(23,'female',28.31),
(39,'female',24.89),
(24,'male',40.15),
(64,'female',30.115),
(62,'male',31.46),
(27,'female',17.955),
(55,'male',30.685),
(55,'male',33),
(35,'female',43.34),
(44,'male',22.135),
(19,'male',34.4),
(58,'female',39.05),
(50,'male',25.365),
(26,'female',22.61),
(24,'female',30.21),
(48,'male',35.625),
(19,'female',37.43),
(48,'male',31.445),
(49,'male',31.35),
(46,'female',32.3),
(46,'male',19.855),
(43,'female',34.4),
(21,'male',31.02),
(64,'male',25.6),
(18,'female',38.17),
(51,'female',20.6),
(47,'male',47.52),
(64,'female',32.965),
(49,'male',32.3),
(31,'male',20.4),
(52,'female',38.38),
(33,'female',24.31),
(47,'female',23.6),
(38,'male',21.12),
(32,'male',30.03),
(19,'male',17.48),
(44,'female',20.235),
(26,'female',17.195),
(25,'male',23.9),
(19,'female',35.15),
(43,'female',35.64),
(52,'male',34.1),
(36,'female',22.6),
(64,'male',39.16),
(63,'female',26.98),
(64,'male',33.88),
(61,'male',35.86),
(40,'male',32.775),
(25,'male',30.59),
(48,'male',30.2),
(45,'male',24.31),
(38,'female',27.265),
(18,'female',29.165),
(21,'female',16.815),
(27,'female',30.4),
(19,'male',33.1),
(29,'female',20.235),
(42,'male',26.9),
(60,'female',30.5),
(31,'male',28.595),
(60,'male',33.11),
(22,'male',31.73),
(35,'male',28.9),
(52,'female',46.75),
(26,'male',29.45),
(31,'female',32.68),
(33,'female',33.5),
(18,'male',43.01),
(59,'female',36.52),
(56,'male',26.695),
(45,'female',33.1),
(60,'male',29.64),
(56,'female',25.65),
(40,'female',29.6),
(35,'male',38.6),
(39,'male',29.6),
(30,'male',24.13),
(24,'male',23.4),
(20,'male',29.735),
(32,'male',46.53),
(59,'male',37.4),
(55,'female',30.14),
(57,'female',30.495),
(56,'male',39.6),
(40,'female',33),
(49,'female',36.63),
(42,'male',30),
(62,'female',38.095),
(56,'male',25.935),
(19,'male',25.175),
(30,'female',28.38),
(60,'female',28.7),
(56,'female',33.82),
(28,'female',24.32),
(18,'female',24.09),
(27,'male',32.67),
(18,'female',30.115),
(19,'female',29.8),
(47,'female',33.345),
(54,'male',25.1),
(61,'male',28.31),
(24,'male',28.5),
(25,'male',35.625),
(21,'male',36.85),
(23,'male',32.56),
(63,'male',41.325),
(49,'male',37.51),
(18,'female',31.35),
(51,'female',39.5),
(48,'male',34.3),
(31,'female',31.065),
(54,'female',21.47),
(19,'male',28.7),
(44,'female',38.06),
(53,'male',31.16),
(19,'female',32.9),
(61,'female',25.08),
(18,'female',25.08),
(61,'male',43.4),
(21,'male',25.7),
(20,'male',27.93),
(31,'female',23.6),
(45,'male',28.7),
(44,'female',23.98),
(62,'female',39.2),
(29,'male',34.4),
(43,'male',26.03),
(51,'male',23.21),
(19,'male',30.25),
(38,'female',28.93),
(37,'male',30.875),
(22,'male',31.35),
(21,'male',23.75),
(24,'female',25.27),
(57,'female',28.7),
(56,'male',32.11),
(27,'male',33.66),
(51,'male',22.42),
(19,'male',30.4),
(39,'male',28.3),
(58,'male',35.7),
(20,'male',35.31),
(45,'male',30.495),
(35,'female',31),
(31,'male',30.875),
(50,'female',27.36),
(32,'female',44.22),
(51,'female',33.915),
(38,'female',37.73),
(42,'male',26.07),
(18,'female',33.88),
(19,'female',30.59),
(51,'female',25.8),
(46,'male',39.425),
(18,'male',25.46),
(57,'male',42.13),
(62,'female',31.73),
(59,'male',29.7),
(37,'male',36.19),
(64,'male',40.48),
(38,'male',28.025),
(33,'female',38.9),
(46,'female',30.2),
(46,'female',28.05),
(53,'male',31.35),
(34,'female',38),
(20,'female',31.79),
(63,'female',36.3),
(54,'female',47.41),
(54,'male',30.21),
(49,'male',25.84),
(28,'male',35.435),
(54,'female',46.7),
(25,'female',28.595),
(43,'female',46.2),
(63,'male',30.8),
(32,'female',28.93),
(62,'male',21.4),
(52,'female',31.73),
(25,'female',41.325),
(28,'male',23.8),
(46,'male',33.44),
(34,'male',34.21),
(35,'female',34.105),
(19,'male',35.53),
(46,'female',19.95),
(54,'female',32.68),
(27,'male',30.5),
(50,'male',44.77),
(18,'female',32.12),
(19,'female',30.495),
(38,'female',40.565),
(41,'male',30.59),
(49,'female',31.9),
(48,'male',40.565),
(31,'female',29.1),
(18,'female',37.29),
(30,'female',43.12),
(62,'female',36.86),
(57,'female',34.295),
(58,'female',27.17),
(22,'male',26.84),
(31,'female',38.095),
(52,'male',30.2),
(25,'female',23.465),
(59,'male',25.46),
(19,'male',30.59),
(39,'male',45.43),
(32,'female',23.65),
(19,'male',20.7),
(33,'female',28.27),
(21,'male',20.235),
(34,'female',30.21),
(61,'female',35.91),
(38,'female',30.69),
(58,'female',29),
(47,'male',19.57),
(20,'male',31.13),
(21,'female',21.85),
(41,'male',40.26),
(46,'female',33.725),
(42,'female',29.48),
(34,'female',33.25),
(43,'male',32.6),
(52,'female',37.525),
(18,'female',39.16),
(51,'male',31.635),
(56,'female',25.3),
(64,'female',39.05),
(19,'female',28.31),
(51,'female',34.1),
(27,'female',25.175),
(59,'female',23.655),
(28,'male',26.98),
(30,'male',37.8),
(47,'female',29.37),
(38,'female',34.8),
(18,'female',33.155),
(34,'female',19),
(20,'female',33),
(47,'female',36.63),
(56,'female',28.595),
(49,'male',25.6),
(19,'female',33.11),
(55,'female',37.1),
(30,'male',31.4),
(37,'male',34.1),
(49,'female',21.3),
(18,'male',33.535),
(59,'male',28.785),
(29,'female',26.03),
(36,'male',28.88),
(33,'male',42.46),
(58,'male',38),
(44,'female',38.95),
(53,'male',36.1),
(24,'male',29.3),
(29,'female',35.53),
(40,'male',22.705),
(51,'male',39.7),
(64,'male',38.19),
(19,'female',24.51),
(35,'female',38.095),
(39,'male',26.41),
(56,'male',33.66),
(33,'male',42.4),
(42,'male',28.31),
(61,'male',33.915),
(23,'female',34.96),
(43,'male',35.31),
(48,'male',30.78),
(39,'male',26.22),
(40,'female',23.37),
(18,'male',28.5),
(58,'female',32.965),
(49,'female',42.68),
(53,'female',39.6),
(48,'female',31.13),
(45,'female',36.3),
(59,'female',35.2),
(52,'female',25.3),
(26,'female',42.4),
(27,'male',33.155),
(48,'female',35.91),
(57,'female',28.785),
(37,'male',46.53),
(57,'female',23.98),
(32,'female',31.54),
(18,'male',33.66),
(64,'female',22.99),
(43,'male',38.06),
(49,'male',28.7),
(40,'female',32.775),
(62,'male',32.015),
(40,'female',29.81),
(30,'male',31.57),
(29,'female',31.16),
(36,'male',29.7),
(41,'female',31.02),
(44,'female',43.89),
(45,'male',21.375),
(55,'female',40.81),
(60,'male',31.35),
(56,'male',36.1),
(49,'female',23.18),
(21,'female',17.4),
(19,'male',20.3),
(39,'male',35.3),
(53,'male',24.32),
(33,'female',18.5),
(53,'male',26.41),
(42,'male',26.125),
(40,'male',41.69),
(47,'female',24.1),
(27,'male',31.13),
(21,'male',27.36),
(47,'male',36.2),
(20,'male',32.395),
(24,'male',23.655),
(27,'female',34.8),
(26,'female',40.185),
(53,'female',32.3),
(41,'male',35.75),
(56,'male',33.725),
(23,'female',39.27),
(21,'female',34.87),
(50,'female',44.745),
(53,'male',41.47),
(34,'female',26.41),
(47,'female',29.545),
(33,'female',32.9),
(51,'female',38.06),
(49,'male',28.69),
(31,'female',30.495),
(36,'female',27.74),
(18,'male',35.2),
(50,'female',23.54),
(43,'female',30.685),
(20,'male',40.47),
(24,'female',22.6),
(60,'male',28.9),
(49,'female',22.61),
(60,'male',24.32),
(51,'female',36.67),
(58,'female',33.44),
(51,'female',40.66),
(53,'male',36.6),
(62,'male',37.4),
(19,'male',35.4),
(50,'female',27.075),
(30,'female',39.05),
(41,'male',28.405),
(29,'female',21.755),
(18,'female',40.28),
(41,'female',36.08),
(35,'male',24.42),
(53,'male',21.4),
(24,'female',30.1),
(48,'female',27.265),
(59,'female',32.1),
(49,'female',34.77),
(37,'female',38.39),
(26,'male',23.7),
(23,'male',31.73),
(29,'male',35.5),
(45,'male',24.035),
(27,'male',29.15),
(53,'male',34.105),
(31,'female',26.62),
(50,'male',26.41),
(50,'female',30.115),
(34,'male',27),
(19,'male',21.755),
(47,'female',36),
(28,'male',30.875),
(37,'female',26.4),
(21,'male',28.975),
(64,'male',37.905),
(58,'female',22.77),
(24,'male',33.63),
(31,'male',27.645),
(39,'female',22.8),
(47,'female',27.83),
(30,'male',37.43),
(18,'male',38.17),
(22,'female',34.58),
(23,'male',35.2),
(33,'male',27.1),
(27,'male',26.03),
(45,'female',25.175),
(57,'female',31.825),
(47,'male',32.3),
(42,'female',29),
(64,'female',39.7),
(38,'female',19.475),
(61,'male',36.1),
(53,'female',26.7),
(44,'female',36.48),
(19,'female',28.88),
(41,'male',34.2),
(51,'male',33.33),
(40,'male',32.3),
(45,'male',39.805),
(35,'male',34.32),
(53,'male',28.88),
(30,'male',24.4),
(18,'male',41.14),
(51,'male',35.97),
(50,'female',27.6),
(31,'female',29.26),
(35,'female',27.7),
(60,'male',36.955),
(21,'male',36.86),
(29,'male',22.515),
(62,'female',29.92),
(39,'female',41.8),
(19,'male',27.6),
(22,'female',23.18),
(53,'male',20.9),
(39,'female',31.92),
(27,'male',28.5),
(30,'male',44.22),
(30,'female',22.895),
(58,'female',33.1),
(33,'male',24.795),
(42,'female',26.18),
(64,'female',35.97),
(21,'male',22.3),
(18,'female',42.24),
(23,'male',26.51),
(45,'female',35.815),
(40,'female',41.42),
(19,'female',36.575),
(18,'male',30.14),
(25,'male',25.84),
(46,'female',30.8),
(33,'female',42.94),
(54,'male',21.01),
(28,'male',22.515),
(36,'male',34.43),
(20,'female',31.46),
(24,'female',24.225),
(23,'male',37.1),
(47,'female',26.125),
(33,'female',35.53),
(45,'male',33.7),
(26,'male',17.67),
(18,'female',31.13),
(44,'female',29.81),
(60,'male',24.32),
(64,'female',31.825),
(56,'male',31.79),
(36,'male',28.025),
(41,'male',30.78),
(39,'male',21.85),
(63,'male',33.1),
(36,'female',25.84),
(28,'female',23.845),
(58,'male',34.39),
(36,'male',33.82),
(42,'male',35.97),
(36,'male',31.5),
(56,'female',28.31),
(35,'female',23.465),
(59,'female',31.35),
(21,'male',31.1),
(59,'male',24.7),
(23,'female',32.78),
(57,'female',29.81),
(53,'male',30.495),
(60,'female',32.45),
(51,'female',34.2),
(23,'male',50.38),
(27,'female',24.1),
(55,'male',32.775),
(37,'female',30.78),
(61,'male',32.3),
(46,'female',35.53),
(53,'female',23.75),
(49,'female',23.845),
(20,'female',29.6),
(48,'female',33.11),
(25,'male',24.13),
(25,'female',32.23),
(57,'male',28.1),
(37,'female',47.6),
(38,'female',28),
(55,'female',33.535),
(36,'female',19.855),
(51,'male',25.4),
(40,'male',29.9),
(18,'male',37.29),
(57,'male',43.7),
(61,'male',23.655),
(25,'female',24.3),
(50,'male',36.2),
(26,'female',29.48),
(42,'male',24.86),
(43,'male',30.1),
(44,'male',21.85),
(23,'female',28.12),
(49,'female',27.1),
(33,'male',33.44),
(41,'male',28.8),
(37,'female',29.5),
(22,'male',34.8),
(23,'male',27.36),
(21,'female',22.135),
(51,'female',37.05),
(25,'male',26.695),
(32,'male',28.93),
(57,'male',28.975),
(36,'female',30.02),
(22,'male',39.5),
(57,'male',33.63),
(64,'female',26.885),
(36,'female',29.04),
(54,'male',24.035),
(47,'male',38.94),
(62,'male',32.11),
(61,'female',44),
(43,'female',20.045),
(19,'male',25.555),
(18,'female',40.26),
(19,'female',22.515),
(49,'male',22.515),
(60,'male',40.92),
(26,'male',27.265),
(49,'male',36.85),
(60,'female',35.1),
(26,'female',29.355),
(27,'male',32.585),
(44,'female',32.34),
(63,'male',39.8),
(32,'female',24.6),
(22,'male',28.31),
(18,'male',31.73),
(59,'female',26.695),
(44,'female',27.5),
(33,'male',24.605),
(24,'female',33.99),
(43,'female',26.885),
(45,'male',22.895),
(61,'female',28.2),
(35,'female',34.21),
(62,'female',25),
(62,'female',33.2),
(38,'male',31),
(34,'male',35.815),
(43,'male',23.2),
(50,'male',32.11),
(19,'female',23.4),
(57,'female',20.1),
(62,'female',39.16),
(41,'male',34.21),
(26,'male',46.53),
(39,'female',32.5),
(46,'male',25.8),
(45,'female',35.3),
(32,'male',37.18),
(59,'female',27.5),
(44,'male',29.735),
(39,'female',24.225),
(18,'male',26.18),
(53,'male',29.48),
(18,'male',23.21),
(50,'female',46.09),
(18,'female',40.185),
(19,'male',22.61),
(62,'male',39.93),
(56,'female',35.8),
(42,'male',35.8),
(37,'male',34.2),
(42,'male',31.255),
(25,'male',29.7),
(57,'male',18.335),
(51,'male',42.9),
(30,'female',28.405),
(44,'male',30.2),
(34,'male',27.835),
(31,'male',39.49),
(54,'male',30.8),
(24,'male',26.79),
(43,'male',34.96),
(48,'male',36.67),
(19,'female',39.615),
(29,'female',25.9),
(63,'female',35.2),
(46,'male',24.795),
(52,'male',36.765),
(35,'male',27.1),
(51,'male',24.795),
(44,'male',25.365),
(21,'male',25.745),
(39,'female',34.32),
(50,'female',28.16),
(34,'female',23.56),
(22,'female',20.235),
(19,'female',40.5),
(26,'male',35.42),
(29,'male',22.895),
(48,'male',40.15),
(26,'male',29.15),
(45,'female',39.995),
(36,'female',29.92),
(54,'male',25.46),
(34,'male',21.375),
(31,'male',25.9),
(27,'female',30.59),
(20,'male',30.115),
(44,'female',25.8),
(43,'male',30.115),
(45,'female',27.645),
(34,'male',34.675),
(24,'female',20.52),
(26,'female',19.8),
(38,'female',27.835),
(50,'female',31.6),
(38,'male',28.27),
(27,'female',20.045),
(39,'female',23.275),
(39,'female',34.1),
(63,'female',36.85),
(33,'female',36.29),
(36,'female',26.885),
(30,'male',22.99),
(24,'male',32.7),
(24,'male',25.8),
(48,'male',29.6),
(47,'male',19.19),
(29,'male',31.73),
(28,'male',29.26),
(47,'male',28.215),
(25,'male',24.985),
(51,'male',27.74),
(48,'female',22.8),
(43,'male',20.13),
(61,'female',33.33),
(48,'male',32.3),
(38,'female',27.6),
(59,'male',25.46),
(19,'female',24.605),
(26,'female',34.2),
(54,'female',35.815),
(21,'female',32.68),
(51,'male',37),
(22,'female',31.02),
(47,'male',36.08),
(18,'male',23.32),
(47,'female',45.32),
(21,'female',34.6),
(19,'male',26.03),
(23,'male',18.715),
(54,'male',31.6),
(37,'female',17.29),
(46,'female',23.655),
(55,'female',35.2),
(30,'female',27.93),
(18,'male',21.565),
(61,'male',38.38),
(54,'female',23),
(22,'male',37.07),
(45,'female',30.495),
(22,'male',28.88),
(19,'male',27.265),
(35,'female',28.025),
(18,'male',23.085),
(20,'male',30.685),
(28,'female',25.8),
(55,'male',35.245),
(43,'female',24.7),
(43,'female',25.08),
(22,'male',52.58),
(25,'female',22.515),
(49,'male',30.9),
(44,'female',36.955),
(64,'male',26.41),
(49,'male',29.83),
(47,'male',29.8),
(27,'female',21.47),
(55,'male',27.645),
(48,'female',28.9),
(45,'female',31.79),
(24,'female',39.49),
(32,'male',33.82),
(24,'male',32.01),
(57,'male',27.94),
(59,'male',41.14),
(36,'male',28.595),
(29,'female',25.6),
(42,'female',25.3),
(48,'male',37.29),
(39,'male',42.655),
(63,'male',21.66),
(54,'female',31.9),
(37,'male',37.07),
(63,'male',31.445),
(21,'male',31.255),
(54,'female',28.88),
(60,'female',18.335),
(32,'female',29.59),
(47,'female',32),
(21,'male',26.03),
(28,'male',31.68),
(63,'male',33.66),
(18,'male',21.78),
(32,'male',27.835),
(38,'male',19.95),
(32,'male',31.5),
(62,'female',30.495),
(39,'female',18.3),
(55,'male',28.975),
(57,'male',31.54),
(52,'male',47.74),
(56,'male',22.1),
(47,'male',36.19),
(55,'female',29.83),
(23,'male',32.7),
(22,'female',30.4),
(50,'female',33.7),
(18,'female',31.35),
(51,'female',34.96),
(22,'male',33.77),
(52,'female',30.875),
(25,'female',33.99),
(33,'female',19.095),
(53,'male',28.6),
(29,'male',38.94),
(58,'male',36.08),
(37,'male',29.8),
(54,'female',31.24),
(49,'female',29.925),
(50,'female',26.22),
(26,'male',30),
(45,'male',20.35),
(54,'female',32.3),
(38,'male',38.39),
(48,'female',25.85),
(28,'female',26.315),
(23,'male',24.51),
(55,'male',32.67),
(41,'male',29.64),
(25,'male',33.33),
(33,'male',35.75),
(30,'female',19.95),
(23,'female',31.4),
(46,'male',38.17),
(53,'female',36.86),
(27,'female',32.395),
(23,'female',42.75),
(63,'female',25.08),
(55,'male',29.9),
(35,'female',35.86),
(34,'male',32.8),
(19,'female',18.6),
(39,'female',23.87),
(27,'male',45.9),
(57,'male',40.28),
(52,'female',18.335),
(28,'male',33.82),
(50,'female',28.12),
(44,'female',25),
(26,'female',22.23),
(33,'male',30.25),
(19,'female',32.49),
(50,'male',37.07),
(41,'female',32.6),
(52,'female',24.86),
(39,'male',32.34),
(50,'male',32.3),
(52,'male',32.775),
(60,'male',32.8),
(20,'female',31.92),
(55,'male',21.5),
(42,'male',34.1),
(18,'female',30.305),
(58,'female',36.48),
(43,'female',32.56),
(35,'female',35.815),
(48,'female',27.93),
(36,'female',22.135),
(19,'male',44.88),
(23,'female',23.18),
(20,'female',30.59),
(32,'female',41.1),
(43,'female',34.58),
(34,'male',42.13),
(30,'male',38.83),
(18,'female',28.215),
(41,'female',28.31),
(35,'female',26.125),
(57,'male',40.37),
(29,'female',24.6),
(32,'male',35.2),
(37,'female',34.105),
(18,'male',27.36),
(43,'female',26.7),
(56,'female',41.91),
(38,'male',29.26),
(29,'male',32.11),
(22,'female',27.1),
(52,'female',24.13),
(40,'female',27.4),
(23,'female',34.865),
(31,'male',29.81),
(42,'female',41.325),
(24,'female',29.925),
(25,'female',30.3),
(48,'female',27.36),
(23,'female',28.49),
(45,'male',23.56),
(20,'male',35.625),
(62,'female',32.68),
(43,'female',25.27),
(23,'female',28),
(31,'female',32.775),
(41,'female',21.755),
(58,'female',32.395),
(48,'female',36.575),
(31,'female',21.755),
(19,'female',27.93),
(19,'female',30.02),
(41,'male',33.55),
(40,'male',29.355),
(31,'female',25.8),
(37,'male',24.32),
(46,'male',40.375),
(22,'male',32.11),
(51,'male',32.3),
(18,'female',27.28),
(35,'male',17.86),
(59,'female',34.8),
(36,'male',33.4),
(37,'female',25.555),
(59,'male',37.1),
(36,'male',30.875),
(39,'male',34.1),
(18,'male',21.47),
(52,'female',33.3),
(27,'female',31.255),
(18,'male',39.14),
(40,'male',25.08),
(29,'male',37.29),
(46,'female',34.6),
(38,'female',30.21),
(30,'female',21.945),
(40,'male',24.97),
(50,'male',25.3),
(20,'female',24.42),
(41,'male',23.94),
(33,'female',39.82),
(38,'male',16.815),
(42,'male',37.18),
(56,'male',34.43),
(58,'male',30.305),
(52,'male',34.485),
(20,'female',21.8),
(54,'female',24.605),
(58,'male',23.3),
(45,'female',27.83),
(26,'male',31.065),
(63,'female',21.66),
(58,'female',28.215),
(37,'male',22.705),
(25,'female',42.13),
(52,'male',41.8),
(64,'male',36.96),
(22,'female',21.28),
(28,'female',33.11),
(18,'male',33.33),
(28,'male',24.3),
(45,'female',25.7),
(33,'male',29.4),
(18,'female',39.82),
(32,'male',33.63),
(24,'male',29.83),
(19,'male',19.8),
(20,'male',27.3),
(40,'female',29.3),
(34,'female',27.72),
(42,'female',37.9),
(51,'female',36.385),
(54,'female',27.645),
(55,'male',37.715),
(52,'female',23.18),
(32,'female',20.52),
(28,'male',37.1),
(41,'female',28.05),
(43,'female',29.9),
(49,'female',33.345),
(64,'male',23.76),
(55,'female',30.5),
(24,'male',31.065),
(20,'female',33.3),
(45,'male',27.5),
(26,'male',33.915),
(25,'female',34.485),
(43,'male',25.52),
(35,'male',27.61),
(26,'male',27.06),
(57,'male',23.7),
(22,'female',30.4),
(32,'female',29.735),
(39,'male',29.925),
(25,'female',26.79),
(48,'female',33.33),
(47,'female',27.645),
(18,'female',21.66),
(18,'male',30.03),
(61,'male',36.3),
(47,'female',24.32),
(28,'female',17.29),
(36,'female',25.9),
(20,'male',39.4),
(44,'male',34.32),
(38,'female',19.95),
(19,'male',34.9),
(21,'male',23.21),
(46,'male',25.745),
(58,'male',25.175),
(20,'male',22),
(18,'male',26.125),
(28,'female',26.51),
(33,'male',27.455),
(19,'female',25.745),
(45,'male',30.36),
(62,'male',30.875),
(25,'female',20.8),
(43,'male',27.8),
(42,'male',24.605),
(24,'female',27.72),
(29,'female',21.85),
(32,'male',28.12),
(25,'female',30.2),
(41,'male',32.2),
(42,'male',26.315),
(33,'female',26.695),
(34,'male',42.9),
(19,'female',34.7),
(30,'female',23.655),
(18,'male',28.31),
(19,'female',20.6),
(18,'male',53.13),
(35,'male',39.71),
(39,'female',26.315),
(31,'male',31.065),
(62,'male',26.695),
(62,'male',38.83),
(42,'female',40.37),
(31,'male',25.935),
(61,'male',33.535),
(42,'female',32.87),
(51,'male',30.03),
(23,'female',24.225),
(52,'male',38.6),
(57,'female',25.74),
(23,'female',33.4),
(52,'female',44.7),
(50,'male',30.97),
(18,'female',31.92),
(18,'female',36.85),
(21,'female',25.8),
(61,'female',29.07);
/*!40000 ALTER TABLE `imc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor_seccion`
--

DROP TABLE IF EXISTS `profesor_seccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesor_seccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seccion_id` varchar(1) DEFAULT NULL,
  `profesor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seccion_id` (`seccion_id`),
  KEY `profesor_id` (`profesor_id`),
  CONSTRAINT `profesor_seccion_ibfk_1` FOREIGN KEY (`seccion_id`) REFERENCES `secciones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `profesor_seccion_ibfk_2` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor_seccion`
--

LOCK TABLES `profesor_seccion` WRITE;
/*!40000 ALTER TABLE `profesor_seccion` DISABLE KEYS */;
INSERT INTO `profesor_seccion` VALUES
(1,'A',1),
(2,'A',2),
(3,'C',1),
(4,'B',3);
/*!40000 ALTER TABLE `profesor_seccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesores`
--

DROP TABLE IF EXISTS `profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `apellido` varchar(200) DEFAULT NULL,
  `documento` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores`
--

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
INSERT INTO `profesores` VALUES
(1,'arael','vasquez',NULL),
(2,'rosmery','chavez',NULL),
(3,'andresito','gomez',NULL),
(4,'janet','buitrago',NULL);
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secciones`
--

DROP TABLE IF EXISTS `secciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secciones` (
  `id` varchar(1) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secciones`
--

LOCK TABLES `secciones` WRITE;
/*!40000 ALTER TABLE `secciones` DISABLE KEYS */;
INSERT INTO `secciones` VALUES
('A','Los exploradores',NULL),
('B','Los hiperactivos',NULL),
('C','Los distraidos',NULL),
('D','Los ganadores',NULL);
/*!40000 ALTER TABLE `secciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-27  2:49:35
