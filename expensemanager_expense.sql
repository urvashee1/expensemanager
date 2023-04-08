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
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense` (
  `expenseId` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `subCategoryId` int DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `vendorId` int DEFAULT NULL,
  `accountTypeId` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`expenseId`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
INSERT INTO `expense` VALUES (47,'ab','2023-01-20','dfg',13,52,2,1,1,10000,0,19),(48,'Food','2023-01-20','desc',32,53,2,9,1,20000,0,19),(49,'Sweets','2023-03-15','desc',33,61,2,9,1,500,0,19),(56,'Bike','2023-04-22','desc',2,16,6,1,1,1500,0,19),(59,'Bike','2023-03-18','desc',2,16,2,1,1,5000,0,19),(60,'cable','2023-04-28','desc',33,61,2,1,1,5000,0,19),(61,'Sweets','2023-04-03','desc',32,52,2,1,1,5000,0,78),(62,'Recharge','2023-06-17','desc',33,60,2,10,3,2000,0,19),(63,'Maintenance','2023-05-03','desc',1,51,2,9,1,10000,0,19),(64,'Punjabi','2023-05-01','desc',32,53,2,1,1,8000,0,19),(65,'Surgery','2023-02-15','desc',41,56,2,1,3,10000,0,19),(66,'Ticket','2023-04-06','desc',12,29,2,1,1,100000,0,19),(67,'bike','2023-03-06','desc',2,16,2,1,1,5000,0,78),(68,'Sweets','2023-03-06','desc',32,63,2,1,1,3000,0,78),(69,'Maintenance','2023-03-06','desc',1,51,2,1,1,3000,0,78),(70,'Maintenance','2023-06-15','desc',1,51,2,1,1,3000,0,78),(71,'Maintenance','2023-01-15','desc',1,51,2,1,1,3000,0,78),(72,'Maintenance','2023-01-20','desc',1,51,2,1,1,5000,0,78),(73,'Clothes','2023-01-20','desc',39,65,2,1,1,8000,0,78);
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-08 18:10:43
