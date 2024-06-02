-- MariaDB dump 10.19-11.3.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: LogisticsServiceDB
-- ------------------------------------------------------
-- Server version	11.3.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drivers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact_information` varchar(100) DEFAULT NULL,
  `availability` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES
(1,'John Doe','+1 (555) 123-4567',1),
(2,'Jane Smith','+1 (555) 987-6543',1),
(3,'Michael Johnson','+1 (555) 456-7890',1),
(4,'Emily Brown','+1 (555) 789-0123',1),
(5,'David Lee','+1 (555) 321-4567',1),
(6,'Sarah Davis','+1 (555) 654-3210',1),
(7,'Robert Wilson','+1 (555) 987-1234',1),
(8,'Olivia Anderson','+1 (555) 456-9012',1),
(9,'William Taylor','+1 (555) 789-3456',1),
(10,'Emma Thompson','+1 (555) 123-7890',1);
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistics_hubs`
--

DROP TABLE IF EXISTS `logistics_hubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logistics_hubs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistics_hubs`
--

LOCK TABLES `logistics_hubs` WRITE;
/*!40000 ALTER TABLE `logistics_hubs` DISABLE KEYS */;
INSERT INTO `logistics_hubs` VALUES
(1,'New York, NY','Main distribution center on the East Coast'),
(2,'Los Angeles, CA','Major hub for West Coast operations'),
(3,'Chicago, IL','Central distribution point for the Midwest'),
(4,'Houston, TX','Important hub for energy and petrochemical industries'),
(5,'Atlanta, GA','Serves the Southeast region'),
(6,'Seattle, WA','Gateway for Pacific Northwest logistics'),
(7,'Miami, FL','Specializes in international trade and distribution'),
(8,'Denver, CO','Connects the Rocky Mountain region'),
(9,'Dallas, TX','Serves the Southwest region'),
(10,'Boston, MA','Important hub for the Northeast');
/*!40000 ALTER TABLE `logistics_hubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transportations`
--

DROP TABLE IF EXISTS `transportations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transportations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transport_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `origin_logistics_hub_id` int(11) DEFAULT NULL,
  `destination_logistics_hub_id` int(11) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `additional_details` varchar(200) DEFAULT NULL,
  `scheduled_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `TransportID` (`transport_id`),
  KEY `DriverID` (`driver_id`),
  KEY `OriginLogisticsHubID` (`origin_logistics_hub_id`),
  KEY `DestinationLogisticsHubID` (`destination_logistics_hub_id`),
  CONSTRAINT `transportations_ibfk_1` FOREIGN KEY (`transport_id`) REFERENCES `transports` (`id`),
  CONSTRAINT `transportations_ibfk_2` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`),
  CONSTRAINT `transportations_ibfk_3` FOREIGN KEY (`origin_logistics_hub_id`) REFERENCES `logistics_hubs` (`id`),
  CONSTRAINT `transportations_ibfk_4` FOREIGN KEY (`destination_logistics_hub_id`) REFERENCES `logistics_hubs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportations`
--

LOCK TABLES `transportations` WRITE;
/*!40000 ALTER TABLE `transportations` DISABLE KEYS */;
INSERT INTO `transportations` VALUES
(1,1,1,1,2,'Electronics','Fragile items','2023-05-01'),
(2,3,2,3,4,'Construction materials',NULL,'2023-05-02'),
(3,4,3,2,5,'Perishable food','Temperature-controlled','2023-05-03'),
(4,6,4,4,7,'Machinery','Oversized cargo','2023-05-04'),
(5,2,5,5,1,'Clothing',NULL,'2023-05-05'),
(6,5,6,6,8,'Office supplies',NULL,'2023-05-06'),
(7,7,7,7,9,'Fuel',NULL,'2023-05-07'),
(8,8,8,8,3,'Passengers',NULL,'2023-05-08'),
(9,9,9,9,6,'Furniture','Fragile items','2023-05-09'),
(10,10,10,10,2,'Agricultural products',NULL,'2023-05-10');
/*!40000 ALTER TABLE `transportations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transports`
--

DROP TABLE IF EXISTS `transports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_type` varchar(50) DEFAULT NULL,
  `characteristics` varchar(100) DEFAULT NULL,
  `availability` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transports`
--

LOCK TABLES `transports` WRITE;
/*!40000 ALTER TABLE `transports` DISABLE KEYS */;
INSERT INTO `transports` VALUES
(1,'Truck','Cargo capacity: 10 tons',1),
(2,'Van','Cargo capacity: 3 tons',1),
(3,'Flatbed Truck','Cargo capacity: 15 tons',1),
(4,'Refrigerated Truck','Cargo capacity: 8 tons, Temperature-controlled',1),
(5,'Pickup Truck','Cargo capacity: 1.5 tons',1),
(6,'Trailer','Cargo capacity: 20 tons',1),
(7,'Tanker Truck','Cargo capacity: 12,000 liters',1),
(8,'Bus','Passenger capacity: 40',1),
(9,'Minivan','Passenger capacity: 7',1),
(10,'Motorcycle','Cargo capacity: 0.2 tons',1),
(11,'Truck','Large capacity, heavy-duty',1),
(12,'Truck','Large capacity, heavy-duty',1),
(13,'Truck','Large capacity, heavy-duty',1);
/*!40000 ALTER TABLE `transports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Login` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'admin','$2a$12$T6pXeHggIgyLtL1BTJN5IujeoKVBDVIIWXl8cqWw9qM3GhNslH3EK','ADMIN'),
(2,'manager','$2a$12$2S6OnXOzaLUbXdrYos1pneameNA164almLy0gyoZ5Z6./4qBb7yse','MANAGER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-03  0:01:16
