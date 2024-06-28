/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100618 (10.6.18-MariaDB-0ubuntu0.22.04.1)
 Source Host           : localhost:3306
 Source Schema         : xam

 Target Server Type    : MariaDB
 Target Server Version : 100618 (10.6.18-MariaDB-0ubuntu0.22.04.1)
 File Encoding         : 65001

 Date: 28/06/2024 21:51:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answers
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_answer` char(191) NOT NULL,
  `answer` char(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `answers_topic_id_foreign` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of answers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for authentication_log
-- ----------------------------
DROP TABLE IF EXISTS `authentication_log`;
CREATE TABLE `authentication_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT NULL,
  `logout_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of authentication_log
-- ----------------------------
BEGIN;
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (1, 45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', NULL, '2024-05-16 06:18:42', NULL, '2024-05-16 06:18:42');
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (2, 53, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-12 23:35:29', '2024-05-12 23:38:43', NULL, '2024-05-12 23:38:43');
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (3, 53, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-12 23:35:46', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (4, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-12 23:36:26', '2024-05-22 05:56:19', NULL, '2024-05-22 05:56:19');
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (5, 53, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-12 23:38:39', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (6, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-12 23:39:02', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (7, 45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-12 23:39:28', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (8, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-12 23:39:51', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (9, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 00:30:38', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (10, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 00:39:40', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (11, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 00:42:25', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (12, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 01:03:00', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (13, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 01:08:46', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (14, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 02:11:42', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (15, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-14 23:15:10', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (16, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 02:45:17', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (17, 45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 02:48:49', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (18, 45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 02:50:11', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (19, 54, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 03:05:31', '2024-05-16 03:08:45', NULL, '2024-05-16 03:08:45');
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (20, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 03:08:59', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (21, 45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 03:25:20', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (22, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 03:27:32', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (23, 45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 04:07:27', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (24, 45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 04:29:43', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (25, 56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 04:49:04', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (26, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 04:52:23', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (27, 57, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 04:59:36', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (28, 58, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 05:04:47', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (29, 59, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 05:08:08', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (30, 61, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 05:12:49', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (31, 62, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 05:14:55', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (32, 60, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 05:19:08', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (33, 64, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 05:22:27', '2024-05-16 05:23:21', NULL, '2024-05-16 05:23:21');
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (34, 63, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 05:23:32', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (35, 65, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 05:27:16', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (36, 66, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 05:28:53', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (37, 67, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 05:38:52', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (38, 68, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 05:40:52', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (39, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 05:45:52', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (40, 45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 06:18:24', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (41, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 06:18:57', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (42, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 06:24:26', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (43, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-22 02:21:49', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (44, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-22 05:56:52', NULL, NULL, NULL);
INSERT INTO `authentication_log` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES (45, 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-06-28 09:35:20', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for configs
-- ----------------------------
DROP TABLE IF EXISTS `configs`;
CREATE TABLE `configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MAIL_FROM_NAME` varchar(191) NOT NULL,
  `MAIL_DRIVER` varchar(191) NOT NULL,
  `MAIL_HOST` varchar(191) NOT NULL,
  `MAIL_PORT` varchar(191) NOT NULL,
  `MAIL_USERNAME` varchar(191) NOT NULL,
  `MAIL_FROM_ADDRESS` varchar(191) NOT NULL,
  `MAIL_PASSWORD` varchar(191) NOT NULL,
  `MAIL_ENCRYPTION` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of configs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for copyrighttexts
-- ----------------------------
DROP TABLE IF EXISTS `copyrighttexts`;
CREATE TABLE `copyrighttexts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of copyrighttexts
-- ----------------------------
BEGIN;
INSERT INTO `copyrighttexts` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, '2024 Quick Quiz. All Rights Reserved', NULL, '2024-05-22 05:57:18');
COMMIT;

