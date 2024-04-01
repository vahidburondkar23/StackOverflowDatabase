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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `COMMENT_ID` int NOT NULL AUTO_INCREMENT,
  `USER_EMAIL` varchar(50) NOT NULL,
  `ANSWER_ID` int NOT NULL,
  `COMMENT_TEXT` longtext NOT NULL,
  `COMMENT_DATE` date NOT NULL,
  `COMMENT_TIME` time NOT NULL,
  PRIMARY KEY (`COMMENT_ID`),
  KEY `USER_EMAIL` (`USER_EMAIL`),
  KEY `ANSWER_ID` (`ANSWER_ID`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`USER_EMAIL`) REFERENCES `users` (`USER_EMAIL`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`ANSWER_ID`) REFERENCES `answers` (`ANSWER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (2,'kylenichole@gmail.com',1,'This was my problem. I feel kind of dumb now. If anyone else has this problem, you can find the Foreign Key Constraint names by using the SHOW CREATE TABLE function.','2024-01-08','12:09:53'),(3,'sujitkumar@gmail.com',1,'Tip: use SHOW CREATE TABLE footable; to see what the name of the constraint is. It isn\'t the name of the column per-se. Thanks for the answer!','2024-01-08','12:09:53'),(4,'jacquiemarvin@gmail.com',2,'You can use this to find foreign key constraints: SELECT * FROM information_schema.table_constraints WHERE constraint_schema = \'<your db name>\' AND constraint_type = \'FOREIGN KEY\'','2024-01-08','12:09:53'),(5,'jessypinkman@gmail.com',4,'Actually the thing you wrote is not correct. Because when you do a UNION you will remove duplicates, and sometimes when you join two different tables there should be duplicates.','2024-01-08','12:09:53'),(6,'davidsmith@gmail.com',3,'Yeah, this works perfectly. Thank You','2024-01-08','12:09:53');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-01  7:34:25
