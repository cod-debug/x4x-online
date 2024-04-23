-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 22, 2023 at 09:21 AM
-- Server version: 10.5.23-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dmiphonl_source`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_levels`
--

CREATE TABLE `access_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `access_level_code` varchar(255) DEFAULT NULL,
  `access_level_name` varchar(255) DEFAULT NULL,
  `allow_module` varchar(255) DEFAULT NULL,
  `allow_submodule` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `access_levels`
--

INSERT INTO `access_levels` (`id`, `access_level_code`, `access_level_name`, `allow_module`, `allow_submodule`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'Superadmin', '1,2,3,6,9,10,11,12,13,14,15,16,17,18,19,20,21,25,26', '7,8', NULL, NULL),
(2, 'admin', 'Head Affiliates', '1,2,3,4,5,10,11,12,13,14,16,17,18,19,20,25,26', '7,8', NULL, NULL),
(3, 'loader', 'Loader', '1', '1', NULL, NULL),
(4, 'operator', 'Incorporator', '1,2,3,4,5,17,10,11,12,13,14,18,19,20,25,26', '1', NULL, NULL),
(5, 'sub-operator', 'Operator', '1,2,3,4,5,10,18,12,13,14,25', '1', NULL, NULL),
(6, 'declarator', 'Declarator', '1,6,12,13,14,21', '7,8', NULL, NULL),
(7, 'master-agent', 'Sub Operator', '1,2,3,4,5,10,12,13,14,19,25', '1', NULL, NULL),
(8, 'gold-agent', 'Master Agent', '1,2,3,4,5,10,12,13,14,20,25', '1', NULL, NULL),
(9, 'silver-agent', 'Gold Agent', '1,2,3,4,5,10,12,13,14,25', '1', NULL, NULL),
(10, 'player', 'Player', '1', '1', NULL, NULL),
(11, 'booster', 'Booster', '1', '1', NULL, NULL),
(12, 'super-developer', 'Superdeveloper', '1,6,9,10,11,12,13,15,16,17,18,19,20,21,25,26', '7,8', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(255) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bets`
--

CREATE TABLE `bets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fight_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `amount_won` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `plasada` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `operator_commission` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `sub_operator_commission` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `master_agent_commission` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `gold_agent_commission` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `silver_agent_commission` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `bet` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `silver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ma_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subop_id` bigint(20) UNSIGNED DEFAULT NULL,
  `op_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bets`
--

INSERT INTO `bets` (`id`, `event_id`, `fight_id`, `user_id`, `amount`, `amount_won`, `plasada`, `operator_commission`, `sub_operator_commission`, `master_agent_commission`, `gold_agent_commission`, `silver_agent_commission`, `bet`, `result`, `created_at`, `updated_at`, `silver_id`, `agent_id`, `ma_id`, `subop_id`, `op_id`) VALUES
(1, 4, 4, 21, 100000.000000, 90000.000000, 0.000000, 10000.000000, 0.000000, 0.000000, 0.000000, 0.000000, 'wala', 'wala', '2023-11-16 23:28:03', '2023-11-16 23:31:30', 20, 19, 18, 17, 16),
(2, 4, 5, 21, 90000.000000, 81000.000000, 0.000000, 9000.000000, 0.000000, 0.000000, 0.000000, 0.000000, 'wala', 'wala', '2023-11-16 23:34:31', '2023-11-16 23:35:06', 20, 19, 18, 17, 16),
(3, 5, 7, 27, 20.000000, 0.000000, 4.000000, 3.000000, 0.000000, 0.000000, 0.000000, 0.000000, 'meron', NULL, '2023-11-23 07:36:22', '2023-11-23 07:36:22', 26, 25, 24, 23, 22),
(4, 5, 7, 27, 88.000000, 0.000000, 17.600000, 13.200000, 0.000000, 0.000000, 0.000000, 0.000000, 'meron', NULL, '2023-11-23 07:37:08', '2023-11-23 07:37:08', 26, 25, 24, 23, 22);

-- --------------------------------------------------------

--
-- Table structure for table `cash_transfers`
--

CREATE TABLE `cash_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `transfer_mode` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `date_requested` date NOT NULL,
  `reference_no` varchar(255) NOT NULL,
  `files` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fight_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `game_id` varchar(255) NOT NULL,
  `event_id` varchar(255) NOT NULL,
  `active_fight` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `live_url` text NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('closed','open','completed') NOT NULL DEFAULT 'closed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `game_id`, `event_id`, `active_fight`, `name`, `live_url`, `created_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', '654e22a21228d', 1, '6 STAG DERBY', 'https://live.cloudflaregateway.com/live/playlist.m3u8', 1, 'completed', '2023-11-11 01:31:42', '2023-11-13 18:00:00', '2023-11-13 18:00:00'),
