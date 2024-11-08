/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm5ws18
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm5ws18` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm5ws18`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619312530959 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-25 08:56:34',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-04-25 08:56:34',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-04-25 08:56:34',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-04-25 08:56:34',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-04-25 08:56:34',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-04-25 08:56:34',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619312530958,'2021-04-25 09:02:10',1619312443338,'青海省海西蒙古族藏族自治州都兰县香加乡','1','12345678909','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'zaishounongchanpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619312489878 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm5ws18/upload/1619313862970.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm5ws18/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm5ws18/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discusszaishounongchanpin` */

DROP TABLE IF EXISTS `discusszaishounongchanpin`;

CREATE TABLE `discusszaishounongchanpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619312485908 DEFAULT CHARSET=utf8 COMMENT='在售农产品评论表';

/*Data for the table `discusszaishounongchanpin` */

insert  into `discusszaishounongchanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (201,'2021-04-25 08:56:34',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusszaishounongchanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (202,'2021-04-25 08:56:34',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusszaishounongchanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (203,'2021-04-25 08:56:34',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusszaishounongchanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (204,'2021-04-25 08:56:34',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusszaishounongchanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (205,'2021-04-25 08:56:34',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusszaishounongchanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (206,'2021-04-25 08:56:34',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discusszaishounongchanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619312485907,'2021-04-25 09:01:25',142,1619312443338,'1','11',NULL);

/*Table structure for table `huafeifenlei` */

DROP TABLE IF EXISTS `huafeifenlei`;

CREATE TABLE `huafeifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huafeifenlei` varchar(200) DEFAULT NULL COMMENT '化肥分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619313802517 DEFAULT CHARSET=utf8 COMMENT='化肥分类';

/*Data for the table `huafeifenlei` */

insert  into `huafeifenlei`(`id`,`addtime`,`huafeifenlei`) values (102,'2021-04-25 08:56:34','化肥分类2');
insert  into `huafeifenlei`(`id`,`addtime`,`huafeifenlei`) values (103,'2021-04-25 08:56:34','化肥分类3');
insert  into `huafeifenlei`(`id`,`addtime`,`huafeifenlei`) values (104,'2021-04-25 08:56:34','化肥分类4');
insert  into `huafeifenlei`(`id`,`addtime`,`huafeifenlei`) values (105,'2021-04-25 08:56:34','化肥分类5');
insert  into `huafeifenlei`(`id`,`addtime`,`huafeifenlei`) values (106,'2021-04-25 08:56:34','化肥分类6');
insert  into `huafeifenlei`(`id`,`addtime`,`huafeifenlei`) values (1619313802516,'2021-04-25 09:23:21','1');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619313857837 DEFAULT CHARSET=utf8 COMMENT='农业政策';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (191,'2021-04-25 08:56:34','标题1','简介1','http://localhost:8080/ssm5ws18/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (192,'2021-04-25 08:56:34','标题2','简介2','http://localhost:8080/ssm5ws18/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (193,'2021-04-25 08:56:34','标题3','简介3','http://localhost:8080/ssm5ws18/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (195,'2021-04-25 08:56:34','标题5','简介5','http://localhost:8080/ssm5ws18/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (196,'2021-04-25 08:56:34','标题6','简介6','http://localhost:8080/ssm5ws18/upload/news_picture6.jpg','内容6');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1619313857836,'2021-04-25 09:24:16','1','1','http://localhost:8080/ssm5ws18/upload/1619313854208.jpg','<p>1</p>');

/*Table structure for table `nongchanpinfenlei` */

DROP TABLE IF EXISTS `nongchanpinfenlei`;

CREATE TABLE `nongchanpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619313749214 DEFAULT CHARSET=utf8 COMMENT='农产品分类';

/*Data for the table `nongchanpinfenlei` */

insert  into `nongchanpinfenlei`(`id`,`addtime`,`fenlei`) values (52,'2021-04-25 08:56:33','分类2');
insert  into `nongchanpinfenlei`(`id`,`addtime`,`fenlei`) values (53,'2021-04-25 08:56:33','分类3');
insert  into `nongchanpinfenlei`(`id`,`addtime`,`fenlei`) values (54,'2021-04-25 08:56:33','分类4');
insert  into `nongchanpinfenlei`(`id`,`addtime`,`fenlei`) values (55,'2021-04-25 08:56:33','分类5');
insert  into `nongchanpinfenlei`(`id`,`addtime`,`fenlei`) values (56,'2021-04-25 08:56:33','分类6');
insert  into `nongchanpinfenlei`(`id`,`addtime`,`fenlei`) values (1619313749213,'2021-04-25 09:22:28','1');

/*Table structure for table `nongchanpingongqiuliang` */

DROP TABLE IF EXISTS `nongchanpingongqiuliang`;

