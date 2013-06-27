# Host: localhost  (Version: 5.0.67-community-nt)
# Date: 2013-06-27 23:48:57
# Generator: MySQL-Front 5.3  (Build 2.42)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

#
# Source for table "answer"
#

DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `Id` int(11) NOT NULL auto_increment,
  `test_id` varchar(255) default NULL,
  `question_id` varchar(255) default NULL,
  `answer_content` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

#
# Data for table "answer"
#

INSERT INTO `answer` VALUES (67,'8','40','开始是填空题的答案'),(74,'8','38','D'),(76,'8','39','A'),(77,'8','39','B'),(78,'8','39','C'),(79,'9','41','A'),(80,'9','42','A'),(82,'9','43','null');

#
# Source for table "news"
#

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `title` varchar(100) NOT NULL default '',
  `time` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `url` varchar(20) NOT NULL,
  `editor` varchar(20) NOT NULL,
  `editor_id` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "news"
#

INSERT INTO `news` VALUES ('我院 “猜灯谜，学十八大”活动在嘉定校区举办','2013-05-18 12:26:28','学院信息','1368851188430.jsp','null',NULL),('软件学院“新生杯”篮球赛在四平路校区落下帷幕','2013-05-18 12:28:42','学院信息','1368851322769.jsp','李锵','liqiang1304'),('html页面内加横向滚动条','2013-05-18 15:25:38','学习资料','1368861938512.jsp','管理员',NULL),('讲座通知---认识自己，认识IT企业','2013-05-19 15:32:21','学院信息','1368948741027.jsp','李锵','liqiang1304'),('test','2013-05-19 16:21:55','学校信息','1368951715891.jsp','李锵','liqiang1304'),('asdfasdf','2013-05-19 17:57:31','学校信息','1368957451779.jsp','李锵','liqiang1304'),('test','2013-05-20 16:26:48','学习资料','1369038408045.jsp','李锵','liqiang1304'),('暑期“创新能力拓展课程”选课名单确认及助教招募','2013-06-11 14:30:33','学院信息','1370932233564.jsp','李锵','liqiang1304'),('暑期“创新能力拓展课程”选课名单确认及助教招募','2013-06-11 14:32:25','学院信息','1370932345265.jsp','李锵','liqiang1304'),('2013年Google奖学金获奖名单公告','2013-06-11 14:55:35','学院信息','1370933735614.jsp','李锵','liqiang1304'),('id insert test','2013-06-13 19:28:19','学院信息','1371122899474.jsp','李锵','liqiang1304');

#
# Source for table "opts"
#

