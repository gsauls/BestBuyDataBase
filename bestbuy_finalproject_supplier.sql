-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: bestbuy_finalproject
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplierID` varchar(10) NOT NULL,
  `supplierName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`supplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES ('AG-1203','Astro Gaming'),('AP-0099','Apple'),('AQ-0762','AudioQuest'),('BR-9371','Breville'),('CH-8351','Chefman'),('DT-1321','Definitive Technology'),('GO-8858','Samsung'),('HY-1271','HyperX'),('IN-2587','Insignia'),('KE-1486','KEF'),('KL-1260','Klipsch'),('KU-8486','Keurig'),('LG-2998','LG'),('LG-2999','LG'),('LO-1710','Logitech'),('MI-0226','Microsoft'),('NE-8609','Nespresso'),('NI-8888','Ninja'),('NO-0213','Nintendo'),('NS-1034','Nintendo Switch'),('PA-4732','PowerA'),('RU-0879','Russound'),('SA-2390','Samsung'),('SA-2391','Samsung'),('SE-1954','Sennheiser'),('SG-0784','Seagate'),('SH-1910','Shure'),('SN-1902','Sonance'),('SO-2911','Sony'),('SS-0312','SteelSeries'),('ST-1933','SteelSeries'),('TB-0923','Turtle Beach'),('TC-2165','TCL'),('TO-2128','Toshiba'),('VI- 2143','VIZIO'),('VM-1374','V-MODA'),('WD-1786','WD'),('WE-2864','Westinghouse'),('WH-8657','Whirlpool'),('XO-0943','Xbox One');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-02 17:43:04
