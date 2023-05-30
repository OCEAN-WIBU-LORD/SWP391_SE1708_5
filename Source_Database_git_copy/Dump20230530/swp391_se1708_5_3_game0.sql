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
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES ('1','League Of Legends','League of Legends (LoL) is a popular online multiplayer video game developed and published by Riot Games. It is a free-to-play game that falls under the genre of multiplayer online battle arena (MOBA). In League of Legends, players assume the role of a \"champion\" with unique abilities and engage in team-based combat against other players or computer-controlled opponents. The game is played from a top-down perspective, where two teams, typically consisting of five players each, compete to destroy the enemy team'),('2','Minecraft','Minecraft is a popular sandbox video game created by Markus Persson and later developed and published by Mojang Studios. It was initially released in 2011 and has since become one of the best-selling video games of all time.\n\nIn Minecraft, players are placed in a vast open world that is procedurally generated and composed of different types of blocks. The game offers various modes, including survival mode, creative mode, adventure mode, and more. \n\nIn survival mode, players must gather resources, build shelters, craft tools and weapons, and survive against various creatures and challenges. Players need to manage their health, hunger, and inventory while exploring the world and facing enemies like zombies, skeletons, spiders, and more.\n\nCreative mode allows players to have unlimited resources and the ability to fly, enabling them to freely build and create structures, artwork, and complex designs without the constraints of survival gameplay. Adventure mode is similar to survival mode but with specific restrictions, allowing players to experience custom-designed maps and gameplay created by other players.\n\nMinecraft also offers multiplayer modes, allowing players to interact and collaborate with others in building, exploring, and engaging in various activities together.\n\nOne of the defining features of Minecraft is its block-based nature. Players can break and place blocks to build structures, create landscapes, and design intricate environments. The game encourages creativity and exploration, and it has a vast and active community that contributes to the development of mods, custom maps, and other user-generated content.\n\nMinecrafts enduring popularity can be attributed to its open-ended gameplay, endless possibilities for creativity, and the ability to appeal to players of all ages. It is available on multiple platforms, including PC, consoles, and mobile devices.'),('3','Fornite','Fortnite is a popular online multiplayer video game developed and published by Epic Games. It was first released in 2017 and has gained significant popularity worldwide.\n\nFortnite is a free-to-play game that falls under the genre of battle royale. In the game, players are dropped onto an island and compete against each other to be the last person or team standing. The game features a vibrant and colorful world with a variety of landscapes and environments.\n\nPlayers can choose to play solo, in duos, or in squads, and they can communicate with their teammates via voice chat or text chat. The goal is to gather weapons, resources, and equipment to survive and eliminate other players while avoiding the shrinking playable area known as the \"Storm Eye.\" The game also incorporates building mechanics, allowing players to construct structures using materials they collect, which adds an element of strategy and creativity to the gameplay.\n\nFortnite has a unique visual style and incorporates elements of shooting, building, and exploration. It offers a range of weapons, items, and gameplay mechanics to keep the experience dynamic and engaging. The game also includes limited-time events, challenges, and a battle pass system that allows players to unlock cosmetic items and rewards as they progress.\n\nIn addition to the battle royale mode, Fortnite features other game modes, such as Creative mode, where players can build and design their own worlds, and Save the World mode, which is a cooperative player-versus-environment experience.\n\nFortnite has become a cultural phenomenon, attracting millions of players of all ages and boasting a vibrant esports scene. It is available on various platforms, including PC, consoles, and mobile devices, making it accessible to a wide audience.'),('4','GTA','GTA stands for Grand Theft Auto, which is a popular video game series created by David Jones and Mike Dailly. The franchise is developed by Rockstar Games, a subsidiary of Take-Two Interactive. GTA is known for its open-world gameplay, action-adventure elements, and immersive storytelling.\n\nThe Grand Theft Auto series is set in fictional cities that resemble real-life locations, providing players with a vast and interactive environment to explore. The games typically feature a mix of missions, activities, and open-ended gameplay that allows players to freely roam and engage in various criminal activities.\n\nIn GTA games, players assume the role of a protagonist who is often involved in criminal activities such as theft, smuggling, and organized crime. The gameplay involves completing missions and tasks, which can include driving vehicles, combat, shooting, and interacting with non-player characters (NPCs) in the game world.\n\nThe series has gained recognition for its engaging narratives, satirical social commentary, and attention to detail in recreating expansive cityscapes. Each installment of GTA introduces new characters, stories, and gameplay mechanics, offering a fresh experience with every release.\n\nWhile the core gameplay of GTA revolves around the single-player campaign, several games in the series also feature multiplayer modes. GTA Online, for example, provides an online multiplayer experience where players can interact, participate in missions, and engage in various activities with other players in the game world.\n\nThe Grand Theft Auto series has become one of the most successful and influential video game franchises of all time, with each new release eagerly anticipated by fans. It has received critical acclaim for its immersive gameplay, open-world exploration, and cinematic storytelling, as well as its ability to push the boundaries of interactive entertainment.');
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

-- Dump completed on 2023-05-31  0:08:17
