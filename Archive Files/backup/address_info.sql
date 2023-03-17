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

/*Table structure for table `address_info` */

DROP TABLE IF EXISTS `address_info`;

CREATE TABLE `address_info` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_no` char(15) NOT NULL,
  `household_no` varchar(50) NOT NULL DEFAULT 'N/A',
  `address_type` varchar(50) NOT NULL DEFAULT 'N/A',
  `residency` varchar(50) NOT NULL DEFAULT 'N/A',
  `unit_no` varchar(50) NOT NULL DEFAULT 'N/A',
  `phase_num` varchar(50) NOT NULL DEFAULT 'N/A',
  `blk_num` varchar(50) NOT NULL DEFAULT 'N/A',
  `lot_num` varchar(50) NOT NULL DEFAULT 'N/A',
  `bldg_no` varchar(50) NOT NULL DEFAULT 'N/A',
  `bldg_name` varchar(50) NOT NULL DEFAULT 'N/A',
  `street` varchar(50) NOT NULL DEFAULT 'N/A',
  `subdivision` varchar(50) NOT NULL DEFAULT 'N/A',
  `barangay` varchar(50) NOT NULL DEFAULT 'N/A',
  `city` varchar(50) NOT NULL DEFAULT 'N/A',
  `province` varchar(50) NOT NULL DEFAULT 'N/A',
  `region` varchar(50) NOT NULL DEFAULT 'N/A',
  `zip` char(5) NOT NULL DEFAULT 'N/A',
  `longtitude` varchar(50) NOT NULL DEFAULT 'N/A',
  `latitude` varchar(50) NOT NULL DEFAULT 'N/A',
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `address_info` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
