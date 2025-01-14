CREATE DATABASE  IF NOT EXISTS `stackoverflow` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `stackoverflow`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: stackoverflow
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile` (
  `USER_EMAIL` varchar(50) NOT NULL,
  `USER_PROFILE_PIC` longtext,
  `USER_JOIN_DATE` date NOT NULL,
  `USER_VISITS` int DEFAULT '0',
  `USER_LOCATION` varchar(50) DEFAULT NULL,
  `USER_TITLE` varchar(100) DEFAULT NULL,
  `USER_ABOUT` longtext,
  `USER_WEBSITE` varchar(50) DEFAULT NULL,
  `USER_TWITTER` varchar(100) DEFAULT NULL,
  `USER_GITHUB` varchar(100) DEFAULT NULL,
  KEY `USER_EMAIL` (`USER_EMAIL`),
  CONSTRAINT `user_profile_ibfk_1` FOREIGN KEY (`USER_EMAIL`) REFERENCES `users` (`USER_EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES ('lukeben@gmail.com',NULL,'2024-01-03',0,NULL,NULL,NULL,NULL,NULL,NULL),('davidsmith@gmail.com',NULL,'2024-01-03',0,NULL,NULL,NULL,NULL,NULL,NULL),('davidhall@gmail.com',NULL,'2024-01-03',0,NULL,NULL,NULL,NULL,NULL,NULL),('jacquiemarvin@gmail.com',NULL,'2024-01-03',0,NULL,NULL,NULL,NULL,NULL,NULL),('kylenichole@gmail.com',NULL,'2024-01-03',0,NULL,NULL,NULL,NULL,NULL,NULL),('ryanjones@gmail.com','ryanjones.jpg','2024-01-03',4,'New York','Data Analyst','','www.ryanjones.com','www.twitter.com/ryanjones','www.github.com/ryanjones'),('sujitkumar@gmail.com','sujitkumar.jpg','2024-01-03',3,'Berlin','Data Scientics','','www.sujitkumar.com','www.twitter.com/sujitkumar','www.github.com/sujitkumar'),('aakanshapandey@gmail.com','aakanshapandey.jpg','2024-01-03',8,'Mumbai','Full Stack Developer','','www.aakanshapandey.com','www.twitter.com/aakanshapandey','www.github.com/aakanshapandey'),('walterwhite@gmail.com','walterwhite.jpg','2024-01-03',8,'Tokyo','Frontend Developer','','www.walterwhite.com','www.twitter.com/walterwhite','www.github.com/walterwhite'),('jessypinkman@gmail.com','jessypinkman.jpg','2024-01-03',1,'Dubai','Full Stack Developer','','www.jessypinkman.com','www.twitter.com/jessypinkman','www.github.com/jessypinkman');
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-01  7:34:24
