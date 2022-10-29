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
-- Table structure for table `external_user`
--

DROP TABLE IF EXISTS `external_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_user` (
  `extuser_id` bigint NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `approved` bit(1) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `driver_licence_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `id_image_url` varchar(64) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`extuser_id`),
  KEY `FKgrprstpv8pxgetl2jl6qel3oq` (`user_id`),
  CONSTRAINT `FKgrprstpv8pxgetl2jl6qel3oq` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_user`
--

LOCK TABLES `external_user` WRITE;
/*!40000 ALTER TABLE `external_user` DISABLE KEYS */;
INSERT INTO `external_user` VALUES (1,'Fairfield','United States','Iowa','1000 N 4th street','52557',_binary '','2021-07-21','124355rdd','ruvimbomagweregwede@gmail.com','Ruvimbo','driver.jpeg','magweregwede','6418191453',3),(2,'Fairfield','United States','Iowa','1000 N 4th street','52557',_binary '','2021-07-21','12435355rdd','ruvimbomagweregwede@gmail.com','Eden','driver.jpeg','Asnake','6418191453',5),(3,'Harare','Zimbabwe','Iowa','3 Chiremba Road Hillside','52557',_binary '\0','2021-07-01','124355rdd','client@test1234','ClientNAme','driver.jpeg','ClientLastNAme','124367383',7),(4,'Fairfield','United States','Iowa','1000 N 4th street','52557',_binary '','2021-07-14','34263u4','john@gmail.com','John','driver.jpeg','Yohannes','426374845',8),(5,'Fairfield','US','IOWA','1000 st','56787',_binary '','1990-04-15','856509877BP1443M2406232','pbenimana@miu.edu856505782','Pascal','','Benimana','6414510649',9),(6,'Campbell','United States','California','883 sharmon Palms Ln','96008',_binary '','2021-03-04','6516554','contractor@email.com','contractor','Screenshot from 2021-05-20 11-00-49.png','contractor','6504484925',10),(7,'Fairfield','United States','Iowa','1000 N 4th street','52557',_binary '\0','2021-07-23','31526723','maraya@gmail.com','Medhanie','driver.jpeg','Araya','12536373',11);
/*!40000 ALTER TABLE `external_user` ENABLE KEYS */;
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

-- Dump completed on 2021-07-15 11:35:11
