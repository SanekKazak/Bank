--
-- Table structure for table `Drivers`
--

DROP TABLE IF EXISTS `Drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Drivers` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `ContactInformation` varchar(100) DEFAULT NULL,
  `Availability` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Drivers`
--

LOCK TABLES `Drivers` WRITE;
/*!40000 ALTER TABLE `Drivers` DISABLE KEYS */;
INSERT INTO `Drivers` VALUES
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
/*!40000 ALTER TABLE `Drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LogisticsHubs`
--

DROP TABLE IF EXISTS `LogisticsHubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LogisticsHubs` (
  `ID` int(11) NOT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LogisticsHubs`
--

LOCK TABLES `LogisticsHubs` WRITE;
/*!40000 ALTER TABLE `LogisticsHubs` DISABLE KEYS */;
INSERT INTO `LogisticsHubs` VALUES
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
/*!40000 ALTER TABLE `LogisticsHubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transport`
--

DROP TABLE IF EXISTS `Transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transport` (
  `ID` int(11) NOT NULL,
  `VehicleType` varchar(50) DEFAULT NULL,
  `Characteristics` varchar(100) DEFAULT NULL,
  `Availability` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transport`
--

LOCK TABLES `Transport` WRITE;
/*!40000 ALTER TABLE `Transport` DISABLE KEYS */;
INSERT INTO `Transport` VALUES
(1,'Truck','Cargo capacity: 10 tons',1),
(2,'Van','Cargo capacity: 3 tons',1),
(3,'Flatbed Truck','Cargo capacity: 15 tons',1),
(4,'Refrigerated Truck','Cargo capacity: 8 tons, Temperature-controlled',1),
(5,'Pickup Truck','Cargo capacity: 1.5 tons',1),
(6,'Trailer','Cargo capacity: 20 tons',1),
(7,'Tanker Truck','Cargo capacity: 12,000 liters',1),
(8,'Bus','Passenger capacity: 40',1),
(9,'Minivan','Passenger capacity: 7',1),
(10,'Motorcycle','Cargo capacity: 0.2 tons',1);
/*!40000 ALTER TABLE `Transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transportation`
--

DROP TABLE IF EXISTS `Transportation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transportation` (
  `ID` int(11) NOT NULL,
  `TransportID` int(11) DEFAULT NULL,
  `DriverID` int(11) DEFAULT NULL,
  `OriginLogisticsHubID` int(11) DEFAULT NULL,
  `DestinationLogisticsHubID` int(11) DEFAULT NULL,
  `Cargo` varchar(100) DEFAULT NULL,
  `AdditionalDetails` varchar(200) DEFAULT NULL,
  `ScheduledDate` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `TransportID` (`TransportID`),
  KEY `DriverID` (`DriverID`),
  KEY `OriginLogisticsHubID` (`OriginLogisticsHubID`),
  KEY `DestinationLogisticsHubID` (`DestinationLogisticsHubID`),
  CONSTRAINT `Transportation_ibfk_1` FOREIGN KEY (`TransportID`) REFERENCES `Transport` (`ID`),
  CONSTRAINT `Transportation_ibfk_2` FOREIGN KEY (`DriverID`) REFERENCES `Drivers` (`ID`),
  CONSTRAINT `Transportation_ibfk_3` FOREIGN KEY (`OriginLogisticsHubID`) REFERENCES `LogisticsHubs` (`ID`),
  CONSTRAINT `Transportation_ibfk_4` FOREIGN KEY (`DestinationLogisticsHubID`) REFERENCES `LogisticsHubs` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transportation`
--

LOCK TABLES `Transportation` WRITE;
/*!40000 ALTER TABLE `Transportation` DISABLE KEYS */;
INSERT INTO `Transportation` VALUES
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
/*!40000 ALTER TABLE `Transportation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-23 12:40:01
