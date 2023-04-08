CREATE DATABASE  IF NOT EXISTS `expensemanager` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `expensemanager`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: expensemanager
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `otp` varchar(10) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `createdAt` varchar(20) DEFAULT NULL,
  `contactNo` varchar(20) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `imageUrl` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (14,'kiran','patel','urvasheesarvaiya5@gmail.com','qwer',2,'','female','2000-09-13','2023-03-24','8756789845',0,0,NULL),(19,'Urvashee','Sarvaiya','a@gmail.com','1234',2,NULL,'female','2000-08-15','2023-03-28','9078653456',0,0,NULL),(78,'seema','patel','seema1@gmail.com','123',1,NULL,'female','2000-05-18','2023-03-28','1236547891',0,0,'assets/profiles/78/user2.jpg'),(79,'seema','seema','seema@gmail.com','126',2,NULL,'female','2023-03-29','2023-03-29','9856235623',0,0,NULL),(113,'abc','abc','abc@gmail.com','1236',2,NULL,'female','2023-04-04','2023-04-0','4512365241',0,0,NULL),(114,'x','x','x@gmail.com','14',2,NULL,'female','2023-04-06','2023-04-0','9856235628',0,0,NULL),(115,'y','y','y@gmail.com','45',2,NULL,'female','2023-04-06','2023-04-6','4561237892',0,0,NULL),(116,'ab','ab','abcd@gmail.com','46',2,NULL,'female','2023-04-06','2023-04-6','4561237898',0,0,NULL),(117,'aa','aa','aa@gmail.com','47',2,NULL,'female','2023-04-06','2023-04-6','9856235624',0,0,NULL),(118,'aa','aa','aab@gmail.com','47',2,NULL,'female','2023-04-06','2023-04-6','9856235624',0,0,NULL),(119,'xx','xx','xx@gmail.com','56',2,NULL,'female','2023-04-06','2023-04-6','9856235627',0,0,NULL),(120,'xx','xx','xy@gmail.com','456',2,NULL,'female','2023-04-06','2023-04-6','9856235625',0,0,NULL),(121,'xx','xx','xya@gmail.com','45',2,NULL,'female','2023-04-06','2023-04-6','9856235625',0,0,NULL);
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

-- Dump completed on 2023-04-08 18:10:40
