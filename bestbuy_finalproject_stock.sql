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
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `UPCcode` varchar(10) NOT NULL,
  `qauntity` int DEFAULT NULL,
  `city` varchar(45) NOT NULL,
  `branchID` varchar(45) NOT NULL,
  PRIMARY KEY (`UPCcode`,`city`,`branchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES ('1073100',3,'Hattiesburg','450'),('1073100',17,'Hollywood','738'),('1073100',11,'Los Andelos','356'),('1073100',8,'Mobile','456'),('1073100',15,'Nashville','242'),('1073100',17,'Orlando','654'),('1073100',19,'Tuscaloosa','234'),('3805000',6,'Hattiesburg','450'),('3805000',17,'Hollywood','738'),('3805000',15,'Los Andelos','356'),('3805000',20,'Mobile','456'),('3805000',20,'Nashville','242'),('3805000',8,'Orlando','654'),('3805000',6,'Tuscaloosa','234'),('4661200',8,'Hattiesburg','450'),('4661200',4,'Hollywood','738'),('4661200',17,'Los Andelos','356'),('4661200',6,'Mobile','456'),('4661200',20,'Nashville','242'),('4661200',15,'Orlando','654'),('4661200',10,'Tuscaloosa','234'),('5526130',17,'Hattiesburg','450'),('5526130',16,'Hollywood','738'),('5526130',13,'Los Andelos','356'),('5526130',16,'Mobile','456'),('5526130',11,'Nashville','242'),('5526130',18,'Orlando','654'),('5526130',13,'Tuscaloosa','234'),('5580240',1,'Hattiesburg','450'),('5580240',7,'Hollywood','738'),('5580240',1,'Los Andelos','356'),('5580240',16,'Mobile','456'),('5580240',6,'Nashville','242'),('5580240',7,'Orlando','654'),('5580240',3,'Tuscaloosa','234'),('5706660',1,'Hattiesburg','450'),('5706660',8,'Hollywood','738'),('5706660',17,'Los Andelos','356'),('5706660',10,'Mobile','456'),('5706660',2,'Nashville','242'),('5706660',9,'Orlando','654'),('5706660',12,'Tuscaloosa','234'),('5721500',4,'Hattiesburg','450'),('5721500',13,'Hollywood','738'),('5721500',17,'Los Andelos','356'),('5721500',8,'Mobile','456'),('5721500',18,'Nashville','242'),('5721500',8,'Orlando','654'),('5721500',15,'Tuscaloosa','234'),('5723320',1,'Hattiesburg','450'),('5723320',14,'Hollywood','738'),('5723320',16,'Los Andelos','356'),('5723320',12,'Mobile','456'),('5723320',15,'Nashville','242'),('5723320',18,'Orlando','654'),('5723320',9,'Tuscaloosa','234'),('5838110',12,'Hattiesburg','450'),('5838110',13,'Hollywood','738'),('5838110',1,'Los Andelos','356'),('5838110',5,'Mobile','456'),('5838110',3,'Nashville','242'),('5838110',18,'Orlando','654'),('5838110',12,'Tuscaloosa','234'),('5913620',15,'Hattiesburg','450'),('5913620',1,'Hollywood','738'),('5913620',10,'Los Andelos','356'),('5913620',14,'Mobile','456'),('5913620',10,'Nashville','242'),('5913620',3,'Orlando','654'),('5913620',7,'Tuscaloosa','234'),('5925220',10,'Hattiesburg','450'),('5925220',6,'Hollywood','738'),('5925220',17,'Los Andelos','356'),('5925220',8,'Mobile','456'),('5925220',18,'Nashville','242'),('5925220',13,'Orlando','654'),('5925220',14,'Tuscaloosa','234'),('5985620',15,'Hattiesburg','450'),('5985620',6,'Hollywood','738'),('5985620',14,'Los Andelos','356'),('5985620',20,'Mobile','456'),('5985620',9,'Nashville','242'),('5985620',17,'Orlando','654'),('5985620',8,'Tuscaloosa','234'),('6009900',13,'Hattiesburg','450'),('6009900',12,'Hollywood','738'),('6009900',3,'Los Andelos','356'),('6009900',17,'Mobile','456'),('6009900',2,'Nashville','242'),('6009900',17,'Orlando','654'),('6009900',17,'Tuscaloosa','234'),('6009920',1,'Hattiesburg','450'),('6009920',2,'Hollywood','738'),('6009920',13,'Los Andelos','356'),('6009920',17,'Mobile','456'),('6009920',8,'Nashville','242'),('6009920',2,'Orlando','654'),('6009920',3,'Tuscaloosa','234'),('6009940',16,'Hattiesburg','450'),('6009940',3,'Hollywood','738'),('6009940',12,'Los Andelos','356'),('6009940',18,'Mobile','456'),('6009940',4,'Nashville','242'),('6009940',11,'Orlando','654'),('6009940',8,'Tuscaloosa','234'),('6009950',12,'Hattiesburg','450'),('6009950',11,'Hollywood','738'),('6009950',1,'Los Andelos','356'),('6009950',9,'Mobile','456'),('6009950',18,'Nashville','242'),('6009950',6,'Orlando','654'),('6009950',8,'Tuscaloosa','234'),('6009960',12,'Hattiesburg','450'),('6009960',14,'Hollywood','738'),('6009960',13,'Los Andelos','356'),('6009960',1,'Mobile','456'),('6009960',15,'Nashville','242'),('6009960',19,'Orlando','654'),('6009960',5,'Tuscaloosa','234'),('6084400',8,'Hattiesburg','450'),('6084400',3,'Hollywood','738'),('6084400',6,'Los Andelos','356'),('6084400',2,'Mobile','456'),('6084400',7,'Nashville','242'),('6084400',20,'Orlando','654'),('6084400',4,'Tuscaloosa','234'),('6174410',7,'Hattiesburg','450'),('6174410',10,'Hollywood','738'),('6174410',3,'Los Andelos','356'),('6174410',20,'Mobile','456'),('6174410',3,'Nashville','242'),('6174410',2,'Orlando','654'),('6174410',9,'Tuscaloosa','234'),('6203570',12,'Hattiesburg','450'),('6203570',6,'Hollywood','738'),('6203570',8,'Los Andelos','356'),('6203570',17,'Mobile','456'),('6203570',7,'Nashville','242'),('6203570',9,'Orlando','654'),('6203570',16,'Tuscaloosa','234'),('6211540',10,'Hattiesburg','450'),('6211540',4,'Hollywood','738'),('6211540',6,'Los Andelos','356'),('6211540',2,'Mobile','456'),('6211540',17,'Nashville','242'),('6211540',8,'Orlando','654'),('6211540',8,'Tuscaloosa','234'),('6257140',19,'Hattiesburg','450'),('6257140',8,'Hollywood','738'),('6257140',4,'Los Andelos','356'),('6257140',15,'Mobile','456'),('6257140',1,'Nashville','242'),('6257140',19,'Orlando','654'),('6257140',20,'Tuscaloosa','234'),('6265160',2,'Hattiesburg','450'),('6265160',9,'Hollywood','738'),('6265160',15,'Los Andelos','356'),('6265160',6,'Mobile','456'),('6265160',2,'Nashville','242'),('6265160',13,'Orlando','654'),('6265160',4,'Tuscaloosa','234'),('6285960',19,'Hattiesburg','450'),('6285960',2,'Hollywood','738'),('6285960',2,'Los Andelos','356'),('6285960',18,'Mobile','456'),('6285960',9,'Nashville','242'),('6285960',8,'Orlando','654'),('6285960',9,'Tuscaloosa','234'),('6289820',10,'Hattiesburg','450'),('6289820',5,'Hollywood','738'),('6289820',1,'Los Andelos','356'),('6289820',4,'Mobile','456'),('6289820',4,'Nashville','242'),('6289820',3,'Orlando','654'),('6289820',2,'Tuscaloosa','234'),('6291170',17,'Hattiesburg','450'),('6291170',11,'Hollywood','738'),('6291170',11,'Los Andelos','356'),('6291170',9,'Mobile','456'),('6291170',12,'Nashville','242'),('6291170',3,'Orlando','654'),('6291170',8,'Tuscaloosa','234'),('6307950',7,'Hattiesburg','450'),('6307950',5,'Hollywood','738'),('6307950',19,'Los Andelos','356'),('6307950',3,'Mobile','456'),('6307950',20,'Nashville','242'),('6307950',5,'Orlando','654'),('6307950',15,'Tuscaloosa','234'),('6320790',9,'Hattiesburg','450'),('6320790',10,'Hollywood','738'),('6320790',4,'Los Andelos','356'),('6320790',5,'Mobile','456'),('6320790',6,'Nashville','242'),('6320790',7,'Orlando','654'),('6320790',6,'Tuscaloosa','234'),('6323240',3,'Hattiesburg','450'),('6323240',9,'Hollywood','738'),('6323240',10,'Los Andelos','356'),('6323240',15,'Mobile','456'),('6323240',9,'Nashville','242'),('6323240',12,'Orlando','654'),('6323240',13,'Tuscaloosa','234'),('6328350',6,'Hattiesburg','450'),('6328350',13,'Hollywood','738'),('6328350',6,'Los Andelos','356'),('6328350',9,'Mobile','456'),('6328350',16,'Nashville','242'),('6328350',16,'Orlando','654'),('6328350',7,'Tuscaloosa','234'),('6336450',4,'Hattiesburg','450'),('6336450',14,'Hollywood','738'),('6336450',14,'Los Andelos','356'),('6336450',15,'Mobile','456'),('6336450',15,'Nashville','242'),('6336450',14,'Orlando','654'),('6336450',12,'Tuscaloosa','234'),('6349970',4,'Hattiesburg','450'),('6349970',4,'Hollywood','738'),('6349970',16,'Los Andelos','356'),('6349970',19,'Mobile','456'),('6349970',11,'Nashville','242'),('6349970',4,'Orlando','654'),('6349970',16,'Tuscaloosa','234'),('6355730',2,'Hattiesburg','450'),('6355730',19,'Hollywood','738'),('6355730',12,'Los Andelos','356'),('6355730',17,'Mobile','456'),('6355730',9,'Nashville','242'),('6355730',11,'Orlando','654'),('6355730',9,'Tuscaloosa','234'),('6356880',3,'Hattiesburg','450'),('6356880',2,'Hollywood','738'),('6356880',20,'Los Andelos','356'),('6356880',18,'Mobile','456'),('6356880',14,'Nashville','242'),('6356880',7,'Orlando','654'),('6356880',2,'Tuscaloosa','234'),('6357660',1,'Hattiesburg','450'),('6357660',13,'Hollywood','738'),('6357660',3,'Los Andelos','356'),('6357660',20,'Mobile','456'),('6357660',13,'Nashville','242'),('6357660',3,'Orlando','654'),('6357660',4,'Tuscaloosa','234'),('6364250',5,'Hattiesburg','450'),('6364250',16,'Hollywood','738'),('6364250',11,'Los Andelos','356'),('6364250',17,'Mobile','456'),('6364250',16,'Nashville','242'),('6364250',2,'Orlando','654'),('6364250',13,'Tuscaloosa','234'),('6367440',18,'Hattiesburg','450'),('6367440',17,'Hollywood','738'),('6367440',8,'Los Andelos','356'),('6367440',17,'Mobile','456'),('6367440',2,'Nashville','242'),('6367440',4,'Orlando','654'),('6367440',18,'Tuscaloosa','234'),('6368980',19,'Hattiesburg','450'),('6368980',12,'Hollywood','738'),('6368980',11,'Los Andelos','356'),('6368980',6,'Mobile','456'),('6368980',4,'Nashville','242'),('6368980',9,'Orlando','654'),('6368980',13,'Tuscaloosa','234'),('6373460',4,'Hattiesburg','450'),('6373460',17,'Hollywood','738'),('6373460',2,'Los Andelos','356'),('6373460',9,'Mobile','456'),('6373460',1,'Nashville','242'),('6373460',6,'Orlando','654'),('6373460',10,'Tuscaloosa','234'),('6374980',10,'Hattiesburg','450'),('6374980',16,'Hollywood','738'),('6374980',13,'Los Andelos','356'),('6374980',10,'Mobile','456'),('6374980',17,'Nashville','242'),('6374980',10,'Orlando','654'),('6374980',12,'Tuscaloosa','234'),('6375620',6,'Hattiesburg','450'),('6375620',9,'Hollywood','738'),('6375620',10,'Los Andelos','356'),('6375620',2,'Mobile','456'),('6375620',13,'Nashville','242'),('6375620',7,'Orlando','654'),('6375620',5,'Tuscaloosa','234'),('6397760',19,'Hattiesburg','450'),('6397760',7,'Hollywood','738'),('6397760',20,'Los Andelos','356'),('6397760',7,'Mobile','456'),('6397760',14,'Nashville','242'),('6397760',15,'Orlando','654'),('6397760',19,'Tuscaloosa','234'),('6401730',8,'Hattiesburg','450'),('6401730',11,'Hollywood','738'),('6401730',8,'Los Andelos','356'),('6401730',10,'Mobile','456'),('6401730',20,'Nashville','242'),('6401730',17,'Orlando','654'),('6401730',3,'Tuscaloosa','234'),('6401940',12,'Hattiesburg','450'),('6401940',18,'Hollywood','738'),('6401940',15,'Los Andelos','356'),('6401940',12,'Mobile','456'),('6401940',3,'Nashville','242'),('6401940',15,'Orlando','654'),('6401940',5,'Tuscaloosa','234'),('6407080',15,'Hattiesburg','450'),('6407080',19,'Hollywood','738'),('6407080',10,'Los Andelos','356'),('6407080',3,'Mobile','456'),('6407080',13,'Nashville','242'),('6407080',13,'Orlando','654'),('6407080',2,'Tuscaloosa','234'),('6407590',19,'Hattiesburg','450'),('6407590',7,'Hollywood','738'),('6407590',5,'Los Andelos','356'),('6407590',3,'Mobile','456'),('6407590',2,'Nashville','242'),('6407590',19,'Orlando','654'),('6407590',13,'Tuscaloosa','234'),('6408480',13,'Hattiesburg','450'),('6408480',12,'Hollywood','738'),('6408480',18,'Los Andelos','356'),('6408480',8,'Mobile','456'),('6408480',14,'Nashville','242'),('6408480',12,'Orlando','654'),('6408480',7,'Tuscaloosa','234'),('6412980',5,'Hattiesburg','450'),('6412980',9,'Hollywood','738'),('6412980',4,'Los Andelos','356'),('6412980',2,'Mobile','456'),('6412980',20,'Nashville','242'),('6412980',4,'Orlando','654'),('6412980',10,'Tuscaloosa','234'),('6414110',2,'Hattiesburg','450'),('6414110',1,'Hollywood','738'),('6414110',8,'Los Andelos','356'),('6414110',15,'Mobile','456'),('6414110',7,'Nashville','242'),('6414110',17,'Orlando','654'),('6414110',7,'Tuscaloosa','234'),('6417770',9,'Hattiesburg','450'),('6417770',5,'Hollywood','738'),('6417770',5,'Los Andelos','356'),('6417770',8,'Mobile','456'),('6417770',4,'Nashville','242'),('6417770',1,'Orlando','654'),('6417770',12,'Tuscaloosa','234'),('6420080',11,'Hattiesburg','450'),('6420080',9,'Hollywood','738'),('6420080',10,'Los Andelos','356'),('6420080',3,'Mobile','456'),('6420080',3,'Nashville','242'),('6420080',7,'Orlando','654'),('6420080',19,'Tuscaloosa','234'),('6420810',2,'Hattiesburg','450'),('6420810',13,'Hollywood','738'),('6420810',7,'Los Andelos','356'),('6420810',18,'Mobile','456'),('6420810',16,'Nashville','242'),('6420810',1,'Orlando','654'),('6420810',19,'Tuscaloosa','234'),('6420880',1,'Hattiesburg','450'),('6420880',5,'Hollywood','738'),('6420880',9,'Los Andelos','356'),('6420880',5,'Mobile','456'),('6420880',12,'Nashville','242'),('6420880',7,'Orlando','654'),('6420880',2,'Tuscaloosa','234'),('6422340',3,'Hattiesburg','450'),('6422340',9,'Hollywood','738'),('6422340',5,'Los Andelos','356'),('6422340',16,'Mobile','456'),('6422340',19,'Nashville','242'),('6422340',3,'Orlando','654'),('6422340',17,'Tuscaloosa','234'),('6425820',7,'Hattiesburg','450'),('6425820',18,'Hollywood','738'),('6425820',2,'Los Andelos','356'),('6425820',14,'Mobile','456'),('6425820',19,'Nashville','242'),('6425820',2,'Orlando','654'),('6425820',18,'Tuscaloosa','234'),('6426150',7,'Hattiesburg','450'),('6426150',3,'Hollywood','738'),('6426150',7,'Los Andelos','356'),('6426150',1,'Mobile','456'),('6426150',15,'Nashville','242'),('6426150',5,'Orlando','654'),('6426150',17,'Tuscaloosa','234'),('6426170',5,'Hattiesburg','450'),('6426170',20,'Hollywood','738'),('6426170',13,'Los Andelos','356'),('6426170',13,'Mobile','456'),('6426170',2,'Nashville','242'),('6426170',16,'Orlando','654'),('6426170',4,'Tuscaloosa','234'),('6427860',6,'Hattiesburg','450'),('6427860',8,'Hollywood','738'),('6427860',16,'Los Andelos','356'),('6427860',19,'Mobile','456'),('6427860',16,'Nashville','242'),('6427860',5,'Orlando','654'),('6427860',5,'Tuscaloosa','234'),('6428320',13,'Hattiesburg','450'),('6428320',3,'Hollywood','738'),('6428320',9,'Los Andelos','356'),('6428320',6,'Mobile','456'),('6428320',16,'Nashville','242'),('6428320',9,'Orlando','654'),('6428320',10,'Tuscaloosa','234'),('6430160',13,'Hattiesburg','450'),('6430160',16,'Hollywood','738'),('6430160',12,'Los Andelos','356'),('6430160',6,'Mobile','456'),('6430160',5,'Nashville','242'),('6430160',15,'Orlando','654'),('6430160',14,'Tuscaloosa','234'),('6430170',13,'Hattiesburg','450'),('6430170',14,'Hollywood','738'),('6430170',8,'Los Andelos','356'),('6430170',6,'Mobile','456'),('6430170',19,'Nashville','242'),('6430170',9,'Orlando','654'),('6430170',2,'Tuscaloosa','234'),('6430280',4,'Hattiesburg','450'),('6430280',3,'Hollywood','738'),('6430280',2,'Los Andelos','356'),('6430280',14,'Mobile','456'),('6430280',8,'Nashville','242'),('6430280',1,'Orlando','654'),('6430280',1,'Tuscaloosa','234'),('6430660',16,'Hattiesburg','450'),('6430660',15,'Hollywood','738'),('6430660',17,'Los Andelos','356'),('6430660',15,'Mobile','456'),('6430660',14,'Nashville','242'),('6430660',5,'Orlando','654'),('6430660',4,'Tuscaloosa','234'),('6432260',7,'Hattiesburg','450'),('6432260',13,'Hollywood','738'),('6432260',9,'Los Andelos','356'),('6432260',2,'Mobile','456'),('6432260',13,'Nashville','242'),('6432260',8,'Orlando','654'),('6432260',4,'Tuscaloosa','234'),('6437730',10,'Hattiesburg','450'),('6437730',19,'Hollywood','738'),('6437730',16,'Los Andelos','356'),('6437730',4,'Mobile','456'),('6437730',18,'Nashville','242'),('6437730',1,'Orlando','654'),('6437730',4,'Tuscaloosa','234'),('6439440',14,'Hattiesburg','450'),('6439440',2,'Hollywood','738'),('6439440',19,'Los Andelos','356'),('6439440',3,'Mobile','456'),('6439440',10,'Nashville','242'),('6439440',3,'Orlando','654'),('6439440',6,'Tuscaloosa','234'),('6441100',4,'Hattiesburg','450'),('6441100',9,'Hollywood','738'),('6441100',20,'Los Andelos','356'),('6441100',14,'Mobile','456'),('6441100',15,'Nashville','242'),('6441100',20,'Orlando','654'),('6441100',11,'Tuscaloosa','234'),('6447150',9,'Hattiesburg','450'),('6447150',11,'Hollywood','738'),('6447150',3,'Los Andelos','356'),('6447150',8,'Mobile','456'),('6447150',1,'Nashville','242'),('6447150',16,'Orlando','654'),('6447150',14,'Tuscaloosa','234'),('6447770',19,'Hattiesburg','450'),('6447770',3,'Hollywood','738'),('6447770',6,'Los Andelos','356'),('6447770',4,'Mobile','456'),('6447770',9,'Nashville','242'),('6447770',8,'Orlando','654'),('6447770',5,'Tuscaloosa','234'),('6450480',3,'Hattiesburg','450'),('6450480',11,'Hollywood','738'),('6450480',19,'Los Andelos','356'),('6450480',8,'Mobile','456'),('6450480',4,'Nashville','242'),('6450480',14,'Orlando','654'),('6450480',13,'Tuscaloosa','234'),('6451490',7,'Hattiesburg','450'),('6451490',5,'Hollywood','738'),('6451490',18,'Los Andelos','356'),('6451490',17,'Mobile','456'),('6451490',1,'Nashville','242'),('6451490',3,'Orlando','654'),('6451490',18,'Tuscaloosa','234'),('6452210',14,'Hattiesburg','450'),('6452210',13,'Hollywood','738'),('6452210',3,'Los Andelos','356'),('6452210',17,'Mobile','456'),('6452210',12,'Nashville','242'),('6452210',18,'Orlando','654'),('6452210',9,'Tuscaloosa','234'),('6454190',3,'Hattiesburg','450'),('6454190',8,'Hollywood','738'),('6454190',18,'Los Andelos','356'),('6454190',10,'Mobile','456'),('6454190',13,'Nashville','242'),('6454190',14,'Orlando','654'),('6454190',8,'Tuscaloosa','234'),('7263260',17,'Hattiesburg','450'),('7263260',5,'Hollywood','738'),('7263260',20,'Los Andelos','356'),('7263260',14,'Mobile','456'),('7263260',10,'Nashville','242'),('7263260',13,'Orlando','654'),('7263260',16,'Tuscaloosa','234');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
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