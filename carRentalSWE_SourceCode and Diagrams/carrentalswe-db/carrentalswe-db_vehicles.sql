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
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `vehicle_id` bigint NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `plate_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `external_user_id` bigint DEFAULT NULL,
  `make` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`),
  UNIQUE KEY `UK_h6kd0awsaislk5n2f3ea1hhuq` (`plate_number`),
  KEY `FKdjuwisect6diyjv2bk0j4wlcv` (`category_id`),
  KEY `FKhildjsqqk1xyo8dmaxt88v1vl` (`user_id`),
  KEY `FKh2kk5t5byei7xgqequcugoefp` (`external_user_id`),
  CONSTRAINT `FKdjuwisect6diyjv2bk0j4wlcv` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  CONSTRAINT `FKh2kk5t5byei7xgqequcugoefp` FOREIGN KEY (`external_user_id`) REFERENCES `external_user` (`extuser_id`),
  CONSTRAINT `FKhildjsqqk1xyo8dmaxt88v1vl` FOREIGN KEY (`user_id`) REFERENCES `external_user` (`extuser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,'car1.jpeg','Corolla','AI 939558','Booked',2015,2,2,NULL,NULL),(2,'car3.jpeg','toyota','123455','Booked',2021,2,NULL,NULL,NULL),(3,'car4.jpeg','Mac Benz','515273ue4','Booked',2021,2,2,NULL,NULL),(4,'car5.jpeg','Mazda','16367894','Booked',2020,2,2,NULL,NULL),(5,'car3.jpeg','Verso','IA 45681','Booked',2020,6,NULL,NULL,NULL),(6,'car1.jpeg','Mac Benz','2364858','Available',2010,1,NULL,NULL,NULL),(7,'car1.jpeg','Mazda','242363745','Available',2021,7,4,NULL,NULL),(8,'car.jpg','Mac','2537734','Available',2021,6,NULL,NULL,NULL),(9,'car1.jpeg','BMW','467888','Available',2021,2,NULL,NULL,NULL);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
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

-- Dump completed on 2021-07-15 11:35:08