DROP TABLE IF EXISTS `opts`;
CREATE TABLE `opts` (
  `Id` int(11) NOT NULL auto_increment,
  `test_id` varchar(255) default NULL,
  `question_id` varchar(255) default NULL,
  `option_title` varchar(255) default NULL,
  `option_content` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;

#
# Data for table "opts"
#

INSERT INTO `opts` VALUES (161,'8','38','A','a'),(162,'8','38','B','bb'),(163,'8','38','C','c'),(164,'8','38','D','d'),(165,'8','39','A','test1'),(166,'8','39','B','test2'),(167,'8','39','C','test3'),(168,'8','39','D','test4'),(169,'9','41','A','and'),(170,'9','41','B','but'),(171,'9','41','C','or'),(172,'9','41','D','for'),(173,'9','42','A','when'),(174,'9','42','B','what'),(175,'9','42','C','where'),(176,'9','42','D','why'),(181,'9','43','A','Test'),(182,'9','43','B',''),(183,'9','43','C',''),(184,'9','43','D','Test');

#
# Source for table "personinfo"
#

DROP TABLE IF EXISTS `personinfo`;
CREATE TABLE `personinfo` (
  `id` varchar(20) default NULL,
  `password` varchar(20) default NULL,
  `name` varchar(20) default NULL,
  `email` varchar(20) default NULL,
  `authority` varchar(20) default NULL,
  `passTest` int(11) default '0',
  `socre` int(11) default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "personinfo"
#

INSERT INTO `personinfo` VALUES ('aa','aa','aa','aa','teacher',0,0),('ccc','ccc','ccc','ccc','student',0,0),('liqiang1304','7831997','李锵','fx51lq@163.com','admin',1,2),('test','1234','测试','1234','teacher',0,0),('student','1234','学生','email@e.com','teacher',0,0),('teacher','1234','老师','tea@email.com','teacher',0,0),('student1','1234','student1','asdf','null',0,0),('student2','1234','student2','fef','null',0,0),('student3','1234','student3','132','student',0,0),('student4','1234','1234','1234','student',0,0),('teacher2','1234','1234','1234','student',0,0),('admini','1234','1234','gsdfg','admin',0,0),('aab','aa','aa','aa','teacher',0,0),('bac','aaa','aaa','aaa','student',0,0),('abc','abc','abc','abv','student',0,0),('aaycaa','1234','1231','54','teacher',0,0),('fasdf','aaa','aaa','aaa','student',0,0),('asdfreq','aaa','bdfg','fasdf','student',0,0),('wsertgwerg','fff','fff','fff','teacher',0,0),('asdasdf','ggg','ggg','ggg','student',0,0),('adhgfadergf','eee','eee','eee','student',0,0),('fwefawf','eee','eee','eee','student',0,0),('sdhrsetywstre','aaa','aaa','aaa','admin',0,0),('wergwerg','ggg','gg','gg','student',0,0),('qwer','eee','adfg','asdfadsf','student',0,0),('gwergwe','vvv','fasef','awef','student',0,0),('sgdrg','eee','eee','eee','student',0,0),('sdfghsdfg','ttt','ttt','ttt','student',0,0),('hrtheth','vvv','sergwe','wergw','student',0,0),('tyerty','ggg','sger','ger','student',0,0),('herth','hhh','hhh','hhh','teacher',0,0),('ertherth','hhh','hhh','hhh','student',0,0),('liqiang','123456','Richard','fe@13.com','student',5,0),('test123','123456','asd','fe@c.cc','teacher',0,0);

#
# Source for table "question"
#

DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `Id` int(11) NOT NULL auto_increment,
  `test_id` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `topic` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

#
# Data for table "question"
#

INSERT INTO `question` VALUES (38,'8','single','单选题测试'),(39,'8','multi','blanktest'),(40,'8','blank','aab'),(41,'9','single','Stop the child ____he will be falling over．'),(42,'9','single','The beautiful view and friendly people are____ newcomers like the city'),(43,'9','single','单选题测试修改');

#
# Source for table "student_recoder"
#

DROP TABLE IF EXISTS `student_recoder`;
CREATE TABLE `student_recoder` (
  `Id` int(11) NOT NULL auto_increment,
  `student_id` varchar(255) default NULL,
  `test_id` varchar(255) default NULL,
  `total_correct` varchar(255) default NULL,
  `total_question` varchar(255) default NULL,
  `test_time` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# Data for table "student_recoder"
#

INSERT INTO `student_recoder` VALUES (13,'liqiang1304','9','2','3','2013-06-11 13:18');

#
# Source for table "test_title"
#

DROP TABLE IF EXISTS `test_title`;
CREATE TABLE `test_title` (
  `Id` int(11) NOT NULL auto_increment,
  `test_name` varchar(255) NOT NULL default '',
  `test_type` varchar(255) default '',
  `add_time` varchar(255) NOT NULL default '',
  `avaliable` varchar(20) NOT NULL default '',
  `start_time` varchar(255) default NULL,
  `end_time` varchar(255) default NULL,
  `length` int(11) default NULL,
  `editor` varchar(255) default NULL,
  `editor_id` varchar(255) default NULL,
  `people_num` int(11) default NULL,
  `ave` float default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Data for table "test_title"
#

INSERT INTO `test_title` VALUES (8,'测试考试','测试','2013-05-26 13:28:19','yes','2013-05-26 13:28','2013-05-28 13:28',60,'李锵','liqiang1304',0,0),(9,'英语四级考试','英语','2013-06-08 14:35:23','yes','2013-06-10 14:35','2013-06-13 14:35',60,'李锵','liqiang1304',0,0),(10,'测试时间考试','测试','2013-06-08 15:03:53','yes','2013-06-07 15:03','2013-06-13 15:03',60,'李锵','liqiang1304',0,0),(11,'时间测试','测试','2013-06-11 01:11:04','yes','2013-06-01 01:10','2013-06-04 01:11',60,'李锵','liqiang1304',0,0),(12,'老师测试','测试','2013-06-15 21:45:10','yes','2013-06-20 21:45','2013-06-27 21:45',60,'老师','teacher',0,0);

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
