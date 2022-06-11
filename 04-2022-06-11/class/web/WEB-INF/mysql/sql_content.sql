/*
SQLyog Professional v12.08 (64 bit)
MySQL - 5.6.31-log : Database - class
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`class` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `class`;

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `TID` int(11) NOT NULL AUTO_INCREMENT,
  `TName` varchar(15) DEFAULT NULL,
  `TSubject` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`TID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`TID`,`TName`,`TSubject`) values (2,'年糕','神话学家'),(3,'年糕','神话学家'),(4,'年糕','神话学家'),(5,'年糕','神话学家'),(6,'寜樱','阿斯蒂芬'),(7,'寜樱','阿斯蒂芬'),(8,'寜樱','阿斯蒂芬'),(9,'寜樱','阿斯蒂芬');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
