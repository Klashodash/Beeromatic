-- MySQL dump 10.16  Distrib 10.1.8-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: Beertabase
-- ------------------------------------------------------
-- Server version	10.1.8-MariaDB

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
-- Table structure for table `beer`
--

DROP TABLE IF EXISTS `beer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(64) NOT NULL,
  `Description` varchar(512) DEFAULT NULL,
  `Location` varchar(256) NOT NULL,
  `Alccontent` float NOT NULL,
  `Image` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beer`
--

LOCK TABLES `beer` WRITE;
/*!40000 ALTER TABLE `beer` DISABLE KEYS */;
INSERT INTO `beer` VALUES (5,'Asahi Super Dry','Japanese dry beer','Japan',4.5,'asahi.jpg'),(6,'Corona','Mexican beer','Mexico',4.5,'corona.jpg'),(8,'Krombacher','German beer','Germany',4.5,'krombacher.jpg'),(9,'Baltika ','Russian beer','Russia',4.5,'baltika.jpg'),(10,'Antarctica ','Brazilian beer','Brazil',4.5,'antarctica.jpg'),(11,'Miller Lite','American light beer','Milwaukee, Wisconsin, USA',4.2,'millerlite.jpg'),(12,'Brahma ','Another Brazilian beer, pale lager','Brazil',4.3,'brahma.jpg'),(13,'Harbin ','Chinese beer','Harbin, China',4.5,'harbin.jpg'),(14,'Heineken','Dutch beer, pale lager','Zoeterwoude, Netherlands',5.4,'heineken.jpg'),(15,'Yanjing','Another Chinese beer','Beijing, China',4.5,'yanjing.jpg'),(16,'Skol','Yet another Brazilian beer','Brazil',2.8,'skol.jpg'),(17,'Budweiser ','Another American beer','St. Louis, Missouri, USA',5,'budweiser.jpg'),(18,'Bud Light','Yet another American light beer','St. Louis, Missouri, USA',4.2,'budlight.jpg'),(19,'Tsingtao','Yet another Chinese beer','Qingdao, Shandong, China',4.7,'tsingtao.jpg'),(20,'Snow','Another Chinese beer, best selling beer brand in the world',' Beijing, China',3.5,'snow.jpg');
/*!40000 ALTER TABLE `beer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-16 23:44:38
