-- MySQL dump 10.13  Distrib 5.7.17, for Win32 (AMD64)
--
-- Host: localhost    Database: hoa
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection` (
  `collectionid` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(25) NOT NULL,
  `referenceid` int(11) NOT NULL,
  `type` varchar(25) DEFAULT NULL,
  `orno` varchar(25) DEFAULT NULL,
  `ordate` date DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `cost_qty` decimal(10,0) DEFAULT NULL,
  `total_cost` decimal(10,0) DEFAULT NULL,
  `amount_paid` decimal(10,2) DEFAULT NULL,
  `posted` bit(1) DEFAULT b'0',
  `deleted` bit(1) DEFAULT b'0',
  `remarks` varchar(100) DEFAULT NULL,
  `datecreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`collectionid`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
INSERT INTO `collection` VALUES (66,'MONTHLYDUES',27,'HOMEOWNER','1','2017-06-01',NULL,NULL,NULL,100.00,'','\0','This is remark for monthly dues','2017-06-18 09:54:10',NULL,'2017-06-18 16:54:10','2017-06-18 16:54:10'),(67,'MONTHLYDUES',28,'HOMEOWNER','3','2017-06-18',NULL,NULL,NULL,50.00,'\0','',NULL,'2017-06-18 10:21:30',NULL,'2017-06-18 17:21:30','2017-06-18 17:21:30');
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_category`
--

DROP TABLE IF EXISTS `collection_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_category` (
  `collection_categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(25) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `frequency` varchar(25) DEFAULT NULL,
  `isfixamount` bit(1) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `datestarteffectivity` date DEFAULT NULL,
  `dateendeffectivity` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  PRIMARY KEY (`collection_categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_category`
--

LOCK TABLES `collection_category` WRITE;
/*!40000 ALTER TABLE `collection_category` DISABLE KEYS */;
INSERT INTO `collection_category` VALUES (12,'MONTHLYDUES','Monthly Dues',NULL,NULL,NULL,'','2017-01-01','2017-01-01',NULL,'2017-06-18 09:36:39',NULL),(13,'PAILAW','Basketball Court Pailaw',NULL,NULL,NULL,'',NULL,NULL,'2017-06-18 16:37:42','2017-06-18 16:37:42',NULL),(14,'CARSTICKER','Car Sticker',NULL,NULL,NULL,'','2017-01-01','2099-01-01',NULL,'2017-06-18 09:53:28',NULL);
/*!40000 ALTER TABLE `collection_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_line`
--

DROP TABLE IF EXISTS `collection_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_line` (
  `collection_lineid` int(11) NOT NULL AUTO_INCREMENT,
  `collectionid` int(11) NOT NULL,
  `entityvalue1` varchar(60) DEFAULT NULL,
  `entityvalue2` varchar(60) DEFAULT NULL,
  `entityvalue3` varchar(60) DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`collection_lineid`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_line`
--

LOCK TABLES `collection_line` WRITE;
/*!40000 ALTER TABLE `collection_line` DISABLE KEYS */;
INSERT INTO `collection_line` VALUES (77,66,NULL,NULL,NULL,'2017-06-18 16:54:10','2017-06-18 16:54:10'),(78,67,NULL,NULL,NULL,'2017-06-18 17:21:30','2017-06-18 17:21:30');
/*!40000 ALTER TABLE `collection_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense` (
  `expenseid` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(25) DEFAULT NULL,
  `orno` varchar(25) DEFAULT NULL,
  `pcv` int(10) NOT NULL,
  `ordate` date DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `establishment` varchar(250) DEFAULT NULL,
  `posted` bit(1) DEFAULT b'0',
  `deleted` bit(1) DEFAULT b'0',
  `remarks` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  PRIMARY KEY (`expenseid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
INSERT INTO `expense` VALUES (24,'UTilities','SI-001',1,'2017-06-01',100.00,'Meralco','\0','\0','This remarks for Water Utilities expense','2017-06-18 17:00:01','2017-06-18 17:00:01',NULL),(25,'UTilities','SI-002',2,'2017-06-18',500.00,'Meralco','','\0',NULL,'2017-06-18 17:00:58','2017-06-18 17:00:58',NULL),(26,'001','12345',3,'2017-06-18',1678.00,'National Bookstore','\0','',NULL,'2017-06-18 17:24:44','2017-06-18 17:24:44',NULL);
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_category`
--

DROP TABLE IF EXISTS `expense_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_category` (
  `expense_categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(25) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdby` bit(1) DEFAULT NULL,
  PRIMARY KEY (`expense_categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_category`
--

LOCK TABLES `expense_category` WRITE;
/*!40000 ALTER TABLE `expense_category` DISABLE KEYS */;
INSERT INTO `expense_category` VALUES (7,'UTilities','Utilities','','2017-06-18 16:56:26','2017-06-18 16:56:26',NULL),(8,'001','Representation','','2017-06-18 17:23:54','2017-06-18 17:23:54',NULL);
/*!40000 ALTER TABLE `expense_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_category_type`
--

DROP TABLE IF EXISTS `expense_category_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_category_type` (
  `expense_category_lineid` int(11) NOT NULL AUTO_INCREMENT,
  `category_code` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  PRIMARY KEY (`expense_category_lineid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_category_type`
--

LOCK TABLES `expense_category_type` WRITE;
/*!40000 ALTER TABLE `expense_category_type` DISABLE KEYS */;
INSERT INTO `expense_category_type` VALUES (6,'UTilities','water','Water','','2017-06-18 16:56:41','2017-06-18 16:56:41',NULL),(7,'UTilities','light','Light','','2017-06-18 17:00:50','2017-06-18 17:00:50',NULL),(8,'001','2233','OB','','2017-06-18 17:24:26','2017-06-18 17:24:26',NULL);
/*!40000 ALTER TABLE `expense_category_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_line`
--

DROP TABLE IF EXISTS `expense_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_line` (
  `expense_lineid` int(11) NOT NULL AUTO_INCREMENT,
  `expenseid` int(11) DEFAULT NULL,
  `entityvalue1` varchar(45) DEFAULT NULL,
  `entityvalue2` varchar(45) DEFAULT NULL,
  `entityvalue3` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  PRIMARY KEY (`expense_lineid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_line`
--

LOCK TABLES `expense_line` WRITE;
/*!40000 ALTER TABLE `expense_line` DISABLE KEYS */;
INSERT INTO `expense_line` VALUES (22,24,'water',NULL,NULL,'2017-06-18 17:00:01','2017-06-18 17:00:01',NULL),(23,25,'light',NULL,NULL,'2017-06-18 17:00:58','2017-06-18 17:00:58',NULL),(24,26,'2233',NULL,NULL,'2017-06-18 17:24:44','2017-06-18 17:24:44',NULL);
/*!40000 ALTER TABLE `expense_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `personid` int(11) NOT NULL AUTO_INCREMENT,
  `lname` varchar(60) DEFAULT NULL,
  `fname` varchar(60) DEFAULT NULL,
  `mname` varchar(60) DEFAULT NULL,
  `type` varchar(45) NOT NULL,
  `active` bit(1) DEFAULT b'1',
  `deleted` bit(1) DEFAULT b'0',
  `datestarteffectivity` date DEFAULT NULL,
  `dateendeffectivity` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  PRIMARY KEY (`personid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (27,'Penafloor','Rommel','A','HOMEOWNER','','\0','2017-06-18','2099-12-31','2017-06-18 16:33:43','2017-06-18 16:33:43',1),(28,'UNIDAD','BERNARDITA','SANCHEZ','HOMEOWNER','','\0','2017-06-18','2099-12-31','2017-06-18 17:19:30','2017-06-18 17:19:30',1),(29,'UNIDAD','BERNIE',NULL,'HOMEOWNER','','\0','2008-01-01','2099-12-31','2008-01-01 06:16:33','2008-01-01 06:16:33',1);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_profile`
--

DROP TABLE IF EXISTS `person_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_profile` (
  `person_profileid` int(11) NOT NULL AUTO_INCREMENT,
  `personid` int(11) NOT NULL,
  `fieldcode` varchar(60) NOT NULL,
  `fieldname` varchar(60) DEFAULT NULL,
  `fieldvalue` varchar(60) DEFAULT NULL,
  `fieldgroup` varchar(25) DEFAULT '01',
  `active` bit(1) DEFAULT b'1',
  `datestarteffectivity` date DEFAULT NULL,
  `dateendeffectivity` date DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`person_profileid`)
) ENGINE=InnoDB AUTO_INCREMENT=483 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_profile`
--

LOCK TABLES `person_profile` WRITE;
/*!40000 ALTER TABLE `person_profile` DISABLE KEYS */;
INSERT INTO `person_profile` VALUES (447,27,'GENDER','Gender',NULL,'01','','2017-06-18','2099-12-31',1,'2017-06-18 16:33:43','2017-06-18 16:33:43'),(448,27,'BIRTHDAY','Birthday',NULL,'01','','2017-06-18','2099-12-31',1,'2017-06-18 16:33:43','2017-06-18 16:33:43'),(449,27,'ADDRESS_STREET','Address Street',NULL,'01','','2017-06-18','2099-12-31',1,'2017-06-18 16:33:43','2017-06-18 16:33:43'),(450,27,'ADDRESS_CITY','Address City',NULL,'01','','2017-06-18','2099-12-31',1,'2017-06-18 16:33:43','2017-06-18 16:33:43'),(451,27,'ADDRESS_PROVINCE','Address City',NULL,'01','','2017-06-18','2099-12-31',1,'2017-06-18 16:33:43','2017-06-18 16:33:43'),(452,27,'CONTACT_MOBILENO','Mobile No.',NULL,'01','','2017-06-18','2099-12-31',1,'2017-06-18 16:33:43','2017-06-18 16:33:43'),(453,27,'CONTACT_TELEPHONENO','Telephone No.',NULL,'01','','2017-06-18','2099-12-31',1,'2017-06-18 16:33:43','2017-06-18 16:33:43'),(454,27,'EMAIL','Email',NULL,'01','','2017-06-18','2099-12-31',1,'2017-06-18 16:33:43','2017-06-18 16:33:43'),(455,27,'YEAR_MOVED','Year moved to Green Ridge',NULL,'01','','2017-06-18','2099-12-31',1,'2017-06-18 16:33:43','2017-06-18 16:33:43'),(456,27,'REPRESENTATIVE','Authorized Representative',NULL,'01','','2017-06-18','2099-12-31',1,'2017-06-18 16:33:43','2017-06-18 16:33:43'),(457,27,'REPRESENTATIVE_RELATIONSHIP','Authorized Representative Relationship.',NULL,'01','','2017-06-18','2099-12-31',1,'2017-06-18 16:33:43','2017-06-18 16:33:43'),(458,27,'REPRESENTATIVE_CONTACTNO','Authorized Representative Contact No.',NULL,'01','','2017-06-18','2099-12-31',1,'2017-06-18 16:33:43','2017-06-18 16:33:43'),(459,28,'GENDER','Gender','FEMALE','01','','2017-06-18','2099-12-31',1,'2017-06-18 17:19:30','2017-06-18 17:19:30'),(460,28,'BIRTHDAY','Birthday','1968-02-26','01','','2017-06-18','2099-12-31',1,'2017-06-18 17:19:30','2017-06-18 17:19:30'),(461,28,'ADDRESS_STREET','Address Street','8 Henderson Greenridge Executive Village','01','','2017-06-18','2099-12-31',1,'2017-06-18 17:19:30','2017-06-18 17:19:30'),(462,28,'ADDRESS_CITY','Address City','Tagpos, Binangonan','01','','2017-06-18','2099-12-31',1,'2017-06-18 17:19:30','2017-06-18 17:19:30'),(463,28,'ADDRESS_PROVINCE','Address City','Rizal','01','','2017-06-18','2099-12-31',1,'2017-06-18 17:19:30','2017-06-18 17:19:30'),(464,28,'CONTACT_MOBILENO','Mobile No.','09175598001','01','','2017-06-18','2099-12-31',1,'2017-06-18 17:19:30','2017-06-18 17:19:30'),(465,28,'CONTACT_TELEPHONENO','Telephone No.','470-4605','01','','2017-06-18','2099-12-31',1,'2017-06-18 17:19:30','2017-06-18 17:19:30'),(466,28,'EMAIL','Email','bernsky_bsu@yahoo.com.ph','01','','2017-06-18','2099-12-31',1,'2017-06-18 17:19:30','2017-06-18 17:19:30'),(467,28,'YEAR_MOVED','Year moved to Green Ridge','1995','01','','2017-06-18','2099-12-31',1,'2017-06-18 17:19:30','2017-06-18 17:19:30'),(468,28,'REPRESENTATIVE','Authorized Representative','UNIDAD, BERNEIL GABRIELLE','01','','2017-06-18','2099-12-31',1,'2017-06-18 17:19:30','2017-06-18 17:19:30'),(469,28,'REPRESENTATIVE_RELATIONSHIP','Authorized Representative Relationship.','daughter','01','','2017-06-18','2099-12-31',1,'2017-06-18 17:19:30','2017-06-18 17:19:30'),(470,28,'REPRESENTATIVE_CONTACTNO','Authorized Representative Contact No.','09175598001','01','','2017-06-18','2099-12-31',1,'2017-06-18 17:19:31','2017-06-18 17:19:31'),(471,29,'GENDER','Gender',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 06:16:33','2008-01-01 06:16:33'),(472,29,'BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 06:16:33','2008-01-01 06:16:33'),(473,29,'ADDRESS_STREET','Address Street',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 06:16:33','2008-01-01 06:16:33'),(474,29,'ADDRESS_CITY','Address City',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 06:16:33','2008-01-01 06:16:33'),(475,29,'ADDRESS_PROVINCE','Address City',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 06:16:33','2008-01-01 06:16:33'),(476,29,'CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 06:16:33','2008-01-01 06:16:33'),(477,29,'CONTACT_TELEPHONENO','Telephone No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 06:16:33','2008-01-01 06:16:33'),(478,29,'EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 06:16:33','2008-01-01 06:16:33'),(479,29,'YEAR_MOVED','Year moved to Green Ridge',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 06:16:33','2008-01-01 06:16:33'),(480,29,'REPRESENTATIVE','Authorized Representative',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 06:16:33','2008-01-01 06:16:33'),(481,29,'REPRESENTATIVE_RELATIONSHIP','Authorized Representative Relationship.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 06:16:33','2008-01-01 06:16:33'),(482,29,'REPRESENTATIVE_CONTACTNO','Authorized Representative Contact No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 06:16:33','2008-01-01 06:16:33');
/*!40000 ALTER TABLE `person_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `transactionid` int(11) NOT NULL AUTO_INCREMENT,
  `trantype` varchar(25) DEFAULT NULL,
  `refid` varchar(25) DEFAULT NULL,
  `refdate` date DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `datefinancial` date DEFAULT NULL,
  `posted` bit(1) DEFAULT b'0',
  `closed` bit(1) DEFAULT b'0',
  `deleted` bit(1) DEFAULT b'0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  PRIMARY KEY (`transactionid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (39,'COLLECTION','1','2017-06-01',100.00,NULL,'','\0','\0','2017-06-18 17:01:54','2017-06-18 17:01:54',NULL),(40,'EXPENSE','SI-002','2017-06-18',500.00,NULL,'','\0','\0','2017-06-18 17:02:16','2017-06-18 17:02:16',NULL);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `active` bit(1) DEFAULT b'1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'admin','admin','',NULL,'2017-06-18 09:19:39');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-24 19:10:17
