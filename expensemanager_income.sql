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
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income` (
  `incomeId` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `accountTypeId` int DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  PRIMARY KEY (`incomeId`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES (12,'food','2023-03-14','It is fresh',9,1,2,0,5000),(13,'sweets','2023-03-14','It is delicious',9,6,2,0,5000),(17,'food','2023-03-17','tyuik',9,1,2,0,5000),(18,'insurance','2023-03-17','tyuik',9,1,2,0,5000),(23,'premium','2023-03-18','fgvbh',9,1,2,0,5000),(26,'policy','2023-03-19','gh',19,1,2,1,5000),(27,'a','2023-03-20','fgh',19,1,2,0,5000),(31,'abc','2023-03-22','desc',9,1,2,1,5000),(32,'food','2023-03-23','desc',19,1,2,0,5000),(33,'food','2023-03-27','desc',-1,12,6,0,200),(34,'sweets','2023-03-27','desc',-1,3,2,0,300),(35,'food','2023-03-27','desc',9,2,2,0,200),(36,'sweets','2023-03-27','desc',9,3,2,0,300),(37,'Travel','2023-03-27','desc',19,13,2,0,1000),(38,'food','2023-03-28','desc',78,1,2,0,600),(39,'sweets','2023-03-28','desc',78,1,2,1,700),(40,'pune','2023-03-28','desc',19,1,2,0,100000),(41,'Bike','2023-03-28','desc',19,1,2,0,1200),(42,'df','2023-12-03','desc',78,1,2,1,500),(43,'Travel','2023-04-06','desc',19,1,2,0,5000),(44,'Travel','2023-04-08','desc',19,1,2,0,5000);
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-08 18:10:37
