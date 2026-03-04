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
-- Table structure for table `employees_1`
--

DROP TABLE IF EXISTS `employees_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees_1` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `branch_id` (`branch_id`),
  CONSTRAINT `employees_1_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_1`
--

LOCK TABLES `employees_1` WRITE;
/*!40000 ALTER TABLE `employees_1` DISABLE KEYS */;
INSERT INTO `employees_1` VALUES (1,'Aarav','Sharma','Manager',2001,'2018-01-10'),(2,'Aarav','Sharma','Manager',2001,'2018-01-10'),(3,'Vivaan','Verma','Accountant',2002,'2019-03-12'),(4,'Aditya','Singh','Cashier',2003,'2020-05-14'),(5,'Vihaan','Patel','Clerk',2004,'2017-07-18'),(6,'Arjun','Reddy','Manager',2005,'2016-09-22'),(7,'Sai','Kumar','Cashier',2006,'2021-02-11'),(8,'Krishna','Nair','Clerk',2007,'2019-06-30'),(9,'Ishaan','Gupta','Accountant',2008,'2018-11-25'),(10,'Rohan','Mehta','Manager',2009,'2015-04-19'),(11,'Karan','Yadav','Cashier',2010,'2022-08-08'),(12,'Rahul','Das','Clerk',2011,'2019-01-15'),(13,'Ananya','Iyer','Accountant',2012,'2018-02-20'),(14,'Manish','Kulkarni','Cashier',2013,'2020-03-18'),(15,'Sneha','Chopra','Clerk',2014,'2017-04-25'),(16,'Vikram','Joshi','Manager',2015,'2016-05-30'),(17,'Pooja','Malhotra','Cashier',2016,'2021-06-14'),(18,'Sandeep','Bansal','Clerk',2017,'2019-07-19'),(19,'Neha','Kapoor','Accountant',2018,'2018-08-22'),(20,'Amit','Tiwari','Manager',2019,'2015-09-10'),(21,'Divya','Saxena','Cashier',2020,'2022-10-05'),(22,'Harish','Pandey','Clerk',2021,'2019-11-11'),(23,'Meera','Rao','Accountant',2022,'2018-12-09'),(24,'Tarun','Chawla','Cashier',2023,'2020-01-17'),(25,'Kavya','Menon','Clerk',2024,'2017-02-23'),(26,'Nikhil','Arora','Manager',2025,'2016-03-29'),(27,'Simran','Gill','Cashier',2026,'2021-04-16'),(28,'Yash','Agarwal','Clerk',2027,'2019-05-21'),(29,'Ritika','Bhatia','Accountant',2028,'2018-06-30'),(30,'Deepak','Mishra','Manager',2029,'2015-07-14'),(31,'Alisha','Sethi','Cashier',2030,'2022-08-19'),(32,'Varun','Pillai','Clerk',2031,'2019-09-27'),(33,'Ira','Desai','Accountant',2032,'2018-10-18'),(34,'Mohit','Soni','Cashier',2033,'2020-11-24'),(35,'Tanya','Kaur','Clerk',2034,'2017-12-30'),(36,'Rakesh','Jain','Manager',2035,'2016-01-08'),(37,'Priya','Nanda','Cashier',2036,'2021-02-14'),(38,'Arvind','Shetty','Clerk',2037,'2019-03-19'),(39,'Shreya','Ghosh','Accountant',2038,'2018-04-22'),(40,'Lokesh','Dubey','Manager',2039,'2015-05-26'),(41,'Anjali','Trivedi','Cashier',2040,'2022-06-11'),(42,'Suraj','Naik','Clerk',2041,'2019-07-15'),(43,'Bhavna','Chatterjee','Accountant',2042,'2018-08-20'),(44,'Kishore','Rathore','Cashier',2043,'2020-09-28'),(45,'Lavanya','Bose','Clerk',2044,'2017-10-05'),(46,'Mahesh','Kamble','Manager',2045,'2016-11-13'),(47,'Nisha','Lal','Cashier',2046,'2021-12-21'),(48,'Prakash','Rawat','Clerk',2047,'2019-01-25'),(49,'Sonal','Ahuja','Accountant',2048,'2018-02-18'),(50,'Vivek','Shukla','Manager',2049,'2015-03-23'),(51,'Riya','Purohit','Cashier',2050,'2022-04-30'),(52,'Gaurav','Kohli','Clerk',2051,'2019-05-17'),(53,'Komal','Yadav','Accountant',2052,'2018-06-26'),(54,'Hemant','Bedi','Cashier',2053,'2020-07-19'),(55,'Asha','Thakur','Clerk',2054,'2017-08-24'),(56,'Dinesh','Solanki','Manager',2055,'2016-09-29'),(57,'Pallavi','Sharma','Cashier',2056,'2021-10-10'),(58,'Ankit','Raj','Clerk',2057,'2019-11-15'),(59,'Reema','Sarin','Accountant',2058,'2018-12-20'),(60,'Suresh','Vyas','Manager',2059,'2015-01-05'),(61,'Juhi','Pathak','Cashier',2060,'2022-02-14'),(62,'Ashok','Sinha','Clerk',2061,'2019-03-21'),(63,'Preeti','Reddy','Accountant',2062,'2018-04-27'),(64,'Naveen','Bhatt','Cashier',2063,'2020-05-18'),(65,'Geeta','Paul','Clerk',2064,'2017-06-23'),(66,'Ravindra','Chavan','Manager',2065,'2016-07-29'),(67,'Madhuri','Josan','Cashier',2066,'2021-08-12'),(68,'Shivam','Choudhary','Clerk',2067,'2019-09-17'),(69,'Tanvi','Khatri','Accountant',2068,'2018-10-22'),(70,'Umesh','Pawar','Manager',2069,'2015-11-30'),(71,'Ishita','Mahajan','Cashier',2070,'2022-12-09'),(72,'Parth','Suri','Clerk',2071,'2019-01-14'),(73,'Rachna','Bajaj','Accountant',2072,'2018-02-19'),(74,'Sahil','Kapadia','Cashier',2073,'2020-03-27'),(75,'Mitali','Grover','Clerk',2074,'2017-04-05'),(76,'Ajay','Bhardwaj','Manager',2075,'2016-05-11'),(77,'Nupur','Dua','Cashier',2076,'2021-06-18'),(78,'Kunal','Arvind','Clerk',2077,'2019-07-25'),(79,'Swati','Soman','Accountant',2078,'2018-08-30'),(80,'Tejas','Kulshreshtha','Manager',2079,'2015-09-16'),(81,'Bhavya','Singla','Cashier',2080,'2022-10-21'),(82,'Rituraj','Mandal','Clerk',2081,'2019-11-29'),(83,'Pritika','Dey','Accountant',2082,'2018-12-13'),(84,'Lakshya','Rana','Cashier',2083,'2020-01-19'),(85,'Charu','Bhaskar','Clerk',2084,'2017-02-26'),(86,'Yogesh','Tomar','Manager',2085,'2016-03-30'),(87,'Sejal','Naidu','Cashier',2086,'2021-04-15'),(88,'Abhinav','Kale','Clerk',2087,'2019-05-20'),(89,'Roshni','Kohar','Accountant',2088,'2018-06-24'),(90,'Chetan','Shelar','Manager',2089,'2015-07-28'),(91,'Trisha','Sodhi','Cashier',2090,'2022-08-17'),(92,'Manav','Kapoor','Clerk',2091,'2019-09-22'),(93,'Ila','Parekh','Accountant',2092,'2018-10-28'),(94,'Rohit','Bora','Cashier',2093,'2020-11-09'),(95,'Neelam','Rastogi','Clerk',2094,'2017-12-14'),(96,'Harpreet','Sandhu','Manager',2095,'2016-01-19'),(97,'Kritika','Walia','Cashier',2096,'2021-02-23'),(98,'Alok','Jadhav','Clerk',2097,'2019-03-30'),(99,'Pavitra','Narang','Accountant',2098,'2018-04-18'),(100,'Sanjay','Goyal','Manager',2099,'2015-05-22'),(101,'Aditi','Chauhan','Cashier',2100,'2022-06-27'),(102,'Ramesh','Khatri','Clerk',2101,'2019-07-12'),(103,'Deepa','Chaudhary','Accountant',2102,'2018-08-16'),(104,'Vinay','Mahato','Cashier',2103,'2020-09-25'),(105,'Bharti','Saluja','Clerk',2104,'2017-10-30'),(106,'Anil','Thapa','Manager',2105,'2016-11-05'),(107,'Kiran','Shinde','Cashier',2106,'2021-12-14'),(108,'Rajat','Awasthi','Clerk',2107,'2019-01-09'),(109,'Monika','Taneja','Accountant',2108,'2018-02-13'),(110,'Vikas','Luthra','Manager',2109,'2015-03-17'),(111,'Pooja','Bhadoria','Cashier',2110,'2022-04-21'),(112,'Sagar','Kundu','Clerk',2111,'2019-05-28'),(113,'Namrata','Salvi','Accountant',2112,'2018-06-11'),(114,'Ravi','Barot','Cashier',2113,'2020-07-19'),(115,'Megha','Talwar','Clerk',2114,'2017-08-23'),(116,'Girish','Pradhan','Manager',2115,'2016-09-27'),(117,'Sheetal','Rane','Cashier',2116,'2021-10-06'),(118,'Nitin','Chakraborty','Clerk',2117,'2019-11-14'),(119,'Sonam','Kapadia','Accountant',2118,'2018-12-22'),(120,'Pradeep','Sengar','Manager',2119,'2015-01-30'),(121,'Heena','Makkar','Cashier',2120,'2022-02-08'),(122,'Anurag','Tandon','Clerk',2121,'2019-03-16'),(123,'Rupal','Bhonsle','Accountant',2122,'2018-04-25'),(124,'Manoj','Kedia','Cashier',2123,'2020-05-29'),(125,'Shalini','Raut','Clerk',2124,'2017-06-07'),(126,'Kartik','Bisht','Manager',2125,'2016-07-15'),(127,'Pallav','Dhingra','Cashier',2126,'2021-08-19'),(128,'Smita','Kuldeep','Clerk',2127,'2019-09-23'),(129,'Harsh','Chitnis','Accountant',2128,'2018-10-27'),(130,'Jyoti','Kashyap','Manager',2129,'2015-11-03'),(131,'Omkar','Bendale','Cashier',2130,'2022-12-12');
/*!40000 ALTER TABLE `employees_1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-02 11:06:15