CREATE TABLE `nongchanpingongqiuliang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `chanpintupian` varchar(200) DEFAULT NULL COMMENT '产品图片',
  `shijian` varchar(200) DEFAULT NULL COMMENT '时间',
  `gongqiuliang` varchar(200) DEFAULT NULL COMMENT '供求量',
  `xuqiuliang` varchar(200) DEFAULT NULL COMMENT '需求量',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619313778475 DEFAULT CHARSET=utf8 COMMENT='农产品供求量';

/*Data for the table `nongchanpingongqiuliang` */

insert  into `nongchanpingongqiuliang`(`id`,`addtime`,`chanpinmingcheng`,`chanpinfenlei`,`chanpintupian`,`shijian`,`gongqiuliang`,`xuqiuliang`,`xiangqing`) values (71,'2021-04-25 08:56:34','产品名称1','产品分类1','http://localhost:8080/ssm5ws18/upload/nongchanpingongqiuliang_chanpintupian1.jpg','时间1','供求量1','需求量1','详情1');
insert  into `nongchanpingongqiuliang`(`id`,`addtime`,`chanpinmingcheng`,`chanpinfenlei`,`chanpintupian`,`shijian`,`gongqiuliang`,`xuqiuliang`,`xiangqing`) values (72,'2021-04-25 08:56:34','产品名称2','产品分类2','http://localhost:8080/ssm5ws18/upload/nongchanpingongqiuliang_chanpintupian2.jpg','时间2','供求量2','需求量2','详情2');
insert  into `nongchanpingongqiuliang`(`id`,`addtime`,`chanpinmingcheng`,`chanpinfenlei`,`chanpintupian`,`shijian`,`gongqiuliang`,`xuqiuliang`,`xiangqing`) values (73,'2021-04-25 08:56:34','产品名称3','产品分类3','http://localhost:8080/ssm5ws18/upload/nongchanpingongqiuliang_chanpintupian3.jpg','时间3','供求量3','需求量3','详情3');
insert  into `nongchanpingongqiuliang`(`id`,`addtime`,`chanpinmingcheng`,`chanpinfenlei`,`chanpintupian`,`shijian`,`gongqiuliang`,`xuqiuliang`,`xiangqing`) values (74,'2021-04-25 08:56:34','产品名称4','产品分类4','http://localhost:8080/ssm5ws18/upload/nongchanpingongqiuliang_chanpintupian4.jpg','时间4','供求量4','需求量4','详情4');
insert  into `nongchanpingongqiuliang`(`id`,`addtime`,`chanpinmingcheng`,`chanpinfenlei`,`chanpintupian`,`shijian`,`gongqiuliang`,`xuqiuliang`,`xiangqing`) values (75,'2021-04-25 08:56:34','产品名称5','产品分类5','http://localhost:8080/ssm5ws18/upload/nongchanpingongqiuliang_chanpintupian5.jpg','时间5','供求量5','需求量5','详情5');
insert  into `nongchanpingongqiuliang`(`id`,`addtime`,`chanpinmingcheng`,`chanpinfenlei`,`chanpintupian`,`shijian`,`gongqiuliang`,`xuqiuliang`,`xiangqing`) values (76,'2021-04-25 08:56:34','产品名称6','产品分类6','http://localhost:8080/ssm5ws18/upload/nongchanpingongqiuliang_chanpintupian6.jpg','时间6','供求量6','需求量6','详情6');
insert  into `nongchanpingongqiuliang`(`id`,`addtime`,`chanpinmingcheng`,`chanpinfenlei`,`chanpintupian`,`shijian`,`gongqiuliang`,`xuqiuliang`,`xiangqing`) values (1619313778474,'2021-04-25 09:22:57','1','1','http://localhost:8080/ssm5ws18/upload/1619313774611.jpg','1','1','1','<p>1</p>');

/*Table structure for table `nongchanpinjiage` */

DROP TABLE IF EXISTS `nongchanpinjiage`;

CREATE TABLE `nongchanpinjiage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `riqi` varchar(200) DEFAULT NULL COMMENT '日期',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619313764720 DEFAULT CHARSET=utf8 COMMENT='农产品价格';

/*Data for the table `nongchanpinjiage` */

