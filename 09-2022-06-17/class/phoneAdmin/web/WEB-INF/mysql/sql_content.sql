/*
SQLyog Professional v12.08 (64 bit)
MySQL - 5.6.31-log : Database - phone
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`phone` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `phone`;

/*Table structure for table `phone` */

DROP TABLE IF EXISTS `phone`;

CREATE TABLE `phone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `company` varchar(20) NOT NULL,
  `introduciton` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `phone` */

insert  into `phone`(`id`,`type`,`brand`,`company`,`introduciton`) values (3,'E71','NOKIA','NOKIA','智能商务手机,塞班操作系统,扩展性好性价比极高,能砸核桃'),(6,'E71','NOKIA','NOKIA','智能商务手机,塞班操作系统,扩展性好性价比极高,能砸核桃'),(7,'E71','NOKIA','NOKIA','智能商务手机,塞班操作系统,扩展性好性价比极高,能砸核桃'),(8,'E71','NOKIA','NOKIA','智能商务手机,塞班操作系统,扩展性好性价比极高,能砸核桃'),(9,'E71','NOKIA','NOKIA','智能商务手机,塞班操作系统,扩展性好性价比极高,能砸核桃'),(10,'E71','VIVO','VIVO','智能商务手机,塞班操作系统,扩展性好性价比极高,能砸核桃'),(11,'E71','VIVO','VIVO','智能商务手机,塞班操作系统,扩展性好性价比极高,能砸核桃'),(12,'E71','VIVO','VIVO','智能商务手机,塞班操作系统,扩展性好性价比极高,能砸核桃'),(13,'E71','VIVO','VIVO','智能商务手机,塞班操作系统,扩展性好性价比极高,能砸核桃'),(14,'E71','VIVO','VIVO','智能商务手机,塞班操作系统,扩展性好性价比极高,能砸核桃'),(15,'E71','VIVO','VIVO','智能商务手机,塞班操作系统,扩展性好性价比极高,能砸核桃'),(16,'E71','OPPO','OPPO','智能商务手机,塞班操作系统,扩展性好性价比极高,能砸核桃'),(17,'E71','OPPO','OPPO','智能商务手机,塞班操作系统,扩展性好性价比极高,能砸核桃'),(18,'E71','OPPO','OPPO','智能商务手机,塞班操作系统,扩展性好性价比极高,能砸核桃'),(19,'E71','OPPO','OPPO','智能商务手机,塞班操作系统,扩展性好性价比极高,能砸核桃');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
