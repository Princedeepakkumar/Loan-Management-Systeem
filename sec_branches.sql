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
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `branch_id` int NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES (2001,'Downtown Branch','New York','NY'),(2002,'Lakeview Branch','Chicago','IL'),(2003,'Hilltop Branch','Dallas','TX'),(2004,'Sunset Branch','Miami','FL'),(2005,'Riverfront Branch','Seattle','WA'),(2006,'Oceanview Branch','Los Angeles','CA'),(2007,'Pinewood Branch','Boston','MA'),(2008,'Maple Branch','Denver','CO'),(2009,'Cedar Branch','Austin','TX'),(2010,'Birch Branch','Phoenix','AZ'),(2011,'Spruce Branch','Houston','TX'),(2012,'Walnut Branch','Atlanta','GA'),(2013,'Cherry Branch','Orlando','FL'),(2014,'Poplar Branch','Las Vegas','NV'),(2015,'Cypress Branch','Portland','OR'),(2016,'Redwood Branch','Detroit','MI'),(2017,'Palm Branch','Tampa','FL'),(2018,'Elm Branch','Cleveland','OH'),(2019,'Willow Branch','Nashville','TN'),(2020,'Aspen Branch','Raleigh','NC'),(2021,'Magnolia Branch','Columbus','OH'),(2022,'Hickory Branch','Charlotte','NC'),(2023,'Fir Branch','Indianapolis','IN'),(2024,'Ash Branch','San Diego','CA'),(2025,'Beech Branch','San Jose','CA'),(2026,'Alder Branch','Jacksonville','FL'),(2027,'Dogwood Branch','Memphis','TN'),(2028,'Ivy Branch','Louisville','KY'),(2029,'Vine Branch','Baltimore','MD'),(2030,'Olive Branch','Milwaukee','WI'),(2031,'Peach Branch','Albuquerque','NM'),(2032,'Plum Branch','Tucson','AZ'),(2033,'Lime Branch','Fresno','CA'),(2034,'Mango Branch','Sacramento','CA'),(2035,'Lemon Branch','Mesa','AZ'),(2036,'Orange Branch','Kansas City','MO'),(2037,'Apple Branch','Colorado Springs','CO'),(2038,'Banana Branch','Omaha','NE'),(2039,'Coconut Branch','Arlington','TX'),(2040,'Berry Branch','Minneapolis','MN'),(2041,'Grape Branch','Oakland','CA'),(2042,'Kiwi Branch','Tulsa','OK'),(2043,'Pear Branch','Wichita','KS'),(2044,'Melon Branch','New Orleans','LA'),(2045,'Fig Branch','Honolulu','HI'),(2046,'Oak Branch','Boise','ID'),(2047,'Palm Grove Branch','Spokane','WA'),(2048,'Silver Branch','Rochester','NY'),(2049,'Golden Branch','Glendale','AZ'),(2050,'Central Branch','Buffalo','NY'),(2051,'North Star Branch','Dallas','TX'),(2052,'East Point Branch','Miami','FL'),(2053,'West End Branch','Seattle','WA'),(2054,'South Gate Branch','Houston','TX'),(2055,'Grand Avenue Branch','Phoenix','AZ'),(2056,'Parkside Branch','San Diego','CA'),(2057,'Greenfield Branch','Austin','TX'),(2058,'Highland Branch','Denver','CO'),(2059,'Liberty Branch','Boston','MA'),(2060,'Heritage Branch','Chicago','IL'),(2061,'Summit Branch','Portland','OR'),(2062,'Valley Branch','Las Vegas','NV'),(2063,'Garden Branch','Atlanta','GA'),(2064,'Capital Branch','Columbus','OH'),(2065,'Metro Branch','Detroit','MI'),(2066,'Urban Branch','Nashville','TN'),(2067,'Royal Branch','Indianapolis','IN'),(2068,'Prime Branch','Charlotte','NC'),(2069,'Plaza Branch','Jacksonville','FL'),(2070,'Unity Branch','Memphis','TN'),(2071,'Harmony Branch','Louisville','KY'),(2072,'Pioneer Branch','Baltimore','MD'),(2073,'Frontier Branch','Milwaukee','WI'),(2074,'Gateway Branch','Albuquerque','NM'),(2075,'Victory Branch','Tucson','AZ'),(2076,'Prosper Branch','Fresno','CA'),(2077,'Crown Branch','Sacramento','CA'),(2078,'Legacy Branch','Mesa','AZ'),(2079,'Infinity Branch','Kansas City','MO'),(2080,'Emerald Branch','Colorado Springs','CO'),(2081,'Diamond Branch','Omaha','NE'),(2082,'Ruby Branch','Arlington','TX'),(2083,'Sapphire Branch','Minneapolis','MN'),(2084,'Opal Branch','Oakland','CA'),(2085,'Crystal Branch','Tulsa','OK'),(2086,'Galaxy Branch','Wichita','KS'),(2087,'Cosmos Branch','New Orleans','LA'),(2088,'Orbit Branch','Honolulu','HI'),(2089,'Zenith Branch','Boise','ID'),(2090,'Vertex Branch','Spokane','WA'),(2091,'Apex Branch','Rochester','NY'),(2092,'Pulse Branch','Glendale','AZ'),(2093,'Fusion Branch','Buffalo','NY'),(2094,'Spark Branch','San Jose','CA'),(2095,'Elite Branch','San Francisco','CA'),(2096,'Titan Branch','Washington','DC'),(2097,'Atlas Branch','Oklahoma City','OK'),(2098,'Nova Branch','El Paso','TX'),(2099,'Quantum Branch','Virginia Beach','VA'),(2100,'Dynamic Branch','Long Beach','CA'),(2101,'Rapid Branch','Fort Worth','TX'),(2102,'Secure Branch','Indianapolis','IN'),(2103,'Trust Branch','Seattle','WA'),(2104,'Safe Harbor Branch','Boston','MA'),(2105,'First Choice Branch','Denver','CO'),(2106,'People First Branch','Atlanta','GA'),(2107,'Bright Future Branch','Chicago','IL'),(2108,'Community Branch','Miami','FL'),(2109,'National Branch','Dallas','TX'),(2110,'Statewide Branch','Phoenix','AZ'),(2111,'Premier Branch','San Diego','CA'),(2112,'Continental Branch','Austin','TX'),(2113,'United Branch','Columbus','OH'),(2114,'Modern Branch','Detroit','MI'),(2115,'Advance Branch','Memphis','TN'),(2116,'Progress Branch','Louisville','KY'),(2117,'Secure Trust Branch','Baltimore','MD'),(2118,'Bright Star Branch','Milwaukee','WI'),(2119,'NextGen Branch','Tucson','AZ'),(2120,'Global Branch','Fresno','CA'),(2121,'MetroPlus Branch','Sacramento','CA'),(2122,'Vision Branch','Mesa','AZ'),(2123,'Future Bank Branch','Kansas City','MO'),(2124,'Smart Bank Branch','Colorado Springs','CO'),(2125,'PeopleCare Branch','Omaha','NE'),(2126,'TrustLine Branch','Arlington','TX'),(2127,'GoldLine Branch','Minneapolis','MN'),(2128,'BlueWave Branch','Oakland','CA'),(2129,'SilverLine Branch','Tulsa','OK'),(2130,'GreenLeaf Branch','Wichita','KS');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
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