insert  into `nongchanpinjiage`(`id`,`addtime`,`bianhao`,`mingcheng`,`fenlei`,`jiage`,`riqi`,`tupian`) values (62,'2021-04-25 08:56:34','编号2','名称2','分类2',2,'日期2','http://localhost:8080/ssm5ws18/upload/nongchanpinjiage_tupian2.jpg');
insert  into `nongchanpinjiage`(`id`,`addtime`,`bianhao`,`mingcheng`,`fenlei`,`jiage`,`riqi`,`tupian`) values (63,'2021-04-25 08:56:34','编号3','名称3','分类3',3,'日期3','http://localhost:8080/ssm5ws18/upload/nongchanpinjiage_tupian3.jpg');
insert  into `nongchanpinjiage`(`id`,`addtime`,`bianhao`,`mingcheng`,`fenlei`,`jiage`,`riqi`,`tupian`) values (64,'2021-04-25 08:56:34','编号4','名称4','分类4',4,'日期4','http://localhost:8080/ssm5ws18/upload/nongchanpinjiage_tupian4.jpg');
insert  into `nongchanpinjiage`(`id`,`addtime`,`bianhao`,`mingcheng`,`fenlei`,`jiage`,`riqi`,`tupian`) values (65,'2021-04-25 08:56:34','编号5','名称5','分类5',5,'日期5','http://localhost:8080/ssm5ws18/upload/nongchanpinjiage_tupian5.jpg');
insert  into `nongchanpinjiage`(`id`,`addtime`,`bianhao`,`mingcheng`,`fenlei`,`jiage`,`riqi`,`tupian`) values (66,'2021-04-25 08:56:34','编号6','名称6','分类6',6,'日期6','http://localhost:8080/ssm5ws18/upload/nongchanpinjiage_tupian6.jpg');
insert  into `nongchanpinjiage`(`id`,`addtime`,`bianhao`,`mingcheng`,`fenlei`,`jiage`,`riqi`,`tupian`) values (1619313764719,'2021-04-25 09:22:44','1','1','1',1,'1','http://localhost:8080/ssm5ws18/upload/1619313763287.jpg');

/*Table structure for table `nongyaofenlei` */

DROP TABLE IF EXISTS `nongyaofenlei`;

CREATE TABLE `nongyaofenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `nongyaofenlei` varchar(200) DEFAULT NULL COMMENT '农药分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619313818425 DEFAULT CHARSET=utf8 COMMENT='农药分类';

/*Data for the table `nongyaofenlei` */

insert  into `nongyaofenlei`(`id`,`addtime`,`nongyaofenlei`) values (122,'2021-04-25 08:56:34','农药分类2');
insert  into `nongyaofenlei`(`id`,`addtime`,`nongyaofenlei`) values (123,'2021-04-25 08:56:34','农药分类3');
insert  into `nongyaofenlei`(`id`,`addtime`,`nongyaofenlei`) values (124,'2021-04-25 08:56:34','农药分类4');
insert  into `nongyaofenlei`(`id`,`addtime`,`nongyaofenlei`) values (125,'2021-04-25 08:56:34','农药分类5');
insert  into `nongyaofenlei`(`id`,`addtime`,`nongyaofenlei`) values (126,'2021-04-25 08:56:34','农药分类6');
insert  into `nongyaofenlei`(`id`,`addtime`,`nongyaofenlei`) values (1619313818424,'2021-04-25 09:23:38','1');

/*Table structure for table `nongyehuafei` */

DROP TABLE IF EXISTS `nongyehuafei`;

CREATE TABLE `nongyehuafei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huafeimingcheng` varchar(200) DEFAULT NULL COMMENT '化肥名称',
  `huafeifenlei` varchar(200) DEFAULT NULL COMMENT '化肥分类',
  `huafeichandi` varchar(200) DEFAULT NULL COMMENT '化肥产地',
  `huafeijieshao` varchar(200) DEFAULT NULL COMMENT '化肥介绍',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619313812736 DEFAULT CHARSET=utf8 COMMENT='农业化肥';

/*Data for the table `nongyehuafei` */

insert  into `nongyehuafei`(`id`,`addtime`,`huafeimingcheng`,`huafeifenlei`,`huafeichandi`,`huafeijieshao`,`tupian`) values (112,'2021-04-25 08:56:34','化肥名称2','化肥分类2','化肥产地2','化肥介绍2','http://localhost:8080/ssm5ws18/upload/nongyehuafei_tupian2.jpg');
insert  into `nongyehuafei`(`id`,`addtime`,`huafeimingcheng`,`huafeifenlei`,`huafeichandi`,`huafeijieshao`,`tupian`) values (113,'2021-04-25 08:56:34','化肥名称3','化肥分类3','化肥产地3','化肥介绍3','http://localhost:8080/ssm5ws18/upload/nongyehuafei_tupian3.jpg');
insert  into `nongyehuafei`(`id`,`addtime`,`huafeimingcheng`,`huafeifenlei`,`huafeichandi`,`huafeijieshao`,`tupian`) values (114,'2021-04-25 08:56:34','化肥名称4','化肥分类4','化肥产地4','化肥介绍4','http://localhost:8080/ssm5ws18/upload/nongyehuafei_tupian4.jpg');
insert  into `nongyehuafei`(`id`,`addtime`,`huafeimingcheng`,`huafeifenlei`,`huafeichandi`,`huafeijieshao`,`tupian`) values (115,'2021-04-25 08:56:34','化肥名称5','化肥分类5','化肥产地5','化肥介绍5','http://localhost:8080/ssm5ws18/upload/nongyehuafei_tupian5.jpg');
insert  into `nongyehuafei`(`id`,`addtime`,`huafeimingcheng`,`huafeifenlei`,`huafeichandi`,`huafeijieshao`,`tupian`) values (116,'2021-04-25 08:56:34','化肥名称6','化肥分类6','化肥产地6','化肥介绍6','http://localhost:8080/ssm5ws18/upload/nongyehuafei_tupian6.jpg');
insert  into `nongyehuafei`(`id`,`addtime`,`huafeimingcheng`,`huafeifenlei`,`huafeichandi`,`huafeijieshao`,`tupian`) values (1619313812735,'2021-04-25 09:23:32','1','1','1','1','http://localhost:8080/ssm5ws18/upload/1619313811908.jpg');

/*Table structure for table `nongyejishu` */

DROP TABLE IF EXISTS `nongyejishu`;

CREATE TABLE `nongyejishu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jishumingcheng` varchar(200) DEFAULT NULL COMMENT '技术名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jishujieshao` longtext COMMENT '技术介绍',
  `yingyongqingkuang` longtext COMMENT '应用情况',
  `zixunzhuanjia` varchar(200) DEFAULT NULL COMMENT '咨询专家',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619313738614 DEFAULT CHARSET=utf8 COMMENT='农业技术';

