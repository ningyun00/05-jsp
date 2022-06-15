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
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

/*Data for the table `furloughapply` */

insert  into `furloughapply`(`ID`,`proposer`,`dept`,`applyDate`,`startTime`,`lasTime`,`type`) values (1,'寜','人事部','2022-06-08','2022-06-16 12:06:19','2022-06-16 12:06:19','无条件请假'),(2,'寜','未知','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','wutiaoj'),(3,'寜','未知','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','wutiaoj'),(4,'寜','未知','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','wutiaoj'),(5,'寜','未知','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','wutiaoj'),(6,'寜','人事部','2022-06-16','2022-06-16 16:00:07','2022-06-16 16:00:07','无条件请假'),(7,'寜','人事部','2022-06-16','2022-06-16 16:00:07','2022-06-16 16:00:07','无条件请假'),(8,'寜','人事部','2022-06-16','2022-06-16 16:00:07','2022-06-16 16:00:07','无条件请假'),(9,'寜','人事部','2022-06-16','2022-06-16 16:00:07','2022-06-16 16:00:07','无条件请假'),(10,'寜','人事部','2022-06-16','2022-06-16 16:00:07','2022-06-16 16:00:07','无条件请假'),(11,'寜','人事部','2022-06-16','2022-06-16 16:00:08','2022-06-16 16:00:08','无条件请假'),(12,'寜','人事部','2022-06-16','2022-06-16 16:00:08','2022-06-16 16:00:08','无条件请假'),(13,'寜','人事部','2022-06-16','2022-06-16 16:00:08','2022-06-16 16:00:08','无条件请假'),(14,'寜','人事部','2022-06-16','2022-06-16 16:00:08','2022-06-16 16:00:08','无条件请假'),(15,'寜','人事部','2022-06-16','2022-06-16 16:00:08','2022-06-16 16:00:08','无条件请假'),(16,'寜','人事部','2022-06-16','2022-06-16 16:00:08','2022-06-16 16:00:08','无条件请假'),(17,'寜','人事部','2022-06-16','2022-06-16 16:00:08','2022-06-16 16:00:08','无条件请假'),(18,'寜','人事部','2022-06-16','2022-06-16 16:00:09','2022-06-16 16:00:09','无条件请假'),(19,'寜','人事部','2022-06-16','2022-06-16 16:00:09','2022-06-16 16:00:09','无条件请假'),(20,'寜','人事部','2022-06-16','2022-06-16 16:00:09','2022-06-16 16:00:09','无条件请假'),(21,'寜','人事部','2022-06-16','2022-06-16 16:00:09','2022-06-16 16:00:09','无条件请假'),(22,'寜','人事部','2022-06-16','2022-06-16 16:00:09','2022-06-16 16:00:09','无条件请假'),(23,'寜','人事部','2022-06-16','2022-06-16 16:00:09','2022-06-16 16:00:09','无条件请假'),(24,'寜','人事部','2022-06-16','2022-06-16 16:00:09','2022-06-16 16:00:09','无条件请假'),(25,'寜','人事部','2022-06-16','2022-06-16 16:00:09','2022-06-16 16:00:09','无条件请假'),(26,'寜','人事部','2022-06-16','2022-06-16 16:00:10','2022-06-16 16:00:10','无条件请假'),(27,'寜','人事部','2022-06-16','2022-06-16 16:00:10','2022-06-16 16:00:10','无条件请假'),(28,'寜','人事部','2022-06-16','2022-06-16 16:00:10','2022-06-16 16:00:10','无条件请假'),(29,'寜','人事部','2022-06-16','2022-06-16 16:00:10','2022-06-16 16:00:10','无条件请假'),(30,'寜','未知','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','wutiaoj'),(31,'寜','未知','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','wutiaoj'),(32,'寜','未知','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','wutiaoj'),(33,'寜','未知','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','wutiaoj'),(34,'寜','未知','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','wutiaoj'),(35,'寜','未知','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','wutiaoj'),(36,'寜','未知','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','wutiaoj'),(37,'寜','未知','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','wutiaoj'),(38,'寜','未知','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','wutiaoj'),(39,'寜','未知','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','wutiaoj'),(40,'寜','未知','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','wutiaoj'),(41,'寜','未知','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','wutiaoj'),(42,'寜','未知','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','wutiaoj'),(43,'寜','未知','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','wutiaoj'),(44,'我打造了长生俱','asc','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','孕假'),(45,'1','人事部','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','孕假'),(46,'的说法是','人事部','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','人假'),(47,'日本和','人事部','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','炒假'),(48,'寜','不知道','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','无'),(49,'寜','不知道','2022-06-16','2022-06-16 23:07:28','2022-06-16 23:07:28','无'),(50,'二体','人事部','2022-06-16','2022-06-16 00:00:00','2022-06-16 00:00:00','孕假');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
