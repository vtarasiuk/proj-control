-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema proj-control
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `proj-control` ;

-- -----------------------------------------------------
-- Schema proj-control
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `proj-control` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `proj-control` ;

-- -----------------------------------------------------
-- Table `proj-control`.`projects`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proj-control`.`projects` ;

CREATE TABLE IF NOT EXISTS `proj-control`.`projects` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proj-control`.`roles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proj-control`.`roles` ;

CREATE TABLE IF NOT EXISTS `proj-control`.`roles` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(16) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proj-control`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proj-control`.`users` ;

CREATE TABLE IF NOT EXISTS `proj-control`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `createdAt` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proj-control`.`collaborations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proj-control`.`collaborations` ;

CREATE TABLE IF NOT EXISTS `proj-control`.`collaborations` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `project` INT NOT NULL,
  `role` INT NOT NULL,
  `user` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_collaborations_projects_idx` (`project` ASC) VISIBLE,
  INDEX `fk_collaborations_roles1_idx` (`role` ASC) VISIBLE,
  INDEX `fk_collaborations_users1_idx` (`user` ASC) VISIBLE,
  CONSTRAINT `fk_collaborations_projects`
    FOREIGN KEY (`project`)
    REFERENCES `proj-control`.`projects` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_collaborations_roles`
    FOREIGN KEY (`role`)
    REFERENCES `proj-control`.`roles` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_collaborations_users`
    FOREIGN KEY (`user`)
    REFERENCES `proj-control`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proj-control`.`tasks`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proj-control`.`tasks` ;

CREATE TABLE IF NOT EXISTS `proj-control`.`tasks` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NULL,
  `description` VARCHAR(1024) NULL,
  `deadline` DATETIME NULL,
  `owner` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tasks_users1_idx` (`owner` ASC) VISIBLE,
  CONSTRAINT `fk_tasks_users1`
    FOREIGN KEY (`owner`)
    REFERENCES `proj-control`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proj-control`.`assignees`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proj-control`.`assignees` ;

CREATE TABLE IF NOT EXISTS `proj-control`.`assignees` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user` INT NOT NULL,
  `task` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_assignees_tasks1_idx` (`task` ASC) VISIBLE,
  INDEX `fk_assignees_users1_idx` (`user` ASC) VISIBLE,
  CONSTRAINT `fk_assignees_tasks`
    FOREIGN KEY (`task`)
    REFERENCES `proj-control`.`tasks` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_assignees_users`
    FOREIGN KEY (`user`)
    REFERENCES `proj-control`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proj-control`.`states`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proj-control`.`states` ;

CREATE TABLE IF NOT EXISTS `proj-control`.`states` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(16) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proj-control`.`artifacts`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proj-control`.`artifacts` ;

CREATE TABLE IF NOT EXISTS `proj-control`.`artifacts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `url` VARCHAR(1024) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proj-control`.`actions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proj-control`.`actions` ;

CREATE TABLE IF NOT EXISTS `proj-control`.`actions` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(127) NULL,
  `createdAt` DATETIME NULL,
  `actor` INT NOT NULL,
  `state` INT NOT NULL,
  `subject_artifact` INT NULL,
  `subject_task` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_actions_users1_idx` (`actor` ASC) VISIBLE,
  INDEX `fk_actions_tasks1_idx` (`subject_task` ASC) VISIBLE,
  INDEX `fk_actions_states1_idx` (`state` ASC) VISIBLE,
  INDEX `fk_actions_artifacts1_idx` (`subject_artifact` ASC) VISIBLE,
  CONSTRAINT `fk_actions_users1`
    FOREIGN KEY (`actor`)
    REFERENCES `proj-control`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_actions_tasks1`
    FOREIGN KEY (`subject_task`)
    REFERENCES `proj-control`.`tasks` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_actions_states1`
    FOREIGN KEY (`state`)
    REFERENCES `proj-control`.`states` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_actions_artifacts1`
    FOREIGN KEY (`subject_artifact`)
    REFERENCES `proj-control`.`artifacts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proj-control`.`attachments`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proj-control`.`attachments` ;

CREATE TABLE IF NOT EXISTS `proj-control`.`attachments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `role` VARCHAR(45) NULL,
  `comment` VARCHAR(255) NULL,
  `artifact` INT NOT NULL,
  `task` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_attachments_artifacts1_idx` (`artifact` ASC) VISIBLE,
  INDEX `fk_attachments_tasks1_idx` (`task` ASC) VISIBLE,
  CONSTRAINT `fk_attachments_artifacts1`
    FOREIGN KEY (`artifact`)
    REFERENCES `proj-control`.`artifacts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_attachments_tasks1`
    FOREIGN KEY (`task`)
    REFERENCES `proj-control`.`tasks` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
