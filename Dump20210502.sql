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
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `branchID` varchar(45) NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `zipCode` varchar(45) DEFAULT NULL,
  `totalSales` int DEFAULT NULL,
  PRIMARY KEY (`branchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES ('234','Tuscaloosa','Alabama','73 Data Lane','37438',2245),('242','Nashville','Tennessee','87 Mountain Drive','89392',2227),('356','Los Angelos','California','17 Banana Rd','98547',1887),('450','Hattiesburg','Mississippi','198 Hwy 58','39402',2229),('456','Mobile','Alabama','34 Ford Lane','57382',2153),('654','Orlando','Florida','873 Computer Circle','73834',2064),('738','Hollywood','California','873 Hollywood Blvd','85963',2373),('856','Miami','Florida','899 Beach Ave','98321',2306),('954','Picayune','Mississippi','57 Hwy 11','39466',1933),('967','New Orleans','Louisiana','57 Lucian Rd','59402',1947);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerID` varchar(7) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('103985','6015252616','Lucas'),('113898','6016165633','David'),('163950','6013927899','Oliver'),('214163','6013000535','Jacob'),('341937','6016109208','Liam'),('372805','6017144126','Jack'),('377851','6017406081','William'),('446909','6015103076','Samuel'),('496701','6012793316','Michael'),('498277','6012969189','Matthew'),('500822','6013816683','Noah'),('508123','6012392812','Alexander'),('563898','6016060570','Daniel'),('609131','6012526399','Joseph'),('685845','6014178917','John'),('691942','6012626173','Jackson'),('693001','6017269467','James'),('701547','6017622648','Wyatt'),('715308','6015627657','Henry'),('719932','6013762402','Levi'),('737749','6012252656','Sebastian'),('789104','6014212396','Mateo'),('818897','6012385325','Elijah'),('829663','6014017445','Mason'),('880593','6017762149','Aiden'),('902521','6016291382','Benjamin'),('903864','6014274230','Owen'),('904537','6012054300','Ethan'),('937472','6015988284','Logan');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_sales`
--

DROP TABLE IF EXISTS `customer_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_sales` (
  `customerID` varchar(10) NOT NULL,
  `UPCcode` varchar(10) NOT NULL,
  `amount` int DEFAULT NULL,
  PRIMARY KEY (`customerID`,`UPCcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_sales`
--

LOCK TABLES `customer_sales` WRITE;
/*!40000 ALTER TABLE `customer_sales` DISABLE KEYS */;
INSERT INTO `customer_sales` VALUES ('113898','5526130',3),('113898','5721500',2),('113898','6437730',5),('113898','6439440',4),('113898','6441100',1),('113898','6447150',2),('113898','6447770',3),('113898','6450480',4),('113898','6451490',2),('113898','6452210',3),('113898','6454190',2),('113898','7263260',2),('163950','6401940',4),('163950','6407080',3),('163950','6407590',3),('163950','6408480',7),('163950','6412980',1),('163950','6414110',5),('163950','6417770',1),('163950','6420080',7),('163950','6420810',6),('163950','6420880',8),('163950','6422340',10),('163950','6425820',4),('163950','6426150',8),('214163','6408480',3),('214163','6412980',2),('214163','6414110',1),('214163','6417770',2),('214163','6420080',2),('214163','6420810',4),('214163','6420880',4),('214163','6422340',5),('214163','6425820',2),('214163','6426150',1),('214163','6426170',5),('214163','7263260',4),('496701','6373460',3),('496701','6374980',2),('496701','6375620',3),('496701','6397760',3),('496701','6401730',3),('496701','6401940',5),('496701','6407080',3),('496701','6407590',4),('496701','6408480',1),('496701','6412980',1),('496701','6414110',1),('500822','6373460',9),('500822','6374980',2),('500822','6375620',6),('500822','6397760',10),('500822','6401730',10),('500822','6401940',5),('500822','6407080',10),('500822','6407590',4),('500822','6408480',2),('500822','6417770',2),('500822','6420080',9),('500822','6420810',4),('500822','6420880',4),('500822','6422340',8),('500822','6425820',6),('500822','6426150',10),('500822','6426170',8),('500822','7263260',10),('701547','6373460',2),('701547','6374980',9),('701547','6375620',7),('701547','6397760',1),('701547','6401730',1),('701547','6401940',1),('701547','6407080',6),('701547','6407590',4),('701547','6412980',5),('701547','6414110',4),('701547','6420080',9),('701547','6420810',1),('701547','6420880',3),('701547','6422340',1),('701547','6425820',1),('701547','6426150',3),('701547','6426170',2),('701547','7263260',9),('719932','6407080',4),('719932','6407590',4),('719932','6408480',5),('719932','6412980',2),('719932','6417770',5),('719932','6420080',1),('719932','6420810',1),('719932','6420880',4),('719932','6422340',4),('719932','6425820',2),('719932','6426150',4),('903864','6373460',4),('903864','6374980',8),('903864','6407590',7),('903864','6408480',6),('903864','6412980',10),('903864','6414110',10),('903864','6417770',5),('903864','6420080',8),('903864','6420810',8),('903864','6420880',4),('903864','6422340',3),('903864','6425820',3),('903864','6426150',3),('903864','6426170',10),('903864','6468480',4),('903864','7263260',4);
/*!40000 ALTER TABLE `customer_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `UPCcode` varchar(10) NOT NULL,
  `packageSize` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `name` mediumtext,
  `price` double DEFAULT NULL,
  `supplierID` varchar(10) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UPCcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('1073100','Large','Whirlpool','18.2 Cu. Ft. Top-Freezer Refrigerator',729.99,'WH-8657','Appliances'),('3805000','small','Apple','Apple - 12.9-Inch iPad Pro (4th Generation) with Wi-Fi - 128GB - Space Gray',999.99,'AP-0099','Tablet'),('4661200','Large','LG','Door-in-Door 26.0 Cu. Ft. Side-by-Side Refrigerator with Thru-the-Door Ice and Water',1899.99,'LG-2998','Appliances'),('5526130','Small','V-MODA','XS Wired On-Ear Headphones',179.98,'VM-1374','Audio'),('5580240','Large','Samsung','30\" Wide, 22cu. Ft. French Door Fingerprint Resistant Refrigerator',1599.99,'SA-2390','Appliances'),('5706660','Small','Apple','AirPods Pro',249.99,'AP-0099','Audio'),('5721500','small','Nintendo Switch','The Legend of Zelda: Breath of the Wild',49.99,'NS-1034','Video Games'),('5723320','small','Nintendo Switch','Animal Crossing: New Horizons',59.99,'NS-1034','Video Games'),('5723321','small','Nintendo Switch','Super Smash Bros. Ultimate',59.99,'NS-1034','Video Games'),('5838110','Large','Insignia','18.1 Cu. Ft. Top-Freezer Refrigerator',549.99,'IN-2587','Appliances'),('5913620','Medium','KEF','Q Series 6.5\' 2-Way Bookshelf Speakers',699.98,'KE-1486','TV & Home Theater'),('5925220','small','Seagate','Game Drive for Xbox Officially Licensed  4TB External USB 3.0 Portable Hard Drive - White',109.99,'SG-0784','Video Games'),('5985620','small','Apple','Apple - 10.9-Inch iPad Air - Latest Model - (4th Generation) with Wi-Fi - 64GB - Silver',599.99,'AP-0099','Tablet'),('6009900','small','Apple','Apple - iPhone 12 5G 64GB - Black',799.99,'AP-0099','Cell Phone'),('6009901','small','Apple','Apple - iPhone 12 5G 64GB - White',799.99,'AP-0099','Cell Phone'),('6009902','small','Apple','Apple - iPhone 12 5G 64GB - (PRODUCT)RED',799.99,'AP-0099','Cell Phone'),('6009903','small','Apple','Apple - iPhone 12 5G 64GB - Blue',799.99,'AP-0099','Cell Phone'),('6009904','small','Apple','Apple - iPhone 12 5G 64GB - Green',799.99,'AP-0099','Cell Phone'),('6009920','small','Apple','Apple - iPhone 12 Pro 5G 128GB - Gold',999.99,'AP-0099','Cell Phone'),('6009940','small','Apple','Apple - iPhone 12 Pro Max 5G 128GB - Silver',999.99,'AP-0099','Cell Phone'),('6009950','small','Apple','Apple - iPhone 12 mini 5G 64GB - Black',699.99,'AP-0099','Cell Phone'),('6009951','small','Apple','Apple - iPhone 12 mini 5G 64GB - White',699.99,'AP-0099','Cell Phone'),('6009952','small','Apple','Apple - iPhone 12 mini 5G 64GB - (PRODUCT)RED',699.99,'AP-0099','Cell Phone'),('6009953','small','Apple','Apple - iPhone 12 mini 5G 64GB - Blue',699.99,'AP-0099','Cell Phone'),('6009960','small','Apple','Apple - iPhone 12 mini 5G 64GB - Green',699.99,'AP-0099','Cell Phone'),('6084400','Small','Apple','AirPods with Charging Case',159.99,'AP-0099','Audio'),('6174410','Small','HyperX','Cloud Flight Wireless Stereo Gaming Headset for PC/PS4',139.99,'HY-1271','Audio'),('6203570','Medium','Keurig','K-Elite Single Serve K-Cup Pod Coffee Maker',169.99,'KU-8486','Appliances'),('6211540','Small','Sony','WH-L600 RF Digital Surround Wireless Headphones',299.98,'SO-2911','Audio'),('6257140','small','Nintendo','Switch 32GB Lite - Yellow',199.99,'NO-0213','Video Games'),('6265160','Medium','Keurig','K-Café Special Edition Single Serve K-Cup Pod Coffee Maker with Milk Frother',219.99,'KU-8486','Appliances'),('6285960','small','SteelSeries','Arctis 7 Wireless DTS Headphone Gaming Headset for PC and PlayStation 4 - Black',149.99,'SS-0312','Video Games'),('6289820','Medium','Klipsch','SPL Series 12\" 300W Powered Subwoofer',689.98,'KL-1260','TV & Home Theater'),('6291170','Medium','Breville','Barista Express Espresso Machine with 15 bars of pressure, Milk Frother and grinder',699.95,'BR-9371','Appliances'),('6307950','Medium','Nespresso','DeLonghi VertuoLine Evoluo Coffee Maker and Espresso Machine with Aeroccino',349,'NE-8609','Appliances'),('6320790','Small','Logitech','G935 Wireless 7.1 Surround Sound Gaming Headset for PC',129.99,'LO-1710','Audio'),('6323240','Large','Samsung','22.6 Cu. Ft. 4-Door French Door Counter Depth Refrigerator - Tuscan Stainless Steel',2879.99,'SA-2390','Appliances'),('6328350','Large','LG','23.5 Cu. Ft. French InstaView Door-in-Door Counter-Depth Refrigerator with Craft Ice',3999.99,'LG-2999','Appliances'),('6336450','Large','Insignia','17.0 Cu. Ft. Frost-Free Upright Convertible Freezer/Refrigerator',699.99,'IN-2587','Appliances'),('6349970','small','Astro Gaming','ASTRO A50 + Base Station RF Wireless Over-the-Ear Headphones - Black',299.99,'AG-1203','Video Games'),('6355730','Medium','Keurig','K-Duo 12-Cup Coffee Maker and Single Serve K-Cup Brewer',169.99,'KU-8486','Appliances'),('6356880','Small','V-MODA','Crossfade M-100 Master Wired Over-the-Ear Headphones',249.98,'VM-1374','Audio'),('6357660','Medium','Ninja','Coffee 12-Cup Coffee Brewer CE251',99.99,'NI-8888','Appliances'),('6364250','small','Nintendo','Switch 32GB Console - Gray Joy-Con',299.99,'NO-0213','Video Games'),('6367440','Medium','Keurig','K-Café Single Serve K-Cup Coffee Maker',199.99,'KU-8486','Appliances'),('6368980','Medium','Ninja','Hot & Cold Brew 10-Cup Coffee Maker',179.99,'NI-8888','Appliances'),('6373460','Small','Apple','AirPods Max',549,'AP-0099','Audio'),('6374980','small','Microsoft','Microsoft - Surface Pro 7 - 12.3\" Touch Screen - Intel Core i3 - 4GB Memory - 128GB SSD with Black Type Cover (Latest Model) - Platinum',599.99,'MI-0226','Tablet'),('6375620','small','Microsoft','Surface Pro X - 13\" Touch Screen - Microsoft SQ1 - 8GB Memory - 128GB SSD - WiFi + 4G LTE - Device Only - Matte Black',799.99,'MI-0226','Tablet'),('6397760','Medium','Keurig','K-Slim Single-Serve K-Cup Pod Coffee Maker',109.99,'KU-8486','Appliances'),('6401730','small','Nintendo','Switch - Animal Crossing: New Horizons Edition 32GB Console - Multi',299.99,'NO-0213','Video Games'),('6401940','Medium','Nespresso','Breville Vertuo Next Premium Coffee Maker and Espresso Machine',169.99,'NE-8609','Appliances'),('6407080','small','Nintendo','Geek Squad Certified Refurbished Switch - Animal Crossing: New Horizons Edition 32GB Console - Multi',289.99,'NO-0213','Video Games'),('6407590','Small','HyperX','Cloud Alpha S Wired 7.1 Surround Sound Gaming Headset for PC with Chat Mixer',129.99,'HY-1271','Audio'),('6408480','small','Microsoft','Microsoft - Surface Go 2 - 10.5\" Touch-Screen - Intel Pentium Gold - 8GB - 128GB SSD - Device Only - Platinum',549.99,'MI-0226','Tablet'),('6412980','Small','Sennheiser','Wall Speaker Mount for AMBEO Soundbar',59.99,'SE-1954','TV & Home Theater'),('6414110','small','Nintendo Switch','Super Mario 3D World + Bowser’s Fury',59.99,'NS-1034','Video Games'),('6417770','Large','Samsung','28 cu. Ft. Large Capacity 3-Door French Door Refrigerator - Fingerprint Resistant',1709.99,'SA-2390','Appliances'),('6417771','Large','Samsung','28 cu. Ft. 3-Door French Door Refrigerator with Family Hub',2519.99,'SA-2390','Appliances'),('6420080','small','Xbox One','NBA 2K21 Standard Edition',60.99,'XO-0943','Video Games'),('6420810','Medium','Chefman','Espresso Machine',179.99,'CH-8351','Appliances'),('6420881','Small','Logitech','G Pro X Wireless DTS Headphone:X 2.0 Gaming Headset for Windows',199.99,'LO-1710','Audio'),('6422340','small','Turtle Beach','Stealth 600 Gen 2 Wireless Gaming Headset for Xbox One and Xbox Series X|S - Black/Green',99.99,'TB-0923','Video Games'),('6425820','Small','Sonance','Round Surface Mount',33.98,'SN-1902','TV & Home Theater'),('6426150','medium','Sony','PlayStation 5 Console',499.99,'SO-2911','Video Games'),('6426170','Medium','Nespresso','Vertuo Next Coffee and Espresso Maker by Breville, Limited Edition with Aeroccino',209.95,'NE-8609','Appliances'),('6427860','small','WD','BLACK P10 5TB External USB 3.2 Gen 1 Portable Hard Drive - Black',124.99,'WD-1786','Video Games'),('6428320','medium','Microsoft','Xbox Series X 1TB Console - Black',499.99,'MI-0226','Video Games'),('6430160','medium','Sony','PlayStation 5 Digital Edition Console',399.99,'SO-2911','Video Games'),('6430161','small','Sony','PlayStation 5 - DualSense Wireless Controller',69.99,'SO-2911','Video Games'),('6430162','small','Sony','PlayStation - Pulse 3D Wireless Headset (Compatible for both PlayStation 4 & PlayStation 5) - White',99.99,'SO-2911','Video Games'),('6430170','small','Sony','PlayStation 5 - HD Camera',59.99,'SO-2911','Video Games'),('6430171','small','Sony','PlayStation 5 - Media Remote',29.99,'SO-2911','Video Games'),('6430280','medium','Microsoft','Xbox Series S 512 GB All-Digital Console (Disc-free Gaming) - White',299.99,'MI-0226','Video Games'),('6430660','small','Microsoft','Controller for Xbox Series X, Xbox Series S, and Xbox One (Latest Model) - Carbon Black',54.99,'MI-0226','Video Games'),('6430661','small','Microsoft','Rechargeable Battery + USB-C Cable for Xbox Series X and Xbox Series S - Black',24.99,'MI-0226','Video Games'),('6432262','small','Samsung','Google - Pixel 5 5G 128GB - Just Black',724.99,'GO-8858','Cell Phone'),('6432263','small','PowerA','Dual Charging Station for Xbox Series X|S and Xbox One - Black',24.99,'PA-4732','Video Games'),('6432264','small','Logitech','ASTRO Gaming HDMI Adapter for PlayStation 5 - Black',39.99,'LO-1710','Video Games'),('6432265','small','Samsung','Samsung - Galaxy S21 5G 128GB (Unlocked) - Phantom White',649.99,'SA-2390','Cell Phone'),('6432266','small','Samsung','Samsung - Galaxy S21 Ultra 5G 128GB (Unlocked) - Phantom Silver',949.99,'SA-2390','Cell Phone'),('6432267','Large','Samsung','28 cu. Ft. Side-by-Side Refrigerator with WiFi and Large Capacity',1299.99,'SA-2390','Appliances'),('6432268','small','HyperX','Cloud II Wireless 7.1 Surround Sound Gaming Headset for PC and Playstation - Black/Red',149.99,'HY-1271','Video Games'),('6432269','small','Xbox One','Resident Evil Village Deluxe Edition',69.99,'XO-0943','Video Games'),('6432270','small','Xbox One','MLB The Show 21 Standard Edition',69.99,'XO-0943','Video Games'),('6432271','small','Xbox One','MLB The Show 21 Jackie Robinson Edition',84.99,'XO-0943','Video Games'),('6432272','Small','Shure','AONIC 50 Wireless Headphones',299.98,'SH-1910','Audio'),('6432273','Small','Russound','P75 2-Ch. Amplifier',220.98,'RU-0879','TV & Home Theater');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `saleID` varchar(10) NOT NULL,
  `UPCcode` varchar(10) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `quantitySold` int DEFAULT NULL,
  `branchID` varchar(10) NOT NULL,
  PRIMARY KEY (`saleID`,`branchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES ('1','1073100','Tuscaloosa','Alabama',35,'234'),('10','5838110','Tuscaloosa','Alabama',20,'234'),('100','5925220','New Orleans','Lousiana',19,'967'),('101','5985620','New Orleans','Lousiana',31,'967'),('102','6009900','New Orleans','Lousiana',1,'967'),('103','6009900','New Orleans','Lousiana',1,'967'),('104','6009900','New Orleans','Lousiana',10,'967'),('105','6009900','New Orleans','Lousiana',35,'967'),('106','6009900','New Orleans','Lousiana',11,'967'),('107','6009920','New Orleans','Lousiana',25,'967'),('108','6009940','New Orleans','Lousiana',37,'967'),('109','6009950','New Orleans','Lousiana',15,'967'),('11','5913620','Tuscaloosa','Alabama',8,'234'),('110','6009950','New Orleans','Lousiana',14,'967'),('111','6009950','New Orleans','Lousiana',41,'967'),('112','6009950','New Orleans','Lousiana',45,'967'),('113','6009960','New Orleans','Lousiana',13,'967'),('114','6084400','New Orleans','Lousiana',38,'967'),('115','6174410','New Orleans','Lousiana',40,'967'),('116','6203570','New Orleans','Lousiana',8,'967'),('117','6211540','New Orleans','Lousiana',26,'967'),('118','6257140','New Orleans','Lousiana',36,'967'),('119','6265160','New Orleans','Lousiana',21,'967'),('12','5925220','Tuscaloosa','Alabama',47,'234'),('120','6285960','New Orleans','Lousiana',26,'967'),('121','6289820','New Orleans','Lousiana',13,'967'),('122','6291170','New Orleans','Lousiana',11,'967'),('123','6307950','New Orleans','Lousiana',24,'967'),('124','6320790','New Orleans','Lousiana',48,'967'),('125','6323240','New Orleans','Lousiana',12,'967'),('126','6328350','New Orleans','Lousiana',6,'967'),('127','6336450','New Orleans','Lousiana',16,'967'),('128','6349970','New Orleans','Lousiana',19,'967'),('129','6355730','New Orleans','Lousiana',7,'967'),('13','5985620','Tuscaloosa','Alabama',32,'234'),('130','6356880','New Orleans','Lousiana',7,'967'),('131','6357660','New Orleans','Lousiana',5,'967'),('132','6364250','New Orleans','Lousiana',34,'967'),('133','6367440','New Orleans','Lousiana',39,'967'),('134','6368980','New Orleans','Lousiana',8,'967'),('135','6373460','New Orleans','Lousiana',3,'967'),('136','6374980','New Orleans','Lousiana',27,'967'),('137','6375620','New Orleans','Lousiana',24,'967'),('138','6397760','New Orleans','Lousiana',13,'967'),('139','6401730','New Orleans','Lousiana',37,'967'),('14','6009900','Tuscaloosa','Alabama',25,'234'),('140','6401940','New Orleans','Lousiana',16,'967'),('141','6407080','New Orleans','Lousiana',15,'967'),('142','6407590','New Orleans','Lousiana',34,'967'),('143','6408480','New Orleans','Lousiana',26,'967'),('144','6412980','New Orleans','Lousiana',40,'967'),('145','6414110','New Orleans','Lousiana',47,'967'),('146','6417770','New Orleans','Lousiana',46,'967'),('147','6417770','New Orleans','Lousiana',13,'967'),('148','6420080','New Orleans','Lousiana',18,'967'),('149','6420810','New Orleans','Lousiana',48,'967'),('15','6009900','Tuscaloosa','Alabama',5,'234'),('150','6420880','New Orleans','Lousiana',4,'967'),('151','6422340','New Orleans','Lousiana',25,'967'),('152','6425820','New Orleans','Lousiana',6,'967'),('153','6426150','New Orleans','Lousiana',34,'967'),('154','6426170','New Orleans','Lousiana',28,'967'),('155','6427860','New Orleans','Lousiana',7,'967'),('156','6428320','New Orleans','Lousiana',13,'967'),('157','6430160','New Orleans','Lousiana',24,'967'),('158','6430160','New Orleans','Lousiana',1,'967'),('159','6430160','New Orleans','Lousiana',12,'967'),('16','6009900','Tuscaloosa','Alabama',45,'234'),('160','6430170','New Orleans','Lousiana',27,'967'),('161','6430170','New Orleans','Lousiana',23,'967'),('162','6430280','New Orleans','Lousiana',30,'967'),('163','6430660','New Orleans','Lousiana',14,'967'),('164','6430660','New Orleans','Lousiana',22,'967'),('165','6432260','New Orleans','Lousiana',41,'967'),('166','6437730','New Orleans','Lousiana',4,'967'),('167','6439440','New Orleans','Lousiana',15,'967'),('168','6441100','New Orleans','Lousiana',16,'967'),('169','6441100','New Orleans','Lousiana',26,'967'),('17','6009900','Tuscaloosa','Alabama',49,'234'),('170','6447150','New Orleans','Lousiana',35,'967'),('171','6447770','New Orleans','Lousiana',25,'967'),('172','6450480','New Orleans','Lousiana',38,'967'),('173','6451490','New Orleans','Lousiana',38,'967'),('174','6452210','New Orleans','Lousiana',42,'967'),('175','6454190','New Orleans','Lousiana',25,'967'),('176','7263260','New Orleans','Lousiana',21,'967'),('177','1073100','Hattiesburg','Mississippi',47,'450'),('178','3805000','Hattiesburg','Mississippi',15,'450'),('179','4661200','Hattiesburg','Mississippi',50,'450'),('18','6009900','Tuscaloosa','Alabama',15,'234'),('180','5526130','Hattiesburg','Mississippi',5,'450'),('181','5580240','Hattiesburg','Mississippi',31,'450'),('182','5706660','Hattiesburg','Mississippi',42,'450'),('183','5721500','Hattiesburg','Mississippi',2,'450'),('186','5838110','Hattiesburg','Mississippi',31,'450'),('187','5913620','Hattiesburg','Mississippi',31,'450'),('188','5925220','Hattiesburg','Mississippi',34,'450'),('189','5985620','Hattiesburg','Mississippi',50,'450'),('19','6009920','Tuscaloosa','Alabama',32,'234'),('190','6009900','Hattiesburg','Mississippi',25,'450'),('191','6009900','Hattiesburg','Mississippi',48,'450'),('192','6009900','Hattiesburg','Mississippi',14,'450'),('193','6009900','Hattiesburg','Mississippi',34,'450'),('194','6009900','Hattiesburg','Mississippi',3,'450'),('195','6009920','Hattiesburg','Mississippi',13,'450'),('196','6009940','Hattiesburg','Mississippi',21,'450'),('197','6009950','Hattiesburg','Mississippi',37,'450'),('198','6009950','Hattiesburg','Mississippi',35,'450'),('199','6009950','Hattiesburg','Mississippi',34,'450'),('2','3805000','Tuscaloosa','Alabama',13,'234'),('20','6009940','Tuscaloosa','Alabama',11,'234'),('200','6009950','Hattiesburg','Mississippi',22,'450'),('201','6009960','Hattiesburg','Mississippi',28,'450'),('202','6084400','Hattiesburg','Mississippi',5,'450'),('203','6174410','Hattiesburg','Mississippi',23,'450'),('204','6203570','Hattiesburg','Mississippi',11,'450'),('205','6211540','Hattiesburg','Mississippi',15,'450'),('206','6257140','Hattiesburg','Mississippi',22,'450'),('207','6265160','Hattiesburg','Mississippi',29,'450'),('208','6285960','Hattiesburg','Mississippi',13,'450'),('209','6289820','Hattiesburg','Mississippi',12,'450'),('21','6009950','Tuscaloosa','Alabama',17,'234'),('210','6291170','Hattiesburg','Mississippi',41,'450'),('211','6307950','Hattiesburg','Mississippi',15,'450'),('212','6320790','Hattiesburg','Mississippi',28,'450'),('213','6323240','Hattiesburg','Mississippi',6,'450'),('214','6328350','Hattiesburg','Mississippi',24,'450'),('215','6336450','Hattiesburg','Mississippi',2,'450'),('216','6349970','Hattiesburg','Mississippi',5,'450'),('217','6355730','Hattiesburg','Mississippi',14,'450'),('218','6356880','Hattiesburg','Mississippi',16,'450'),('219','6357660','Hattiesburg','Mississippi',40,'450'),('22','6009950','Tuscaloosa','Alabama',40,'234'),('220','6364250','Hattiesburg','Mississippi',39,'450'),('221','6367440','Hattiesburg','Mississippi',23,'450'),('222','6368980','Hattiesburg','Mississippi',40,'450'),('223','6373460','Hattiesburg','Mississippi',30,'450'),('224','6374980','Hattiesburg','Mississippi',28,'450'),('225','6375620','Hattiesburg','Mississippi',2,'450'),('226','6397760','Hattiesburg','Mississippi',46,'450'),('227','6401730','Hattiesburg','Mississippi',31,'450'),('228','6401940','Hattiesburg','Mississippi',16,'450'),('229','6407080','Hattiesburg','Mississippi',19,'450'),('23','6009950','Tuscaloosa','Alabama',49,'234'),('230','6407590','Hattiesburg','Mississippi',16,'450'),('231','6408480','Hattiesburg','Mississippi',10,'450'),('232','6412980','Hattiesburg','Mississippi',21,'450'),('233','6414110','Hattiesburg','Mississippi',38,'450'),('234','6417770','Hattiesburg','Mississippi',48,'450'),('235','6417770','Hattiesburg','Mississippi',40,'450'),('236','6420080','Hattiesburg','Mississippi',8,'450'),('237','6420810','Hattiesburg','Mississippi',13,'450'),('238','6420880','Hattiesburg','Mississippi',27,'450'),('239','6422340','Hattiesburg','Mississippi',48,'450'),('24','6009950','Tuscaloosa','Alabama',29,'234'),('240','6425820','Hattiesburg','Mississippi',37,'450'),('241','6426150','Hattiesburg','Mississippi',10,'450'),('242','6426170','Hattiesburg','Mississippi',45,'450'),('243','6427860','Hattiesburg','Mississippi',22,'450'),('244','6428320','Hattiesburg','Mississippi',33,'450'),('245','6430160','Hattiesburg','Mississippi',23,'450'),('246','6430160','Hattiesburg','Mississippi',26,'450'),('247','6430160','Hattiesburg','Mississippi',32,'450'),('248','6430170','Hattiesburg','Mississippi',29,'450'),('249','6430170','Hattiesburg','Mississippi',16,'450'),('25','6009960','Tuscaloosa','Alabama',20,'234'),('250','6430280','Hattiesburg','Mississippi',35,'450'),('251','6430660','Hattiesburg','Mississippi',40,'450'),('252','6430660','Hattiesburg','Mississippi',25,'450'),('253','6432260','Hattiesburg','Mississippi',22,'450'),('254','6437730','Hattiesburg','Mississippi',30,'450'),('255','6439440','Hattiesburg','Mississippi',33,'450'),('256','6441100','Hattiesburg','Mississippi',6,'450'),('257','6441100','Hattiesburg','Mississippi',27,'450'),('258','6447150','Hattiesburg','Mississippi',18,'450'),('259','6447770','Hattiesburg','Mississippi',47,'450'),('26','6084400','Tuscaloosa','Alabama',33,'234'),('260','6450480','Hattiesburg','Mississippi',27,'450'),('261','6451490','Hattiesburg','Mississippi',43,'450'),('262','6452210','Hattiesburg','Mississippi',31,'450'),('263','6454190','Hattiesburg','Mississippi',46,'450'),('264','7263260','Hattiesburg','Mississippi',10,'450'),('265','1073100','Picayune','Mississippi',35,'954'),('266','3805000','Picayune','Mississippi',21,'954'),('267','4661200','Picayune','Mississippi',40,'954'),('268','5526130','Picayune','Mississippi',27,'954'),('269','5580240','Picayune','Mississippi',9,'954'),('27','6174410','Tuscaloosa','Alabama',26,'234'),('270','5706660','Picayune','Mississippi',2,'954'),('271','5721500','Picayune','Mississippi',44,'954'),('274','5838110','Picayune','Mississippi',16,'954'),('275','5913620','Picayune','Mississippi',17,'954'),('276','5925220','Picayune','Mississippi',1,'954'),('277','5985620','Picayune','Mississippi',30,'954'),('278','6009900','Picayune','Mississippi',25,'954'),('279','6009900','Picayune','Mississippi',3,'954'),('28','6203570','Tuscaloosa','Alabama',33,'234'),('280','6009900','Picayune','Mississippi',28,'954'),('281','6009900','Picayune','Mississippi',16,'954'),('282','6009900','Picayune','Mississippi',3,'954'),('283','6009920','Picayune','Mississippi',2,'954'),('284','6009940','Picayune','Mississippi',7,'954'),('285','6009950','Picayune','Mississippi',24,'954'),('286','6009950','Picayune','Mississippi',42,'954'),('287','6009950','Picayune','Mississippi',38,'954'),('288','6009950','Picayune','Mississippi',3,'954'),('289','6009960','Picayune','Mississippi',29,'954'),('29','6211540','Tuscaloosa','Alabama',11,'234'),('290','6084400','Picayune','Mississippi',44,'954'),('291','6174410','Picayune','Mississippi',16,'954'),('292','6203570','Picayune','Mississippi',26,'954'),('293','6211540','Picayune','Mississippi',22,'954'),('294','6257140','Picayune','Mississippi',45,'954'),('295','6265160','Picayune','Mississippi',11,'954'),('296','6285960','Picayune','Mississippi',24,'954'),('297','6289820','Picayune','Mississippi',7,'954'),('298','6291170','Picayune','Mississippi',13,'954'),('299','6307950','Picayune','Mississippi',21,'954'),('3','4661200','Tuscaloosa','Alabama',23,'234'),('30','6257140','Tuscaloosa','Alabama',19,'234'),('300','6320790','Picayune','Mississippi',3,'954'),('301','6323240','Picayune','Mississippi',38,'954'),('302','6328350','Picayune','Mississippi',4,'954'),('303','6336450','Picayune','Mississippi',25,'954'),('304','6349970','Picayune','Mississippi',5,'954'),('305','6355730','Picayune','Mississippi',20,'954'),('306','6356880','Picayune','Mississippi',2,'954'),('307','6357660','Picayune','Mississippi',36,'954'),('308','6364250','Picayune','Mississippi',11,'954'),('309','6367440','Picayune','Mississippi',7,'954'),('31','6265160','Tuscaloosa','Alabama',4,'234'),('310','6368980','Picayune','Mississippi',31,'954'),('311','6373460','Picayune','Mississippi',23,'954'),('312','6374980','Picayune','Mississippi',22,'954'),('313','6375620','Picayune','Mississippi',13,'954'),('314','6397760','Picayune','Mississippi',21,'954'),('315','6401730','Picayune','Mississippi',26,'954'),('316','6401940','Picayune','Mississippi',24,'954'),('317','6407080','Picayune','Mississippi',11,'954'),('318','6407590','Picayune','Mississippi',2,'954'),('319','6408480','Picayune','Mississippi',35,'954'),('32','6285960','Tuscaloosa','Alabama',49,'234'),('320','6412980','Picayune','Mississippi',7,'954'),('321','6414110','Picayune','Mississippi',44,'954'),('322','6417770','Picayune','Mississippi',17,'954'),('323','6417770','Picayune','Mississippi',41,'954'),('324','6420080','Picayune','Mississippi',4,'954'),('325','6420810','Picayune','Mississippi',50,'954'),('326','6420880','Picayune','Mississippi',10,'954'),('327','6422340','Picayune','Mississippi',23,'954'),('328','6425820','Picayune','Mississippi',18,'954'),('329','6426150','Picayune','Mississippi',48,'954'),('33','6289820','Tuscaloosa','Alabama',35,'234'),('330','6426170','Picayune','Mississippi',28,'954'),('331','6427860','Picayune','Mississippi',47,'954'),('332','6428320','Picayune','Mississippi',22,'954'),('333','6430160','Picayune','Mississippi',41,'954'),('334','6430160','Picayune','Mississippi',20,'954'),('335','6430160','Picayune','Mississippi',35,'954'),('336','6430170','Picayune','Mississippi',15,'954'),('337','6430170','Picayune','Mississippi',43,'954'),('338','6430280','Picayune','Mississippi',6,'954'),('339','6430660','Picayune','Mississippi',19,'954'),('34','6291170','Tuscaloosa','Alabama',36,'234'),('340','6430660','Picayune','Mississippi',5,'954'),('341','6432260','Picayune','Mississippi',14,'954'),('342','6437730','Picayune','Mississippi',49,'954'),('343','6439440','Picayune','Mississippi',17,'954'),('344','6441100','Picayune','Mississippi',6,'954'),('345','6441100','Picayune','Mississippi',45,'954'),('346','6447150','Picayune','Mississippi',31,'954'),('347','6447770','Picayune','Mississippi',18,'954'),('348','6450480','Picayune','Mississippi',47,'954'),('349','6451490','Picayune','Mississippi',38,'954'),('35','6307950','Tuscaloosa','Alabama',10,'234'),('350','6452210','Picayune','Mississippi',11,'954'),('351','6454190','Picayune','Mississippi',18,'954'),('352','7263260','Picayune','Mississippi',46,'954'),('353','1073100','Hollywood','California',13,'738'),('354','3805000','Hollywood','California',26,'738'),('355','4661200','Hollywood','California',33,'738'),('356','5526130','Hollywood','California',16,'738'),('357','5580240','Hollywood','California',28,'738'),('358','5706660','Hollywood','California',26,'738'),('359','5721500','Hollywood','California',50,'738'),('36','6320790','Tuscaloosa','Alabama',28,'234'),('362','5838110','Hollywood','California',49,'738'),('363','5913620','Hollywood','California',30,'738'),('364','5925220','Hollywood','California',38,'738'),('365','5985620','Hollywood','California',29,'738'),('366','6009900','Hollywood','California',4,'738'),('367','6009900','Hollywood','California',3,'738'),('368','6009900','Hollywood','California',36,'738'),('369','6009900','Hollywood','California',15,'738'),('37','6323240','Tuscaloosa','Alabama',22,'234'),('370','6009900','Hollywood','California',48,'738'),('371','6009920','Hollywood','California',3,'738'),('372','6009940','Hollywood','California',24,'738'),('373','6009950','Hollywood','California',49,'738'),('374','6009950','Hollywood','California',23,'738'),('375','6009950','Hollywood','California',34,'738'),('376','6009950','Hollywood','California',12,'738'),('377','6009960','Hollywood','California',24,'738'),('378','6084400','Hollywood','California',7,'738'),('379','6174410','Hollywood','California',23,'738'),('38','6328350','Tuscaloosa','Alabama',32,'234'),('380','6203570','Hollywood','California',40,'738'),('381','6211540','Hollywood','California',42,'738'),('382','6257140','Hollywood','California',31,'738'),('383','6265160','Hollywood','California',49,'738'),('384','6285960','Hollywood','California',13,'738'),('385','6289820','Hollywood','California',31,'738'),('386','6291170','Hollywood','California',20,'738'),('387','6307950','Hollywood','California',12,'738'),('388','6320790','Hollywood','California',43,'738'),('389','6323240','Hollywood','California',6,'738'),('39','6336450','Tuscaloosa','Alabama',49,'234'),('390','6328350','Hollywood','California',40,'738'),('391','6336450','Hollywood','California',29,'738'),('392','6349970','Hollywood','California',38,'738'),('393','6355730','Hollywood','California',4,'738'),('394','6356880','Hollywood','California',38,'738'),('395','6357660','Hollywood','California',43,'738'),('396','6364250','Hollywood','California',21,'738'),('397','6367440','Hollywood','California',12,'738'),('398','6368980','Hollywood','California',26,'738'),('399','6373460','Hollywood','California',36,'738'),('4','5526130','Tuscaloosa','Alabama',37,'234'),('40','6349970','Tuscaloosa','Alabama',21,'234'),('400','6374980','Hollywood','California',33,'738'),('401','6375620','Hollywood','California',48,'738'),('402','6397760','Hollywood','California',38,'738'),('403','6401730','Hollywood','California',22,'738'),('404','6401940','Hollywood','California',34,'738'),('405','6407080','Hollywood','California',23,'738'),('406','6407590','Hollywood','California',35,'738'),('407','6408480','Hollywood','California',45,'738'),('408','6412980','Hollywood','California',27,'738'),('409','6414110','Hollywood','California',49,'738'),('41','6355730','Tuscaloosa','Alabama',50,'234'),('410','6417770','Hollywood','California',5,'738'),('411','6417770','Hollywood','California',15,'738'),('412','6420080','Hollywood','California',11,'738'),('413','6420810','Hollywood','California',21,'738'),('414','6420880','Hollywood','California',2,'738'),('415','6422340','Hollywood','California',22,'738'),('416','6425820','Hollywood','California',22,'738'),('417','6426150','Hollywood','California',38,'738'),('418','6426170','Hollywood','California',31,'738'),('419','6427860','Hollywood','California',32,'738'),('42','6356880','Tuscaloosa','Alabama',38,'234'),('420','6428320','Hollywood','California',26,'738'),('421','6430160','Hollywood','California',35,'738'),('422','6430160','Hollywood','California',38,'738'),('423','6430160','Hollywood','California',31,'738'),('424','6430170','Hollywood','California',31,'738'),('425','6430170','Hollywood','California',43,'738'),('426','6430280','Hollywood','California',16,'738'),('427','6430660','Hollywood','California',31,'738'),('428','6430660','Hollywood','California',5,'738'),('429','6432260','Hollywood','California',43,'738'),('43','6357660','Tuscaloosa','Alabama',31,'234'),('430','6437730','Hollywood','California',36,'738'),('431','6439440','Hollywood','California',30,'738'),('432','6441100','Hollywood','California',50,'738'),('433','6441100','Hollywood','California',29,'738'),('434','6447150','Hollywood','California',46,'738'),('435','6447770','Hollywood','California',35,'738'),('436','6450480','Hollywood','California',19,'738'),('437','6451490','Hollywood','California',35,'738'),('438','6452210','Hollywood','California',12,'738'),('439','6454190','Hollywood','California',9,'738'),('44','6364250','Tuscaloosa','Alabama',45,'234'),('440','7263260','Hollywood','California',3,'738'),('441','1073100','Los Angelos','California',38,'356'),('442','3805000','Los Angelos','California',10,'356'),('443','4661200','Los Angelos','California',39,'356'),('444','5526130','Los Angelos','California',29,'356'),('445','5580240','Los Angelos','California',32,'356'),('446','5706660','Los Angelos','California',26,'356'),('447','5721500','Los Angelos','California',3,'356'),('45','6367440','Tuscaloosa','Alabama',40,'234'),('450','5838110','Los Angelos','California',2,'356'),('451','5913620','Los Angelos','California',25,'356'),('452','5925220','Los Angelos','California',10,'356'),('453','5985620','Los Angelos','California',9,'356'),('454','6009900','Los Angelos','California',9,'356'),('455','6009900','Los Angelos','California',18,'356'),('456','6009900','Los Angelos','California',24,'356'),('457','6009900','Los Angelos','California',25,'356'),('458','6009900','Los Angelos','California',11,'356'),('459','6009920','Los Angelos','California',45,'356'),('46','6368980','Tuscaloosa','Alabama',31,'234'),('460','6009940','Los Angelos','California',1,'356'),('461','6009950','Los Angelos','California',2,'356'),('462','6009950','Los Angelos','California',47,'356'),('463','6009950','Los Angelos','California',17,'356'),('464','6009950','Los Angelos','California',17,'356'),('465','6009960','Los Angelos','California',26,'356'),('466','6084400','Los Angelos','California',1,'356'),('467','6174410','Los Angelos','California',14,'356'),('468','6203570','Los Angelos','California',50,'356'),('469','6211540','Los Angelos','California',4,'356'),('47','6373460','Tuscaloosa','Alabama',8,'234'),('470','6257140','Los Angelos','California',3,'356'),('471','6265160','Los Angelos','California',7,'356'),('472','6285960','Los Angelos','California',16,'356'),('473','6289820','Los Angelos','California',30,'356'),('474','6291170','Los Angelos','California',30,'356'),('475','6307950','Los Angelos','California',20,'356'),('476','6320790','Los Angelos','California',48,'356'),('477','6323240','Los Angelos','California',19,'356'),('478','6328350','Los Angelos','California',35,'356'),('479','6336450','Los Angelos','California',25,'356'),('48','6374980','Tuscaloosa','Alabama',50,'234'),('480','6349970','Los Angelos','California',17,'356'),('481','6355730','Los Angelos','California',8,'356'),('482','6356880','Los Angelos','California',19,'356'),('483','6357660','Los Angelos','California',32,'356'),('484','6364250','Los Angelos','California',27,'356'),('485','6367440','Los Angelos','California',42,'356'),('486','6368980','Los Angelos','California',47,'356'),('487','6373460','Los Angelos','California',33,'356'),('488','6374980','Los Angelos','California',19,'356'),('489','6375620','Los Angelos','California',11,'356'),('49','6375620','Tuscaloosa','Alabama',1,'234'),('490','6397760','Los Angelos','California',23,'356'),('491','6401730','Los Angelos','California',1,'356'),('492','6401940','Los Angelos','California',35,'356'),('493','6407080','Los Angelos','California',30,'356'),('494','6407590','Los Angelos','California',11,'356'),('495','6408480','Los Angelos','California',5,'356'),('496','6412980','Los Angelos','California',19,'356'),('497','6414110','Los Angelos','California',10,'356'),('498','6417770','Los Angelos','California',5,'356'),('499','6417770','Los Angelos','California',15,'356'),('5','5580240','Tuscaloosa','Alabama',29,'234'),('50','6397760','Tuscaloosa','Alabama',2,'234'),('500','6420080','Los Angelos','California',10,'356'),('501','6420810','Los Angelos','California',8,'356'),('502','6420880','Los Angelos','California',7,'356'),('503','6422340','Los Angelos','California',15,'356'),('504','6425820','Los Angelos','California',30,'356'),('505','6426150','Los Angelos','California',17,'356'),('506','6426170','Los Angelos','California',21,'356'),('507','6427860','Los Angelos','California',15,'356'),('508','6428320','Los Angelos','California',35,'356'),('509','6430160','Los Angelos','California',30,'356'),('51','6401730','Tuscaloosa','Alabama',22,'234'),('510','6430160','Los Angelos','California',29,'356'),('511','6430160','Los Angelos','California',19,'356'),('512','6430170','Los Angelos','California',7,'356'),('513','6430170','Los Angelos','California',16,'356'),('514','6430280','Los Angelos','California',29,'356'),('515','6430660','Los Angelos','California',23,'356'),('516','6430660','Los Angelos','California',33,'356'),('517','6432260','Los Angelos','California',47,'356'),('518','6437730','Los Angelos','California',48,'356'),('519','6439440','Los Angelos','California',20,'356'),('52','6401940','Tuscaloosa','Alabama',10,'234'),('520','6441100','Los Angelos','California',20,'356'),('521','6441100','Los Angelos','California',28,'356'),('522','6447150','Los Angelos','California',47,'356'),('523','6447770','Los Angelos','California',41,'356'),('524','6450480','Los Angelos','California',27,'356'),('525','6451490','Los Angelos','California',24,'356'),('526','6452210','Los Angelos','California',11,'356'),('527','6454190','Los Angelos','California',21,'356'),('528','7263260','Los Angelos','California',33,'356'),('529','1073100','Miami','Florida',50,'856'),('53','6407080','Tuscaloosa','Alabama',28,'234'),('530','3805000','Miami','Florida',31,'856'),('531','4661200','Miami','Florida',26,'856'),('532','5526130','Miami','Florida',19,'856'),('533','5580240','Miami','Florida',1,'856'),('534','5706660','Miami','Florida',13,'856'),('535','5721500','Miami','Florida',44,'856'),('538','5838110','Miami','Florida',47,'856'),('539','5913620','Miami','Florida',11,'856'),('54','6407590','Tuscaloosa','Alabama',28,'234'),('540','5925220','Miami','Florida',12,'856'),('541','5985620','Miami','Florida',42,'856'),('542','6009900','Miami','Florida',5,'856'),('543','6009900','Miami','Florida',13,'856'),('544','6009900','Miami','Florida',26,'856'),('545','6009900','Miami','Florida',26,'856'),('546','6009900','Miami','Florida',13,'856'),('547','6009920','Miami','Florida',48,'856'),('548','6009940','Miami','Florida',6,'856'),('549','6009950','Miami','Florida',4,'856'),('55','6408480','Tuscaloosa','Alabama',23,'234'),('550','6009950','Miami','Florida',21,'856'),('551','6009950','Miami','Florida',40,'856'),('552','6009950','Miami','Florida',23,'856'),('553','6009960','Miami','Florida',34,'856'),('554','6084400','Miami','Florida',12,'856'),('555','6174410','Miami','Florida',20,'856'),('556','6203570','Miami','Florida',15,'856'),('557','6211540','Miami','Florida',33,'856'),('558','6257140','Miami','Florida',47,'856'),('559','6265160','Miami','Florida',36,'856'),('56','6412980','Tuscaloosa','Alabama',33,'234'),('560','6285960','Miami','Florida',13,'856'),('561','6289820','Miami','Florida',18,'856'),('562','6291170','Miami','Florida',23,'856'),('563','6307950','Miami','Florida',17,'856'),('564','6320790','Miami','Florida',9,'856'),('565','6323240','Miami','Florida',21,'856'),('566','6328350','Miami','Florida',25,'856'),('567','6336450','Miami','Florida',26,'856'),('568','6349970','Miami','Florida',12,'856'),('569','6355730','Miami','Florida',39,'856'),('57','6414110','Tuscaloosa','Alabama',28,'234'),('570','6356880','Miami','Florida',37,'856'),('571','6357660','Miami','Florida',35,'856'),('572','6364250','Miami','Florida',50,'856'),('573','6367440','Miami','Florida',33,'856'),('574','6368980','Miami','Florida',26,'856'),('575','6373460','Miami','Florida',36,'856'),('576','6374980','Miami','Florida',32,'856'),('577','6375620','Miami','Florida',49,'856'),('578','6397760','Miami','Florida',17,'856'),('579','6401730','Miami','Florida',23,'856'),('58','6417770','Tuscaloosa','Alabama',26,'234'),('580','6401940','Miami','Florida',35,'856'),('581','6407080','Miami','Florida',42,'856'),('582','6407590','Miami','Florida',16,'856'),('583','6408480','Miami','Florida',46,'856'),('584','6412980','Miami','Florida',45,'856'),('585','6414110','Miami','Florida',41,'856'),('586','6417770','Miami','Florida',29,'856'),('587','6417770','Miami','Florida',25,'856'),('588','6420080','Miami','Florida',34,'856'),('589','6420810','Miami','Florida',11,'856'),('59','6417770','Tuscaloosa','Alabama',11,'234'),('590','6420880','Miami','Florida',47,'856'),('591','6422340','Miami','Florida',48,'856'),('592','6425820','Miami','Florida',12,'856'),('593','6426150','Miami','Florida',32,'856'),('594','6426170','Miami','Florida',7,'856'),('595','6427860','Miami','Florida',29,'856'),('596','6428320','Miami','Florida',49,'856'),('597','6430160','Miami','Florida',13,'856'),('598','6430160','Miami','Florida',22,'856'),('599','6430160','Miami','Florida',23,'856'),('6','5706660','Tuscaloosa','Alabama',18,'234'),('60','6420080','Tuscaloosa','Alabama',15,'234'),('600','6430170','Miami','Florida',9,'856'),('601','6430170','Miami','Florida',20,'856'),('602','6430280','Miami','Florida',5,'856'),('603','6430660','Miami','Florida',41,'856'),('604','6430660','Miami','Florida',17,'856'),('605','6432260','Miami','Florida',24,'856'),('606','6437730','Miami','Florida',15,'856'),('607','6439440','Miami','Florida',50,'856'),('608','6441100','Miami','Florida',1,'856'),('609','6441100','Miami','Florida',38,'856'),('61','6420810','Tuscaloosa','Alabama',42,'234'),('610','6447150','Miami','Florida',11,'856'),('611','6447770','Miami','Florida',25,'856'),('612','6450480','Miami','Florida',42,'856'),('613','6451490','Miami','Florida',31,'856'),('614','6452210','Miami','Florida',50,'856'),('615','6454190','Miami','Florida',35,'856'),('616','7263260','Miami','Florida',27,'856'),('617','1073100','Mobile','Alabama',12,'456'),('618','3805000','Mobile','Alabama',21,'456'),('619','4661200','Mobile','Alabama',17,'456'),('62','6420880','Tuscaloosa','Alabama',50,'234'),('620','5526130','Mobile','Alabama',41,'456'),('621','5580240','Mobile','Alabama',18,'456'),('622','5706660','Mobile','Alabama',42,'456'),('623','5721500','Mobile','Alabama',7,'456'),('626','5838110','Mobile','Alabama',24,'456'),('627','5913620','Mobile','Alabama',20,'456'),('628','5925220','Mobile','Alabama',10,'456'),('629','5985620','Mobile','Alabama',26,'456'),('63','6422340','Tuscaloosa','Alabama',2,'234'),('630','6009900','Mobile','Alabama',13,'456'),('631','6009900','Mobile','Alabama',34,'456'),('632','6009900','Mobile','Alabama',48,'456'),('633','6009900','Mobile','Alabama',14,'456'),('634','6009900','Mobile','Alabama',34,'456'),('635','6009920','Mobile','Alabama',24,'456'),('636','6009940','Mobile','Alabama',18,'456'),('637','6009950','Mobile','Alabama',17,'456'),('638','6009950','Mobile','Alabama',2,'456'),('639','6009950','Mobile','Alabama',21,'456'),('64','6425820','Tuscaloosa','Alabama',42,'234'),('640','6009950','Mobile','Alabama',25,'456'),('641','6009960','Mobile','Alabama',32,'456'),('642','6084400','Mobile','Alabama',24,'456'),('643','6174410','Mobile','Alabama',2,'456'),('644','6203570','Mobile','Alabama',32,'456'),('645','6211540','Mobile','Alabama',14,'456'),('646','6257140','Mobile','Alabama',7,'456'),('647','6265160','Mobile','Alabama',4,'456'),('648','6285960','Mobile','Alabama',26,'456'),('649','6289820','Mobile','Alabama',48,'456'),('65','6426150','Tuscaloosa','Alabama',21,'234'),('650','6291170','Mobile','Alabama',32,'456'),('651','6307950','Mobile','Alabama',37,'456'),('652','6320790','Mobile','Alabama',35,'456'),('653','6323240','Mobile','Alabama',49,'456'),('654','6328350','Mobile','Alabama',46,'456'),('655','6336450','Mobile','Alabama',32,'456'),('656','6349970','Mobile','Alabama',23,'456'),('657','6355730','Mobile','Alabama',17,'456'),('658','6356880','Mobile','Alabama',1,'456'),('659','6357660','Mobile','Alabama',3,'456'),('66','6426170','Tuscaloosa','Alabama',42,'234'),('660','6364250','Mobile','Alabama',46,'456'),('661','6367440','Mobile','Alabama',11,'456'),('662','6368980','Mobile','Alabama',42,'456'),('663','6373460','Mobile','Alabama',33,'456'),('664','6374980','Mobile','Alabama',46,'456'),('665','6375620','Mobile','Alabama',45,'456'),('666','6397760','Mobile','Alabama',20,'456'),('667','6401730','Mobile','Alabama',43,'456'),('668','6401940','Mobile','Alabama',11,'456'),('669','6407080','Mobile','Alabama',34,'456'),('67','6427860','Tuscaloosa','Alabama',9,'234'),('670','6407590','Mobile','Alabama',11,'456'),('671','6408480','Mobile','Alabama',37,'456'),('672','6412980','Mobile','Alabama',24,'456'),('673','6414110','Mobile','Alabama',13,'456'),('674','6417770','Mobile','Alabama',36,'456'),('675','6417770','Mobile','Alabama',29,'456'),('676','6420080','Mobile','Alabama',25,'456'),('677','6420810','Mobile','Alabama',18,'456'),('678','6420880','Mobile','Alabama',8,'456'),('679','6422340','Mobile','Alabama',19,'456'),('68','6428320','Tuscaloosa','Alabama',9,'234'),('680','6425820','Mobile','Alabama',20,'456'),('681','6426150','Mobile','Alabama',34,'456'),('682','6426170','Mobile','Alabama',34,'456'),('683','6427860','Mobile','Alabama',46,'456'),('684','6428320','Mobile','Alabama',10,'456'),('685','6430160','Mobile','Alabama',47,'456'),('686','6430160','Mobile','Alabama',15,'456'),('687','6430160','Mobile','Alabama',47,'456'),('688','6430170','Mobile','Alabama',30,'456'),('689','6430170','Mobile','Alabama',30,'456'),('69','6430160','Tuscaloosa','Alabama',1,'234'),('690','6430280','Mobile','Alabama',22,'456'),('691','6430660','Mobile','Alabama',20,'456'),('692','6430660','Mobile','Alabama',25,'456'),('693','6432260','Mobile','Alabama',6,'456'),('694','6437730','Mobile','Alabama',12,'456'),('695','6439440','Mobile','Alabama',14,'456'),('696','6441100','Mobile','Alabama',12,'456'),('697','6441100','Mobile','Alabama',30,'456'),('698','6447150','Mobile','Alabama',43,'456'),('699','6447770','Mobile','Alabama',12,'456'),('7','5721500','Tuscaloosa','Alabama',41,'234'),('70','6430160','Tuscaloosa','Alabama',14,'234'),('700','6450480','Mobile','Alabama',5,'456'),('701','6451490','Mobile','Alabama',44,'456'),('702','6452210','Mobile','Alabama',25,'456'),('703','6454190','Mobile','Alabama',26,'456'),('704','7263260','Mobile','Alabama',41,'456'),('705','1073100','Nashville','Tennessee',14,'242'),('706','3805000','Nashville','Tennessee',28,'242'),('707','4661200','Nashville','Tennessee',25,'242'),('708','5526130','Nashville','Tennessee',36,'242'),('709','5580240','Nashville','Tennessee',38,'242'),('71','6430160','Tuscaloosa','Alabama',37,'234'),('710','5706660','Nashville','Tennessee',40,'242'),('711','5721500','Nashville','Tennessee',22,'242'),('714','5838110','Nashville','Tennessee',6,'242'),('715','5913620','Nashville','Tennessee',39,'242'),('716','5925220','Nashville','Tennessee',17,'242'),('717','5985620','Nashville','Tennessee',19,'242'),('718','6009900','Nashville','Tennessee',15,'242'),('719','6009900','Nashville','Tennessee',20,'242'),('72','6430170','Tuscaloosa','Alabama',30,'234'),('720','6009900','Nashville','Tennessee',2,'242'),('721','6009900','Nashville','Tennessee',4,'242'),('722','6009900','Nashville','Tennessee',40,'242'),('723','6009920','Nashville','Tennessee',12,'242'),('724','6009940','Nashville','Tennessee',10,'242'),('725','6009950','Nashville','Tennessee',37,'242'),('726','6009950','Nashville','Tennessee',20,'242'),('727','6009950','Nashville','Tennessee',6,'242'),('728','6009950','Nashville','Tennessee',50,'242'),('729','6009960','Nashville','Tennessee',40,'242'),('73','6430170','Tuscaloosa','Alabama',18,'234'),('730','6084400','Nashville','Tennessee',40,'242'),('731','6174410','Nashville','Tennessee',47,'242'),('732','6203570','Nashville','Tennessee',39,'242'),('733','6211540','Nashville','Tennessee',34,'242'),('734','6257140','Nashville','Tennessee',49,'242'),('735','6265160','Nashville','Tennessee',28,'242'),('736','6285960','Nashville','Tennessee',49,'242'),('737','6289820','Nashville','Tennessee',1,'242'),('738','6291170','Nashville','Tennessee',24,'242'),('739','6307950','Nashville','Tennessee',21,'242'),('74','6430280','Tuscaloosa','Alabama',19,'234'),('740','6320790','Nashville','Tennessee',1,'242'),('741','6323240','Nashville','Tennessee',34,'242'),('742','6328350','Nashville','Tennessee',42,'242'),('743','6336450','Nashville','Tennessee',5,'242'),('744','6349970','Nashville','Tennessee',9,'242'),('745','6355730','Nashville','Tennessee',34,'242'),('746','6356880','Nashville','Tennessee',10,'242'),('747','6357660','Nashville','Tennessee',14,'242'),('748','6364250','Nashville','Tennessee',33,'242'),('749','6367440','Nashville','Tennessee',10,'242'),('75','6430660','Tuscaloosa','Alabama',45,'234'),('750','6368980','Nashville','Tennessee',47,'242'),('751','6373460','Nashville','Tennessee',6,'242'),('752','6374980','Nashville','Tennessee',38,'242'),('753','6375620','Nashville','Tennessee',44,'242'),('754','6397760','Nashville','Tennessee',1,'242'),('755','6401730','Nashville','Tennessee',33,'242'),('756','6401940','Nashville','Tennessee',30,'242'),('757','6407080','Nashville','Tennessee',2,'242'),('758','6407590','Nashville','Tennessee',44,'242'),('759','6408480','Nashville','Tennessee',25,'242'),('76','6430660','Tuscaloosa','Alabama',35,'234'),('760','6412980','Nashville','Tennessee',37,'242'),('761','6414110','Nashville','Tennessee',41,'242'),('762','6417770','Nashville','Tennessee',25,'242'),('763','6417770','Nashville','Tennessee',47,'242'),('764','6420080','Nashville','Tennessee',46,'242'),('765','6420810','Nashville','Tennessee',2,'242'),('766','6420880','Nashville','Tennessee',43,'242'),('767','6422340','Nashville','Tennessee',28,'242'),('768','6425820','Nashville','Tennessee',50,'242'),('769','6426150','Nashville','Tennessee',10,'242'),('77','6432260','Tuscaloosa','Alabama',17,'234'),('770','6426170','Nashville','Tennessee',34,'242'),('771','6427860','Nashville','Tennessee',1,'242'),('772','6428320','Nashville','Tennessee',12,'242'),('773','6430160','Nashville','Tennessee',4,'242'),('774','6430160','Nashville','Tennessee',13,'242'),('775','6430160','Nashville','Tennessee',5,'242'),('776','6430170','Nashville','Tennessee',23,'242'),('777','6430170','Nashville','Tennessee',36,'242'),('778','6430280','Nashville','Tennessee',39,'242'),('779','6430660','Nashville','Tennessee',12,'242'),('78','6437730','Tuscaloosa','Alabama',12,'234'),('780','6430660','Nashville','Tennessee',30,'242'),('781','6432260','Nashville','Tennessee',16,'242'),('782','6437730','Nashville','Tennessee',4,'242'),('783','6439440','Nashville','Tennessee',41,'242'),('784','6441100','Nashville','Tennessee',11,'242'),('785','6441100','Nashville','Tennessee',29,'242'),('786','6447150','Nashville','Tennessee',7,'242'),('787','6447770','Nashville','Tennessee',33,'242'),('788','6450480','Nashville','Tennessee',39,'242'),('789','6451490','Nashville','Tennessee',45,'242'),('79','6439440','Tuscaloosa','Alabama',18,'234'),('790','6452210','Nashville','Tennessee',38,'242'),('791','6454190','Nashville','Tennessee',46,'242'),('792','7263260','Nashville','Tennessee',46,'242'),('793','1073100','Orlando','Florida',23,'654'),('794','3805000','Orlando','Florida',28,'654'),('795','4661200','Orlando','Florida',46,'654'),('796','5526130','Orlando','Florida',21,'654'),('797','5580240','Orlando','Florida',16,'654'),('798','5706660','Orlando','Florida',45,'654'),('799','5721500','Orlando','Florida',25,'654'),('80','6441100','Tuscaloosa','Alabama',39,'234'),('802','5838110','Orlando','Florida',20,'654'),('803','5913620','Orlando','Florida',43,'654'),('804','5925220','Orlando','Florida',34,'654'),('805','5985620','Orlando','Florida',7,'654'),('806','6009900','Orlando','Florida',29,'654'),('807','6009900','Orlando','Florida',2,'654'),('808','6009900','Orlando','Florida',17,'654'),('809','6009900','Orlando','Florida',3,'654'),('81','6441100','Tuscaloosa','Alabama',3,'234'),('810','6009900','Orlando','Florida',48,'654'),('811','6009920','Orlando','Florida',12,'654'),('812','6009940','Orlando','Florida',19,'654'),('813','6009950','Orlando','Florida',45,'654'),('814','6009950','Orlando','Florida',38,'654'),('815','6009950','Orlando','Florida',13,'654'),('816','6009950','Orlando','Florida',36,'654'),('817','6009960','Orlando','Florida',20,'654'),('818','6084400','Orlando','Florida',49,'654'),('819','6174410','Orlando','Florida',28,'654'),('82','6447150','Tuscaloosa','Alabama',17,'234'),('820','6203570','Orlando','Florida',36,'654'),('821','6211540','Orlando','Florida',29,'654'),('822','6257140','Orlando','Florida',37,'654'),('823','6265160','Orlando','Florida',44,'654'),('824','6285960','Orlando','Florida',17,'654'),('825','6289820','Orlando','Florida',24,'654'),('826','6291170','Orlando','Florida',16,'654'),('827','6307950','Orlando','Florida',2,'654'),('828','6320790','Orlando','Florida',45,'654'),('829','6323240','Orlando','Florida',11,'654'),('83','6447770','Tuscaloosa','Alabama',11,'234'),('830','6328350','Orlando','Florida',15,'654'),('831','6336450','Orlando','Florida',17,'654'),('832','6349970','Orlando','Florida',34,'654'),('833','6355730','Orlando','Florida',30,'654'),('834','6356880','Orlando','Florida',13,'654'),('835','6357660','Orlando','Florida',36,'654'),('836','6364250','Orlando','Florida',19,'654'),('837','6367440','Orlando','Florida',21,'654'),('838','6368980','Orlando','Florida',18,'654'),('839','6373460','Orlando','Florida',38,'654'),('84','6450480','Tuscaloosa','Alabama',29,'234'),('840','6374980','Orlando','Florida',36,'654'),('841','6375620','Orlando','Florida',19,'654'),('842','6397760','Orlando','Florida',32,'654'),('843','6401730','Orlando','Florida',21,'654'),('844','6401940','Orlando','Florida',10,'654'),('845','6407080','Orlando','Florida',38,'654'),('846','6407590','Orlando','Florida',35,'654'),('847','6408480','Orlando','Florida',14,'654'),('848','6412980','Orlando','Florida',33,'654'),('849','6414110','Orlando','Florida',14,'654'),('85','6451490','Tuscaloosa','Alabama',44,'234'),('850','6417770','Orlando','Florida',3,'654'),('851','6417770','Orlando','Florida',1,'654'),('852','6420080','Orlando','Florida',24,'654'),('853','6420810','Orlando','Florida',14,'654'),('854','6420880','Orlando','Florida',4,'654'),('855','6422340','Orlando','Florida',2,'654'),('856','6425820','Orlando','Florida',34,'654'),('857','6426150','Orlando','Florida',48,'654'),('858','6426170','Orlando','Florida',4,'654'),('859','6427860','Orlando','Florida',32,'654'),('86','6452210','Tuscaloosa','Alabama',28,'234'),('860','6428320','Orlando','Florida',50,'654'),('861','6430160','Orlando','Florida',22,'654'),('862','6430160','Orlando','Florida',19,'654'),('863','6430160','Orlando','Florida',22,'654'),('864','6430170','Orlando','Florida',40,'654'),('865','6430170','Orlando','Florida',2,'654'),('866','6430280','Orlando','Florida',26,'654'),('867','6430660','Orlando','Florida',6,'654'),('868','6430660','Orlando','Florida',30,'654'),('869','6432260','Orlando','Florida',2,'654'),('87','6454190','Tuscaloosa','Alabama',34,'234'),('870','6437730','Orlando','Florida',5,'654'),('871','6439440','Orlando','Florida',6,'654'),('872','6441100','Orlando','Florida',25,'654'),('873','6441100','Orlando','Florida',22,'654'),('874','6447150','Orlando','Florida',27,'654'),('875','6447770','Orlando','Florida',39,'654'),('876','6450480','Orlando','Florida',18,'654'),('877','6451490','Orlando','Florida',8,'654'),('878','6452210','Orlando','Florida',28,'654'),('879','6454190','Orlando','Florida',44,'654'),('88','7263260','Tuscaloosa','Alabama',9,'234'),('880','7263260','Orlando','Florida',36,'654'),('89','1073100','New Orleans','Lousiana',14,'967'),('90','3805000','New Orleans','Lousiana',13,'967'),('91','4661200','New Orleans','Lousiana',12,'967'),('92','5526130','New Orleans','Lousiana',48,'967'),('93','5580240','New Orleans','Lousiana',21,'967'),('94','5706660','New Orleans','Lousiana',30,'967'),('95','5721500','New Orleans','Lousiana',29,'967'),('98','5838110','New Orleans','Lousiana',14,'967'),('99','5913620','New Orleans','Lousiana',21,'967');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `supplies`
--

DROP TABLE IF EXISTS `supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplies` (
  `supplierID` varchar(10) NOT NULL,
  `branchID` varchar(10) NOT NULL,
  PRIMARY KEY (`supplierID`,`branchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplies`
--

LOCK TABLES `supplies` WRITE;
/*!40000 ALTER TABLE `supplies` DISABLE KEYS */;
INSERT INTO `supplies` VALUES ('AG-1203','234'),('AG-1203','242'),('AG-1203','356'),('AG-1203','450'),('AG-1203','456'),('AG-1203','654'),('AG-1203','738'),('AG-1203','856'),('AG-1203','954'),('AG-1203','967'),('AP-0099','234'),('AP-0099','242'),('AP-0099','356'),('AP-0099','450'),('AP-0099','456'),('AP-0099','654'),('AP-0099','738'),('AP-0099','856'),('AP-0099','954'),('AP-0099','967'),('AQ-0762','234'),('AQ-0762','242'),('AQ-0762','356'),('AQ-0762','450'),('AQ-0762','456'),('AQ-0762','654'),('AQ-0762','738'),('AQ-0762','856'),('AQ-0762','954'),('AQ-0762','967'),('BR-9371','234'),('BR-9371','242'),('BR-9371','356'),('BR-9371','450'),('BR-9371','456'),('BR-9371','654'),('BR-9371','738'),('BR-9371','856'),('BR-9371','954'),('BR-9371','967'),('CH-8351','234'),('CH-8351','242'),('CH-8351','356'),('CH-8351','450'),('CH-8351','456'),('CH-8351','654'),('CH-8351','738'),('CH-8351','856'),('CH-8351','954'),('CH-8351','967'),('DT-1321','234'),('DT-1321','242'),('DT-1321','356'),('DT-1321','450'),('DT-1321','456'),('DT-1321','654'),('DT-1321','738'),('DT-1321','856'),('DT-1321','954'),('DT-1321','967'),('GO-8858','234'),('GO-8858','242'),('GO-8858','356'),('GO-8858','450'),('GO-8858','456'),('GO-8858','654'),('GO-8858','738'),('GO-8858','856'),('GO-8858','954'),('GO-8858','967'),('HY-1271','234'),('HY-1271','242'),('HY-1271','356'),('HY-1271','450'),('HY-1271','456'),('HY-1271','654'),('HY-1271','738'),('HY-1271','856'),('HY-1271','954'),('HY-1271','967'),('IN-2587','234'),('IN-2587','242'),('IN-2587','356'),('IN-2587','450'),('IN-2587','456'),('IN-2587','654'),('IN-2587','738'),('IN-2587','856'),('IN-2587','954'),('IN-2587','967'),('KE-1486','234'),('KE-1486','242'),('KE-1486','356'),('KE-1486','450'),('KE-1486','456'),('KE-1486','654'),('KE-1486','738'),('KE-1486','856'),('KE-1486','954'),('KE-1486','967'),('KL-1260','234'),('KL-1260','242'),('KL-1260','356'),('KL-1260','450'),('KL-1260','456'),('KL-1260','654'),('KL-1260','738'),('KL-1260','856'),('KL-1260','954'),('KL-1260','967'),('KU-8486','234'),('KU-8486','242'),('KU-8486','356'),('KU-8486','450'),('KU-8486','456'),('KU-8486','654'),('KU-8486','738'),('KU-8486','856'),('KU-8486','954'),('KU-8486','967'),('LG-2998','234'),('LG-2998','242'),('LG-2998','356'),('LG-2998','450'),('LG-2998','456'),('LG-2998','654'),('LG-2998','738'),('LG-2998','856'),('LG-2998','954'),('LG-2998','967'),('LG-2999','234'),('LG-2999','242'),('LG-2999','356'),('LG-2999','450'),('LG-2999','456'),('LG-2999','654'),('LG-2999','738'),('LG-2999','856'),('LG-2999','954'),('LG-2999','967'),('LO-1710','234'),('LO-1710','242'),('LO-1710','356'),('LO-1710','450'),('LO-1710','456'),('LO-1710','654'),('LO-1710','738'),('LO-1710','856'),('LO-1710','954'),('LO-1710','967'),('MI-0226','234'),('MI-0226','242'),('MI-0226','356'),('MI-0226','450'),('MI-0226','456'),('MI-0226','654'),('MI-0226','738'),('MI-0226','856'),('MI-0226','954'),('MI-0226','967'),('NE-8609','234'),('NE-8609','242'),('NE-8609','356'),('NE-8609','450'),('NE-8609','456'),('NE-8609','654'),('NE-8609','738'),('NE-8609','856'),('NE-8609','954'),('NE-8609','967'),('NI-8888','234'),('NI-8888','242'),('NI-8888','356'),('NI-8888','450'),('NI-8888','456'),('NI-8888','654'),('NI-8888','738'),('NI-8888','856'),('NI-8888','954'),('NI-8888','967'),('NO-0213','234'),('NO-0213','242'),('NO-0213','356'),('NO-0213','450'),('NO-0213','456'),('NO-0213','654'),('NO-0213','738'),('NO-0213','856'),('NO-0213','954'),('NO-0213','967'),('NS-1034','234'),('NS-1034','242'),('NS-1034','356'),('NS-1034','450'),('NS-1034','456'),('NS-1034','654'),('NS-1034','738'),('NS-1034','856'),('NS-1034','954'),('NS-1034','967'),('PA-4732','234'),('PA-4732','242'),('PA-4732','356'),('PA-4732','450'),('PA-4732','456'),('PA-4732','654'),('PA-4732','738'),('PA-4732','856'),('PA-4732','954'),('PA-4732','967'),('RU-0879','234'),('RU-0879','242'),('RU-0879','356'),('RU-0879','450'),('RU-0879','456'),('RU-0879','654'),('RU-0879','738'),('RU-0879','856'),('RU-0879','954'),('RU-0879','967'),('SA-2390','234'),('SA-2390','242'),('SA-2390','356'),('SA-2390','450'),('SA-2390','456'),('SA-2390','654'),('SA-2390','738'),('SA-2390','856'),('SA-2390','954'),('SA-2390','967'),('SA-2391','234'),('SA-2391','242'),('SA-2391','356'),('SA-2391','450'),('SA-2391','456'),('SA-2391','654'),('SA-2391','738'),('SA-2391','856'),('SA-2391','954'),('SA-2391','967'),('SE-1954','234'),('SE-1954','242'),('SE-1954','356'),('SE-1954','450'),('SE-1954','456'),('SE-1954','654'),('SE-1954','738'),('SE-1954','856'),('SE-1954','954'),('SE-1954','967'),('SG-0784','234'),('SG-0784','242'),('SG-0784','356'),('SG-0784','450'),('SG-0784','456'),('SG-0784','654'),('SG-0784','738'),('SG-0784','856'),('SG-0784','954'),('SG-0784','967'),('SH-1910','234'),('SH-1910','242'),('SH-1910','356'),('SH-1910','450'),('SH-1910','456'),('SH-1910','654'),('SH-1910','738'),('SH-1910','856'),('SH-1910','954'),('SH-1910','967'),('SN-1902','234'),('SN-1902','242'),('SN-1902','356'),('SN-1902','450'),('SN-1902','456'),('SN-1902','654'),('SN-1902','738'),('SN-1902','856'),('SN-1902','954'),('SN-1902','967'),('SO-2911','234'),('SO-2911','242'),('SO-2911','356'),('SO-2911','450'),('SO-2911','456'),('SO-2911','654'),('SO-2911','738'),('SO-2911','856'),('SO-2911','954'),('SO-2911','967'),('SS-0312','234'),('SS-0312','242'),('SS-0312','356'),('SS-0312','450'),('SS-0312','456'),('SS-0312','654'),('SS-0312','738'),('SS-0312','856'),('SS-0312','954'),('SS-0312','967'),('ST-1933','234'),('ST-1933','242'),('ST-1933','356'),('ST-1933','450'),('ST-1933','456'),('ST-1933','654'),('ST-1933','738'),('ST-1933','856'),('ST-1933','954'),('ST-1933','967'),('TB-0923','234'),('TB-0923','242'),('TB-0923','356'),('TB-0923','450'),('TB-0923','456'),('TB-0923','654'),('TB-0923','738'),('TB-0923','856'),('TB-0923','954'),('TB-0923','967'),('TC-2165','234'),('TC-2165','242'),('TC-2165','356'),('TC-2165','450'),('TC-2165','456'),('TC-2165','654'),('TC-2165','738'),('TC-2165','856'),('TC-2165','954'),('TC-2165','967'),('TO-2128','234'),('TO-2128','356'),('TO-2128','450'),('TO-2128','456'),('TO-2128','654'),('TO-2128','738'),('TO-2128','856'),('TO-2128','954'),('TO-2128','967'),('VI- 2143','234'),('VI- 2143','356'),('VI- 2143','450'),('VI- 2143','456'),('VI- 2143','654'),('VI- 2143','738'),('VI- 2143','856'),('VI- 2143','954'),('VI- 2143','967'),('VM-1374','234'),('VM-1374','356'),('VM-1374','450'),('VM-1374','456'),('VM-1374','654'),('VM-1374','738'),('VM-1374','856'),('VM-1374','954'),('VM-1374','967'),('WD-1786','234'),('WD-1786','356'),('WD-1786','450'),('WD-1786','456'),('WD-1786','654'),('WD-1786','738'),('WD-1786','856'),('WD-1786','954'),('WD-1786','967'),('WE-2864','234'),('WE-2864','356'),('WE-2864','450'),('WE-2864','456'),('WE-2864','654'),('WE-2864','738'),('WE-2864','856'),('WE-2864','954'),('WE-2864','967'),('WH-8657','234'),('WH-8657','356'),('WH-8657','450'),('WH-8657','456'),('WH-8657','654'),('WH-8657','738'),('WH-8657','856'),('WH-8657','954'),('WH-8657','967'),('XO-0943','234'),('XO-0943','356'),('XO-0943','450'),('XO-0943','456'),('XO-0943','654'),('XO-0943','738'),('XO-0943','856'),('XO-0943','954'),('XO-0943','967');
/*!40000 ALTER TABLE `supplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bestbuy_finalproject'
--

--
-- Dumping routines for database 'bestbuy_finalproject'
--
/*!50003 DROP PROCEDURE IF EXISTS `iPadsVSiPhones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `iPadsVSiPhones`()
BEGIN
-- temp table 1
CREATE TEMPORARY TABLE tmp_table1(UPCcode varchar(45), city varchar(45), quantitySold int, branchID varchar(45));

INSERT INTO tmp_table1(UPCcode, city, quantitySold, branchID)
SELECT UPCcode, city, quantitySold,branchID FROM sales 
WHERE UPCcode = "6009960"
GROUP BY city;



-- temp table 2
CREATE TEMPORARY TABLE tmp_table2(UPCcode varchar(45), city varchar(45), quantitySold int, branchID varchar(45));

INSERT INTO tmp_table2(UPCcode, city, quantitySold,branchID)
SELECT UPCcode, city, quantitySold, branchID FROM sales 
WHERE UPCcode = "5985620"
GROUP BY city;



SELECT tmp_table1.branchID, tmp_table1.city, (tmp_table1.quantitySold - tmp_table2.quantitySold) AS more_iPhones_than_iPads 
FROM tmp_table1
LEFT JOIN tmp_table2 ON tmp_table1.city = tmp_table2.city
WHERE tmp_table1.quantitySold > tmp_table2.quantitySold
GROUP BY city;

DROP TEMPORARY TABLE tmp_table1;
DROP TEMPORARY TABLE tmp_table2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Top20EachBranch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Top20EachBranch`()
BEGIN
(SELECT UPCcode, branchID, city, state,
       SUM(quantitySold) as amount_sold,
       ROW_NUMBER() OVER (order by sum(quantitySold) desc) as rank_number
FROM sales
WHERE branchID = "234"
GROUP BY UPCcode limit 20)
UNION
(SELECT UPCcode, branchID, city, state,
       SUM(quantitySold) as amount_sold,
       ROW_NUMBER() OVER (order by sum(quantitySold) desc) as rank_number
FROM sales
WHERE branchID = "234"
GROUP BY UPCcode limit 20)
UNION
(SELECT UPCcode, branchID, city, state,
       SUM(quantitySold) as amount_sold,
       ROW_NUMBER() OVER (order by sum(quantitySold) desc) as rank_number
FROM sales
WHERE city = "450"
GROUP BY UPCcode limit 20)
UNION
(SELECT UPCcode, branchID, city, state,
       SUM(quantitySold) as amount_sold,
       ROW_NUMBER() OVER (order by sum(quantitySold) desc) as rank_number
FROM sales
WHERE branchID = "356"
GROUP BY UPCcode limit 20)
UNION
(SELECT UPCcode, branchID, city, state,
       SUM(quantitySold) as amount_sold,
       ROW_NUMBER() OVER (order by sum(quantitySold) desc) as rank_number
FROM sales
WHERE branchID = "856"
GROUP BY UPCcode limit 20)
UNION
(SELECT UPCcode, branchID, city, state,
       SUM(quantitySold) as amount_sold,
       ROW_NUMBER() OVER (order by sum(quantitySold) desc) as rank_number
FROM sales
WHERE branchID = "456"
GROUP BY UPCcode limit 20)
UNION
(SELECT UPCcode, branchID, city, state,
       SUM(quantitySold) as amount_sold,
       ROW_NUMBER() OVER (order by sum(quantitySold) desc) as rank_number
FROM sales
WHERE branchID = "242"
GROUP BY UPCcode limit 20)
UNION
(SELECT UPCcode, branchID, city, state,
       SUM(quantitySold) as amount_sold,
       ROW_NUMBER() OVER (order by sum(quantitySold) desc) as rank_number
FROM sales
WHERE branchID = "967"
GROUP BY UPCcode limit 20)
UNION
(SELECT UPCcode, branchID, city, state,
       SUM(quantitySold) as amount_sold,
       ROW_NUMBER() OVER (order by sum(quantitySold) desc) as rank_number
FROM sales
WHERE branchID = "654"
GROUP BY UPCcode limit 20)
UNION
(SELECT UPCcode, branchID, city, state,
       SUM(quantitySold) as amount_sold,
       ROW_NUMBER() OVER (order by sum(quantitySold) desc) as rank_number
FROM sales
WHERE branchID = "954"
GROUP BY UPCcode limit 20);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Top20EachState` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Top20EachState`()
BEGIN
(SELECT UPCcode, state,
       SUM(quantitySold) as total_quantity,
       ROW_NUMBER() OVER (order by sum(quantitySold) desc) as rank_number
FROM sales
WHERE state = "Alabama"
GROUP BY UPCcode limit 20)
UNION
(SELECT UPCcode, state,
       SUM(quantitySold) as total_quantity,
       ROW_NUMBER() OVER (order by sum(quantitySold) desc) as rank_number
FROM sales
WHERE state = "Lousiana"
GROUP BY UPCcode limit 20)
UNION
(SELECT UPCcode, state,
       SUM(quantitySold) as total_quantity,
       ROW_NUMBER() OVER (order by sum(quantitySold) desc) as rank_number
FROM sales
WHERE state = "Mississippi"
GROUP BY UPCcode limit 20)
UNION
(SELECT UPCcode, state,
       SUM(quantitySold) as total_quantity,
       ROW_NUMBER() OVER (order by sum(quantitySold) desc) as rank_number
FROM sales
WHERE state = "California"
GROUP BY UPCcode limit 20)
UNION
(SELECT UPCcode, state,
       SUM(quantitySold) as total_quantity,
       ROW_NUMBER() OVER (order by sum(quantitySold) desc) as rank_number
FROM sales
WHERE state = "Tennessee"
GROUP BY UPCcode limit 20)
UNION
(SELECT UPCcode, state,
       SUM(quantitySold) as total_quantity,
       ROW_NUMBER() OVER (order by sum(quantitySold) desc) as rank_number
FROM sales
WHERE state = "Florida"
GROUP BY UPCcode limit 20);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Top3BoughtWithPS5` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Top3BoughtWithPS5`()
BEGIN
-- ENSURES THE TEMPORARY TABLES ARE NOT ALREADY CREATED AND IF SO DELETES THEM
DROP TEMPORARY TABLE IF EXISTS tmp_table1;
DROP TEMPORARY TABLE IF EXISTS tmp_table2;

-- CREATES A TEMPORARY TABLE
CREATE TEMPORARY TABLE tmp_table1(CustomerID varchar(10));

-- INSERTS ALL THE CUSTOMERS WHO PURCHASED MILK INTO THE TMP_TABLE1 TABLE
INSERT INTO tmp_table1(CustomerID)
SELECT CustomerID FROM customer_sales
WHERE UPCcode = '6426150';

-- SELECT * FROM tmp_table1;

-- CREATES A TEMPORARY TABLE
CREATE TEMPORARY TABLE tmp_table2(UPCcode varchar(45));

-- INSERTS ALL THE PRODUCTS THAT CUSTOMER'S PURCHASED IN ADDITION TO MILK
INSERT INTO tmp_table2(
SELECT UPCcode
FROM customer_sales
LEFT JOIN tmp_table1 ON customer_sales.CustomerID = tmp_table1.CustomerID
WHERE customer_sales.CustomerID 
IN (tmp_table1.CustomerID)
AND UPCcode != '6426150');


-- SELECT * FROM tmp_table2;

-- OUTPUTS THE TOP 3 PRODUCTS SOLD IN ADDITION TO MILK
SELECT UPCcode  as "TOP 3 PRODUCTS SOLD IN ADDITION TO PS5" 
FROM tmp_table2
GROUP BY UPCcode
ORDER BY COUNT(*) DESC LIMIT 3;

-- DELETES THE TEMPORARY TABLES AS THEY ARE NO LONGER RELEVANT
DROP TEMPORARY TABLE tmp_table1;
DROP TEMPORARY TABLE tmp_table2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Top5Stores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Top5Stores`()
BEGIN
(SELECT city,
       SUM(totalSales) as total_quantity,
       ROW_NUMBER() OVER (order by sum(totalSales) desc) as rank_number
FROM branch
GROUP BY city limit 5);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-02 18:48:14
