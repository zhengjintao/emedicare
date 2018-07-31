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

LOCK TABLES `cdata_detail_19` WRITE;
/*!40000 ALTER TABLE `cdata_detail_19` DISABLE KEYS */;
INSERT INTO `cdata_detail_19` VALUES ('U0000002','本田慶応','20190101','1',0,'ID','ID','U0000002'),('U0000002','本田慶応','20190101','1',1,'检查日期','检查日期','20190101'),('U0000002','本田慶応','20190101','1',2,'姓名','姓名','本田慶応'),('U0000002','本田慶応','20190101','1',3,'检查部位','检查部位',','),('U0000002','本田慶応','20190101','1',4,'出生日期','出生日期','19999999'),('U0000002','本田慶応','20190101','1',5,'年龄/性别','年龄/性别','69/男'),('U0000002','本田慶応','20190101','1',6,'测定部位：','测定部位：','腰椎L.234'),('U0000002','本田慶応','20190101','1',7,'你的骨密度是','你的骨密度是','1.0'),('U0000002','本田慶応','20190101','1',8,'与年轻人的比较值为','与年轻人的比较值为','2.0'),('U0000002','本田慶応','20190101','1',9,'与同龄的比较值为','与同龄的比较值为','3.0'),('U0000002','本田慶応','20190101','1',10,'骨面积：','骨面积：','4.0'),('U0000002','本田慶応','20190101','1',11,'骨盐量：','骨盐量：','5.0'),('U0000002','本田慶応','20190101','1',12,'骨密度判定','骨密度判定','6.0'),('U0000002','本田慶応','20190101','1',13,'解说','1111','7.0'),('U0000002','本田慶応','20190101','1',14,'解说','2222','8.0');
/*!40000 ALTER TABLE `cdata_detail_19` ENABLE KEYS */;
UNLOCK TABLES;