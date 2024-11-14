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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mrbs.mrbs_area: ~3 rows (approximately)
REPLACE INTO `mrbs_area` (`id`, `disabled`, `area_name`, `sort_key`, `timezone`, `area_admin_email`, `resolution`, `default_duration`, `default_duration_all_day`, `morningstarts`, `morningstarts_minutes`, `eveningends`, `eveningends_minutes`, `private_enabled`, `private_default`, `private_mandatory`, `private_override`, `min_create_ahead_enabled`, `min_create_ahead_secs`, `max_create_ahead_enabled`, `max_create_ahead_secs`, `min_delete_ahead_enabled`, `min_delete_ahead_secs`, `max_delete_ahead_enabled`, `max_delete_ahead_secs`, `max_per_day_enabled`, `max_per_day`, `max_per_week_enabled`, `max_per_week`, `max_per_month_enabled`, `max_per_month`, `max_per_year_enabled`, `max_per_year`, `max_per_future_enabled`, `max_per_future`, `max_secs_per_day_enabled`, `max_secs_per_day`, `max_secs_per_week_enabled`, `max_secs_per_week`, `max_secs_per_month_enabled`, `max_secs_per_month`, `max_secs_per_year_enabled`, `max_secs_per_year`, `max_secs_per_future_enabled`, `max_secs_per_future`, `max_duration_enabled`, `max_duration_secs`, `max_duration_periods`, `custom_html`, `approval_enabled`, `reminders_enabled`, `enable_periods`, `periods`, `confirmation_enabled`, `confirmed_default`, `times_along_top`, `default_type`) VALUES
	(1, 0, 'Convention Center', '01-LUCC', 'Asia/Manila', 'gerry.binas-o@lorma.edu', 3600, 3600, 0, 0, 0, 23, 0, 0, 1, 1, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 0, 36000, 0, 90000, 0, 360000, 0, 360000, 0, 7200, 2, NULL, 1, 1, 0, '["Period 1","Period 2"]', 0, 1, 1, 'I'),
	(2, 0, 'Capitol Building', 'Capitol Building', 'Asia/Manila', '', 3600, 3600, 0, 0, 0, 23, 0, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 0, 36000, 0, 90000, 0, 360000, 0, 360000, 0, 7200, 2, NULL, 1, 1, 0, '["Period 1","Period 2"]', 0, 0, 0, 'A'),
	(9, 0, 'PGSO Vehicle', 'PGSO Vehicle', 'Asia/Manila', NULL, 3600, 3600, 0, 0, 59, 23, 59, 0, 0, 0, 'private', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 0, 36000, 0, 90000, 0, 360000, 0, 360000, 0, 7200, 2, NULL, 1, 1, 1, '["Period 1","Period 2"]', 0, 0, 0, 'I');

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
  `venue_setup` varchar(70) NOT NULL,
  `contact_name` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `contact_office` varchar(70) NOT NULL DEFAULT '0',
  `contact_number` varchar(15) NOT NULL DEFAULT '0',
  `contact_email` varchar(70) NOT NULL DEFAULT '0',
  `contact_requirements` text NOT NULL,
  `terms_and_conditions` tinyint unsigned NOT NULL,
  `actual_start` varchar(50) DEFAULT NULL,
  `actual_end` varchar(50) DEFAULT NULL,
  `actual_status` varchar(50) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mrbs.mrbs_entry: ~2 rows (approximately)
REPLACE INTO `mrbs_entry` (`id`, `start_time`, `end_time`, `entry_type`, `repeat_id`, `room_id`, `timestamp`, `create_by`, `modified_by`, `name`, `type`, `description`, `venue_setup`, `contact_name`, `contact_office`, `contact_number`, `contact_email`, `contact_requirements`, `terms_and_conditions`, `actual_start`, `actual_end`, `actual_status`, `status`, `reminded`, `info_time`, `info_user`, `info_text`, `ical_uid`, `ical_sequence`, `ical_recur_id`, `allow_registration`, `registrant_limit`, `registrant_limit_enabled`, `registration_opens`, `registration_opens_enabled`, `registration_closes`, `registration_closes_enabled`) VALUES
	(129, 1730394000, 1730397600, 0, NULL, 1, '2024-11-12 08:24:13', 'dyerry', '', 'admin booking', 'I', 'asfd', '', 'gerry d. binas-o', 'asdf', '09177213179', 'exploringdora@gmail.com', 'asfd', 1, '2024-11-12 15:21:03', '2024-11-12 15:31:38', 'COMPLETED', 1, NULL, NULL, NULL, NULL, 'MRBS-6723b3fa603ea-f9916a27@localhost', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0),
	(131, 1732492800, 1732496400, 0, NULL, 1, '2024-11-12 08:59:12', 'ash', 'ash', 'Holiday booking', 'I', 'asdf', '', 'asfdas', 'ds', 'sd', 'gerry.binas-o@lorma.edu', 'asdf', 1, '2024-11-12 16:59:12', NULL, 'ONGOING', 3, 1731159053, NULL, NULL, NULL, 'MRBS-672af47d6c91d-5fb51364@localhost', 2, '', 0, 0, 0, 1209600, 0, 0, 0),
	(133, 1732723200, 1732726800, 0, NULL, 1, '2024-11-12 12:07:49', 'dyerry', 'dyerry', 'Test Bookingd', 'I', 'Test Descriptions', '', 'gerry d. binas-o', 'asdf', '09177213179', 'exploringdora@gmail.com', 'asfd', 1, '2024-11-12 20:07:49', '', 'ONGOING', 1, NULL, NULL, NULL, NULL, 'MRBS-67334484637ce-ce59046f@localhost', 1, '', 0, 0, 0, 1209600, 0, 0, 0),
	(134, 1732636800, 1732640400, 0, NULL, 1, '2024-11-12 13:19:21', 'dyerry', '', 'test funtion_mai;', 'I', 'asdf', '', 'gerry d. binas-o', 'asdf', '09177213179', 'exploringdora@gmail.com', 'asdfasfd', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'MRBS-673355d9372bb-44689e83@localhost', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0),
	(135, 1732550400, 1732554000, 0, NULL, 1, '2024-11-12 13:48:43', 'ash', '', 'testing 123', 'I', 'asdf', '', 'Gerry Danguecan Binas-o', 'asdf', 'asdf', 'exploringdora@gmail.com', 'asdf', 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'MRBS-67335cbb8aaa0-25527caa@localhost', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0),
	(136, 1732647600, 1732651200, 0, NULL, 1, '2024-11-12 14:12:52', 'dyerry', '', 'asdf', 'I', 'asdf', '', 'gerry d. binas-o', 'asdf', '09177213179', 'exploringdora@gmail.com', 'asdf', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'MRBS-67336264b07cf-50f2cb92@localhost', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0),
	(137, 1732597200, 1732600800, 0, NULL, 1, '2024-11-12 14:15:49', 'ash', '', 'asfd', 'I', 'asdf', '', 'asfd', 'asdf', '24343', 'exploringdora@gmail.com', 'asdf', 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'MRBS-673363153638d-c03d2506@localhost', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0);