(2, '1', '65547c4845e60', 2, 'For Test Video', 'https://www.youtube.com/embed/85DR24OtoaE?si=K5y752hrgP3gGWGP', 1, 'completed', '2023-11-15 21:08:15', '2023-11-20 06:13:09', '2023-11-20 06:13:09'),
(3, '1', '655481254077d', 3, 'asdasd', 'asdsad', 1, 'closed', '2023-11-15 21:28:27', '2023-11-15 21:29:14', '2023-11-15 21:29:14'),
(4, '1', '6555b159da97c', 6, 'SWC BAKBAKAN', 'https://live.cloudflaregateway.com/live/playlist.m3u8?fbclid=IwAR0Z41BjdzqBtd9d2bYBWkagqrgBLPBO7pFkBQrBcPVyGGpz9S0j71bloZM', 1, 'completed', '2023-11-16 19:07:33', '2023-11-20 06:13:19', '2023-11-20 06:13:19'),
(5, '1', '655e49e914df1', 7, 'test', 'test', 6, 'open', '2023-11-23 07:35:24', '2023-11-23 07:35:28', NULL),
(6, '1', '65748296877a4', 8, 'teamrizalmain', 'bardugalan', 42, 'open', '2023-12-10 04:07:36', '2023-12-10 04:08:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fights`
--

CREATE TABLE `fights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fight_number` int(11) NOT NULL,
  `status` enum('not_open','open','last call','closed','finished') NOT NULL DEFAULT 'not_open',
  `result` varchar(255) DEFAULT NULL,
  `team_1` varchar(255) NOT NULL DEFAULT 'PULA',
  `team_2` varchar(255) NOT NULL DEFAULT 'ASUL',
  `ghost_bet_wala` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `ghost_bet_blue` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `ghost_bet_grey` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `ghost_bet_red` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `ghost_bet_yellow` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `ghost_bet_white` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `ghost_bet_pink` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `ghost_bet_meron` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fights`
--

INSERT INTO `fights` (`id`, `event_id`, `fight_number`, `status`, `result`, `team_1`, `team_2`, `ghost_bet_wala`, `ghost_bet_blue`, `ghost_bet_grey`, `ghost_bet_red`, `ghost_bet_yellow`, `ghost_bet_white`, `ghost_bet_pink`, `ghost_bet_meron`, `created_at`, `updated_at`) VALUES
(1, 1, 177, 'open', NULL, 'PULA', 'ASUL', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '2023-11-11 01:31:42', '2023-11-11 01:32:35'),
(2, 2, 1, 'open', NULL, 'PULA', 'ASUL', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '2023-11-15 21:08:15', '2023-11-15 21:43:05'),
(3, 3, 1, 'not_open', NULL, 'PULA', 'ASUL', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '2023-11-15 21:28:27', '2023-11-15 21:28:27'),
(4, 4, 152, 'finished', 'wala', 'PULA', 'ASUL', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '2023-11-16 19:07:33', '2023-11-16 23:31:30'),
(5, 4, 153, 'finished', 'wala', 'PULA', 'ASUL', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '2023-11-16 23:31:30', '2023-11-16 23:35:06'),
(6, 4, 154, 'closed', NULL, 'PULA', 'ASUL', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '2023-11-16 23:35:06', '2023-11-20 05:39:40'),
(7, 5, 1, 'open', NULL, 'PULA', 'ASUL', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '2023-11-23 07:35:24', '2023-11-23 07:35:35'),
(8, 6, 1, 'not_open', NULL, 'PULA', 'ASUL', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '2023-12-10 04:07:36', '2023-12-10 04:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `type` enum('banker','commission') NOT NULL DEFAULT 'commission',
  `url` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `status` enum('open','closed','coming_soon') NOT NULL,
  `multiplier1` int(11) NOT NULL DEFAULT 0,
  `multiplier2` int(11) NOT NULL DEFAULT 0,
  `multiplier3` int(11) NOT NULL DEFAULT 0,
  `jackpot` int(11) NOT NULL DEFAULT 0,
  `settings` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `plasada` decimal(8,2) NOT NULL DEFAULT 7.00
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `name`, `display_name`, `type`, `url`, `banner`, `status`, `multiplier1`, `multiplier2`, `multiplier3`, `jackpot`, `settings`, `created_at`, `updated_at`, `deleted_at`, `plasada`) VALUES
(1, 'SABONG', 'SABONG', 'commission', 'n/a', 'images/banners/654e2295dadb9.jpg', 'open', 0, 0, 0, 0, NULL, '2023-11-11 01:31:17', '2023-11-15 21:41:47', NULL, 10.00);

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_name` varchar(255) DEFAULT NULL,
  `setting_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `setting_name`, `setting_value`, `created_at`, `updated_at`) VALUES
(1, 'website_deployment_notification', '23', '2023-11-11 01:12:32', '2023-11-16 23:19:35'),
(2, 'website_deployment_notification_v2', '0', '2023-11-11 01:12:32', '2023-11-11 01:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `ip_addresses`
--

CREATE TABLE `ip_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) NOT NULL,
  `status` enum('allowed','restricted') NOT NULL DEFAULT 'allowed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ip_addresses`
--

