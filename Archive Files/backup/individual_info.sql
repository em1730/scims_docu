/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.5-10.4.11-MariaDB : Database - scims
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`scims` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `scims`;

/*Table structure for table `individual_info` */

DROP TABLE IF EXISTS `individual_info`;

CREATE TABLE `individual_info` (
  `individual_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_no` char(15) NOT NULL,
  `date_register` date NOT NULL DEFAULT '0000-00-00',
  `first_name` varchar(100) NOT NULL DEFAULT 'N/A',
  `middle_name` varchar(100) NOT NULL DEFAULT 'N/A',
  `last_name` varchar(100) NOT NULL DEFAULT 'N/A',
  `suffix` char(5) NOT NULL DEFAULT 'N/A',
  `gender` char(10) NOT NULL DEFAULT 'N/A',
  `birthdate` date NOT NULL DEFAULT '0000-00-00',
  `place_birth` varchar(50) NOT NULL DEFAULT 'N/A',
  `religion` varchar(50) NOT NULL DEFAULT 'N/A',
  `civil_status` varchar(50) NOT NULL DEFAULT 'N/A',
  `citizenship` varchar(50) NOT NULL DEFAULT 'N/A',
  `mobile_no` int(11) NOT NULL,
  `tel_no` char(20) NOT NULL DEFAULT 'N/A',
  `fax_no` char(20) NOT NULL DEFAULT 'N/A',
  `email_add` varchar(50) NOT NULL DEFAULT 'N/A',
  `website` varchar(50) NOT NULL DEFAULT 'N/A',
  `photo` varchar(50) NOT NULL DEFAULT 'N/A',
  `status` char(10) NOT NULL DEFAULT 'N/A',
  `hashcode` varchar(100) NOT NULL DEFAULT 'N/A',
  `height` char(5) NOT NULL DEFAULT 'N/A',
  `weight` char(5) NOT NULL DEFAULT 'N/A',
  `blood_type` char(5) NOT NULL DEFAULT 'N/A',
  PRIMARY KEY (`entity_no`,`individual_id`),
  KEY `individual_id` (`individual_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `individual_info` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
