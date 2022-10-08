-- MariaDB dump 10.19  Distrib 10.7.4-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ArvieDS
-- ------------------------------------------------------
-- Server version	10.7.4-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(60) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `contact_number` int(15) NOT NULL,
  `date` datetime NOT NULL,
  `access` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES
(1,'test','test','test@glory.com.ph','$2y$10$sEWksoBuM7DPCeHAZywmo.pIyU6qGfRufSF/28lPniQBm.W6FveS.',123123123,'2022-09-18 15:04:41',''),
(2,'Cedrick James','Domo','test@glory.com','$2y$10$X9GEBKzy1YYUq5K010m.M.k7NdLUCn57X6bPVX1E0baev7s5MvDh6',123123123,'2022-09-18 15:17:13',''),
(3,'read','me','readme@gmail.com','$2y$10$zZJRgeINR/yYpXgI5O9skONZou79fYF96Nf5cP/uJv2ICFMgrNrry',123123123,'2022-09-18 22:35:05',''),
(4,'Marero','123','marerokevin@gmail.com','$2y$10$MgbnTX/izVUCpeldQyhnceKlm9GLjWfzoefbO6cs4Jdqu46b2oqQu',123123,'2022-09-18 22:49:40',''),
(5,'test','test','test@gmail.com.ph','$2y$10$Xks2lk2/VZAoMWautPTKB.aAJODfpYqil9nLe3.MjakZLQUW1nqPq',123123123,'2022-09-18 23:15:57',''),
(6,'kevin','marero','test@tmail.com','$2y$10$5CJfQLwRqp.PD3ClnQkFJuV893QopQet7t.txh6YAW/vAsN3fsML6',123123123,'2022-09-18 23:19:36',''),
(7,'toys','lol','latoy@gmail.com','$2y$10$7R.bKBPMqK2GlsvQ464GVu52uyFZzCPU8pDANZ5geh5m9nhdfNlkS',123123132,'2022-09-18 23:20:48',''),
(8,'test','sdaasd','rwqer@gmail.com','$2y$10$46uNbWFECLnPmngFX0jFD.hI2bV96OdqNCSYw6ALqkdPOwL3EVk12',123123123,'2022-09-18 23:30:43',''),
(9,'test123','test123','lalisa@glory.com.ph','$2y$10$S2.vwY8Dc6OOPEVYpKdV6uCJKrac1TU46lkGnzlBPK3Otb/fXggDO',123123345,'2022-09-19 23:15:26',''),
(10,'asd123','asd123','waiting@glory.com.ph','$2y$10$yP8UwkcmHJrIj4rdJ4OZZO5mjb9n5eT3TEl7QZQ4anD01gAWiDOvu',123456,'2022-09-19 23:16:41',''),
(11,'Kevin Roy','marero','marero@gmail.com','$2y$10$wX0.cTEeBO1P/wujdA6gtu5cchj.7WD9S7J1qS1oYg7kGTK.VD3yO',123123,'2022-09-20 00:16:50','');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invites`
--

DROP TABLE IF EXISTS `invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invites` (
  `invitesID` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `idOfInvite` int(30) NOT NULL,
  `invitee` varchar(20) NOT NULL,
  `inviteeID` int(30) NOT NULL,
  PRIMARY KEY (`invitesID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invites`
--

LOCK TABLES `invites` WRITE;
/*!40000 ALTER TABLE `invites` DISABLE KEYS */;
INSERT INTO `invites` VALUES
(32,'James Orozo',13,'Kevin Roy marero',11),
(41,'Cedrick James Orozo',12,'James Orozo',13),
(43,'q e',17,'James Orozo',13);
/*!40000 ALTER TABLE `invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationship`
--

DROP TABLE IF EXISTS `relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationship` (
  `level` int(7) NOT NULL,
  `dl` int(10) NOT NULL,
  `rbt` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationship`
--

LOCK TABLES `relationship` WRITE;
/*!40000 ALTER TABLE `relationship` DISABLE KEYS */;
INSERT INTO `relationship` VALUES
(1,10,500),
(2,100,10),
(3,1000,10),
(4,10000,10),
(5,100000,10),
(6,500000,10),
(7,500000,10),
(8,500000,10),
(9,500000,10),
(10,500000,10);
/*!40000 ALTER TABLE `relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `totalbalance`
--

DROP TABLE IF EXISTS `totalbalance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `totalbalance` (
  `totalBalanceId` int(20) NOT NULL AUTO_INCREMENT,
  `userID` int(30) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `totalBalance` int(20) NOT NULL,
  PRIMARY KEY (`totalBalanceId`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `totalbalance`
--

LOCK TABLES `totalbalance` WRITE;
/*!40000 ALTER TABLE `totalbalance` DISABLE KEYS */;
INSERT INTO `totalbalance` VALUES
(27,13,'cedrickjames.orozo@cvsu.edu.ph',1000),
(28,11,'marero@gmail.com',520),
(39,12,'cedrickorozo@gmail.com',0),
(40,17,'arian@gmail.com',0);
/*!40000 ALTER TABLE `totalbalance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `transactionId` int(50) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userId` int(50) NOT NULL,
  `inviteName` varchar(50) NOT NULL,
  `inviteeName` varchar(50) NOT NULL,
  `addedAmount` int(50) NOT NULL,
  `TotalBalance` int(50) NOT NULL,
  PRIMARY KEY (`transactionId`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES
(69,'Direct Referral','cedrickjames.orozo@cvsu.edu.ph',13,'Cedrick James Orozo','James Orozo',500,500),
(70,'Indirect Referral','Kevin Roy marero',11,'Cedrick James Orozo','James Orozo',10,510),
(73,'Direct Referral','cedrickjames.orozo@cvsu.edu.ph',13,'q e','James Orozo',500,1000),
(74,'Indirect Referral','Kevin Roy marero',11,'q e','James Orozo',10,520);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-08  9:37:05
