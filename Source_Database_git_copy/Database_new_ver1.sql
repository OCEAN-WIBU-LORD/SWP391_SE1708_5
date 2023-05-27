-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema swp391_se1708_5_3
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema swp391_se1708_5_3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `swp391_se1708_5_3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `swp391_se1708_5_3` ;

-- -----------------------------------------------------
-- Table `swp391_se1708_5_3`.`game`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `swp391_se1708_5_3`.`game` (
  `game_id` VARCHAR(50) CHARACTER SET 'utf8mb3' NOT NULL,
  `game_name` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `game_discription` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `game_type` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  PRIMARY KEY (`game_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `swp391_se1708_5_3`.`player`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `swp391_se1708_5_3`.`player` (
  `player_id` VARCHAR(50) CHARACTER SET 'utf8mb3' NOT NULL,
  `player_name` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `gender` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `phone_number` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `num_of_star` INT NULL DEFAULT NULL,
  `password` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `game_played` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `link_image` VARCHAR(500) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  INDEX `fk_player_game_played` (`game_played` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `swp391_se1708_5_3`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `swp391_se1708_5_3`.`user` (
  `user_id` VARCHAR(50) CHARACTER SET 'utf8mb3' NOT NULL,
  `full_name` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `swp391_se1708_5_3`.`booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `swp391_se1708_5_3`.`booking` (
  `booking_id` VARCHAR(50) CHARACTER SET 'utf8mb3' NOT NULL,
  `user_id` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `player_id` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `total_hour` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `game_id` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  INDEX `fk_Booking_user_id` (`user_id` ASC) VISIBLE,
  INDEX `fk_booking_game_id` (`game_id` ASC) VISIBLE,
  INDEX `fk_booking_player_id` (`player_id` ASC) VISIBLE,
  CONSTRAINT `fk_booking_game_id`
    FOREIGN KEY (`game_id`)
    REFERENCES `swp391_se1708_5_3`.`game` (`game_id`),
  CONSTRAINT `fk_booking_player_id`
    FOREIGN KEY (`player_id`)
    REFERENCES `swp391_se1708_5_3`.`player` (`player_id`),
  CONSTRAINT `fk_Booking_user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `swp391_se1708_5_3`.`user` (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `swp391_se1708_5_3`.`booking_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `swp391_se1708_5_3`.`booking_details` (
  `price` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `total_price` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `hour` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `total_hour` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `date_booking` DATETIME NULL DEFAULT NULL,
  `game_id` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `booking_id` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  INDEX `fk_Booking_Details_booking_id` (`booking_id` ASC) VISIBLE,
  CONSTRAINT `fk_Booking_Details_booking_id`
    FOREIGN KEY (`booking_id`)
    REFERENCES `swp391_se1708_5_3`.`booking` (`booking_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `swp391_se1708_5_3`.`user_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `swp391_se1708_5_3`.`user_details` (
  `user_id` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `gender` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `phone_number` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `gmail` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `address` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `password` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `link_image` VARCHAR(500) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  INDEX `fk_user_details__game_id` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_user_details__game_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `swp391_se1708_5_3`.`user` (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `swp391_se1708_5_3`.`comment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `swp391_se1708_5_3`.`comment` (
  `player_id` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `user_id` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `comment` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `num_of_star` INT NULL DEFAULT NULL,
  INDEX `user_id` (`user_id` ASC) VISIBLE,
  INDEX `player_id` (`player_id` ASC) VISIBLE,
  CONSTRAINT `comment_ibfk_1`
    FOREIGN KEY (`user_id`)
    REFERENCES `swp391_se1708_5_3`.`user_details` (`user_id`),
  CONSTRAINT `comment_ibfk_2`
    FOREIGN KEY (`player_id`)
    REFERENCES `swp391_se1708_5_3`.`player` (`player_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `swp391_se1708_5_3`.`game_played`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `swp391_se1708_5_3`.`game_played` (
  `game_id` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `player_id` VARCHAR(250) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  INDEX `fk_game_played_game_id` (`game_id` ASC) VISIBLE,
  INDEX `fk_game_played_player_id` (`player_id` ASC) VISIBLE,
  CONSTRAINT `fk_game_played_game_id`
    FOREIGN KEY (`game_id`)
    REFERENCES `swp391_se1708_5_3`.`game` (`game_id`),
  CONSTRAINT `fk_game_played_player_id`
    FOREIGN KEY (`player_id`)
    REFERENCES `swp391_se1708_5_3`.`player` (`player_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `swp391_se1708_5_3`.`game_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `swp391_se1708_5_3`.`game_type` (
  `game_id` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `game_type` VARCHAR(50) CHARACTER SET 'utf8mb3' NOT NULL,
  PRIMARY KEY (`game_type`),
  INDEX `fk_game_type_game_id` (`game_id` ASC) VISIBLE,
  CONSTRAINT `fk_game_type_game_id`
    FOREIGN KEY (`game_id`)
    REFERENCES `swp391_se1708_5_3`.`game` (`game_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `swp391_se1708_5_3`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `swp391_se1708_5_3`.`role` (
  `role_id` VARCHAR(50) CHARACTER SET 'utf8mb3' NOT NULL,
  `role_name` VARCHAR(50) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `swp391_se1708_5_3`.`user_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `swp391_se1708_5_3`.`user_role` (
  `role_id` VARCHAR(50) CHARACTER SET 'utf8mb3' NOT NULL,
  `user_id` VARCHAR(50) CHARACTER SET 'utf8mb3' NOT NULL,
  PRIMARY KEY (`user_id`),
  INDEX `fk_user_role_role_id` (`role_id` ASC) VISIBLE,
  CONSTRAINT `fk_user_role_role_id`
    FOREIGN KEY (`role_id`)
    REFERENCES `swp391_se1708_5_3`.`role` (`role_id`),
  CONSTRAINT `user_role_ibfk_1`
    FOREIGN KEY (`user_id`)
    REFERENCES `swp391_se1708_5_3`.`user` (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
