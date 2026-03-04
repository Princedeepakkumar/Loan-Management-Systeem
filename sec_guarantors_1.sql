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
-- Table structure for table `guarantors_1`
--

DROP TABLE IF EXISTS `guarantors_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guarantors_1` (
  `guarantor_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` text,
  PRIMARY KEY (`guarantor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guarantors_1`
--

LOCK TABLES `guarantors_1` WRITE;
/*!40000 ALTER TABLE `guarantors_1` DISABLE KEYS */;
INSERT INTO `guarantors_1` VALUES (5001,'Arun Kumar','9876500001','12 Anna Nagar, Chennai'),(5002,'Bala Subramanian','9876500002','45 T Nagar, Chennai'),(5003,'Chandru Mohan','9876500003','78 Velachery, Chennai'),(5004,'Dinesh Raj','9876500004','23 Tambaram, Chennai'),(5005,'Elango Prasad','9876500005','56 Adyar, Chennai'),(5006,'Farook Ali','9876500006','89 Porur, Chennai'),(5007,'Ganesh Kumar','9876500007','14 Guindy, Chennai'),(5008,'Hari Krishnan','9876500008','67 Ambattur, Chennai'),(5009,'Imran Khan','9876500009','90 Kodambakkam, Chennai'),(5010,'Jagan Mohan','9876500010','21 Nungambakkam, Chennai'),(5011,'Karthik Raj','9876500011','34 Chrompet, Chennai'),(5012,'Lokesh Kumar','9876500012','76 Perambur, Chennai'),(5013,'Manoj Kumar','9876500013','88 Thoraipakkam, Chennai'),(5014,'Naveen Raj','9876500014','54 OMR, Chennai'),(5015,'Prakash R','9876500015','29 ECR, Chennai'),(5016,'Qadir Hussain','9876500016','83 Mylapore, Chennai'),(5017,'Ramesh Babu','9876500017','37 Triplicane, Chennai'),(5018,'Sathish Kumar','9876500018','62 Saidapet, Chennai'),(5019,'Tamil Selvan','9876500019','19 Poonamallee, Chennai'),(5020,'Uday Kumar','9876500020','73 Avadi, Chennai'),(5021,'Vignesh R','9876500021','44 Villivakkam, Chennai'),(5022,'Yogesh Kumar','9876500022','58 Kolathur, Chennai'),(5023,'Zahir Ahmed','9876500023','92 Egmore, Chennai'),(5024,'Aravind S','9876500024','11 Royapettah, Chennai'),(5025,'Balaji K','9876500025','26 Besant Nagar, Chennai'),(5026,'Charan Raj','9876500026','39 Sholinganallur, Chennai'),(5027,'Deepak Kumar','9876500027','85 Medavakkam, Chennai'),(5028,'Eshwar N','9876500028','17 Pallavaram, Chennai'),(5029,'Francis Xavier','9876500029','68 Tambaram West, Chennai'),(5030,'Gokul Raj','9876500030','94 Tambaram East, Chennai'),(5031,'Harish R','9876500031','32 Navalur, Chennai'),(5032,'Irfan Ali','9876500032','49 Siruseri, Chennai'),(5033,'Jeeva Kumar','9876500033','71 Tidel Park, Chennai'),(5034,'Kishore S','9876500034','53 Broadway, Chennai'),(5035,'Loganathan M','9876500035','28 Mount Road, Chennai'),(5036,'Madhan Kumar','9876500036','74 Koyambedu, Chennai'),(5037,'Nithin Raj','9876500037','96 Vadapalani, Chennai'),(5038,'Pradeep S','9876500038','15 Ashok Nagar, Chennai'),(5039,'Rahul Kumar','9876500039','61 KK Nagar, Chennai'),(5040,'Saravanan R','9876500040','87 Valasaravakkam, Chennai'),(5041,'Thiru Murugan','9876500041','18 Madipakkam, Chennai'),(5042,'Umar Farooq','9876500042','33 Manapakkam, Chennai'),(5043,'Vasanth Kumar','9876500043','59 Alwarpet, Chennai'),(5044,'Vijay Kumar','9876500044','82 Teynampet, Chennai'),(5045,'Vimal Raj','9876500045','24 Thousand Lights, Chennai'),(5046,'Arjun Das','9876500046','46 Gopalapuram, Chennai'),(5047,'Baskar R','9876500047','63 Choolaimedu, Chennai'),(5048,'Dharan Kumar','9876500048','91 Aminjikarai, Chennai'),(5049,'Eswaran P','9876500049','27 Washermanpet, Chennai'),(5050,'Feroz Khan','9876500050','72 Mint Street, Chennai'),(5051,'Girish Kumar','9876500051','13 Red Hills, Chennai'),(5052,'Hemant R','9876500052','36 Pattabiram, Chennai'),(5053,'Indrajith S','9876500053','69 Mogappair, Chennai'),(5054,'Jithin Raj','9876500054','95 Nolambur, Chennai'),(5055,'Kamal Raj','9876500055','16 MKB Nagar, Chennai'),(5056,'Lingaraj S','9876500056','47 Perungalathur, Chennai'),(5057,'Muthukumar','9876500057','60 Guduvanchery, Chennai'),(5058,'Nandakumar','9876500058','86 Maraimalai Nagar, Chennai'),(5059,'Praveen Raj','9876500059','22 Chengalpattu, Chennai'),(5060,'Ranjith Kumar','9876500060','75 Urapakkam, Chennai'),(5061,'Sivakumar R','9876500061','38 Tambaram Sanatorium, Chennai'),(5062,'Tharun Kumar','9876500062','64 Pozhichalur, Chennai'),(5063,'Vinoth Kumar','9876500063','93 Anakaputhur, Chennai'),(5064,'Yashwanth R','9876500064','31 Pammal, Chennai'),(5065,'Zubin Khan','9876500065','57 Kundrathur, Chennai'),(5066,'Adithya Raj','9876500066','80 Mangadu, Chennai'),(5067,'Bharath Kumar','9876500067','25 Thirumullaivoyal, Chennai'),(5068,'Cyril Raj','9876500068','48 Pattalam, Chennai'),(5069,'Dharma Raj','9876500069','70 Royapuram, Chennai'),(5070,'Elias Joseph','9876500070','97 George Town, Chennai'),(5071,'Faizal Rahman','9876500071','41 Tondiarpet, Chennai'),(5072,'Gautham Raj','9876500072','66 Ennore, Chennai'),(5073,'Hemanth Kumar','9876500073','84 Basin Bridge, Chennai'),(5074,'Ishaq Ahmed','9876500074','20 Mannady, Chennai'),(5075,'Janakiraman','9876500075','52 Korattur, Chennai'),(5076,'Karthi Keyan','9876500076','73 Padi, Chennai'),(5077,'Leo Prakash','9876500077','98 Ambattur Estate, Chennai'),(5078,'Mohan Raj','9876500078','30 ICF Colony, Chennai'),(5079,'Naren Kumar','9876500079','55 Kattupakkam, Chennai'),(5080,'Om Prakash','9876500080','77 Thiruvanmiyur, Chennai'),(5081,'Prem Kumar','9876500081','12 Injambakkam, Chennai'),(5082,'Rohit Kumar','9876500082','43 Neelankarai, Chennai'),(5083,'Santhosh R','9876500083','65 Karapakkam, Chennai'),(5084,'Thamizharasan','9876500084','88 Semmancheri, Chennai'),(5085,'Umesh Kumar','9876500085','19 Perungudi, Chennai'),(5086,'Vikram Raj','9876500086','50 Kovilambakkam, Chennai'),(5087,'Wasim Akram','9876500087','72 Selaiyur, Chennai'),(5088,'Yuvan Shankar','9876500088','94 Irumbuliyur, Chennai'),(5089,'Zaid Mohammed','9876500089','28 Thiruneermalai, Chennai'),(5090,'Abdul Rahman','9876500090','60 Pallikaranai, Chennai'),(5091,'Arul Prakash','9876500091','81 Medavakkam Main Road, Chennai'),(5092,'Benedict Raj','9876500092','35 Sembakkam, Chennai'),(5093,'Christopher','9876500093','58 Camp Road, Chennai'),(5094,'Daniel Raj','9876500094','90 Vandalur, Chennai'),(5095,'Emmanuel','9876500095','23 Kelambakkam, Chennai'),(5096,'Felix Raj','9876500096','46 Navalur OMR, Chennai'),(5097,'Gilbert Raj','9876500097','74 Padur, Chennai'),(5098,'Henry Joseph','9876500098','95 Siruseri SIPCOT, Chennai'),(5099,'Isaac Raj','9876500099','17 Thiruporur, Chennai'),(5100,'Jerome Raj','9876500100','49 Mahabalipuram Road, Chennai'),(5101,'Kevin Raj','9876500101','68 ECR Road, Chennai'),(5102,'Lawrence Raj','9876500102','82 Uthandi, Chennai'),(5103,'Martin Raj','9876500103','26 Akkarai, Chennai'),(5104,'Nelson Raj','9876500104','53 Sholinganallur OMR, Chennai'),(5105,'Oscar Raj','9876500105','79 Perumbakkam, Chennai'),(5106,'Peter Raj','9876500106','91 Sithalapakkam, Chennai'),(5107,'Quincy Raj','9876500107','14 Madambakkam, Chennai'),(5108,'Robert Raj','9876500108','37 Ponmar, Chennai'),(5109,'Stephen Raj','9876500109','62 Ottiyambakkam, Chennai'),(5110,'Thomas Raj','9876500110','88 Kandanchavadi, Chennai'),(5111,'Arvind Kumar','9876500111','15 Kottivakkam, Chennai'),(5112,'Bhuvan Raj','9876500112','39 Palavakkam, Chennai'),(5113,'Chetan Raj','9876500113','57 Thoraipakkam OMR, Chennai'),(5114,'Dev Raj','9876500114','73 Perungudi OMR, Chennai'),(5115,'Ethan Raj','9876500115','98 Okkiyam, Chennai'),(5116,'Franklin Raj','9876500116','21 MRC Nagar, Chennai'),(5117,'Glen Raj','9876500117','44 RA Puram, Chennai'),(5118,'Harold Raj','9876500118','66 Santhome, Chennai'),(5119,'Ian Raj','9876500119','89 Foreshore Estate, Chennai'),(5120,'Joel Raj','9876500120','31 Mandaveli, Chennai'),(5121,'Kenneth Raj','9876500121','54 Luz, Chennai'),(5122,'Lloyd Raj','9876500122','78 Pattinapakkam, Chennai'),(5123,'Melvin Raj','9876500123','92 Greenways Road, Chennai'),(5124,'Noel Raj','9876500124','17 Chetpet, Chennai'),(5125,'Oliver Raj','9876500125','40 Kilpauk, Chennai'),(5126,'Patrick Raj','9876500126','63 Ayanavaram, Chennai'),(5127,'Rex Raj','9876500127','85 Villivakkam, Chennai'),(5128,'Sam Raj','9876500128','27 Periyar Nagar, Chennai'),(5129,'Timothy Raj','9876500129','59 Vyasarpadi, Chennai'),(5130,'Victor Raj','9876500130','90 Madhavaram, Chennai');
/*!40000 ALTER TABLE `guarantors_1` ENABLE KEYS */;
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
