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
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game` (
  `game_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `game_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `game_discription` text,
  `game_type` varchar(50) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES ('1','Pinball ','','Puzzle',1),('2','Minecraft','Minecraft is a popular sandbox video game created by Markus Persson and later developed and published by Mojang Studios. It was initially released in 2011 and has since become one of the best-selling video games of all time.\n\nIn Minecraft, players are placed in a vast open world that is procedurally generated and composed of different types of blocks. The game offers various modes, including survival mode, creative mode, adventure mode, and more. \n\nIn survival mode, players must gather resources, build shelters, craft tools and weapons, and survive against various creatures and challenges. Players need to manage their health, hunger, and inventory while exploring the world and facing enemies like zombies, skeletons, spiders, and more.\n\nCreative mode allows players to have unlimited resources and the ability to fly, enabling them to freely build and create structures, artwork, and complex designs without the constraints of survival gameplay. Adventure mode is similar to survival mode but with specific restrictions, allowing players to experience custom-designed maps and gameplay created by other players.\n\nMinecraft also offers multiplayer modes, allowing players to interact and collaborate with others in building, exploring, and engaging in various activities together.\n\nOne of the defining features of Minecraft is its block-based nature. Players can break and place blocks to build structures, create landscapes, and design intricate environments. The game encourages creativity and exploration, and it has a vast and active community that contributes to the development of mods, custom maps, and other user-generated content.\n\nMinecrafts enduring popularity can be attributed to its open-ended gameplay, endless possibilities for creativity, and the ability to appeal to players of all ages. It is available on multiple platforms, including PC, consoles, and mobile devices.',NULL,1),('3','Fornite','Fortnite is a popular online multiplayer video game developed and published by Epic Games. It was first released in 2017 and has gained significant popularity worldwide.\n\nFortnite is a free-to-play game that falls under the genre of battle royale. In the game, players are dropped onto an island and compete against each other to be the last person or team standing. The game features a vibrant and colorful world with a variety of landscapes and environments.\n\nPlayers can choose to play solo, in duos, or in squads, and they can communicate with their teammates via voice chat or text chat. The goal is to gather weapons, resources, and equipment to survive and eliminate other players while avoiding the shrinking playable area known as the \"Storm Eye.\" The game also incorporates building mechanics, allowing players to construct structures using materials they collect, which adds an element of strategy and creativity to the gameplay.\n\nFortnite has a unique visual style and incorporates elements of shooting, building, and exploration. It offers a range of weapons, items, and gameplay mechanics to keep the experience dynamic and engaging. The game also includes limited-time events, challenges, and a battle pass system that allows players to unlock cosmetic items and rewards as they progress.\n\nIn addition to the battle royale mode, Fortnite features other game modes, such as Creative mode, where players can build and design their own worlds, and Save the World mode, which is a cooperative player-versus-environment experience.\n\nFortnite has become a cultural phenomenon, attracting millions of players of all ages and boasting a vibrant esports scene. It is available on various platforms, including PC, consoles, and mobile devices, making it accessible to a wide audience.',NULL,1),('4','Candy Crush','',NULL,1),('5','PUBG','',NULL,1),('6','Fireboy and Watergirl','',NULL,1),('7','Star War','','Fighting games',1),('8','test game 1','',NULL,1),('9','test game2 ','',NULL,1);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
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
