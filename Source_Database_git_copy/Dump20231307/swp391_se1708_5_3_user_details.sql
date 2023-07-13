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
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_details` (
  `user_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `gender` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `gmail` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `link_image` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `description` text,
  `status` tinyint DEFAULT NULL,
  KEY `fk_user_details__game_id` (`user_id`),
  CONSTRAINT `fk_user_details__game_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES ('duongdd123','male','098123456','duongddhe176496@fpt.edu.vn','DH-FPT','123','https://scontent.fhan2-4.fna.fbcdn.net/v/t39.30808-6/343340985_609038264590654_7861074615788473177_n.jpg?_nc_cat=110&cb=99be929b-59f725be&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=2X-baBqp4vIAX9nxCVH&_nc_ht=scontent.fhan2-4.fna&oh=00_AfBVK2EH5AmTvyA7Z7VJalAAcqjZUbjwvDA9lUHlRjFQ3w&oe=649E389A',424000,'Hello! I am Dinh Dai Duong, a passionate individual with a zest for life and an insatiable curiosity. I embrace diversity and love exploring new experiences and ideas. As an avid learner, I enjoy immersing myself in various subjects, constantly expanding my knowledge and skills. I thrive on challenges and approach them with determination and creativity. Whether it is tackling complex problems, collaborating with diverse teams, or taking the lead in projects, I strive for excellence in everything I do. With a positive mindset and a strong work ethic, Im always ready to embrace new opportunities and make a meaningful impact in the world.',NULL),('hieudt123','male','036999998','nguyentrunghieu@gmail.com','12,Ba Trieu, HaNoi','123456789','https://scontent.fhan2-3.fna.fbcdn.net/v/t39.30808-6/332489386_3401774396729930_6971685825265049192_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=6NI-G2fpAWIAX-TDhGC&_nc_ht=scontent.fhan2-3.fna&oh=00_AfCWx0AQD7YnpnKjs6FQyJlGMFuGuHmLiY__HFJwpu835Q&oe=6461B5F2',500000,'Hey there! Im Nguyen Trung Hieu, a passionate individual with an adventurous spirit and a love for exploring the world. I thrive on new experiences and embrace challenges as opportunities for growth. With a curious mindset and a zest for learning, I constantly seek knowledge in various domains, from art and culture to technology and science. I believe in the power of connection and enjoy building meaningful relationships with people from diverse backgrounds. Whether its embarking on exciting travel adventures, engaging in thought-provoking conversations, or pursuing creative endeavors, I strive to live a purposeful life filled with joy and positive impact.',NULL),('phuongdd96','female','099867513','phuongdoanhdoanh@gmail.com','34, Toronto, Canada','123455678','https://scontent.fhan2-3.fna.fbcdn.net/v/t39.30808-6/332489386_3401774396729930_6971685825265049192_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=6NI-G2fpAWIAX-TDhGC&_nc_ht=scontent.fhan2-3.fna&oh=00_AfCWx0AQD7YnpnKjs6FQyJlGMFuGuHmLiY__HFJwpu835Q&oe=6461B5F2',500000,'Greetings! Im Phuong Doanh Doanh, a versatile individual with a passion for creativity and innovation. I possess a multifaceted skill set that spans across different disciplines. As a natural problem solver, I enjoy tackling complex challenges and finding innovative solutions. With a keen eye for detail and a love for aesthetics, I excel in graphic design and visual storytelling. Additionally, my strong analytical skills and strategic thinking make me an effective project manager, capable of leading teams towards successful outcomes. I thrive in dynamic environments that foster collaboration and growth, and Im always eager to embrace new opportunities that push me beyond my comfort zone.',NULL),('abcdxyz','true','5212412445','asdgsdgsda','fgdsagdsasd','1234','gasdghdsahh',500000,NULL,1),('abcdxyzasdasf','false','5212412445124124','asdgsdgsdaasdgfads','fgdsagdsasdasdfsda','123','gasdghdsahhdasdasd',500000,NULL,NULL),('sadfdsafdsg','true','42152152121','fgsdfshgdfgd','Hanoi, Vietnam','1234','gdsfgasdgag',500000,NULL,NULL),('trangdt12345','false','0978456123','trangnt12356@gmail.com','Hanoi, VietNam.','123','abcd',500000,NULL,NULL);
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-13 18:19:57
