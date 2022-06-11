/*
SQLyog Professional v12.08 (64 bit)
MySQL - 5.6.31-log : Database - employee
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`employee` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `employee`;

/*Table structure for table `emp` */

DROP TABLE IF EXISTS `emp`;

CREATE TABLE `emp` (
  `EID` int(11) NOT NULL AUTO_INCREMENT,
  `EName` varchar(20) DEFAULT NULL,
  `ESix` varchar(2) DEFAULT NULL,
  `ETelephone` varchar(18) DEFAULT NULL,
  `EHireDate` date DEFAULT NULL,
  PRIMARY KEY (`EID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `emp` */

insert  into `emp`(`EID`,`EName`,`ESix`,`ETelephone`,`EHireDate`) values (9,'寜1','女','18573031245','2022-06-13'),(10,'2寜1','女','18573031245','2022-06-13'),(12,'啊撒大年纪','女','1234','2021-11-11'),(13,'樱1','女','1008611','2022-06-13'),(15,'撒旦','女','12345678','2022-06-13'),(16,'撒旦','女','123456','2022-06-13'),(18,'安慰人','男','1234567','2022-06-13'),(19,'小宁','女','1008213','2022-06-13'),(21,'寜寜','男','2134567','2022-06-04');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
