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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `QUESTION_ID` int NOT NULL AUTO_INCREMENT,
  `USER_EMAIL` varchar(50) NOT NULL,
  `QUESTION_TITLE` longtext NOT NULL,
  `QUESTION_DETAILS` longtext NOT NULL,
  `QUESTION_TRY_EXP` longtext NOT NULL,
  `QUESTION_UPVOTES` int DEFAULT '0',
  `QUESTION_DATE` date NOT NULL,
  `QUESTION_TIME` time NOT NULL,
  PRIMARY KEY (`QUESTION_ID`),
  KEY `USER_EMAIL` (`USER_EMAIL`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`USER_EMAIL`) REFERENCES `users` (`USER_EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'lukeben@gmail.com','How to get second-highest salary employees in a table','It\'s a question I got this afternoon: There a table contains ID, \nName, and Salary of Employees, get names of the second-highest salary employees, in SQL Server. \nHere\'s my answer, I just wrote it in paper and not sure that it\'s perfectly valid, but it seems to work:','SELECT Name FROM Employees WHERE Salary = ( SELECT DISTINCT TOP (1) Salary FROM Employees WHERE Salary NOT IN \n(SELECT DISTINCT TOP (1) Salary FROM Employees ORDER BY Salary DESCENDING) ORDER BY Salary DESCENDING) \nI think it\'s ugly, but it\'s the only solution come to my mind. Can you suggest me a better query? Thank you very much.',20,'2024-01-08','12:01:03'),(2,'davidsmith@gmail.com','How to Perform full outer join in mysql?','I already know i can do outer join in MySQL using union. I also check this one. Full Outer Join in MySQL\nBut i want to do something like this and I don\'t know how can I achieve this using union.','SELECT left_id, COUNT(left_id) AS left_count FROM `user_count` GROUP BY left_id \nSELECT right_id, COUNT(right_id) AS right_count FROM `user_count` GROUP BY right_id;\nSELECT left_id AS meb_id, COUNT(left_id) AS active_left_count FROM `user_count` WHERE active = 1 GROUP BY left_id;\nSELECT right_id AS meb_id, COUNT(right_id) AS active_right_count FROM `user_count` WHERE active = 1 GROUP BY right_id; \nI want to preform outer join or union',50,'2024-01-08','12:01:03'),(3,'davidsmith@gmail.com','How to set (combine) two primary keys in a table','For a small sales related application, we designed database using logical data model. Come to the stage to convert in to physical model. While creating table in SQL Server Management Studio Express, according to our logical data model, we need to combine two attributes to form unique id. Is it possible to combine two primary keys and set it?','In my case how should I set two columns in my table to make it as two primary keys?',10,'2024-01-08','12:01:03'),(4,'aakanshapandey@gmail.com','how to MySQL Remove Some Foreign keys','I have a table whose primary key is used in several other tables and has several foreign keys to other tables.','The problem is that when I\'m trying to drop one of the foreign key columns (ie locationIDX) it gives me an error.',34,'2024-01-08','12:01:03');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-01  7:34:27
