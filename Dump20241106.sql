CREATE DATABASE  IF NOT EXISTS `fintek` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fintek`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: fintek
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `tbl_bcdate`
--

DROP TABLE IF EXISTS `tbl_bcdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bcdate` (
  `bcdate_id` int NOT NULL AUTO_INCREMENT,
  `bc_date` varchar(100) NOT NULL,
  `dc_sch_id` int NOT NULL,
  `bc_no` int NOT NULL,
  `bc_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`bcdate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=697 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bcdate`
--

LOCK TABLES `tbl_bcdate` WRITE;
/*!40000 ALTER TABLE `tbl_bcdate` DISABLE KEYS */;
INSERT INTO `tbl_bcdate` VALUES (670,'2024-10-07',149,1,1),(671,'2024-11-07',149,2,1),(672,'2024-12-07',149,3,0),(673,'2024-10-07',149,1,0),(674,'2024-11-07',149,2,0),(675,'2024-12-07',149,3,0),(676,'2024-10-07',150,1,1),(677,'2024-11-07',150,2,0),(678,'2024-12-07',150,3,0),(679,'2024-10-07',151,1,0),(680,'2024-11-07',151,2,0),(681,'2024-12-07',151,3,0),(682,'2024-10-07',151,1,0),(683,'2024-11-07',151,2,0),(684,'2024-12-07',151,3,0),(685,'2024-10-07',152,1,0),(686,'2024-11-07',152,2,0),(687,'2024-12-07',152,3,0),(688,'2024-11-05',153,1,1),(689,'2024-12-04',153,2,0),(690,'2025-01-04',153,3,0),(691,'2024-11-04',154,1,1),(692,'2024-12-04',154,2,0),(693,'2025-01-04',154,3,0),(694,'2024-11-05',155,1,0),(695,'2024-12-05',155,2,0),(696,'2025-01-05',155,3,0);
/*!40000 ALTER TABLE `tbl_bcdate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bidding`
--

DROP TABLE IF EXISTS `tbl_bidding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bidding` (
  `bid_id` int NOT NULL AUTO_INCREMENT,
  `bid_sch_id` int NOT NULL,
  `bid_mem_id` varchar(255) NOT NULL,
  `bid_month` varchar(200) NOT NULL,
  `bid_amount` int NOT NULL,
  `bid_bcdate_id` int NOT NULL,
  PRIMARY KEY (`bid_id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bidding`
--

LOCK TABLES `tbl_bidding` WRITE;
/*!40000 ALTER TABLE `tbl_bidding` DISABLE KEYS */;
INSERT INTO `tbl_bidding` VALUES (160,149,'[56,58]','2024-10',100,670),(161,150,'[56]','2024-10',120,676),(162,150,'[57]','2024-10',100,676),(163,152,'[56,57,58]','2024-10',100,685),(164,149,'[57]','2024-11',5,671),(165,153,'[58]','2024-11',100,688),(166,154,'[58]','2024-11',100,691);
/*!40000 ALTER TABLE `tbl_bidding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_member` (
  `mem_id` int NOT NULL AUTO_INCREMENT,
  `mem_name` varchar(255) NOT NULL,
  `mem_mobile` varchar(20) NOT NULL,
  `mem_address` varchar(255) NOT NULL,
  PRIMARY KEY (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member`
--

LOCK TABLES `tbl_member` WRITE;
/*!40000 ALTER TABLE `tbl_member` DISABLE KEYS */;
INSERT INTO `tbl_member` VALUES (1,'agency','7504330303','pune'),(2,'agency_commission','0987654321','pune'),(58,'chaitanya','7504330300','pune'),(61,'kalyani','7504330305','pune'),(62,'mk','7504330304','pune');
/*!40000 ALTER TABLE `tbl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_scheme`
--

DROP TABLE IF EXISTS `tbl_scheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_scheme` (
  `sch_id` int NOT NULL AUTO_INCREMENT,
  `sch_name` varchar(255) NOT NULL,
  `sch_starting_date` date NOT NULL,
  `sch_month` int NOT NULL,
  `sch_amount_per_head` int NOT NULL,
  `sch_total` int NOT NULL,
  `sch_fiexd_total` int NOT NULL,
  `sch_status` int NOT NULL,
  `sch_commission` int DEFAULT NULL,
  `sch_commission_amount` int DEFAULT NULL,
  PRIMARY KEY (`sch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_scheme`
--

LOCK TABLES `tbl_scheme` WRITE;
/*!40000 ALTER TABLE `tbl_scheme` DISABLE KEYS */;
INSERT INTO `tbl_scheme` VALUES (154,'Scheme R','2024-11-05',3,100,300,300,1,10,NULL),(155,'Scheme C','2024-11-06',3,10,30,30,1,10,NULL);
/*!40000 ALTER TABLE `tbl_scheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_schememember`
--

DROP TABLE IF EXISTS `tbl_schememember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_schememember` (
  `schmem_id` int NOT NULL AUTO_INCREMENT,
  `schmem_mem_id` int NOT NULL,
  `schmem_sch_id` int NOT NULL,
  `schmem_status` int DEFAULT NULL,
  PRIMARY KEY (`schmem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=511 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_schememember`
--

LOCK TABLES `tbl_schememember` WRITE;
/*!40000 ALTER TABLE `tbl_schememember` DISABLE KEYS */;
INSERT INTO `tbl_schememember` VALUES (472,58,149,1),(475,58,150,0),(481,58,152,0),(482,58,153,1),(483,61,153,0),(484,62,153,0),(485,58,154,1),(486,61,154,0),(487,62,154,0),(510,58,155,0);
/*!40000 ALTER TABLE `tbl_schememember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_transaction`
--

DROP TABLE IF EXISTS `tbl_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_transaction` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `t_vid` int NOT NULL,
  `t_mem_id` int NOT NULL,
  `t_amount` int NOT NULL,
  `t_sch_id` int NOT NULL,
  `t_remark` varchar(25) DEFAULT NULL,
  `t_bcdate_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(50) DEFAULT NULL,
  `t_remark1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1554 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_transaction`
--

LOCK TABLES `tbl_transaction` WRITE;
/*!40000 ALTER TABLE `tbl_transaction` DISABLE KEYS */;
INSERT INTO `tbl_transaction` VALUES (1540,979,58,-100,154,'1',691,'2024-11-05 11:36:00',NULL,'2024-11-05 11:36:00',NULL,'Scheme R'),(1541,979,61,-100,154,'1',691,'2024-11-05 11:36:00',NULL,'2024-11-05 11:36:00',NULL,'Scheme R'),(1542,979,62,-100,154,'1',691,'2024-11-05 11:36:00',NULL,'2024-11-05 11:36:00',NULL,'Scheme R'),(1543,979,1,300,154,'2',691,'2024-11-05 11:36:00',NULL,'2024-11-05 11:36:00',NULL,'Scheme R'),(1544,980,1,-300,154,'2',691,'2024-11-05 11:36:00',NULL,'2024-11-05 11:36:00',NULL,'Scheme R'),(1545,980,58,200,154,'3',691,'2024-11-05 11:36:00',NULL,'2024-11-05 11:36:00',NULL,'Scheme R'),(1546,980,2,10,154,'4',691,'2024-11-05 11:36:00',NULL,'2024-11-05 11:36:00',NULL,'Scheme R'),(1547,980,58,30,154,'5',691,'2024-11-05 11:36:00',NULL,'2024-11-05 11:36:00',NULL,'Scheme R'),(1548,980,61,30,154,'5',691,'2024-11-05 11:36:00',NULL,'2024-11-05 11:36:00',NULL,'Scheme R'),(1549,980,62,30,154,'5',691,'2024-11-05 11:36:00',NULL,'2024-11-05 11:36:00',NULL,'Scheme R'),(1550,981,61,70,0,'6',0,'2024-11-05 11:40:50',NULL,'2024-11-05 11:40:50',NULL,'send '),(1551,981,1,-70,0,'6',0,'2024-11-05 11:40:50',NULL,'2024-11-05 11:40:50',NULL,'send '),(1552,982,58,-130,0,'7',0,'2024-11-05 11:54:42',NULL,'2024-11-05 11:54:42',NULL,'ghnj'),(1553,982,1,130,0,'7',0,'2024-11-05 11:54:42',NULL,'2024-11-05 11:54:42',NULL,'ghnj');
/*!40000 ALTER TABLE `tbl_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`),
  UNIQUE KEY `user_password` (`user_password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_vaoucher`
--

DROP TABLE IF EXISTS `tbl_vaoucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_vaoucher` (
  `v_id` int NOT NULL AUTO_INCREMENT,
  `v_date` varchar(200) NOT NULL,
  `v_amount` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=983 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_vaoucher`
--

LOCK TABLES `tbl_vaoucher` WRITE;
/*!40000 ALTER TABLE `tbl_vaoucher` DISABLE KEYS */;
INSERT INTO `tbl_vaoucher` VALUES (971,'2024-10-08',300,'2024-10-08 04:29:13',NULL,'2024-10-08 04:29:13',NULL),(972,'2024-10-08',300,'2024-10-08 04:29:13',NULL,'2024-10-08 04:29:13',NULL),(973,'2024-11-05',300,'2024-11-05 06:56:22',NULL,'2024-11-05 06:56:22',NULL),(974,'2024-11-05',300,'2024-11-05 06:56:22',NULL,'2024-11-05 06:56:22',NULL),(975,'2024-11-05',300,'2024-11-05 06:58:18',NULL,'2024-11-05 06:58:18',NULL),(976,'2024-11-05',300,'2024-11-05 06:58:18',NULL,'2024-11-05 06:58:18',NULL),(977,'2024-11-05',300,'2024-11-05 11:31:58',NULL,'2024-11-05 11:31:58',NULL),(978,'2024-11-05',300,'2024-11-05 11:31:58',NULL,'2024-11-05 11:31:58',NULL),(979,'2024-11-05',300,'2024-11-05 11:35:59',NULL,'2024-11-05 11:35:59',NULL),(980,'2024-11-05',300,'2024-11-05 11:36:00',NULL,'2024-11-05 11:36:00',NULL),(981,'2024-11-05',70,'2024-11-05 11:40:50',NULL,'2024-11-05 11:40:50',NULL),(982,'2024-11-05',130,'2024-11-05 11:54:42',NULL,'2024-11-05 11:54:42',NULL);
/*!40000 ALTER TABLE `tbl_vaoucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (7,'Tekhnologia','tekhnologia@gmail.com','$2b$10$FCmjU8zfnwEo6DoHdlfVoe8O.q2pgfeztf3xg6pS5QVGfJLyXKdNO');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fintek'
--

--
-- Dumping routines for database 'fintek'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-06 11:56:41
