CREATE DATABASE  IF NOT EXISTS `airline2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `airline2`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: airline2
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `airplane`
--

DROP TABLE IF EXISTS `airplane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airplane` (
  `ID` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `company` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airplane`
--

LOCK TABLES `airplane` WRITE;
/*!40000 ALTER TABLE `airplane` DISABLE KEYS */;
INSERT INTO `airplane` VALUES ('1201','A320','Airbus'),('1202','A320','Airbus'),('1203','A320','Airbus'),('1204','A320','Airbus'),('1205','A320','Airbus'),('1206','A320','Airbus'),('1207','A320','Airbus'),('1208','A320','Airbus'),('1209','A320','Airbus'),('1210','A320','Airbus'),('1211','A320','Airbus'),('1212','A320','Airbus'),('1213','A320','Airbus'),('1214','A320','Airbus'),('1215','A320','Airbus');
/*!40000 ALTER TABLE `airplane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airport` (
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport`
--

LOCK TABLES `airport` WRITE;
/*!40000 ALTER TABLE `airport` DISABLE KEYS */;
INSERT INTO `airport` VALUES ('DEL','Indira Gandhi International Airport','Delhi','Delhi','India'),('LKO','Chaudhary Charan Singh International Airport','Lucknow','Uttar Pradesh','India'),
('LUH','Ludhiana Airport','Ludhiana','Punjab','India'),('BHO','Raja Bhoj Airport','Bhopal','Madhya Pradesh','India'),('PAB','Bilaspur Airport','Bilaspur','Chhattisgarh','India'),('BLR','Kempegowda International Airport','Bengaluru','Karnataka','India'),('NMB','Daman Airport','Daman','Daman and Diu','India'),('KNU','Kanpur Airport','Kanpur','Uttar Pradesh','India'),('UDR','Maharana Pratap Airport','Udaipur','Rajasthan','India'),('IDR','Devi Ahilya Bai Holkar Airport','Indore','Madhya Pradesh','India'),('JDH','Jodhpur Airport','Jodhpur','Rajasthan','India'),('JLR','Jabalpur Airport','Jabalpur','Madhya Pradesh','India'),('DAI','Darjeeling Airport','Darjeeling','West Bengal','India'),('DED','Jolly Grant Airport','Dehradun','Uttarakhand','India');
/*!40000 ALTER TABLE `airport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `date` date NOT NULL,
  `flightno` varchar(10) NOT NULL,
  `username` varchar(45) NOT NULL,
  `classtype` varchar(20) NOT NULL,
  `paid` int(1) DEFAULT '0',
  PRIMARY KEY (`ID`,`flightno`),
  KEY `username_idx` (`username`),
  KEY `classname_idx` (`classtype`),
  KEY `flightno_idx` (`flightno`,`classtype`),
  CONSTRAINT `flightno` FOREIGN KEY (`flightno`, `classtype`) REFERENCES `class` (`number`, `name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `passanger` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'2020-12-01 17:22:00','2020-12-01','1201','RAM','Economy',0),(2,'2020-12-02 17:22:00','2020-12-02','1202','abc','Buisness',0),(3,'2020-12-03 17:22:00','2020-12-03','1205','sona','Economy',0),(4,'2020-12-01 17:22:00','2020-12-01','1202','senorita','Buisness',0),(5,'2020-12-01 17:22:00','2020-12-01','1212','paul','Buisness',0),(6,'2020-12-01 17:22:00','2020-12-01','1203','Emily','Buisness',0),(7,'2020-12-01 17:22:00','2020-12-01','1213','shweta','Economy',0),(8,'2020-12-01 17:22:00','2020-12-01','1211','shruti','Economy',0),(9,'2020-12-01 17:22:00','2020-12-01','1209','sneha','Economy',0),(10,'2020-12-01 17:22:00','2020-12-01','1204','Rudy','Buisness',0),(11,'2020-12-01 17:22:00','2020-12-01','1208','Rk','Buisness',0),(12,'2020-12-01 17:22:00','2020-12-01','1201','sonia','Economy',0);
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `number` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `capacity` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`number`,`name`),
  KEY `number_idx` (`number`),
  CONSTRAINT `number` FOREIGN KEY (`number`) REFERENCES `flight` (`number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES ('AA100','Business',200,5000),('AA100','Economy',200,1800),('AA120','Business',150,4000),('AA120','Economy',100,1000),('AA1512','Business',100,2000),('AA1512','Economy',150,1500),('AA180','Business',150,2800),('AA180','Economy',140,2400),('AA181','Business',140,2800),('AA181','Economy',180,2100),('AA600','Business',145,2500),('AA600','Economy',180,2050),('AA601','Business',333,3300),('AA601','Economy',250,5260),('AA6861','Business',233,7100);
UNLOCK TABLES;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight` (
  `number` varchar(20) NOT NULL,
  `airplane_id` varchar(10) NOT NULL,
  `departure` varchar(10) NOT NULL,
  `d_time` time NOT NULL,
  `arrival` varchar(10) NOT NULL,
  `a_time` time NOT NULL,
  PRIMARY KEY (`number`),
  KEY `code_idx` (`departure`,`arrival`),
  KEY `airplaneid_idx` (`airplane_id`),
  KEY `arrival_idx` (`arrival`),
  CONSTRAINT `airplaneid` FOREIGN KEY (`airplane_id`) REFERENCES `airplane` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `arrival` FOREIGN KEY (`arrival`) REFERENCES `airport` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `departure` FOREIGN KEY (`departure`) REFERENCES `airport` (`code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES ('AA100','1201','LKO','18:35:00','LUH','21:00:00'),('AA120','1202','BHO','14:35:00','PAB','17:30:00'),('AA1512','1210','BLR','13:40:00','NMB','19:30:00'),('AA180','1203','DEL','07:35:00','BLR','10:30:00'),('AA181','1215','DAI','19:30:00','DED','22:00:00'),('AA600','1204','KNU','17:00:00','UDR','21:00:00'),('AA601','1201','IDR','20:00:00','DEL','23:00:00'),('AA6861','1205','UDR','11:00:00','KNU','13:00:00'),('AA6927','1205','BLR','17:00:00','IDR','19:00:00'),('AA80','1206','JDH','20:00:00','JLR','23:00:00'),('AA986','1212','DED','10:00:00','DAI','14:00:00');
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passanger`
--

DROP TABLE IF EXISTS `passanger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passanger` (
  `username` varchar(30) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `middlename` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cellphone` varchar(15) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passanger`
--

LOCK TABLES `passanger` WRITE;
/*!40000 ALTER TABLE `passanger` DISABLE KEYS */;
INSERT INTO `passanger` VALUES ('abc','abc',NULL,'','abc@utd.edu',NULL,NULL,NULL,'abcdef123456'),('eve','eve','','adi','eve@utd.edu','2143456543','','0000-00-00','Eve123'),('qun','Qun',NULL,'Niu','qun@utd.edu','','Female',NULL,'Niuqun1'),('song','Song',NULL,'Tao','ts@utd.edu',NULL,'Male',NULL,'Songtao1'),('tao','s','','t','t@utd.edu','987654321','','2015-12-06','Ts123456'),('web','web','','pro','web@utd.edu','9998887777','','2015-12-06','Web123'),('xianchu','xianchu',NULL,'chen','xian@utd.edu','','Male',NULL,'Xianchu1');
/*!40000 ALTER TABLE `passanger` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-07 16:57:20
