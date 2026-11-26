-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `appointments` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Dob` date DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `Reason` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,'Jane Dormes','hsmest3003@gmail.com','8324567845','1998-05-14','Female','2026-04-08','10:30:00','Pollen Allergies'),(2,'Judy Harp','hsmest3003@gmail.com','8324568974','2002-06-20','Female','2026-04-29','12:40:00','High fever and cough'),(3,'Enxhi H','ehasmeta96@gmail.com','8325698968','1996-03-06','Male','2026-04-30','14:00:00','Ear Infection'),(4,'Tia','hsmest3003@gmail.com','8369587412','2025-09-27','Female','2026-04-16','21:00:00','Routine Control'),(5,'Ester','hsmest3003@gmail.com','8324568974','2003-10-30','Female','2026-05-05','00:30:00','Food allergies'),(6,'Alex J','hsmest3003@gmail.com','9634568521','2014-02-09','Male','2026-05-04','00:10:00','Sprained ankle'),(7,'Eric Park','kookies973@gmail.com','7894561598','1995-09-10','Male','2026-05-05','14:00:00','Blood test '),(8,'Ester Hasmeta','hasmetaester97@gmail.com','8324569874','2003-10-30','Female','2026-05-05','11:40:00','Severe rashes on my skin');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `message` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'Jacob','Rue','jacobrue@gmail.com','684233850','New Patient and I have a problem with my portal ','2026-05-04 01:13:20'),(2,'Jacob','Rue','jacobrue@gmail.com','684233850','New Patient and I have a problem with my portal ','2026-05-04 01:13:21'),(3,'Jacob','Rue','jacobrue@gmail.com','684233850','New Patient and I have a problem with my portal ','2026-05-04 01:13:21'),(4,'Ester','H','hsmest3003@gmail.com','684233850','Hello ','2026-05-04 01:14:37'),(5,'Klea ','Hsm','hasmetaklea@gmail.com','684233850','Hello','2026-05-04 02:33:40'),(6,'Jessica','Smith','hsmest3003@gmail.com','8324568974','I want to have a tour of your hospital!','2026-05-04 02:39:27');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (NULL,NULL,'EsseH','hsmest3003@gmail.com','$2b$10$qNu7L.0bsaSMN2l9My3qce4i5NFyljBt74TIpbTGCNBZ25w16acUC',1),(NULL,NULL,'Carla36','carla36@gmail.com','$2b$10$CTRWEu5Xfml/Nmd3iBY6B.WZifhMYwYy4xrzDRCTd0vAwtvLRdLA6',2),(NULL,NULL,'Ess3003','hsmest3003@gmail.com','$2b$10$ppPfKN6jMmVR2PzRAmxzsusdzESsBJ7xcXXrCfECfCG0/wwrB8h1y',4),('Maria','Diaz','mdiaz2','mariad@gmail.com','$2b$10$KYAYhnWA4nuRa.2SI/WIs./SZQ0i40caNMrmC2QuUVoMW0WXH8caC',5),('Jacob ','Rue','jrueb','jacobrue@gmail.com','$2b$10$bZ97A7VnV88cErTiPZC/UeRFIahed095QCzID36tBdm25q6eoCFSy',6);
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

-- Dump completed on 2026-05-03 22:47:54