/*Data for the table `nongyejishu` */

insert  into `nongyejishu`(`id`,`addtime`,`jishumingcheng`,`tupian`,`jishujieshao`,`yingyongqingkuang`,`zixunzhuanjia`) values (42,'2021-04-25 08:56:33','技术名称2','http://localhost:8080/ssm5ws18/upload/nongyejishu_tupian2.jpg','技术介绍2','应用情况2','咨询专家2');
insert  into `nongyejishu`(`id`,`addtime`,`jishumingcheng`,`tupian`,`jishujieshao`,`yingyongqingkuang`,`zixunzhuanjia`) values (43,'2021-04-25 08:56:33','技术名称3','http://localhost:8080/ssm5ws18/upload/nongyejishu_tupian3.jpg','技术介绍3','应用情况3','咨询专家3');
insert  into `nongyejishu`(`id`,`addtime`,`jishumingcheng`,`tupian`,`jishujieshao`,`yingyongqingkuang`,`zixunzhuanjia`) values (44,'2021-04-25 08:56:33','技术名称4','http://localhost:8080/ssm5ws18/upload/nongyejishu_tupian4.jpg','技术介绍4','应用情况4','咨询专家4');
insert  into `nongyejishu`(`id`,`addtime`,`jishumingcheng`,`tupian`,`jishujieshao`,`yingyongqingkuang`,`zixunzhuanjia`) values (45,'2021-04-25 08:56:33','技术名称5','http://localhost:8080/ssm5ws18/upload/nongyejishu_tupian5.jpg','技术介绍5','应用情况5','咨询专家5');
insert  into `nongyejishu`(`id`,`addtime`,`jishumingcheng`,`tupian`,`jishujieshao`,`yingyongqingkuang`,`zixunzhuanjia`) values (46,'2021-04-25 08:56:33','技术名称6','http://localhost:8080/ssm5ws18/upload/nongyejishu_tupian6.jpg','技术介绍6','应用情况6','咨询专家6');
insert  into `nongyejishu`(`id`,`addtime`,`jishumingcheng`,`tupian`,`jishujieshao`,`yingyongqingkuang`,`zixunzhuanjia`) values (1619313738613,'2021-04-25 09:22:18','1','http://localhost:8080/ssm5ws18/upload/1619313734271.jpg','<p>1</p>','1','1');

/*Table structure for table `nongyenongyao` */

DROP TABLE IF EXISTS `nongyenongyao`;

