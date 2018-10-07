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
  `appointdate` date DEFAULT NULL,
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
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(3) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='健診結果報告書1 明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_01`
--

LOCK TABLES `cdata_detail_01` WRITE;
/*!40000 ALTER TABLE `cdata_detail_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_02`
--

DROP TABLE IF EXISTS `cdata_detail_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_02` (
  `userid` varchar(30) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(11) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='健診結果報告書2明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_02`
--

LOCK TABLES `cdata_detail_02` WRITE;
/*!40000 ALTER TABLE `cdata_detail_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_03`
--

DROP TABLE IF EXISTS `cdata_detail_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_03` (
  `userid` varchar(30) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(11) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='健診結果報告書3明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_03`
--

LOCK TABLES `cdata_detail_03` WRITE;
/*!40000 ALTER TABLE `cdata_detail_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_04`
--

DROP TABLE IF EXISTS `cdata_detail_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_04` (
  `userid` varchar(30) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(11) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='健診結果報告書4明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_04`
--

LOCK TABLES `cdata_detail_04` WRITE;
/*!40000 ALTER TABLE `cdata_detail_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_05`
--

DROP TABLE IF EXISTS `cdata_detail_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_05` (
  `userid` varchar(30) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(11) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='健診結果報告書5明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_05`
--

LOCK TABLES `cdata_detail_05` WRITE;
/*!40000 ALTER TABLE `cdata_detail_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_06`
--

DROP TABLE IF EXISTS `cdata_detail_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_06` (
  `userid` varchar(30) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(11) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='健診結果報告書6明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_06`
--

LOCK TABLES `cdata_detail_06` WRITE;
/*!40000 ALTER TABLE `cdata_detail_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_07`
--

DROP TABLE IF EXISTS `cdata_detail_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_07` (
  `userid` varchar(30) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(11) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='健診結果報告書7明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_07`
--

LOCK TABLES `cdata_detail_07` WRITE;
/*!40000 ALTER TABLE `cdata_detail_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_08`
--

DROP TABLE IF EXISTS `cdata_detail_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_08` (
  `userid` varchar(30) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(11) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='健診結果報告書8明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_08`
--

LOCK TABLES `cdata_detail_08` WRITE;
/*!40000 ALTER TABLE `cdata_detail_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_09`
--

DROP TABLE IF EXISTS `cdata_detail_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_09` (
  `userid` varchar(30) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(3) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='健診結果報告書9 明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_09`
--

LOCK TABLES `cdata_detail_09` WRITE;
/*!40000 ALTER TABLE `cdata_detail_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_10`
--

DROP TABLE IF EXISTS `cdata_detail_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_10` (
  `userid` varchar(30) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(3) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='健診結果報告書10 明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_10`
--

LOCK TABLES `cdata_detail_10` WRITE;
/*!40000 ALTER TABLE `cdata_detail_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_11`
--

DROP TABLE IF EXISTS `cdata_detail_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_11` (
  `userid` varchar(30) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(3) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='健診結果報告書10 明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_11`
--

LOCK TABLES `cdata_detail_11` WRITE;
/*!40000 ALTER TABLE `cdata_detail_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_12`
--

DROP TABLE IF EXISTS `cdata_detail_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_12` (
  `userid` varchar(30) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(3) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='健診結果報告書12 综合判断';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_12`
--

LOCK TABLES `cdata_detail_12` WRITE;
/*!40000 ALTER TABLE `cdata_detail_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_13`
--

DROP TABLE IF EXISTS `cdata_detail_13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_13` (
  `userid` varchar(30) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(3) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='健診結果報告書13 检查结果查询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_13`
--

LOCK TABLES `cdata_detail_13` WRITE;
/*!40000 ALTER TABLE `cdata_detail_13` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_14`
--

DROP TABLE IF EXISTS `cdata_detail_14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_14` (
  `userid` varchar(30) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(3) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='健診結果報告書14 SPO２';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_14`
--

LOCK TABLES `cdata_detail_14` WRITE;
/*!40000 ALTER TABLE `cdata_detail_14` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_14` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_15`
--

DROP TABLE IF EXISTS `cdata_detail_15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_15` (
  `userid` varchar(30) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(3) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='健診結果報告書15 甲状腺功能检查报告书';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_15`
--

LOCK TABLES `cdata_detail_15` WRITE;
/*!40000 ALTER TABLE `cdata_detail_15` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_15` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_16`
--

DROP TABLE IF EXISTS `cdata_detail_16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_16` (
  `userid` varchar(30) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(3) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='肿瘤标志物检查报告书';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_16`
--

LOCK TABLES `cdata_detail_16` WRITE;
/*!40000 ALTER TABLE `cdata_detail_16` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_17`
--

DROP TABLE IF EXISTS `cdata_detail_17`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_17` (
  `userid` varchar(30) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(3) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='肿瘤标志物检查报告书';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_17`
--

LOCK TABLES `cdata_detail_17` WRITE;
/*!40000 ALTER TABLE `cdata_detail_17` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_17` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_18`
--

DROP TABLE IF EXISTS `cdata_detail_18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_18` (
  `userid` varchar(30) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(3) NOT NULL,
  `mainclass` varchar(100) DEFAULT NULL,
  `subclass` varchar(100) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='肿瘤标志物检查报告书';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_18`
--

LOCK TABLES `cdata_detail_18` WRITE;
/*!40000 ALTER TABLE `cdata_detail_18` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_18` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_19`
--

DROP TABLE IF EXISTS `cdata_detail_19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_19` (
  `userid` varchar(30) NOT NULL,
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
/*!40000 ALTER TABLE `cdata_detail_23` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_detail_24`
--

DROP TABLE IF EXISTS `cdata_detail_24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_detail_24` (
  `userid` varchar(30) NOT NULL,
  `examdate` varchar(8) NOT NULL,
  `historyno` varchar(3) NOT NULL,
  `dispindex` int(3) NOT NULL,	
  `filename` varchar(100) DEFAULT NULL,
  `filepath` varchar(500) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`userid`,`examdate`,`historyno`,`dispindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='心脏超声波检查报告 明细数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_detail_24`
--

LOCK TABLES `cdata_detail_24` WRITE;
/*!40000 ALTER TABLE `cdata_detail_24` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_detail_24` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `cdata_history`
--

DROP TABLE IF EXISTS `cdata_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_history` (
  `userid` varchar(30) NOT NULL,
  `historydate` varchar(8) NOT NULL,
  `historyno` int(11) NOT NULL,
  `historyname` varchar(100) NOT NULL,
  `deleteflg` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`,`historydate`,`historyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='履历情报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_history`
--

LOCK TABLES `cdata_history` WRITE;
/*!40000 ALTER TABLE `cdata_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_pichistory`
--

DROP TABLE IF EXISTS `cdata_pichistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_pichistory` (
  `userid` varchar(30) NOT NULL,
  `historydate` varchar(8) NOT NULL,
  `historyno` int(11) NOT NULL,
  `historyname` varchar(100) NOT NULL,
  `deleteflg` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`,`historydate`,`historyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图片情报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_pichistory`
--

LOCK TABLES `cdata_pichistory` WRITE;
/*!40000 ALTER TABLE `cdata_pichistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_pichistory` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `cdata_importhistory`
--

DROP TABLE IF EXISTS `cdata_importhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_importhistory` (
  `importno` int(11) NOT NULL,
  `userid` varchar(30) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `historyname` varchar(100) DEFAULT NULL,
  `importdate` datetime DEFAULT NULL,
  `resultflg` varchar(1) DEFAULT NULL,
  `resultmsg` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`importno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='履历导入情报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_importhistory`
--

LOCK TABLES `cdata_importhistory` WRITE;
/*!40000 ALTER TABLE `cdata_importhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdata_importhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdata_noticeday`
--

DROP TABLE IF EXISTS `cdata_noticeday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata_noticeday` (
  `id` int(11) NOT NULL,
  `days` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata_noticeday`
--

LOCK TABLES `cdata_noticeday` WRITE;
/*!40000 ALTER TABLE `cdata_noticeday` DISABLE KEYS */;
INSERT INTO `cdata_noticeday` VALUES (1,30),(2,7);
/*!40000 ALTER TABLE `cdata_noticeday` ENABLE KEYS */;
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
INSERT INTO `mstr_user` VALUES ('system','系统管理员','system','0','09:30:00.0000','18:30:00.0000','F','0','2018-07-21','xiaonei0912@qq.com','','1','0','','11111111111111');
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

-- Dump completed on 2018-08-04 14:12:24