-- Dumping structure for table mrbs.mrbs_holidays
CREATE TABLE IF NOT EXISTS `mrbs_holidays` (
  `id` int NOT NULL AUTO_INCREMENT,
  `holiday_date` date NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `year` int GENERATED ALWAYS AS (year(`holiday_date`)) STORED,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mrbs.mrbs_holidays: ~8 rows (approximately)
REPLACE INTO `mrbs_holidays` (`id`, `holiday_date`, `description`) VALUES
	(3, '2024-11-02', 'All Souls Day'),
	(6, '2024-11-30', 'Bonifacio Day'),
	(7, '2024-12-25', 'Christmas Day'),
	(8, '2024-12-30', 'Rizal Day'),
	(10, '2025-01-01', 'New Year\'s Day'),
	(11, '2024-11-01', 'All Saints\' Day'),
	(33, '2024-11-14', 'test');

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
  `actual_start` varchar(50) DEFAULT NULL,
  `actual_end` varchar(50) DEFAULT NULL,
  `actual_status` varchar(50) DEFAULT NULL,
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

-- Dumping data for table mrbs.mrbs_repeat: ~0 rows (approximately)

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mrbs.mrbs_room: ~6 rows (approximately)
REPLACE INTO `mrbs_room` (`id`, `disabled`, `area_id`, `room_name`, `sort_key`, `description`, `capacity`, `room_admin_email`, `invalid_types`, `custom_html`) VALUES
	(1, 0, 1, 'Plenary', 'Plenary', 'Plenary', 1000, 'exploringdora@gmail.com', '[]', NULL),
	(2, 0, 1, 'Room 1', 'Room 1', 'Room 1', 10, 'exploringdora@gmail.com', '[]', NULL),
	(3, 0, 1, 'Room 2', 'Room 2', 'Room 2', 30, 'exploringdora@gmail.com', '[]', NULL),
	(4, 0, 2, 'Executive Room 1', 'Executive Room 1', '', 20, 'exploringdora@gmail.com', NULL, NULL),
	(5, 0, 2, 'Executive Room 2', 'Executive Room 2', '', 20, 'exploringdora@gmail.com', NULL, NULL),
	(6, 0, 2, 'BAC Conference', 'BAC Conference', '', 40, 'dyerry3179@gmail.com', '[]', NULL),
	(11, 0, 9, 'SKA 788', 'SKA 788', 'SKA 788 Description', 0, '', NULL, NULL);

-- Dumping structure for table mrbs.mrbs_sessions
CREATE TABLE IF NOT EXISTS `mrbs_sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int unsigned DEFAULT NULL COMMENT 'Unix timestamp',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idxAccess` (`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mrbs.mrbs_sessions: ~95 rows (approximately)
REPLACE INTO `mrbs_sessions` (`id`, `access`, `data`) VALUES
	('0h0k7evua8j5l9iighu6ngog8e', 1731478723, 'csrf_token|s:64:"c030d3382af12fe0df88fdb633891b4ce0aa3a055046b2850e1ed6efb3f015d5";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$db0yb58Zr2oAWqfDMEDcCeEELGE/X4icDwFxQW7oVGtxcf/HiAOk2";s:9:"timestamp";s:19:"2024-11-06 08:52:33";s:10:"last_login";i:1731367364;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|N;this_page|s:64:"index.php?view=day&view_all=0&page_date=2024-11-27&area=1&room=1";'),
	('0qual24nushgp6j6fmim6berm3', 1729173744, 'csrf_token|s:64:"caedf22ae32c5ff830fdd3588b4c0e4faff6453ebf6b0ed6c1756d713ccb90fd";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1729173520;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('12ncf4hm0n4k2ov608nfh49qfl', 1730180500, ''),
	('156i1gukisv6j8oc104muhpcaa', 1730180500, ''),
	('1co7l53mp129m9v1fdhjsetv2h', 1731479336, 'csrf_token|s:64:"753fb9ac28c35b3ce2684b153f558fb9aeed51acbbb88a1e9396a6b129918426";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-29 20:29:23";s:10:"last_login";i:1731367434;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|s:64:"index.php?view=day&view_all=0&page_date=2024-11-26&area=1&room=1";this_page|s:66:"index.php?view=month&view_all=0&page_date=2024-11-26&area=1&room=1";'),
	('2nh01862rlc3o6dot2j10d64o1', 1731071361, 'csrf_token|s:64:"07953fa243bfb2c27d086434ea80e886a66487290243e8c06bb07518c49737a4";'),
	('2s80ok4t5aeqct23q5og1hdr9p', 1730963497, 'csrf_token|s:64:"c6adce137a1154a3f9ee0dbf4d6aa3df24173d9c1362255becad38adde31a707";'),
	('2uklmm4r48p2k64qn1kut65dmi', 1730032375, 'csrf_token|s:64:"142569f9480f706630d52a2356a0b7421530b94128cb4488578b24a2b9b5efb4";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1730030313;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|N;this_page|s:65:"index.php?view=week&view_all=1&page_date=2024-10-27&area=1&room=1";'),
	('306n2hjdqpbko36i6334e10hh8', 1730363489, 'csrf_token|s:64:"6c242a803ee03ea9fa0de4cb72ae728e05e05d0983a08fea73da3e217021f2ba";user|O:9:"MRBS\\User":5:{s:8:"username";s:5:"test1";s:12:"display_name";s:10:"test user1";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:2;s:13:"password_hash";s:60:"$2y$10$U197PPtNxnDUkDg2aUVMr./gpNe/ZmTyYqkJKNQGQR29P3z/QG.2i";s:9:"timestamp";s:19:"2024-10-15 16:48:40";s:10:"last_login";i:1730271153;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|s:64:"index.php?view=day&view_all=0&page_date=2024-10-30&area=1&room=1";this_page|s:66:"index.php?view=month&view_all=0&page_date=2024-10-30&area=1&room=1";'),
	('33b0t3jfdf9t7b9bqqcoqlnm9g', 1730854325, 'csrf_token|s:64:"4a23c517570716a55491507d3298a3349d04fe32e7565cc8a8711d3864585fae";'),
	('364t9ms53sfuvshj48a9bfoecs', 1730377405, 'csrf_token|s:64:"ae8d33a142ade529aa4eb003481833b79a842c72bcb3c16ae9a9358372f6a25c";'),
	('3j9fcjlatnvi8csg37rnkh8mb0', 1730172698, 'csrf_token|s:64:"4c4c7d1d963e32db72e0ecb6cfcbc2b79590fa679eb183662808f601cb2f1923";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1730171899;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('3vka14nb1fkh49tfl4upfpljo5', 1731133921, 'csrf_token|s:64:"575609e090d3a7ba49143f7b2eaac4c6ffed1d45d18f4f909a80d8c28dda19d8";'),
	('46471t74oao9htdmsr8c5mtau1', 1729768131, 'csrf_token|s:64:"065baa52e8df994db7759ff509377cfb21dd73b8bfe5ea52800c38f37311c9c6";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729645638;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('4imm2772t3roq4rnrmcp95ssqu', 1730966024, 'csrf_token|s:64:"1c3307e2545bb96afcc8cada3f4a04e620a16abb75f2f5e5a564af5f33638cf3";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-29 20:29:23";s:10:"last_login";i:1730960131;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('4n8798g2o0qhkara2ra28dvvjs', 1729493001, 'csrf_token|s:64:"5c126d4185d3e1c84065e5c1c5e26ebe4d4565a5c7eb3c512828b674b31e4eab";'),
	('55d3dur26subqba4ntrl3khu7s', 1729958455, 'csrf_token|s:64:"6ae2b67f927b01676055c981efb74e2c799ffcad54c5dfef09147e36e9d2eb0a";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1729653730;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('5a0v7duko6l5fqh3j0qbmricki', 1730393361, 'csrf_token|s:64:"0fb84fc0c0fdeaadb3d4e10873e3fbf732d57615b124dff3dbb1788f7b92d58a";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1730260069;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|s:66:"index.php?view=month&view_all=0&page_date=2024-10-31&area=1&room=1";this_page|s:64:"index.php?view=day&view_all=0&page_date=2024-11-01&area=1&room=1";'),
	('5d8usu8pskvfub792j5vcp8uq9', 1730180500, ''),
	('5kshpc4k86ig5bh9n6hniejd7c', 1731231223, 'csrf_token|s:64:"6d8c40351e511f06e46b6395ab97cd8353fc4e2d0a3126c3d1971da4548041b0";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$db0yb58Zr2oAWqfDMEDcCeEELGE/X4icDwFxQW7oVGtxcf/HiAOk2";s:9:"timestamp";s:19:"2024-11-06 08:52:33";s:10:"last_login";i:1731224838;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('6kfja9ilv0gdrvp8uk9mep4kht', 1730273257, 'csrf_token|s:64:"1d926f19dfff52dfcd232602dba15a59d782654300985041ca1df9d80a9f42f8";user|O:9:"MRBS\\User":5:{s:8:"username";s:5:"clyde";s:12:"display_name";s:17:"Neil Clyde Quibin";s:5:"email";s:20:"mayuquibin@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:6;s:13:"password_hash";s:60:"$2y$10$bLMe9vKqk6nUzlMXgufG6OTDytV.87/MkOQEw5D2Z9XoRZ1W7z0eO";s:9:"timestamp";s:19:"2024-10-09 10:58:06";s:10:"last_login";i:1730267591;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|s:65:"index.php?view=week&view_all=0&page_date=2024-10-30&area=1&room=1";this_page|s:64:"index.php?view=day&view_all=0&page_date=2024-10-30&area=1&room=1";'),
	('7562s2a94b4dkblu77e1e53rk2', 1731230808, 'csrf_token|s:64:"1575354a35051c574fd1386f738810e56fb5ac0f14cdd52113445a3c189ec7bf";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$db0yb58Zr2oAWqfDMEDcCeEELGE/X4icDwFxQW7oVGtxcf/HiAOk2";s:9:"timestamp";s:19:"2024-11-06 08:52:33";s:10:"last_login";i:1731162759;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|N;this_page|s:64:"index.php?view=day&view_all=0&page_date=2024-11-09&area=1&room=1";'),
	('7h1rsfugqoorjgqh1k0g7jb50c', 1729516032, 'csrf_token|s:64:"94cd7091251d64d2200afbf3140204aed5684e863b93b0737cb989383f8c124a";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729515902;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('7ourenhvu8hbi7mqvo1eunga3d', 1730987603, 'csrf_token|s:64:"0dfe5cbd75ed9066caf1e90d805909040f597bb68bd01ce4140cc5e5bd94a80e";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-29 20:29:23";s:10:"last_login";i:1730979584;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|s:53:"index.php?view=day&page_date=2024-11-30&area=1&room=1";this_page|s:66:"index.php?view=month&view_all=0&page_date=2024-11-30&area=1&room=1";'),
	('7u4rc2eb83m712rsffjlgu42mo', 1730969434, 'csrf_token|s:64:"4977d28cd2b108d7a2536fa9c30572fab0522135defec05c8c1ed701441b2114";'),
	('89npg034dg9o7gmc1pun8gujhp', 1731028240, 'csrf_token|s:64:"64bbc0db94c3ddf707d2ff7e2b615e5beeac9551da8dcfa12f6ce685ba0944ee";'),
	('9a4dt1vqqpdvrs6mal54jbpiai', 1729261799, 'csrf_token|s:64:"d10bfa81f4eaeda1d9e4c9b1fdf8df4f50dd08f7e0b0822f92805816d35c4921";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1729255765;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|s:65:"index.php?view=week&view_all=1&page_date=2024-10-18&area=1&room=1";this_page|s:65:"index.php?view=week&view_all=1&page_date=2024-10-18&area=1&room=1";'),
	('9nt3f0osue5gdu25jdmng043u7', 1730180500, 'csrf_token|s:64:"abcf5b63f7a44988178c32b68def0286b0d494a09d8a14f5a3d1028afd050df4";'),
	('a845m6qdajq9gsfg1u17fh0lut', 1731316260, 'csrf_token|s:64:"772b1d0fbda80c5c4bb0a8bf6d8ead4b7acf308d93b2c96f72d460b7f9e8e980";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-29 20:29:23";s:10:"last_login";i:1731314916;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('af6eg46m1dpi87udv6p9rf7toq', 1729513691, 'csrf_token|s:64:"9f3316c6a7ad5536aeef018b56691f816f9f97de23811107895aa3456c9399dc";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729512436;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('b3vch11i0htklu1j51l8e0ccm8', 1729497455, 'csrf_token|s:64:"b30aa1918983add8b14d52b2477001ebee59487124d8bb24a5fe72ce8212364d";user|O:9:"MRBS\\User":5:{s:8:"username";s:5:"test1";s:12:"display_name";s:10:"test user1";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:2;s:13:"password_hash";s:60:"$2y$10$U197PPtNxnDUkDg2aUVMr./gpNe/ZmTyYqkJKNQGQR29P3z/QG.2i";s:9:"timestamp";s:19:"2024-10-15 16:48:40";s:10:"last_login";i:1729485130;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|N;this_page|s:66:"index.php?view=month&view_all=1&page_date=2024-10-21&area=1&room=1";'),
	('b8kvudql9qt692pqaj4oahk7uf', 1730181144, 'csrf_token|s:64:"3f9eead484683f665385ec6e87fa703cf06562245ce0cea8e35788e5929691c5";'),
	('b9ltpcalcrq5qngfgptrpm5vi3', 1730964122, 'csrf_token|s:64:"759503f0db4df1979f70c42e914e9cdf7293557c9001546b4bbda87bc9e6c755";'),
	('binaerq0ogg0dgo7dkjjscec11', 1730035648, 'csrf_token|s:64:"484cc1f3ed777583af890781ed615728cbdaf44fd57d5e1608dd4218c59fa7de";user|O:9:"MRBS\\User":5:{s:8:"username";s:5:"test1";s:12:"display_name";s:10:"test user1";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:2;s:13:"password_hash";s:60:"$2y$10$U197PPtNxnDUkDg2aUVMr./gpNe/ZmTyYqkJKNQGQR29P3z/QG.2i";s:9:"timestamp";s:19:"2024-10-15 16:48:40";s:10:"last_login";i:1730035535;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('bj3cgbjr7vf55v76lo5dj6h9s8', 1730180500, ''),
	('cuur0tfsu09flqlb3d89q9d43v', 1730180501, 'csrf_token|s:64:"4bbab43c96b927e7f5f402772d44f3249d7a31f17baab2798106f5a625911045";'),
	('d1nsplohkfoqbcmnd7la4bqncb', 1730383496, 'csrf_token|s:64:"77f9e87941cc9a6fd089d10c22a3e6dd4744ebdcc1108e1caf6d72709a5f2544";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-29 20:29:23";s:10:"last_login";i:1730382012;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('d58gjd4ofsu4g65th4a1v0rirq', 1730880230, 'csrf_token|s:64:"826ad3ee4b92a37d786aaa3fbb61d86a1fccd95987ee43de15a6fd82166d1161";'),
	('d6423p6mjld8id1sp69g115mr4', 1730902039, 'csrf_token|s:64:"5868f89a5a5a721b59e03e1bd20d4bac1db72a921114f10d4aaf2df9909833c6";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$db0yb58Zr2oAWqfDMEDcCeEELGE/X4icDwFxQW7oVGtxcf/HiAOk2";s:9:"timestamp";s:19:"2024-11-06 08:52:33";s:10:"last_login";i:1730854362;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|N;this_page|s:55:"index.php?view=month&page_date=2025-01-01&area=1&room=1";'),
	('e6pr862qnk8c2fiv5usc6nrjq4', 1730193074, 'csrf_token|s:64:"8c7931922804192d9a3c46d67b931cdcc31257ed68b9eb2e1109a5f90f740305";last_page|s:65:"index.php?view=week&view_all=1&page_date=2024-10-29&area=1&room=1";this_page|s:66:"index.php?view=month&view_all=1&page_date=2024-10-29&area=1&room=1";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1730075615;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('e8l3om69be03f02hfkhh050o1b', 1728975647, 'csrf_token|s:64:"72fc8a2b5bb600b5d094ace211f11d8aebfbc69173da6d4b2e85423bcd017e58";'),
	('ea1comtaief96k8mbela0v6vo2', 1729488721, 'csrf_token|s:64:"4e8f5bcf9e516886e76804a898ac47d74a60162a213cfc3fcbbaa67554fc17ca";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729470738;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|N;this_page|s:66:"index.php?view=month&view_all=1&page_date=2024-10-21&area=1&room=1";'),
	('eg1pbuto12r2ibj35noi34gpsk', 1731164965, 'csrf_token|s:64:"97b9c1012f058cc3d14e2884cd8ddccbdff5b421bcb5a5842a19c0cc638b9221";'),
	('femd9c7vvu70llk2r1nb4stor3', 1730969231, 'csrf_token|s:64:"22b4ac01ea7d6976aede688c5ff93a10675777971963616a43cef8fe355c8ff2";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-29 20:29:23";s:10:"last_login";i:1730960116;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|s:55:"index.php?view=month&page_date=2024-12-04&area=1&room=1";this_page|s:55:"index.php?view=month&page_date=2024-11-07&area=1&room=1";'),
	('gf0as3en0rgpktl5848tm3mbnf', 1731075781, 'csrf_token|s:64:"1f0100a0d09412622ee30cd0135cff1ef8fde9af7f0429662cb7b62acc926e16";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$db0yb58Zr2oAWqfDMEDcCeEELGE/X4icDwFxQW7oVGtxcf/HiAOk2";s:9:"timestamp";s:19:"2024-11-06 08:52:33";s:10:"last_login";i:1731075775;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('ggjnsju81e4mg729bvrhuneh96', 1730180500, ''),
	('gjtk2bgapba9bi2k3vfam2u05o', 1730902204, 'csrf_token|s:64:"7c0b698990652f095f0c77347173a999bb4ecee7d10affec41ad09aae04bad48";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-29 20:29:23";s:10:"last_login";i:1730858670;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|s:65:"index.php?view=week&view_all=0&page_date=2024-11-01&area=1&room=1";this_page|s:66:"index.php?view=month&view_all=0&page_date=2024-11-01&area=1&room=1";'),
	('glokmfgigla57d64e79qj2ff2s', 1730180500, ''),
	('h6ei1qog1kgjusoeg4o3urjt97', 1729598633, 'csrf_token|s:64:"7d4afdbfd766038972f58b0b75291785714cef955a58e026ed40fbab26c3ccc5";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1729598633;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('h70l8a3d7lt8s8nuh725i7er3n', 1730959905, 'csrf_token|s:64:"07b6f5b6c3dcf638b7320bc4a27ead5abc5ef76480afb1e3d0754960067ac208";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-29 20:29:23";s:10:"last_login";i:1730959896;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('hde61hlnqrng9bvgr2fjgbhv8l', 1730902533, 'csrf_token|s:64:"2dfb83bca3fa193e3e10a7f1c53ebf68e51050eaa20cfb7fc2cdeebb2e82e093";'),
	('hgqj6qem2slc23avtpankid3uf', 1731148623, 'csrf_token|s:64:"23bc24a219d8407ec6becf9f4c53090f4a0a49e5ebef5e877ea65ce5f3b3632b";'),
	('hivhslv41vr0hqbm0e2rbn17m2', 1731231430, 'csrf_token|s:64:"0d933c81c558fceeba3529e54d0f05539db80ef6b88a91dd0fe9aa681c8a5100";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$db0yb58Zr2oAWqfDMEDcCeEELGE/X4icDwFxQW7oVGtxcf/HiAOk2";s:9:"timestamp";s:19:"2024-11-06 08:52:33";s:10:"last_login";i:1731231415;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('hto4vqpfi2mp9rdcj1e1k3spuj', 1729238534, 'csrf_token|s:64:"3a0ee41ebb466eab96b5716704c62c4759a51f4fbf2ccfb6e5b4d241157894b8";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1729210552;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('inbg6vnoknnudpg6v6nm7n9n14', 1730699669, 'csrf_token|s:64:"d82308196ce54ef3296a9388b6acad5cdfe6e3e2717d3134aeff30a2cc3fc41b";last_page|s:66:"index.php?view=month&view_all=0&page_date=2024-11-01&area=1&room=1";this_page|s:64:"index.php?view=day&view_all=0&page_date=2024-11-11&area=1&room=1";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-29 20:29:23";s:10:"last_login";i:1730392970;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('j4rh17evduj6ha27hlsbb98sln', 1729865616, 'csrf_token|s:64:"c9ab8ca488b2d867dfc715714598127d6d84978199dbc9c68cd6afaab30eb5ae";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729819155;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('ja9ddnkmcgudu0ntvmvavl9u43', 1730280883, 'csrf_token|s:64:"826436327978ea4a499c2ce17e0640fdf4aec8f4ef7b67cd3356108faee7aed2";last_page|s:65:"index.php?view=week&view_all=0&page_date=2024-10-30&area=1&room=1";this_page|s:64:"index.php?view=day&view_all=0&page_date=2024-10-30&area=1&room=1";'),
	('jcrf5bali4frcljrji0gvipdg9', 1730182364, 'csrf_token|s:64:"2d80e79e2f32f6fc772aa3303cc340254e294f625c67528b48c00571c0b68eed";last_page|N;this_page|s:65:"index.php?view=week&view_all=1&page_date=2024-10-29&area=1&room=1";'),
	('k15v7dkthfb3jm5gbulsdu3e3r', 1731247994, 'csrf_token|s:64:"bc52a0bb28a00fa51411bed99be0b8e0b63a9bf162dea966d09120c1d00ca255";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$db0yb58Zr2oAWqfDMEDcCeEELGE/X4icDwFxQW7oVGtxcf/HiAOk2";s:9:"timestamp";s:19:"2024-11-06 08:52:33";s:10:"last_login";i:1731247957;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('ka944a3el2olsvc986g6nn947q', 1730965690, 'csrf_token|s:64:"1f095a5b5a363904eb966ea124dcb47e822f5a97573a62d8f1d553149dd7ae85";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$db0yb58Zr2oAWqfDMEDcCeEELGE/X4icDwFxQW7oVGtxcf/HiAOk2";s:9:"timestamp";s:19:"2024-11-06 08:52:33";s:10:"last_login";i:1730965383;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('kcla8tqsmn6qq74ad0f057r50i', 1730392926, 'csrf_token|s:64:"a3d2243dc7900238b2369cc381f7ebbf5550ceafceada9059cca060ef88bf4bf";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-29 20:29:23";s:10:"last_login";i:1730392918;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|N;this_page|s:65:"index.php?view=week&view_all=0&page_date=2024-11-01&area=1&room=1";'),
	('l819n990p3vhqr5676pbatf9vd', 1728870497, 'csrf_token|s:64:"18ab74d7464489fe060b984d6e54a303559713af8770d25e5fc456fce592b47a";last_page|s:64:"index.php?view=day&view_all=0&page_date=2024-10-05&area=1&room=1";this_page|s:66:"index.php?view=month&view_all=0&page_date=2024-10-05&area=1&room=1";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-10 08:43:51";s:10:"last_login";i:1728868952;s:14:"reset_key_hash";s:60:"$2y$10$w0KtFC8TiNXBp4s5G/deKe3ql0jauP2lJpK/DtHCx/zG1QUugIPni";s:16:"reset_key_expiry";i:1728607431;}}'),
	('lcp56ij61iava06u1r3ei9op7j', 1728968109, 'csrf_token|s:64:"16b66f3cd8979ae8aa3e95d040c464e952e0eefea27b5c088dabbda4a25785aa";user|O:9:"MRBS\\User":5:{s:8:"username";s:5:"clyde";s:12:"display_name";s:17:"Neil Clyde Quibin";s:5:"email";s:20:"mayuquibin@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:6;s:13:"password_hash";s:60:"$2y$10$bLMe9vKqk6nUzlMXgufG6OTDytV.87/MkOQEw5D2Z9XoRZ1W7z0eO";s:9:"timestamp";s:19:"2024-10-09 10:58:06";s:10:"last_login";i:1728452215;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|N;this_page|s:64:"index.php?view=day&view_all=1&page_date=2024-12-11&area=4&room=1";'),
	('ljngcsr5ger9e7ivjlr01hrij6', 1729903327, 'csrf_token|s:64:"29d51b769fabece39b19239ca058fd6f0c11dc060977efc5067a26437517b0d2";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729901406;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('ls5k2u5bjrrs2k8a7eugk3jiv9', 1730858516, 'csrf_token|s:64:"3de781b878b85f618e49a9cc7251ed739fb61badf04d0b133483fda47ad8d844";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-29 20:29:23";s:10:"last_login";i:1730856357;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('m4e702jua0216dovqie6pon92n', 1731164988, 'csrf_token|s:64:"73bd2654da7a116da12ebccd3b842a5cd43a9d1e57533a41606b700eca8d98cb";'),
	('m4glaobeels9q5q3cr7qjkijjo', 1730902473, 'csrf_token|s:64:"b6a9e2335252a38a778d5fa3dc83d8e5c51e11037b39c703a5fa102885894659";'),
	('mcjscrd7uu81es6b3rvp79c8ir', 1730185636, 'csrf_token|s:64:"678906e4aad26d2d5ca8071bc7fdf1496b3439ba723a599414a1c3c75dd40b7b";last_page|s:53:"index.php?view=day&page_date=2024-10-27&area=1&room=1";this_page|s:66:"index.php?view=month&view_all=1&page_date=2024-10-27&area=1&room=1";'),
	('mr3s246uhvnch5llch9nvb10is', 1729489825, 'csrf_token|s:64:"d830a31c26242a791119b12684f4d78ddd2f18ba52fe3dc0a68f927105dd0c78";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1729488733;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('mrb1n3skvf9pbn4ejq55tc6c77', 1730264970, 'csrf_token|s:64:"23a0dccf63a7d6f95f65608fed9e486008b10dd9d9fda3561127b6e763d094f7";last_page|s:65:"index.php?view=week&view_all=0&page_date=2024-10-30&area=1&room=1";this_page|s:66:"index.php?view=month&view_all=0&page_date=2024-10-30&area=1&room=1";'),
	('mtbefujpedg16f7bjgjdeq1qct', 1730377130, 'csrf_token|s:64:"909045b7791927185da099d78d56f8a9b8b21c41fdd460a8e4c8c66a287dbeec";'),
	('nn828kmfgotgk45hl3c7id2ls7', 1728983042, 'csrf_token|s:64:"d61d24ab189bd188f44a4bb3596871faabd0d28c2f094792ffa966d44457f597";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 15:00:20";s:10:"last_login";i:1728978358;s:14:"reset_key_hash";s:60:"$2y$10$lOXd4/F3XGRB72wwfuAtqudsFYj2xluKo5G4C8edKFuW7rhM4R6uS";s:16:"reset_key_expiry";i:1729062020;}}last_page|s:65:"index.php?view=week&view_all=1&page_date=2024-10-15&area=1&room=1";this_page|s:44:"index.php?view=week&view_all=0&area=1&room=1";'),
	('o16o7vtnfnhnm24fhc50peq6h2', 1728875701, 'csrf_token|s:64:"e4094489123caf32418068f3658daaca23449eb2e1e386342d71de779992cce1";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-10 08:43:51";s:10:"last_login";i:1728874986;s:14:"reset_key_hash";s:60:"$2y$10$w0KtFC8TiNXBp4s5G/deKe3ql0jauP2lJpK/DtHCx/zG1QUugIPni";s:16:"reset_key_expiry";i:1728607431;}}'),
	('ot0h1f17crqcsq5j8um4tlal97', 1730962924, 'csrf_token|s:64:"6f2a7386f6bda9e63a2d192d59c2b0467e2f4e322ff4cdb2affaeaac1be96781";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$db0yb58Zr2oAWqfDMEDcCeEELGE/X4icDwFxQW7oVGtxcf/HiAOk2";s:9:"timestamp";s:19:"2024-11-06 08:52:33";s:10:"last_login";i:1730960490;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('p03an3rrd030nck8ace0js38ut', 1730816332, 'csrf_token|s:64:"5f60ac85f64bb880d8f20754b8d14847f783b8109020128e114217345859c99b";'),
	('qb8dkriq8bft6u6s23ab762i4d', 1731281045, 'csrf_token|s:64:"27fdc0a6743960951389f9341cf94e330de7c61aeedd35079b0b2193aad7c221";'),
	('r291asp96rpqijajelok08f1ps', 1729788018, 'csrf_token|s:64:"f0e38534434d262c6fedc255e1f3a0991b0d75061f66789a5a118e65a3eefb2b";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729784617;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('r2oej1ed7c7q4tic2enpll3ms2', 1731153889, ''),
	('r6ggjojdtm19rq5b41j0794blf', 1730180501, 'csrf_token|s:64:"c0bce5500c3118389e883e1b25208ac6aa55e7a58705b696ccd1703b6280255f";'),
	('r9lg47mhc95lvacb7anf8k8fj0', 1729516290, 'csrf_token|s:64:"ea277da5a480bb121d10bd4e67f410a4f9447b25009c6e3a31a5ad47e3cba96c";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729516213;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('rnmm01o43jbbjugjptca39nsme', 1731075797, 'csrf_token|s:64:"1cec1c3b3cccf795cd4123a0a5904eaa094005cff66cc0cd02d3bdd9edc90769";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-29 20:29:23";s:10:"last_login";i:1731062640;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|N;this_page|s:64:"index.php?view=day&view_all=0&page_date=2024-11-06&area=1&room=1";'),
	('rukid94qko1134invsob109lj9', 1730959384, 'csrf_token|s:64:"789f4f8fae54f1177aa064c133b3f8991d549613753845de1d98b3b5c1180728";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-29 20:29:23";s:10:"last_login";i:1730957969;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('slv6ocqghrnfueao8ph4vuc7r9', 1729959097, 'csrf_token|s:64:"ef4586f7eadf7724e293d545228880f588411f5e743ea429489979201ebeb802";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1729958493;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('so0ja3736lpr5jgmfp6utaldn5', 1731154162, 'csrf_token|s:64:"cb69af0a47128cff530bcfde8c88268c29a2b0795b96fd286dd18b19ac2fed98";'),
	('t2tcm07kevkkatf73aht1mh7d6', 1731062751, 'csrf_token|s:64:"0fd025062e534795f76302c47629b1f31326eaa585dfefc62d73e993e3122d1d";'),
	('t40vn4c5csuaaf8d2mckumdm21', 1729207743, 'csrf_token|s:64:"39890407d72d00547179d2734e4c919a68c2304514a272e52b082b7046ef179f";user|O:9:"MRBS\\User":5:{s:8:"username";s:6:"dyerry";s:12:"display_name";s:6:"dyerry";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:2;s:7:"\0*\0data";a:6:{s:2:"id";i:1;s:13:"password_hash";s:60:"$2y$10$mHpUfLEqWM5SAJTGAduzmOwY4o9j.qwXSo./27AhxwYBvmiM.1Kfe";s:9:"timestamp";s:19:"2024-10-15 16:48:41";s:10:"last_login";i:1729207721;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('tcgakva96eq0rr831dk6td86nd', 1731062617, 'csrf_token|s:64:"5ed878ef161624fcbc7f042d46fa9b1e2c08edb1cf7d5ff1ca3c1e78d1c5b59b";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-29 20:29:23";s:10:"last_login";i:1731024034;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('te5daph2n6n44vjpcuj1mgsl3r', 1728983366, 'csrf_token|s:64:"42ca0e9e0e7c624a63808cc312a796b5add8e3018559d6e916e5bff7048d3f03";'),
	('tm4gq2t6l58o8gncp40rn2p7kl', 1729871552, 'csrf_token|s:64:"00cdaf97c5fc33ef98097439daf4bb8b42faefdc13e0ac7dc559fc5693274665";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729866134;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('uc87tovk9793psm35ap3bcsojp', 1730348396, 'csrf_token|s:64:"be91528f17933629ec490efc346628231ccfc23dad91c7005f6a6cef3abc3158";last_page|s:65:"index.php?view=week&view_all=0&page_date=2024-10-31&area=1&room=1";this_page|s:66:"index.php?view=month&view_all=0&page_date=2024-10-31&area=1&room=1";'),
	('uird9kavdfcdlmsgeje0j82vgv', 1730179504, 'csrf_token|s:64:"9566b3e4cfd4d27527fc877eea9f3f5240c548ccb8146e1438d0871ce379c065";'),
	('vaqdpemd3mbo231ealuomt0s8s', 1730275239, 'csrf_token|s:64:"53eddcc8c903b4457fcb76b9429fc8d997550223094329bd709258c7b62f0a01";user|O:9:"MRBS\\User":5:{s:8:"username";s:5:"test1";s:12:"display_name";s:10:"test user1";s:5:"email";s:23:"exploringdora@gmail.com";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:2;s:13:"password_hash";s:60:"$2y$10$U197PPtNxnDUkDg2aUVMr./gpNe/ZmTyYqkJKNQGQR29P3z/QG.2i";s:9:"timestamp";s:19:"2024-10-15 16:48:40";s:10:"last_login";i:1730267565;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('vddpohga3pe6j5v9490gaqakfh', 1729906781, 'csrf_token|s:64:"7c69bbbc69f0450ed4eb3810e78d1fc80708b79285193ae303214599f4f2d4df";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729904509;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}'),
	('vo0m4ee4u42o2qedshep6rmbeq', 1730035883, 'csrf_token|s:64:"5b80f56cf6d7dfc10eaa450900901cb0d8622970d04c4336b0cc0cf3dce3ef85";user|O:9:"MRBS\\User":5:{s:8:"username";s:3:"ash";s:12:"display_name";s:12:"Ashley Ebreo";s:5:"email";s:24:"webmaster@launion.gov.ph";s:5:"level";i:1;s:7:"\0*\0data";a:6:{s:2:"id";i:4;s:13:"password_hash";s:60:"$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq";s:9:"timestamp";s:19:"2024-10-02 11:41:27";s:10:"last_login";i:1729955316;s:14:"reset_key_hash";N;s:16:"reset_key_expiry";i:0;}}last_page|s:64:"index.php?view=day&view_all=1&page_date=2024-10-27&area=1&room=1";this_page|s:64:"index.php?view=day&view_all=1&page_date=2024-10-26&area=1&room=1";'),
	('vpefp7bibsms3q6du4pk1il0ch', 1730888313, 'csrf_token|s:64:"06a4ef8862d5507f66d431c17119485666c63c334dc99b13383bcbd308194ede";');

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
	(1, 2, 'dyerry', 'dyerry', '$2y$10$db0yb58Zr2oAWqfDMEDcCeEELGE/X4icDwFxQW7oVGtxcf/HiAOk2', 'exploringdora@gmail.com', '2024-11-06 00:52:33', 1731367364, NULL, 0),
	(2, 1, 'test1', 'test user1', '$2y$10$U197PPtNxnDUkDg2aUVMr./gpNe/ZmTyYqkJKNQGQR29P3z/QG.2i', 'exploringdora@gmail.com', '2024-10-15 08:48:40', 1730381914, NULL, 0),
	(3, 1, 'test2', 'Test None', '$2y$10$liZzm.bGjBrtiQGdVphAuuPLG8zWQIhXLWd312dFN..EdsA9iK7xe', 'asdf@asd.com', '2024-10-02 03:40:52', 1727840413, NULL, 0),
	(4, 1, 'ash', 'Ash User', '$2y$10$6ngxW/jpFe9qfqRZg43bVOuyIH24kWJWbYJex3UfF5fWXKuXRd3tq', 'webmaster@launion.gov.ph', '2024-11-12 03:17:39', 1731367434, NULL, 0),
	(5, 2, 'elena', 'Elena Espiritu', '$2y$10$DtK.q5jooIBV3OkUsTcsl.uEoDFN3XIkM9YKQhvT9R8fDVPrzuTa2', 'mec.espiritu@gmail.com', '2024-10-09 03:05:41', 1728442677, NULL, 0),
	(6, 2, 'clyde', 'Neil Clyde Quibin', '$2y$10$bLMe9vKqk6nUzlMXgufG6OTDytV.87/MkOQEw5D2Z9XoRZ1W7z0eO', 'mayuquibin@gmail.com', '2024-10-09 02:58:06', 1730267591, NULL, 0);

-- Dumping structure for table mrbs.mrbs_variables
CREATE TABLE IF NOT EXISTS `mrbs_variables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `variable_name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variable_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_variable_name` (`variable_name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mrbs.mrbs_variables: ~3 rows (approximately)
REPLACE INTO `mrbs_variables` (`id`, `variable_name`, `variable_content`) VALUES
	(1, 'db_version', '82'),
	(2, 'local_db_version', '1'),
	(3, 'message', '{"text":"Some Message","from":"","until":""}');

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
