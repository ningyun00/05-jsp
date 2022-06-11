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

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(20) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `pdesc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`pid`,`pname`,`price`,`pdesc`) values (31,'西瓜',200,'超级贵'),(32,'西瓜',200,'超级贵'),(33,'西瓜',200,'超级贵'),(34,'西瓜',200,'超级贵'),(35,'西瓜',200,'超级贵'),(36,'西瓜',200,'超级贵'),(37,'西瓜',200,'超级贵'),(38,'西瓜',200,'超级贵'),(39,'西瓜',200,'超级贵'),(40,'西瓜',200,'超级贵'),(41,'西瓜',200,'超级贵'),(42,'西瓜',200,'超级贵'),(43,'西瓜',200,'超级贵'),(44,'西瓜',200,'超级贵'),(45,'西瓜',200,'超级贵'),(46,'西瓜',200,'超级贵');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `SID` int(11) NOT NULL AUTO_INCREMENT,
  `SName` varchar(10) NOT NULL,
  `SSex` varchar(2) NOT NULL,
  `SDate` date NOT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`SID`,`SName`,`SSex`,`SDate`) values (7,'sadfg','女','2022-06-10'),(8,'sadfg','女','2022-06-10'),(9,'sadfg','女','2022-06-10'),(10,'寜樱','女','2022-06-10'),(11,'寜樱','女','2022-06-10'),(12,'寜樱','女','2022-06-10');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
