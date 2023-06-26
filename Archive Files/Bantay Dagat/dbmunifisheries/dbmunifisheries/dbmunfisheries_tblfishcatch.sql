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
-- Table structure for table `tblfishcatch`
--

DROP TABLE IF EXISTS `tblfishcatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblfishcatch` (
  `catchID` varchar(45) NOT NULL,
  `fishingID` varchar(45) DEFAULT NULL,
  `boatID` varchar(45) DEFAULT NULL,
  `gears` varchar(45) DEFAULT NULL,
  `hooks` varchar(12) DEFAULT NULL,
  `size` varchar(12) DEFAULT NULL,
  `days` varchar(12) DEFAULT NULL,
  `hauls` varchar(12) DEFAULT NULL,
  `panels` varchar(12) DEFAULT NULL,
  `units` varchar(45) DEFAULT NULL,
  `boats` varchar(12) DEFAULT NULL,
  `boxes1` varchar(12) DEFAULT NULL,
  `weight` varchar(12) DEFAULT NULL,
  `boxes2` varchar(12) DEFAULT NULL,
  `boxweight` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`catchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfishcatch`
--

LOCK TABLES `tblfishcatch` WRITE;
/*!40000 ALTER TABLE `tblfishcatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfishcatch` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-25  0:57:14
