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
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `ANSWER_ID` int NOT NULL AUTO_INCREMENT,
  `USER_EMAIL` varchar(50) NOT NULL,
  `QUESTION_ID` int NOT NULL,
  `ANSWER_TEXT` longtext NOT NULL,
  `ANSWER_UPVOTES` int DEFAULT '0',
  `ANSWER_DATE` date NOT NULL,
  `ANSWER_TIME` time NOT NULL,
  PRIMARY KEY (`ANSWER_ID`),
  KEY `USER_EMAIL` (`USER_EMAIL`),
  KEY `QUESTION_ID` (`QUESTION_ID`),
  CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`USER_EMAIL`) REFERENCES `users` (`USER_EMAIL`),
  CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`QUESTION_ID`) REFERENCES `questions` (`QUESTION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,'jessypinkman@gmail.com',4,'As explained here, seems the foreign key constraint has to be dropped by constraint name and not the index name.\nThe syntax is:\nALTER TABLE footable DROP FOREIGN KEY fooconstraint;',120,'2024-01-08','12:07:51'),(2,'walterwhite@gmail.com',4,'Remove both the CONSTRAINT name and the FOREIGN KEY name: ALTER TABLE table_name\n  DROP FOREIGN KEY the_name_after_CONSTRAINT,\n  DROP KEY the_name_after_FOREIGN_KEY;',66,'2024-01-08','12:07:51'),(3,'aakanshapandey@gmail.com',1,'Try like this.. SELECT \n      MIN(SALARY) \nFROM \n      EMP \nWHERE \n      SALARY in (SELECT \n                      DISTINCT TOP 2 SALARY \n                 FROM \n                      EMP \n                 ORDER BY \n                      SALARY DESC\n                )',200,'2024-01-08','12:07:51'),(4,'ryanjones@gmail.com',2,'You don\'t have full joins in MySQL, but you can sure emulate them.\nWith two tables t1, t2: SELECT * FROM t1\nLEFT JOIN t2 ON t1.id = t2.id\nUNION\nSELECT * FROM t1\nRIGHT JOIN t2 ON t1.id = t2.id',45,'2024-01-08','12:07:51');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-01  7:34:26
