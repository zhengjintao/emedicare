-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: emedicare
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `cdata_detail_19`
--

DROP TABLE IF EXISTS `cdata_detail_19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_19` (
  `userid` varchar(30) NOT NULL,
  `username` varchar(100) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(3) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='骨密度测定结果 明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_19`
--

LOCK TABLES `cdata_detail_19` WRITE;
/*!40000 ALTER TABLE `cdata_detail_19` DISABLE KEYS */;
INSERT INTO `cdata_detail_19` VALUES ('U0000002','本田慶応','20190101','1',0,'ID','ID','U0000002'),('U0000002','本田慶応','20190101','1',1,'检查日期','检查日期','20190101'),('U0000002','本田慶応','20190101','1',2,'姓名','姓名','本田慶応'),('U0000002','本田慶応','20190101','1',3,'检查部位','检查部位',','),('U0000002','本田慶応','20190101','1',4,'出生日期','出生日期','19999999'),('U0000002','本田慶応','20190101','1',5,'年龄/性别','年龄/性别','69/男'),('U0000002','本田慶応','20190101','1',6,'测定部位：','测定部位：','腰椎L.234'),('U0000002','本田慶応','20190101','1',7,'你的骨密度是','你的骨密度是','1.0'),('U0000002','本田慶応','20190101','1',8,'与年轻人的比较值为','与年轻人的比较值为','2.0'),('U0000002','本田慶応','20190101','1',9,'与同龄的比较值为','与同龄的比较值为','3.0'),('U0000002','本田慶応','20190101','1',10,'骨面积：','骨面积：','4.0'),('U0000002','本田慶応','20190101','1',11,'骨盐量：','骨盐量：','5.0'),('U0000002','本田慶応','20190101','1',12,'骨密度判定','骨密度判定','6.0'),('U0000002','本田慶応','20190101','1',13,'解说','1111','7.0'),('U0000002','本田慶応','20190101','1',14,'解说','2222','8.0');
/*!40000 ALTER TABLE `cdata_detail_19` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_20`
--

DROP TABLE IF EXISTS `cdata_detail_20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_20` (
  `userid` varchar(30) NOT NULL,
  `username` varchar(100) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(3) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='脳ドック检查报告  明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_20`
--

LOCK TABLES `cdata_detail_20` WRITE;
/*!40000 ALTER TABLE `cdata_detail_20` DISABLE KEYS */;
INSERT INTO `cdata_detail_20` VALUES ('U0000002','本田慶応','20190101','1',0,'ID','ID','U0000002'),('U0000002','本田慶応','20190101','1',1,'检查日期','检查日期','20190101'),('U0000002','本田慶応','20190101','1',2,'姓名','姓名','本田慶応'),('U0000002','本田慶応','20190101','1',3,'年龄/性别','年龄/性别','69/男'),('U0000002','本田慶応','20190101','1',4,'第一次担任医生','第一次担任医生','1.0'),('U0000002','本田慶応','20190101','1',5,'第一次诊断时间','第一次诊断时间','2.0'),('U0000002','本田慶応','20190101','1',6,'第二次担任医生','第二次担任医生','3.0'),('U0000002','本田慶応','20190101','1',7,'第二次诊断时间','第二次诊断时间','4.0'),('U0000002','本田慶応','20190101','1',8,'检查评语','检查评语','5.0'),('U0000002','本田慶応','20190101','1',9,'所见','所见','6.0'),('U0000002','本田慶応','20190101','1',10,'诊断','诊断','7.0');
/*!40000 ALTER TABLE `cdata_detail_20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_21`
--

DROP TABLE IF EXISTS `cdata_detail_21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_21` (
  `userid` varchar(30) NOT NULL,
  `username` varchar(100) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(3) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='颈动脉超声波检查报告 明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_21`
--

LOCK TABLES `cdata_detail_21` WRITE;
/*!40000 ALTER TABLE `cdata_detail_21` DISABLE KEYS */;
INSERT INTO `cdata_detail_21` VALUES ('U0000002','本田慶応','20190101','1',0,'ID','ID','U0000002'),('U0000002','本田慶応','20190101','1',1,'检查日期','检查日期','20190101'),('U0000002','本田慶応','20190101','1',2,'姓名','姓名','本田慶応'),('U0000002','本田慶応','20190101','1',3,'年龄/性别','年龄/性别','69/男'),('U0000002','本田慶応','20190101','1',4,'第一次担任医生','第一次担任医生','1.0'),('U0000002','本田慶応','20190101','1',5,'第一次诊断时间','第一次诊断时间','2.0'),('U0000002','本田慶応','20190101','1',6,'第二次担任医生','第二次担任医生','3.0'),('U0000002','本田慶応','20190101','1',7,'第二次诊断时间','第二次诊断时间','4.0'),('U0000002','本田慶応','20190101','1',8,'检查评语','检查评语','5.0'),('U0000002','本田慶応','20190101','1',9,'所见','所见','6.0'),('U0000002','本田慶応','20190101','1',10,'诊断','诊断','7.0');
/*!40000 ALTER TABLE `cdata_detail_21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_22`
--

DROP TABLE IF EXISTS `cdata_detail_22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_22` (
  `userid` varchar(30) NOT NULL,
  `username` varchar(100) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(3) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='骨盆MRI检查报告 明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_22`
--

LOCK TABLES `cdata_detail_22` WRITE;
/*!40000 ALTER TABLE `cdata_detail_22` DISABLE KEYS */;
INSERT INTO `cdata_detail_22` VALUES ('U0000002','本田慶応','20190101','1',0,'ID','ID','U0000002'),('U0000002','本田慶応','20190101','1',1,'检查日期','检查日期','20190101'),('U0000002','本田慶応','20190101','1',2,'姓名','姓名','本田慶応'),('U0000002','本田慶応','20190101','1',3,'年龄/性别','年龄/性别','69/男'),('U0000002','本田慶応','20190101','1',4,'第一次担任医生','第一次担任医生','1.0'),('U0000002','本田慶応','20190101','1',5,'第一次诊断时间','第一次诊断时间','2.0'),('U0000002','本田慶応','20190101','1',6,'第二次担任医生','第二次担任医生','3.0'),('U0000002','本田慶応','20190101','1',7,'第二次诊断时间','第二次诊断时间','4.0'),('U0000002','本田慶応','20190101','1',8,'检查评语','检查评语','5.0'),('U0000002','本田慶応','20190101','1',9,'所见','所见','6.0'),('U0000002','本田慶応','20190101','1',10,'诊断','诊断','7.0');
/*!40000 ALTER TABLE `cdata_detail_22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_23`
--

DROP TABLE IF EXISTS `cdata_detail_23`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_23` (
  `userid` varchar(30) NOT NULL,
  `username` varchar(100) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(3) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='心脏超声波检查报告 明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_23`
--

LOCK TABLES `cdata_detail_23` WRITE;
/*!40000 ALTER TABLE `cdata_detail_23` DISABLE KEYS */;
INSERT INTO `cdata_detail_23` VALUES ('U0000002','本田慶応','20190101','1',0,'ID','ID','U0000002'),('U0000002','本田慶応','20190101','1',1,'检查日期','检查日期','20190101'),('U0000002','本田慶応','20190101','1',2,'姓名','姓名','本田慶応'),('U0000002','本田慶応','20190101','1',3,'年龄/性别','年龄/性别','69/男'),('U0000002','本田慶応','20190101','1',4,'第一次担任医生','第一次担任医生','1.0'),('U0000002','本田慶応','20190101','1',5,'第一次诊断时间','第一次诊断时间','2.0'),('U0000002','本田慶応','20190101','1',6,'第二次担任医生','第二次担任医生','3.0'),('U0000002','本田慶応','20190101','1',7,'第二次诊断时间','第二次诊断时间','4.0'),('U0000002','本田慶応','20190101','1',8,'检查评语','检查评语','5.0'),('U0000002','本田慶応','20190101','1',9,'所见','所见','6.0'),('U0000002','本田慶応','20190101','1',10,'诊断','诊断','7.0');
/*!40000 ALTER TABLE `cdata_detail_23` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'emedicare'
--

--
-- Dumping routines for database 'emedicare'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-31 17:30:57