INSERT INTO `ip_addresses` (`id`, `user_id`, `ip_address`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '136.158.11.19', 'allowed', '2023-11-11 01:12:54', '2023-11-11 01:12:54'),
(2, 1, '180.190.130.241', 'allowed', '2023-11-11 01:29:00', '2023-11-11 01:29:00'),
(3, 14, '180.190.130.241', 'allowed', '2023-11-11 01:30:09', '2023-11-11 01:30:09'),
(4, 16, '180.190.130.241', 'allowed', '2023-11-11 01:32:11', '2023-11-11 01:32:11'),
(5, 6, '136.158.11.19', 'allowed', '2023-11-11 01:33:49', '2023-11-11 01:33:49'),
(6, 17, '180.190.130.241', 'allowed', '2023-11-11 01:36:27', '2023-11-11 01:36:27'),
(7, 18, '180.190.130.241', 'allowed', '2023-11-11 01:42:56', '2023-11-11 01:42:56'),
(8, 19, '180.190.130.241', 'allowed', '2023-11-11 01:45:03', '2023-11-11 01:45:03'),
(9, 20, '180.190.130.241', 'allowed', '2023-11-11 01:48:21', '2023-11-11 01:48:21'),
(10, 15, '180.190.130.241', 'allowed', '2023-11-11 01:55:48', '2023-11-11 01:55:48'),
(11, 22, '180.190.130.241', 'allowed', '2023-11-11 01:59:40', '2023-11-11 01:59:40'),
(12, 17, '136.158.11.19', 'allowed', '2023-11-11 02:02:25', '2023-11-11 02:02:25'),
(13, 23, '180.190.130.241', 'allowed', '2023-11-11 02:03:12', '2023-11-11 02:03:12'),
(14, 24, '180.190.130.241', 'allowed', '2023-11-11 02:05:29', '2023-11-11 02:05:29'),
(15, 25, '180.190.130.241', 'allowed', '2023-11-11 02:09:09', '2023-11-11 02:09:09'),
(16, 26, '180.190.130.241', 'allowed', '2023-11-11 02:10:36', '2023-11-11 02:10:36'),
(17, 14, '136.158.11.19', 'allowed', '2023-11-11 02:21:03', '2023-11-11 02:21:03'),
(18, 15, '136.158.11.19', 'allowed', '2023-11-11 02:25:51', '2023-11-11 02:25:51'),
(19, 18, '136.158.11.19', 'allowed', '2023-11-11 02:35:21', '2023-11-11 02:35:21'),
(20, 28, '136.158.11.19', 'allowed', '2023-11-11 04:30:02', '2023-11-11 04:30:02'),
(21, 1, '175.176.53.235', 'allowed', '2023-11-13 06:17:12', '2023-11-13 06:17:12'),
(22, 1, '158.62.49.254', 'allowed', '2023-11-13 18:07:18', '2023-11-13 18:07:18'),
(23, 15, '175.176.53.235', 'allowed', '2023-11-13 18:16:39', '2023-11-13 18:16:39'),
(24, 30, '158.62.49.254', 'allowed', '2023-11-13 18:24:25', '2023-11-13 18:24:25'),
(25, 31, '158.62.49.254', 'allowed', '2023-11-13 18:25:30', '2023-11-13 18:25:30'),
(26, 1, '180.190.136.187', 'allowed', '2023-11-15 02:33:35', '2023-11-15 02:33:35'),
(27, 1, '175.176.52.163', 'allowed', '2023-11-15 21:37:56', '2023-11-15 21:37:56'),
(28, 21, '175.176.52.163', 'allowed', '2023-11-15 21:39:13', '2023-11-15 21:39:13'),
(29, 27, '136.158.11.19', 'allowed', '2023-11-16 19:35:05', '2023-11-16 19:35:05'),
(30, 14, '175.176.52.163', 'allowed', '2023-11-16 22:19:09', '2023-11-16 22:19:09'),
(31, 16, '175.176.52.163', 'allowed', '2023-11-16 22:40:15', '2023-11-16 22:40:15'),
(32, 17, '175.176.52.163', 'allowed', '2023-11-16 22:46:30', '2023-11-16 22:46:30'),
(33, 18, '175.176.52.163', 'allowed', '2023-11-16 23:12:46', '2023-11-16 23:12:46'),
(34, 19, '175.176.52.163', 'allowed', '2023-11-16 23:16:41', '2023-11-16 23:16:41'),
(35, 1, '175.176.52.71', 'allowed', '2023-11-16 23:37:48', '2023-11-16 23:37:48'),
(36, 20, '175.176.52.71', 'allowed', '2023-11-16 23:38:00', '2023-11-16 23:38:00'),
(37, 1, '175.176.52.84', 'allowed', '2023-11-17 06:57:45', '2023-11-17 06:57:45'),
(38, 1, '120.29.98.232', 'allowed', '2023-11-17 21:04:02', '2023-11-17 21:04:02'),
(39, 1, '136.158.8.39', 'allowed', '2023-11-20 04:28:17', '2023-11-20 04:28:17'),
(40, 1, '112.200.96.151', 'allowed', '2023-11-20 05:37:32', '2023-11-20 05:37:32'),
(41, 32, '112.200.96.151', 'allowed', '2023-11-20 05:37:47', '2023-11-20 05:37:47'),
(42, 21, '136.158.11.19', 'allowed', '2023-11-20 06:03:34', '2023-11-20 06:03:34'),
(43, 32, '112.200.97.149', 'allowed', '2023-11-20 08:18:58', '2023-11-20 08:18:58'),
(44, 1, '175.176.53.125', 'allowed', '2023-11-20 17:49:43', '2023-11-20 17:49:43'),
(45, 1, '45.119.135.190', 'allowed', '2023-11-20 20:10:01', '2023-11-20 20:10:01'),
(46, 33, '45.119.135.190', 'allowed', '2023-11-20 20:12:08', '2023-11-20 20:12:08'),
(47, 34, '45.119.135.190', 'allowed', '2023-11-20 20:15:22', '2023-11-20 20:15:22'),
(48, 2, '136.158.11.19', 'allowed', '2023-11-21 00:14:31', '2023-11-21 00:14:31'),
(49, 1, '175.176.53.218', 'allowed', '2023-11-21 00:32:34', '2023-11-21 00:32:34'),
(50, 34, '117.20.113.56', 'allowed', '2023-11-21 08:45:50', '2023-11-21 08:45:50'),
(51, 33, '117.20.113.56', 'allowed', '2023-11-21 08:46:11', '2023-11-21 08:46:11'),
(52, 1, '175.176.53.164', 'allowed', '2023-11-23 13:11:05', '2023-11-23 13:11:05'),
(53, 1, '180.190.129.207', 'allowed', '2023-11-27 23:17:17', '2023-11-27 23:17:17'),
(54, 34, '180.190.129.207', 'allowed', '2023-11-27 23:28:23', '2023-11-27 23:28:23'),
(55, 34, '175.176.52.235', 'allowed', '2023-12-02 18:30:03', '2023-12-02 18:30:03'),
(56, 34, '175.176.53.18', 'allowed', '2023-12-04 19:47:50', '2023-12-04 19:47:50'),
(57, 1, '175.176.53.18', 'allowed', '2023-12-04 19:50:33', '2023-12-04 19:50:33'),
(58, 1, '180.190.135.237', 'allowed', '2023-12-08 05:09:42', '2023-12-08 05:09:42'),
(59, 35, '136.158.11.19', 'allowed', '2023-12-08 05:19:29', '2023-12-08 05:19:29'),
(60, NULL, '136.158.11.19', 'allowed', '2023-12-08 05:20:04', '2023-12-08 05:20:04'),
(61, 36, '136.158.11.19', 'allowed', '2023-12-08 05:20:17', '2023-12-08 05:20:17'),
(62, 1, '49.144.101.15', 'allowed', '2023-12-08 06:45:38', '2023-12-08 06:45:38'),
(63, 35, '180.190.135.237', 'allowed', '2023-12-08 07:37:14', '2023-12-08 07:37:14'),
(64, 35, '175.176.52.14', 'allowed', '2023-12-08 09:24:02', '2023-12-08 09:24:02'),
(65, 1, '175.176.52.14', 'allowed', '2023-12-08 09:24:18', '2023-12-08 09:24:18'),
(66, 1, '178.128.216.50', 'allowed', '2023-12-08 16:38:03', '2023-12-08 16:38:03'),
(67, 1, '180.191.100.169', 'allowed', '2023-12-08 18:03:23', '2023-12-08 18:03:23'),
(68, 37, '49.144.101.15', 'allowed', '2023-12-08 18:07:19', '2023-12-08 18:07:19'),
(69, NULL, '180.191.100.169', 'allowed', '2023-12-08 18:11:51', '2023-12-08 18:11:51'),
(70, 38, '180.191.100.169', 'allowed', '2023-12-08 18:14:01', '2023-12-08 18:14:01'),
(71, 39, '180.191.100.169', 'allowed', '2023-12-08 18:17:06', '2023-12-08 18:17:06'),
(72, NULL, '180.191.101.58', 'allowed', '2023-12-08 18:27:42', '2023-12-08 18:27:42'),
(73, 40, '180.191.101.58', 'allowed', '2023-12-08 18:28:06', '2023-12-08 18:28:06'),
(74, 40, '180.191.100.169', 'allowed', '2023-12-08 18:28:51', '2023-12-08 18:28:51'),
(75, 40, '49.144.101.15', 'allowed', '2023-12-08 18:31:00', '2023-12-08 18:31:00'),
(76, 41, '49.144.101.15', 'allowed', '2023-12-08 21:36:18', '2023-12-08 21:36:18'),
(77, 1, '103.225.137.243', 'allowed', '2023-12-08 23:24:14', '2023-12-08 23:24:14'),
(78, 1, '110.54.135.185', 'allowed', '2023-12-09 00:55:13', '2023-12-09 00:55:13'),
(79, 1, '112.204.169.68', 'allowed', '2023-12-09 01:03:45', '2023-12-09 01:03:45'),
(80, 1, '112.206.101.104', 'allowed', '2023-12-09 01:06:58', '2023-12-09 01:06:58'),
(81, 1, '136.158.33.126', 'allowed', '2023-12-10 03:55:31', '2023-12-10 03:55:31'),
(82, 42, '136.158.33.126', 'allowed', '2023-12-10 04:03:25', '2023-12-10 04:03:25'),
(83, 1, '175.176.52.56', 'allowed', '2023-12-12 17:51:40', '2023-12-12 17:51:40'),
(84, 1, '136.158.37.11', 'allowed', '2023-12-16 06:34:01', '2023-12-16 06:34:01'),
(85, 1, '103.200.35.3', 'allowed', '2023-12-16 16:51:25', '2023-12-16 16:51:25'),
(86, 43, '175.176.91.142', 'allowed', '2023-12-19 00:26:41', '2023-12-19 00:26:41'),
(87, 1, '175.176.91.142', 'allowed', '2023-12-19 00:27:52', '2023-12-19 00:27:52'),
(88, 1, '175.176.91.7', 'allowed', '2023-12-19 00:29:53', '2023-12-19 00:29:53'),
(89, 43, '175.176.89.80', 'allowed', '2023-12-19 01:37:19', '2023-12-19 01:37:19'),
(90, 1, '175.176.89.80', 'allowed', '2023-12-19 01:37:44', '2023-12-19 01:37:44'),
(91, 1, '120.28.195.218', 'allowed', '2023-12-20 03:36:42', '2023-12-20 03:36:42'),
(92, 1, '120.28.192.253', 'allowed', '2023-12-20 03:37:56', '2023-12-20 03:37:56'),
(93, 1, '180.190.135.170', 'allowed', '2023-12-20 06:54:28', '2023-12-20 06:54:28'),
(94, 1, '136.158.37.216', 'allowed', '2023-12-20 06:55:13', '2023-12-20 06:55:13'),
(95, 1, '175.176.90.35', 'allowed', '2023-12-21 19:01:45', '2023-12-21 19:01:45'),
(96, 1, '175.176.53.35', 'allowed', '2023-12-22 17:16:54', '2023-12-22 17:16:54'),
(97, 1, '175.176.52.119', 'allowed', '2023-12-23 03:13:18', '2023-12-23 03:13:18');

