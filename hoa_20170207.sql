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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_line`
--

LOCK TABLES `collection_line` WRITE;
/*!40000 ALTER TABLE `collection_line` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_category`
--

LOCK TABLES `expense_category` WRITE;
/*!40000 ALTER TABLE `expense_category` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_category_type`
--

LOCK TABLES `expense_category_type` WRITE;
/*!40000 ALTER TABLE `expense_category_type` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_line`
--

LOCK TABLES `expense_line` WRITE;
/*!40000 ALTER TABLE `expense_line` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=673 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_profile`
--

LOCK TABLES `person_profile` WRITE;
/*!40000 ALTER TABLE `person_profile` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;
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

-- Dump completed on 2017-07-02 16:07:48
