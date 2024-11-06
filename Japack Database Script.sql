CREATE DATABASE IF NOT EXISTS `japackdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `japackdb`;

-- Table structure for `package_status`
DROP TABLE IF EXISTS `package_status`;
CREATE TABLE `package_status` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `admin_package_updater_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK80ung3ubmh4pakh38mcf631l6` (`admin_package_updater_id`),
  CONSTRAINT `FK80ung3ubmh4pakh38mcf631l6` FOREIGN KEY (`admin_package_updater_id`) REFERENCES `packageupdater` (`id`)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for `packageupdater`
DROP TABLE IF EXISTS `packageupdater`;
CREATE TABLE `packageupdater` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) DEFAULT NULL,
  `number_of_items` varchar(255) DEFAULT NULL,
  `package_description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `package_type` varchar(255) DEFAULT NULL,
  `package_value` varchar(255) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `package_status_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for `roles`
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `roleid` int NOT NULL,
  `rolename` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for `user_package`
DROP TABLE IF EXISTS `user_package`;
CREATE TABLE `user_package` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) DEFAULT NULL,
  `number_of_items` varchar(255) DEFAULT NULL,
  `package_description` varchar(255) DEFAULT NULL,
  `package_status` varchar(255) DEFAULT NULL,
  `package_type` varchar(255) DEFAULT NULL,
  `package_value` varchar(255) DEFAULT NULL,
  `seller` varchar(255) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `drop_off_address` varchar(255) DEFAULT NULL,
  `pick_up_address` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK23wrg2jabxivswndr07og5q0y` (`user_id`),
  CONSTRAINT `FK23wrg2jabxivswndr07og5q0y` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for `users`
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `age` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `roleid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleid_idx` (`roleid`),
  CONSTRAINT `roleid` FOREIGN KEY (`roleid`) REFERENCES `roles` (`roleid`)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
