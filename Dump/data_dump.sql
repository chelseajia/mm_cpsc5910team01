-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: mm_cpsc5910team01
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (1,'chemical'),(2,'toy');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Contractor`
--

LOCK TABLES `Contractor` WRITE;
/*!40000 ALTER TABLE `Contractor` DISABLE KEYS */;
INSERT INTO `Contractor` VALUES (1,'Chelsea','Jia','chaichai@chaijia.com','Expert',NULL),(2,'Darb','Bateman','dbateman1@typepad.com','Expert',NULL),(3,'Beale','Peto','bpeto2@surveymonkey.com','Expert',NULL),(4,'Sherwin','Mintram','smintram3@taobao.com','Expert',NULL),(5,'Jdavie','Volkes','jvolkes4@flavors.me','Average',15),(6,'Hamil','Zollner','hzollner5@constantcontact.com','Average',9),(7,'Felipa','Demicoli','fdemicoli6@gravatar.com','Beginner',19),(8,'Blondie','Gobell','bgobell7@clickbank.net','Expert',NULL),(9,'Orion','Dutnall','odutnall8@bandcamp.com','Expert',NULL),(10,'Editha','Stainton','estainton9@marketwatch.com','Expert',NULL),(11,'Dacey','Leahy','dleahya@youku.com','Expert',NULL),(12,'Deeyn','Rubenfeld','drubenfeldb@abc.net.au','Beginner',1),(13,'Dylan','Hansmann','dhansmannc@netscape.com','Expert',NULL),(14,'Ashlin','Halburton','ahalburtond@webeden.co.uk','Expert',2),(15,'Ivonne','Faussett','ifaussette@wisc.edu','Skilled',14),(16,'Connie','Farrears','cfarrearsf@state.gov','Beginner',18),(17,'Cordell','Huckett','chuckettg@geocities.com','Average',11),(18,'Celie','Mungham','cmunghamh@ning.com','Expert',NULL),(19,'Raul','Metzing','rmetzingi@gmpg.org','Specialist',3),(20,'Ogdon','Sanz','osanzj@shop-pro.jp','Beginner',19);
/*!40000 ALTER TABLE `Contractor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Kyra','Eddington','KyraJEddington@armyspy.com','206-702-8922',1001),(2,'Jacob','Patterson','JacobCPatterson@teleworm.us','206-796-7629',1002),(3,'Elaine','Mecham','ElaineAMecham@dayrep.com','206-343-2643',1003),(4,'Jeffrey','Gross','JeffreyMGross@teleworm.us','206-541-4619',1004),(5,'Joy ','Macon','JoyJMacon@dayrep.com','206-876-7395',1005),(6,'Walter','Cameron','WalterACameron@jourrapide.com','206-267-1846',1006),(7,'James','Shires','JamesBShires@armyspy.com','206-555-1031',1007),(8,'Jeffrey','Rodman','JefferyCRodman@dayrep.com','206-857-6698',1008),(9,'Stephanie','Campbell','StephanieJCampbell@teleworm.us','206-234-6500',1009),(10,'James ','Ceniceros','JamesNCeniceros@teleworm.us','206-771-6662',1010),(11,'Diane','King','DianeWKing@jourrapide.com','206-246-0718',1011),(12,'Bruno','Young','BrunoJYoung@teleworm.us','206-348-1114',1012);
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `FutureSchedule`
--

