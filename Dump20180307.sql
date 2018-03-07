-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.21-1ubuntu1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `il`
--

DROP TABLE IF EXISTS `il`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `il` (
  `id` int(11) NOT NULL,
  `il_name` varchar(45) DEFAULT NULL,
  `konum` polygon DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `il`
--

LOCK TABLES `il` WRITE;
/*!40000 ALTER TABLE `il` DISABLE KEYS */;
INSERT INTO `il` VALUES (1,'Kocaeli','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0');
/*!40000 ALTER TABLE `il` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ilce`
--

DROP TABLE IF EXISTS `ilce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ilce` (
  `id` int(11) NOT NULL,
  `ilce_name` varchar(45) DEFAULT NULL,
  `il_id` int(11) DEFAULT NULL,
  `konum` polygon DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ilce_il1_idx` (`il_id`),
  CONSTRAINT `fk_ilce_il1` FOREIGN KEY (`il_id`) REFERENCES `il` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ilce`
--

LOCK TABLES `ilce` WRITE;
/*!40000 ALTER TABLE `ilce` DISABLE KEYS */;
INSERT INTO `ilce` VALUES (1,'Korfez',1,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),(2,'Derince',1,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0\0'),(3,'Izmit',1,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0\0@'),(4,'Cayirova',1,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0$@\0\0\0\0\0\0@\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\0@\0\0\0\0\0\0$@\0\0\0\0\0\0@\0\0\0\0\0\0@');
/*!40000 ALTER TABLE `ilce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koy`
--

DROP TABLE IF EXISTS `koy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koy` (
  `idkoy` int(11) NOT NULL,
  `koy_name` varchar(45) DEFAULT NULL,
  `ilce_id` int(11) DEFAULT NULL,
  `konum` polygon DEFAULT NULL,
  PRIMARY KEY (`idkoy`),
  KEY `fk_koy_ilce1_idx` (`ilce_id`),
  CONSTRAINT `fk_koy_ilce1` FOREIGN KEY (`ilce_id`) REFERENCES `ilce` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koy`
--

LOCK TABLES `koy` WRITE;
/*!40000 ALTER TABLE `koy` DISABLE KEYS */;
INSERT INTO `koy` VALUES (1,'Koy1',1,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0@'),(2,'Koy2',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0$@\0\0\0\0\0\0@\0\0\0\0\0\0$@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@'),(3,'Koy3',3,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0$@\0\0\0\0\0\0@\0\0\0\0\0\0$@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@');
/*!40000 ALTER TABLE `koy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahalle`
--

DROP TABLE IF EXISTS `mahalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahalle` (
  `id` int(11) NOT NULL,
  `mahalle_name` varchar(45) DEFAULT NULL,
  `ilce_id` int(11) DEFAULT NULL,
  `konum` polygon DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_mahalle_ilce1_idx` (`ilce_id`),
  CONSTRAINT `fk_mahalle_ilce1` FOREIGN KEY (`ilce_id`) REFERENCES `ilce` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahalle`
--

LOCK TABLES `mahalle` WRITE;
/*!40000 ALTER TABLE `mahalle` DISABLE KEYS */;
INSERT INTO `mahalle` VALUES (1,'Mah1',1,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),(2,'Mah2',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0\0'),(3,'Mah3',4,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0@'),(4,'Mah4',4,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0\0@'),(5,'Mah5',3,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0$@\0\0\0\0\0\0@\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\0@\0\0\0\0\0\0$@\0\0\0\0\0\0@\0\0\0\0\0\0@');
/*!40000 ALTER TABLE `mahalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vatandas`
--

DROP TABLE IF EXISTS `vatandas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vatandas` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `koy_idkoy` int(11) DEFAULT NULL,
  `mahalle_id` int(11) DEFAULT NULL,
  `adres` point DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vatandas_koy_idx` (`koy_idkoy`),
  KEY `fk_vatandas_mahalle1_idx` (`mahalle_id`),
  CONSTRAINT `fk_vatandas_koy` FOREIGN KEY (`koy_idkoy`) REFERENCES `koy` (`idkoy`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vatandas_mahalle1` FOREIGN KEY (`mahalle_id`) REFERENCES `mahalle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vatandas`
--

LOCK TABLES `vatandas` WRITE;
/*!40000 ALTER TABLE `vatandas` DISABLE KEYS */;
INSERT INTO `vatandas` VALUES (1,'Furkan',NULL,2,'\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@');
/*!40000 ALTER TABLE `vatandas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mydb'
--

--
-- Dumping routines for database 'mydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-07 17:31:28
