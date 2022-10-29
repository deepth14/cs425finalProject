-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: carrentalswe-db.cti5qlkaxkdj.us-east-1.rds.amazonaws.com    Database: carrentalswe-db
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `booking_id` bigint NOT NULL AUTO_INCREMENT,
  `booking_date` date NOT NULL,
  `booking_fee` double DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `return_date` date NOT NULL,
  `client_id` bigint DEFAULT NULL,
  `vehicle_id` bigint DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `FKc0062bk3bchs55diw805avxq` (`vehicle_id`),
  KEY `FKlwol61g2k7j3j2ypwy3uvabcb` (`client_id`),
  CONSTRAINT `FKc0062bk3bchs55diw805avxq` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`vehicle_id`),
  CONSTRAINT `FKdwis3ct69bd9hmdcqmpiwf8wh` FOREIGN KEY (`client_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKlwol61g2k7j3j2ypwy3uvabcb` FOREIGN KEY (`client_id`) REFERENCES `external_user` (`extuser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'2021-07-15',10,1,'2021-07-16',3,1),(2,'2021-07-15',10,1,'2021-07-16',3,1),(3,'2021-07-15',10,1,'2021-07-16',3,1),(4,'2021-07-14',170,17,'2021-07-31',3,1),(5,'2021-07-14',70,7,'2021-07-21',3,1),(6,'2021-07-15',20,2,'2021-07-17',3,1),(7,'2021-07-17',70,7,'2021-07-24',3,1),(8,'2021-07-29',20,2,'2021-07-31',3,4),(9,'2021-07-16',10,1,'2021-07-17',7,3),(10,'2021-07-18',50,5,'2021-07-23',7,5);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-15 11:35:13
