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
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `player_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `player_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `gender` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `num_of_star` int DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `link_image` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES ('chanbaby95','Em bé Chan ☁️❤️','female','0967778899',5,'123456789','https://playerduo.net/api/upload-service/images/6885cb0a-74b9-4c50-a614-5f8e513a1225__cfaa3500-ce74-11ed-a19f-23a3b10d190e__player_album.jpg'),('congchuabongbong','Minh Ngoc','female','0967623421',5,'123456789','https://playerduo.net/api/upload-service/images/dc805681-0d56-4dd6-a1d1-ae2cf3ea4813__89118520-e3a1-11ed-a19f-23a3b10d190e__player_album.jpg'),('hala','Hạ Lạ','female','0967753441',5,'123456789','https://playerduo.net/api/upload-service/images/75c40a5c-dbda-4ac3-9106-55d6d7ca9b0f__a3c3aef0-cb0c-11ed-a19f-23a3b10d190e__player_album.jpg'),('juncutee','Pham Thuy Dung','female','0967555461',5,'123456789','https://playerduo.net/api/upload-service/images/66f8b716-ee52-4590-aa0a-73bd28590f5f__3a2689a0-1d52-11eb-89a2-ed059467d76a__player_album.jpg'),('meone','Little Cat','female','0967565461',4,'123456789','https://playerduo.net/api/upload-service/images/a4b423f6-46fb-4057-9f01-20a359978b9e__ca179730-eb53-11ed-a657-a54d6be1d46a__player_avatar.jpg'),('meowmeow','Tran Thi Ha My','female','0967665461',3,'123456789','https://playerduo.net/api/upload-service/images/1d1fa3b4-fe53-4a76-983e-6e1470f79367__f262f5b0-41d3-11ed-838c-b120e70abb59__player_album.jpg'),('meowmeow3k','MÈO 3K','female','0967543461',5,'123456789','https://playerduo.net/api/upload-service/images/1d1fa3b4-fe53-4a76-983e-6e1470f79367__6260b250-eb2e-11ec-92ac-1b8d2f5bc2b5__player_album.jpg'),('muasaobang','Thư','female','0967655461',5,'123456789','https://playerduo.net/api/upload-service/images/dc805681-0d56-4dd6-a1d1-ae2cf3ea4813__5ab17d40-e39f-11ed-a19f-23a3b10d190e__player_album.jpg'),('nhungpd123','Pham Dang Nhung','female','0966566712',5,'123456789','https://playerduo.net/api/upload-service/images/8a647942-cdbf-4d92-bae5-2cfa341b1256__ff8bade0-f664-11ed-a657-a54d6be1d46a__player_avatar.jpg'),('trinhnt125','Yume','female','0966544212',4,'123456789','https://playerduo.net/api/upload-service/images/ee7274d7-6746-4c5c-95c6-229d5a48c19b__30ec7470-e515-11ed-a19f-23a3b10d190e__player_avatar.jpg'),('windyiu','Windy','female','096724421',5,'123456789','https://playerduo.net/api/upload-service/images/0daea254-1a71-44ce-903d-88a781d83124__d733b5f0-90c9-11ed-a19f-23a3b10d190e__player_album.jpg');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-30 23:47:22