-- ----------------------------
-- Table structure for faq
-- ----------------------------
DROP TABLE IF EXISTS `faq`;
CREATE TABLE `faq` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `details` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `faq_title_unique` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of faq
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3, '2017_11_23_160102_create_sessions_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4, '2017_11_25_133229_create_settings_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (5, '2017_12_03_080242_create_topics_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (6, '2017_12_03_080330_create_tests_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (7, '2017_12_03_091845_create_questions_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (8, '2017_12_03_110511_create_answers_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (9, '2017_12_21_085915_add_image_video_column_to_questions', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (12, '2019_02_07_113422_create_f_a_qs_table', 4);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (13, '2019_02_04_122123_create_pages_table', 5);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (14, '2019_02_12_065327_create_copyrighttexts_table', 6);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (17, '2019_02_04_100908_create_social_icons_table', 7);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (18, '2019_02_15_072716_create_config_table', 8);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (19, '2019_02_12_165455_create_topic_user_table', 9);
COMMIT;

-- ----------------------------
-- Table structure for p_w_a_settings
-- ----------------------------
DROP TABLE IF EXISTS `p_w_a_settings`;
CREATE TABLE `p_w_a_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pwa_icon` varchar(191) DEFAULT NULL,
  `pwa_splash_icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of p_w_a_settings
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `details` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `show_in_menu` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(10) unsigned NOT NULL,
  `question` text NOT NULL,
  `a` varchar(191) NOT NULL,
  `b` varchar(191) NOT NULL,
  `c` varchar(191) NOT NULL,
  `d` varchar(191) NOT NULL,
  `e` varchar(191) DEFAULT NULL,
  `f` varchar(191) DEFAULT NULL,
  `answer` varchar(191) NOT NULL,
  `code_snippet` text DEFAULT NULL,
  `answer_exp` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question_img` varchar(191) DEFAULT NULL,
  `question_video_link` varchar(191) DEFAULT NULL,
  `question_audio` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_topic_id_foreign` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of questions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sessions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(191) DEFAULT NULL,
  `favicon` varchar(191) DEFAULT NULL,
  `welcome_txt` varchar(191) NOT NULL DEFAULT 'Quick Quiz',
  `userquiz` tinyint(1) DEFAULT 0,
  `w_email` varchar(50) DEFAULT NULL,
  `currency_code` varchar(50) DEFAULT NULL,
  `currency_symbol` varchar(50) DEFAULT NULL,
  `google_login` tinyint(1) DEFAULT 0,
  `fb_login` tinyint(1) DEFAULT 0,
  `gitlab_login` tinyint(1) DEFAULT 0,
  `right_setting` tinyint(1) DEFAULT NULL,
  `element_setting` tinyint(1) DEFAULT NULL,
  `wel_mail` tinyint(1) NOT NULL DEFAULT 0,
  `coming_soon` tinyint(1) NOT NULL DEFAULT 0,
  `comingsoon_enabled_ip` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
BEGIN;
INSERT INTO `settings` (`id`, `logo`, `favicon`, `welcome_txt`, `userquiz`, `w_email`, `currency_code`, `currency_symbol`, `google_login`, `fb_login`, `gitlab_login`, `right_setting`, `element_setting`, `wel_mail`, `coming_soon`, `comingsoon_enabled_ip`, `created_at`, `updated_at`) VALUES (1, 'logo_1512974578qq2.png', 'favicon.ico', 'Quick Quiz', NULL, 'test@gmail.com', 'USD', 'fa fa-dollar', 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2019-05-26 00:34:27');
COMMIT;

-- ----------------------------
-- Table structure for social_icons
-- ----------------------------
DROP TABLE IF EXISTS `social_icons`;
CREATE TABLE `social_icons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `icon` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of social_icons
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for subjects
-- ----------------------------
DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of subjects
-- ----------------------------
BEGIN;
INSERT INTO `subjects` (`id`, `title`, `created_at`, `updated_at`) VALUES (1, 'dfsfsd2', '2024-06-28 15:22:23', '2024-06-28 15:24:39');
INSERT INTO `subjects` (`id`, `title`, `created_at`, `updated_at`) VALUES (2, 'cghfghj hj', '2024-06-28 16:06:10', '2024-06-28 16:06:15');
COMMIT;

-- ----------------------------
-- Table structure for tests
-- ----------------------------
DROP TABLE IF EXISTS `tests`;
CREATE TABLE `tests` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tests
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for topic_user
-- ----------------------------
DROP TABLE IF EXISTS `topic_user`;
CREATE TABLE `topic_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `topic_id` int(10) unsigned NOT NULL,
  `transaction_id` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `amount` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topic_user_user_id_foreign` (`user_id`),
  KEY `topic_user_topic_id_foreign` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of topic_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for topics
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `per_q_mark` int(11) NOT NULL,
  `timer` int(11) DEFAULT NULL,
  `show_ans` varchar(10) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `subject_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of topics
-- ----------------------------
BEGIN;
INSERT INTO `topics` (`id`, `title`, `description`, `per_q_mark`, `timer`, `show_ans`, `amount`, `subject_id`, `created_at`, `updated_at`) VALUES (1, 'Sint est quae eum ut', 'Nisi hic corporis es', 8, 31, '0', NULL, 2, '2024-06-28 10:27:17', '2024-06-28 10:36:29');
INSERT INTO `topics` (`id`, `title`, `description`, `per_q_mark`, `timer`, `show_ans`, `amount`, `subject_id`, `created_at`, `updated_at`) VALUES (2, 'Quod omnis exercitat', 'Repellendus Omnis f', 83, 33, '0', NULL, 1, '2024-06-28 10:36:48', '2024-06-28 10:39:48');
INSERT INTO `topics` (`id`, `title`, `description`, `per_q_mark`, `timer`, `show_ans`, `amount`, `subject_id`, `created_at`, `updated_at`) VALUES (3, 'Amet et ut assumend', 'Aut consequat Perfe', 41, 14, '0', NULL, NULL, '2024-06-28 10:47:31', '2024-06-28 10:47:31');
INSERT INTO `topics` (`id`, `title`, `description`, `per_q_mark`, `timer`, `show_ans`, `amount`, `subject_id`, `created_at`, `updated_at`) VALUES (4, 'Ea incidunt explica', 'Quia iste consequatu', 47, 1, '0', NULL, NULL, '2024-06-28 10:48:04', '2024-06-28 10:48:04');
INSERT INTO `topics` (`id`, `title`, `description`, `per_q_mark`, `timer`, `show_ans`, `amount`, `subject_id`, `created_at`, `updated_at`) VALUES (5, 'Itaque maiores vel c', 'Ad omnis mollitia et', 96, 17, '0', NULL, NULL, '2024-06-28 10:50:36', '2024-06-28 10:50:36');
INSERT INTO `topics` (`id`, `title`, `description`, `per_q_mark`, `timer`, `show_ans`, `amount`, `subject_id`, `created_at`, `updated_at`) VALUES (6, 'Ea voluptatem repell', 'Eaque est in incidid', 22, 42, '0', NULL, 1, '2024-06-28 10:51:02', '2024-06-28 10:51:09');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `mobile` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `role` char(191) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `delete_request` varchar(255) DEFAULT NULL,
  `delete_reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_mobile_unique` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `mobile`, `address`, `city`, `role`, `image`, `remember_token`, `delete_request`, `delete_reason`, `created_at`, `updated_at`) VALUES (1, 'Admin', 'admin@mediacity.co.in', '$2y$10$quNYU5xkfLey157jBYLT3ONQMMezoebsylBq1q4/1jGTmy67ogfXm', NULL, NULL, NULL, 'A', NULL, 'C74ZqFWkiCCMzW9qT9bEax5kLPD3Hgp4ouDaEVjzAxJvghxEiwoOZXNhisWf', NULL, NULL, '2017-12-10 17:16:00', '2019-02-12 15:07:00');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `mobile`, `address`, `city`, `role`, `image`, `remember_token`, `delete_request`, `delete_reason`, `created_at`, `updated_at`) VALUES (3, 'User', 'user@mediacity.co.in', '$2y$10$quNYU5xkfLey157jBYLT3ONQMMezoebsylBq1q4/1jGTmy67ogfXm', '1234567890', 'New Dehli', 'New Dehli', 'S', NULL, 'HBQMqXljL5DLhwkcoFEp62c0hnzgmaNFA6s2nuSljuXnxVpg3G2EFdJshWIr', NULL, NULL, '2017-12-10 17:19:47', '2021-02-11 06:30:48');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