CREATE TABLE `nongyenongyao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `nongyaomingcheng` varchar(200) DEFAULT NULL COMMENT '农药名称',
  `nongyaofenlei` varchar(200) DEFAULT NULL COMMENT '农药分类',
  `nongyaochandi` varchar(200) DEFAULT NULL COMMENT '农药产地',
  `nongyaojieshao` varchar(200) DEFAULT NULL COMMENT '农药介绍',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619313826492 DEFAULT CHARSET=utf8 COMMENT='农业农药';

/*Data for the table `nongyenongyao` */

insert  into `nongyenongyao`(`id`,`addtime`,`nongyaomingcheng`,`nongyaofenlei`,`nongyaochandi`,`nongyaojieshao`,`tupian`) values (131,'2021-04-25 08:56:34','农药名称1','农药分类1','农药产地1','农药介绍1','http://localhost:8080/ssm5ws18/upload/nongyenongyao_tupian1.jpg');
insert  into `nongyenongyao`(`id`,`addtime`,`nongyaomingcheng`,`nongyaofenlei`,`nongyaochandi`,`nongyaojieshao`,`tupian`) values (132,'2021-04-25 08:56:34','农药名称2','农药分类2','农药产地2','农药介绍2','http://localhost:8080/ssm5ws18/upload/nongyenongyao_tupian2.jpg');
insert  into `nongyenongyao`(`id`,`addtime`,`nongyaomingcheng`,`nongyaofenlei`,`nongyaochandi`,`nongyaojieshao`,`tupian`) values (133,'2021-04-25 08:56:34','农药名称3','农药分类3','农药产地3','农药介绍3','http://localhost:8080/ssm5ws18/upload/nongyenongyao_tupian3.jpg');
insert  into `nongyenongyao`(`id`,`addtime`,`nongyaomingcheng`,`nongyaofenlei`,`nongyaochandi`,`nongyaojieshao`,`tupian`) values (134,'2021-04-25 08:56:34','农药名称4','农药分类4','农药产地4','农药介绍4','http://localhost:8080/ssm5ws18/upload/nongyenongyao_tupian4.jpg');
insert  into `nongyenongyao`(`id`,`addtime`,`nongyaomingcheng`,`nongyaofenlei`,`nongyaochandi`,`nongyaojieshao`,`tupian`) values (135,'2021-04-25 08:56:34','农药名称5','农药分类5','农药产地5','农药介绍5','http://localhost:8080/ssm5ws18/upload/nongyenongyao_tupian5.jpg');
insert  into `nongyenongyao`(`id`,`addtime`,`nongyaomingcheng`,`nongyaofenlei`,`nongyaochandi`,`nongyaojieshao`,`tupian`) values (136,'2021-04-25 08:56:34','农药名称6','农药分类6','农药产地6','农药介绍6','http://localhost:8080/ssm5ws18/upload/nongyenongyao_tupian6.jpg');
insert  into `nongyenongyao`(`id`,`addtime`,`nongyaomingcheng`,`nongyaofenlei`,`nongyaochandi`,`nongyaojieshao`,`tupian`) values (1619313826491,'2021-04-25 09:23:46','1','1','1','1','http://localhost:8080/ssm5ws18/upload/1619313825182.jpg');

/*Table structure for table `nongyezhongzi` */

DROP TABLE IF EXISTS `nongyezhongzi`;

CREATE TABLE `nongyezhongzi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhongzimingcheng` varchar(200) DEFAULT NULL COMMENT '种子名称',
  `zhongzifenlei` varchar(200) DEFAULT NULL COMMENT '种子分类',
  `zhongzichandi` varchar(200) DEFAULT NULL COMMENT '种子产地',
  `zhongzijieshao` varchar(200) DEFAULT NULL COMMENT '种子介绍',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619313796290 DEFAULT CHARSET=utf8 COMMENT='农业种子';

/*Data for the table `nongyezhongzi` */

insert  into `nongyezhongzi`(`id`,`addtime`,`zhongzimingcheng`,`zhongzifenlei`,`zhongzichandi`,`zhongzijieshao`,`tupian`) values (91,'2021-04-25 08:56:34','种子名称1','种子分类1','种子产地1','种子介绍1','http://localhost:8080/ssm5ws18/upload/nongyezhongzi_tupian1.jpg');
insert  into `nongyezhongzi`(`id`,`addtime`,`zhongzimingcheng`,`zhongzifenlei`,`zhongzichandi`,`zhongzijieshao`,`tupian`) values (92,'2021-04-25 08:56:34','种子名称2','种子分类2','种子产地2','种子介绍2','http://localhost:8080/ssm5ws18/upload/nongyezhongzi_tupian2.jpg');
insert  into `nongyezhongzi`(`id`,`addtime`,`zhongzimingcheng`,`zhongzifenlei`,`zhongzichandi`,`zhongzijieshao`,`tupian`) values (93,'2021-04-25 08:56:34','种子名称3','种子分类3','种子产地3','种子介绍3','http://localhost:8080/ssm5ws18/upload/nongyezhongzi_tupian3.jpg');
insert  into `nongyezhongzi`(`id`,`addtime`,`zhongzimingcheng`,`zhongzifenlei`,`zhongzichandi`,`zhongzijieshao`,`tupian`) values (94,'2021-04-25 08:56:34','种子名称4','种子分类4','种子产地4','种子介绍4','http://localhost:8080/ssm5ws18/upload/nongyezhongzi_tupian4.jpg');
insert  into `nongyezhongzi`(`id`,`addtime`,`zhongzimingcheng`,`zhongzifenlei`,`zhongzichandi`,`zhongzijieshao`,`tupian`) values (95,'2021-04-25 08:56:34','种子名称5','种子分类5','种子产地5','种子介绍5','http://localhost:8080/ssm5ws18/upload/nongyezhongzi_tupian5.jpg');
insert  into `nongyezhongzi`(`id`,`addtime`,`zhongzimingcheng`,`zhongzifenlei`,`zhongzichandi`,`zhongzijieshao`,`tupian`) values (96,'2021-04-25 08:56:34','种子名称6','种子分类6','种子产地6','种子介绍6','http://localhost:8080/ssm5ws18/upload/nongyezhongzi_tupian6.jpg');
insert  into `nongyezhongzi`(`id`,`addtime`,`zhongzimingcheng`,`zhongzifenlei`,`zhongzichandi`,`zhongzijieshao`,`tupian`) values (1619313796289,'2021-04-25 09:23:15','1','1','1','1','http://localhost:8080/ssm5ws18/upload/1619313794395.jpg');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'zaishounongchanpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1619312610815 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619312610814,'2021-04-25 09:03:30','2021425933056023482','zaishounongchanpin',1619312443338,142,'名称2','http://localhost:8080/ssm5ws18/upload/zaishounongchanpin_tupian2.jpg',1,99.9,99.9,99.9,99.9,1,'已支付','青海省海西蒙古族藏族自治州都兰县香加乡','12345678909','1');

/*Table structure for table `qiyeyonghu` */

DROP TABLE IF EXISTS `qiyeyonghu`;

CREATE TABLE `qiyeyonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) NOT NULL COMMENT '企业账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyexingming` varchar(200) NOT NULL COMMENT '企业姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `youxiang` varchar(200) NOT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyezhanghao` (`qiyezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619313411142 DEFAULT CHARSET=utf8 COMMENT='企业用户';

