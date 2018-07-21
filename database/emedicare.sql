CREATE DATABASE  IF NOT EXISTS `emedicare` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `emedicare`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 157.7.138.167    Database: emedicare
-- ------------------------------------------------------
-- Server version	5.6.32

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='健診結果報告書1 明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_01`
--

LOCK TABLES `cdata_detail_01` WRITE;
/*!40000 ALTER TABLE `cdata_detail_01` DISABLE KEYS */;
INSERT INTO `cdata_detail_01` VALUES ('U0000002','本田慶応','20180715','1',0,'饮食','饮食速度','1.0'),('U0000002','本田慶応','20180715','1',1,'饮食','不吃早饭（3次以上）','2.0'),('U0000002','本田慶応','20180715','1',2,'饮食','晚餐就餐晚','3.0'),('U0000002','本田慶応','20180715','1',3,'饮食','吃夜宵','4.0'),('U0000002','本田慶応','20180715','1',4,'运动','经常运动','5.0'),('U0000002','本田慶応','20180715','1',5,'运动','在实行身体活动计划','6.0'),('U0000002','本田慶応','20180715','1',6,'运动','步行速度快','7.0'),('U0000002','本田慶応','20180715','1',7,'饮酒','频度','8.0'),('U0000002','本田慶応','20180715','1',8,'饮酒','饮酒量','9.0'),('U0000002','本田慶応','20180715','1',9,'吸烟','烟龄','10.0'),('U0000002','本田慶応','20180715','1',10,'睡眠','睡眠是否充足','11.0'),('U0000002','本田慶応','20180715','1',11,'精神压力\n焦虑感','常有压力感','12.0'),('U0000002','本田慶応','20180715','1',12,'自觉症状','自觉症状','13.0'),('U0000002','本田慶応','20180715','1',13,'既往史•现病史','既往史•现病史','14.0'),('U0000002','本田慶応','20180715','1',14,'检查状态','检查状态','15.0'),('U0000002','本田慶応','20180715','1',15,'对于改善生活习惯的建议','对于改善生活习惯的建议','16.0'),('U0000002','本田慶応','20180715','1',16,'服用高血压药历','服用高血压药历','17.0'),('U0000002','本田慶応','20180715','1',17,'服用脂质代谢异常症药历','服用脂质代谢异常症药历','18.0'),('U0000002','本田慶応','20180715','1',18,'服用糖尿病药历','服用糖尿病药历','19.0'),('U0000002','本田慶応','20180715','1',19,'吸烟经历','吸烟经历','20.0'),('U0000002','本田慶応','20180715','1',20,'姓名：','姓名：','本田慶応'),('U0000002','本田慶応','20180715','1',21,'检查日：','检查日：','20180715'),('U0000002','本田慶応','20180715','1',22,'ID：','ID：','U0000002'),('U0000002','本田慶応','20180715','1',23,'68','68','68'),('U0000002','本田慶応','20180715','1',24,'性別：','性別：','男'),('U0000002','本田慶応','20190101','1',0,'饮食','饮食速度','111'),('U0000002','本田慶応','20190101','1',1,'饮食','不吃早饭（3次以上）','21111'),('U0000002','本田慶応','20190101','1',2,'饮食','晚餐就餐晚','31111'),('U0000002','本田慶応','20190101','1',3,'饮食','吃夜宵','4.0'),('U0000002','本田慶応','20190101','1',4,'运动','经常运动','5.0'),('U0000002','本田慶応','20190101','1',5,'运动','在实行身体活动计划','6.0'),('U0000002','本田慶応','20190101','1',6,'运动','步行速度快','7.0'),('U0000002','本田慶応','20190101','1',7,'饮酒','频度','8.0'),('U0000002','本田慶応','20190101','1',8,NULL,'饮酒量','9.0'),('U0000002','本田慶応','20190101','1',9,'吸烟','烟龄','10.0'),('U0000002','本田慶応','20190101','1',10,'睡眠','睡眠是否充足','11.0'),('U0000002','本田慶応','20190101','1',11,'精神压力\n焦虑感','常有压力感','12.0'),('U0000002','本田慶応','20190101','1',12,'自觉症状','自觉症状','13.0'),('U0000002','本田慶応','20190101','1',13,'既往史•现病史','既往史•现病史','14.0'),('U0000002','本田慶応','20190101','1',14,'检查状态','检查状态','15.0'),('U0000002','本田慶応','20190101','1',15,'对于改善生活习惯的建议','对于改善生活习惯的建议','16.0'),('U0000002','本田慶応','20190101','1',16,'服用高血压药历','服用高血压药历','17.0'),('U0000002','本田慶応','20190101','1',17,'服用脂质代谢异常症药历','服用脂质代谢异常症药历','18.0'),('U0000002','本田慶応','20190101','1',18,'服用糖尿病药历','服用糖尿病药历','19.0'),('U0000002','本田慶応','20190101','1',19,'吸烟经历','吸烟经历','20.0'),('U0000002','本田慶応','20190101','1',20,'姓名：','姓名：','本田慶応'),('U0000002','本田慶応','20190101','1',21,'检查日：','检查日：','20190101'),('U0000002','本田慶応','20190101','1',22,'ID：','ID：','U0000002'),('U0000002','本田慶応','20190101','1',23,'年齡：','年齡：','69'),('U0000002','本田慶応','20190101','1',24,'性別：','性別：','男'),('3.0','1.0','2.0','1',0,'姓名：','姓名：','1.0'),('3.0','1.0','2.0','1',1,'检查日：','检查日：','2.0'),('3.0','1.0','2.0','1',2,'ID：','ID：','3.0'),('3.0','1.0','2.0','1',3,'年齡：','年齡：','4.0'),('3.0','1.0','2.0','1',4,'性別：','性別：','5.0'),('3.0','1.0','2.0','1',5,'饮食','饮食速度','6.011'),('3.0','1.0','2.0','1',6,'饮食','不吃早饭（3次以上）','7.0'),('3.0','1.0','2.0','1',7,'饮食','晚餐就餐晚','8.0'),('3.0','1.0','2.0','1',8,'饮食','吃夜宵','9.0'),('3.0','1.0','2.0','1',9,'运动','运动','10.0'),('3.0','1.0','2.0','1',10,'运动','在实行身体活动计划','11.0'),('3.0','1.0','2.0','1',11,'运动','步行速度快','12.0'),('3.0','1.0','2.0','1',12,'饮酒','频度','13.0'),('3.0','1.0','2.0','1',13,'饮酒','饮酒量','14.0'),('3.0','1.0','2.0','1',14,'吸烟','烟龄','15.0'),('3.0','1.0','2.0','1',15,'睡眠','睡眠是否充足','16.0'),('3.0','1.0','2.0','1',16,'精神压力焦虑感','常有压力感','17.0'),('3.0','1.0','2.0','1',17,'自觉症状','自觉症状','18.0'),('3.0','1.0','2.0','1',18,'既往史•现病史','既往史•现病史','19.0'),('3.0','1.0','2.0','1',19,'检查状态','检查状态','20.0'),('3.0','1.0','2.0','1',20,'对于改善生活习惯的建议','对于改善生活习惯的建议','本田慶応'),('3.0','1.0','2.0','1',21,'服用高血压药历','服用高血压药历','20180715'),('3.0','1.0','2.0','1',22,'服用脂质代谢异常症药历','服用脂质代谢异常症药历','U0000002'),('3.0','1.0','2.0','1',23,'服用糖尿病药历','服用糖尿病药历','68'),('3.0','1.0','2.0','1',24,'吸烟经历','吸烟经历','男');
/*!40000 ALTER TABLE `cdata_detail_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_expdetail`
--

DROP TABLE IF EXISTS `cdata_expdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_expdetail` (
  `expid` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sheetid` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(45) CHARACTER SET latin1 NOT NULL,
  `value` longtext CHARACTER SET utf8,
  PRIMARY KEY (`expid`,`name`,`sheetid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_expdetail`
--

LOCK TABLES `cdata_expdetail` WRITE;
/*!40000 ALTER TABLE `cdata_expdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_expdetail` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='履历情报表';
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='履历导入情报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_importhistory`
--

LOCK TABLES `cdata_importhistory` WRITE;
/*!40000 ALTER TABLE `cdata_importhistory` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_userlog`
--

LOCK TABLES `cdata_userlog` WRITE;
/*!40000 ALTER TABLE `cdata_userlog` DISABLE KEYS */;
INSERT INTO `cdata_userlog` VALUES ('system','1','2018-07-21 15:08:45'),('U0000001','1','2018-07-21 10:04:53'),('U0000003','1','2018-07-21 10:33:41'),('U0000001','10','2018-07-21 15:00:47'),('U0000001','11','2018-07-21 15:02:57'),('U0000001','12','2018-07-21 15:03:07'),('U0000001','13','2018-07-21 15:04:34'),('U0000001','14','2018-07-21 15:05:05'),('U0000001','15','2018-07-21 15:06:31'),('U0000001','16','2018-07-21 15:13:26'),('U0000001','17','2018-07-21 16:10:47'),('system','2','2018-07-21 15:20:05'),('U0000001','2','2018-07-21 10:17:56'),('U0000003','2','2018-07-21 16:57:07'),('system','3','2018-07-21 15:40:05'),('U0000001','3','2018-07-21 10:34:21'),('U0000003','3','2018-07-21 17:13:47'),('system','4','2018-07-21 15:44:21'),('U0000001','4','2018-07-21 10:46:28'),('U0000003','4','2018-07-21 20:24:19'),('system','5','2018-07-21 15:50:14'),('U0000001','5','2018-07-21 10:49:31'),('system','6','2018-07-21 16:05:37'),('U0000001','6','2018-07-21 11:08:44'),('system','7','2018-07-21 17:03:50'),('U0000001','7','2018-07-21 11:30:21'),('U0000001','8','2018-07-21 11:31:56'),('U0000001','9','2018-07-21 15:00:21');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='通院履歴テーブル';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_visithistory`
--

LOCK TABLES `cdata_visithistory` WRITE;
/*!40000 ALTER TABLE `cdata_visithistory` DISABLE KEYS */;
INSERT INTO `cdata_visithistory` VALUES (1,'U0000001','2018-07-21','test','0'),(2,'U0000003','2018-07-21','预约地址','0'),(3,'U0000003','2018-07-21','预约地址hh uu','1');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mstr_user`
--

LOCK TABLES `mstr_user` WRITE;
/*!40000 ALTER TABLE `mstr_user` DISABLE KEYS */;
INSERT INTO `mstr_user` VALUES ('system','姓名dddd','system','0','09:30:00.0000','18:30:00.0000','F','0','2018-07-21','','1000000000000','1','0','1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd','11111111111111'),('U0000001','姓名dddd','changeme','0','09:30:00.0000','18:30:00.0000','F','2','2018-07-21','','1000000000000','1','0','1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd','11111111111111'),('U0000002','本田慶応','changeme','0','09:30:00.0000','18:30:00.0000','F','2','2018-07-21','','1000000000000','1','0','1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd1的等待sddd','11111111111111'),('U0000003','郑**','changeme','0','09:30:00.0000','18:30:00.0000','M','2','1900-01-01','','ofV_W1cQ5QUdz8rD6kjKIqLK-OXI','1','0','','');
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

-- Dump completed on 2018-07-21 21:08:25
