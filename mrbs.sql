-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for mrbs
CREATE DATABASE IF NOT EXISTS `mrbs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mrbs`;

-- Dumping structure for table mrbs.mrbs_area
CREATE TABLE IF NOT EXISTS `mrbs_area` (
  `id` int NOT NULL AUTO_INCREMENT,
  `disabled` tinyint NOT NULL DEFAULT '0',
  `area_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timezone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_admin_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `resolution` int DEFAULT NULL,
  `default_duration` int DEFAULT NULL,
  `default_duration_all_day` tinyint NOT NULL DEFAULT '0',
  `morningstarts` int DEFAULT NULL,
  `morningstarts_minutes` int DEFAULT NULL,
  `eveningends` int DEFAULT NULL,
  `eveningends_minutes` int DEFAULT NULL,
  `private_enabled` tinyint DEFAULT NULL,
  `private_default` tinyint DEFAULT NULL,
  `private_mandatory` tinyint DEFAULT NULL,
  `private_override` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_create_ahead_enabled` tinyint DEFAULT NULL,
  `min_create_ahead_secs` int DEFAULT NULL,
  `max_create_ahead_enabled` tinyint DEFAULT NULL,
  `max_create_ahead_secs` int DEFAULT NULL,
  `min_delete_ahead_enabled` tinyint DEFAULT NULL,
  `min_delete_ahead_secs` int DEFAULT NULL,
  `max_delete_ahead_enabled` tinyint DEFAULT NULL,
  `max_delete_ahead_secs` int DEFAULT NULL,
  `max_per_day_enabled` tinyint NOT NULL DEFAULT '0',
  `max_per_day` int NOT NULL DEFAULT '0',
  `max_per_week_enabled` tinyint NOT NULL DEFAULT '0',
  `max_per_week` int NOT NULL DEFAULT '0',
  `max_per_month_enabled` tinyint NOT NULL DEFAULT '0',
  `max_per_month` int NOT NULL DEFAULT '0',
  `max_per_year_enabled` tinyint NOT NULL DEFAULT '0',
  `max_per_year` int NOT NULL DEFAULT '0',
  `max_per_future_enabled` tinyint NOT NULL DEFAULT '0',
  `max_per_future` int NOT NULL DEFAULT '0',
  `max_secs_per_day_enabled` tinyint NOT NULL DEFAULT '0',
  `max_secs_per_day` int NOT NULL DEFAULT '0',
  `max_secs_per_week_enabled` tinyint NOT NULL DEFAULT '0',
  `max_secs_per_week` int NOT NULL DEFAULT '0',
  `max_secs_per_month_enabled` tinyint NOT NULL DEFAULT '0',
  `max_secs_per_month` int NOT NULL DEFAULT '0',
  `max_secs_per_year_enabled` tinyint NOT NULL DEFAULT '0',
  `max_secs_per_year` int NOT NULL DEFAULT '0',
  `max_secs_per_future_enabled` tinyint NOT NULL DEFAULT '0',
  `max_secs_per_future` int NOT NULL DEFAULT '0',
  `max_duration_enabled` tinyint NOT NULL DEFAULT '0',
  `max_duration_secs` int NOT NULL DEFAULT '0',
  `max_duration_periods` int NOT NULL DEFAULT '0',
  `custom_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `approval_enabled` tinyint DEFAULT NULL,
  `reminders_enabled` tinyint DEFAULT NULL,
  `enable_periods` tinyint DEFAULT NULL,
  `periods` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `confirmation_enabled` tinyint DEFAULT NULL,
  `confirmed_default` tinyint DEFAULT NULL,
  `times_along_top` tinyint NOT NULL DEFAULT '0',
  `default_type` char(1) NOT NULL DEFAULT 'E',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_area_name` (`area_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mrbs.mrbs_area: ~3 rows (approximately)
REPLACE INTO `mrbs_area` (`id`, `disabled`, `area_name`, `sort_key`, `timezone`, `area_admin_email`, `resolution`, `default_duration`, `default_duration_all_day`, `morningstarts`, `morningstarts_minutes`, `eveningends`, `eveningends_minutes`, `private_enabled`, `private_default`, `private_mandatory`, `private_override`, `min_create_ahead_enabled`, `min_create_ahead_secs`, `max_create_ahead_enabled`, `max_create_ahead_secs`, `min_delete_ahead_enabled`, `min_delete_ahead_secs`, `max_delete_ahead_enabled`, `max_delete_ahead_secs`, `max_per_day_enabled`, `max_per_day`, `max_per_week_enabled`, `max_per_week`, `max_per_month_enabled`, `max_per_month`, `max_per_year_enabled`, `max_per_year`, `max_per_future_enabled`, `max_per_future`, `max_secs_per_day_enabled`, `max_secs_per_day`, `max_secs_per_week_enabled`, `max_secs_per_week`, `max_secs_per_month_enabled`, `max_secs_per_month`, `max_secs_per_year_enabled`, `max_secs_per_year`, `max_secs_per_future_enabled`, `max_secs_per_future`, `max_duration_enabled`, `max_duration_secs`, `max_duration_periods`, `custom_html`, `approval_enabled`, `reminders_enabled`, `enable_periods`, `periods`, `confirmation_enabled`, `confirmed_default`, `times_along_top`, `default_type`) VALUES
	(1, 0, 'La Union Convention Center', '01-LUCC', 'Asia/Manila', 'gerry.binas-o@lorma.edu', 3600, 3600, 0, 0, 0, 23, 0, 0, 1, 1, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 0, 36000, 0, 90000, 0, 360000, 0, 360000, 0, 7200, 2, NULL, 1, 1, 0, '["Period 1","Period 2"]', 0, 0, 1, 'I'),
	(2, 0, 'Capitol Building', 'Capitol Building', 'Asia/Manila', '', 3600, 3600, 0, 0, 0, 23, 0, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 0, 36000, 0, 90000, 0, 360000, 0, 360000, 0, 7200, 2, NULL, 0, 1, 0, '["Period 1","Period 2"]', 1, 1, 0, 'I');

-- Dumping structure for table mrbs.mrbs_entry
CREATE TABLE IF NOT EXISTS `mrbs_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start_time` int NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
  `end_time` int NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
  `entry_type` int NOT NULL DEFAULT '0',
  `repeat_id` int DEFAULT NULL,
  `room_id` int NOT NULL DEFAULT '1',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'E',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_name` varchar(70) NOT NULL DEFAULT '0',
  `contact_office` varchar(70) NOT NULL DEFAULT '0',
  `contact_number` varchar(15) NOT NULL DEFAULT '0',
  `contact_email` varchar(70) NOT NULL DEFAULT '0',
  `contact_requirements` text NOT NULL,
  `terms_and_conditions` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  `reminded` int DEFAULT NULL,
  `info_time` int DEFAULT NULL,
  `info_user` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ical_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ical_sequence` smallint NOT NULL DEFAULT '0',
  `ical_recur_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_registration` tinyint NOT NULL DEFAULT '0',
  `registrant_limit` int NOT NULL DEFAULT '0',
  `registrant_limit_enabled` tinyint NOT NULL DEFAULT '1',
  `registration_opens` int NOT NULL DEFAULT '1209600' COMMENT 'Seconds before the start time',
  `registration_opens_enabled` tinyint NOT NULL DEFAULT '0',
  `registration_closes` int NOT NULL DEFAULT '0' COMMENT 'Seconds before the start_time',
  `registration_closes_enabled` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `repeat_id` (`repeat_id`),
  KEY `idxStartTime` (`start_time`),
  KEY `idxEndTime` (`end_time`),
  KEY `idxRoomStartEnd` (`room_id`,`start_time`,`end_time`),
  CONSTRAINT `mrbs_entry_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `mrbs_room` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `mrbs_entry_ibfk_2` FOREIGN KEY (`repeat_id`) REFERENCES `mrbs_repeat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mrbs.mrbs_entry: ~6 rows (approximately)
REPLACE INTO `mrbs_entry` (`id`, `start_time`, `end_time`, `entry_type`, `repeat_id`, `room_id`, `timestamp`, `create_by`, `modified_by`, `name`, `type`, `description`, `contact_name`, `contact_office`, `contact_number`, `contact_email`, `contact_requirements`, `terms_and_conditions`, `status`, `reminded`, `info_time`, `info_user`, `info_text`, `ical_uid`, `ical_sequence`, `ical_recur_id`, `allow_registration`, `registrant_limit`, `registrant_limit_enabled`, `registration_opens`, `registration_opens_enabled`, `registration_closes`, `registration_closes_enabled`) VALUES
	(98, 1729990800, 1729994400, 0, NULL, 1, '2024-10-27 12:32:05', 'ash', '', 'adf', 'I', 'adf', 'adf', 'pia', '1234', 'gerry.binas-o@lorma.edu', 'asdf', 1, 3, NULL, NULL, NULL, NULL, 'MRBS-671e32c5caf79-16dca09b@localhost', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0);

-- Dumping structure for table mrbs.mrbs_participants
CREATE TABLE IF NOT EXISTS `mrbs_participants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entry_id` int NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registered` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_entryid_username` (`entry_id`,`username`),
  CONSTRAINT `mrbs_participants_ibfk_1` FOREIGN KEY (`entry_id`) REFERENCES `mrbs_entry` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mrbs.mrbs_participants: ~0 rows (approximately)

-- Dumping structure for table mrbs.mrbs_repeat
CREATE TABLE IF NOT EXISTS `mrbs_repeat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start_time` int NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
  `end_time` int NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
  `rep_type` int NOT NULL DEFAULT '0',
  `end_date` int NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
  `rep_opt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `room_id` int NOT NULL DEFAULT '1',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'E',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_name` varchar(70) DEFAULT NULL,
  `contact_office` varchar(70) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  `contact_email` varchar(70) DEFAULT NULL,
  `contact_requirements` text,
  `terms_and_conditions` tinyint DEFAULT '0',
  `rep_interval` smallint NOT NULL DEFAULT '1',
  `month_absolute` smallint DEFAULT NULL,
  `month_relative` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  `reminded` int DEFAULT NULL,
  `info_time` int DEFAULT NULL,
  `info_user` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ical_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ical_sequence` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `room_id` (`room_id`),
  CONSTRAINT `mrbs_repeat_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `mrbs_room` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mrbs.mrbs_repeat: ~1 rows (approximately)
REPLACE INTO `mrbs_repeat` (`id`, `start_time`, `end_time`, `rep_type`, `end_date`, `rep_opt`, `room_id`, `timestamp`, `create_by`, `modified_by`, `name`, `type`, `description`, `contact_name`, `contact_office`, `contact_number`, `contact_email`, `contact_requirements`, `terms_and_conditions`, `rep_interval`, `month_absolute`, `month_relative`, `status`, `reminded`, `info_time`, `info_user`, `info_text`, `ical_uid`, `ical_sequence`) VALUES
	(1, 1728799200, 1728802800, 1, 1728972000, '0000000', 1, '2024-10-15 08:05:23', 'dyerry', 'dyerry', 'test meeting one', 'I', 'test meeting only', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'MRBS-670df7598f59e-8d4bc818@localhost', 1);

-- Dumping structure for table mrbs.mrbs_room
CREATE TABLE IF NOT EXISTS `mrbs_room` (
  `id` int NOT NULL AUTO_INCREMENT,
  `disabled` tinyint NOT NULL DEFAULT '0',
  `area_id` int NOT NULL DEFAULT '0',
  `room_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sort_key` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int NOT NULL DEFAULT '0',
  `room_admin_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `invalid_types` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON encoded',
  `custom_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_room_name` (`area_id`,`room_name`),
  KEY `idxSortKey` (`sort_key`),
  CONSTRAINT `mrbs_room_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `mrbs_area` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mrbs.mrbs_room: ~7 rows (approximately)
REPLACE INTO `mrbs_room` (`id`, `disabled`, `area_id`, `room_name`, `sort_key`, `description`, `capacity`, `room_admin_email`, `invalid_types`, `custom_html`) VALUES
	(1, 0, 1, 'Plenary', 'Plenary', 'Plenary', 1000, 'exploringdora@gmail.com', '[]', NULL),
	(2, 0, 1, 'Room 1', 'Room 1', 'Room 1', 10, 'exploringdora@gmail.com', '[]', NULL),
	(3, 0, 1, 'Room 2', 'Room 2', 'Room 2', 30, 'exploringdora@gmail.com', '[]', NULL),
	(7, 0, 2, 'Executive Room 1', 'Executive Room 1', '', 20, 'exploringdora@gmail.com', NULL, NULL),
	(8, 0, 2, 'Executive Room 2', 'Executive Room 2', '', 20, 'exploringdora@gmail.com', NULL, NULL),
	(9, 0, 2, 'BAC Conference', 'BAC Conference', '', 40, 'dyerry3179@gmail.com', '[]', NULL);

-- Dumping structure for table mrbs.mrbs_sessions
CREATE TABLE IF NOT EXISTS `mrbs_sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int unsigned DEFAULT NULL COMMENT 'Unix timestamp',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idxAccess` (`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mrbs.mrbs_sessions: ~71 rows (approximately)
REPLACE INTO `mrbs_sessions` (`id`, `access`, `data`) VALUES
	('05jp9okab5a8j23v81emnhd09t', 1728520318, 'csrf_token|s:64:"0632519ee083b9a80505b5cdcf7b54c8d6d2dbd53c9efdaf21170fd962304101";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-04 09:05:51";s:10:"last_login";i:1728519198;s:14:"reset_key_hash";s:60:"$2y$10$e2nGHgzp3v7pESiD/wnnNusyjaMiZP6uol0sj4Bn4QRg96mzh0.KS";s:16:"reset_key_expiry";i:1728090351;}}'),
	('06jnjg9jn7c20hfpv7uhd7is8e', 1727856829, ''),
	('0d1u6825e1v03bnisigjlgb64o', 1728143606, 'csrf_token|s:64:"62b51774049a318ba55302379ec02be88b93ca39f90399a10f0ea1d2ad0afe7b";last_page|s:65:"index.php?view=week&view_all=1&page_date=2024-10-05&area=4&room=1";this_page|s:66:"index.php?view=month&view_all=1&page_date=2024-10-05&area=4&room=1";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-04 09:05:51";s:10:"last_login";i:1728143581;s:14:"reset_key_hash";s:60:"$2y$10$e2nGHgzp3v7pESiD/wnnNusyjaMiZP6uol0sj4Bn4QRg96mzh0.KS";s:16:"reset_key_expiry";i:1728090351;}}'),
	('0gtjo0euj7c9e2b8d47q93tvrr', 1727856829, ''),
	('0i1b16lk5gaecs121q3jm9pgv6', 1730071252, 'csrf_token|s:64:"6209140f5196540aabe8732530366c4fded36bb7e381ef1f8c91b3530f61460b";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1730071252;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('0qual24nushgp6j6fmim6berm3', 1729173744, 'csrf_token|s:64:"caedf22ae32c5ff830fdd3588b4c0e4faff6453ebf6b0ed6c1756d713ccb90fd";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1729173520;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('13jgnbb5ao7b3n0ipj2ji71ei7', 1728259955, 'csrf_token|s:64:"c5cfa68d453b852f92ed6be1842b2a8bfe39379ca4c5d47e5149ad000b04af07";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-02 10:30:31";s:10:"last_login";i:1727940199;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|N;this_page|s:66:"index.php?view=month&view_all=0&page_date=2024-10-03&area=4&room=3";'),
	('140ghgsuhosd683uhg0e3qr9ve', 1728515695, 'csrf_token|s:64:"3ae399c363e12f8ae1d8be851148b59b7b9a443c4fb608e0174e2aff5ecc3154";'),
	('1iiah3q9rr9qhl8d3m6vo187q4', 1728287746, 'csrf_token|s:64:"cb4899b307e54d7fe23216f9e16e8a919b9415f2397a53dd3a587068be9cfa70";'),
	('2la252gsvug28deofm0lkrs0lv', 1727856829, 'csrf_token|s:64:"30d513b57e684d759c49f147994e94e92b1c24a8e974ed873153f49d9d961eeb";'),
	('2n32knglri2gdbu2cspo31vf00', 1727850508, 'csrf_token|s:64:"14ce741709c8ca714c6a4222c3cab745c72426f0b682c62873d85716687dcdc5";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1727850247;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|s:66:"index.php?view=month&view_all=0&page_date=2024-10-17&area=4&room=1";this_page|s:64:"index.php?view=day&view_all=0&page_date=2024-10-17&area=4&room=1";'),
	('2uklmm4r48p2k64qn1kut65dmi', 1730032375, 'csrf_token|s:64:"142569f9480f706630d52a2356a0b7421530b94128cb4488578b24a2b9b5efb4";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1730030313;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|N;this_page|s:65:"index.php?view=week&view_all=1&page_date=2024-10-27&area=1&room=1";'),
	('3741pn3645fvj5bpf4qrnvvf8u', 1728520441, 'csrf_token|s:64:"3ba9f88b07f16b9011185d62fc297bfb94d097e5ad39bbcdc37d95168ff9b658";'),
	('44a7q82co880pidfqtdhqibdt4', 1728267479, 'csrf_token|s:64:"bdfb8c637efc4f85128cf08b047cebd1398b291fef27ea3ae7cfe6ba1883c24f";'),
	('46471t74oao9htdmsr8c5mtau1', 1729768131, 'csrf_token|s:64:"065baa52e8df994db7759ff509377cfb21dd73b8bfe5ea52800c38f37311c9c6";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729645638;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('490i50o6it65r4e70gb3k3ea9b', 1727858743, 'csrf_token|s:64:"f7d12a2fbe0b9f482ccd8c20ba9b5e51522ec042da9264c6058d968d5edf327e";user|O:9:"MRBS\\User":5:{s:8:"username";s:5:"test1";s:12:"display_name";s:10:"test user1";s:5:"email";s:11:"asdf@ad.com";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:2;s:13:"password_hash";s:60:"$2y$10$U197PPtNxnDUkDg2aUVMr./gpNe/ZmTyYqkJKNQGQR29P3z/QG.2i";s:9:"timestamp";s:19:"2024-10-02 10:31:23";s:10:"last_login";i:1727858733;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('4i73r0lf6kboiks3uejl6pnjbq', 1728143130, 'csrf_token|s:64:"2234051a1ca01b55d6db7460d9e109f14a83f7d29b7f350021429458f0e2957d";'),
	('4mal3lqkifaembmpbsjr7ci924', 1728461670, 'csrf_token|s:64:"dad8fb01d8b82ff86fcd9e5c22d54482a2c2b41d3adb609b043951ada711ed88";last_page|N;this_page|s:66:"index.php?view=month&view_all=1&page_date=2024-10-09&area=4&room=1";'),
	('4n8798g2o0qhkara2ra28dvvjs', 1729493001, 'csrf_token|s:64:"5c126d4185d3e1c84065e5c1c5e26ebe4d4565a5c7eb3c512828b674b31e4eab";'),
	('55d3dur26subqba4ntrl3khu7s', 1729958455, 'csrf_token|s:64:"6ae2b67f927b01676055c981efb74e2c799ffcad54c5dfef09147e36e9d2eb0a";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1729653730;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('5rv4tt3kiepnkkkurfelcv817i', 1727850636, 'csrf_token|s:64:"16a7b105194ceda4f984ce0362b6f848028e4059db2f8723906cd91dfe954ed8";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1727850586;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('6mdu7c1rg00637d2ji45d799rj', 1728520688, 'csrf_token|s:64:"08a0dab670b8e974977b16c2afe175656865ea0e5444539887060de9108876fa";'),
	('6r5o5rp5ij5c6d6mbegjiv1385', 1728520957, 'csrf_token|s:64:"c8135328020269d01d527af600e5594d57857915e3e3a03848f950a3ecafea94";'),
	('6t12tf941qkmtemjhvje5dgc7r', 1728524631, 'csrf_token|s:64:"5160e728335b6add18e36ddc5c1a8c3939c71466151cd40d04c0faa4560017d2";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-10 08:43:51";s:10:"last_login";i:1728524630;s:14:"reset_key_hash";s:60:"$2y$10$w0KtFC8TiNXBp4s5G/deKe3ql0jauP2lJpK/DtHCx/zG1QUugIPni";s:16:"reset_key_expiry";i:1728607431;}}'),
	('74mdf38qsii085bu3sv7fm4u0k', 1728432914, 'csrf_token|s:64:"fc8fe55cae817a4c304a673f54e4820cf184c3f344f61a2edcbc5d75ea6acf9b";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-04 09:05:51";s:10:"last_login";i:1728432797;s:14:"reset_key_hash";s:60:"$2y$10$e2nGHgzp3v7pESiD/wnnNusyjaMiZP6uol0sj4Bn4QRg96mzh0.KS";s:16:"reset_key_expiry";i:1728090351;}}last_page|s:66:"index.php?view=month&view_all=1&page_date=2024-10-06&area=4&room=2";this_page|s:66:"index.php?view=month&view_all=1&page_date=2024-10-05&area=4&room=1";'),
	('7h1rsfugqoorjgqh1k0g7jb50c', 1729516032, 'csrf_token|s:64:"94cd7091251d64d2200afbf3140204aed5684e863b93b0737cb989383f8c124a";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729515902;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('7k96kfd55pc8hcnp8l2b7qrbsg', 1728268359, 'csrf_token|s:64:"75294d12033e9c1cc1ee804ca21fbdf93e372967c78ff3d147538d45af03503d";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-04 09:05:51";s:10:"last_login";i:1728268165;s:14:"reset_key_hash";s:60:"$2y$10$e2nGHgzp3v7pESiD/wnnNusyjaMiZP6uol0sj4Bn4QRg96mzh0.KS";s:16:"reset_key_expiry";i:1728090351;}}'),
	('7uabnni1gv09dale5s6s6hhm26', 1728142739, 'csrf_token|s:64:"b4d3fd50852efbb64f6f889f6e75f1fbc20b6680db978b2dad284ebf3b6ea67e";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-04 09:05:51";s:10:"last_login";i:1728142170;s:14:"reset_key_hash";s:60:"$2y$10$e2nGHgzp3v7pESiD/wnnNusyjaMiZP6uol0sj4Bn4QRg96mzh0.KS";s:16:"reset_key_expiry";i:1728090351;}}'),
	('84a2j59vpsagseivs5nj2l03a1', 1728444985, 'csrf_token|s:64:"636675056508cddbced02ab4ed7471187386c9d8320ceb17ae3ee60cefa7f6b6";user|O:9:"MRBS\\User":5:{s:8:"username";s:5:"elena";s:12:"display_name";s:14:"Elena Espiritu";s:5:"email";s:0:"";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:5;s:13:"password_hash";s:60:"$2y$10$DtK.q5jooIBV3OkUsTcsl.uEoDFN3XIkM9YKQhvT9R8fDVPrzuTa2";s:9:"timestamp";s:19:"2024-10-03 13:13:47";s:10:"last_login";i:1728442677;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|s:66:"index.php?view=month&view_all=1&page_date=2024-10-01&area=4&room=1";this_page|s:66:"index.php?view=month&view_all=1&page_date=2024-10-01&area=4&room=1";'),
	('8vhi4b3h9jf4rvsfq70dp52fjt', 1727856829, ''),
	('9a4dt1vqqpdvrs6mal54jbpiai', 1729261799, 'csrf_token|s:64:"d10bfa81f4eaeda1d9e4c9b1fdf8df4f50dd08f7e0b0822f92805816d35c4921";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1729255765;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|s:65:"index.php?view=week&view_all=1&page_date=2024-10-18&area=1&room=1";this_page|s:65:"index.php?view=week&view_all=1&page_date=2024-10-18&area=1&room=1";'),
	('a5843p1rteod33flkt5s048mc0', 1728279227, 'csrf_token|s:64:"e350104a34a46288afe91806c8388314e6ba078786dd2a7bda42581179802614";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-04 09:05:51";s:10:"last_login";i:1728261114;s:14:"reset_key_hash";s:60:"$2y$10$e2nGHgzp3v7pESiD/wnnNusyjaMiZP6uol0sj4Bn4QRg96mzh0.KS";s:16:"reset_key_expiry";i:1728090351;}}last_page|N;this_page|s:66:"index.php?view=month&view_all=1&page_date=2024-10-07&area=4&room=1";'),
	('af6eg46m1dpi87udv6p9rf7toq', 1729513691, 'csrf_token|s:64:"9f3316c6a7ad5536aeef018b56691f816f9f97de23811107895aa3456c9399dc";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729512436;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('b3vch11i0htklu1j51l8e0ccm8', 1729497455, 'csrf_token|s:64:"b30aa1918983add8b14d52b2477001ebee59487124d8bb24a5fe72ce8212364d";user|O:9:"MRBS\\User":5:{s:8:"username";s:5:"test1";s:12:"display_name";s:10:"test user1";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:2;s:13:"password_hash";s:60:"$2y$10$U197PPtNxnDUkDg2aUVMr./gpNe/ZmTyYqkJKNQGQR29P3z/QG.2i";s:9:"timestamp";s:19:"2024-10-15 16:48:40";s:10:"last_login";i:1729485130;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|N;this_page|s:66:"index.php?view=month&view_all=1&page_date=2024-10-21&area=1&room=1";'),
	('bfk334j7r01nhpd0naqent85q1', 1730071606, 'csrf_token|s:64:"569e816f734ae35680ae21396c677018d44088b3bb8fb232f1d1218f877fd207";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1730032615;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|N;this_page|s:64:"index.php?view=day&view_all=1&page_date=2024-10-27&area=1&room=1";'),
	('binaerq0ogg0dgo7dkjjscec11', 1730035648, 'csrf_token|s:64:"484cc1f3ed777583af890781ed615728cbdaf44fd57d5e1608dd4218c59fa7de";user|O:9:"MRBS\\User":5:{s:8:"username";s:5:"test1";s:12:"display_name";s:10:"test user1";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:2;s:13:"password_hash";s:60:"$2y$10$U197PPtNxnDUkDg2aUVMr./gpNe/ZmTyYqkJKNQGQR29P3z/QG.2i";s:9:"timestamp";s:19:"2024-10-15 16:48:40";s:10:"last_login";i:1730035535;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('d9tit4g02k59mqju3bc53m4p71', 1728137510, 'csrf_token|s:64:"d9e80924b1c9b2bb1cf34d41e91e80bdfd0f6b501591a578297756efd07e23af";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-04 09:05:51";s:10:"last_login";i:1728137469;s:14:"reset_key_hash";s:60:"$2y$10$e2nGHgzp3v7pESiD/wnnNusyjaMiZP6uol0sj4Bn4QRg96mzh0.KS";s:16:"reset_key_expiry";i:1728090351;}}'),
	('df8scarc71v2q7kt7cnavajnac', 1728522511, 'csrf_token|s:64:"b2ee78317203a2dcbb9e0633e653d9ee02437bcc3d1663bcfcb4b0cf6b9efa97";'),
	('dulkprn9g9qr8stljdrg1qgthc', 1728528570, 'csrf_token|s:64:"45f02e91a25125e627d93c0478d666cb304556be93222ef7e2d4a98adfffb7bd";user|O:9:"MRBS\\User":5:{s:8:"username";s:5:"test1";s:12:"display_name";s:10:"test user1";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:2;s:13:"password_hash";s:60:"$2y$10$U197PPtNxnDUkDg2aUVMr./gpNe/ZmTyYqkJKNQGQR29P3z/QG.2i";s:9:"timestamp";s:19:"2024-10-07 10:23:15";s:10:"last_login";i:1728515720;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('e6pr862qnk8c2fiv5usc6nrjq4', 1730075615, 'csrf_token|s:64:"8c7931922804192d9a3c46d67b931cdcc31257ed68b9eb2e1109a5f90f740305";last_page|N;this_page|s:53:"index.php?view=day&page_date=2024-10-27&area=1&room=1";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1730075615;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('e8l3om69be03f02hfkhh050o1b', 1728975647, 'csrf_token|s:64:"72fc8a2b5bb600b5d094ace211f11d8aebfbc69173da6d4b2e85423bcd017e58";'),
	('ea1comtaief96k8mbela0v6vo2', 1729488721, 'csrf_token|s:64:"4e8f5bcf9e516886e76804a898ac47d74a60162a213cfc3fcbbaa67554fc17ca";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729470738;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|N;this_page|s:66:"index.php?view=month&view_all=1&page_date=2024-10-21&area=1&room=1";'),
	('eqtipa0dc2sv604mvv4kvu2sp2', 1729491847, 'csrf_token|s:64:"ca6a8bd5fea08838ccb86da79988fb555e4654668470a459512f6a72d2ce1ba4";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729488630;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|s:65:"index.php?view=week&view_all=1&page_date=2024-10-18&area=1&room=1";this_page|s:66:"index.php?view=month&view_all=1&page_date=2024-10-18&area=1&room=1";'),
	('fjefg7v0sq9curf6lo16eqd58v', 1727913143, 'csrf_token|s:64:"747c9d5fdb26b8157a2897a925dcc322a96068d5b20ab351c22faad75cbad8bb";'),
	('gfmirqq1sccr1maghnm9bda4j9', 1727856829, ''),
	('h6ei1qog1kgjusoeg4o3urjt97', 1729598633, 'csrf_token|s:64:"7d4afdbfd766038972f58b0b75291785714cef955a58e026ed40fbab26c3ccc5";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1729598633;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('hmunlvi86s33gjmptp7bcsac3p', 1727856829, ''),
	('hto4vqpfi2mp9rdcj1e1k3spuj', 1729238534, 'csrf_token|s:64:"3a0ee41ebb466eab96b5716704c62c4759a51f4fbf2ccfb6e5b4d241157894b8";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1729210552;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('im7r2ipc1jv9vsmqjd5jbfcvgm', 1727914669, 'csrf_token|s:64:"9f967e30e3d57c1eee6d1cf83e8e30d3d000dc223e38d14cbe5c980ccf546b79";'),
	('j4rh17evduj6ha27hlsbb98sln', 1729865616, 'csrf_token|s:64:"c9ab8ca488b2d867dfc715714598127d6d84978199dbc9c68cd6afaab30eb5ae";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729819155;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('jipdea0cuppbso4l41t4qh2ta8', 1728269531, 'csrf_token|s:64:"f6ed187c5d0e3a701744c536e431d681339aff250b89b0d15e5dcd58271940c5";'),
	('kb1tmph3keqcr6d9suka1k9hee', 1728262770, 'csrf_token|s:64:"2975757495cf4754ab474dca7cdaa2f5dd244e669f66123725042baa8b924f6d";user|O:9:"MRBS\\User":5:{s:8:"username";s:5:"clyde";s:12:"display_name";s:12:"Clyde Quibin";s:5:"email";s:13:"asdf@asdf.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:6;s:13:"password_hash";s:60:"$2y$10$bLMe9vKqk6nUzlMXgufG6OTDytV.87/MkOQEw5D2Z9XoRZ1W7z0eO";s:9:"timestamp";s:19:"2024-10-07 08:32:09";s:10:"last_login";i:1728261471;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|s:65:"index.php?view=week&view_all=1&page_date=2024-10-07&area=5&room=6";this_page|s:65:"index.php?view=week&view_all=1&page_date=2024-10-07&area=5&room=6";'),
	('l819n990p3vhqr5676pbatf9vd', 1728870497, 'csrf_token|s:64:"18ab74d7464489fe060b984d6e54a303559713af8770d25e5fc456fce592b47a";last_page|s:64:"index.php?view=day&view_all=0&page_date=2024-10-05&area=1&room=1";this_page|s:66:"index.php?view=month&view_all=0&page_date=2024-10-05&area=1&room=1";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-10 08:43:51";s:10:"last_login";i:1728868952;s:14:"reset_key_hash";s:60:"$2y$10$w0KtFC8TiNXBp4s5G/deKe3ql0jauP2lJpK/DtHCx/zG1QUugIPni";s:16:"reset_key_expiry";i:1728607431;}}'),
	('lcp56ij61iava06u1r3ei9op7j', 1728968109, 'csrf_token|s:64:"16b66f3cd8979ae8aa3e95d040c464e952e0eefea27b5c088dabbda4a25785aa";user|O:9:"MRBS\\User":5:{s:8:"username";s:5:"clyde";s:12:"display_name";s:17:"Neil Clyde Quibin";s:5:"email";s:20:"mayuquibin@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:6;s:13:"password_hash";s:60:"$2y$10$bLMe9vKqk6nUzlMXgufG6OTDytV.87/MkOQEw5D2Z9XoRZ1W7z0eO";s:9:"timestamp";s:19:"2024-10-09 10:58:06";s:10:"last_login";i:1728452215;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|N;this_page|s:64:"index.php?view=day&view_all=1&page_date=2024-12-11&area=4&room=1";'),
	('ljngcsr5ger9e7ivjlr01hrij6', 1729903327, 'csrf_token|s:64:"29d51b769fabece39b19239ca058fd6f0c11dc060977efc5067a26437517b0d2";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729901406;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('mr3s246uhvnch5llch9nvb10is', 1729489825, 'csrf_token|s:64:"d830a31c26242a791119b12684f4d78ddd2f18ba52fe3dc0a68f927105dd0c78";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1729488733;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('ms64a7jttpu6sposdbu8jb6eds', 1728261427, 'csrf_token|s:64:"635d935ff490ffe31375a861dd120e81a8d5e68e978c5fcd47f9f2c2c7ea86ad";'),
	('n6uq3lqjtgch91usvp2uoko06s', 1727931941, 'csrf_token|s:64:"7cb43d72853969c20a36e4e25cc2e4d587c9fb151865af2ec5fed8931adca417";'),
	('nfa25323ft3ucv9ege3ngvb5d0', 1727911134, 'csrf_token|s:64:"01cc1481a767f0bd0f884ca9920747f6025dd3ad829597a4bb62e250dc052333";last_page|N;this_page|s:43:"index.php?view=day&view_all=1&area=1&room=4";'),
	('nn828kmfgotgk45hl3c7id2ls7', 1728983042, 'csrf_token|s:64:"d61d24ab189bd188f44a4bb3596871faabd0d28c2f094792ffa966d44457f597";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 15:00:20";s:10:"last_login";i:1728978358;s:14:"reset_key_hash";s:60:"$2y$10$lOXd4/F3XGRB72wwfuAtqudsFYj2xluKo5G4C8edKFuW7rhM4R6uS";s:16:"reset_key_expiry";i:1729062020;}}last_page|s:65:"index.php?view=week&view_all=1&page_date=2024-10-15&area=1&room=1";this_page|s:44:"index.php?view=week&view_all=0&area=1&room=1";'),
	('o16o7vtnfnhnm24fhc50peq6h2', 1728875701, 'csrf_token|s:64:"e4094489123caf32418068f3658daaca23449eb2e1e386342d71de779992cce1";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-10 08:43:51";s:10:"last_login";i:1728874986;s:14:"reset_key_hash";s:60:"$2y$10$w0KtFC8TiNXBp4s5G/deKe3ql0jauP2lJpK/DtHCx/zG1QUugIPni";s:16:"reset_key_expiry";i:1728607431;}}'),
	('op12bouvtk4qmqcoj38ln103ft', 1728137378, 'csrf_token|s:64:"ed477ef4b1fb2ccff77f63e0c0c16c6b3a21c422327704aeeda850e27a73810b";'),
	('pipigu4iig7gha4fk0vfd0oc1b', 1727855160, 'csrf_token|s:64:"53dfcfc32d3b0c80668643ae62cbef76be1744cad1830af9eeee257012a6b8cd";'),
	('r291asp96rpqijajelok08f1ps', 1729788018, 'csrf_token|s:64:"f0e38534434d262c6fedc255e1f3a0991b0d75061f66789a5a118e65a3eefb2b";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729784617;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('r9lg47mhc95lvacb7anf8k8fj0', 1729516290, 'csrf_token|s:64:"ea277da5a480bb121d10bd4e67f410a4f9447b25009c6e3a31a5ad47e3cba96c";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729516213;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('slv6ocqghrnfueao8ph4vuc7r9', 1729959097, 'csrf_token|s:64:"ef4586f7eadf7724e293d545228880f588411f5e743ea429489979201ebeb802";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1729958493;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('sno3o0im8c2mkdnbrrl57mgpas', 1728028073, 'csrf_token|s:64:"d7b328d79225d01e3f339ccfa4303ac89e07a9d6fa8036bbb7c4ef51c6c2ab5e";user|O:9:"MRBS\\User":5:{s:8:"username";s:5:"test1";s:12:"display_name";s:10:"test user1";s:5:"email";s:11:"asdf@ad.com";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:2;s:13:"password_hash";s:60:"$2y$10$U197PPtNxnDUkDg2aUVMr./gpNe/ZmTyYqkJKNQGQR29P3z/QG.2i";s:9:"timestamp";s:19:"2024-10-02 10:31:23";s:10:"last_login";i:1728002559;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|N;this_page|s:66:"index.php?view=month&view_all=1&page_date=2024-10-07&area=5&room=6";'),
	('t40vn4c5csuaaf8d2mckumdm21', 1729207743, 'csrf_token|s:64:"39890407d72d00547179d2734e4c919a68c2304514a272e52b082b7046ef179f";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1729207721;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('te5daph2n6n44vjpcuj1mgsl3r', 1728983366, 'csrf_token|s:64:"42ca0e9e0e7c624a63808cc312a796b5add8e3018559d6e916e5bff7048d3f03";'),
	('tm4gq2t6l58o8gncp40rn2p7kl', 1729871552, 'csrf_token|s:64:"00cdaf97c5fc33ef98097439daf4bb8b42faefdc13e0ac7dc559fc5693274665";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729866134;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('ub47ugno7g7e55ubraal3sbve2', 1727856829, ''),
	('vd03k2pdrlknqs1iedgfkr3ijp', 1728137322, 'csrf_token|s:64:"b28ac70c75c7205938d63d709f7055600e432fccc561d450c260d0a68ef574e1";last_page|N;this_page|s:66:"index.php?view=month&view_all=0&page_date=2024-10-05&area=4&room=1";'),
	('vddpohga3pe6j5v9490gaqakfh', 1729906781, 'csrf_token|s:64:"7c69bbbc69f0450ed4eb3810e78d1fc80708b79285193ae303214599f4f2d4df";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729904509;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('vo0m4ee4u42o2qedshep6rmbeq', 1730035883, 'csrf_token|s:64:"5b80f56cf6d7dfc10eaa450900901cb0d8622970d04c4336b0cc0cf3dce3ef85";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729955316;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|s:64:"index.php?view=day&view_all=1&page_date=2024-10-27&area=1&room=1";this_page|s:64:"index.php?view=day&view_all=1&page_date=2024-10-26&area=1&room=1";');

-- Dumping structure for table mrbs.mrbs_users
CREATE TABLE IF NOT EXISTS `mrbs_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `level` smallint NOT NULL DEFAULT '0',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login` int NOT NULL DEFAULT '0',
  `reset_key_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_key_expiry` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mrbs.mrbs_users: ~6 rows (approximately)
REPLACE INTO `mrbs_users` (`id`, `level`, `name`, `display_name`, `password_hash`, `email`, `timestamp`, `last_login`, `reset_key_hash`, `reset_key_expiry`) VALUES
	(1, 2, 'dyerry', 'dyerry', '$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe', 'exploringdora@gmail.com', '2024-10-15 08:48:41', 1730071252, NULL, 0),
	(2, 1, 'test1', 'test user1', '$2y$10$U197PPtNxnDUkDg2aUVMr./gpNe/ZmTyYqkJKNQGQR29P3z/QG.2i', 'exploringdora@gmail.com', '2024-10-15 08:48:40', 1730035535, NULL, 0),
	(3, 1, 'test2', 'Test None', '$2y$10$liZzm.bGjBrtiQGdVphAuuPLG8zWQIhXLWd312dFN..EdsA9iK7xe', 'asdf@asd.com', '2024-10-02 03:40:52', 1727840413, NULL, 0),
	(4, 1, 'ash', 'Ashley Ebreo', '$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq', 'webmaster@launion.gov.ph', '2024-10-02 03:41:27', 1730075615, NULL, 0),
	(5, 2, 'elena', 'Elena Espiritu', '$2y$10$DtK.q5jooIBV3OkUsTcsl.uEoDFN3XIkM9YKQhvT9R8fDVPrzuTa2', 'mec.espiritu@gmail.com', '2024-10-09 03:05:41', 1728442677, NULL, 0),
	(6, 2, 'clyde', 'Neil Clyde Quibin', '$2y$10$bLMe9vKqk6nUzlMXgufG6OTDytV.87/MkOQEw5D2Z9XoRZ1W7z0eO', 'mayuquibin@gmail.com', '2024-10-09 02:58:06', 1728967166, NULL, 0);

-- Dumping structure for table mrbs.mrbs_variables
CREATE TABLE IF NOT EXISTS `mrbs_variables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `variable_name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variable_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_variable_name` (`variable_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mrbs.mrbs_variables: ~3 rows (approximately)
REPLACE INTO `mrbs_variables` (`id`, `variable_name`, `variable_content`) VALUES
	(1, 'db_version', '82'),
	(2, 'local_db_version', '1'),
	(3, 'message', '{"text":"","from":"","until":""}');

-- Dumping structure for table mrbs.mrbs_zoneinfo
CREATE TABLE IF NOT EXISTS `mrbs_zoneinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timezone` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `outlook_compatible` tinyint unsigned NOT NULL DEFAULT '0',
  `vtimezone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_updated` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_timezone` (`timezone`,`outlook_compatible`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mrbs.mrbs_zoneinfo: ~0 rows (approximately)
REPLACE INTO `mrbs_zoneinfo` (`id`, `timezone`, `outlook_compatible`, `vtimezone`, `last_updated`) VALUES
	(1, 'Asia/Manila', 1, 'BEGIN:VTIMEZONE\r\nTZID:Asia/Manila\r\nLAST-MODIFIED:20221013T075636Z\r\nTZURL:http://tzurl.org/zoneinfo-outlook/Asia/Manila\r\nX-LIC-LOCATION:Asia/Manila\r\nBEGIN:STANDARD\r\nTZNAME:PST\r\nTZOFFSETFROM:+0800\r\nTZOFFSETTO:+0800\r\nDTSTART:19700101T000000\r\nEND:STANDARD\r\nEND:VTIMEZONE', 1728968437);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