-- --------------------------------------------------------

--
-- Table structure for table `loads`
--

CREATE TABLE `loads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `requested_by` bigint(20) UNSIGNED DEFAULT NULL,
  `requested_to` bigint(20) UNSIGNED DEFAULT NULL,
  `reference_number` varchar(255) NOT NULL,
  `screenshot` varchar(255) NOT NULL,
  `amount` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `loaded_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('pending','completed','cancelled') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loads`
--

INSERT INTO `loads` (`id`, `requested_by`, `requested_to`, `reference_number`, `screenshot`, `amount`, `loaded_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '21516038c97e17b66db8a77d70f62a28', '2023-11-13 12:52:47', 100000000.000000, NULL, 'completed', '2023-11-13 17:52:47', '2023-11-13 17:52:47'),
(2, 14, 1, '5704e228f788b86f21848ec24d206429', '2023-11-13 12:53:10', 1000000.000000, NULL, 'completed', '2023-11-13 17:53:10', '2023-11-13 17:53:10'),
(3, 16, 14, 'c583f13b2f1016fe655c0a497457075a', '2023-11-16 17:45:06', 900000.000000, NULL, 'completed', '2023-11-16 22:45:06', '2023-11-16 22:45:06'),
(4, 17, 16, '99f243688945897b2ee554c85001fea3', '2023-11-16 17:46:06', 800000.000000, NULL, 'completed', '2023-11-16 22:46:06', '2023-11-16 22:46:06'),
(5, 21, 1, '57cfe55cc0aef7a508f8b7aa8bf06521', '2023-11-16 17:49:12', 100000.000000, NULL, 'completed', '2023-11-16 22:49:12', '2023-11-16 22:49:12'),
(6, 18, 17, '9a4da32c0bf3743161c6ddd050e1a255', '2023-11-16 18:11:46', 700000.000000, NULL, 'completed', '2023-11-16 23:11:46', '2023-11-16 23:11:46'),
(7, 19, 18, '35da1dc929360b7a4d59bc52987b3eaa', '2023-11-16 18:13:11', 500000.000000, NULL, 'completed', '2023-11-16 23:13:11', '2023-11-16 23:13:11'),
(8, 20, 19, '1ae25fd1e707077cf9610857fda297fd', '2023-11-16 18:17:04', 400000.000000, NULL, 'completed', '2023-11-16 23:17:04', '2023-11-16 23:17:04'),
(9, 1, 1, '62cabf08f4611aad8780bf6e9c2f61d8', '2023-11-23 02:35:58', 30000.000000, NULL, 'completed', '2023-11-23 07:35:58', '2023-11-23 07:35:58'),
(10, 27, 1, '51f45d5ffd02c626e03b86350380ecef', '2023-11-23 02:36:08', 4000.000000, NULL, 'completed', '2023-11-23 07:36:08', '2023-11-23 07:36:08'),
(11, 40, 1, '70710385f87eb20610e0a7a7790e54d6', '2023-12-09 23:00:07', 1000.000000, NULL, 'completed', '2023-12-10 04:00:07', '2023-12-10 04:00:07'),
(12, 1, 1, '2004731e0de87c93f81b1ca6dd5bb704', '2023-12-18 17:10:25', 500000.000000, NULL, 'completed', '2023-12-18 22:10:25', '2023-12-18 22:10:25'),
(13, 43, 1, '5dfe15dcfbcf461f1d11d71dc26e728f', '2023-12-18 17:10:37', 500000.000000, NULL, 'completed', '2023-12-18 22:10:37', '2023-12-18 22:10:37'),
(14, 1, 1, '05c86e36eabd5fed1ea2a3d25943a20c', '2023-12-18 20:38:01', 1000000000.000000, NULL, 'completed', '2023-12-19 01:38:01', '2023-12-19 01:38:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(34, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(35, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(36, '2022_06_04_175349_create_users_table', 1),
(37, '2022_06_04_175350_create_games_table', 1),
(38, '2022_06_04_175422_create_events_table', 1),
(39, '2022_06_04_175424_create_fights_table', 1),
(40, '2022_06_04_175428_create_bets_table', 1),
(41, '2022_06_04_175638_create_wallets_table', 1),
(42, '2022_06_04_175828_create_loads_table', 1),
(43, '2022_06_04_175857_create_commissions_table', 1),
(44, '2022_06_06_072631_create_settings_table', 1),
(45, '2022_06_09_064134_create_withdraws_table', 1),
(46, '2022_06_11_072341_add_column_to_events_table', 1),
(47, '2022_06_11_111439_add_column_to_bets_table', 1),
(48, '2022_06_14_143302_add_agent_id_column_to_bets_table', 1),
(49, '2022_07_07_035326_create_transactions_table', 1),
(50, '2022_08_09_055223_add_columns_to_games_table', 1),
(51, '2022_08_10_160949_add_op_id_column_to_bets_table', 1),
(52, '2022_08_15_223912_add_columns_to_transactions_table', 1),
(53, '2022_08_29_061654_add_columns_to_fights_table', 1),
(54, '2022_09_11_155949_add_flag_column_to_users_table', 1),
(55, '2022_09_18_193330_add_settings_column_to_games_table', 1),
(56, '2022_09_25_201626_add_ghost_bets_to_fights_table', 1),
(57, '2022_10_08_153544_add_team_name_to_fights_table', 1),
(58, '2022_10_22_021935_add_plasada_to_users_table', 1),
(59, '2023_01_31_013602_add_display_name_column_to_games_table', 1),
(60, '2023_03_20_170507_create_ip_addresses_table', 1),
(61, '2023_10_19_094012_create_access_levels_table', 1),
(62, '2023_10_19_094211_create_navigations_table', 1),
(63, '2023_10_19_102620_create_navigation_dividers_table', 1),
(64, '2023_10_27_115041_create_general_settings_table', 1),
(65, '2023_10_29_225356_create_banks_table', 1),
(66, '2023_10_29_225429_create_cash_transfers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nav_code` varchar(255) DEFAULT NULL,
  `nav_name` varchar(255) DEFAULT NULL,
  `nav_divider_name` varchar(255) DEFAULT NULL,
  `nav_controller` varchar(255) DEFAULT NULL,
  `nav_mode` varchar(255) DEFAULT NULL,
  `nav_icon` varchar(255) DEFAULT NULL,
  `nav_type` varchar(255) DEFAULT NULL,
  `nav_order` int(11) NOT NULL DEFAULT 0,
  `nav_suborder` int(11) NOT NULL DEFAULT 0,
  `nav_parent_id` varchar(255) DEFAULT NULL,
  `is_hidden` varchar(255) DEFAULT NULL,
  `nav_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `nav_code`, `nav_name`, `nav_divider_name`, `nav_controller`, `nav_mode`, `nav_icon`, `nav_type`, `nav_order`, `nav_suborder`, `nav_parent_id`, `is_hidden`, `nav_status`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'Dashboard', 'general', '', 'dashboard', 'nav-icon fas fa-tachometer-alt', 'single', 1, 0, '0', NULL, '1', NULL, NULL),
(2, 'summary', 'Summary Report', 'general', '', 'summary', 'nav-icon fas fa-chart-area', 'single', 2, 0, '0', NULL, '1', NULL, NULL),
(3, 'load-logs', 'Load Logs', 'general', '', 'load.logs', 'nav-icon fas fa-history', 'single', 3, 0, '0', NULL, '1', NULL, NULL),
(4, 'commission-logs', 'Commission Logs', 'general', '', 'commission.logs', 'nav-icon fas fa-chart-line', 'single', 4, 0, '0', NULL, '1', NULL, NULL),
(5, 'withdraw-logs', 'Withrawal Logs', 'general', '', 'withdraw.logs', 'nav-icon fas fa-chart-bar', 'single', 5, 0, '0', NULL, '1', NULL, NULL),
(6, '', 'Events', 'general', '', '', 'nav-icon fas fa-calendar-alt', 'main', 6, 0, '0', NULL, '1', NULL, NULL),
(7, 'create-event', 'Create Event', NULL, '', 'create.event', 'far fa-circle nav-icon', 'sub', 0, 1, '6', NULL, '1', NULL, NULL),
(8, 'events', 'All Events', NULL, '', 'events', 'far fa-circle nav-icon', 'sub', 0, 2, '6', NULL, '1', NULL, NULL),
(9, 'games', 'Plasada Event', 'general', '', 'games', 'nav-icon fas fa-chart-bar', 'single', 7, 0, '0', NULL, '1', NULL, NULL),
(10, 'wallet', 'Wallet Console', 'points', '', 'wallet', 'nav-icon fas fa-wallet', 'single', 8, 0, '0', NULL, '1', NULL, NULL),
(11, 'user-accounts', 'All Accounts', 'players', '', 'user.accounts', 'nav-icon fas fa-users', 'single', 9, 0, '0', NULL, '1', NULL, NULL),
(12, 'players', 'Active Players', 'players', '', 'players', 'nav-icon fas fa-users', 'single', 10, 0, '0', NULL, '1', NULL, NULL),
(13, 'pending-players', 'For Approval', 'players', '', 'pending.players', 'nav-icon fas fa-user-check', 'single', 11, 0, '0', NULL, '1', NULL, NULL),
(14, 'deleted-accounts', 'Deleted Players', 'players', '', 'deleted.accounts', 'nav-icon fas fa-users-slash', 'single', 12, 0, '0', NULL, '1', NULL, NULL),
(15, 'admins', 'Head Affiliates', 'players', '', 'admins', 'nav-icon fas fa-user-secret', 'single', 13, 0, '0', NULL, '1', NULL, NULL),
(16, 'operators', 'Incorporator', 'players', '', 'operators', 'nav-icon fas fa-user-secret', 'single', 14, 0, '0', NULL, '1', NULL, NULL),
(17, 'sub-operators', 'Operator', 'players', '', 'sub.operators', 'nav-icon fas fa-user-secret', 'single', 15, 0, '0', NULL, '1', NULL, NULL),
(18, 'master-agents', 'Sub Operator', 'players', '', 'master.agents', 'nav-icon fas fa-user-secret', 'single', 16, 0, '0', NULL, '1', NULL, NULL),
(19, 'agents', 'Master Agent', 'players', '', 'agents', 'nav-icon fas fa-user-tie', 'single', 17, 0, '0', NULL, '1', NULL, NULL),
(20, 'silver-agents', 'Gold Agents', 'players', '', 'silver.agents', 'nav-icon fas fa-user-tie', 'single', 18, 0, '0', NULL, '1', NULL, NULL),
(21, 'declarators', 'Declarators', 'players', '', 'declarators', 'nav-icon fas fa-user-clock', 'single', 19, 0, '0', NULL, '1', NULL, NULL),
(22, 'settings', 'Settings', 'settings', '', 'settings', 'nav-icon fas fa-cogs', 'single', 20, 0, '0', NULL, '1', NULL, NULL),
(23, 'password-update', 'Change Password', 'settings', '', 'password.update', 'nav-icon fas fa-key', 'single', 21, 0, '0', NULL, '1', NULL, NULL),
(24, 'logout', 'Logout', 'settings', '', 'logout', 'nav-icon fas fa-sign-out-alt', 'single', 22, 0, '0', NULL, '1', NULL, NULL),
(25, 'banks-index', 'Banks', 'general', '', 'banks.index', 'nav-icon fas fa-chart-bar', 'single', 23, 0, '0', NULL, '1', NULL, NULL),
(26, 'cash-transfers-index', 'Cash Transfers', 'general', '', 'cash-transfers.index', 'nav-icon fas fa-chart-bar', 'single', 24, 0, '0', NULL, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `navigation_dividers`
--

CREATE TABLE `navigation_dividers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `divider_name` varchar(255) DEFAULT NULL,
  `divider_code` varchar(255) DEFAULT NULL,
  `divider_order` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigation_dividers`
--

INSERT INTO `navigation_dividers` (`id`, `divider_name`, `divider_code`, `divider_order`, `created_at`, `updated_at`) VALUES
(1, 'General', 'general', '1', NULL, NULL),
(2, 'Points', 'Points', '2', NULL, NULL),
(3, 'Affiliate/INCO/Agent/Players', 'players', '3', NULL, NULL),
(4, 'Settings', 'settings', '4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_name`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'plasada', '7', '2023-11-11 01:12:32', '2023-11-11 01:12:32', NULL),
(2, 'operator_commission', '10', '2023-11-11 01:12:32', '2023-11-23 13:17:18', NULL),
(3, 'player_deduction', '3', '2023-11-11 01:12:32', '2023-12-03 15:38:49', NULL),
(4, 'multiplier', '50', '2023-11-11 01:12:32', '2023-11-23 07:54:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bet_id` bigint(20) UNSIGNED DEFAULT NULL,
  `withdraw_id` bigint(20) UNSIGNED DEFAULT NULL,
  `load_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `ending_balance` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `type` varchar(255) DEFAULT NULL,
  `direction` enum('in','out') NOT NULL DEFAULT 'in',
  `remarks` varchar(255) DEFAULT NULL,
  `user_notes` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `bet_id`, `withdraw_id`, `load_id`, `amount`, `ending_balance`, `type`, `direction`, `remarks`, `user_notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 40, NULL, NULL, 11, 1000.000000, 1000.000000, 'load', 'in', '1000 load credited from admin0 to King', NULL, '2023-12-10 04:00:07', '2023-12-10 04:00:07', NULL),
(2, 1, NULL, NULL, 11, 1000.000000, 25000.000000, 'load', 'out', '1000 load credited from admin0 to King', NULL, '2023-12-10 04:00:07', '2023-12-10 04:00:07', NULL),
(3, 40, NULL, 1, NULL, 1000.000000, 0.000000, 'refund', 'out', '1000 load deducted from King by admin0', NULL, '2023-12-10 04:00:19', '2023-12-10 04:00:19', NULL),
(4, 1, NULL, 1, NULL, 1000.000000, 26000.000000, 'refund', 'in', '1000 load deducted from King by admin0', NULL, '2023-12-10 04:00:19', '2023-12-10 04:00:19', NULL),
(5, 1, NULL, NULL, 12, 500000.000000, 526000.000000, 'load', 'in', 'Add system credits processed bysuperadmin', NULL, '2023-12-18 22:10:25', '2023-12-18 22:10:25', NULL),
(6, 43, NULL, NULL, 13, 500000.000000, 500000.000000, 'load', 'in', '500000 load credited from superadmin to admin0', NULL, '2023-12-18 22:10:37', '2023-12-18 22:10:37', NULL),
(7, 1, NULL, NULL, 13, 500000.000000, 26000.000000, 'load', 'out', '500000 load credited from superadmin to admin0', NULL, '2023-12-18 22:10:37', '2023-12-18 22:10:37', NULL),
(8, 1, NULL, NULL, 14, 1000000000.000000, 1000026000.000000, 'load', 'in', 'Add system credits processed bysuperadmin', NULL, '2023-12-19 01:38:01', '2023-12-19 01:38:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `flag` enum('illegal','legal') NOT NULL DEFAULT 'legal',
  `type` enum('super-admin','admin','operator','sub-operator','master-agent','gold-agent','silver-agent','declarator','loader','booster','player','super-developer') NOT NULL DEFAULT 'player',
  `forgot_token` varchar(255) DEFAULT NULL,
  `referral_code` varchar(255) DEFAULT NULL,
  `referred_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `referrer_type` enum('super-admin','admin','operator','sub-operator','master-agent','gold-agent','silver-agent','declarator') NOT NULL DEFAULT 'super-admin',
  `commission` decimal(6,2) NOT NULL DEFAULT 0.00,
  `plasada` decimal(6,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `contact_number`, `password`, `status`, `flag`, `type`, `forgot_token`, `referral_code`, `referred_by`, `created_by`, `referrer_type`, `commission`, `plasada`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin 1', 'super-admin@gmail.com', 'superadmin', '09123456789', '$2y$10$DN52sm/lHxZ4qgEBo.B29.N3M6yWDigKT4Zqo7HKzGkrfa9zgHu9K', 'active', 'legal', 'super-admin', NULL, 'ed9423841c3d1b2ce6b43543b815045d', NULL, NULL, 'super-admin', 0.00, 0.00, '2023-11-11 01:12:31', '2023-12-17 16:05:31', NULL),
(2, 'Super Admin2', 'super-admin2@gmail.com', 'superadmin2', '09123456789', '$2y$10$HJGT2FhKeqicdH4CsYSbVeg7Z4LA1opY53xrvPe8EpzIzSKGiS.Su', 'active', 'legal', 'super-admin', NULL, '9e4de99fa6181747046d3e67d78dad01', NULL, NULL, 'super-admin', 0.00, 0.00, '2023-11-11 01:12:31', '2023-11-11 01:12:31', NULL),
(43, 'admin0', NULL, 'admin0', NULL, '$2y$10$wB2S2s.R8b9WuQsdlOrTzeUUFHnN6anGmLlgGgk5FC/L4zmgROO9.', 'active', 'legal', 'admin', NULL, '61428a4cb15bf51080fc208a9045b550', 1, 1, 'super-admin', 0.00, 0.00, '2023-12-18 22:10:00', '2023-12-18 22:11:30', NULL),
(42, 'henry', 'henry@gmail.com', 'henryboy', '09051049211', '$2y$10$/LsyZcwDVeuSJnRU/wO9YuhH1/Ns/i4fUqv0CGuEuC34Rp48WXSQ.', 'active', 'legal', 'declarator', NULL, '78268a053ed0e832147032edcda0181e', 1, 1, 'super-admin', 0.00, 0.00, '2023-12-10 04:02:12', '2023-12-17 16:05:53', '2023-12-17 16:05:53'),
(41, 'dec0', 'dec0@gmail.com', 'dec0', NULL, '$2y$10$fekN/gHjVJyhl4loruCdPedL719n/d7eK17N5sbyXF9eQXyzMy.oa', 'active', 'legal', 'declarator', NULL, 'ebc9bc3f6c66e9c0350e3ce0a77eab4a', 1, 1, 'super-admin', 0.00, 0.00, '2023-12-08 21:35:56', '2023-12-17 16:06:39', '2023-12-17 16:06:39'),
(40, 'King', NULL, 'King', '09608976543', '$2y$10$Lzper/uoR4a.eHNVmm1wkuuGgnh3dlbpnhsqpDdpPzAgg0qDR6rv2', 'active', 'legal', 'player', NULL, '7e6122a61ed46816e346c45469f796b2', 38, 38, 'operator', 0.00, 0.00, '2023-12-08 18:27:42', '2023-12-17 16:06:00', '2023-12-17 16:06:00'),
(39, 'jeje', NULL, 'mon', '09678913454', '$2y$10$UzsjjmYD9dCJkej8MDPoquwSbev1onSdLpMWAfavdNxAWLUYyc2EG', 'active', 'legal', 'sub-operator', NULL, '0b6e6a248c479651858e94b36ddc2148', 38, 38, 'operator', 0.00, 0.00, '2023-12-08 18:15:23', '2023-12-17 16:06:52', '2023-12-17 16:06:52'),
(38, 'ma', NULL, 'ma0', '09199999999', '$2y$10$3k2xXNzR/d5Hi8En8ylHRun6Mooz6o/R0NIuRXhDPs1r90I/XNHKa', 'active', 'legal', 'operator', NULL, '11128baa4018ef9db25f87171e0c171c', 37, 37, 'admin', 10.00, 0.00, '2023-12-08 18:11:51', '2023-12-17 16:06:31', '2023-12-17 16:06:31'),
(37, 'Test01', 'test01@gmail.com', 'test01', '123456789', '$2y$10$w0zsTfsMHQVQiGzZLLvVeOC0LDelQnQXdPvr0DJJzQk58bTMMNOIa', 'active', 'legal', 'admin', NULL, '58bfbf8ce1dcf9a41806250b52c0458f', 1, 1, 'super-admin', 0.00, 0.00, '2023-12-08 18:05:16', '2023-12-17 16:06:23', '2023-12-17 16:06:23'),
(36, 'test1', NULL, 'test1', '24232', '$2y$10$Yt1mDSVK0Gy4ur9iLcNYIuhBVKYZuQjcuBUCPjepzUMUrBGpnPRBe', 'active', 'legal', 'operator', NULL, '2cdf3ac047f8e30e96612a50e6990009', 35, 35, 'admin', 10.00, 0.00, '2023-12-08 05:20:04', '2023-12-17 16:06:46', '2023-12-17 16:06:46'),
(35, 'test', 'admin@gmail.com', 'test', '31212', '$2y$10$t8geOA/p3nMF20C/IOSxlOtcvXlm89C4VLe5yYP5LmNLdsILfjQ0e', 'active', 'legal', 'admin', NULL, '918955849d5c0110e0a595ce5e70cf6e', 1, 1, 'super-admin', 0.00, 0.00, '2023-12-08 05:18:58', '2023-12-17 16:06:11', '2023-12-17 16:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wallet_hash` varchar(255) NOT NULL,
  `balance` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `commission` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `wallet_hash`, `balance`, `commission`, `created_at`, `updated_at`) VALUES
(1, 1, '42ab2b96b71ca516010313cc69ae2164', 1000026000.000000, 0.000000, '2023-11-11 01:12:31', '2023-12-19 01:38:01'),
(2, 2, '449cc86c21fab9946e769049ed64b3a9', 0.000000, 0.000000, '2023-11-11 01:12:31', '2023-11-11 01:12:31'),
(43, 43, 'b74b121759e9d077f8308c004c62c7fb', 500000.000000, 0.000000, '2023-12-18 22:10:00', '2023-12-18 22:10:37'),
(42, 42, 'a7293a24b32f17c3dfd7374c942324f7', 0.000000, 0.000000, '2023-12-10 04:02:12', '2023-12-10 04:02:12'),
(41, 41, '1df559cff8d3641632a98a7fc009ba11', 0.000000, 0.000000, '2023-12-08 21:35:56', '2023-12-08 21:35:56'),
(40, 40, '94b941c038000c7e0f40bea01848c789', 0.000000, 0.000000, '2023-12-08 18:27:42', '2023-12-10 04:00:19'),
(39, 39, '73580724e6851531c373c7ea7e51b1a8', 0.000000, 0.000000, '2023-12-08 18:15:23', '2023-12-08 18:15:23'),
(38, 38, 'e907789613394841eb6baab352182edf', 0.000000, 0.000000, '2023-12-08 18:11:51', '2023-12-08 18:11:51'),
(37, 37, '9db1d99f029986cc8c9c22638695eb73', 0.000000, 0.000000, '2023-12-08 18:05:16', '2023-12-08 18:05:16'),
(36, 36, '15a835386d21660001daba54bb39c369', 0.000000, 0.000000, '2023-12-08 05:20:04', '2023-12-08 05:20:04'),
(35, 35, '9111799bbdf66e3127408aeb1d8eb945', 0.000000, 0.000000, '2023-12-08 05:18:58', '2023-12-08 05:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `requested_by` bigint(20) UNSIGNED DEFAULT NULL,
  `requested_to` bigint(20) UNSIGNED DEFAULT NULL,
  `withdraw_method` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `amount` decimal(16,6) NOT NULL DEFAULT 0.000000,
  `processed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('commission','credits') NOT NULL DEFAULT 'credits',
  `status` enum('pending','master_agent_approval','processing','completed','cancelled') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `requested_by`, `requested_to`, `withdraw_method`, `account_number`, `account_name`, `amount`, `processed_by`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 40, 1, NULL, NULL, NULL, 1000.000000, 1, 'credits', 'completed', '2023-12-10 04:00:19', '2023-12-10 04:00:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_levels`
--
ALTER TABLE `access_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bets`
--
ALTER TABLE `bets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bets_event_id_foreign` (`event_id`),
  ADD KEY `bets_fight_id_foreign` (`fight_id`),
  ADD KEY `bets_user_id_foreign` (`user_id`),
  ADD KEY `bets_agent_id_foreign` (`agent_id`),
  ADD KEY `bets_ma_id_foreign` (`ma_id`),
  ADD KEY `bets_op_id_foreign` (`op_id`),
  ADD KEY `bets_subop_id_foreign` (`subop_id`),
  ADD KEY `bets_silver_id_foreign` (`silver_id`);

--
-- Indexes for table `cash_transfers`
--
ALTER TABLE `cash_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commissions_agent_id_foreign` (`agent_id`),
  ADD KEY `commissions_fight_id_foreign` (`fight_id`),
  ADD KEY `commissions_event_id_foreign` (`event_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_created_by_foreign` (`created_by`),
  ADD KEY `events_active_fight_foreign` (`active_fight`);

--
-- Indexes for table `fights`
--
ALTER TABLE `fights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fights_event_id_foreign` (`event_id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_addresses`
--
ALTER TABLE `ip_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loads`
--
ALTER TABLE `loads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loads_loaded_by_foreign` (`loaded_by`),
  ADD KEY `loads_requested_by_foreign` (`requested_by`),
  ADD KEY `loads_requested_to_foreign` (`requested_to`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_dividers`
--
ALTER TABLE `navigation_dividers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_bet_id_foreign` (`bet_id`),
  ADD KEY `transactions_withdraw_id_foreign` (`withdraw_id`),
  ADD KEY `transactions_load_id_foreign` (`load_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_referred_by_foreign` (`referred_by`),
  ADD KEY `users_created_by_foreign` (`created_by`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraws_processed_by_foreign` (`processed_by`),
  ADD KEY `withdraws_requested_by_foreign` (`requested_by`),
  ADD KEY `withdraws_requested_to_foreign` (`requested_to`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_levels`
--
ALTER TABLE `access_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bets`
--
ALTER TABLE `bets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cash_transfers`
--
ALTER TABLE `cash_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fights`
--
ALTER TABLE `fights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ip_addresses`
--
ALTER TABLE `ip_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `loads`
--
ALTER TABLE `loads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `navigation_dividers`
--
ALTER TABLE `navigation_dividers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
