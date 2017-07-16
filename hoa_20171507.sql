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
  `personid` int(11) NOT NULL,
  `type` varchar(25) DEFAULT NULL,
  `orno` varchar(25) DEFAULT NULL,
  `ordate` date DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `cost_qty` decimal(10,0) DEFAULT NULL,
  `total_cost` decimal(10,0) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `posted` bit(1) DEFAULT b'0',
  `deleted` bit(1) DEFAULT b'0',
  `remarks` varchar(100) DEFAULT NULL,
  `datecreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`collectionid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
INSERT INTO `collection` VALUES (27,'MONTHLYDUES',43,'HOMEOWNER','1','2017-07-02',NULL,NULL,NULL,50.00,'\0','','TEST','2017-07-02 21:59:45',NULL,'2017-07-03 04:59:45','2017-07-03 04:59:45');
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
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  PRIMARY KEY (`collection_categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_category`
--

LOCK TABLES `collection_category` WRITE;
/*!40000 ALTER TABLE `collection_category` DISABLE KEYS */;
INSERT INTO `collection_category` VALUES (10,'MONTHLYDUES','Monthly Dues',NULL,NULL,NULL,'',NULL,NULL,'2017-07-02 22:30:33','2017-07-03 05:30:33',NULL),(11,'CARSTICKER','Car Sticker',NULL,NULL,NULL,'',NULL,NULL,'2017-07-02 22:31:38','2017-07-03 05:31:38',NULL);
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
  `active` bit(1) DEFAULT b'1',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`collection_lineid`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_line`
--

LOCK TABLES `collection_line` WRITE;
/*!40000 ALTER TABLE `collection_line` DISABLE KEYS */;
INSERT INTO `collection_line` VALUES (63,27,'JAN','2017',NULL,'','2017-07-03 04:59:45','2017-07-03 04:59:45');
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
  `category_type` varchar(45) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
INSERT INTO `expense` VALUES (13,'Utilities','LIGHT','1',1,'2017-07-02',100.00,'Meralco','\0','','TEST','2017-07-03 04:58:38','2017-07-03 04:58:38',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_category`
--

LOCK TABLES `expense_category` WRITE;
/*!40000 ALTER TABLE `expense_category` DISABLE KEYS */;
INSERT INTO `expense_category` VALUES (10,'Utilities','Utilities','','2017-07-03 04:58:06','2017-07-03 04:58:06',NULL);
/*!40000 ALTER TABLE `expense_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_category_type`
--

DROP TABLE IF EXISTS `expense_category_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_category_type` (
  `expense_category_typeid` int(11) NOT NULL AUTO_INCREMENT,
  `category_code` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  PRIMARY KEY (`expense_category_typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_category_type`
--

LOCK TABLES `expense_category_type` WRITE;
/*!40000 ALTER TABLE `expense_category_type` DISABLE KEYS */;
INSERT INTO `expense_category_type` VALUES (6,'Utilities','LIGHT','Light','','2017-07-03 04:58:28','2017-07-03 04:58:28',NULL);
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
  `active` bit(1) DEFAULT b'1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  PRIMARY KEY (`expense_lineid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_line`
--

LOCK TABLES `expense_line` WRITE;
/*!40000 ALTER TABLE `expense_line` DISABLE KEYS */;
INSERT INTO `expense_line` VALUES (10,13,NULL,NULL,NULL,'','2017-07-03 04:58:38','2017-07-03 04:58:38',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (43,'Penaflor','Rommel',NULL,'HOMEOWNER','','\0','2017-07-03','2099-12-31','2017-07-03 04:41:24','2017-07-03 04:41:24',1),(44,'ABONADOR','ALBERTO',NULL,'HOMEOWNER','','\0','2008-01-01','2099-12-31','2008-01-01 07:14:25','2008-01-01 07:14:25',1),(45,'AGUVIDA','CONSTANCIO',NULL,'HOMEOWNER','','\0','2008-01-01','2099-12-31','2008-01-01 07:16:44','2008-01-01 07:16:44',1),(46,'ALARCON','ROBERTO',NULL,'HOMEOWNER','','\0','2008-01-01','2099-12-31','2008-01-01 07:18:03','2008-01-01 07:18:03',1),(47,'ALCANTARA','EMIL',NULL,'HOMEOWNER','','\0','2008-01-01','2099-12-31','2008-01-01 07:18:58','2008-01-01 07:18:58',1),(48,'ALCASABAS','FROILAN',NULL,'HOMEOWNER','','\0','2008-01-01','2099-12-31','2008-01-01 07:23:01','2008-01-01 07:23:01',1),(49,'ALMOETE','CHARLES',NULL,'HOMEOWNER','','\0','2008-01-01','2099-12-31','2008-01-01 07:24:45','2008-01-01 07:24:45',1),(50,'ALPAY','RUBEN',NULL,'HOMEOWNER','','\0','2008-01-01','2099-12-31','2008-01-01 07:26:18','2008-01-01 07:26:18',1),(51,'ALQUILLERA','FERNANDO',NULL,'HOMEOWNER','','\0','2008-01-01','2099-12-31','2008-01-01 07:27:34','2008-01-01 07:27:34',1),(52,'ALVAREZ','ALEX',NULL,'HOMEOWNER','','\0','2008-01-01','2099-12-31','2008-01-01 07:28:59','2008-01-01 07:28:59',1),(53,'ANGELES','ALEXANDER',NULL,'HOMEOWNER','','\0','2008-01-01','2099-12-31','2008-01-01 07:31:24','2008-01-01 07:31:24',1),(54,'ANGELES','JOSE FLORANTE JR.',NULL,'HOMEOWNER','','\0','2017-07-16','2099-12-31','2017-07-16 02:16:26','2017-07-16 02:16:26',1),(55,'APREGILIO','RENATO',NULL,'HOMEOWNER','','\0','2017-07-16','2099-12-31','2017-07-16 02:18:52','2017-07-16 02:18:52',1),(56,'ARGUELLES','RESTY',NULL,'HOMEOWNER','','\0','2017-07-16','2099-12-31','2017-07-16 02:21:57','2017-07-16 02:21:57',1),(57,'ARRIOLA','RONALDO',NULL,'HOMEOWNER','','\0','2017-07-16','2099-12-31','2017-07-16 02:23:00','2017-07-16 02:23:00',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=958 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_profile`
--

LOCK TABLES `person_profile` WRITE;
/*!40000 ALTER TABLE `person_profile` DISABLE KEYS */;
INSERT INTO `person_profile` VALUES (673,43,'STATUS','Civil Status','SINGLE','01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:24','2017-07-03 04:41:24'),(674,43,'GENDER','Gender',NULL,'01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:24','2017-07-03 04:41:24'),(675,43,'BIRTHDAY','Birthday',NULL,'01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:24','2017-07-03 04:41:24'),(676,43,'ADDRESS_STREET','Address Street','599 Boni','01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:24','2017-07-03 04:41:24'),(677,43,'ADDRESS_CITY','Address City','Mandaluyong','01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:24','2017-07-03 04:41:24'),(678,43,'ADDRESS_PROVINCE','Address City','Manila','01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:24','2017-07-03 04:41:24'),(679,43,'CONTACT_MOBILENO','Mobile No.',NULL,'01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:24','2017-07-03 04:41:24'),(680,43,'CONTACT_TELEPHONENO','Telephone No.',NULL,'01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:24','2017-07-03 04:41:24'),(681,43,'EMAIL','Email',NULL,'01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:24','2017-07-03 04:41:24'),(682,43,'YEAR_MOVED','Year moved to Green Ridge',NULL,'01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:24','2017-07-03 04:41:24'),(683,43,'REPRESENTATIVE','Authorized Representative',NULL,'01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:25','2017-07-03 04:41:25'),(684,43,'REPRESENTATIVE_RELATIONSHIP','Authorized Representative Relationship.',NULL,'01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:25','2017-07-03 04:41:25'),(685,43,'REPRESENTATIVE_CONTACTNO','Authorized Representative Contact No.',NULL,'01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:25','2017-07-03 04:41:25'),(686,43,'WIFE_LNAME','Wife lastname',NULL,'01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:25','2017-07-03 04:41:25'),(687,43,'WIFE_FNAME','Wife firstname',NULL,'01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:25','2017-07-03 04:41:25'),(688,43,'WIFE_MNAME','Wife middlename',NULL,'01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:25','2017-07-03 04:41:25'),(689,43,'WIFE_BIRTHDAY','Birthday',NULL,'01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:25','2017-07-03 04:41:25'),(690,43,'WIFE_CONTACT_MOBILENO','Mobile No.',NULL,'01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:25','2017-07-03 04:41:25'),(691,43,'WIFE_EMAIL','Email',NULL,'01','','2017-07-03','2099-12-31',1,'2017-07-03 04:41:25','2017-07-03 04:41:25'),(692,44,'STATUS','Civil Status','MARRIED','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:25','2008-01-01 07:14:26'),(693,44,'GENDER','Gender',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:26','2008-01-01 07:14:26'),(694,44,'BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:26','2008-01-01 07:14:26'),(695,44,'ADDRESS_STREET','Address Street','Rowhouse L46 B6 P4','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:26','2008-01-01 07:14:26'),(696,44,'ADDRESS_CITY','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:26','2008-01-01 07:14:26'),(697,44,'ADDRESS_PROVINCE','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:26','2008-01-01 07:14:26'),(698,44,'CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:26','2008-01-01 07:14:26'),(699,44,'CONTACT_TELEPHONENO','Telephone No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:26','2008-01-01 07:14:26'),(700,44,'EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:26','2008-01-01 07:14:26'),(701,44,'YEAR_MOVED','Year moved to Green Ridge',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:26','2008-01-01 07:14:26'),(702,44,'REPRESENTATIVE','Authorized Representative',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:26','2008-01-01 07:14:26'),(703,44,'REPRESENTATIVE_RELATIONSHIP','Authorized Representative Relationship.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:26','2008-01-01 07:14:26'),(704,44,'REPRESENTATIVE_CONTACTNO','Authorized Representative Contact No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:26','2008-01-01 07:14:26'),(705,44,'WIFE_LNAME','Wife lastname','ABONADOR','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:26','2008-01-01 07:14:26'),(706,44,'WIFE_FNAME','Wife firstname','MYRA','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:26','2008-01-01 07:14:26'),(707,44,'WIFE_MNAME','Wife middlename',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:26','2008-01-01 07:14:26'),(708,44,'WIFE_BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:26','2008-01-01 07:14:26'),(709,44,'WIFE_CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:26','2008-01-01 07:14:26'),(710,44,'WIFE_EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:14:26','2008-01-01 07:14:26'),(711,45,'STATUS','Civil Status','MARRIED','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:44','2008-01-01 07:16:44'),(712,45,'GENDER','Gender',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:44','2008-01-01 07:16:44'),(713,45,'BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:44','2008-01-01 07:16:44'),(714,45,'ADDRESS_STREET','Address Street','De la Cour L31 B6 P4','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:45','2008-01-01 07:16:45'),(715,45,'ADDRESS_CITY','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:45','2008-01-01 07:16:45'),(716,45,'ADDRESS_PROVINCE','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:45','2008-01-01 07:16:45'),(717,45,'CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:45','2008-01-01 07:16:45'),(718,45,'CONTACT_TELEPHONENO','Telephone No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:45','2008-01-01 07:16:45'),(719,45,'EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:45','2008-01-01 07:16:45'),(720,45,'YEAR_MOVED','Year moved to Green Ridge',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:45','2008-01-01 07:16:45'),(721,45,'REPRESENTATIVE','Authorized Representative',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:45','2008-01-01 07:16:45'),(722,45,'REPRESENTATIVE_RELATIONSHIP','Authorized Representative Relationship.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:45','2008-01-01 07:16:45'),(723,45,'REPRESENTATIVE_CONTACTNO','Authorized Representative Contact No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:45','2008-01-01 07:16:45'),(724,45,'WIFE_LNAME','Wife lastname','AGUVIDA','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:45','2008-01-01 07:16:45'),(725,45,'WIFE_FNAME','Wife firstname','FELICISIMA','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:45','2008-01-01 07:16:45'),(726,45,'WIFE_MNAME','Wife middlename',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:45','2008-01-01 07:16:45'),(727,45,'WIFE_BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:45','2008-01-01 07:16:45'),(728,45,'WIFE_CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:45','2008-01-01 07:16:45'),(729,45,'WIFE_EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:16:45','2008-01-01 07:16:45'),(730,46,'STATUS','Civil Status','MARRIED','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(731,46,'GENDER','Gender',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(732,46,'BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(733,46,'ADDRESS_STREET','Address Street','Forestburg L36 B8 P4','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(734,46,'ADDRESS_CITY','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(735,46,'ADDRESS_PROVINCE','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(736,46,'CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(737,46,'CONTACT_TELEPHONENO','Telephone No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(738,46,'EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(739,46,'YEAR_MOVED','Year moved to Green Ridge',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(740,46,'REPRESENTATIVE','Authorized Representative',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(741,46,'REPRESENTATIVE_RELATIONSHIP','Authorized Representative Relationship.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(742,46,'REPRESENTATIVE_CONTACTNO','Authorized Representative Contact No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(743,46,'WIFE_LNAME','Wife lastname','ALARCON','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(744,46,'WIFE_FNAME','Wife firstname','GENALYN','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(745,46,'WIFE_MNAME','Wife middlename',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(746,46,'WIFE_BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(747,46,'WIFE_CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(748,46,'WIFE_EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:03','2008-01-01 07:18:03'),(749,47,'STATUS','Civil Status','MARRIED','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(750,47,'GENDER','Gender',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(751,47,'BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(752,47,'ADDRESS_STREET','Address Street','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(753,47,'ADDRESS_CITY','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(754,47,'ADDRESS_PROVINCE','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(755,47,'CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(756,47,'CONTACT_TELEPHONENO','Telephone No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(757,47,'EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(758,47,'YEAR_MOVED','Year moved to Green Ridge',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(759,47,'REPRESENTATIVE','Authorized Representative',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(760,47,'REPRESENTATIVE_RELATIONSHIP','Authorized Representative Relationship.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(761,47,'REPRESENTATIVE_CONTACTNO','Authorized Representative Contact No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(762,47,'WIFE_LNAME','Wife lastname','ALCANTARA','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(763,47,'WIFE_FNAME','Wife firstname','MIMI','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(764,47,'WIFE_MNAME','Wife middlename',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(765,47,'WIFE_BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(766,47,'WIFE_CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(767,47,'WIFE_EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:18:58','2008-01-01 07:18:58'),(768,48,'STATUS','Civil Status','MARRIED','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(769,48,'GENDER','Gender',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(770,48,'BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(771,48,'ADDRESS_STREET','Address Street','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(772,48,'ADDRESS_CITY','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(773,48,'ADDRESS_PROVINCE','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(774,48,'CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(775,48,'CONTACT_TELEPHONENO','Telephone No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(776,48,'EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(777,48,'YEAR_MOVED','Year moved to Green Ridge',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(778,48,'REPRESENTATIVE','Authorized Representative',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(779,48,'REPRESENTATIVE_RELATIONSHIP','Authorized Representative Relationship.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(780,48,'REPRESENTATIVE_CONTACTNO','Authorized Representative Contact No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(781,48,'WIFE_LNAME','Wife lastname','ALCASABAS','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(782,48,'WIFE_FNAME','Wife firstname','ASTERIA','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(783,48,'WIFE_MNAME','Wife middlename',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(784,48,'WIFE_BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(785,48,'WIFE_CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(786,48,'WIFE_EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:23:01','2008-01-01 07:23:01'),(787,49,'STATUS','Civil Status','MARRIED','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(788,49,'GENDER','Gender',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(789,49,'BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(790,49,'ADDRESS_STREET','Address Street','Hasting L10 B22 P2','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(791,49,'ADDRESS_CITY','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(792,49,'ADDRESS_PROVINCE','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(793,49,'CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(794,49,'CONTACT_TELEPHONENO','Telephone No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(795,49,'EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(796,49,'YEAR_MOVED','Year moved to Green Ridge',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(797,49,'REPRESENTATIVE','Authorized Representative',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(798,49,'REPRESENTATIVE_RELATIONSHIP','Authorized Representative Relationship.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(799,49,'REPRESENTATIVE_CONTACTNO','Authorized Representative Contact No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(800,49,'WIFE_LNAME','Wife lastname','ALMOETE','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(801,49,'WIFE_FNAME','Wife firstname','HELEN','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(802,49,'WIFE_MNAME','Wife middlename',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(803,49,'WIFE_BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(804,49,'WIFE_CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(805,49,'WIFE_EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:24:45','2008-01-01 07:24:45'),(806,50,'STATUS','Civil Status','MARRIED','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(807,50,'GENDER','Gender',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(808,50,'BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(809,50,'ADDRESS_STREET','Address Street','Ellerslie L8 B12 P2','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(810,50,'ADDRESS_CITY','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(811,50,'ADDRESS_PROVINCE','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(812,50,'CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(813,50,'CONTACT_TELEPHONENO','Telephone No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(814,50,'EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(815,50,'YEAR_MOVED','Year moved to Green Ridge',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(816,50,'REPRESENTATIVE','Authorized Representative',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(817,50,'REPRESENTATIVE_RELATIONSHIP','Authorized Representative Relationship.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(818,50,'REPRESENTATIVE_CONTACTNO','Authorized Representative Contact No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(819,50,'WIFE_LNAME','Wife lastname','ALPAY','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(820,50,'WIFE_FNAME','Wife firstname','CARMEN','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(821,50,'WIFE_MNAME','Wife middlename',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(822,50,'WIFE_BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(823,50,'WIFE_CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(824,50,'WIFE_EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:26:18','2008-01-01 07:26:18'),(825,51,'STATUS','Civil Status','MARRIED','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(826,51,'GENDER','Gender',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(827,51,'BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(828,51,'ADDRESS_STREET','Address Street','Henderson L7 B18 P1','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(829,51,'ADDRESS_CITY','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(830,51,'ADDRESS_PROVINCE','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(831,51,'CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(832,51,'CONTACT_TELEPHONENO','Telephone No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(833,51,'EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(834,51,'YEAR_MOVED','Year moved to Green Ridge',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(835,51,'REPRESENTATIVE','Authorized Representative',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(836,51,'REPRESENTATIVE_RELATIONSHIP','Authorized Representative Relationship.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(837,51,'REPRESENTATIVE_CONTACTNO','Authorized Representative Contact No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(838,51,'WIFE_LNAME','Wife lastname','ALQUILLERA','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(839,51,'WIFE_FNAME','Wife firstname','GRACHELL','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(840,51,'WIFE_MNAME','Wife middlename',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(841,51,'WIFE_BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(842,51,'WIFE_CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(843,51,'WIFE_EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:27:34','2008-01-01 07:27:34'),(844,52,'STATUS','Civil Status','MARRIED','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(845,52,'GENDER','Gender',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(846,52,'BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(847,52,'ADDRESS_STREET','Address Street','Queenstown L9 B9 P1','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(848,52,'ADDRESS_CITY','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(849,52,'ADDRESS_PROVINCE','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(850,52,'CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(851,52,'CONTACT_TELEPHONENO','Telephone No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(852,52,'EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(853,52,'YEAR_MOVED','Year moved to Green Ridge',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(854,52,'REPRESENTATIVE','Authorized Representative',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(855,52,'REPRESENTATIVE_RELATIONSHIP','Authorized Representative Relationship.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(856,52,'REPRESENTATIVE_CONTACTNO','Authorized Representative Contact No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(857,52,'WIFE_LNAME','Wife lastname','ALVAREZ','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(858,52,'WIFE_FNAME','Wife firstname','AMIE','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(859,52,'WIFE_MNAME','Wife middlename',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(860,52,'WIFE_BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(861,52,'WIFE_CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(862,52,'WIFE_EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:28:59','2008-01-01 07:28:59'),(863,53,'STATUS','Civil Status','MARRIED','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(864,53,'GENDER','Gender',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(865,53,'BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(866,53,'ADDRESS_STREET','Address Street','Petone L8 B11 P1','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(867,53,'ADDRESS_CITY','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(868,53,'ADDRESS_PROVINCE','Address City','-','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(869,53,'CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(870,53,'CONTACT_TELEPHONENO','Telephone No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(871,53,'EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(872,53,'YEAR_MOVED','Year moved to Green Ridge',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(873,53,'REPRESENTATIVE','Authorized Representative',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(874,53,'REPRESENTATIVE_RELATIONSHIP','Authorized Representative Relationship.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(875,53,'REPRESENTATIVE_CONTACTNO','Authorized Representative Contact No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(876,53,'WIFE_LNAME','Wife lastname','ANGELES','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(877,53,'WIFE_FNAME','Wife firstname','MA. CLEMENTINA','01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(878,53,'WIFE_MNAME','Wife middlename',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(879,53,'WIFE_BIRTHDAY','Birthday',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(880,53,'WIFE_CONTACT_MOBILENO','Mobile No.',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(881,53,'WIFE_EMAIL','Email',NULL,'01','','2008-01-01','2099-12-31',1,'2008-01-01 07:31:24','2008-01-01 07:31:24'),(882,54,'STATUS','Civil Status','MARRIED','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(883,54,'GENDER','Gender',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(884,54,'BIRTHDAY','Birthday',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(885,54,'ADDRESS_STREET','Address Street','Wellington L14 B16 P1','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(886,54,'ADDRESS_CITY','Address City','-','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(887,54,'ADDRESS_PROVINCE','Address City','-','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(888,54,'CONTACT_MOBILENO','Mobile No.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(889,54,'CONTACT_TELEPHONENO','Telephone No.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(890,54,'EMAIL','Email',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(891,54,'YEAR_MOVED','Year moved to Green Ridge',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(892,54,'REPRESENTATIVE','Authorized Representative',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(893,54,'REPRESENTATIVE_RELATIONSHIP','Authorized Representative Relationship.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(894,54,'REPRESENTATIVE_CONTACTNO','Authorized Representative Contact No.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(895,54,'WIFE_LNAME','Wife lastname','ANGELES','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(896,54,'WIFE_FNAME','Wife firstname','CORAZON','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(897,54,'WIFE_MNAME','Wife middlename',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(898,54,'WIFE_BIRTHDAY','Birthday',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(899,54,'WIFE_CONTACT_MOBILENO','Mobile No.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(900,54,'WIFE_EMAIL','Email',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:16:26','2017-07-16 02:16:26'),(901,55,'STATUS','Civil Status','MARRIED','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(902,55,'GENDER','Gender',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(903,55,'BIRTHDAY','Birthday',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(904,55,'ADDRESS_STREET','Address Street','PineHaven St., P3','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(905,55,'ADDRESS_CITY','Address City','-','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(906,55,'ADDRESS_PROVINCE','Address City','-','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(907,55,'CONTACT_MOBILENO','Mobile No.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(908,55,'CONTACT_TELEPHONENO','Telephone No.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(909,55,'EMAIL','Email',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(910,55,'YEAR_MOVED','Year moved to Green Ridge',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(911,55,'REPRESENTATIVE','Authorized Representative',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(912,55,'REPRESENTATIVE_RELATIONSHIP','Authorized Representative Relationship.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(913,55,'REPRESENTATIVE_CONTACTNO','Authorized Representative Contact No.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(914,55,'WIFE_LNAME','Wife lastname','APREGILIO','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(915,55,'WIFE_FNAME','Wife firstname','ROSE','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(916,55,'WIFE_MNAME','Wife middlename',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(917,55,'WIFE_BIRTHDAY','Birthday',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(918,55,'WIFE_CONTACT_MOBILENO','Mobile No.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(919,55,'WIFE_EMAIL','Email',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:18:52','2017-07-16 02:18:52'),(920,56,'STATUS','Civil Status','MARRIED','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(921,56,'GENDER','Gender',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(922,56,'BIRTHDAY','Birthday',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(923,56,'ADDRESS_STREET','Address Street','Stratford L1 B22 P1','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(924,56,'ADDRESS_CITY','Address City','-','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(925,56,'ADDRESS_PROVINCE','Address City','-','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(926,56,'CONTACT_MOBILENO','Mobile No.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(927,56,'CONTACT_TELEPHONENO','Telephone No.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(928,56,'EMAIL','Email',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(929,56,'YEAR_MOVED','Year moved to Green Ridge',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(930,56,'REPRESENTATIVE','Authorized Representative',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(931,56,'REPRESENTATIVE_RELATIONSHIP','Authorized Representative Relationship.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(932,56,'REPRESENTATIVE_CONTACTNO','Authorized Representative Contact No.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(933,56,'WIFE_LNAME','Wife lastname','ARGUELLES','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(934,56,'WIFE_FNAME','Wife firstname','MIMI','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(935,56,'WIFE_MNAME','Wife middlename',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(936,56,'WIFE_BIRTHDAY','Birthday',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(937,56,'WIFE_CONTACT_MOBILENO','Mobile No.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(938,56,'WIFE_EMAIL','Email',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:21:57','2017-07-16 02:21:57'),(939,57,'STATUS','Civil Status','MARRIED','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00'),(940,57,'GENDER','Gender',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00'),(941,57,'BIRTHDAY','Birthday',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00'),(942,57,'ADDRESS_STREET','Address Street','Coromandel L27 B28 P4','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00'),(943,57,'ADDRESS_CITY','Address City','-','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00'),(944,57,'ADDRESS_PROVINCE','Address City','-','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00'),(945,57,'CONTACT_MOBILENO','Mobile No.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00'),(946,57,'CONTACT_TELEPHONENO','Telephone No.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00'),(947,57,'EMAIL','Email',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00'),(948,57,'YEAR_MOVED','Year moved to Green Ridge',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00'),(949,57,'REPRESENTATIVE','Authorized Representative',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00'),(950,57,'REPRESENTATIVE_RELATIONSHIP','Authorized Representative Relationship.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00'),(951,57,'REPRESENTATIVE_CONTACTNO','Authorized Representative Contact No.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00'),(952,57,'WIFE_LNAME','Wife lastname','ARRIOLA','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00'),(953,57,'WIFE_FNAME','Wife firstname','MA. CRISTINA','01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00'),(954,57,'WIFE_MNAME','Wife middlename',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00'),(955,57,'WIFE_BIRTHDAY','Birthday',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00'),(956,57,'WIFE_CONTACT_MOBILENO','Mobile No.',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00'),(957,57,'WIFE_EMAIL','Email',NULL,'01','','2017-07-16','2099-12-31',1,'2017-07-16 02:23:00','2017-07-16 02:23:00');
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
  `trantype1` varchar(25) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `active` bit(1) DEFAULT b'1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'admin','$2y$10$cw0B4VYWxHLXYLTtUCAJXe6J0oW49pa3yQje8E7Y9jngYRDou.aLe','',NULL,'2017-07-02 15:28:58',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-15 19:23:23
