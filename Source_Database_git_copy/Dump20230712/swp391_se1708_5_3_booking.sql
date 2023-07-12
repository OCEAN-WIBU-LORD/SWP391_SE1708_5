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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `user_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `player_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `total_hour` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `game_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `date_booking` date DEFAULT NULL,
  `message` text,
  KEY `fk_Booking_user_id` (`user_id`),
  KEY `fk_booking_game_id` (`game_id`),
  KEY `fk_booking_player_id` (`player_id`),
  CONSTRAINT `fk_booking_game_id` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`),
  CONSTRAINT `fk_booking_player_id` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  CONSTRAINT `fk_Booking_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES ('duongdd123','chanbaby95','9','1',200,'2023-06-22','Hello ! Im hooked on this new game, and I think youd love it too. \nLets jump in and explore the game together!'),('duongdd123','chanbaby95','1','2',600,'2023-06-22','Hello ! Im hooked on this new game, and I think youd love it too. \nLets jump in and explore the game together!'),('duongdd123','chanbaby95','3','1',2000,'2023-06-22','Hello ! Im hooked on this new game, and I think youd love it too. \nLets jump in and explore the game together!'),('duongdd123','chanbaby95','5','1',4000,'2023-06-22','Hello ! Im hooked on this new game, and I think youd love it too. \nLets jump in and explore the game together!'),('duongdd123','chanbaby95','5','1',4000,'2023-06-23','Hello ! Im hooked on this new game, and I think youd love it too. \nLets jump in and explore the game together!'),('duongdd123','chanbaby95','2','1',124124,'2023-06-23','Hi bạn, nhóm mình cần 1 bạn nữ cute đáng yêu chơi game cùng trong ngày Chủ Nhật tới.\n Nếu cậu rảnh có thể tham gia chơi cùng bọn mình không nhỉ. Mình thấy cậu rất dễ thương.'),('duongdd123','meowmeow3k','2','1',124124,'2023-06-23','Hi bạn, nhóm mình cần 1 bạn nữ cute đáng yêu chơi game cùng trong ngày Chủ Nhật tới.\n Nếu cậu rảnh có thể tham gia chơi cùng bọn mình không nhỉ. Mình thấy cậu rất dễ thương.'),('duongdd123','chanbaby95','17','1',0,'2023-06-23','Are you ready for some cooperative gaming fun? Ive uncovered this cooperative shooter game that demands teamwork,\n strategy, and precision. Lets form a squad, communicate flawlessly, and show the world our tactical prowess!'),('duongdd123','chanbaby95','13','1',5200,'2023-06-23','Prepare to be amazed! Ive stumbled upon this breathtaking virtual reality game that transports you to \nstunning realms filled with wonder and adventure. Lets put on our headsets, explore magical worlds, and experience gaming like never before!\"'),('duongdd123','chanbaby95','14','1',5600,'2023-06-23','Hi bạn, nhóm mình cần 1 bạn nữ cute đáng yêu chơi game cùng trong ngày Chủ Nhật tới.\n Nếu cậu rảnh có thể tham gia chơi cùng bọn mình không nhỉ. Mình thấy cậu rất dễ thương.'),('duongdd123','chanbaby95','13','1',5200,'2023-06-23','Prepare to be amazed! Ive stumbled upon this breathtaking virtual reality game that transports you to \nstunning realms filled with wonder and adventure. Lets put on our headsets, explore magical worlds, and experience gaming like never before!\"'),('duongdd123','chanbaby95','10','1',4000,'2023-06-23','Hey [Friends Name]! Looking for some gaming excitement? Ive stumbled upon this multiplayer sensation that offers fast-paced action, dynamic gameplay, and intense competition.\n Lets join forces, hone our skills, and dominate the battlefield together!'),('duongdd123','meowmeow3k','13','1',32500,'2023-06-23','Prepare to be amazed! Ive stumbled upon this breathtaking virtual reality game that transports you to \nstunning realms filled with wonder and adventure. Lets put on our headsets, explore magical worlds, and experience gaming like never before!\"'),('duongdd123','muasaobang','19','1',66500,'2023-06-23','Hey there, [Friends Name]! Ive been exploring this fantastic game lately,\n and I cant help but think how awesome it would be if we could team up. Its a unique blend of action and strategy, \n hours of adrenaline-pumping gameplay. Lets conquer it side by side!'),('duongdd123','congchuabongbong','15','1',7500,'2023-06-23','Hi bạn, nhóm mình cần 1 bạn nữ cute đáng yêu chơi game cùng trong ngày Chủ Nhật tới.\n Nếu cậu rảnh có thể tham gia chơi cùng bọn mình không nhỉ. Mình thấy cậu rất dễ thương.'),('duongdd123','chanbaby95','13','1',5200,'2023-06-23','Prepare to be amazed! Ive stumbled upon this breathtaking virtual reality game that transports you to \nstunning realms filled with wonder and adventure. Lets put on our headsets, explore magical worlds, and experience gaming like never before!\"'),('duongdd123','nhungpd123','11','1',16500,'2023-06-23','Hi bạn, nhóm mình cần 1 bạn nữ cute đáng yêu chơi game cùng trong ngày Chủ Nhật tới. Nếu cậu rảnh có thể tham gia chơi cùng bọn mình không nhỉ. Mình thấy cậu rất dễ thương.'),('duongdd123','nhungpd123','7','1',10500,'2023-06-23','Hi bạn, cho mình làm quen nhé. Mình muốn kết bạn và chơi game cùng bạn.'),('duongdd123','meowmeow3k','7','1',17500,'2023-06-23','Hi bạn, mình thuê bạn nhé. 7 tiếng luôn nè'),('duongdd123','chanbaby95','10','1',4000,'2023-06-26','hello ban'),('duongdd123','trinhnt125','5','1',3000,'2023-06-26','Hi bạn, mình muốn thuê bạn 5 tiếng, cùng chơi game với mình nhé. Cảm ơn bạn'),('duongdd123','hala','24','1',14400,'2023-06-26','Hi bạn, mình muốn thuê bạn, bạn đồng ý nhé'),('duongdd123','chanbaby95','7','1',2800,'2023-06-26','Hi bạn, cho mình book lại nhé <3'),('duongdd123','meone','10','1',44300,'2023-06-26','Hi bạn, cho mình kết bạn và chơi game cùng nhé. Cảm ơn bạn'),('duongdd123','congchuabongbong','9','1',4500,'2023-06-26','hi bạn, cho mình book bạn 8 tiếng nhé, mình cảm ơn'),('duongdd123','congchuabongbong','14','1',7000,'2023-06-26','Hi bạn'),('duongdd123','juncutee','18','1',12600,'2023-06-30','Hello'),('duongdd123','chanbaby95','10','1',4000,'2023-06-30','Hello bạn, mình muốn thuê bạn nhé <3'),('duongdd123','meowmeow','10','1',50000,'2023-07-08','hello bạn'),('duongdd123','chanbaby95','10','1',4000,'2023-07-10','bạn ơi đồng ý booking nhé'),('duongdd123','chanbaby95','6','1',2400,'2023-07-10','abcd1234');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-12 15:49:45
