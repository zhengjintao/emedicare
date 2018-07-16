-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: emedicare
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cdata_appointments`
--

DROP TABLE IF EXISTS `cdata_appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_appointments` (
  `no` int(11) NOT NULL,
  `userid` varchar(30) DEFAULT NULL,
  `appointdate` datetime DEFAULT NULL,
  `header` varchar(50) DEFAULT NULL,
  `content` longtext,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_appointments`
--

LOCK TABLES `cdata_appointments` WRITE;
/*!40000 ALTER TABLE `cdata_appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_01`
--

DROP TABLE IF EXISTS `cdata_detail_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_01` (
  `userid` varchar(30) NOT NULL,
  `username` varchar(100) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(3) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='健診結果報告書1 明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_01`
--

LOCK TABLES `cdata_detail_01` WRITE;
/*!40000 ALTER TABLE `cdata_detail_01` DISABLE KEYS */;
INSERT INTO `cdata_detail_01` VALUES ('U0000002','本田慶応','20180715','1',0,'饮食','饮食速度','1.0'),('U0000002','本田慶応','20180715','1',1,'饮食','不吃早饭（3次以上）','2.0'),('U0000002','本田慶応','20180715','1',2,'饮食','晚餐就餐晚','3.0'),('U0000002','本田慶応','20180715','1',3,'饮食','吃夜宵','4.0'),('U0000002','本田慶応','20180715','1',4,'运动','经常运动','5.0'),('U0000002','本田慶応','20180715','1',5,'运动','在实行身体活动计划','6.0'),('U0000002','本田慶応','20180715','1',6,'运动','步行速度快','7.0'),('U0000002','本田慶応','20180715','1',7,'饮酒','频度','8.0'),('U0000002','本田慶応','20180715','1',8,'饮酒','饮酒量','9.0'),('U0000002','本田慶応','20180715','1',9,'吸烟','烟龄','10.0'),('U0000002','本田慶応','20180715','1',10,'睡眠','睡眠是否充足','11.0'),('U0000002','本田慶応','20180715','1',11,'精神压力\n焦虑感','常有压力感','12.0'),('U0000002','本田慶応','20180715','1',12,'自觉症状','自觉症状','13.0'),('U0000002','本田慶応','20180715','1',13,'既往史•现病史','既往史•现病史','14.0'),('U0000002','本田慶応','20180715','1',14,'检查状态','检查状态','15.0'),('U0000002','本田慶応','20180715','1',15,'对于改善生活习惯的建议','对于改善生活习惯的建议','16.0'),('U0000002','本田慶応','20180715','1',16,'服用高血压药历','服用高血压药历','17.0'),('U0000002','本田慶応','20180715','1',17,'服用脂质代谢异常症药历','服用脂质代谢异常症药历','18.0'),('U0000002','本田慶応','20180715','1',18,'服用糖尿病药历','服用糖尿病药历','19.0'),('U0000002','本田慶応','20180715','1',19,'吸烟经历','吸烟经历','20.0'),('U0000002','本田慶応','20180715','1',20,'姓名：','姓名：','本田慶応'),('U0000002','本田慶応','20180715','1',21,'检查日：','检查日：','20180715'),('U0000002','本田慶応','20180715','1',22,'ID：','ID：','U0000002'),('U0000002','本田慶応','20180715','1',23,'68','68','68'),('U0000002','本田慶応','20180715','1',24,'性別：','性別：','男'),('U0000002','本田慶応','20190101','1',0,'饮食','饮食速度','111'),('U0000002','本田慶応','20190101','1',1,'饮食','不吃早饭（3次以上）','21111'),('U0000002','本田慶応','20190101','1',2,'饮食','晚餐就餐晚','31111'),('U0000002','本田慶応','20190101','1',3,'饮食','吃夜宵','4.0'),('U0000002','本田慶応','20190101','1',4,'运动','经常运动','5.0'),('U0000002','本田慶応','20190101','1',5,'运动','在实行身体活动计划','6.0'),('U0000002','本田慶応','20190101','1',6,'运动','步行速度快','7.0'),('U0000002','本田慶応','20190101','1',7,'饮酒','频度','8.0'),('U0000002','本田慶応','20190101','1',8,NULL,'饮酒量','9.0'),('U0000002','本田慶応','20190101','1',9,'吸烟','烟龄','10.0'),('U0000002','本田慶応','20190101','1',10,'睡眠','睡眠是否充足','11.0'),('U0000002','本田慶応','20190101','1',11,'精神压力\n焦虑感','常有压力感','12.0'),('U0000002','本田慶応','20190101','1',12,'自觉症状','自觉症状','13.0'),('U0000002','本田慶応','20190101','1',13,'既往史•现病史','既往史•现病史','14.0'),('U0000002','本田慶応','20190101','1',14,'检查状态','检查状态','15.0'),('U0000002','本田慶応','20190101','1',15,'对于改善生活习惯的建议','对于改善生活习惯的建议','16.0'),('U0000002','本田慶応','20190101','1',16,'服用高血压药历','服用高血压药历','17.0'),('U0000002','本田慶応','20190101','1',17,'服用脂质代谢异常症药历','服用脂质代谢异常症药历','18.0'),('U0000002','本田慶応','20190101','1',18,'服用糖尿病药历','服用糖尿病药历','19.0'),('U0000002','本田慶応','20190101','1',19,'吸烟经历','吸烟经历','20.0'),('U0000002','本田慶応','20190101','1',20,'姓名：','姓名：','本田慶応'),('U0000002','本田慶応','20190101','1',21,'检查日：','检查日：','20190101'),('U0000002','本田慶応','20190101','1',22,'ID：','ID：','U0000002'),('U0000002','本田慶応','20190101','1',23,'年齡：','年齡：','69'),('U0000002','本田慶応','20190101','1',24,'性別：','性別：','男');
/*!40000 ALTER TABLE `cdata_detail_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_history`
--

DROP TABLE IF EXISTS `cdata_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_history` (
  `userid` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `historyname` varchar(100) NOT NULL,
  `historydate` varchar(8) NOT NULL,
  `deleteflg` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='履历情报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_history`
--

LOCK TABLES `cdata_history` WRITE;
/*!40000 ALTER TABLE `cdata_history` DISABLE KEYS */;
INSERT INTO `cdata_history` VALUES ('U0000002','本田慶応','1','AOI国際病院_本田慶応_20180715','20180715','0'),('U0000002','本田慶応','1','AOI国際病院_本田慶応_20190101','20190101','0');
/*!40000 ALTER TABLE `cdata_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_importhistory`
--

DROP TABLE IF EXISTS `cdata_importhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_importhistory` (
  `userid` varchar(30) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `historyname` varchar(100) DEFAULT NULL,
  `importdate` datetime DEFAULT NULL,
  `resultflg` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='履历导入情报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_importhistory`
--

LOCK TABLES `cdata_importhistory` WRITE;
/*!40000 ALTER TABLE `cdata_importhistory` DISABLE KEYS */;
INSERT INTO `cdata_importhistory` VALUES ('U0000002','111','AOI国際病院_本田慶応_20180715','2018-07-16 17:21:40','0'),('U0000002','111','AOI国際病院_本田慶応_20190101','2018-07-16 17:32:27','0'),('U0000002','111','AOI国際病院_本田慶応_20190101','2018-07-16 17:46:22','0');
/*!40000 ALTER TABLE `cdata_importhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_userlog`
--

DROP TABLE IF EXISTS `cdata_userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_userlog` (
  `userid` varchar(30) NOT NULL,
  `id` varchar(45) NOT NULL,
  `logintime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_userlog`
--

LOCK TABLES `cdata_userlog` WRITE;
/*!40000 ALTER TABLE `cdata_userlog` DISABLE KEYS */;
INSERT INTO `cdata_userlog` VALUES ('1','1','2018-07-16 16:04:41'),('system','1','2018-07-05 21:52:12'),('U0000002','1','2018-07-05 21:52:27'),('1','10','2018-07-16 17:01:38'),('system','10','2018-07-08 16:11:48'),('U0000002','10','2018-07-05 23:14:35'),('1','11','2018-07-16 17:05:01'),('system','11','2018-07-09 23:33:19'),('U0000002','11','2018-07-05 23:14:40'),('1','12','2018-07-16 17:15:37'),('system','12','2018-07-10 22:51:53'),('U0000002','12','2018-07-05 23:14:42'),('1','13','2018-07-16 17:20:12'),('system','13','2018-07-10 23:04:36'),('U0000002','13','2018-07-05 23:14:45'),('1','14','2018-07-16 17:32:19'),('system','14','2018-07-10 23:10:38'),('U0000002','14','2018-07-05 23:15:52'),('1','15','2018-07-16 17:39:34'),('system','15','2018-07-10 23:28:27'),('U0000002','15','2018-07-05 23:22:22'),('1','16','2018-07-16 17:45:35'),('system','16','2018-07-10 23:29:48'),('U0000002','16','2018-07-07 17:08:55'),('1','17','2018-07-16 17:48:07'),('system','17','2018-07-10 23:31:29'),('U0000002','17','2018-07-07 17:09:25'),('system','18','2018-07-14 10:35:03'),('U0000002','18','2018-07-07 17:17:49'),('system','19','2018-07-14 10:36:07'),('U0000002','19','2018-07-07 17:57:17'),('1','2','2018-07-16 16:09:41'),('system','2','2018-07-05 21:58:10'),('U0000002','2','2018-07-05 21:59:35'),('system','20','2018-07-14 10:38:20'),('U0000002','20','2018-07-07 18:02:01'),('system','21','2018-07-14 10:40:51'),('U0000002','21','2018-07-07 18:03:42'),('system','22','2018-07-14 10:59:24'),('U0000002','22','2018-07-07 18:05:32'),('system','23','2018-07-14 11:01:12'),('U0000002','23','2018-07-07 18:07:21'),('system','24','2018-07-14 11:20:01'),('U0000002','24','2018-07-07 18:08:38'),('system','25','2018-07-14 11:20:04'),('U0000002','25','2018-07-07 18:10:34'),('system','26','2018-07-14 11:20:37'),('U0000002','26','2018-07-07 18:12:26'),('system','27','2018-07-14 11:27:44'),('U0000002','27','2018-07-07 18:13:25'),('system','28','2018-07-14 11:27:54'),('system','29','2018-07-14 11:28:32'),('1','3','2018-07-16 16:18:01'),('system','3','2018-07-05 21:59:06'),('U0000002','3','2018-07-05 22:01:04'),('system','30','2018-07-14 12:17:07'),('system','31','2018-07-14 12:18:10'),('system','32','2018-07-14 12:21:54'),('system','33','2018-07-14 12:22:58'),('system','34','2018-07-14 12:50:32'),('system','35','2018-07-14 14:52:02'),('system','36','2018-07-14 16:14:04'),('system','37','2018-07-14 16:17:49'),('system','38','2018-07-14 16:43:19'),('system','39','2018-07-14 17:33:26'),('1','4','2018-07-16 16:18:54'),('system','4','2018-07-08 11:30:07'),('U0000002','4','2018-07-05 22:06:33'),('system','40','2018-07-14 17:37:47'),('system','41','2018-07-14 17:51:15'),('system','42','2018-07-14 17:51:16'),('system','43','2018-07-14 18:46:05'),('system','44','2018-07-14 18:57:16'),('system','45','2018-07-14 19:01:19'),('system','46','2018-07-14 19:01:26'),('system','47','2018-07-14 22:30:40'),('system','48','2018-07-16 11:44:57'),('system','49','2018-07-16 11:45:18'),('1','5','2018-07-16 16:34:33'),('system','5','2018-07-08 11:30:18'),('U0000002','5','2018-07-05 22:06:48'),('system','50','2018-07-16 11:49:36'),('system','51','2018-07-16 11:50:37'),('system','52','2018-07-16 12:23:05'),('system','53','2018-07-16 12:23:26'),('system','54','2018-07-16 12:27:57'),('system','55','2018-07-16 12:41:47'),('system','56','2018-07-16 12:46:18'),('system','57','2018-07-16 12:52:39'),('system','58','2018-07-16 13:07:16'),('system','59','2018-07-16 13:30:09'),('1','6','2018-07-16 16:38:31'),('system','6','2018-07-08 11:35:58'),('U0000002','6','2018-07-05 22:07:18'),('system','60','2018-07-16 13:35:22'),('system','61','2018-07-16 13:37:29'),('system','62','2018-07-16 13:48:15'),('system','63','2018-07-16 13:57:06'),('system','64','2018-07-16 14:01:26'),('system','65','2018-07-16 14:22:19'),('system','66','2018-07-16 14:32:50'),('system','67','2018-07-16 14:45:19'),('system','68','2018-07-16 14:47:07'),('system','69','2018-07-16 14:49:38'),('1','7','2018-07-16 16:57:17'),('system','7','2018-07-08 13:48:21'),('U0000002','7','2018-07-05 22:10:17'),('system','70','2018-07-16 14:52:48'),('system','71','2018-07-16 15:15:38'),('system','72','2018-07-16 15:52:23'),('system','73','2018-07-16 15:55:35'),('system','74','2018-07-16 15:56:40'),('system','75','2018-07-16 15:57:13'),('system','76','2018-07-16 16:00:31'),('system','77','2018-07-16 16:03:33'),('1','8','2018-07-16 16:57:53'),('system','8','2018-07-08 15:09:07'),('U0000002','8','2018-07-05 22:38:16'),('1','9','2018-07-16 16:59:35'),('system','9','2018-07-08 15:18:45'),('U0000002','9','2018-07-05 22:38:21');
/*!40000 ALTER TABLE `cdata_userlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_visithistory`
--

DROP TABLE IF EXISTS `cdata_visithistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_visithistory` (
  `no` int(11) NOT NULL,
  `userid` varchar(30) DEFAULT NULL,
  `visitdate` date DEFAULT NULL,
  `content` longtext,
  `delflg` char(1) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='通院履歴テーブル';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_visithistory`
--

LOCK TABLES `cdata_visithistory` WRITE;
/*!40000 ALTER TABLE `cdata_visithistory` DISABLE KEYS */;
INSERT INTO `cdata_visithistory` VALUES (1,'U0000002','2018-07-16','aaaa','0');
/*!40000 ALTER TABLE `cdata_visithistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mstr_user`
--

DROP TABLE IF EXISTS `mstr_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mstr_user` (
  `userid` varchar(30) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `delflg` varchar(1) DEFAULT NULL,
  `begintime` time(4) DEFAULT NULL,
  `endtime` time(4) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL COMMENT '0：超级管理员\n1：管理员\n2：普通用户',
  `authflg` char(1) DEFAULT '2',
  `birthday` date DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL,
  `rest` varchar(10) DEFAULT '1',
  `lang` char(1) DEFAULT NULL,
  `address` longtext,
  `telnum` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mstr_user`
--

LOCK TABLES `mstr_user` WRITE;
/*!40000 ALTER TABLE `mstr_user` DISABLE KEYS */;
INSERT INTO `mstr_user` VALUES ('1','111','11111','0',NULL,NULL,'F','0',NULL,NULL,NULL,'1',NULL,NULL,NULL),('admin','系统超级管理员','admin','0','10:00:00.0000','17:00:00.0000','M','2','1900-01-01','',NULL,'1','0',' ',' '),('system','系统超级管理员','system','0','10:00:00.0000','17:00:00.0000','M','0','1900-01-01','',NULL,'1','0',' ',' '),('U0000001','用户1','111111','0',NULL,NULL,'M','2','2018-07-16',NULL,NULL,'1',NULL,NULL,NULL),('U0000002','本田慶応','111111','0','10:00:00.0000','17:00:00.0000','F','2','1989-12-11','',NULL,'1','2','埼玉県芝園町３−４−９０４4','080-2314-12876');
/*!40000 ALTER TABLE `mstr_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-16 17:51:00
