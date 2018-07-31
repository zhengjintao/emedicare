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

LOCK TABLES `cdata_detail_21` WRITE;
/*!40000 ALTER TABLE `cdata_detail_21` DISABLE KEYS */;
INSERT INTO `cdata_detail_21` VALUES ('U0000002','本田慶応','20190101','1',0,'ID','ID','U0000002'),('U0000002','本田慶応','20190101','1',1,'检查日期','检查日期','20190101'),('U0000002','本田慶応','20190101','1',2,'姓名','姓名','本田慶応'),('U0000002','本田慶応','20190101','1',3,'年龄/性别','年龄/性别','69/男'),('U0000002','本田慶応','20190101','1',4,'第一次担任医生','第一次担任医生','1.0'),('U0000002','本田慶応','20190101','1',5,'第一次诊断时间','第一次诊断时间','2.0'),('U0000002','本田慶応','20190101','1',6,'第二次担任医生','第二次担任医生','3.0'),('U0000002','本田慶応','20190101','1',7,'第二次诊断时间','第二次诊断时间','4.0'),('U0000002','本田慶応','20190101','1',8,'检查评语','检查评语','5.0'),('U0000002','本田慶応','20190101','1',9,'所见','所见','6.0'),('U0000002','本田慶応','20190101','1',10,'诊断','诊断','7.0');
/*!40000 ALTER TABLE `cdata_detail_21` ENABLE KEYS */;
UNLOCK TABLES;