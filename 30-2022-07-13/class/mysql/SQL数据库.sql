/*
SQLyog Professional v12.08 (64 bit)
MySQL - 5.6.31-log : Database - eaby
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eaby` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `eaby`;

/*Table structure for table `eaby_news` */

DROP TABLE IF EXISTS `eaby_news`;

CREATE TABLE `eaby_news` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(40) NOT NULL COMMENT '标题',
  `content` varchar(1000) NOT NULL COMMENT '内容',
  `createTime` varchar(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__eaby___C63B5EE724927208` (`id`),
  UNIQUE KEY `UQ__eaby___C12AD09D276EDEB3` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=701 DEFAULT CHARSET=utf8;

/*Data for the table `eaby_news` */

insert  into `eaby_news`(`id`,`title`,`content`,`createTime`) values (531,'会员特惠月开始了','按此','2022-07-11'),(649,'加入会员，赢千万大礼包','加入会员，赢千万大礼包','2010-12-22'),(651,'积分兑换开始了','积分兑换开始了','2010-12-22'),(653,'团购阿迪1折起','团购阿迪1折起','2010-12-22'),(677,'会员特惠月开始了1','会员特惠月开始了','2010-12-22'),(679,'加入会员，赢千万大礼包3','加入会员，赢千万大礼包','2010-12-22'),(680,'新年不夜天，通宵也是开张了4','新年不夜天，通宵也是开张了','2011-05-22'),(681,'积分兑换开始了5','积分兑换开始了','2010-12-22'),(682,'团购阿迪1折起6','团购阿迪1折起','2010-12-22'),(686,'会员特惠月开始了11','会员特惠月开始了','2010-12-22'),(687,'迎双旦促销大酬宾21','迎双旦促销大酬宾','2010-12-24'),(688,'加入会员，赢千万大礼包31','加入会员，赢千万大礼包','2010-12-22'),(689,'新年不夜天，通宵也是开张了41','新年不夜天，通宵也是开张了fgvhbjknlnjbhvg','2022-07-04'),(690,'积分兑换开始了51','积分兑换开始了','2010-12-22'),(691,'团购阿迪1折起61','团购阿迪1折起','2010-12-22'),(695,'会员特惠月开始了111','会员特惠月开始了','2010-12-22'),(696,'迎双旦促销大酬宾211','迎双旦促销大酬宾','2010-12-24'),(697,'加入会员，赢千万大礼包311','加入会员，赢千万大礼包','2010-12-22'),(699,'积分兑换开始了511','积分兑换开始了','2010-12-22'),(700,'团购阿迪1折起611','团购阿迪1折起','2010-12-22');

/*Table structure for table `eaby_order` */

DROP TABLE IF EXISTS `eaby_order`;

CREATE TABLE `eaby_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(255) DEFAULT NULL COMMENT '用户主键',
  `loginName` varchar(255) DEFAULT NULL,
  `userAddress` varchar(255) DEFAULT NULL COMMENT '用户地址',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `cost` float DEFAULT NULL COMMENT '总消费',
  `status` int(10) NOT NULL COMMENT '订单状态',
  `serialNumber` varchar(255) DEFAULT NULL COMMENT '订单号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

/*Data for the table `eaby_order` */

insert  into `eaby_order`(`id`,`userId`,`loginName`,`userAddress`,`createTime`,`cost`,`status`,`serialNumber`) values (1,18,'shangzezhong','北京市花园路小区','2016-06-02 14:51:46',1721,4,'60B7487F47F9434EAA5FD1D9E22CB06C'),(2,18,'shangzezhong','北京市海淀区成府路','2016-06-02 14:52:49',8596,5,'8EF5E1557D55413781658A65FC301B8A'),(3,2,'admin','北京市海淀区大有庄','2016-06-03 11:41:09',15,5,'51718726C1274CC59504AB4E6FD64BA0'),(13,2,'admin','里约','2022-07-01 14:04:56',14,4,'202260676061606260646566626166'),(14,2,'admin','啊撒旦发个和','2022-07-01 14:06:40',13,2,'202260676061606260666371626167'),(15,2,'admin','asdf','2022-07-01 14:07:08',10,3,'2022606760616062606760706261610'),(16,2,'admin','asdf','2022-07-02 16:07:28',1,4,'202260676062606460676267626176'),(17,2,'admin','asdf','2022-07-02 16:07:28',2,1,'202260676062606460676267626172'),(18,2,'admin','asdf','2022-07-02 16:07:28',3,1,'202260676062606460676267626173'),(19,2,'admin','asdf','2022-07-02 16:07:28',4,1,'202260676062606460676267626174'),(20,2,'admin','asdf','2022-07-02 16:07:28',5,1,'202260676062606460676267626175'),(21,2,'admin','asdf','2022-07-01 14:07:08',11,3,'202260676061606260676070626167'),(22,2,'admin','asdf','2022-07-01 14:07:08',12,3,'202260676061606260676070626167'),(23,2,'admin','asdf','2022-07-02 16:07:28',6,1,'202260676062606460676267626171'),(24,2,'admin','asdf','2022-07-02 16:07:28',7,4,'202260676062606460676267626177'),(25,2,'admin','asdf','2022-07-02 16:07:28',8,1,'202260676062606460676267626178'),(26,2,'admin','asdf','2022-07-02 16:07:28',9,1,'202260676062606460676267626179'),(27,2,'admin','北京市海淀区大有庄','2022-07-04 01:18:38',474,4,'202260676064606161706370626170'),(28,2,'admin','啊撒旦发个和','2022-07-04 16:06:44',304,4,'202260676064606460666463626170'),(29,2,'admin','里约','2022-07-05 15:42:21',152,1,'202260676065606364626261626170'),(30,2,'admin','北京市海淀区大有庄','2022-07-05 15:42:45',152,1,'202260676065606364626464626170'),(31,2,'admin','北京市海淀区大有庄','2022-07-05 15:45:33',152,1,'202260676065606364656362626170'),(32,2,'admin','里约','2022-07-06 15:00:44',158,1,'202260676066606360606464626170'),(33,2,'admin','北京市海淀区大有庄','2022-07-07 23:07:53',20,1,'202260676067616160676562626166'),(34,15,'123','啊撒旦发个和','2022-07-08 00:30:08',20,1,'20226067607061626360606761656263'),(35,2,'admin','北京市海淀区大有庄','2022-07-08 14:55:26',20,1,'202260676070606265656265626170'),(36,2,'admin','北京市海淀区大有庄','2022-07-08 15:05:15',20,1,'202260676070606360656164626170'),(37,2,'admin','北京市海淀区大有庄','2022-07-08 15:08:23',20,1,'202260676070606360706262626170'),(38,2,'admin','北京市海淀区大有庄','2022-07-08 15:20:53',20,1,'202260676070606362606563626170'),(39,2,'admin','北京市海淀区大有庄','2022-07-08 15:26:29',20,1,'202260676070606362666270626170'),(40,2,'admin','北京市海淀区大有庄','2022-07-08 15:28:57',20,1,'202260676070606362706566626170'),(41,2,'admin','北京市海淀区大有庄','2022-07-08 15:48:27',20,1,'202260676070606364706267626170'),(42,2,'admin','北京市海淀区大有庄','2022-07-08 15:50:08',20,1,'202260676070606365606070626170'),(43,2,'admin','北京市海淀区大有庄','2022-07-08 15:54:02',20,1,'202260676070606365646061626170'),(44,2,'admin','北京市海淀区大有庄','2022-07-08 16:00:11',20,1,'202260676070606460606161626170'),(45,2,'admin','北京市海淀区大有庄','2022-07-08 16:06:50',20,1,'202260676070606460666471626170'),(46,2,'admin','北京市海淀区大有庄','2022-07-08 16:16:35',20,1,'202260676070606461666365626170'),(47,2,'admin','北京市海淀区大有庄','2022-07-08 16:32:18',20,1,'202260676070606463626170626170'),(48,2,'admin','北京市海淀区大有庄','2022-07-08 16:35:06',20,1,'202260676070606463656065626170'),(49,2,'admin','北京市海淀区大有庄','2022-07-08 16:39:28',20,1,'202260676070606463716270626170'),(50,2,'admin','北京市海淀区大有庄','2022-07-08 16:42:34',20,1,'202260676070606464626364626170'),(51,2,'admin','北京市海淀区大有庄','2022-07-08 16:48:26',15199800,1,'202260676070606464706266626170'),(52,2,'admin','北京市海淀区大有庄','2022-07-08 16:49:02',4560,1,'202260676070606464716061626170'),(53,2,'admin','北京市海淀区大有庄','2022-07-08 16:50:59',20,1,'202260676070606465606571626170'),(54,2,'admin','北京市海淀区大有庄','2022-07-08 16:53:56',2000000,1,'202260676070606465636565626170'),(55,2,'admin','北京市海淀区大有庄','2022-07-08 16:54:58',2000000,1,'202260676070606465646570626170'),(56,2,'admin','北京市海淀区大有庄','2022-07-08 16:56:55',2000000,1,'202260676070606465666565626170'),(57,2,'admin','北京市海淀区大有庄','2022-07-08 17:11:13',8000000,1,'202260676070606561616162626170'),(58,2,'admin','北京市海淀区大有庄','2022-07-08 17:12:28',2000000,1,'202260676070606561626267626170'),(59,2,'admin','北京市海淀区大有庄','2022-07-08 17:14:57',8000000,1,'202260676070606561646567626170'),(60,2,'admin','北京市海淀区大有庄','2022-07-08 17:17:42',2000000,1,'202260676070606561676462626170'),(61,2,'admin','啊撒旦发个和','2022-07-09 15:53:07',2000000,1,'202260676071606365636067626170'),(62,15,'123','里约','2022-07-11 09:19:06',152,1,'20226067616160716171606561656263'),(63,2,'admin','啊撒旦发个和','2022-07-11 11:12:42',764,4,'202260676161616161626461626170'),(64,15,'123','里约','2022-07-12 10:10:44',200,4,'20226067616261606160646461656263'),(65,15,'123','里约','2022-07-12 10:43:56',200,1,'20226067616261606463656661656263'),(66,2,'admin','北京市海淀区大有庄','2022-07-13 09:02:01',200,1,'202260676163607160626060626170'),(67,2,'admin','啊撒旦发个和','2022-07-13 09:29:45',152,1,'202260676163607162716465626170'),(68,15,'123','被阿三酱豆腐看','2022-07-13 09:31:53',1,1,'20226067616360716361656261656263'),(69,2,'admin','啊撒旦发个和','2022-07-13 10:15:58',152,1,'202260676163616061656570626264'),(70,2,'admin','北京市海淀区大有庄','2022-07-13 10:18:17',552,1,'202260676163616061706166626264'),(71,17,'we','里约','2022-07-13 11:34:36',704,4,'2022606761636161636463666167156165154154');

/*Table structure for table `eaby_order_detail` */

DROP TABLE IF EXISTS `eaby_order_detail`;

CREATE TABLE `eaby_order_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orderId` int(10) NOT NULL COMMENT '订单主键',
  `productId` int(10) NOT NULL COMMENT '商品主键',
  `quantity` int(10) NOT NULL COMMENT '数量',
  `cost` float NOT NULL COMMENT '消费',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__eaby___66E1BD8E2F10007B` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `eaby_order_detail` */

insert  into `eaby_order_detail`(`id`,`orderId`,`productId`,`quantity`,`cost`) values (1,1,733,5,760),(2,1,734,4,608),(3,1,735,1,152),(4,1,738,1,45),(5,1,739,1,156),(6,2,755,1,8596),(7,3,733,1,152),(8,3,734,1,152),(9,3,735,1,152);

/*Table structure for table `eaby_product` */

DROP TABLE IF EXISTS `eaby_product`;

CREATE TABLE `eaby_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `description` varchar(1024) DEFAULT NULL COMMENT '商品描述',
  `price` float NOT NULL COMMENT '价格',
  `stock` int(10) NOT NULL COMMENT '库存',
  `categoryLevel1Id` int(10) DEFAULT NULL COMMENT '分类1',
  `categoryLevel2Id` int(10) DEFAULT NULL COMMENT '分类2',
  `categoryLevel3Id` int(10) DEFAULT NULL COMMENT '分类3',
  `fileName` varchar(200) DEFAULT NULL COMMENT '文件名称',
  `isDelete` int(1) DEFAULT '0' COMMENT '是否删除(1：删除 0：未删除)',
  `isHot` int(1) DEFAULT '0' COMMENT '是否热门(1：是 0：不是)',
  `isSale` int(1) DEFAULT '0' COMMENT '是否特价(1：是 0：不是)',
  `detailed` longtext COMMENT '商品详细',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__eaby___94F6E55132E0915F` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=782 DEFAULT CHARSET=utf8;

/*Data for the table `eaby_product` */

insert  into `eaby_product`(`id`,`name`,`description`,`price`,`stock`,`categoryLevel1Id`,`categoryLevel2Id`,`categoryLevel3Id`,`fileName`,`isDelete`,`isHot`,`isSale`,`detailed`) values (733,'香奈尔香水','描述',200,1,548,654,655,'27A1789ED5764D82A5506DF3DC3933F9.jpg',0,1,0,'撒旦发个和'),(734,'洗面奶','商品简单描述',152,995,548,654,655,'D6C9BD438C5643D6B1A6C52E5426FE22.jpg',0,1,1,'商品详细描述'),(735,'啫喱水','商品简单描述',152,998,548,654,655,'1A836D2B3A3348DDAB19807E6CEA8028.jpg',0,1,1,'商品详细描述'),(736,'香水5852','商品简单描述',152,1000,548,654,655,'4D9499BAD92A42D291094E797BA2EA3F.jpg',0,1,0,'商品详细描述'),(737,'香水','商品简单描述',152,111,548,654,655,'A9924F9DB68B4DF99FDBF05902075AF0.jpg',0,1,0,'商品详细描述'),(738,'润肤露','商品简单描述',45,109,548,654,655,'3B059EDB5237407980458CE9EA9D3204.jpg',0,0,0,'商品详细描述'),(739,'洁面装','商品简单描述',156,99,548,654,655,'A62C6DF55116440CA3DE9DB37901ED4F.jpg',0,0,0,'商品详细描述'),(740,'电饭锅','商品简单描述',158,100,628,656,659,'40C3B76BA31246618E3CFC8723D33517.jpg',0,0,0,'商品详细描述'),(741,'婴儿喂奶装','商品简单描述',569,100,632,637,653,'401004B3D47C4C6FB1BC5EF19C21FC77.jpg',0,0,0,'商品详细描述'),(742,'坚果套餐','商品简单描述',158,1000,660,661,662,'E03D74145A034F6D909879829CB99D80.jpg',0,0,0,'商品详细描述'),(743,'超甜蜜崭','商品简单描述',589,1000,660,661,663,'7121E55099FC477680B1229205CE3D29.jpg',0,0,0,'商品详细描述'),(744,'华为2566','商品简单描述',589,1000,670,671,672,'F24B4140A2284B3788A38F3B5AD1809A.jpg',0,0,0,'商品详细描述'),(745,'荣耀3C','商品简单描述',589,100,670,671,672,'F3921E12552A4D0AA3F75467B146A959.jpg',0,0,0,'商品详细描述'),(746,'小米手环','商品简单描述',963,100,670,674,675,'72F75A371B0B4C26A7F72FAAEF96FC68.jpg',0,0,0,'商品详细描述'),(747,'华为2265','商品简单描述',896,1000,670,671,673,'161F355A8A8549BA8F7F4CE3B4F07E40.jpg',0,0,0,'商品详细描述'),(748,'越南坚果','商品简单描述',520,1000,660,661,662,'CBC98D3C9E544830821632F5C313D93E.jpg',0,0,0,'商品详细描述'),(749,'日本进口马桶','商品简单描述',5866,100,628,657,0,'A5AF40825E6940B2A59A040100E181A8.jpg',0,0,0,'商品详细描述'),(750,'联想Y系列','商品简单描述',569,1000,670,690,691,'956DB0BEC41B41B8A06C05C950130E23.jpg',0,0,0,'商品详细描述'),(751,'脑白金1号','商品简单描述',589,1000,676,677,680,'66E96AF9E9714A5C9EA901811173D662.jpg',0,0,0,'商品详细描述'),(752,'莫里斯按','商品简单描述',589,1000,676,678,0,'A7436BC607E74C81B392DCFE69D4AEAB.jpg',0,0,0,'商品详细描述'),(753,'三鹿好奶粉','商品简单描述',859,100,676,679,0,'3C465E7B8A324A8DA2A2EEE202E36166.jpg',0,0,0,'商品详细描述'),(754,'儿童牛奶','商品简单描述',5896,100,676,679,0,'D1AC9AE71ED348FA8D880FD4279D3422.jpg',0,0,0,'商品详细描述'),(755,'软沙发','商品简单描述',8596,99,628,696,0,'ED7921DE40FC47E18365754709A21194.jpg',0,0,0,'商品详细描述'),(756,'收纳盒','商品简单描述',5966,100,628,696,0,'DB86CA25CA4F4B4AA906F46BE542C6A6.jpg',0,0,0,'商品详细描述'),(757,'洗衣液','商品简单描述',58,1000,628,696,0,'E6CCDC343ACC471C908E9748776C6421.jpg',0,0,0,'商品详细描述'),(758,'红短沙发','商品简单描述',596,123,628,696,0,'BD5C77465DC2466BBCE7F95FB9764392.jpg',0,0,0,'商品详细描述'),(759,'新西兰奶粉','商品简单描述',5896,100,676,679,0,'9ED375098D42497B8FC33167E06D0EE8.jpg',0,0,0,'商品详细描述'),(760,'婴儿车','商品简单描述',11000,100,681,682,687,'1DBC0930641D43C29D74A9E1B40FEEBB.jpg',0,0,0,'商品详细描述'),(761,'夏款婴儿车','商品简单描述',963,100,681,682,688,'16290C4DBEAC4F00A636667019621468.jpg',0,0,0,'商品详细描述'),(762,'抗压旅行箱','商品简单描述',569,1000,681,683,685,'272CC434BE7A4469AB0E7882BD1A85FF.jpg',0,0,0,'商品详细描述'),(763,'透明手提箱','商品简单描述',8596,1000,681,683,684,'EAA8E66259BF4239B4A2237B62520EF1.jpg',0,0,0,'商品详细描述'),(764,'婴儿果粉','商品简单描述',5896,1000,660,661,662,'08BE30BF7B5F4930B0093D8CC4056057.jpg',0,0,0,'商品详细描述'),(765,'椰子粉','商品简单描述',5963,1000,660,661,662,'9C006B8BD1AD45398F474A8471ADC50B.jpg',0,0,1,'商品详细描述'),(766,'坚果蛋糕','商品简单描述',200,100,660,661,663,'2E5A16E21E0640E0BAE03E9B995DCD28.jpg',0,0,1,'商品详细描述'),(767,'编制手提箱','商品简单描述',5896,1000,681,682,688,'2E1D2A5E65A94FEEA17C72E47C530057.jpg',0,0,1,'asdfrgtyutrew'),(768,'纸箱','商品简单描述',5896,100,681,682,687,'443E5A4122064209AFE89250179A2FF0.jpg',0,0,1,'商品详细描述'),(769,'健胃液','走的块',152,1000,676,679,0,'30B5547CD7384DAA8A2F4F4D8C0BBF89.jpg',0,0,1,'死的早'),(770,'联想NTC','商品简单描述',8596,100,670,671,673,'48BC371A85A548B7A7589E3F542D911D.jpg',0,0,1,'商品详细描述'),(778,'测试1','测试1',1,100,548,654,655,'BD5C77465DC2466BBCE7F95FB9764392.jpg',0,0,0,'<p>欢迎寜使用。富文本编辑器</p><p><br></p>'),(779,'测试2','测试1',1,100,548,654,655,'1A836D2B3A3348DDAB19807E6CEA8028.jpg',1,0,0,'<p>欢迎寜使用。富文本编辑器</p><p><br></p>'),(780,'测试1','测试1',1,100,670,674,675,'443E5A4122064209AFE89250179A2FF0.jpg',0,0,0,'<p>欢迎寜使用。富文本编辑器</p><p><br></p>'),(781,'测试1','测试1',1,100,660,661,662,'9181358A6E5E45C79D510198290A3AF7.jpg',1,0,0,'<p>欢迎寜使用。富文本编辑器</p><p><br></p>');

/*Table structure for table `eaby_product_category` */

DROP TABLE IF EXISTS `eaby_product_category`;

CREATE TABLE `eaby_product_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `parentId` int(10) NOT NULL COMMENT '父级目录id',
  `type` int(11) DEFAULT NULL COMMENT '级别(1:一级 2：二级 3：三级)',
  `iconClass` varchar(255) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__eaby___9EC2A4E236B12243` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=697 DEFAULT CHARSET=utf8;

/*Data for the table `eaby_product_category` */

insert  into `eaby_product_category`(`id`,`name`,`parentId`,`type`,`iconClass`) values (548,'化妆品',0,1,''),(628,'家用商品',0,1,''),(654,'面部护理',548,2,''),(655,'少女派',654,3,''),(656,'餐具',628,2,''),(657,'卫具',628,2,''),(658,'叉子',656,3,''),(659,'锅',656,3,''),(660,'进口食品,生鲜',0,1,''),(661,'零食/糖果/巧克力',660,2,''),(662,'坚果',661,3,''),(663,'蜜饯',661,3,''),(669,'孕期教育',546,3,''),(670,'电子商品',0,1,''),(671,'手机',670,2,''),(672,'华为手机',671,3,''),(673,'联想手机',671,3,''),(674,'手环',670,2,''),(675,'小米手环',674,3,''),(676,'保健食品',0,1,''),(677,'老年保健品',676,2,''),(678,'中年营养品',676,2,''),(679,'儿童保健品',676,2,''),(680,'脑白金',677,3,''),(681,'箱包',0,1,''),(682,'旅行箱',681,2,''),(683,'手提箱',681,2,''),(684,'大型',683,3,''),(685,'小型',683,3,''),(686,'中型',683,3,''),(687,'大型',682,3,''),(688,'中型',682,3,''),(689,'小型',682,3,''),(690,'电脑',670,2,''),(691,'联想电脑',690,3,''),(692,'刀叉',656,3,NULL),(693,'碗筷',656,3,NULL),(696,'客厅专用',628,2,'');

/*Table structure for table `eaby_user` */

DROP TABLE IF EXISTS `eaby_user`;

CREATE TABLE `eaby_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `loginName` varchar(255) NOT NULL COMMENT '登录名',
  `userName` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `sex` int(2) NOT NULL DEFAULT '1' COMMENT '性别(1:男 0：女)',
  `identityCode` varchar(60) DEFAULT NULL COMMENT '身份证号',
  `email` varchar(80) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机',
  `type` int(2) DEFAULT '0' COMMENT '类型（1：后台 0:前台）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__eaby___C96109CC3A81B327` (`loginName`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `eaby_user` */

insert  into `eaby_user`(`id`,`loginName`,`userName`,`password`,`sex`,`identityCode`,`email`,`mobile`,`type`) values (2,'admin','寜','123456',0,'1234567','123435','110119120',1),(11,'hyl','韩语良','e10adc3949ba59abbe56e057f20f883e',1,'140225198874584539','1044732267@qq.com','13366055010',0),(12,'ck','陈康','e10adc3949ba59abbe56e057f20f883e',1,'140225189987854589','1044732267@qq.com','13366055010',0),(13,'kys','康有沈','e10adc3949ba59abbe56e057f20f883e',1,'1402251985512541525','1044732267@qq.com','13366055010',0),(14,'sb','沈白','e10adc3949ba59abbe56e057f20f883e',1,'140225158987854589','1044732267@qq.com','13366055010',0),(15,'123','普通用户','123',1,'1234567890','123435','123',0),(16,'阿斯','阿斯','1',1,NULL,'12345678','12345678',0),(17,'we','we','123',1,NULL,'123','123',0);

/*Table structure for table `eaby_user_address` */

DROP TABLE IF EXISTS `eaby_user_address`;

CREATE TABLE `eaby_user_address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `userId` int(255) DEFAULT NULL COMMENT '用户主键',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `isDefault` int(2) DEFAULT '0' COMMENT '是否是默认地址（1:是 0否）',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `eaby_user_address` */

insert  into `eaby_user_address`(`id`,`userId`,`address`,`createTime`,`isDefault`,`remark`) values (11,2,'北京市海淀区大有庄',NULL,0,'朋友家'),(13,9,'北京市西直门大桥芬兰国际大厦',NULL,0,'女朋友地址'),(14,18,'北京市花园路小区',NULL,0,'家里'),(15,18,'北京市海淀区成府路',NULL,0,'公司'),(18,2,'北京市海淀区大有庄','2022-07-08 00:05:33',1,'朋友家'),(19,15,'里约','2022-07-08 00:10:53',1,'无'),(20,15,'被阿三酱豆腐看','2022-07-08 00:11:28',0,'寜的温馨小家'),(21,15,'啊撒旦发个和','2022-07-08 00:17:04',0,'null'),(22,15,'啊撒旦发个和','2022-07-08 00:19:05',0,'朋友家'),(23,15,'璃月','2022-07-08 00:27:00',0,'null'),(24,2,'啊撒旦发个和','2022-07-13 09:29:45',0,''),(25,17,'里约','2022-07-13 11:34:36',0,'');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
