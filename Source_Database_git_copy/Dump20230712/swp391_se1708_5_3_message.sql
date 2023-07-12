-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: swp391_se1708_5_3
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `messageid` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `player_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `message` text,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`messageid`),
  KEY `user_id` (`user_id`),
  KEY `player_id` (`player_id`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'duongdd123','chanbaby95','2023-07-02 12:34:56','hello ban',1),(2,'duongdd123','chanbaby95','2023-07-03 12:34:56','hello ban',1),(3,'duongdd123','chanbaby95','2023-07-04 12:34:56','hello ban',1),(4,'duongdd123','chanbaby95','2023-07-04 12:34:56','ukm, chao ban',0),(5,'duongdd123','chanbaby95','2023-07-04 12:34:56','minh lam quen nhe',1),(6,'duongdd123','chanbaby95','2023-07-04 12:34:56','ok',0),(7,'duongdd123','chanbaby95','2023-07-04 12:34:56','hen ban ngay mai nhe',0),(8,'duongdd123','chanbaby95','2023-07-04 12:34:56','oki thank ban',1),(9,'duongdd123','chanbaby95','2023-07-05 11:35:44','hello',0),(10,'duongdd123','chanbaby95','2023-07-05 12:20:18','xin chao ban',0),(11,'duongdd123','chanbaby95','2023-07-05 12:20:34','hen ban toi nay nhe',0),(16,'duongdd123','chanbaby95','2023-07-04 12:34:56','toi nhan tiep cho minh nhe',1),(18,'duongdd123','chanbaby95','2023-07-05 12:42:27','asfsafsaf',0),(19,'duongdd123','chanbaby95','2023-07-05 12:42:31','asgsags',0),(20,'duongdd123','chanbaby95','2023-07-05 12:44:23','hello',1),(21,'duongdd123','chanbaby95','2023-07-05 12:44:27','hello',1),(22,'duongdd123','chanbaby95','2023-07-05 12:45:47','hello',1),(23,'duongdd123','chanbaby95','2023-07-05 12:49:33','hello',1),(24,'duongdd123','chanbaby95','2023-07-05 12:49:51','hello',1),(25,'duongdd123','chanbaby95','2023-07-05 12:50:24','hello',1),(26,'duongdd123','chanbaby95','2023-07-05 13:48:43','abcd1234',1),(27,'duongdd123','chanbaby95','2023-07-05 13:49:08','abcd1234',1),(28,'duongdd123','chanbaby95','2023-07-05 14:11:11','abcd1234',1),(29,'duongdd123','chanbaby95','2023-07-05 14:50:33','hello bạn',1),(30,'duongdd123','chanbaby95','2023-07-05 14:50:43','hello bạn',1),(31,'duongdd123','congchuabongbong','2023-07-05 19:34:04','hi bạn',1),(32,'duongdd123','congchuabongbong','2023-07-05 19:34:07','hi bạn',1),(36,'duongdd123','chanbaby95','2023-07-06 03:49:34','hello123',1),(38,'duongdd123','chanbaby95','2023-07-07 12:50:15','alo alo',1),(40,'duongdd123','meowmeow3k','2023-07-07 17:47:58','hi bạn',1),(41,'duongdd123','nhungpd123','2023-07-07 20:50:44','chào bạn nhé, mình là Đại Dương, rất vui được làm quen.',1);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-12 15:49:48
