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
-- Table structure for table `tblboat`
--

DROP TABLE IF EXISTS `tblboat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblboat` (
  `boatID` varchar(45) NOT NULL,
  `fishersID` varchar(45) DEFAULT NULL,
  `boatpicture1` varchar(90) DEFAULT NULL,
  `boatpicture2` varchar(90) DEFAULT NULL,
  `mfvrno` varchar(45) DEFAULT NULL,
  `appdate` varchar(45) DEFAULT NULL,
  `ctcno` varchar(45) DEFAULT NULL,
  `cfrno` varchar(45) DEFAULT NULL,
  `regtype` varchar(45) DEFAULT NULL,
  `boatname` varchar(90) DEFAULT NULL,
  `boattype` varchar(45) DEFAULT NULL,
  `placebuilt` varchar(90) DEFAULT NULL,
  `homeport` varchar(90) DEFAULT NULL,
  `make` varchar(45) DEFAULT NULL,
  `enginebrand1` varchar(20) DEFAULT NULL,
  `enginehp1` float DEFAULT NULL,
  `engineserial1` varchar(45) DEFAULT NULL,
  `enginefuel1` varchar(45) DEFAULT NULL,
  `enginebrand2` varchar(20) DEFAULT NULL,
  `enginehp2` float DEFAULT NULL,
  `engineserial2` varchar(45) DEFAULT NULL,
  `enginefuel2` varchar(45) DEFAULT NULL,
  `length` float DEFAULT NULL,
  `tonlength` float DEFAULT NULL,
  `breadth` float DEFAULT NULL,
  `tonbreadth` float DEFAULT NULL,
  `depth` float DEFAULT NULL,
  `tondepth` float DEFAULT NULL,
  `tonnage` float DEFAULT NULL,
  `tonnet` float DEFAULT NULL,
  `boatcap` int(11) DEFAULT NULL,
  `bodycolor` varchar(45) DEFAULT NULL,
  `boatshape` varchar(60) DEFAULT NULL,
  `formerowner` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`boatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblboat`
--

LOCK TABLES `tblboat` WRITE;
/*!40000 ALTER TABLE `tblboat` DISABLE KEYS */;
INSERT INTO `tblboat` VALUES ('San-1515-649','San-1515',NULL,NULL,'','','','','','KINOBI INDINO','Motorized','','','','HONDA',16,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('San-18433-733','San-18433',NULL,NULL,'','','','','','JURITO','Motorized','','','','',0,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('San-26471-579','San-26471','pumpboat.jpg','south-east-asiaphilippinesmetro-cebumactan-islandpump-boats-at-holiday-F43AKR.jpg','','','','','Fishing','Fb Catalino','Motorized','San Carlos City, Negros Occidental','Dapdap, Brgy San Juan','fiber','Honda',7,'','diesel','',0,'','',0,6.09,0,0.73,0,0.53,0.5828,0,NULL,NULL,NULL,NULL),('San-27411-654','San-27411',NULL,NULL,'','','','','','MAR  MAR','Motorized','','','','MARINE',7,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('San-29318-458','San-29318',NULL,NULL,'','','','','','DAVID','Non-motorized','','','','',0,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('San-30019-123','San-30019',NULL,NULL,'','','','','','ERNIE','Non-motorized','','','','',0,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('San-32161-341','San-32161',NULL,NULL,'','','','','','JAMES ANTHONY','Motorized','','','','',0,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('San-33491-615','San-33491',NULL,NULL,'00812','','','','','MARILOU','Motorized','','','','LONCIN',7,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('San-36124-849','San-36124','1.png','441-4414545_cute-heart-png-transparent-background-cute-heart-clipart.png','','','','','Fishing','Catalino','Motorized','','','fiber','Loncin',6,'defaced','diesel','',0,'','',0,3.32,0,0.5,0,0.6,0.2464,0,NULL,NULL,NULL,NULL),('San-36776-944','San-36776',NULL,NULL,'','','','','','JUSTIN','Non-motorized','','','','',0,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('San-42602-689','San-42602',NULL,NULL,'','','','','','JOYLIN','Motorized','','','','LONCIN ',10,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('San-44019-170','San-44019',NULL,NULL,'','','','','','MV ANA','Motorized','','','','LONCIN',0,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('San-44331-424','San-44331',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'JUSTIN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('San-47808-891','San-47808',NULL,NULL,'','','','','','JUSTIN','Non-motorized','','','','',0,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('San-50621-786','San-50621',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'JERRY BOY',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('San-52602-782','San-52602',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MACUEL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('San-52988-152','San-52988',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'RHEAN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('San-53299-438','San-53299',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EDWIN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('San-55023-150','San-55023',NULL,NULL,'','','','','','PETER CAT','Motorized','','','','HONNDA',13,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('San-55967-112','San-55967',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'JUANITO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('San-61334-452','San-61334',NULL,NULL,'','','','','','BENJI','Motorized','','','','LONCIN',14,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('San-61502-630','San-61502',NULL,NULL,'','','','','','NERISSA MAE','Motorized','','','','LONCIN',13,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('San-81014-194','San-81014',NULL,NULL,'','','','','','KYLER','Motorized','','','','LONCIN',8,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('San-92309-447','San-92309',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'FB 3 SISTER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('San-968-68','San-968',NULL,NULL,'','','','','','JEN','Non-motorized','','','','',0,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC000011-778','SC000011',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ENRICO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('SC000150-375','SC000150',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'FB STALIN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('SC000392-182','SC000392',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SHAMEAH',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('SC000538-614','SC000538',NULL,NULL,'','','','','','JAVE','Non-motorized','','','','',0,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC000542-861','SC000542',NULL,NULL,'','','','','','SOPRIANO BACALSO','Motorized','','','','MARINE',7,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC000568-794','SC000568',NULL,NULL,'','','','','','JOANNIL','Motorized','','','','HONDA',13,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC000599-815','SC000599',NULL,NULL,'','','','','','JIMMY','Motorized','','','','LONCIN',7,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC000613-620','SC000613',NULL,NULL,'','','','','','KATE','Non-motorized','','','','',0,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC000633-552','SC000633',NULL,NULL,'','','','','','ABRAHAM','Non-motorized','','','','',0,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC000686-855','SC000686',NULL,NULL,'','','','','','JMP','Motorized','','','','KINGSTON',7,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC000941-525','SC000941',NULL,NULL,'','','','','','CARL','Motorized','','','','LONCIN',10,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC000945-443','SC000945',NULL,NULL,'','','','','','H.M','Motorized','','','','LONCIN',7,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC000964-820','SC000964',NULL,NULL,'','','','','','SAM','Motorized','','','','HONDA',6.5,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC000966-519','SC000966',NULL,NULL,'','','','','','AC','Motorized','','','','MARINE',7,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC001104-637','SC001104',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AGRAVANTE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('SC001136-24','SC001136',NULL,NULL,'','','','','','RICKY JOHN','Motorized','','','','KINGSTON',16,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC001189-941','SC001189',NULL,NULL,'','','','','','HERSON','Motorized','','','','MARINE',7.5,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC001204-616','SC001204',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CLARIN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('SC001283-793','SC001283',NULL,NULL,'','','','','','FB TRIXIE','Motorized','','','','',0,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC001348-370','SC001348',NULL,NULL,'','','','','','ATHAN','Non-motorized','','','','',0,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC001351-538','SC001351',NULL,NULL,'','','','','','MJ','Non-motorized','','','','',0,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC001501-928','SC001501',NULL,NULL,'','','','','','JAROL','Motorized','','','','LONCIN',9,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC001556-151','SC001556',NULL,NULL,'','','','','','ATHAN','Motorized','','','','MARINE',7,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL),('SC001644-932','SC001644',NULL,NULL,'','','','','','BLACK MAMBA','Motorized','','','','LONCIN',13,'','','',0,'','',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tblboat` ENABLE KEYS */;
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