LOCK TABLES `FutureSchedule` WRITE;
/*!40000 ALTER TABLE `FutureSchedule` DISABLE KEYS */;
INSERT INTO `FutureSchedule` VALUES (1,'2020-02-20 13:14:39','2020-02-23 10:00:00',2,5,1,'diving board change'),(2,'2020-02-20 13:59:49','2020-02-24 10:30:00',3,6,2,'pump and filter maintenance'),(3,'2020-02-21 10:39:58','2020-02-25 10:30:00',2,17,6,'pump and filter maintenance'),(4,'2020-02-21 09:48:12','2020-02-24 13:00:00',4,19,10,'pump, filter, and heater/spa maintenance'),(5,'2020-02-21 07:58:23','2020-02-25 10:30:00',2,1,8,'pump and filter maintenance'),(6,'2020-02-21 11:49:59','2020-02-23 08:30:00',3,3,4,'pump and filter maintenance'),(7,'2020-02-23 08:38:49','2020-02-26 08:45:00',2,1,5,'pump and filter maintenance'),(8,'2020-02-23 10:32:35','2020-02-28 10:00:00',2,4,3,'pump and filter maintenance'),(9,'2020-02-24 10:49:23','2020-02-28 14:00:00',1,7,11,'heater maintenance'),(10,'2020-02-24 14:12:32','2020-03-02 11:45:00',1,12,12,'filter maintenance'),(11,'2020-02-25 12:45:23','2020-02-28 10:30:00',2,7,7,'pump and filter maintenance');
/*!40000 ALTER TABLE `FutureSchedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Location`
--

LOCK TABLES `Location` WRITE;
/*!40000 ALTER TABLE `Location` DISABLE KEYS */;
INSERT INTO `Location` VALUES (1001,'6100 Carillon Pt','Kirkland','Washington',98033),(1002,'13014 118th Pl NE','Kirkland','Washington',98033),(1003,'10116 NE 68th St','Kirkland','Washington',98033),(1004,'12023 NE 65th St','Kirkland','Washington',98033),(1005,'244 4th Ave','Kirkland','Washington',98033),(1006,'14024 NE 63rd Ct','Redmond','Washington',98052),(1007,'15010 NE 36th St','Redmond','Washington',98052),(1008,'9433 NE 146th Cir','Bothell','Washington',98011),(1009,'4 172nd Pl SW','Bothell','Washington',98011),(1010,'3203 207th Pl SE','Bothell','Washington',98011),(1011,'2200 112th Ave NE','Bellevue','Washington',98004),(1012,'252 153rd Pl SE','Bellevue','Washington',98007),(1013,'1830 146th Ave SE','Bellevue','Washington',98007),(1014,'2230 166th Ave SE','Bellevue','Washington',98008),(1015,'220 10th Ave','Kirkland','Washington',98033),(1016,'13440 SE 30th St','Bellevue','Washington',98005);
/*!40000 ALTER TABLE `Location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `PastService`
--

LOCK TABLES `PastService` WRITE;
/*!40000 ALTER TABLE `PastService` DISABLE KEYS */;
INSERT INTO `PastService` VALUES (1,'2019-11-08 03:10:31','2020-02-02 20:40:22',4,1,'diving board change',1),(2,'2019-11-03 21:07:28','2020-02-07 18:35:43',4,2,'diving board change',2),(3,'2019-11-23 11:03:05','2020-02-12 19:42:38',4,3,'diving board change',3),(4,'2019-11-03 00:07:32','2020-02-11 08:21:47',2,4,'pump and filter maintenance',4),(5,'2019-11-03 08:26:10','2020-02-13 06:32:54',3,5,'pump and filter maintenance',5),(6,'2019-11-22 16:57:21','2020-02-06 14:47:15',4,6,'pump and filter maintenance',6),(7,'2019-11-08 19:54:24','2020-02-04 07:10:55',4,7,'pump and filter maintenance',7),(8,'2019-11-08 01:42:55','2020-02-14 08:31:17',1,8,'pump and filter maintenance',8),(9,'2019-11-23 05:05:35','2020-02-02 15:06:40',4,9,'heater maintenance',9),(10,'2019-11-04 03:06:45','2020-02-08 07:51:59',1,10,'heater maintenance',10),(11,'2019-11-12 10:57:26','2020-02-02 02:55:18',3,11,'heater maintenance',11),(12,'2019-11-16 22:17:16','2020-02-03 07:01:08',3,12,'filter maintenance',12),(13,'2020-01-21 15:23:19','2020-01-27 09:52:43',2,11,'filter maintenance',13);
/*!40000 ALTER TABLE `PastService` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Payment`
--

LOCK TABLES `Payment` WRITE;
/*!40000 ALTER TABLE `Payment` DISABLE KEYS */;
INSERT INTO `Payment` VALUES (1,654.80,'2019-12-28 06:53:19',1),(2,358.70,'2019-12-26 21:28:32',2),(3,2548.00,'2019-12-31 10:53:57',3),(4,3684.50,'2019-12-21 18:50:38',4),(5,3973.70,'2019-12-26 11:22:21',5),(6,4915.00,'2019-12-09 01:23:38',6),(7,639.50,'2019-11-28 07:35:36',7),(8,953.00,'2019-12-06 00:47:07',8),(9,7781.00,'2020-01-11 16:50:36',9),(10,708.00,'2019-12-07 21:01:49',10),(11,1647.00,'2020-01-11 07:53:58',11),(12,1608.00,'2019-12-25 04:01:12',12),(13,52.99,'2020-01-22 18:33:35',12),(14,52.99,'2020-02-04 06:40:02',8),(15,39.54,'2019-12-31 23:00:01',2),(16,39.54,'2019-12-08 12:13:01',9),(17,39.54,'2020-01-23 08:13:01',9);
/*!40000 ALTER TABLE `Payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (1,'SilkGuard Complete Tabs/Sticks',52.99,'Sanitizer (8 lbs)',15,1),(2,'Brominating Tablets',32.95,'Sanitizer (5 lbs)',20,1),(3,'Smart Shock',39.54,'Shock (6 pack)',100,1),(4,'Burnout 73',28.14,'Shock (6 pack)',75,1),(5,'Banish',33.99,'Algea killer (1 qt)',40,1),(6,'Body Board',25.00,'Swim board trainer',10,2),(7,'Floating Basketball Hoop',21.50,'24 inches',10,2),(8,'Inflateable Ride-On',24.99,'Unicorn shape',5,2),(9,'Inflateable Lounger',20.99,'Blue mesh',5,2),(10,'Inflateable Ride-On',31.95,'Gold pony',5,2);
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `PurchaseOrder`
--

LOCK TABLES `PurchaseOrder` WRITE;
/*!40000 ALTER TABLE `PurchaseOrder` DISABLE KEYS */;
INSERT INTO `PurchaseOrder` VALUES (1,'2019-11-20 11:32:03',2),(2,'2019-11-03 16:00:01',2),(3,'2019-11-22 13:31:39',2),(4,'2020-02-13 19:16:26',2),(5,'2019-11-19 23:28:15',2),(6,'2020-02-06 14:51:57',1),(7,'2020-01-25 01:29:07',1),(8,'2020-01-02 20:36:49',2),(9,'2019-11-22 12:57:52',2),(10,'2019-12-08 20:30:38',2),(11,'2019-11-12 00:58:43',1),(12,'2019-11-12 01:12:49',2),(13,'2020-01-05 19:31:12',2),(14,'2020-01-30 02:40:28',2),(15,'2020-02-03 22:13:31',2),(16,'2019-12-28 16:46:59',2),(17,'2020-02-05 13:28:00',2),(18,'2019-11-22 00:08:12',1),(19,'2019-11-06 11:12:36',1),(20,'2020-01-16 18:43:03',1);
/*!40000 ALTER TABLE `PurchaseOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `PurchaseOrderDetail`
--

LOCK TABLES `PurchaseOrderDetail` WRITE;
/*!40000 ALTER TABLE `PurchaseOrderDetail` DISABLE KEYS */;
INSERT INTO `PurchaseOrderDetail` VALUES (1,45.99,1,1),(1,45.99,3,2),(2,28.55,2,7),(2,28.55,4,8),(3,34.35,3,3),(3,34.35,1,4),(4,24.14,4,11),(4,24.14,2,12),(5,29.55,1,5),(5,29.55,3,6),(6,21.70,2,13),(6,21.70,4,14),(7,18.50,3,9),(7,18.50,3,17),(7,18.50,1,18),(8,21.70,1,9),(8,21.70,4,15),(8,21.70,2,16),(9,18.25,1,19),(9,18.25,3,20),(10,27.70,2,9),(10,27.70,4,10);
/*!40000 ALTER TABLE `PurchaseOrderDetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SalesEmployee`
--

LOCK TABLES `SalesEmployee` WRITE;
/*!40000 ALTER TABLE `SalesEmployee` DISABLE KEYS */;
INSERT INTO `SalesEmployee` VALUES (1,'Gail ',' Draughn','Manager','GailSDraughn@jourrapide.com',1,NULL),(2,'Janet ','Levy','Manager','JanetSLevy@jourrapide.com',2,NULL),(3,'Cheryl ','Evans','Sales Clerk','CherylAEvans@teleworm.us',1,1),(4,'Danelle ','Hering','Sales Clerk','DanelleBHering@rhyta.com',1,1),(5,'Claude ','Marshall','Sales Clerk','ClaudeJMarshall@rhyta.com',2,1),(6,'Nancy ','Brunton','Sales Clerk','NancyABrunton@rhyta.com',2,2);
/*!40000 ALTER TABLE `SalesEmployee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SalesOrder`
--

LOCK TABLES `SalesOrder` WRITE;
/*!40000 ALTER TABLE `SalesOrder` DISABLE KEYS */;
INSERT INTO `SalesOrder` VALUES (1,'2020-01-22 18:32:56',12,2,13),(2,'2020-02-04 09:32:05',8,1,14),(3,'2019-12-31 22:54:02',2,3,15),(4,'2019-12-08 12:12:20',9,3,16),(5,'2020-01-23 07:56:25',9,6,17);
/*!40000 ALTER TABLE `SalesOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SalesOrderDetail`
--

LOCK TABLES `SalesOrderDetail` WRITE;
/*!40000 ALTER TABLE `SalesOrderDetail` DISABLE KEYS */;
INSERT INTO `SalesOrderDetail` VALUES (1,1,1),(1,2,1),(3,3,1),(3,4,1),(3,5,1);
/*!40000 ALTER TABLE `SalesOrderDetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Store`
--

LOCK TABLES `Store` WRITE;
/*!40000 ALTER TABLE `Store` DISABLE KEYS */;
INSERT INTO `Store` VALUES (1,'206-988-6084',1015),(2,'206-261-0006',1016);
/*!40000 ALTER TABLE `Store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Supplier`
--

LOCK TABLES `Supplier` WRITE;
/*!40000 ALTER TABLE `Supplier` DISABLE KEYS */;
INSERT INTO `Supplier` VALUES (1,'Bioguard','206-624-4394',1013),(2,'Wholesale Resort Accessories','206-365-4224',1014);
/*!40000 ALTER TABLE `Supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SwimmingPool`
--

LOCK TABLES `SwimmingPool` WRITE;
/*!40000 ALTER TABLE `SwimmingPool` DISABLE KEYS */;
INSERT INTO `SwimmingPool` VALUES (1,'16x32','vinyl','Pentair','no','2010','superflo vs','Hayward S244T','heater','rectangle',1),(2,'16x32','vinyl','Pentair','no','2017','superflo','Hayward swimclear','spa','rectangle',2),(3,'20x40','vinyl','Hayward','yes','2011','maxflo','Intex 3000','none','kidney',3),(4,'18x36','vinyl','Pentair','no','2008','superflo','Hayward S244T','none','rectangle',4),(5,'18x36','vinyl','Hayward','yes','2009','tristar vs','Hayward S244T','spa','rectangle',5),(6,'16x32','vinyl','Hayward','no','2005','super pump vs','Intex 3000','none','rectangle',6),(7,'16x32','vinyl','Hayward','no','2006','super pump','Hayward S244T','spa','rectangle',7),(8,'16x32','vinyl','Waterway','no','2001','champion v6','Hayward swimclear','none','rectangle',8),(9,'18x36','gunite','Pentair','yes','2015','superflo vs','Hayward proseries 24','heater','rectangle',9),(10,'20x40','gunite','Hayward','yes','2019','ecto variable speed','Hayward swimclear multi','both','freeform',10),(11,'12x24','fiberglass','Hayward','no','2005','maxflo vs','Hayward starclear','heater','freeform',11),(12,'12x25','fiberglass','Pentair','no','2011','superflo vs','Hayward 20','heater','freeform',12);
/*!40000 ALTER TABLE `SwimmingPool` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-14 21:21:02
