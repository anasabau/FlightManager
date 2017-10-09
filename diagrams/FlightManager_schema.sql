CREATE TABLE `User` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`username` VARCHAR(255) NOT NULL UNIQUE,
	`password` VARCHAR(255) NOT NULL,
	`companyId` INT NOT NULL,
	`role_id` INT NOT NULL,
	`is_active` BOOLEAN NOT NULL,
	`first_name` varchar(30) NOT NULL,
	`last_name` varchar(30) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Company` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`country` VARCHAR(255) NOT NULL,
	`headquarters` VARCHAR(255) NOT NULL,
	`is_active` BOOLEAN NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Role` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Airport` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`city` VARCHAR(255) NOT NULL,
	`country` VARCHAR(255) NOT NULL,
	`is_active` BOOLEAN NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Plane` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`model` VARCHAR(255) NOT NULL,
	`registration_id` VARCHAR(255) NOT NULL UNIQUE,
	`company_id` VARCHAR(255) NOT NULL,
	`nr_sits` INT NOT NULL,
	`is_active` BOOLEAN NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Flight` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`plane_id` INT NOT NULL AUTO_INCREMENT,
	`departure_airport` INT NOT NULL AUTO_INCREMENT,
	`arival_airport` INT NOT NULL AUTO_INCREMENT,
	`departure_time` DATETIME NOT NULL,
	`arival_time` DATETIME NOT NULL,
	`state` blob NOT NULL,
	`pilot` BINARY NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Itinerarry` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Itinerary_Flight` (
	`itinerary_id` INT NOT NULL,
	`flight_id` INT NOT NULL
);

CREATE TABLE `Airport_Company` (
	`company_id` INT NOT NULL,
	`airport_id` INT NOT NULL
);

ALTER TABLE `User` ADD CONSTRAINT `User_fk0` FOREIGN KEY (`companyId`) REFERENCES `Company`(`id`);

ALTER TABLE `User` ADD CONSTRAINT `User_fk1` FOREIGN KEY (`role_id`) REFERENCES `Role`(`id`);

ALTER TABLE `Plane` ADD CONSTRAINT `Plane_fk0` FOREIGN KEY (`company_id`) REFERENCES `Company`(`id`);

ALTER TABLE `Flight` ADD CONSTRAINT `Flight_fk0` FOREIGN KEY (`plane_id`) REFERENCES `Plane`(`id`);

ALTER TABLE `Flight` ADD CONSTRAINT `Flight_fk1` FOREIGN KEY (`departure_airport`) REFERENCES `Airport`(`id`);

ALTER TABLE `Flight` ADD CONSTRAINT `Flight_fk2` FOREIGN KEY (`arival_airport`) REFERENCES `Airport`(`id`);

ALTER TABLE `Flight` ADD CONSTRAINT `Flight_fk3` FOREIGN KEY (`pilot`) REFERENCES `User`(`id`);

ALTER TABLE `Itinerary_Flight` ADD CONSTRAINT `Itinerary_Flight_fk0` FOREIGN KEY (`itinerary_id`) REFERENCES `Itinerarry`(`id`);

ALTER TABLE `Itinerary_Flight` ADD CONSTRAINT `Itinerary_Flight_fk1` FOREIGN KEY (`flight_id`) REFERENCES `Flight`(`id`);

ALTER TABLE `Airport_Company` ADD CONSTRAINT `Airport_Company_fk0` FOREIGN KEY (`company_id`) REFERENCES `Company`(`id`);

ALTER TABLE `Airport_Company` ADD CONSTRAINT `Airport_Company_fk1` FOREIGN KEY (`airport_id`) REFERENCES `Airport`(`id`);

