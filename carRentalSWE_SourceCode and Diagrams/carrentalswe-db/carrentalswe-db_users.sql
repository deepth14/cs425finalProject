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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_k8d0f2n7n88w1a16yhua64onx` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'$2a$10$YMMfRfJMObaN32uddVbAa.4sE2BiN9ohMX2h5RoHXdlKvaxOgUgMu','admin'),(2,'$2a$10$YMMfRfJMObaN32uddVbAa.4sE2BiN9ohMX2h5RoHXdlKvaxOgUgMu','frontdesk'),(3,'$2a$10$U1/NWmqSgfdP8OLrC5bHjuEBAmF967uiInrxqdOxCTym796Pt7YHO','ruvimbom'),(5,'$2a$10$5Cf/xFjq1.J.dC0n1cR10OVt7sS2THg2AmEWTUDaSXXZplpYwlWpG','EdenA'),(7,'$2a$10$Sv7ciCwC3QByRwtEA/Fr.uwZK13jgzpWNMx0bnkdDzXOHwUmB0E/S','client'),(8,'$2a$10$zbPcOzS45SlR0YwSdUqUyeaVZDuwLQib1DaH71/CMxEFtz.M/jSQm','John'),(9,'$2a$10$0jvytKaSbJrBpfZZMKlvJeVAW27jsd/NL2/g6xACGZnSt0d84wD7y','pisco'),(10,'$2a$10$mHQEL3oQ8Rok6NA9kCCsZO57PQiRssbsDKPWrF.WZLR8iSuiX9YAG','contractor'),(11,'$2a$10$L7mC2QIabZSHJ1isV3Yd..ytJ.lLAZrJnKZR00Sf/qM1pRaX36.E2','Medhanie');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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

-- Dump completed on 2021-07-15 11:35:05
