-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: battledrioidsql
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.19.04.2

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
-- Table structure for table `droids`
--

DROP TABLE IF EXISTS `droids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `droids` (
  `slnumber` int(11) NOT NULL AUTO_INCREMENT,
  `Kind` char(255) NOT NULL,
  `Description` text NOT NULL,
  `Strength` int(11) NOT NULL,
  `Agility` int(11) NOT NULL,
  `Intelligence` int(11) NOT NULL,
  `Terrain` varchar(255) NOT NULL,
  `Type` char(20) NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`slnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `droids`
--

LOCK TABLES `droids` WRITE;
/*!40000 ALTER TABLE `droids` DISABLE KEYS */;
INSERT INTO `droids` VALUES (2,'B2 Super battle droids','B2 super battle droids, also known as super battle droids or super droids, were an advanced battle droid used by the Confederacy of Independent Systems during the Clone Wars. Super battle droids were much stronger than their predecessors, and like the updated B1s used by the Confederacy, they did not require a command system to operate, which gave the droids limited independence.',6,4,8,'Air, Under water, Inter Galactic Space, Ground, Buildings','droid army','@/../assets/images/droidarmy/SuperBattleDroidDetail-SWE.png'),(3,'B1 Battle droids','B1 battle droids, also referred to as standard battle droids, were the most widely used battle droids manufactured by Baktoid Combat Automata and Baktoid Armor Workshop',3,5,7,'Air, Under water, Inter Galactic Space, Ground, Buildings','droid army','@/../assets/images/droidarmy/b1battledroid.png'),(4,'Armored Assault Tanks','The Armored Assault Tank, also known as the AAT battle tank or the AAT-1 Hover Tank, was an artillery vehicle used by the Trade Federation',8,3,2,'Air, Under water, Inter Galactic Space, Ground, Buildings','droid army','@/../assets/images/droidarmy/AAT_BF2.png'),(17,'test,test','test',4,4,4,'test,test','droid army','@/../assets/images/droidarmy/Battle_Droids.png'),(24,'test','test',5,4,5,'test','droid army','@/../assets/images/droidarmy/Christophsis_shield.png');
/*!40000 ALTER TABLE `droids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `slnumber` int(11) NOT NULL AUTO_INCREMENT,
  `Winner` char(255) NOT NULL,
  `TotalBattlePoint` int(11) NOT NULL,
  `TotalKill` int(11) NOT NULL,
  `TotalDamage` int(11) NOT NULL,
  `status` char(25) NOT NULL,
  PRIMARY KEY (`slnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (103,'Clone Tropper',30,6,600,'loose'),(104,'Droid',74,14,1482,'win'),(105,'Clone Tropper',30,6,600,'loose'),(106,'Clone Tropper',30,6,600,'loose'),(107,'Droid',2277,455,45546,'win'),(108,'Droid',1555,311,31110,'win'),(109,'Clone Tropper',30,6,600,'loose'),(110,'Clone Tropper',30,6,600,'loose'),(111,'Droid',1510,302,30217,'win'),(112,'Clone Tropper',20,4,400,'loose'),(113,'Droid',850,170,17008,'win'),(114,'Droid',1279,255,25584,'win'),(115,'Clone Tropper',20,4,400,'loose'),(116,'Clone Tropper',20,4,400,'loose'),(117,'Droid',783,156,15674,'win'),(118,'Droid',1037,207,20740,'win'),(119,'Clone Tropper',20,4,400,'loose'),(120,'Clone Tropper',20,4,400,'loose'),(121,'Clone Tropper',20,4,400,'loose'),(122,'Clone Tropper',20,4,400,'loose'),(123,'Clone Tropper',20,4,400,'loose'),(124,'Clone Tropper',20,4,400,'loose'),(125,'Clone Tropper',25,5,500,'loose'),(126,'Clone Tropper',20,4,400,'loose'),(127,'Clone Tropper',25,5,500,'loose'),(128,'Clone Tropper',20,4,400,'loose'),(129,'Clone Tropper',20,4,400,'loose'),(130,'Clone Tropper',25,5,500,'loose'),(131,'Droid',789,157,15789,'win'),(132,'Clone Tropper',25,5,500,'loose'),(133,'Clone Tropper',25,5,500,'loose'),(134,'Droid',1020,204,20407,'win'),(135,'Clone Tropper',25,5,500,'loose'),(136,'Droid',1157,231,23151,'win'),(137,'Clone Tropper',25,5,500,'loose'),(138,'Clone Tropper',10,2,200,'loose'),(139,'Clone Tropper',40,8,800,'loose'),(140,'Clone Tropper',30,6,600,'loose'),(141,'Clone Tropper',20,4,400,'loose'),(142,'Droid',4692,938,93858,'win'),(143,'Clone Tropper',50,10,1000,'loose'),(144,'Droid',6368,1273,127367,'win'),(145,'Clone Tropper',35,7,700,'loose'),(146,'Clone Tropper',5,1,100,'loose'),(147,'Clone Tropper',80,16,1600,'loose'),(148,'Droid',4175,835,83507,'win'),(149,'Clone Tropper',30,6,600,'loose'),(150,'Droid',2798,559,55975,'win'),(151,'Clone Tropper',15,3,300,'loose'),(152,'Clone Tropper',25,5,500,'loose'),(153,'Clone Tropper',40,8,800,'loose'),(154,'Droid',7285,1457,145701,'win'),(155,'Droid',4336,867,86724,'win'),(156,'Droid',480,96,9619,'win'),(157,'Droid',4372,874,87443,'win'),(158,'Droid',3686,737,73727,'win'),(159,'Droid',4485,897,89710,'win'),(160,'Droid',5319,1063,106394,'win'),(161,'Droid',4134,826,82683,'win'),(162,'Droid',1184,236,23681,'win'),(163,'Clone Tropper',40,8,800,'loose'),(164,'Clone Tropper',15,3,300,'loose'),(165,'Droid',3428,685,68574,'win'),(166,'Droid',3256,651,65138,'win'),(167,'Clone Tropper',55,11,1100,'loose'),(168,'Droid',439,87,8787,'win'),(169,'Clone Tropper',35,7,700,'loose'),(170,'Clone Tropper',40,8,800,'loose'),(171,'Droid',2814,562,56290,'win'),(172,'Clone Tropper',70,14,1400,'loose');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `troppers`
--

DROP TABLE IF EXISTS `troppers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `troppers` (
  `slnumber` int(11) NOT NULL AUTO_INCREMENT,
  `Kind` char(255) NOT NULL,
  `Description` text NOT NULL,
  `Strength` int(11) NOT NULL,
  `Agility` int(11) NOT NULL,
  `Intelligence` int(11) NOT NULL,
  `Terrain` varchar(255) NOT NULL,
  `Type` char(20) NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`slnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `troppers`
--

LOCK TABLES `troppers` WRITE;
/*!40000 ALTER TABLE `troppers` DISABLE KEYS */;
INSERT INTO `troppers` VALUES (1,'Advanced Recon Commandos','Also known as ARC troopers, were elite clone troopers that excel and received further training.',6,3,5,'Air, Under water, Inter Galactic Space, Ground, Buildings','clone trooper','@/../assets/images/Troopers/Clone_trooper_armor.png'),(2,'Clone SCUBA troopers','Clone troopers equipped with underwater armor and weaponry.',4,3,7,'Under Water, Ground','clone trooper','@/../assets/images/Troopers/CloneSCUBAtrooper-TCWs4BR1.png'),(3,'Clone sharpshooters','Clone troopers trained to be snipers.',2,7,8,'Ground, Buildings','clone trooper','@/../assets/images/Troopers/KixFull-SWE.png'),(4,'Clone jetpack troopers','Clone troopers equipped with a jetpack and missile launcher',8,8,4,'Ground, Inter Galactic Space','clone trooper','@/../assets/images/Troopers/Phase1Jumptrooper_BFII.png'),(5,'clone ordnance specialists','Clone troopers that have received specialized training in arming and diffusing bombs.',9,7,4,'Ground, Buildings','clone trooper','@/../assets/images/Troopers/Squad_Clone_Trooper_Ordnance_Specialist.png'),(7,'test','test',4,4,4,'test,test,test','clone trooper','@/../assets/images/Troopers/RiotCloneTrooper-TCWs2BR2.png'),(9,'test','test',4,4,4,'test','clone trooper','@/../assets/images/Troopers/CloneJumpTrooper.jpg');
/*!40000 ALTER TABLE `troppers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-15 12:15:21
