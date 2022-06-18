/*
SQLyog Professional v12.08 (64 bit)
MySQL - 5.6.31-log : Database - leavethelibrary
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`leavethelibrary` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `leavethelibrary`;

/*Table structure for table `furloughapply` */

DROP TABLE IF EXISTS `furloughapply`;

CREATE TABLE `furloughapply` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `proposer` varchar(30) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `applyDate` date NOT NULL,
  `startTime` datetime NOT NULL,
  `lasTime` datetime NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `furloughapply` */

insert  into `furloughapply`(`ID`,`proposer`,`dept`,`applyDate`,`startTime`,`lasTime`,`TYPE`) values (1,'寜','人事部','2022-06-18','2022-06-18 22:21:49','2022-06-18 22:21:49','无条件请假'),(2,'寜','人事部','2022-06-18','2022-06-18 23:55:11','2022-06-18 23:55:11','无条件请假'),(3,'寜','人事部','2022-06-18','2022-06-18 23:55:11','2022-06-18 23:55:11','无条件请假'),(4,'寜','人事部','2022-06-18','2022-06-18 23:55:11','2022-06-18 23:55:11','无条件请假'),(5,'寜','人事部','2022-06-18','2022-06-18 23:55:11','2022-06-18 23:55:11','无条件请假'),(6,'寜','人事部','2022-06-18','2022-06-18 23:55:11','2022-06-18 23:55:11','无条件请假'),(7,'寜','人事部','2022-06-18','2022-06-18 23:55:11','2022-06-18 23:55:11','无条件请假'),(8,'寜','人事部','2022-06-18','2022-06-18 23:55:11','2022-06-18 23:55:11','无条件请假'),(9,'寜','人事部','2022-06-18','2022-06-18 23:55:12','2022-06-18 23:55:12','无条件请假'),(10,'阿斯顿飞过','人事部','2022-06-19','2022-06-19 00:00:00','2022-06-19 00:00:00','病假'),(11,'阿斯顿飞过','人事部','2022-06-19','2022-06-19 00:00:00','2022-06-19 00:00:00','孕价'),(12,'阿斯顿飞过','人事部','2022-06-19','2022-06-19 15:21:11','2022-06-19 15:21:14','孕价');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
