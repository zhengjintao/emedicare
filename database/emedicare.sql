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
