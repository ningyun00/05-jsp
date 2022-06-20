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

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `cid` int(11) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `city` */

insert  into `city`(`cid`,`NAME`,`pid`) values (1,'北京市',1),(1,'天津市',2),(1,'上海市',3),(1,'重庆市',4),(1,'石家庄市',5),(2,'唐山市',5),(3,'秦皇岛市',5),(4,'邯郸市',5),(5,'邢台市',5),(6,'保定市',5),(7,'张家口市',5),(8,'承德市',5),(9,'沧州市',5),(10,'廊坊市',5),(11,'衡水市',5),(1,'太原市',6),(2,'大同市',6),(3,'阳泉市',6),(4,'长治市',6),(5,'晋城市',6),(6,'朔州市',6),(7,'晋中市',6),(8,'运城市',6),(9,'忻州市',6),(10,'临汾市',6),(11,'吕梁市',6),(1,'台北市',7),(2,'高雄市',7),(3,'基隆市',7),(4,'台中市',7),(5,'台南市',7),(6,'新竹市',7),(7,'嘉义市',7),(8,'台北县',7),(9,'宜兰县',7),(10,'桃园县',7),(11,'新竹县',7),(12,'苗栗县',7),(13,'台中县',7),(14,'彰化县',7),(15,'南投县',7),(16,'云林县',7),(17,'嘉义县',7),(18,'台南县',7),(19,'高雄县',7),(20,'屏东县',7),(21,'澎湖县',7),(22,'台东县',7),(23,'花莲县',7),(1,'沈阳市',8),(2,'大连市',8),(3,'鞍山市',8),(4,'抚顺市',8),(5,'本溪市',8),(6,'丹东市',8),(7,'锦州市',8),(8,'营口市',8),(9,'阜新市',8),(10,'辽阳市',8),(11,'盘锦市',8),(12,'铁岭市',8),(13,'朝阳市',8),(14,'葫芦岛市',8),(1,'长春市',9),(2,'吉林市',9),(3,'四平市',9),(4,'辽源市',9),(5,'通化市',9),(6,'白山市',9),(7,'松原市',9),(8,'白城市',9),(9,'延边朝鲜族自治州',9),(1,'哈尔滨市',10),(2,'齐齐哈尔市',10),(3,'鹤岗市',10),(4,'双鸭山市',10),(5,'鸡西市',10),(6,'大庆市',10),(7,'伊春市',10),(8,'牡丹江市',10),(9,'佳木斯市',10),(10,'七台河市',10),(11,'黑河市',10),(12,'绥化市',10),(13,'大兴安岭地区',10),(1,'南京市',11),(2,'无锡市',11),(3,'徐州市',11),(4,'常州市',11),(5,'苏州市',11),(6,'南通市',11),(7,'连云港市',11),(8,'淮安市',11),(9,'盐城市',11),(10,'扬州市',11),(11,'镇江市',11),(12,'泰州市',11),(13,'宿迁市',11),(1,'杭州市',12),(2,'宁波市',12),(3,'温州市',12),(4,'嘉兴市',12),(5,'湖州市',12),(6,'绍兴市',12),(7,'金华市',12),(8,'衢州市',12),(9,'舟山市',12),(10,'台州市',12),(11,'丽水市',12),(1,'合肥市',13),(2,'芜湖市',13),(3,'蚌埠市',13),(4,'淮南市',13),(5,'马鞍山市',13),(6,'淮北市',13),(7,'铜陵市',13),(8,'安庆市',13),(9,'黄山市',13),(10,'滁州市',13),(11,'阜阳市',13),(12,'宿州市',13),(13,'巢湖市',13),(14,'六安市',13),(15,'亳州市',13),(16,'池州市',13),(17,'宣城市',13),(1,'福州市',14),(2,'厦门市',14),(3,'莆田市',14),(4,'三明市',14),(5,'泉州市',14),(6,'漳州市',14),(7,'南平市',14),(8,'龙岩市',14),(9,'宁德市',14),(1,'南昌市',15),(2,'景德镇市',15),(3,'萍乡市',15),(4,'九江市',15),(5,'新余市',15),(6,'鹰潭市',15),(7,'赣州市',15),(8,'吉安市',15),(9,'宜春市',15),(10,'抚州市',15),(11,'上饶市',15),(1,'济南市',16),(2,'青岛市',16),(3,'淄博市',16),(4,'枣庄市',16),(5,'东营市',16),(6,'烟台市',16),(7,'潍坊市',16),(8,'济宁市',16),(9,'泰安市',16),(10,'威海市',16),(11,'日照市',16),(12,'莱芜市',16),(13,'临沂市',16),(14,'德州市',16),(15,'聊城市',16),(16,'滨州市',16),(17,'菏泽市',16),(1,'郑州市',17),(2,'开封市',17),(3,'洛阳市',17),(4,'平顶山市',17),(5,'安阳市',17),(6,'鹤壁市',17),(7,'新乡市',17),(8,'焦作市',17),(9,'濮阳市',17),(10,'许昌市',17),(11,'漯河市',17),(12,'三门峡市',17),(13,'南阳市',17),(14,'商丘市',17),(15,'信阳市',17),(16,'周口市',17),(17,'驻马店市',17),(18,'济源市',17),(1,'武汉市',18),(2,'黄石市',18),(3,'十堰市',18),(4,'荆州市',18),(5,'宜昌市',18),(6,'襄樊市',18),(7,'鄂州市',18),(8,'荆门市',18),(9,'孝感市',18),(10,'黄冈市',18),(11,'咸宁市',18),(12,'随州市',18),(13,'仙桃市',18),(14,'天门市',18),(15,'潜江市',18),(16,'神农架林区',18),(17,'恩施土家族苗族自治州',18),(1,'长沙市',19),(2,'株洲市',19),(3,'湘潭市',19),(4,'衡阳市',19),(5,'邵阳市',19),(6,'岳阳市',19),(7,'常德市',19),(8,'张家界市',19),(9,'益阳市',19),(10,'郴州市',19),(11,'永州市',19),(12,'怀化市',19),(13,'娄底市',19),(14,'湘西土家族苗族自治州',19),(1,'广州市',20),(2,'深圳市',20),(3,'珠海市',20),(4,'汕头市',20),(5,'韶关市',20),(6,'佛山市',20),(7,'江门市',20),(8,'湛江市',20),(9,'茂名市',20),(10,'肇庆市',20),(11,'惠州市',20),(12,'梅州市',20),(13,'汕尾市',20),(14,'河源市',20),(15,'阳江市',20),(16,'清远市',20),(17,'东莞市',20),(18,'中山市',20),(19,'潮州市',20),(20,'揭阳市',20),(21,'云浮市',20),(1,'兰州市',21),(2,'金昌市',21),(3,'白银市',21),(4,'天水市',21),(5,'嘉峪关市',21),(6,'武威市',21),(7,'张掖市',21),(8,'平凉市',21),(9,'酒泉市',21),(10,'庆阳市',21),(11,'定西市',21),(12,'陇南市',21),(13,'临夏回族自治州',21),(14,'甘南藏族自治州',21),(1,'成都市',22),(2,'自贡市',22),(3,'攀枝花市',22),(4,'泸州市',22),(5,'德阳市',22),(6,'绵阳市',22),(7,'广元市',22),(8,'遂宁市',22),(9,'内江市',22),(10,'乐山市',22),(11,'南充市',22),(12,'眉山市',22),(13,'宜宾市',22),(14,'广安市',22),(15,'达州市',22),(16,'雅安市',22),(17,'巴中市',22),(18,'资阳市',22),(19,'阿坝藏族羌族自治州',22),(20,'甘孜藏族自治州',22),(21,'凉山彝族自治州',22),(1,'贵阳市',23),(2,'六盘水市',23),(3,'遵义市',23),(4,'安顺市',23),(5,'铜仁地区',23),(6,'毕节地区',23),(7,'黔西南布依族苗族自治州',23),(8,'黔东南苗族侗族自治州',23),(9,'黔南布依族苗族自治州',23),(1,'海口市',24),(2,'三亚市',24),(3,'五指山市',24),(4,'琼海市',24),(5,'儋州市',24),(6,'文昌市',24),(7,'万宁市',24),(8,'东方市',24),(9,'澄迈县',24),(10,'定安县',24),(11,'屯昌县',24),(12,'临高县',24),(13,'白沙黎族自治县',24),(14,'昌江黎族自治县',24),(15,'乐东黎族自治县',24),(16,'陵水黎族自治县',24),(17,'保亭黎族苗族自治县',24),(18,'琼中黎族苗族自治县',24),(1,'昆明市',25),(2,'曲靖市',25),(3,'玉溪市',25),(4,'保山市',25),(5,'昭通市',25),(6,'丽江市',25),(7,'思茅市',25),(8,'临沧市',25),(9,'文山壮族苗族自治州',25),(10,'红河哈尼族彝族自治州',25),(11,'西双版纳傣族自治州',25),(12,'楚雄彝族自治州',25),(13,'大理白族自治州',25),(14,'德宏傣族景颇族自治州',25),(15,'怒江傈傈族自治州',25),(16,'迪庆藏族自治州',25),(1,'西宁市',26),(2,'海东地区',26),(3,'海北藏族自治州',26),(4,'黄南藏族自治州',26),(5,'海南藏族自治州',26),(6,'果洛藏族自治州',26),(7,'玉树藏族自治州',26),(8,'海西蒙古族藏族自治州',26),(1,'西安市',27),(2,'铜川市',27),(3,'宝鸡市',27),(4,'咸阳市',27),(5,'渭南市',27),(6,'延安市',27),(7,'汉中市',27),(8,'榆林市',27),(9,'安康市',27),(10,'商洛市',27),(1,'南宁市',28),(2,'柳州市',28),(3,'桂林市',28),(4,'梧州市',28),(5,'北海市',28),(6,'防城港市',28),(7,'钦州市',28),(8,'贵港市',28),(9,'玉林市',28),(10,'百色市',28),(11,'贺州市',28),(12,'河池市',28),(13,'来宾市',28),(14,'崇左市',28),(1,'拉萨市',29),(2,'那曲地区',29),(3,'昌都地区',29),(4,'山南地区',29),(5,'日喀则地区',29),(6,'阿里地区',29),(7,'林芝地区',29),(1,'银川市',30),(2,'石嘴山市',30),(3,'吴忠市',30),(4,'固原市',30),(5,'中卫市',30),(1,'乌鲁木齐市',31),(2,'克拉玛依市',31),(3,'石河子市　',31),(4,'阿拉尔市',31),(5,'图木舒克市',31),(6,'五家渠市',31),(7,'吐鲁番市',31),(8,'阿克苏市',31),(9,'喀什市',31),(10,'哈密市',31),(11,'和田市',31),(12,'阿图什市',31),(13,'库尔勒市',31),(14,'昌吉市　',31),(15,'阜康市',31),(16,'米泉市',31),(17,'博乐市',31),(18,'伊宁市',31),(19,'奎屯市',31),(20,'塔城市',31),(21,'乌苏市',31),(22,'阿勒泰市',31),(1,'呼和浩特市',32),(2,'包头市',32),(3,'乌海市',32),(4,'赤峰市',32),(5,'通辽市',32),(6,'鄂尔多斯市',32),(7,'呼伦贝尔市',32),(8,'巴彦淖尔市',32),(9,'乌兰察布市',32),(10,'锡林郭勒盟',32),(11,'兴安盟',32),(12,'阿拉善盟',32),(1,'澳门特别行政区',33),(1,'香港特别行政区',34);

