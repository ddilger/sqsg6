-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cs499
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.14.04.1

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
-- Table structure for table `phone_list`
--

DROP TABLE IF EXISTS `phone_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `carrier` varchar(10) DEFAULT NULL,
  `international_code` varchar(4) DEFAULT NULL,
  `primary_phone` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_phone_number` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_list`
--

LOCK TABLES `phone_list` WRITE;
/*!40000 ALTER TABLE `phone_list` DISABLE KEYS */;
INSERT INTO `phone_list` VALUES (2,'8598661142',8,'2017-04-08 14:12:43','VERIZON','+1',0),(3,'8598661234',8,'2017-04-08 14:12:43','VERIZON','+1',0),(6,'9876543210',8,'2017-04-08 14:12:43','VERIZON','+1',0),(7,'3456781234',8,'2017-04-08 14:12:43','VERIZON','+1',0),(8,'6781234567',8,'2017-04-08 14:12:43','VERIZON','+1',0),(10,'1234567890',8,'2017-04-09 13:55:55',NULL,NULL,1),(13,'4567891234',10,'2017-04-09 14:20:23',NULL,NULL,1),(14,'9012345672',-1,'2017-04-09 14:59:15',NULL,NULL,1),(15,'3141592653',27,'2017-04-09 15:02:59',NULL,NULL,1),(16,'4857693021',28,'2017-04-09 15:06:13',NULL,NULL,1),(17,'9786542310',29,'2017-04-09 15:07:18',NULL,NULL,1),(18,'7143562934',30,'2017-04-09 15:08:42',NULL,NULL,1),(19,'3152456920',31,'2017-04-09 15:10:02',NULL,NULL,1),(20,'1233142345',8,'2017-04-13 17:29:44','VERIZON','+1',0);
/*!40000 ALTER TABLE `phone_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-26 20:27:59
