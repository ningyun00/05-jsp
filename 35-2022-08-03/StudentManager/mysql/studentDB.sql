/*
SQLyog Professional v12.08 (64 bit)
MySQL - 5.6.31-log : Database - studentdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`studentdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `studentdb`;

/*Table structure for table `studentinfo` */

DROP TABLE IF EXISTS `studentinfo`;

CREATE TABLE `studentinfo` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(30) NOT NULL,
  `sgender` varchar(2) NOT NULL DEFAULT '男',
  `sage` int(11) NOT NULL,
  `saddress` varchar(100) DEFAULT NULL,
  `semaile` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `studentinfo` */

insert  into `studentinfo`(`sid`,`sname`,`sgender`,`sage`,`saddress`,`semaile`) values (1,'张全芳','女',20,'北京市朝阳区','quanfang@163.com'),(2,'李思阳','男',19,'北京崇文区','siyang@126.com'),(3,'候全如','女',21,'江苏省市南京市','quanru@126.com'),(4,'寜1','男',12,'地球上','1234@qq.com'),(5,'寜2','女',16,'地球','122134@qq.com'),(6,'寜3','女',18,'暗示','132453@qas.sas');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
