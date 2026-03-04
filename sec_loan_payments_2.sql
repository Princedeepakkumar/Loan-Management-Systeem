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
-- Table structure for table `loan_payments_2`
--

DROP TABLE IF EXISTS `loan_payments_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_payments_2` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `loan_id` int DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `amount_paid` decimal(12,2) DEFAULT NULL,
  `payment_method` varchar(30) DEFAULT NULL,
  `payment_status` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `loan_id` (`loan_id`),
  CONSTRAINT `loan_payments_2_ibfk_1` FOREIGN KEY (`loan_id`) REFERENCES `loans_1` (`loan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_payments_2`
--

LOCK TABLES `loan_payments_2` WRITE;
/*!40000 ALTER TABLE `loan_payments_2` DISABLE KEYS */;
INSERT INTO `loan_payments_2` VALUES (1,1,'2023-01-10',25000.00,'Online','Completed'),(2,2,'2023-01-12',15000.00,'Cheque','Completed'),(3,3,'2023-01-15',12000.00,'UPI','Completed'),(4,4,'2023-01-18',10000.00,'Cash','Completed'),(5,5,'2023-01-20',30000.00,'Online','Completed'),(6,6,'2023-01-22',28000.00,'UPI','Completed'),(7,7,'2023-01-25',14000.00,'Cheque','Completed'),(8,8,'2023-01-28',11000.00,'Online','Completed'),(9,9,'2023-02-01',16000.00,'Cash','Completed'),(10,10,'2023-02-03',35000.00,'Online','Completed'),(11,11,'2023-02-05',26000.00,'UPI','Completed'),(12,12,'2023-02-08',15000.00,'Cheque','Completed'),(13,13,'2023-02-10',12500.00,'Online','Completed'),(14,14,'2023-02-12',13500.00,'Cash','Completed'),(15,15,'2023-02-15',32000.00,'Online','Completed'),(16,16,'2023-02-18',27000.00,'UPI','Completed'),(17,17,'2023-02-20',18000.00,'Cheque','Completed'),(18,18,'2023-02-22',10000.00,'Online','Completed'),(19,19,'2023-02-25',15000.00,'Cash','Completed'),(20,20,'2023-02-28',34000.00,'Online','Completed'),(21,21,'2023-03-02',25500.00,'UPI','Completed'),(22,22,'2023-03-05',16000.00,'Cheque','Completed'),(23,23,'2023-03-08',13000.00,'Online','Completed'),(24,24,'2023-03-10',14000.00,'Cash','Completed'),(25,25,'2023-03-12',31000.00,'Online','Completed'),(26,26,'2023-03-15',29000.00,'UPI','Completed'),(27,27,'2023-03-18',17000.00,'Cheque','Completed'),(28,28,'2023-03-20',11500.00,'Online','Completed'),(29,29,'2023-03-22',15500.00,'Cash','Completed'),(30,30,'2023-03-25',33000.00,'Online','Completed'),(31,31,'2023-03-28',26500.00,'UPI','Completed'),(32,32,'2023-03-30',15000.00,'Cheque','Completed'),(33,33,'2023-04-02',12000.00,'Online','Completed'),(34,34,'2023-04-05',13500.00,'Cash','Completed'),(35,35,'2023-04-08',30000.00,'Online','Completed'),(36,36,'2023-04-10',27500.00,'UPI','Completed'),(37,37,'2023-04-12',16000.00,'Cheque','Completed'),(38,38,'2023-04-15',10500.00,'Online','Completed'),(39,39,'2023-04-18',14500.00,'Cash','Completed'),(40,40,'2023-04-20',35000.00,'Online','Completed'),(41,41,'2023-04-22',26000.00,'UPI','Completed'),(42,42,'2023-04-25',15500.00,'Cheque','Completed'),(43,43,'2023-04-28',12500.00,'Online','Completed'),(44,44,'2023-05-01',13500.00,'Cash','Completed'),(45,45,'2023-05-03',31500.00,'Online','Completed'),(46,46,'2023-05-06',28500.00,'UPI','Completed'),(47,47,'2023-05-08',17000.00,'Cheque','Completed'),(48,48,'2023-05-10',11000.00,'Online','Completed'),(49,49,'2023-05-12',15000.00,'Cash','Completed'),(50,50,'2023-05-15',34000.00,'Online','Completed'),(51,51,'2023-05-18',25500.00,'UPI','Completed'),(52,52,'2023-05-20',15000.00,'Cheque','Completed'),(53,53,'2023-05-22',13000.00,'Online','Completed'),(54,54,'2023-05-25',14000.00,'Cash','Completed'),(55,55,'2023-05-28',32000.00,'Online','Completed'),(56,56,'2023-06-01',29500.00,'UPI','Completed'),(57,57,'2023-06-03',17500.00,'Cheque','Completed'),(58,58,'2023-06-05',12000.00,'Online','Completed'),(59,59,'2023-06-08',15500.00,'Cash','Completed'),(60,60,'2023-06-10',33500.00,'Online','Completed'),(61,61,'2023-06-12',26000.00,'UPI','Completed'),(62,62,'2023-06-15',15000.00,'Cheque','Completed'),(63,63,'2023-06-18',12500.00,'Online','Completed'),(64,64,'2023-06-20',13500.00,'Cash','Completed'),(65,65,'2023-06-22',31000.00,'Online','Completed'),(66,66,'2023-06-25',30000.00,'UPI','Completed'),(67,67,'2023-06-28',16500.00,'Cheque','Completed'),(68,68,'2023-06-30',11500.00,'Online','Completed'),(69,69,'2023-07-02',15000.00,'Cash','Completed'),(70,70,'2023-07-05',34500.00,'Online','Completed'),(71,71,'2023-07-08',25500.00,'UPI','Completed'),(72,72,'2023-07-10',15000.00,'Cheque','Completed'),(73,73,'2023-07-12',13000.00,'Online','Completed'),(74,74,'2023-07-15',14000.00,'Cash','Completed'),(75,75,'2023-07-18',32500.00,'Online','Completed'),(76,76,'2023-07-20',28500.00,'UPI','Completed'),(77,77,'2023-07-22',17500.00,'Cheque','Completed'),(78,78,'2023-07-25',12000.00,'Online','Completed'),(79,79,'2023-07-28',15500.00,'Cash','Completed'),(80,80,'2023-07-30',35000.00,'Online','Completed'),(81,81,'2023-08-02',26000.00,'UPI','Completed'),(82,82,'2023-08-05',15000.00,'Cheque','Completed'),(83,83,'2023-08-08',12500.00,'Online','Completed'),(84,84,'2023-08-10',13500.00,'Cash','Completed'),(85,85,'2023-08-12',31500.00,'Online','Completed'),(86,86,'2023-08-15',29500.00,'UPI','Completed'),(87,87,'2023-08-18',16500.00,'Cheque','Completed'),(88,88,'2023-08-20',11500.00,'Online','Completed'),(89,89,'2023-08-22',15000.00,'Cash','Completed'),(90,90,'2023-08-25',34000.00,'Online','Completed'),(91,91,'2023-08-28',25500.00,'UPI','Completed'),(92,92,'2023-08-30',15000.00,'Cheque','Completed'),(93,93,'2023-09-02',13000.00,'Online','Completed'),(94,94,'2023-09-05',14000.00,'Cash','Completed'),(95,95,'2023-09-08',32000.00,'Online','Completed'),(96,96,'2023-09-10',30000.00,'UPI','Completed'),(97,97,'2023-09-12',17000.00,'Cheque','Completed'),(98,98,'2023-09-15',12000.00,'Online','Completed'),(99,99,'2023-09-18',15500.00,'Cash','Completed'),(100,100,'2023-09-20',35000.00,'Online','Completed'),(101,101,'2023-09-22',26000.00,'UPI','Completed'),(102,102,'2023-09-25',15000.00,'Cheque','Completed'),(103,103,'2023-09-28',12500.00,'Online','Completed'),(104,104,'2023-10-01',13500.00,'Cash','Completed'),(105,105,'2023-10-03',31500.00,'Online','Completed'),(106,106,'2023-10-06',29500.00,'UPI','Completed'),(107,107,'2023-10-08',16500.00,'Cheque','Completed'),(108,108,'2023-10-10',11500.00,'Online','Completed'),(109,109,'2023-10-12',15000.00,'Cash','Completed'),(110,110,'2023-10-15',34500.00,'Online','Completed'),(111,111,'2023-10-18',25500.00,'UPI','Completed'),(112,112,'2023-10-20',15000.00,'Cheque','Completed'),(113,113,'2023-10-22',13000.00,'Online','Completed'),(114,114,'2023-10-25',14000.00,'Cash','Completed'),(115,115,'2023-10-28',32500.00,'Online','Completed'),(116,116,'2023-10-30',28500.00,'UPI','Completed'),(117,117,'2023-11-02',17500.00,'Cheque','Completed'),(118,118,'2023-11-05',12000.00,'Online','Completed'),(119,119,'2023-11-08',15500.00,'Cash','Completed'),(120,120,'2023-11-10',35000.00,'Online','Completed'),(121,121,'2023-11-12',26000.00,'UPI','Completed'),(122,122,'2023-11-15',15000.00,'Cheque','Completed'),(123,123,'2023-11-18',12500.00,'Online','Completed'),(124,124,'2023-11-20',13500.00,'Cash','Completed'),(125,125,'2023-11-22',31500.00,'Online','Completed'),(126,126,'2023-11-25',29500.00,'UPI','Completed'),(127,127,'2023-11-28',16500.00,'Cheque','Completed'),(128,128,'2023-11-30',11500.00,'Online','Completed'),(129,129,'2023-12-02',15000.00,'Cash','Completed'),(130,130,'2023-12-05',34000.00,'Online','Completed');
/*!40000 ALTER TABLE `loan_payments_2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-02 11:06:13
