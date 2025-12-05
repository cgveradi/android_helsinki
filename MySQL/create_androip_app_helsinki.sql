CREATE DATABASE IF NOT EXISTS android;

use android;

CREATE TABLE IF NOT EXISTS `categories` (
	`category_id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`category_name` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`category_id`)
);


CREATE TABLE IF NOT EXISTS `content_ratings` (
	`rating_id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`rating_name` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`rating_id`)
);


CREATE TABLE IF NOT EXISTS `types` (
	`type_id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`type_name` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`type_id`)
);


CREATE TABLE IF NOT EXISTS `genres` (
	`genre_id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`genre_name` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`genre_id`)
);


CREATE TABLE IF NOT EXISTS `applications` (
	`app_id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`app_name` VARCHAR(255) NOT NULL,
	`price` FLOAT NOT NULL,
	`reviews` BIGINT NOT NULL,
	`installs` BIGINT NOT NULL,
	`type_id` BIGINT NOT NULL,
	PRIMARY KEY(`app_id`)
);


CREATE TABLE IF NOT EXISTS `categories_applications` (
	`id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`category_id` BIGINT NOT NULL,
	`app_id` BIGINT NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `genres_applications` (
	`id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`app_id` BIGINT NOT NULL,
	`genre_id` BIGINT NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `content_applications` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`app_id` BIGINT NOT NULL,
	`rating_id` BIGINT NOT NULL,
	PRIMARY KEY(`id`)
);


ALTER TABLE `applications`
ADD FOREIGN KEY(`type_id`) REFERENCES `types`(`type_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `categories_applications`
ADD FOREIGN KEY(`category_id`) REFERENCES `categories`(`category_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `categories_applications`
ADD FOREIGN KEY(`app_id`) REFERENCES `applications`(`app_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `genres_applications`
ADD FOREIGN KEY(`app_id`) REFERENCES `applications`(`app_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `genres_applications`
ADD FOREIGN KEY(`genre_id`) REFERENCES `genres`(`genre_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `content_applications`
ADD FOREIGN KEY(`app_id`) REFERENCES `applications`(`app_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `content_applications`
ADD FOREIGN KEY(`rating_id`) REFERENCES `content_ratings`(`rating_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;