/*Table structure for table `constellation` */

DROP TABLE IF EXISTS `constellation`;

CREATE TABLE `constellation` (
  `CID` int(11) NOT NULL AUTO_INCREMENT,
  `CName` varchar(3) NOT NULL,
  `CContent` varchar(11) NOT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `constellation` */

insert  into `constellation`(`CID`,`CName`,`CContent`) values (1,'白羊座','3/21-4/20'),(2,'金牛座','4/21-5/21'),(3,'双子座','5/22-6/21'),(4,'巨蟹座','6/22-7/22'),(5,'狮子座','7/23-8/23'),(6,'处女座','8/24-9/23'),(7,'天秤座','9/24-10/23'),(8,'天蝎座','10/24-11/22'),(9,'射手座','11/23-12/21'),(10,'魔羯座','12/22-1/20'),(11,'水瓶座','1/21-2/19'),(12,'双鱼座','2/20-3/20');

/*Table structure for table `province` */

DROP TABLE IF EXISTS `province`;

CREATE TABLE `province` (
  `pid` int(11) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `province` */

insert  into `province`(`pid`,`NAME`) values (1,'北京市'),(2,'天津市'),(3,'上海市'),(4,'重庆市'),(5,'河北省'),(6,'山西省'),(7,'台湾省'),(8,'辽宁省'),(9,'吉林省'),(10,'黑龙江省'),(11,'江苏省'),(12,'浙江省'),(13,'安徽省'),(14,'福建省'),(15,'江西省'),(16,'山东省'),(17,'河南省'),(18,'湖北省'),(19,'湖南省'),(20,'广东省'),(21,'甘肃省'),(22,'四川省'),(23,'贵州省'),(24,'海南省'),(25,'云南省'),(26,'青海省'),(27,'陕西省'),(28,'广西壮族自治区'),(29,'西藏自治区'),(30,'宁夏回族自治区'),(31,'新疆维吾尔自治区'),(32,'内蒙古自治区'),(33,'澳门特别行政区'),(34,'香港特别行政区');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `UID` int(11) NOT NULL AUTO_INCREMENT,
  `UName` varchar(20) NOT NULL,
  `UPassword` varchar(20) NOT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`UID`,`UName`,`UPassword`) values (1,'user','123456');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