/*Data for the table `qiyeyonghu` */

insert  into `qiyeyonghu`(`id`,`addtime`,`qiyezhanghao`,`mima`,`qiyexingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`money`) values (32,'2021-04-25 08:56:33','企业用户2','123456','企业姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm5ws18/upload/qiyeyonghu_zhaopian2.jpg',100);
insert  into `qiyeyonghu`(`id`,`addtime`,`qiyezhanghao`,`mima`,`qiyexingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`money`) values (33,'2021-04-25 08:56:33','企业用户3','123456','企业姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssm5ws18/upload/qiyeyonghu_zhaopian3.jpg',100);
insert  into `qiyeyonghu`(`id`,`addtime`,`qiyezhanghao`,`mima`,`qiyexingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`money`) values (34,'2021-04-25 08:56:33','企业用户4','123456','企业姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm5ws18/upload/qiyeyonghu_zhaopian4.jpg',100);
insert  into `qiyeyonghu`(`id`,`addtime`,`qiyezhanghao`,`mima`,`qiyexingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`money`) values (35,'2021-04-25 08:56:33','企业用户5','123456','企业姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm5ws18/upload/qiyeyonghu_zhaopian5.jpg',100);
insert  into `qiyeyonghu`(`id`,`addtime`,`qiyezhanghao`,`mima`,`qiyexingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`money`) values (36,'2021-04-25 08:56:33','企业用户6','123456','企业姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm5ws18/upload/qiyeyonghu_zhaopian6.jpg',100);
insert  into `qiyeyonghu`(`id`,`addtime`,`qiyezhanghao`,`mima`,`qiyexingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`money`) values (1619313411141,'2021-04-25 09:16:51','3','3','3','男','12345678909','3@qq.com','530121198903119561','http://localhost:8080/ssm5ws18/upload/1619313424531.jpg',0);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619312487273 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619312487272,'2021-04-25 09:01:27',1619312443338,142,'zaishounongchanpin','名称2','http://localhost:8080/ssm5ws18/upload/zaishounongchanpin_tupian2.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1619312443338,'1','yonghu','用户','jeuk07055889dqwgb5kb4mfuflq5c8qw','2021-04-25 09:00:49','2021-04-25 10:00:50');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619312657841,'2','zhongzhiyonghu','种植用户','71oj9tugst6oix41k0j34fnhey5yx99c','2021-04-25 09:04:24','2021-04-25 10:04:24');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1619313411141,'3','qiyeyonghu','企业用户','jtkizrahbt3mwl2v2vizzw6vjzpy2y5t','2021-04-25 09:16:56','2021-04-25 10:16:57');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1,'abo','users','管理员','us0u10kblnu942p1od4004f7q4oki4dd','2021-04-25 09:21:30','2021-04-25 10:21:31');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-25 08:56:34');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619312443339 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`tupian`,`money`) values (12,'2021-04-25 08:56:33','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssm5ws18/upload/yonghu_tupian2.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`tupian`,`money`) values (13,'2021-04-25 08:56:33','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssm5ws18/upload/yonghu_tupian3.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`tupian`,`money`) values (14,'2021-04-25 08:56:33','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssm5ws18/upload/yonghu_tupian4.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`tupian`,`money`) values (15,'2021-04-25 08:56:33','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssm5ws18/upload/yonghu_tupian5.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`tupian`,`money`) values (16,'2021-04-25 08:56:33','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssm5ws18/upload/yonghu_tupian6.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`tupian`,`money`) values (1619312443338,'2021-04-25 09:00:43','1','1','1','男','12345678909','1@qq.com','http://localhost:8080/ssm5ws18/upload/1619312556633.jpg',200.1);

/*Table structure for table `zaishounongchanpin` */

DROP TABLE IF EXISTS `zaishounongchanpin`;

CREATE TABLE `zaishounongchanpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `shengchandi` varchar(200) DEFAULT NULL COMMENT '生产地',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jieshao` longtext COMMENT '介绍',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  `zhongzhizhanghao` varchar(200) DEFAULT NULL COMMENT '种植账号',
  `zhongzhixingming` varchar(200) DEFAULT NULL COMMENT '种植姓名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619313840263 DEFAULT CHARSET=utf8 COMMENT='在售农产品';

/*Data for the table `zaishounongchanpin` */

insert  into `zaishounongchanpin`(`id`,`addtime`,`mingcheng`,`shengchandi`,`tupian`,`jieshao`,`shengchanriqi`,`zhongzhizhanghao`,`zhongzhixingming`,`thumbsupnum`,`crazilynum`,`price`,`userid`) values (141,'2021-04-25 08:56:34','名称1','生产地1','http://localhost:8080/ssm5ws18/upload/zaishounongchanpin_tupian1.jpg','介绍1','2021-04-25','种植账号1','种植姓名1',1,1,99.9,1);
insert  into `zaishounongchanpin`(`id`,`addtime`,`mingcheng`,`shengchandi`,`tupian`,`jieshao`,`shengchanriqi`,`zhongzhizhanghao`,`zhongzhixingming`,`thumbsupnum`,`crazilynum`,`price`,`userid`) values (142,'2021-04-25 08:56:34','名称2','生产地2','http://localhost:8080/ssm5ws18/upload/zaishounongchanpin_tupian2.jpg','介绍2','2021-04-25','种植账号2','种植姓名2',3,2,99.9,2);
insert  into `zaishounongchanpin`(`id`,`addtime`,`mingcheng`,`shengchandi`,`tupian`,`jieshao`,`shengchanriqi`,`zhongzhizhanghao`,`zhongzhixingming`,`thumbsupnum`,`crazilynum`,`price`,`userid`) values (143,'2021-04-25 08:56:34','名称3','生产地3','http://localhost:8080/ssm5ws18/upload/zaishounongchanpin_tupian3.jpg','介绍3','2021-04-25','种植账号3','种植姓名3',3,3,99.9,3);
insert  into `zaishounongchanpin`(`id`,`addtime`,`mingcheng`,`shengchandi`,`tupian`,`jieshao`,`shengchanriqi`,`zhongzhizhanghao`,`zhongzhixingming`,`thumbsupnum`,`crazilynum`,`price`,`userid`) values (144,'2021-04-25 08:56:34','名称4','生产地4','http://localhost:8080/ssm5ws18/upload/zaishounongchanpin_tupian4.jpg','介绍4','2021-04-25','种植账号4','种植姓名4',4,4,99.9,4);
insert  into `zaishounongchanpin`(`id`,`addtime`,`mingcheng`,`shengchandi`,`tupian`,`jieshao`,`shengchanriqi`,`zhongzhizhanghao`,`zhongzhixingming`,`thumbsupnum`,`crazilynum`,`price`,`userid`) values (145,'2021-04-25 08:56:34','名称5','生产地5','http://localhost:8080/ssm5ws18/upload/zaishounongchanpin_tupian5.jpg','介绍5','2021-04-25','种植账号5','种植姓名5',5,5,99.9,5);
insert  into `zaishounongchanpin`(`id`,`addtime`,`mingcheng`,`shengchandi`,`tupian`,`jieshao`,`shengchanriqi`,`zhongzhizhanghao`,`zhongzhixingming`,`thumbsupnum`,`crazilynum`,`price`,`userid`) values (146,'2021-04-25 08:56:34','名称6','生产地6','http://localhost:8080/ssm5ws18/upload/zaishounongchanpin_tupian6.jpg','介绍6','2021-04-25','种植账号6','种植姓名6',6,6,99.9,6);
insert  into `zaishounongchanpin`(`id`,`addtime`,`mingcheng`,`shengchandi`,`tupian`,`jieshao`,`shengchanriqi`,`zhongzhizhanghao`,`zhongzhixingming`,`thumbsupnum`,`crazilynum`,`price`,`userid`) values (1619312695286,'2021-04-25 09:04:54','2','2','http://localhost:8080/ssm5ws18/upload/1619312687298.jpg','2','2021-04-18','2','2',0,0,234,NULL);
insert  into `zaishounongchanpin`(`id`,`addtime`,`mingcheng`,`shengchandi`,`tupian`,`jieshao`,`shengchanriqi`,`zhongzhizhanghao`,`zhongzhixingming`,`thumbsupnum`,`crazilynum`,`price`,`userid`) values (1619313840262,'2021-04-25 09:23:59','1','1','http://localhost:8080/ssm5ws18/upload/1619313831571.jpg','1','2021-04-25','1','1',0,0,1,NULL);

/*Table structure for table `zhongzhiyonghu` */

DROP TABLE IF EXISTS `zhongzhiyonghu`;

CREATE TABLE `zhongzhiyonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhongzhizhanghao` varchar(200) NOT NULL COMMENT '种植账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhongzhixingming` varchar(200) NOT NULL COMMENT '种植姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `youxiang` varchar(200) NOT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhongzhizhanghao` (`zhongzhizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619312657842 DEFAULT CHARSET=utf8 COMMENT='种植用户';

/*Data for the table `zhongzhiyonghu` */

insert  into `zhongzhiyonghu`(`id`,`addtime`,`zhongzhizhanghao`,`mima`,`zhongzhixingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`money`) values (22,'2021-04-25 08:56:33','种植用户2','123456','种植姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm5ws18/upload/zhongzhiyonghu_zhaopian2.jpg',100);
insert  into `zhongzhiyonghu`(`id`,`addtime`,`zhongzhizhanghao`,`mima`,`zhongzhixingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`money`) values (23,'2021-04-25 08:56:33','种植用户3','123456','种植姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssm5ws18/upload/zhongzhiyonghu_zhaopian3.jpg',100);
insert  into `zhongzhiyonghu`(`id`,`addtime`,`zhongzhizhanghao`,`mima`,`zhongzhixingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`money`) values (24,'2021-04-25 08:56:33','种植用户4','123456','种植姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm5ws18/upload/zhongzhiyonghu_zhaopian4.jpg',100);
insert  into `zhongzhiyonghu`(`id`,`addtime`,`zhongzhizhanghao`,`mima`,`zhongzhixingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`money`) values (25,'2021-04-25 08:56:33','种植用户5','123456','种植姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm5ws18/upload/zhongzhiyonghu_zhaopian5.jpg',100);
insert  into `zhongzhiyonghu`(`id`,`addtime`,`zhongzhizhanghao`,`mima`,`zhongzhixingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`money`) values (26,'2021-04-25 08:56:33','种植用户6','123456','种植姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm5ws18/upload/zhongzhiyonghu_zhaopian6.jpg',100);
insert  into `zhongzhiyonghu`(`id`,`addtime`,`zhongzhizhanghao`,`mima`,`zhongzhixingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`money`) values (1619312657841,'2021-04-25 09:04:17','2','2','2',NULL,'12345678909','1@qq.com','530121198903119561',NULL,0);

/*Table structure for table `zhongzifenlei` */

DROP TABLE IF EXISTS `zhongzifenlei`;

CREATE TABLE `zhongzifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhongzifenlei` varchar(200) DEFAULT NULL COMMENT '种子分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619313784874 DEFAULT CHARSET=utf8 COMMENT='种子分类';

/*Data for the table `zhongzifenlei` */

insert  into `zhongzifenlei`(`id`,`addtime`,`zhongzifenlei`) values (81,'2021-04-25 08:56:34','种子分类1');
insert  into `zhongzifenlei`(`id`,`addtime`,`zhongzifenlei`) values (82,'2021-04-25 08:56:34','种子分类2');
insert  into `zhongzifenlei`(`id`,`addtime`,`zhongzifenlei`) values (83,'2021-04-25 08:56:34','种子分类3');
insert  into `zhongzifenlei`(`id`,`addtime`,`zhongzifenlei`) values (84,'2021-04-25 08:56:34','种子分类4');
insert  into `zhongzifenlei`(`id`,`addtime`,`zhongzifenlei`) values (85,'2021-04-25 08:56:34','种子分类5');
insert  into `zhongzifenlei`(`id`,`addtime`,`zhongzifenlei`) values (86,'2021-04-25 08:56:34','种子分类6');
insert  into `zhongzifenlei`(`id`,`addtime`,`zhongzifenlei`) values (1619313784873,'2021-04-25 09:23:04','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
