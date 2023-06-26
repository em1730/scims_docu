-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dbmunfisheries
-- ------------------------------------------------------
-- Server version	8.0.1-dmr-log

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
-- Table structure for table `tblbarangay`
--

DROP TABLE IF EXISTS `tblbarangay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbarangay` (
  `brgyID` int(11) NOT NULL,
  `bname` varchar(60) DEFAULT NULL,
  `town` varchar(45) DEFAULT NULL,
  `prov` varchar(60) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `sitios` varchar(4) DEFAULT NULL,
  `brgyarea` varchar(20) DEFAULT NULL,
  `brgylength` varchar(20) DEFAULT NULL,
  `cluster` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`brgyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbarangay`
--

LOCK TABLES `tblbarangay` WRITE;
/*!40000 ALTER TABLE `tblbarangay` DISABLE KEYS */;
INSERT INTO `tblbarangay` VALUES (90294,'Ermita','San Carlos City','Negros Occidental','',NULL,NULL,NULL,'Negros Occidental '),(90295,'San Juan','San Carlos City','Negros Occidental','',NULL,NULL,NULL,'Negros Occidental '),(90296,'Punao','San Carlos City','Negros Occidental','',NULL,NULL,NULL,'Negros Occidental '),(90297,'Buluangan','San Carlos City','Negros Occidental','',NULL,NULL,NULL,'Negros Occidental '),(90298,'Guadalupe','San Carlos City','Negros Occidental','',NULL,NULL,NULL,'Negros Occidental '),(90299,'Barangay I (Pob.)','San Carlos City','Negros Occidental','',NULL,NULL,NULL,'Negros Occidental '),(90300,'Barangay II (Pob.)','San Carlos City','Negros Occidental','',NULL,NULL,NULL,'Negros Occidental '),(90301,'Barangay III (Pob.)','San Carlos City','Negros Occidental','',NULL,NULL,NULL,'Negros Occidental '),(90302,'Barangay IV (Pob.)','San Carlos City','Negros Occidental','',NULL,NULL,NULL,'Negros Occidental '),(90303,'Barangay V (Pob.)','San Carlos City','Negros Occidental','',NULL,NULL,NULL,'Negros Occidental '),(90304,'Barangay VI (Pob.)','San Carlos City','Negros Occidental','',NULL,NULL,NULL,'Negros Occidental '),(90305,'Rizal','San Carlos City','Negros Occidental','',NULL,NULL,NULL,'Negros Occidental ');
/*!40000 ALTER TABLE `tblbarangay` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-25  0:57:17
