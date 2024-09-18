-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for 15_02_2024_projekt
CREATE DATABASE IF NOT EXISTS `15_02_2024_projekt` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `15_02_2024_projekt`;

-- Dumping structure for table 15_02_2024_projekt.login
CREATE TABLE IF NOT EXISTS `login` (
  `phone` int(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table 15_02_2024_projekt.login: ~0 rows (approximately)

-- Dumping structure for table 15_02_2024_projekt.save
CREATE TABLE IF NOT EXISTS `save` (
  `reg` varchar(50) NOT NULL DEFAULT '' COMMENT 'registracijas nummurs',
  `marka` varchar(50) NOT NULL,
  `modelis` varchar(50) NOT NULL,
  `svars` int(11) NOT NULL COMMENT 'svars kg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='crap thats saved\r\n';

-- Dumping data for table 15_02_2024_projekt.save: ~3 rows (approximately)
INSERT INTO `save` (`reg`, `marka`, `modelis`, `svars`) VALUES
	('cs-1543', 'bmw', '', 1650),
	('ab-6534', 'audi', '', 2000),
	('nf-5831', 'volvo', '', 1500);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
