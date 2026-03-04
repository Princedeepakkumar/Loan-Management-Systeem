-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sec
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `penalties_1`
--

DROP TABLE IF EXISTS `penalties_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penalties_1` (
  `penalty_id` int NOT NULL AUTO_INCREMENT,
  `loan_id` int DEFAULT NULL,
  `penalty_amount` decimal(10,2) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `penalty_date` date DEFAULT NULL,
  PRIMARY KEY (`penalty_id`),
  KEY `loan_id` (`loan_id`),
  CONSTRAINT `penalties_1_ibfk_1` FOREIGN KEY (`loan_id`) REFERENCES `loans_1` (`loan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penalties_1`
--

LOCK TABLES `penalties_1` WRITE;
/*!40000 ALTER TABLE `penalties_1` DISABLE KEYS */;
INSERT INTO `penalties_1` VALUES (1,1,1500.00,'Late EMI Payment','2023-02-15'),(2,2,1200.00,'Late EMI Payment','2023-02-18'),(3,3,2000.00,'Missed EMI','2023-02-20'),(4,4,1000.00,'Late EMI Payment','2023-02-25'),(5,5,1800.00,'Cheque Bounce','2023-03-01'),(6,6,2200.00,'Missed EMI','2023-03-05'),(7,7,1300.00,'Late EMI Payment','2023-03-08'),(8,8,2500.00,'Cheque Bounce','2023-03-12'),(9,9,900.00,'Late EMI Payment','2023-03-15'),(10,10,3000.00,'Missed EMI','2023-03-18'),(11,11,1700.00,'Late EMI Payment','2023-03-22'),(12,12,1100.00,'Cheque Bounce','2023-03-25'),(13,13,1400.00,'Late EMI Payment','2023-03-28'),(14,14,1600.00,'Missed EMI','2023-04-01'),(15,15,1250.00,'Late EMI Payment','2023-04-05'),(16,16,2100.00,'Cheque Bounce','2023-04-08'),(17,17,950.00,'Late EMI Payment','2023-04-12'),(18,18,2600.00,'Missed EMI','2023-04-15'),(19,19,1450.00,'Late EMI Payment','2023-04-18'),(20,20,1800.00,'Cheque Bounce','2023-04-22'),(21,21,1550.00,'Late EMI Payment','2023-04-25'),(22,22,1900.00,'Missed EMI','2023-04-28'),(23,23,2300.00,'Cheque Bounce','2023-05-01'),(24,24,1000.00,'Late EMI Payment','2023-05-05'),(25,25,2800.00,'Missed EMI','2023-05-08'),(26,26,1750.00,'Late EMI Payment','2023-05-12'),(27,27,1200.00,'Cheque Bounce','2023-05-15'),(28,28,2000.00,'Missed EMI','2023-05-18'),(29,29,1350.00,'Late EMI Payment','2023-05-22'),(30,30,1600.00,'Cheque Bounce','2023-05-25'),(31,31,1500.00,'Late EMI Payment','2023-06-01'),(32,32,1100.00,'Missed EMI','2023-06-05'),(33,33,2200.00,'Cheque Bounce','2023-06-08'),(34,34,1250.00,'Late EMI Payment','2023-06-12'),(35,35,3000.00,'Missed EMI','2023-06-15'),(36,36,900.00,'Late EMI Payment','2023-06-18'),(37,37,2100.00,'Cheque Bounce','2023-06-22'),(38,38,1400.00,'Late EMI Payment','2023-06-25'),(39,39,1150.00,'Missed EMI','2023-06-28'),(40,40,2500.00,'Cheque Bounce','2023-07-01'),(41,41,1600.00,'Late EMI Payment','2023-07-05'),(42,42,1800.00,'Missed EMI','2023-07-08'),(43,43,1300.00,'Late EMI Payment','2023-07-12'),(44,44,1500.00,'Cheque Bounce','2023-07-15'),(45,45,2700.00,'Missed EMI','2023-07-18'),(46,46,1900.00,'Late EMI Payment','2023-07-22'),(47,47,1000.00,'Cheque Bounce','2023-07-25'),(48,48,2400.00,'Missed EMI','2023-08-01'),(49,49,1200.00,'Late EMI Payment','2023-08-05'),(50,50,1400.00,'Cheque Bounce','2023-08-08'),(51,51,1550.00,'Late EMI Payment','2023-08-12'),(52,52,2000.00,'Missed EMI','2023-08-15'),(53,53,2300.00,'Cheque Bounce','2023-08-18'),(54,54,900.00,'Late EMI Payment','2023-08-22'),(55,55,2900.00,'Missed EMI','2023-08-25'),(56,56,1750.00,'Late EMI Payment','2023-09-01'),(57,57,1100.00,'Cheque Bounce','2023-09-05'),(58,58,2100.00,'Missed EMI','2023-09-08'),(59,59,1350.00,'Late EMI Payment','2023-09-12'),(60,60,1600.00,'Cheque Bounce','2023-09-15'),(61,61,1500.00,'Late EMI Payment','2023-09-18'),(62,62,1200.00,'Missed EMI','2023-09-22'),(63,63,2200.00,'Cheque Bounce','2023-09-25'),(64,64,1250.00,'Late EMI Payment','2023-10-01'),(65,65,3000.00,'Missed EMI','2023-10-05'),(66,66,900.00,'Late EMI Payment','2023-10-08'),(67,67,2100.00,'Cheque Bounce','2023-10-12'),(68,68,1400.00,'Late EMI Payment','2023-10-15'),(69,69,1150.00,'Missed EMI','2023-10-18'),(70,70,2500.00,'Cheque Bounce','2023-10-22'),(71,71,1600.00,'Late EMI Payment','2023-10-25'),(72,72,1800.00,'Missed EMI','2023-11-01'),(73,73,1300.00,'Late EMI Payment','2023-11-05'),(74,74,1500.00,'Cheque Bounce','2023-11-08'),(75,75,2700.00,'Missed EMI','2023-11-12'),(76,76,1900.00,'Late EMI Payment','2023-11-15'),(77,77,1000.00,'Cheque Bounce','2023-11-18'),(78,78,2400.00,'Missed EMI','2023-11-22'),(79,79,1200.00,'Late EMI Payment','2023-11-25'),(80,80,1400.00,'Cheque Bounce','2023-12-01'),(81,81,1550.00,'Late EMI Payment','2023-12-05'),(82,82,2000.00,'Missed EMI','2023-12-08'),(83,83,2300.00,'Cheque Bounce','2023-12-12'),(84,84,900.00,'Late EMI Payment','2023-12-15'),(85,85,2900.00,'Missed EMI','2023-12-18'),(86,86,1750.00,'Late EMI Payment','2024-01-05'),(87,87,1100.00,'Cheque Bounce','2024-01-08'),(88,88,2100.00,'Missed EMI','2024-01-12'),(89,89,1350.00,'Late EMI Payment','2024-01-15'),(90,90,1600.00,'Cheque Bounce','2024-01-18'),(91,91,1500.00,'Late EMI Payment','2024-01-22'),(92,92,1200.00,'Missed EMI','2024-01-25'),(93,93,2200.00,'Cheque Bounce','2024-02-01'),(94,94,1250.00,'Late EMI Payment','2024-02-05'),(95,95,3000.00,'Missed EMI','2024-02-08'),(96,96,900.00,'Late EMI Payment','2024-02-12'),(97,97,2100.00,'Cheque Bounce','2024-02-15'),(98,98,1400.00,'Late EMI Payment','2024-02-18'),(99,99,1150.00,'Missed EMI','2024-02-22'),(100,100,2500.00,'Cheque Bounce','2024-02-25'),(101,101,1600.00,'Late EMI Payment','2024-03-01'),(102,102,1800.00,'Missed EMI','2024-03-05'),(103,103,1300.00,'Late EMI Payment','2024-03-08'),(104,104,1500.00,'Cheque Bounce','2024-03-12'),(105,105,2700.00,'Missed EMI','2024-03-15'),(106,106,1900.00,'Late EMI Payment','2024-03-18'),(107,107,1000.00,'Cheque Bounce','2024-03-22'),(108,108,2400.00,'Missed EMI','2024-03-25'),(109,109,1200.00,'Late EMI Payment','2024-04-01'),(110,110,1400.00,'Cheque Bounce','2024-04-05'),(111,111,1550.00,'Late EMI Payment','2024-04-08'),(112,112,2000.00,'Missed EMI','2024-04-12'),(113,113,2300.00,'Cheque Bounce','2024-04-15'),(114,114,900.00,'Late EMI Payment','2024-04-18'),(115,115,2900.00,'Missed EMI','2024-04-22'),(116,116,1750.00,'Late EMI Payment','2024-04-25'),(117,117,1100.00,'Cheque Bounce','2024-05-01'),(118,118,2100.00,'Missed EMI','2024-05-05'),(119,119,1350.00,'Late EMI Payment','2024-05-08'),(120,120,1600.00,'Cheque Bounce','2024-05-12'),(121,121,1500.00,'Late EMI Payment','2024-05-15'),(122,122,1200.00,'Missed EMI','2024-05-18'),(123,123,2200.00,'Cheque Bounce','2024-05-22'),(124,124,1250.00,'Late EMI Payment','2024-05-25'),(125,125,3000.00,'Missed EMI','2024-06-01'),(126,126,900.00,'Late EMI Payment','2024-06-05'),(127,127,2100.00,'Cheque Bounce','2024-06-08'),(128,128,1400.00,'Late EMI Payment','2024-06-12'),(129,129,1150.00,'Missed EMI','2024-06-15'),(130,130,2500.00,'Cheque Bounce','2024-06-18');
/*!40000 ALTER TABLE `penalties_1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-02 11:06:14
