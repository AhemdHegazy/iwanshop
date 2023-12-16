-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 16, 2023 at 03:21 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `state_id` int NOT NULL,
  `city_id` int DEFAULT NULL,
  `longitude` float(17,15) DEFAULT NULL,
  `latitude` float(17,15) DEFAULT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `set_default` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address`, `country_id`, `state_id`, `city_id`, `longitude`, `latitude`, `postal_code`, `phone`, `set_default`, `created_at`, `updated_at`) VALUES
(1, 14, 'بجوار مسجد ابن خلدون', 1, 2, 3, NULL, NULL, '456', '5596605545', 0, '2023-12-01 14:16:21', '2023-12-01 23:19:59'),
(2, 14, 'الديوان الملكي', 1, 3, 2, NULL, NULL, '454', '465465489651', 1, '2023-12-01 14:16:41', '2023-12-01 23:19:59'),
(3, 33, 'Mollitia id aut do', 1, 188, 13018, NULL, NULL, 'Atque magnam quam eo', '7801111466', 0, '2023-12-15 12:43:11', '2023-12-15 12:43:11'),
(4, 33, 'Saepe fugiat odio qu', 1, 139, 10645, NULL, NULL, 'Cillum quo voluptas', '+1 (213) 685-7247', 0, '2023-12-15 13:19:17', '2023-12-15 13:19:17');

-- --------------------------------------------------------

--
-- Table structure for table `app_translations`
--

CREATE TABLE `app_translations` (
  `id` int NOT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `lang_key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `lang_value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'المقاس', '2020-02-24 05:55:07', '2023-11-28 19:50:51'),
(2, 'الصناعه', '2020-02-24 05:55:13', '2023-11-28 19:50:37'),
(3, 'مقاس الحذاء', '2023-11-28 19:57:10', '2023-11-28 19:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_category`
--

CREATE TABLE `attribute_category` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `attribute_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `attribute_category`
--

INSERT INTO `attribute_category` (`id`, `category_id`, `attribute_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-11-28 21:50:18', '2023-11-28 21:50:18'),
(2, 3, 1, '2023-11-28 21:56:36', '2023-11-28 21:56:36'),
(3, 3, 2, '2023-11-28 21:56:36', '2023-11-28 21:56:36'),
(4, 2, 2, '2023-11-28 21:56:53', '2023-11-28 21:56:53'),
(5, 2, 3, '2023-11-28 21:57:52', '2023-11-28 21:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int NOT NULL,
  `attribute_id` int NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `color_code` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `value`, `color_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'أكس لارج', NULL, '2023-11-28 19:51:08', '2023-11-28 19:51:08'),
(2, 1, 'لارج', NULL, '2023-11-28 19:51:11', '2023-11-28 19:51:11'),
(3, 1, 'ميديم', NULL, '2023-11-28 19:51:18', '2023-11-28 19:51:18'),
(4, 1, 'سمول', NULL, '2023-11-28 19:51:22', '2023-11-28 19:51:22'),
(5, 2, 'محلي', NULL, '2023-11-28 19:51:43', '2023-11-28 19:51:43'),
(6, 2, 'ألماني', NULL, '2023-11-28 19:51:47', '2023-11-28 19:51:47'),
(7, 2, 'قطن مصري', NULL, '2023-11-28 19:51:54', '2023-11-28 19:51:54'),
(8, 3, '39', NULL, '2023-11-28 19:57:19', '2023-11-28 19:57:19'),
(9, 3, '40', NULL, '2023-11-28 19:57:22', '2023-11-28 19:57:22'),
(10, 3, '41', NULL, '2023-11-28 19:57:24', '2023-11-28 19:57:24'),
(11, 3, '42', NULL, '2023-11-28 19:57:27', '2023-11-28 19:57:27'),
(12, 3, '43', NULL, '2023-11-28 19:57:30', '2023-11-28 19:57:30'),
(13, 3, '44', NULL, '2023-11-28 19:57:32', '2023-11-28 19:57:32'),
(14, 3, '45', NULL, '2023-11-28 19:57:35', '2023-11-28 19:57:35');

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `name`, `description`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Blaze Anthony', 'fds', '36', '2023-12-02 02:48:10', '2023-12-02 02:56:31'),
(2, 'Maggie Tanner', 'Sint amet animi la', NULL, '2023-12-02 02:57:13', '2023-12-02 02:57:13'),
(3, 'Gay Navarro', 'Ipsum ullamco labore', '37', '2023-12-02 02:57:28', '2023-12-02 02:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `banner` int DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_img` int DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `logo` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `top` int NOT NULL DEFAULT '0',
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `top`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'هواي', '36', 1, 'demo-brand-12', 'هواي', NULL, '2019-03-12 06:05:56', '2023-11-28 19:54:25'),
(2, 'فيليبس', '37', 1, 'demo-brand1', 'فيليبس', 'فيليبس', '2019-03-12 06:06:13', '2023-11-28 19:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` int NOT NULL,
  `type` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `lang` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'home_default_currency', '1', NULL, '2018-10-16 01:35:52', '2019-01-28 01:26:53'),
(2, 'system_default_currency', '1', NULL, '2018-10-16 01:36:58', '2020-01-26 04:22:13'),
(3, 'currency_format', '1', NULL, '2018-10-17 03:01:59', '2018-10-17 03:01:59'),
(4, 'symbol_format', '4', NULL, '2018-10-17 03:01:59', '2023-12-01 16:40:06'),
(5, 'no_of_decimals', '2', NULL, '2018-10-17 03:01:59', '2020-03-04 00:57:16'),
(6, 'product_activation', '1', NULL, '2018-10-28 01:38:37', '2019-02-04 01:11:41'),
(7, 'vendor_system_activation', '0', NULL, '2018-10-28 07:44:16', '2023-12-01 07:11:45'),
(8, 'show_vendors', '1', NULL, '2018-10-28 07:44:47', '2019-02-04 01:11:13'),
(9, 'paypal_payment', '1', NULL, '2018-10-28 07:45:16', '2023-12-01 13:54:32'),
(10, 'stripe_payment', '0', NULL, '2018-10-28 07:45:47', '2018-11-14 01:51:51'),
(11, 'cash_payment', '1', NULL, '2018-10-28 07:46:05', '2019-01-24 03:40:18'),
(12, 'payumoney_payment', '0', NULL, '2018-10-28 07:46:27', '2019-03-05 05:41:36'),
(13, 'best_selling', '1', NULL, '2018-12-24 08:13:44', '2019-02-14 05:29:13'),
(14, 'paypal_sandbox', '0', NULL, '2019-01-16 12:44:18', '2019-01-16 12:44:18'),
(15, 'sslcommerz_sandbox', '1', NULL, '2019-01-16 12:44:18', '2019-03-14 00:07:26'),
(16, 'sslcommerz_payment', '0', NULL, '2019-01-24 09:39:07', '2019-01-29 06:13:46'),
(17, 'vendor_commission', '20', NULL, '2019-01-31 06:18:04', '2019-04-13 06:49:26'),
(18, 'verification_form', '[{\"type\":\"text\",\"label\":\"Your name\"},{\"type\":\"text\",\"label\":\"Shop name\"},{\"type\":\"text\",\"label\":\"Email\"},{\"type\":\"text\",\"label\":\"License No\"},{\"type\":\"text\",\"label\":\"Full Address\"},{\"type\":\"text\",\"label\":\"Phone Number\"},{\"type\":\"file\",\"label\":\"Tax Papers\"}]', NULL, '2019-02-03 11:36:58', '2019-02-16 06:14:42'),
(19, 'google_analytics', '0', NULL, '2019-02-06 12:22:35', '2019-02-06 12:22:35'),
(20, 'facebook_login', '1', NULL, '2019-02-07 12:51:59', '2023-12-01 07:18:02'),
(21, 'google_login', '1', NULL, '2019-02-07 12:52:10', '2023-12-01 13:56:26'),
(22, 'twitter_login', '1', NULL, '2019-02-07 12:52:20', '2023-12-01 13:54:27'),
(23, 'payumoney_payment', '1', NULL, '2019-03-05 11:38:17', '2019-03-05 11:38:17'),
(24, 'payumoney_sandbox', '1', NULL, '2019-03-05 11:38:17', '2019-03-05 05:39:18'),
(36, 'facebook_chat', '0', NULL, '2019-04-15 11:45:04', '2019-04-15 11:45:04'),
(37, 'email_verification', '0', NULL, '2019-04-30 07:30:07', '2019-04-30 07:30:07'),
(38, 'wallet_system', '0', NULL, '2019-05-19 08:05:44', '2019-05-19 02:11:57'),
(39, 'coupon_system', '1', NULL, '2019-06-11 09:46:18', '2023-12-01 07:12:31'),
(40, 'current_version', '8', NULL, '2019-06-11 09:46:18', '2019-06-11 09:46:18'),
(41, 'instamojo_payment', '0', NULL, '2019-07-06 09:58:03', '2019-07-06 09:58:03'),
(42, 'instamojo_sandbox', '1', NULL, '2019-07-06 09:58:43', '2019-07-06 09:58:43'),
(43, 'razorpay', '0', NULL, '2019-07-06 09:58:43', '2019-07-06 09:58:43'),
(44, 'paystack', '0', NULL, '2019-07-21 13:00:38', '2019-07-21 13:00:38'),
(45, 'pickup_point', '1', NULL, '2019-10-17 11:50:39', '2023-12-01 07:12:35'),
(46, 'maintenance_mode', '0', NULL, '2019-10-17 11:51:04', '2019-10-17 11:51:04'),
(47, 'voguepay', '0', NULL, '2019-10-17 11:51:24', '2019-10-17 11:51:24'),
(48, 'voguepay_sandbox', '0', NULL, '2019-10-17 11:51:38', '2019-10-17 11:51:38'),
(50, 'category_wise_commission', '0', NULL, '2020-01-21 07:22:47', '2020-01-21 07:22:47'),
(51, 'conversation_system', '0', NULL, '2020-01-21 07:23:21', '2023-12-01 07:12:38'),
(52, 'guest_checkout_active', '1', NULL, '2020-01-22 07:36:38', '2020-01-22 07:36:38'),
(53, 'facebook_pixel', '0', NULL, '2020-01-22 11:43:58', '2020-01-22 11:43:58'),
(55, 'classified_product', '0', NULL, '2020-05-13 13:01:05', '2020-05-13 13:01:05'),
(56, 'pos_activation_for_seller', '1', NULL, '2020-06-11 09:45:02', '2020-06-11 09:45:02'),
(57, 'shipping_type', 'area_wise_shipping', NULL, '2020-07-01 13:49:56', '2023-11-30 07:58:35'),
(58, 'flat_rate_shipping_cost', '50', NULL, '2020-07-01 13:49:56', '2023-11-30 13:56:35'),
(59, 'shipping_cost_admin', '0', NULL, '2020-07-01 13:49:56', '2020-07-01 13:49:56'),
(60, 'payhere_sandbox', '0', NULL, '2020-07-30 18:23:53', '2020-07-30 18:23:53'),
(61, 'payhere', '0', NULL, '2020-07-30 18:23:53', '2020-07-30 18:23:53'),
(62, 'google_recaptcha', '0', NULL, '2020-08-17 07:13:37', '2020-08-17 07:13:37'),
(63, 'ngenius', '0', NULL, '2020-09-22 10:58:21', '2020-09-22 10:58:21'),
(64, 'header_logo', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(65, 'show_language_switcher', 'on', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(66, 'show_currency_switcher', 'on', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(67, 'header_stikcy', 'on', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(68, 'footer_logo', '4', NULL, '2020-11-16 07:26:36', '2023-11-28 00:16:11'),
(69, 'about_us_description', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(70, 'contact_address', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(71, 'contact_phone', '964 770 811 1466', NULL, '2020-11-16 07:26:36', '2023-11-28 00:15:45'),
(72, 'contact_email', 'sales@iwanshop.com', NULL, '2020-11-16 07:26:36', '2023-11-28 00:15:45'),
(73, 'widget_one_labels', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(74, 'widget_one_links', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(75, 'widget_one', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(76, 'frontend_copyright_text', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(77, 'show_social_links', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(78, 'facebook_link', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(79, 'twitter_link', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(80, 'instagram_link', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(81, 'youtube_link', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(82, 'linkedin_link', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(83, 'payment_method_images', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(84, 'home_slider_images', '[\"9\",null]', NULL, '2020-11-16 07:26:36', '2023-11-28 00:32:13'),
(85, 'home_slider_links', '[null,null]', NULL, '2020-11-16 07:26:36', '2023-11-28 00:31:42'),
(86, 'home_banner1_images', '[]', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(87, 'home_banner1_links', '[]', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(88, 'home_banner2_images', '[]', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(89, 'home_banner2_links', '[]', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(90, 'home_categories', '[]', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(91, 'top10_categories', '[]', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(92, 'top10_brands', '[]', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(93, 'website_name', 'ايوان شوب - Iwan Shop', NULL, '2020-11-16 07:26:36', '2023-11-27 23:41:01'),
(94, 'site_motto', 'أجهزة - إكسسوارات - مستلزمات منزلية', NULL, '2020-11-16 07:26:36', '2023-11-27 23:41:01'),
(95, 'site_icon', '5', NULL, '2020-11-16 07:26:36', '2023-11-27 23:41:01'),
(96, 'base_color', '#e62e04', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(97, 'base_hov_color', '#e62e04', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(98, 'meta_title', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(99, 'meta_description', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(100, 'meta_keywords', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(101, 'meta_image', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(102, 'site_name', 'Iwanshop أيوان شوب', NULL, '2020-11-16 07:26:36', '2023-11-27 23:37:56'),
(103, 'system_logo_white', '4', NULL, '2020-11-16 07:26:36', '2023-11-27 23:37:56'),
(104, 'system_logo_black', '5', NULL, '2020-11-16 07:26:36', '2023-11-27 23:37:56'),
(105, 'timezone', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(106, 'admin_login_background', '6', NULL, '2020-11-16 07:26:36', '2023-11-27 23:37:56'),
(107, 'iyzico_sandbox', '1', NULL, '2020-12-30 16:45:56', '2020-12-30 16:45:56'),
(108, 'iyzico', '1', NULL, '2020-12-30 16:45:56', '2020-12-30 16:45:56'),
(109, 'decimal_separator', '1', NULL, '2020-12-30 16:45:56', '2020-12-30 16:45:56'),
(110, 'nagad', '0', NULL, '2021-01-22 10:30:03', '2021-01-22 10:30:03'),
(111, 'bkash', '0', NULL, '2021-01-22 10:30:03', '2021-01-22 10:30:03'),
(112, 'bkash_sandbox', '1', NULL, '2021-01-22 10:30:03', '2021-01-22 10:30:03'),
(113, 'header_menu_labels', '[\"Home\",\"All Brands\",\"All Categories\",\"Test\"]', NULL, '2021-02-16 02:43:11', '2023-12-08 10:50:43'),
(114, 'header_menu_links', '[null,null,null,null]', NULL, '2021-02-16 02:43:11', '2023-12-08 10:50:43'),
(115, 'proxypay', '1', NULL, '2021-06-20 11:25:42', '2021-06-20 11:25:42'),
(116, 'proxypay_sandbox', '1', NULL, '2021-06-20 11:25:42', '2021-06-20 11:25:42'),
(117, 'google_map', '0', NULL, '2021-07-27 15:49:39', '2021-07-27 15:49:39'),
(118, 'google_firebase', '0', NULL, '2021-07-27 15:49:39', '2021-07-27 15:49:39'),
(119, 'authorizenet_sandbox', '1', NULL, '2021-02-16 02:43:11', '2021-06-14 05:00:23'),
(120, 'min_order_amount_check_activat', NULL, NULL, '2022-04-17 06:57:17', '2022-04-17 06:57:17'),
(121, 'minimum_order_amount', NULL, NULL, '2022-04-17 06:57:17', '2022-04-17 06:57:17'),
(122, 'item_name', 'eCommerce', NULL, '2022-04-17 06:57:17', '2022-04-17 06:57:17'),
(123, 'aamarpay', '0', NULL, '2022-04-17 06:57:17', '2022-04-17 06:57:17'),
(124, 'aamarpay_sandbox', '0', NULL, '2022-04-17 06:57:17', '2022-04-17 06:57:17'),
(125, 'secondary_base_color', '#13814C', NULL, '2023-11-19 09:45:29', '2023-11-19 09:45:29'),
(126, 'secondary_base_hov_color', '#0f6f41', NULL, '2023-11-19 09:45:29', '2023-11-19 09:45:29'),
(127, 'header_nav_menu_text', 'light', NULL, '2023-11-19 09:45:29', '2023-11-19 09:45:29'),
(128, 'homepage_select', 'metro', NULL, '2023-11-19 09:45:29', '2023-11-28 00:29:29'),
(129, 'todays_deal_section_bg', '0', NULL, '2023-11-19 09:45:29', '2023-11-19 09:45:29'),
(130, 'todays_deal_section_bg_color', '#3d4666', NULL, '2023-11-19 09:45:29', '2023-11-19 09:45:29'),
(131, 'flash_deal_bg_color', '#d33533', NULL, '2023-11-19 09:45:29', '2023-11-19 09:45:29'),
(132, 'flash_deal_bg_full_width', '0', NULL, '2023-11-19 09:45:29', '2023-11-19 09:45:29'),
(133, 'flash_deal_banner_menu_text', 'light', NULL, '2023-11-19 09:45:29', '2023-11-19 09:45:29'),
(134, 'todays_deal_banner_text_color', 'light', NULL, '2023-11-19 09:45:29', '2023-11-19 09:45:29'),
(135, 'coupon_background_image', NULL, NULL, '2023-11-19 09:45:29', '2023-11-19 09:45:29'),
(136, 'login_page_image', '6', NULL, '2023-11-27 23:41:01', '2023-11-27 23:41:01'),
(137, 'register_page_image', '6', NULL, '2023-11-27 23:41:01', '2023-11-27 23:41:01'),
(138, 'seller_login_page_bg', NULL, NULL, '2023-11-27 23:41:01', '2023-11-27 23:41:01'),
(139, 'flash_deal_banner', NULL, NULL, '2023-11-27 23:41:01', '2023-11-27 23:41:01'),
(140, 'flash_deal_banner_small', NULL, NULL, '2023-11-27 23:41:01', '2023-11-27 23:41:01'),
(141, 'contact_address', 'تواصل معنا', 'ar', '2023-11-28 00:15:45', '2023-11-28 00:15:45'),
(142, 'about_us_description', '<label>حول الوصف (قابل للترجمة)</label>', 'ar', '2023-11-28 00:16:11', '2023-11-28 00:16:11'),
(143, 'play_store_link', NULL, NULL, '2023-11-28 00:16:11', '2023-11-28 00:16:11'),
(144, 'app_store_link', NULL, NULL, '2023-11-28 00:16:11', '2023-11-28 00:16:11'),
(145, 'footer_title', 'لقب (قابل للترجمة)', 'ar', '2023-11-28 00:16:19', '2023-11-28 00:16:19'),
(146, 'footer_description', 'Footer description (قابل للترجمة)', 'ar', '2023-11-28 00:16:19', '2023-11-28 00:16:19'),
(147, 'topbar_banner', NULL, NULL, '2023-11-28 11:59:06', '2023-11-28 11:59:06'),
(148, 'topbar_banner_medium', NULL, NULL, '2023-11-28 11:59:06', '2023-11-28 11:59:06'),
(149, 'topbar_banner_small', NULL, NULL, '2023-11-28 11:59:06', '2023-11-28 11:59:06'),
(150, 'topbar_banner_link', NULL, NULL, '2023-11-28 11:59:06', '2023-11-28 11:59:06'),
(151, 'helpline_number', NULL, NULL, '2023-11-28 11:59:06', '2023-11-28 11:59:06'),
(152, 'apple_login', '1', NULL, '2023-12-01 13:54:28', '2023-12-01 13:54:28'),
(153, 'product_query_activation', '1', NULL, '2023-12-01 13:54:53', '2023-12-01 13:54:53'),
(154, 'whatsapp_phone_send', '786545325', NULL, '2023-12-16 05:37:25', '2023-12-16 05:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `carriers`
--

CREATE TABLE `carriers` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` int DEFAULT NULL,
  `transit_time` varchar(255) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carrier_ranges`
--

CREATE TABLE `carrier_ranges` (
  `id` int NOT NULL,
  `carrier_id` int NOT NULL,
  `billing_type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `delimiter1` double(25,2) NOT NULL,
  `delimiter2` double(25,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carrier_range_prices`
--

CREATE TABLE `carrier_range_prices` (
  `id` int NOT NULL,
  `carrier_id` int NOT NULL,
  `carrier_range_id` int NOT NULL,
  `zone_id` int NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int UNSIGNED NOT NULL,
  `owner_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `temp_user_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address_id` int NOT NULL DEFAULT '0',
  `product_id` int DEFAULT NULL,
  `variation` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `price` double(20,2) DEFAULT '0.00',
  `tax` double(20,2) DEFAULT '0.00',
  `shipping_cost` double(20,2) NOT NULL DEFAULT '0.00',
  `shipping_type` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `pickup_point` int DEFAULT NULL,
  `carrier_id` int DEFAULT NULL,
  `discount` double(10,2) NOT NULL DEFAULT '0.00',
  `product_referral_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `coupon_applied` tinyint NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `owner_id`, `user_id`, `temp_user_id`, `address_id`, `product_id`, `variation`, `price`, `tax`, `shipping_cost`, `shipping_type`, `pickup_point`, `carrier_id`, `discount`, `product_referral_code`, `coupon_code`, `coupon_applied`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 9, 12, NULL, 0, 4, 'Azure-قطنمصري-لارج', 50.00, 0.00, 0.00, '', NULL, NULL, 0.00, NULL, NULL, 0, 3, '2023-11-28 20:15:27', '2023-11-28 20:15:27'),
(2, 9, 12, NULL, 0, 6, '40', 50.00, 0.00, 0.00, '', NULL, NULL, 0.00, NULL, NULL, 0, 1, '2023-11-28 20:15:35', '2023-11-28 20:15:35'),
(3, 9, 13, NULL, 0, 8, 'Amethyst-محلي-أكسلارج', 50.00, 0.00, 0.00, '', NULL, NULL, 0.00, NULL, NULL, 0, 3, '2023-12-01 14:06:42', '2023-12-01 14:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `parent_id` int DEFAULT '0',
  `level` int NOT NULL DEFAULT '0',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `order_level` int NOT NULL DEFAULT '0',
  `commision_rate` double(8,2) NOT NULL DEFAULT '0.00',
  `banner` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `cover_image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `featured` int NOT NULL DEFAULT '0',
  `top` int NOT NULL DEFAULT '0',
  `digital` int NOT NULL DEFAULT '0',
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `level`, `name`, `order_level`, `commision_rate`, `banner`, `icon`, `cover_image`, `featured`, `top`, `digital`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 'ملابس', 0, 0.00, '35', '35', '35', 1, 1, 0, 'demo-category-1', 'ملابس', NULL, '2023-11-28 21:50:18', '2023-11-28 19:50:18'),
(2, 0, 0, 'أحذية', 0, 0.00, '38', '38', '38', 1, 0, 0, 'demo-category-2', 'أحذية', NULL, '2023-11-28 21:55:44', '2023-11-28 19:55:44'),
(3, 1, 1, 'ملابس رجالي', 0, 0.00, '39', '39', '39', 1, 1, 0, 'demo-category-3', 'ملابس رجالي', NULL, '2023-11-28 21:56:28', '2023-11-28 19:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `state_id` int NOT NULL,
  `cost` double(20,2) NOT NULL DEFAULT '0.00',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `cost`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9339, 'ابي الخصيب', 133, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(9341, 'الاساتذة', 133, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(9343, 'الاصمعي', 133, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(9345, 'البراضعية', 133, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(9347, 'التحسينية', 133, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(9349, 'التنومة', 133, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(9351, 'الجبيلة', 133, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(9353, 'الجزائر', 133, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(9357, 'الجمهورية', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9359, 'الجنينة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9361, 'الحكيمية', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9363, 'الخضراء', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9365, 'الخليج', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9367, 'الرسالة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9369, 'الرميلة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9371, 'الزبير', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9373, 'الزهراء', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9375, 'الساعي', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9377, 'الشعيبة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9379, 'الشلامجة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9381, 'الصالحية', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9383, 'الطوبة والنخيلة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9385, 'الطويسة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9389, 'العشار', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9391, 'الفيروزية', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9393, 'القبلة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9395, 'الكباسي', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9397, 'الكزيزة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9399, 'الكندي', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9401, 'المشراق الجديد', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9403, 'المشراق القديم', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9405, 'المطيحة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9407, 'المعقل', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9409, 'المفتية', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9411, 'المهندسين', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9413, 'النجيبية', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9415, 'ام قصر', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9417, 'بريهة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9419, 'الجامعة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9421, 'خمسة ميل', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9423, 'خور الزبير', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9425, 'دور نواب الضباط', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9427, 'صفوان', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9429, 'صنعاء', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9431, 'كردلاند', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9433, 'كرمة علي', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9435, 'مناوي باشا', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9437, 'مناوي لجم', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9439, 'ياسين خريبط', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(9441, 'الامن الداخلي', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10005, 'جامعة البصرة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10027, 'الكندي', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10029, 'الحدباء', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10031, 'الصديق', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10033, 'السكر', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10035, 'البلديات', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10037, 'البريد', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10039, 'المثنى', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10041, 'المصارف', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10043, 'الزهور', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10045, 'التحرير', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10047, 'حي صدام', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10049, 'القادسية الثانية', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10051, 'القادسية الاولى', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10053, 'حي المشراق', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10055, 'النور', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10059, 'فلسطين', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10061, 'دوميز', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10063, 'سومر', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10065, 'الميثاق', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10067, 'الوحدة', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10069, 'المزارع', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10071, 'الضباط', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10073, 'نينوى الشرقية', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10075, 'المالية', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10077, 'النصر', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10081, 'الثقافة', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10083, 'المهندسين', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10085, 'البعث', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10087, 'حي المنصور', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10089, 'الشهداء', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10091, 'تل الرمان', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10093, 'المعلمين', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10095, 'العامل', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10097, 'نابلس', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10099, 'اليرموك', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10101, 'الزنجلي', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10103, 'الصحة', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10105, '17 تموز', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10107, 'الاندلس', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10109, 'الشرطة', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10111, 'الجزائر', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10113, 'النبي يونس', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10115, 'الرشيدية', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10117, 'العربي', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10119, 'العركوب', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10121, 'الاقتصاديين', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10123, 'موصل الجديدة', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10125, 'الساعة', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10127, 'الانتصار', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10129, 'الكرامة', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10131, 'عدن', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10133, 'الشيخكية', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10135, 'أبي تمّام', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10137, 'النعمانية', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10143, 'القاهرة', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10145, 'القيروان', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10147, 'القدس', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10149, 'الرفاعي', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10151, 'الثورة', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10155, 'الدواسة', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10159, 'الفيصلية', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10161, 'السلام', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10163, 'الغزلاني', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10165, 'الشفاء', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10167, 'الصناعة', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10169, 'الأخاء', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10171, 'السويس', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10173, 'الاعلام', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10175, 'التأميم', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10177, 'الزراعي', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10179, 'الجامعة', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10181, 'المأمون', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10183, 'الخضراء', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10193, 'الشيخ فتحي', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10197, 'المحطّة', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10199, 'الطيران', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10201, 'وادي حجر', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10203, 'النبي شيت', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10205, 'يافا', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10207, 'النجار', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(10209, 'الكاظمية‎‎', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10211, 'أبو دشير', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10213, '9 نيسان', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10215, 'الأعظمية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10217, 'البتاوين', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10219, 'البلديات', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10221, 'البنوك', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10223, 'البياع', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10225, 'الحارثية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10227, 'الحرية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10229, 'الحسينية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10231, 'الجادرية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10233, 'الدورة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10235, 'الدولعي', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10237, 'السيدية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10239, 'الشرطة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10241, 'الراشدية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10243, 'الزعفرانية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10245, 'الشعب', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10247, 'الشعلة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10249, 'الشيخ عمر', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10251, 'الصالحية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10253, 'الصليخ', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10255, 'العامرية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10257, 'العطيفية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10259, 'الغدير', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10261, 'الغزالية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10263, 'الفضلية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10265, 'القادسية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10267, 'الكرادة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10269, 'المحمودية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10271, 'المدائن', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10273, 'المسبح', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10275, 'المشتل', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10277, 'المنصور', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10279, 'النهروان', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10281, 'الوزيرية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10283, 'الوشاش', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10285, 'اليرموك', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10287, 'باب شرقي', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10289, 'بغداد الجديدة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10291, 'بوب الشام', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10293, 'جسر ديالى', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10295, 'الإعلام', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10297, 'التراث', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10299, 'الجامعة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10301, 'الجهاد', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10303, 'الخضراء', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10305, 'العامل', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10307, 'العدل', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10309, 'الكندي', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10311, 'المهدية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10313, 'أور', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10315, 'حطين', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10317, 'زيونة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10319, 'شارع أبو نؤاس', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10321, 'شارع السعدون', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10323, 'شارع المغرب', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10325, 'شارع النضال', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10327, 'شارع حيفا', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10329, 'شارع فلسطين', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10333, 'كمب سارة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10335, 'مدينة الصدر', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10337, 'الشماسية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10339, 'الضباط', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10341, 'الرفاق', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10343, 'الكسرة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10345, 'سبع ابكار', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10347, 'الرصافة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10349, 'الكريعات', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10351, 'الربيع', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10353, 'الفحامة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10355, 'حي الزهور', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10357, 'الوحدة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10361, 'هور رجب', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10363, 'الآثوريين', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10365, 'الرضوانية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10367, 'الطوبجي', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10369, 'الهبنة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10371, 'الجمبلاطية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10373, 'الخطيب', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10375, 'الميكانيك', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10377, 'راغبة خاتون', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10379, 'شارع الرشيد', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10381, 'شارع المتنبي', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10383, 'عرب جبور', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10385, 'عنكاوة', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10387, 'كوران عنكاوة', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10389, 'صلاح الدين', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10391, 'برلمان', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10393, 'نشتمان', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10399, 'ازادي', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10401, 'ازادي ٢', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10403, 'مستوفي', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10405, 'طيراوة', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10407, 'شهداء', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10409, 'قيصرية', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10411, 'عرب', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10413, 'تعجيل', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10415, 'زانياري', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10417, 'كوماري', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10419, 'روناكي', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10421, 'سيداوة', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10423, 'حي الاسكان', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10425, 'منتكاوة', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10429, 'الماجیداوه‌', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10431, 'مقبرة الجنوب', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10433, 'بهار', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10435, 'كردستان', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10437, 'نوروز', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10439, 'تورق', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10441, 'شادی', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10443, 'صناعة جنوبية', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10445, 'راستي', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10447, '١١ اذار', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10449, 'زانكو ١', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10451, 'زانكو ٢', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10453, 'روشنبیري', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10457, 'حمرین', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10459, 'شارواني', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10461, 'کلاویز', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10463, 'کاریزان', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10465, 'باداوة', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10467, 'جنار', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10469, 'مامۆستايان', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10471, 'جوار جرا', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10473, 'آلعلماء', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10475, 'خه‌ بات', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10477, 'هفالان', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10479, 'المنارة', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10481, 'كولان ١', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10483, 'كولان ٢', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10485, 'زاكروس', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10487, 'سفین', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10489, 'رابرين', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10491, 'كويستان', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10493, 'كاني', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10495, 'شورش', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10497, 'خانزاد', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10499, 'برايتي', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10501, 'هولیر الجدیدة', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10503, 'سربستي', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10505, 'مدينة أحلام', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10509, 'العدالة', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10513, 'ناز', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10515, 'موفتي', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10517, 'قلعة أربيل', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10519, 'الوزيرية', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10523, 'الزوراء', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10525, 'الرشيد', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10527, 'واحد آذار', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10529, 'واحد حزيران', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10533, 'الواسطي', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10537, 'الأسرى والمفقودين', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10539, 'العسكري', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10541, 'دوميز', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10545, 'عدن', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10547, 'باشور', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10553, 'حي الخضراء', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10555, 'البعث', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10557, 'قادسية', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10559, 'النصر', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10561, 'المعلمين', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10563, 'حي المنصور', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10565, 'العروبة', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10567, 'غرناطة', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10569, 'تسعين', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10571, 'فيلق', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10573, 'الحجاج', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10575, 'الوحدة', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10577, 'العلماء', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10579, 'قتيبة', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10585, 'الحرية', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10587, 'المصلى', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10589, 'قورية', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10591, 'عرفة', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10593, 'بكلر', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10597, 'امام قاسم', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10599, 'الاسكان', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10601, 'دروزة', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10605, 'الجمهورية', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10607, 'القصابين', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10609, 'القادسية الاولى', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10611, 'الشهداء', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10613, 'رحيم ئاوه', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10619, 'الضباط', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10621, 'بريادي', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10623, 'الشورجة', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10625, 'شاطرلو', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10627, 'احمد آغا', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10629, 'الماس', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10631, 'القلعة', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10633, 'ساحة طيران', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10635, 'حمزه لي', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10637, 'ئازادى', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10639, 'الكورنيش', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10641, 'الصناعية', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10643, 'الانصار', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10645, 'القـدس', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10647, 'الامام المهدي', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10649, 'المعلمين', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10651, 'عدن', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10653, 'السواق', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10655, 'الزهراء', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10657, 'القادسية', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10659, 'الامير', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10661, 'الاشتراكي', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10663, 'السعد', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10665, 'الحنانة', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10667, 'الحسين', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10669, 'الكرامة', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10671, 'الغدير', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10673, 'الفرات', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10675, 'العدالة', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10677, 'الجامعة', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10679, 'السلام', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10681, 'الغري الثاني', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10683, 'الرحمة', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10685, 'الشهداء', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10687, 'الرسالة', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10689, 'ابو طالب', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10691, 'المهندسين', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10693, 'النصر', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10695, 'الميلاد', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10697, 'الفاو', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10699, 'النداء', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10701, 'الوفاء', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10703, 'الشعراء', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10705, 'العروبة', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10707, 'الكرمة', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10709, 'المشراق', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10711, 'وادي السلام', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10896, 'القرنه', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(10918, 'ابوغريب', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(10922, 'حي الحسين', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12766, 'الشباب', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12768, 'دور النفط', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12770, 'الحيانية', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12772, 'الكوت', 208, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12774, 'العزيزية', 208, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12776, 'الشيخ سعد', 208, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12778, 'الصويرة', 208, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12780, 'النعمانية', 208, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12782, 'العزة الجديدة', 208, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12784, 'الجمعيات', 206, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12786, 'قلعة صالح', 206, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12788, 'علي الغربي', 206, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12790, 'دور النفط', 206, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12792, 'العماره', 206, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12794, 'المجرالكبير', 206, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12796, 'شوراو', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12798, 'الحويجة', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12800, 'الهندية', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12802, 'حي الرسالة', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12804, 'حي الموظفين', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12806, 'حي المدراء', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12808, 'حي العباس', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12810, 'حي السلام', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12812, 'حي الاطباء', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12814, 'حي الحر', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12816, 'حي المؤمنين', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12818, 'حي التحدي', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12820, 'حي البلدية', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12822, 'تكريت', 141, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12824, 'الناصريه', 196, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12826, 'الموفقيه', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12828, 'البناء الجاهز', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12830, 'الإبراهيمية', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12832, 'قضاء الدجيل', 141, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12834, 'الزهراء', 141, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12836, 'الشهداء', 141, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12838, 'حي العصري', 141, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12840, 'سامراء', 141, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12842, 'بيجي', 141, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12844, 'الإسكان الصناعي', 196, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12846, 'الشموخ', 196, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12848, 'الشعلة', 196, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12850, 'الإسكان', 196, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12852, 'الثورة', 196, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12854, 'المنصورية', 196, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12856, 'التضحية', 196, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12858, 'الصالحية', 196, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12860, 'العسكري', 196, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12862, 'الشهداء', 196, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12864, 'اريدو', 196, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12866, 'الصدر', 196, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12868, 'أور', 196, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12870, 'سومر', 196, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12872, 'البشائر', 196, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12874, 'رفاعي', 196, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12876, 'منطقه الزاويه', 196, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12878, 'الشرقية', 196, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12880, 'الشطرة', 196, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12882, 'الفداء', 196, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12884, 'الفضلية', 196, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12886, 'الحسين', 196, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12888, 'حي المعلمين', 196, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12890, 'خفاجة', 196, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12892, 'سوق الشيوخ', 196, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(12894, 'خالص', 194, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12896, 'الحويش', 194, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12898, 'المقدادية', 194, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12900, 'بعقوبة', 194, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12902, 'جديدة الشط', 194, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12904, 'جلولة', 194, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12906, 'خان بني سعد', 194, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12908, 'خناقين', 194, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12910, 'شفتة', 194, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12912, 'ماسيكي', 192, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(12914, 'العبيدي', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12916, 'الرشاد', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12918, 'الكرامة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12920, 'بسماية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12922, 'كميرة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12924, 'حي النصر', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12926, 'الطالبية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12928, 'حي الجوادين', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12930, 'شارع المطبق', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12932, 'سلمان باك', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12934, 'سبع البور', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12936, 'الرحمانية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12938, 'حي الرحمة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12940, 'البساتين', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12942, 'جميلة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12944, 'حي تونس', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12946, 'حي المواصلات', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12948, 'حي المعلمين', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12950, 'حي الأمين', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12952, 'حي القاهرة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12954, 'حي الفرات', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12956, 'الحي العسكري', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12958, 'حي الرسالة الثانية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12960, 'حي البتول', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12962, 'جرف النداف', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12964, 'الثعالبة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12966, 'التاجيات', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12968, 'باب المعظم', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12970, 'أم الكبر والغزلان', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12972, 'اليوسفية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12974, 'الملحانية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12976, 'المعالف', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12978, 'المستنصرية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12980, 'الكفاءات', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12982, 'الكرخ', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12984, 'عرصات الهندية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12986, 'العلوية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12988, 'الطارمية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12990, 'الصرافية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12992, 'الصحفيين', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12996, 'السلاميات', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(12998, 'الري', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13000, 'الرواد', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13002, 'الراشدية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13004, 'الحميدية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13006, 'الحبيبية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13008, 'التاجي', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13010, 'البوعامر', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13012, 'البكرية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13014, 'الإسكان', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13016, 'الكفل', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13018, 'المحاويل', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13020, 'الهاشمية', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13022, 'القاسم', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13024, 'الحلة', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13026, 'حي العسكري', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13028, 'شارع 30', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13030, 'جسر سيف سعد', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13032, 'سنجار', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13034, 'حي الحسين', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13036, 'الجمعية', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13038, 'البكرية', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13040, 'حي الإمام', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13042, 'الحي الصناعي', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13044, 'بنشة', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13046, 'حي النصر', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13048, 'حي بابل', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13050, 'مسيب', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13052, 'الإسكندرية', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13054, 'أبي غرق', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13056, 'الحمزة', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13058, 'الشوملي', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13060, 'المهندسين', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13062, 'الأكرمين', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13064, 'الوردية', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13066, 'الثورة', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13068, 'المشخاب', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13070, 'العباسية', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13072, 'البو حداري', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13074, 'الكوفة', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13076, 'حي ميسان', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13078, 'الكفل', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13080, 'المناذرة', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13082, 'علوة فحل', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13084, 'الحيدرية', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13086, 'حي 17 تموز', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13088, 'حي العسكري', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13090, 'الحرية', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13092, 'أبو صخير', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13094, 'حي البكر', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(13096, 'السماوة', 204, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(13098, 'حي السكك', 204, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(13100, 'حي العسكري', 204, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(13102, 'عفك', 202, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(13104, 'الدغارة', 202, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(13106, 'حي العسكري', 202, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(13108, 'أم الخيل', 202, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(13110, 'الديوانية', 202, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(13112, 'باب الشيخ', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13114, 'الصحة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13116, 'الداودي', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13118, 'منطقة كسرة وعطش', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13120, 'كرادة مريم', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13122, 'حي المهندسين', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13124, 'كرادة خارج', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13126, 'شارع السلام', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13128, 'البستان', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13130, 'حي دراغ', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13132, 'تبوك', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13134, 'التعليم', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13136, 'الشماعية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13138, 'الشورجة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13140, 'حي الأندلس', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13142, 'حي العربي', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13144, 'طرابلس', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13146, 'الأطباء', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13148, 'الألفين', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13150, 'الديوان', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13152, 'الأمانة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13154, 'المخابرات', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13156, 'السفارات', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13158, 'الصابيات', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13160, 'الرئاسة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13162, 'ابو نؤاس', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13164, 'النعيرية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13166, 'حافظ القاضي', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(13168, 'الحمزة', 202, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(13170, 'البدير', 202, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(13172, 'الفاو', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13174, 'كوت الحجاج', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13176, 'قضاء شط العرب', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13178, 'الهارثة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13180, 'قضاء المدينة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13182, 'صناعية حمدان', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13184, 'صبخة العرب', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13186, 'ساحة سعد', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13188, 'حي المعلمين', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13190, 'حي الكفاءات', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13192, 'حي الأصدقاء', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13194, 'أم النعاج', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13196, 'النشوة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13198, 'الكسزنزانية', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13200, 'شقلاوة', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL);
INSERT INTO `cities` (`id`, `name`, `state_id`, `cost`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13202, 'التأميم', 144, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13204, 'الرمادي', 144, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13206, 'الصوفية', 144, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13208, 'الفلوجة', 144, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13210, 'العبيدي', 144, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13212, 'الصقلاوية', 144, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13214, 'الحديثة', 144, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13216, 'رزكاري', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(13753, 'الديار', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(14875, 'أخرى', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(14876, 'أخرى', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(14877, 'أخرى', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(14878, 'أخرى', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(14879, 'أخرى', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(14880, 'أخرى', 140, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(14881, 'أخرى', 141, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(14882, 'أخرى', 143, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(14883, 'أخرى', 144, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(14899, 'أخرى', 188, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(14900, 'أخرى', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(14901, 'أخرى', 192, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(14902, 'أخرى', 194, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(14903, 'أخرى', 196, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(14904, 'أخرى', 202, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(14905, 'أخرى', 204, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(14906, 'أخرى', 206, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(14907, 'أخرى', 208, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(15199, 'الجبايش', 196, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(15536, 'سبيلك', 144, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(15538, 'شارع المطار', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(15540, 'عويريج', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(15542, 'شارع اماد', 192, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(15544, 'بختياري', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(15546, 'نوسران', 135, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(15548, 'البلدية', 140, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(15550, 'الضباط', 140, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(15552, 'الحسين', 140, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(15554, 'حي النقيب', 140, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(15556, 'عون', 140, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(15558, 'بجركي دوميز', 190, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(15560, 'المنطقة الصناعية', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(15562, 'العروبة', 202, 50.00, 1, '2023-12-09 08:31:33', '2023-12-09 08:31:33', NULL),
(15564, 'بلد', 141, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(15566, 'المنطقة الصناعية', 143, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(16495, 'مجمع الأمل السكني', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(16511, 'النهضة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(16519, 'حي الداخلية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(16521, 'المأمون', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(16523, 'حي الحمراء', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(16555, 'شارع الوفود', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18249, 'كوريش حي السلام', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(18251, 'الكمالية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(18253, 'جوهرة بغداد', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(18255, 'علي صالح', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(18257, 'الشرطة الخامسة', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(18259, 'حي المعامل', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(18261, 'حي المعتصم', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(18263, 'جكوك', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(18265, 'شارع النهر', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(18267, 'الشالجية', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(18269, 'دور القضاة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18271, 'مركز المدينه', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18273, 'البيضان', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18275, 'حي الشرطة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18277, 'المدينة الرياضية', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18279, 'التميمية', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18281, 'الجزيره', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18283, 'عويسيان', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18285, 'الابلة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18287, 'المدراء', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18289, 'حي الزهور', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18291, 'شارع 14 تموز', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18293, 'السيبه', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18295, 'بصرة القديمة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18297, 'الكورنيش', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18299, 'الاكوات', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18301, 'شارع السعدي', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18303, 'اليوبه', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18305, 'السيمر', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18307, 'حي بغداد', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18309, 'الحوطة', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18311, 'الرافدين', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18313, 'برطلة', 132, 50.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:31:31', NULL),
(18315, 'الضلوعية', 141, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(18317, 'كلار', 143, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(19003, 'الدوانم', 131, 20.00, 1, '2023-12-09 08:31:31', '2023-12-09 08:42:47', NULL),
(19005, 'عمان', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(19007, 'شارع المقاولين', 133, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(19019, 'مجمع الاميرات السكني', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(19021, 'مجمع الكرار السكني', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(19023, 'مجمع سلطان السكني', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(19025, 'مجمع الزهراء السكني', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(19027, 'مجمع النخيل السكني', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(19029, 'قرية الغدير السكنية', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(19031, 'مجمع بوابة النجف السكني', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(19033, 'مجمع الحسين السكني', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(19035, 'مدينة ابو تراب السكنية', 139, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(19042, 'الخالدية', 144, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(19044, 'كانيماران', 143, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(19072, 'هيت', 144, 50.00, 1, '2023-12-09 08:31:32', '2023-12-09 08:31:32', NULL),
(19074, 'ytu', 131, 20.00, 1, '2023-12-13 13:00:39', '2023-12-13 13:00:39', NULL),
(19075, 'ytu', 131, 20.00, 1, '2023-12-13 13:00:46', '2023-12-13 13:00:46', NULL),
(19076, 'ytu', 131, 20.00, 1, '2023-12-13 13:01:04', '2023-12-13 13:01:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `classifications`
--

CREATE TABLE `classifications` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max` int DEFAULT NULL,
  `min` int DEFAULT NULL,
  `related` enum('orders_count','orders_sum_grand_total','category','badge') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `badge_id` bigint UNSIGNED DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classifications`
--

INSERT INTO `classifications` (`id`, `name`, `description`, `logo`, `max`, `min`, `related`, `badge_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Kitra Johns', NULL, NULL, NULL, NULL, 'orders_count', NULL, NULL, '2023-12-02 03:09:35', '2023-12-02 03:09:35'),
(2, 'Shaine Osborne', NULL, NULL, 547, 450, 'orders_sum_grand_total', NULL, NULL, '2023-12-02 03:09:47', '2023-12-02 03:09:47'),
(3, 'Hope Aguirre', NULL, NULL, NULL, NULL, 'category', NULL, 2, '2023-12-02 03:10:02', '2023-12-02 03:10:02'),
(4, 'Sybill Dale', NULL, NULL, NULL, NULL, 'badge', 3, NULL, '2023-12-02 03:10:14', '2023-12-02 03:10:14'),
(5, 'Desirae Grant', NULL, '8', 5, 50, 'orders_count', NULL, NULL, '2023-12-02 03:15:18', '2023-12-02 03:15:18'),
(6, 'Orlando Ross', 'Molestiae officia ad', NULL, 50, 50, 'orders_sum_grand_total', NULL, NULL, '2023-12-02 03:16:34', '2023-12-02 03:16:34'),
(7, 'Orson Callahan', 'Eos enim officiis s', '10', NULL, NULL, 'badge', 3, NULL, '2023-12-02 03:16:54', '2023-12-02 03:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(16, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(38, 'Fuchsia', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(76, 'Cyan', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(93, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `combined_orders`
--

CREATE TABLE `combined_orders` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `shipping_address` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `grand_total` double(20,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `combined_orders`
--

INSERT INTO `combined_orders` (`id`, `user_id`, `shipping_address`, `grand_total`, `created_at`, `updated_at`) VALUES
(1, 14, '{\"name\":\"Savannah Gaines\",\"email\":\"gyjehypemi@mailinator.com\",\"address\":\"\\u0627\\u0644\\u062f\\u064a\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0644\\u0643\\u064a\",\"country\":\"\\u0627\\u0644\\u0639\\u0631\\u0627\\u0642\",\"state\":\"\\u0628\\u063a\\u062f\\u0627\\u062f\",\"city\":\"\\u0628\\u063a\\u062f\\u0627\\u062f\",\"postal_code\":\"454\",\"phone\":\"465465489651\"}', 200.00, '2023-12-01 14:22:37', '2023-12-01 14:22:37'),
(2, 14, '{\"name\":\"\\u0623\\u062d\\u0645\\u062f \\u0645\\u062d\\u0645\\u062f \\u062d\\u062c\\u0627\\u0632\\u064a \\u0623\\u062d\\u0645\\u062f\",\"email\":\"gyjehypemi@mailinator.com\",\"address\":\"\\u0627\\u0644\\u062f\\u064a\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0644\\u0643\\u064a\",\"country\":\"\\u0627\\u0644\\u0639\\u0631\\u0627\\u0642\",\"state\":\"\\u0628\\u063a\\u062f\\u0627\\u062f\",\"city\":\"\\u0628\\u063a\\u062f\\u0627\\u062f\",\"postal_code\":\"454\",\"phone\":\"465465489651\"}', 150.00, '2023-12-01 23:46:10', '2023-12-01 23:46:10'),
(3, 33, '{\"name\":\"Reese Ingram\",\"email\":\"jotydaruha@mailinator.com\",\"address\":\"Mollitia id aut do\",\"country\":\"\\u0627\\u0644\\u0639\\u0631\\u0627\\u0642\",\"state\":\"\\u0628\\u0627\\u0628\\u0644\",\"city\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0648\\u064a\\u0644\",\"postal_code\":\"Atque magnam quam eo\",\"phone\":\"7801111466\"}', 150.00, '2023-12-15 12:43:32', '2023-12-15 12:43:32'),
(4, 33, '{\"name\":\"Reese Ingram\",\"email\":\"jotydaruha@mailinator.com\",\"address\":\"Saepe fugiat odio qu\",\"country\":\"\\u0627\\u0644\\u0639\\u0631\\u0627\\u0642\",\"state\":\"\\u0627\\u0644\\u0646\\u062c\\u0641\",\"city\":\"\\u0627\\u0644\\u0642\\u0640\\u062f\\u0633\",\"postal_code\":\"Cillum quo voluptas\",\"phone\":\"+1 (213) 685-7247\"}', 150.00, '2023-12-15 13:21:23', '2023-12-15 13:21:24'),
(5, 33, '{\"name\":\"Reese Ingram\",\"email\":\"jotydaruha@mailinator.com\",\"address\":\"Saepe fugiat odio qu\",\"country\":\"\\u0627\\u0644\\u0639\\u0631\\u0627\\u0642\",\"state\":\"\\u0627\\u0644\\u0646\\u062c\\u0641\",\"city\":\"\\u0627\\u0644\\u0642\\u0640\\u062f\\u0633\",\"postal_code\":\"Cillum quo voluptas\",\"phone\":\"+1 (213) 685-7247\"}', 150.00, '2023-12-15 13:23:01', '2023-12-15 13:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `commission_histories`
--

CREATE TABLE `commission_histories` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `order_detail_id` int NOT NULL,
  `seller_id` int NOT NULL,
  `admin_commission` double(25,2) NOT NULL,
  `seller_earning` double(25,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int NOT NULL,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `title` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sender_viewed` int NOT NULL DEFAULT '1',
  `receiver_viewed` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int NOT NULL,
  `code` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `zone_id` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `zone_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'IQ', 'العراق', 0, 1, '2023-11-30 16:00:46', '2023-11-30 16:00:49', '2023-11-30 16:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `details` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `discount` double(20,2) NOT NULL,
  `discount_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `start_date` int NOT NULL,
  `end_date` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_usages`
--

CREATE TABLE `coupon_usages` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `coupon_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `symbol` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `exchange_rate` double(10,5) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `created_at`, `updated_at`) VALUES
(1, 'د.ع', 'د.ع', 1.00000, 1, 'د.ع', '2018-10-09 11:35:08', '2023-12-01 16:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `customer_packages`
--

CREATE TABLE `customer_packages` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL,
  `product_upload` int DEFAULT NULL,
  `logo` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_package_payments`
--

CREATE TABLE `customer_package_payments` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `customer_package_id` int NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payment_details` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `approval` int NOT NULL,
  `offline_payment` int NOT NULL COMMENT '1=offline payment\r\n2=online paymnet',
  `reciept` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_products`
--

CREATE TABLE `customer_products` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `published` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `added_by` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `subcategory_id` int DEFAULT NULL,
  `subsubcategory_id` int DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `photos` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `conditon` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `location` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `video_provider` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `video_link` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `unit` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `unit_price` double(20,2) DEFAULT '0.00',
  `meta_title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_img` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `pdf` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `slug` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `firebase_notifications`
--

CREATE TABLE `firebase_notifications` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `item_type` varchar(255) NOT NULL,
  `item_type_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `start_date` int DEFAULT NULL,
  `end_date` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `featured` int NOT NULL DEFAULT '0',
  `background_color` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_products`
--

CREATE TABLE `flash_deal_products` (
  `id` int NOT NULL,
  `flash_deal_id` int NOT NULL,
  `product_id` int NOT NULL,
  `discount` double(20,2) DEFAULT '0.00',
  `discount_type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `follow_sellers`
--

CREATE TABLE `follow_sellers` (
  `user_id` bigint NOT NULL,
  `shop_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `subsubcategories` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `category_id`, `subsubcategories`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"1\"]', 1, '2019-03-12 06:38:23', '2019-03-12 06:38:23'),
(2, 2, '[\"10\"]', 1, '2019-03-12 06:44:54', '2019-03-12 06:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `app_lang_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'en',
  `rtl` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `app_lang_code`, `rtl`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'en', 0, 0, '2019-01-20 12:13:20', '2023-12-06 14:58:58'),
(4, 'Arabic', 'ar', 'ar', 1, 1, '2019-04-28 18:34:12', '2019-04-28 18:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `conversation_id` int NOT NULL,
  `user_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_10_13_000000_create_social_credentials_table', 2),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_06_07_000000_create_payku_transactions_table', 1),
(6, '2021_06_07_000001_create_payku_payments_table', 1),
(7, '2021_12_15_000000_add_new_columns_to_tables', 1),
(8, '2022_06_29_075906_create_product_queries_table', 1),
(9, '2023_12_01_094230_add_cost_to_states_table', 3),
(10, '2023_12_02_041625_create_badges_table', 4),
(11, '2023_12_02_041626_create_classifications_table', 5),
(12, '2023_12_02_041700_create_user_classifications_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 28),
(2, 'App\\Models\\User', 29),
(2, 'App\\Models\\User', 30),
(2, 'App\\Models\\User', 31),
(2, 'App\\Models\\User', 32);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('000efc6f-5027-4fa7-b35f-4f8bae70519c', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 14, '{\"order_id\":1,\"order_code\":\"20231201-16223711\",\"user_id\":14,\"seller_id\":9,\"status\":\"confirmed\"}', NULL, '2023-12-01 21:09:20', '2023-12-01 21:09:20'),
('02eea25e-4501-4617-9fed-235c0e12fbd9', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 14, '{\"order_id\":1,\"order_code\":\"20231201-16223711\",\"user_id\":14,\"seller_id\":9,\"status\":\"placed\"}', NULL, '2023-12-01 14:22:44', '2023-12-01 14:22:44'),
('070528d1-03cd-48f6-a817-74450209148d', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 9, '{\"order_id\":3,\"order_code\":\"385\",\"user_id\":33,\"seller_id\":9,\"status\":\"cancelled\"}', NULL, '2023-12-15 13:10:44', '2023-12-15 13:10:44'),
('1d48ca1f-7e6d-4f6f-b999-2f9efb6c2e4d', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 9, '{\"order_id\":3,\"order_code\":\"385\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}', NULL, '2023-12-15 12:43:41', '2023-12-15 12:43:41'),
('2fdb5210-e6d5-4901-b445-2a555c087650', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 14, '{\"order_id\":2,\"order_code\":\"20231202-01461071\",\"user_id\":14,\"seller_id\":9,\"status\":\"placed\"}', NULL, '2023-12-01 23:46:14', '2023-12-01 23:46:14'),
('3b77dc42-416b-4500-9eaa-c48df646c7a1', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 33, '{\"order_id\":3,\"order_code\":\"385\",\"user_id\":33,\"seller_id\":9,\"status\":\"cancelled\"}', NULL, '2023-12-15 13:10:44', '2023-12-15 13:10:44'),
('505718e6-9241-46cd-9450-1a4fdaf55a7a', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 14, '{\"order_id\":1,\"order_code\":\"20231201-16223711\",\"user_id\":14,\"seller_id\":9,\"status\":\"paid\"}', NULL, '2023-12-01 21:09:30', '2023-12-01 21:09:30'),
('60c0c3e7-0098-41a0-a4c4-57b33352f6eb', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 9, '{\"order_id\":2,\"order_code\":\"20231202-01461071\",\"user_id\":14,\"seller_id\":9,\"status\":\"placed\"}', '2023-12-02 00:11:13', '2023-12-01 23:46:14', '2023-12-02 00:11:13'),
('7f62e890-dfae-4856-a260-195ae2b6e0e7', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 33, '{\"order_id\":4,\"order_code\":\"470\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}', NULL, '2023-12-15 13:21:28', '2023-12-15 13:21:28'),
('80ce2c5e-2ef1-4a53-923e-56fab7bf5253', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 9, '{\"order_id\":4,\"order_code\":\"470\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}', NULL, '2023-12-15 13:21:28', '2023-12-15 13:21:28'),
('8c359e1e-d101-4178-9419-cdc0a08b22ad', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 9, '{\"order_id\":1,\"order_code\":\"20231201-16223711\",\"user_id\":14,\"seller_id\":9,\"status\":\"paid\"}', '2023-12-02 00:11:13', '2023-12-01 21:09:30', '2023-12-02 00:11:13'),
('8f5ec34a-0081-4736-966e-e79d53068b4b', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 14, '{\"order_id\":1,\"order_code\":\"20231201-16223711\",\"user_id\":14,\"seller_id\":9,\"status\":\"delivered\"}', NULL, '2023-12-01 21:09:27', '2023-12-01 21:09:27'),
('9bfa0fd7-bca9-414b-9071-fd9c1b82668d', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 9, '{\"order_id\":1,\"order_code\":\"20231201-16223711\",\"user_id\":14,\"seller_id\":9,\"status\":\"delivered\"}', '2023-12-02 00:11:13', '2023-12-01 21:09:27', '2023-12-02 00:11:13'),
('a04c9d91-d54c-42aa-95af-ab0c684de236', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 33, '{\"order_id\":3,\"order_code\":\"385\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}', NULL, '2023-12-15 12:43:41', '2023-12-15 12:43:41'),
('bde8035b-2f8e-444a-9252-74a96a8a8882', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 9, '{\"order_id\":5,\"order_code\":\"526\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}', NULL, '2023-12-15 13:23:08', '2023-12-15 13:23:08'),
('c86b5479-8ed7-466b-8181-c46f0137d2e4', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 9, '{\"order_id\":3,\"order_code\":\"385\",\"user_id\":33,\"seller_id\":9,\"status\":\"paid\"}', NULL, '2023-12-15 13:09:35', '2023-12-15 13:09:35'),
('e42420eb-2302-4ce3-900d-5e84dbd8b082', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 9, '{\"order_id\":1,\"order_code\":\"20231201-16223711\",\"user_id\":14,\"seller_id\":9,\"status\":\"placed\"}', '2023-12-02 00:11:13', '2023-12-01 14:22:44', '2023-12-02 00:11:13'),
('e67989e0-ca17-4776-8ce0-bb49d36ae540', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 33, '{\"order_id\":3,\"order_code\":\"385\",\"user_id\":33,\"seller_id\":9,\"status\":\"paid\"}', NULL, '2023-12-15 13:09:35', '2023-12-15 13:09:35'),
('ea82c81d-a86d-40b4-b81e-ba76c632f2b8', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 33, '{\"order_id\":5,\"order_code\":\"526\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}', NULL, '2023-12-15 13:23:08', '2023-12-15 13:23:08'),
('eb53b9cb-7f51-4571-9929-9f070a280364', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 9, '{\"order_id\":1,\"order_code\":\"20231201-16223711\",\"user_id\":14,\"seller_id\":9,\"status\":\"confirmed\"}', '2023-12-02 00:11:13', '2023-12-01 21:09:20', '2023-12-02 00:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `combined_order_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `guest_id` int DEFAULT NULL,
  `seller_id` int DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  `shipping_address` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `additional_info` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `shipping_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `order_from` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'web',
  `pickup_point_id` int NOT NULL DEFAULT '0',
  `carrier_id` int DEFAULT NULL,
  `delivery_status` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payment_status` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'unpaid',
  `payment_details` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `grand_total` double(20,2) DEFAULT NULL,
  `coupon_discount` double(20,2) NOT NULL DEFAULT '0.00',
  `code` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `notes` text COLLATE utf8mb3_unicode_ci,
  `tracking_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `date` int NOT NULL,
  `viewed` int NOT NULL DEFAULT '0',
  `delivery_viewed` int NOT NULL DEFAULT '1',
  `payment_status_viewed` int DEFAULT '1',
  `commission_calculated` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `combined_order_id`, `user_id`, `guest_id`, `seller_id`, `address_id`, `shipping_address`, `additional_info`, `shipping_type`, `order_from`, `pickup_point_id`, `carrier_id`, `delivery_status`, `payment_type`, `payment_status`, `payment_details`, `grand_total`, `coupon_discount`, `code`, `notes`, `tracking_code`, `date`, `viewed`, `delivery_viewed`, `payment_status_viewed`, `commission_calculated`, `created_at`, `updated_at`) VALUES
(1, 1, 14, NULL, 9, NULL, '{\"name\":\"أحمد محمد حجازي أحمد \",\"email\":\"gyjehypemi@mailinator.com\",\"address\":\"\\u0627\\u0644\\u062f\\u064a\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0644\\u0643\\u064a\",\"country\":\"\\u0627\\u0644\\u0639\\u0631\\u0627\\u0642\",\"state\":\"\\u0628\\u063a\\u062f\\u0627\\u062f\",\"city\":\"\\u0628\\u063a\\u062f\\u0627\\u062f\",\"postal_code\":\"454\",\"phone\":\"465465489651\"}', NULL, 'home_delivery', 'web', 0, NULL, 'delivered', 'cash_on_delivery', 'paid', NULL, 200.00, 0.00, '20231201-16223711', NULL, NULL, 1701447757, 1, 1, 1, 1, '2023-12-01 14:22:37', '2023-12-01 23:33:02'),
(2, 2, 14, NULL, 9, NULL, '{\"name\":\"\\u0623\\u062d\\u0645\\u062f \\u0645\\u062d\\u0645\\u062f \\u062d\\u062c\\u0627\\u0632\\u064a \\u0623\\u062d\\u0645\\u062f\",\"email\":\"gyjehypemi@mailinator.com\",\"address\":\"\\u0627\\u0644\\u062f\\u064a\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0644\\u0643\\u064a\",\"country\":\"\\u0627\\u0644\\u0639\\u0631\\u0627\\u0642\",\"state\":\"\\u0628\\u063a\\u062f\\u0627\\u062f\",\"city\":\"\\u0628\\u063a\\u062f\\u0627\\u062f\",\"postal_code\":\"454\",\"phone\":\"465465489651\"}', 'ثق', 'home_delivery', 'web', 0, NULL, 'pending', 'cash_on_delivery', 'unpaid', NULL, 150.00, 0.00, '20231202-01461071', NULL, NULL, 1701481570, 1, 0, 0, 0, '2023-12-01 23:46:10', '2023-12-02 05:39:03'),
(3, 3, 33, NULL, 9, NULL, '{\"name\":\"Reese Ingram\",\"email\":\"jotydaruha@mailinator.com\",\"address\":\"Mollitia id aut do\",\"country\":\"\\u0627\\u0644\\u0639\\u0631\\u0627\\u0642\",\"state\":\"\\u0628\\u0627\\u0628\\u0644\",\"city\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0648\\u064a\\u0644\",\"postal_code\":\"Atque magnam quam eo\",\"phone\":\"7801111466\"}', NULL, 'home_delivery', 'web', 0, NULL, 'cancelled', 'cash_on_delivery', 'paid', NULL, 150.00, 0.00, '385', NULL, NULL, 1702651412, 1, 0, 0, 1, '2023-12-15 12:43:32', '2023-12-15 13:10:44'),
(4, 4, 33, NULL, 9, NULL, '{\"name\":\"Reese Ingram\",\"email\":\"jotydaruha@mailinator.com\",\"address\":\"Saepe fugiat odio qu\",\"country\":\"\\u0627\\u0644\\u0639\\u0631\\u0627\\u0642\",\"state\":\"\\u0627\\u0644\\u0646\\u062c\\u0641\",\"city\":\"\\u0627\\u0644\\u0642\\u0640\\u062f\\u0633\",\"postal_code\":\"Cillum quo voluptas\",\"phone\":\"+1 (213) 685-7247\"}', NULL, 'home_delivery', 'web', 0, NULL, 'pending', 'cash_on_delivery', 'unpaid', NULL, 150.00, 0.00, '470', NULL, NULL, 1702653684, 0, 0, 0, 0, '2023-12-15 13:21:24', '2023-12-15 13:21:24'),
(5, 5, 33, NULL, 9, 4, '{\"name\":\"Reese Ingram\",\"email\":\"jotydaruha@mailinator.com\",\"address\":\"Saepe fugiat odio qu\",\"country\":\"\\u0627\\u0644\\u0639\\u0631\\u0627\\u0642\",\"state\":\"\\u0627\\u0644\\u0646\\u062c\\u0641\",\"city\":\"\\u0627\\u0644\\u0642\\u0640\\u062f\\u0633\",\"postal_code\":\"Cillum quo voluptas\",\"phone\":\"+1 (213) 685-7247\"}', NULL, 'home_delivery', 'web', 0, NULL, 'pending', 'cash_on_delivery', 'unpaid', NULL, 150.00, 0.00, '526', 'لم يرد', NULL, 1702653781, 1, 0, 0, 0, '2023-12-15 13:23:01', '2023-12-16 07:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `seller_id` int DEFAULT NULL,
  `product_id` int NOT NULL,
  `variation` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `price` double(20,2) DEFAULT NULL,
  `tax` double(20,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` double(20,2) NOT NULL DEFAULT '0.00',
  `quantity` int DEFAULT NULL,
  `payment_status` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'unpaid',
  `delivery_status` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'pending',
  `shipping_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `pickup_point_id` int DEFAULT NULL,
  `product_referral_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `earn_point` double(25,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `seller_id`, `product_id`, `variation`, `price`, `tax`, `shipping_cost`, `quantity`, `payment_status`, `delivery_status`, `shipping_type`, `pickup_point_id`, `product_referral_code`, `earn_point`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 2, 'Amethyst-محلي-أكسلارج', 150.00, 0.00, 50.00, 3, 'paid', 'delivered', 'home_delivery', NULL, NULL, 0.00, '2023-12-01 14:22:37', '2023-12-01 21:09:30'),
(2, 2, 9, 8, 'Amethyst-محلي-أكسلارج', 100.00, 0.00, 50.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, 0.00, '2023-12-01 23:46:10', '2023-12-01 23:46:10'),
(3, 3, 9, 8, 'Amethyst-محلي-أكسلارج', 100.00, 0.00, 50.00, 2, 'paid', 'cancelled', 'home_delivery', NULL, NULL, 0.00, '2023-12-15 12:43:32', '2023-12-15 13:10:44'),
(4, 4, 9, 8, 'Amethyst-محلي-أكسلارج', 100.00, 0.00, 50.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, 0.00, '2023-12-15 13:21:24', '2023-12-15 13:21:24'),
(5, 5, 9, 8, 'Amethyst-محلي-أكسلارج', 100.00, 0.00, 50.00, 2, 'unpaid', 'pending', 'home_delivery', NULL, NULL, 0.00, '2023-12-15 13:23:01', '2023-12-15 13:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `meta_title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `meta_description` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `keywords` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `type`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `meta_image`, `image`, `created_at`, `updated_at`) VALUES
(1, 'home_page', 'Home Page', 'home', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:13:20', '2020-11-04 10:13:20'),
(2, 'seller_policy_page', 'Seller Policy Pages', 'seller-policy', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:41', '2020-11-04 12:19:30'),
(3, 'return_policy_page', 'Return Policy Page', 'return-policy', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:41', '2020-11-04 10:14:41'),
(4, 'support_policy_page', 'Support Policy Page', 'support-policy', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:59', '2020-11-04 10:14:59'),
(5, 'terms_conditions_page', 'Term Conditions Page', 'terms', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:15:29', '2020-11-04 10:15:29'),
(6, 'privacy_policy_page', 'الخصوصية', 'privacy-policy', '<font color=\"#212529\"><span style=\"font-size: 12px;\">الخصوصية</span></font><br>', NULL, NULL, NULL, NULL, '48', '2020-11-04 10:15:55', '2023-12-16 05:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payku_payments`
--

CREATE TABLE `payku_payments` (
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `media` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_4_digits` int UNSIGNED DEFAULT NULL,
  `installments` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_parameters` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payku_transactions`
--

CREATE TABLE `payku_transactions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` int UNSIGNED DEFAULT NULL,
  `notified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int NOT NULL,
  `seller_id` int NOT NULL,
  `amount` double(20,2) NOT NULL DEFAULT '0.00',
  `payment_details` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `payment_method` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `txn_code` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `section`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'add_new_product', 'product', 'web', '2022-06-12 09:31:31', '2022-06-12 09:31:31'),
(2, 'show_all_products', 'product', 'web', '2022-06-12 09:32:34', '2022-06-12 09:32:34'),
(3, 'show_in_house_products', 'product', 'web', '2022-06-12 09:33:08', '2022-06-12 09:33:08'),
(4, 'show_seller_products', 'product', 'web', '2022-06-12 09:33:40', '2022-06-12 09:33:40'),
(5, 'product_edit', 'product', 'web', '2022-06-13 13:50:06', '2022-06-13 13:50:06'),
(6, 'product_duplicate', 'product', 'web', '2022-06-13 15:24:20', '2022-06-13 15:24:20'),
(7, 'product_delete', 'product', 'web', '2022-06-13 15:24:47', '2022-06-13 15:24:47'),
(8, 'show_digital_products', 'product', 'web', '2022-06-13 16:48:13', '2022-06-13 16:48:13'),
(9, 'add_digital_product', 'product', 'web', '2022-06-13 16:48:28', '2022-06-13 16:48:28'),
(10, 'edit_digital_product', 'product', 'web', '2022-06-13 16:48:40', '2022-06-13 16:48:40'),
(11, 'delete_digital_product', 'product', 'web', '2022-06-13 16:48:47', '2022-06-13 16:48:47'),
(12, 'download_digital_product', 'product', 'web', '2022-06-13 16:48:57', '2022-06-13 16:48:57'),
(13, 'product_bulk_import', 'product', 'web', '2022-06-13 18:18:52', '2022-06-13 18:18:52'),
(14, 'product_bulk_export', 'product', 'web', '2022-06-13 18:19:19', '2022-06-13 18:19:19'),
(15, 'view_product_categories', 'product_category', 'web', '2022-06-13 18:24:33', '2022-06-13 18:24:33'),
(16, 'add_product_category', 'product_category', 'web', '2022-06-13 18:25:56', '2022-06-13 18:25:56'),
(17, 'edit_product_category', 'product_category', 'web', '2022-06-13 18:26:17', '2022-06-13 18:26:17'),
(18, 'delete_product_category', 'product_category', 'web', '2022-06-13 18:26:42', '2022-06-13 18:26:42'),
(19, 'view_all_brands', 'brand', 'web', '2022-06-14 11:31:46', '2022-06-14 11:31:46'),
(20, 'add_brand', 'brand', 'web', '2022-06-14 11:32:08', '2022-06-14 11:32:08'),
(21, 'edit_brand', 'brand', 'web', '2022-06-14 11:32:16', '2022-06-14 11:32:16'),
(22, 'delete_brand', 'brand', 'web', '2022-06-14 11:32:25', '2022-06-14 11:32:25'),
(23, 'view_product_attributes', 'product_attribute', 'web', '2022-06-14 11:34:47', '2022-06-14 11:34:47'),
(24, 'add_product_attribute', 'product_attribute', 'web', '2022-06-14 11:35:20', '2022-06-14 11:35:20'),
(25, 'edit_product_attribute', 'product_attribute', 'web', '2022-06-14 11:35:26', '2022-06-14 11:35:26'),
(26, 'delete_product_attribute', 'product_attribute', 'web', '2022-06-14 11:35:33', '2022-06-14 11:35:33'),
(27, 'view_product_attribute_values', 'product_attribute', 'web', '2022-06-14 11:38:12', '2022-06-14 11:38:12'),
(28, 'add_product_attribute_values', 'product_attribute', 'web', '2022-06-14 11:38:20', '2022-06-14 11:38:20'),
(29, 'edit_product_attribute_value', 'product_attribute', 'web', '2022-06-14 11:38:50', '2022-06-14 11:38:50'),
(30, 'delete_product_attribute_value', 'product_attribute', 'web', '2022-06-14 11:39:06', '2022-06-14 11:39:06'),
(31, 'view_colors', 'product_attribute', 'web', '2022-06-14 11:44:16', '2022-06-14 11:44:16'),
(32, 'add_color', 'product_attribute', 'web', '2022-06-14 11:44:41', '2022-06-14 11:44:41'),
(33, 'edit_color', 'product_attribute', 'web', '2022-06-14 11:44:50', '2022-06-14 11:44:50'),
(34, 'delete_color', 'product_attribute', 'web', '2022-06-14 11:44:59', '2022-06-14 11:44:59'),
(35, 'view_product_reviews', 'product_review', 'web', '2022-06-14 11:55:04', '2022-06-14 11:55:04'),
(36, 'publish_product_review', 'product_review', 'web', '2022-06-14 11:57:37', '2022-06-14 11:57:37'),
(37, 'view_all_orders', 'sale', 'web', '2022-06-14 17:49:04', '2022-06-14 17:49:04'),
(38, 'view_inhouse_orders', 'sale', 'web', '2022-06-14 17:49:30', '2022-06-14 17:49:30'),
(39, 'view_seller_orders', 'sale', 'web', '2022-06-14 17:50:06', '2022-06-14 17:50:06'),
(40, 'view_pickup_point_orders', 'sale', 'web', '2022-06-14 17:51:17', '2022-06-14 17:51:17'),
(41, 'view_order_details', 'sale', 'web', '2022-06-14 17:53:13', '2022-06-14 17:53:13'),
(42, 'update_order_payment_status', 'sale', 'web', '2022-06-14 17:53:55', '2022-06-14 17:53:55'),
(43, 'update_order_delivery_status', 'sale', 'web', '2022-06-14 17:54:02', '2022-06-14 17:54:02'),
(44, 'delete_order', 'sale', 'web', '2022-06-14 17:55:02', '2022-06-14 17:55:02'),
(45, 'view_all_customers', 'customer', 'web', '2022-06-14 17:59:28', '2022-06-14 17:59:28'),
(46, 'login_as_customer', 'customer', 'web', '2022-06-14 17:59:58', '2022-06-14 17:59:58'),
(47, 'ban_customer', 'customer', 'web', '2022-06-14 18:00:12', '2022-06-14 18:00:12'),
(48, 'delete_customer', 'customer', 'web', '2022-06-14 18:00:45', '2022-06-14 18:00:45'),
(49, 'view_classified_products', 'customer', 'web', '2022-06-14 18:02:38', '2022-06-14 18:02:38'),
(50, 'publish_classified_product', 'customer', 'web', '2022-06-14 18:06:23', '2022-06-14 18:06:23'),
(51, 'delete_classified_product', 'customer', 'web', '2022-06-14 18:06:39', '2022-06-14 18:06:39'),
(52, 'view_classified_packages', 'customer', 'web', '2022-06-14 18:08:11', '2022-06-14 18:08:11'),
(53, 'add_classified_package', 'customer', 'web', '2022-06-14 18:08:22', '2022-06-14 18:08:22'),
(54, 'edit_classified_package', 'customer', 'web', '2022-06-14 18:08:35', '2022-06-14 18:08:35'),
(55, 'delete_classified_package', 'customer', 'web', '2022-06-14 18:08:44', '2022-06-14 18:08:44'),
(56, 'view_all_seller', 'seller', 'web', '2022-06-15 12:49:56', '2022-06-15 12:49:56'),
(57, 'view_seller_profile', 'seller', 'web', '2022-06-15 12:58:07', '2022-06-15 12:58:07'),
(58, 'login_as_seller', 'seller', 'web', '2022-06-15 12:58:22', '2022-06-15 12:58:22'),
(59, 'pay_to_seller', 'seller', 'web', '2022-06-15 14:21:28', '2022-06-15 14:21:28'),
(60, 'seller_payment_history', 'seller', 'web', '2022-06-15 14:22:14', '2022-06-15 14:22:14'),
(61, 'edit_seller', 'seller', 'web', '2022-06-15 14:22:28', '2022-06-15 14:22:28'),
(62, 'delete_seller', 'seller', 'web', '2022-06-15 14:22:37', '2022-06-15 14:22:37'),
(63, 'ban_seller', 'seller', 'web', '2022-06-15 14:22:48', '2022-06-15 14:22:48'),
(64, 'approve_seller', 'seller', 'web', '2022-06-15 14:24:17', '2022-06-15 14:24:17'),
(65, 'view_seller_payout_requests', 'seller', 'web', '2022-06-15 14:33:37', '2022-06-15 14:33:37'),
(66, 'seller_commission_configuration', 'seller', 'web', '2022-06-15 14:37:18', '2022-06-15 14:37:18'),
(67, 'seller_verification_form_configuration', 'seller', 'web', '2022-06-15 14:38:43', '2022-06-15 14:38:43'),
(68, 'in_house_product_sale_report', 'report', 'web', '2022-06-18 15:43:02', '2022-06-18 15:43:02'),
(69, 'seller_products_sale_report', 'report', 'web', '2022-06-18 15:43:32', '2022-06-18 15:43:32'),
(70, 'products_stock_report', 'report', 'web', '2022-06-18 15:43:51', '2022-06-18 15:43:51'),
(71, 'product_wishlist_report', 'report', 'web', '2022-06-18 15:46:18', '2022-06-18 15:46:18'),
(72, 'user_search_report', 'report', 'web', '2022-06-18 15:46:39', '2022-06-18 15:46:39'),
(73, 'commission_history_report', 'report', 'web', '2022-06-18 15:47:17', '2022-06-18 15:47:17'),
(74, 'wallet_transaction_report', 'report', 'web', '2022-06-18 15:48:00', '2022-06-18 15:48:00'),
(75, 'view_blogs', 'blog', 'web', '2022-06-19 00:08:14', '2022-06-19 00:08:14'),
(76, 'add_blog', 'blog', 'web', '2022-06-19 00:08:43', '2022-06-19 00:08:43'),
(77, 'edit_blog', 'blog', 'web', '2022-06-19 00:08:56', '2022-06-19 00:08:56'),
(78, 'delete_blog', 'blog', 'web', '2022-06-19 00:09:08', '2022-06-19 00:09:08'),
(79, 'publish_blog', 'blog', 'web', '2022-06-19 00:11:09', '2022-06-19 00:11:09'),
(80, 'view_blog_categories', 'blog', 'web', '2022-06-19 00:12:55', '2022-06-19 00:12:55'),
(81, 'add_blog_category', 'blog', 'web', '2022-06-19 00:13:24', '2022-06-19 00:13:24'),
(82, 'edit_blog_category', 'blog', 'web', '2022-06-19 00:13:37', '2022-06-19 00:13:37'),
(83, 'delete_blog_category', 'blog', 'web', '2022-06-19 00:14:06', '2022-06-19 00:14:06'),
(84, 'view_all_flash_deals', 'marketing', 'web', '2022-06-19 01:18:52', '2022-06-19 01:18:52'),
(85, 'add_flash_deal', 'marketing', 'web', '2022-06-19 01:19:22', '2022-06-19 01:19:22'),
(86, 'edit_flash_deal', 'marketing', 'web', '2022-06-19 01:19:32', '2022-06-19 01:19:32'),
(87, 'delete_flash_deal', 'marketing', 'web', '2022-06-19 01:19:44', '2022-06-19 01:19:44'),
(88, 'publish_flash_deal', 'marketing', 'web', '2022-06-19 01:20:45', '2022-06-19 01:20:45'),
(89, 'featured_flash_deal', 'marketing', 'web', '2022-06-19 01:23:07', '2022-06-19 01:23:07'),
(90, 'view_all_coupons', 'marketing', 'web', '2022-06-19 01:23:47', '2022-06-19 01:23:47'),
(91, 'add_coupon', 'marketing', 'web', '2022-06-19 01:24:07', '2022-06-19 01:24:07'),
(92, 'edit_coupon', 'marketing', 'web', '2022-06-19 01:24:24', '2022-06-19 01:24:24'),
(93, 'delete_coupon', 'marketing', 'web', '2022-06-19 01:24:34', '2022-06-19 01:24:34'),
(94, 'send_newsletter', 'marketing', 'web', '2022-06-19 01:25:53', '2022-06-19 01:25:53'),
(95, 'view_all_subscribers', 'marketing', 'web', '2022-06-19 01:32:13', '2022-06-19 01:32:13'),
(96, 'delete_subscriber', 'marketing', 'web', '2022-06-19 01:32:35', '2022-06-19 01:32:35'),
(97, 'view_all_support_tickets', 'support', 'web', '2022-06-19 17:31:53', '2022-06-19 17:31:53'),
(98, 'reply_to_support_tickets', 'support', 'web', '2022-06-19 17:33:13', '2022-06-19 17:33:13'),
(99, 'view_all_product_queries', 'support', 'web', '2022-06-19 17:38:45', '2022-06-19 17:38:45'),
(100, 'reply_to_product_queries', 'support', 'web', '2022-06-19 17:40:02', '2022-06-19 17:40:02'),
(102, 'header_setup', 'website_setup', 'web', '2022-06-19 17:45:24', '2022-06-19 17:45:24'),
(103, 'footer_setup', 'website_setup', 'web', '2022-06-19 17:45:37', '2022-06-19 17:45:37'),
(104, 'website_appearance', 'website_setup', 'web', '2022-06-19 17:46:49', '2022-06-19 17:46:49'),
(105, 'view_all_website_pages', 'website_setup', 'web', '2022-06-19 17:50:04', '2022-06-19 17:50:04'),
(106, 'add_website_page', 'website_setup', 'web', '2022-06-19 17:50:38', '2022-06-19 17:50:38'),
(107, 'edit_website_page', 'website_setup', 'web', '2022-06-19 17:50:47', '2022-06-19 17:50:47'),
(108, 'delete_website_page', 'website_setup', 'web', '2022-06-19 17:52:09', '2022-06-19 17:52:09'),
(109, 'general_settings', 'setup_configurations', 'web', '2022-06-19 18:38:36', '2022-06-19 18:38:36'),
(110, 'features_activation', 'setup_configurations', 'web', '2022-06-19 18:39:42', '2022-06-19 18:39:42'),
(111, 'language_setup', 'setup_configurations', 'web', '2022-06-19 22:13:30', '2022-06-19 22:13:30'),
(112, 'currency_setup', 'setup_configurations', 'web', '2022-06-19 22:14:33', '2022-06-19 22:14:33'),
(113, 'vat_&_tax_setup', 'setup_configurations', 'web', '2022-06-19 22:15:21', '2022-06-19 22:15:21'),
(114, 'pickup_point_setup', 'setup_configurations', 'web', '2022-06-19 22:15:46', '2022-06-19 22:15:46'),
(115, 'smtp_settings', 'setup_configurations', 'web', '2022-06-19 22:16:05', '2022-06-19 22:16:05'),
(116, 'payment_methods_configurations', 'setup_configurations', 'web', '2022-06-19 22:25:27', '2022-06-19 22:25:27'),
(117, 'order_configuration', 'setup_configurations', 'web', '2022-06-19 22:26:26', '2022-06-19 22:26:26'),
(118, 'file_system_&_cache_configuration', 'setup_configurations', 'web', '2022-06-19 22:26:59', '2022-06-19 22:26:59'),
(119, 'social_media_logins', 'setup_configurations', 'web', '2022-06-19 22:27:22', '2022-06-19 22:27:22'),
(120, 'facebook_chat', 'setup_configurations', 'web', '2022-06-19 22:28:31', '2022-06-19 22:28:31'),
(121, 'facebook_comment', 'setup_configurations', 'web', '2022-06-19 22:28:51', '2022-06-19 22:28:51'),
(122, 'analytics_tools_configuration', 'setup_configurations', 'web', '2022-06-19 22:29:57', '2022-06-19 22:29:57'),
(123, 'google_recaptcha_configuration', 'setup_configurations', 'web', '2022-06-19 22:30:55', '2022-06-19 22:30:55'),
(124, 'google_map_setting', 'setup_configurations', 'web', '2022-06-19 22:31:28', '2022-06-19 22:31:28'),
(125, 'google_firebase_setting', 'setup_configurations', 'web', '2022-06-19 22:32:00', '2022-06-19 22:32:00'),
(126, 'shipping_configuration', 'setup_configurations', 'web', '2022-06-19 22:41:29', '2022-06-19 22:41:29'),
(127, 'shipping_country_setting', 'setup_configurations', 'web', '2022-06-19 22:42:14', '2022-06-19 22:42:14'),
(128, 'manage_shipping_states', 'setup_configurations', 'web', '2022-06-19 22:43:43', '2022-06-19 22:43:43'),
(129, 'manage_shipping_cities', 'setup_configurations', 'web', '2022-06-19 22:44:17', '2022-06-19 22:44:17'),
(130, 'view_all_staffs', 'staff', 'web', '2022-06-19 22:45:00', '2022-06-19 22:45:00'),
(131, 'add_staff', 'staff', 'web', '2022-06-19 22:45:09', '2022-06-19 22:45:09'),
(132, 'edit_staff', 'staff', 'web', '2022-06-19 22:45:21', '2022-06-19 22:45:21'),
(133, 'delete_staff', 'staff', 'web', '2022-06-19 22:45:36', '2022-06-19 22:45:36'),
(134, 'view_staff_roles', 'staff', 'web', '2022-06-19 22:46:27', '2022-06-19 22:46:27'),
(135, 'add_staff_role', 'staff', 'web', '2022-06-19 22:53:00', '2022-06-19 22:53:00'),
(136, 'edit_staff_role', 'staff', 'web', '2022-06-19 22:53:11', '2022-06-19 22:53:11'),
(137, 'delete_staff_role', 'staff', 'web', '2022-06-19 22:53:22', '2022-06-19 22:53:22'),
(138, 'system_update', 'system', 'web', '2022-06-19 22:57:15', '2022-06-19 22:57:15'),
(139, 'server_status', 'system', 'web', '2022-06-19 22:57:58', '2022-06-19 22:57:58'),
(140, 'manage_addons', 'system', 'web', '2022-06-19 23:15:43', '2022-06-19 23:15:43'),
(141, 'admin_dashboard', 'system', 'web', '2022-06-20 18:26:52', '2022-06-20 18:26:52'),
(142, 'pos_manager', 'pos_system', 'web', '2022-06-20 19:46:20', '2022-06-20 19:46:20'),
(143, 'pos_configuration', 'pos_system', 'web', '2022-06-20 19:56:00', '2022-06-20 19:56:00'),
(144, 'view_all_auction_products', 'auction', 'web', '2022-06-20 20:05:54', '2022-06-20 20:05:54'),
(145, 'view_inhouse_auction_products', 'auction', 'web', '2022-06-20 20:09:29', '2022-06-20 20:09:29'),
(146, 'view_seller_auction_products', 'auction', 'web', '2022-06-20 20:09:51', '2022-06-20 20:09:51'),
(147, 'add_auction_product', 'auction', 'web', '2022-06-20 20:11:19', '2022-06-20 20:11:19'),
(148, 'edit_auction_product', 'auction', 'web', '2022-06-20 20:12:57', '2022-06-20 20:12:57'),
(149, 'delete_auction_product', 'auction', 'web', '2022-06-20 20:17:35', '2022-06-20 20:17:35'),
(150, 'view_auction_product_bids', 'auction', 'web', '2022-06-20 20:25:29', '2022-06-20 20:25:29'),
(151, 'delete_auction_product_bids', 'auction', 'web', '2022-06-20 20:33:55', '2022-06-20 20:33:55'),
(152, 'view_auction_product_orders', 'auction', 'web', '2022-06-20 20:44:11', '2022-06-20 20:44:11'),
(153, 'view_all_wholesale_products', 'wholesale', 'web', '2022-06-20 22:06:26', '2022-06-20 22:06:26'),
(154, 'view_inhouse_wholesale_products', 'wholesale', 'web', '2022-06-20 22:09:18', '2022-06-20 22:09:18'),
(155, 'view_sellers_wholesale_products', 'wholesale', 'web', '2022-06-20 22:09:48', '2022-06-20 22:09:48'),
(156, 'add_wholesale_product', 'wholesale', 'web', '2022-06-20 22:56:35', '2022-06-20 22:56:35'),
(157, 'edit_wholesale_product', 'wholesale', 'web', '2022-06-20 22:56:55', '2022-06-20 22:56:55'),
(158, 'delete_wholesale_product', 'wholesale', 'web', '2022-06-20 22:57:07', '2022-06-20 22:57:07'),
(159, 'view_all_delivery_boy', 'delivery_boy', 'web', '2022-06-20 23:41:57', '2022-06-20 23:41:57'),
(160, 'add_delivery_boy', 'delivery_boy', 'web', '2022-06-20 23:43:13', '2022-06-20 23:43:13'),
(161, 'edit_delivery_boy', 'delivery_boy', 'web', '2022-06-20 23:43:32', '2022-06-20 23:43:32'),
(162, 'ban_delivery_boy', 'delivery_boy', 'web', '2022-06-21 18:55:57', '2022-06-21 18:55:57'),
(163, 'collect_from_delivery_boy', 'delivery_boy', 'web', '2022-06-21 18:58:23', '2022-06-21 18:58:23'),
(164, 'pay_to_delivery_boy', 'delivery_boy', 'web', '2022-06-21 18:58:35', '2022-06-21 18:58:35'),
(165, 'delivery_boy_payment_history', 'delivery_boy', 'web', '2022-06-21 19:38:43', '2022-06-21 19:38:43'),
(166, 'collected_histories_from_delivery_boy', 'delivery_boy', 'web', '2022-06-21 19:40:04', '2022-06-21 19:40:04'),
(167, 'order_cancle_request_by_delivery_boy', 'delivery_boy', 'web', '2022-06-21 20:06:37', '2022-06-21 20:06:37'),
(168, 'delivery_boy_configuration', 'delivery_boy', 'web', '2022-06-21 20:07:07', '2022-06-21 20:07:07'),
(169, 'view_refund_requests', 'refund_request', 'web', '2022-06-21 20:21:11', '2022-06-21 20:21:11'),
(170, 'accept_refund_request', 'refund_request', 'web', '2022-06-21 20:21:55', '2022-06-21 20:21:55'),
(171, 'reject_refund_request', 'refund_request', 'web', '2022-06-21 20:23:20', '2022-06-21 20:23:20'),
(172, 'view_approved_refund_requests', 'refund_request', 'web', '2022-06-21 20:24:09', '2022-06-21 20:24:09'),
(173, 'view_rejected_refund_requests', 'refund_request', 'web', '2022-06-21 20:33:40', '2022-06-21 20:33:40'),
(174, 'refund_request_configuration', 'refund_request', 'web', '2022-06-21 20:34:21', '2022-06-21 20:34:21'),
(175, 'affiliate_registration_form_config', 'affiliate_system', 'web', '2022-06-21 22:52:18', '2022-06-21 22:52:18'),
(176, 'affiliate_configurations', 'affiliate_system', 'web', '2022-06-21 22:52:35', '2022-06-21 22:52:35'),
(177, 'view_affiliate_users', 'affiliate_system', 'web', '2022-06-21 22:53:19', '2022-06-21 22:53:19'),
(178, 'pay_to_affiliate_user', 'affiliate_system', 'web', '2022-06-21 22:54:49', '2022-06-21 22:54:49'),
(179, 'affiliate_users_payment_history', 'affiliate_system', 'web', '2022-06-21 22:55:51', '2022-06-21 22:55:51'),
(180, 'view_all_referral_users', 'affiliate_system', 'web', '2022-06-21 22:56:46', '2022-06-21 22:56:46'),
(181, 'view_affiliate_withdraw_requests', 'affiliate_system', 'web', '2022-06-21 22:58:01', '2022-06-21 22:58:01'),
(182, 'accept_affiliate_withdraw_requests', 'affiliate_system', 'web', '2022-06-21 22:59:38', '2022-06-21 22:59:38'),
(183, 'reject_affiliate_withdraw_request', 'affiliate_system', 'web', '2022-06-21 23:00:04', '2022-06-21 23:00:04'),
(184, 'view_affiliate_logs', 'affiliate_system', 'web', '2022-06-21 23:00:51', '2022-06-21 23:00:51'),
(185, 'view_all_manual_payment_methods', 'offline_payment', 'web', '2022-06-21 23:02:50', '2022-06-21 23:02:50'),
(186, 'add_manual_payment_method', 'offline_payment', 'web', '2022-06-21 23:03:25', '2022-06-21 23:03:25'),
(187, 'edit_manual_payment_method', 'offline_payment', 'web', '2022-06-21 23:03:56', '2022-06-21 23:03:56'),
(188, 'delete_manual_payment_method', 'offline_payment', 'web', '2022-06-21 23:04:10', '2022-06-21 23:04:10'),
(189, 'view_all_offline_wallet_recharges', 'offline_payment', 'web', '2022-06-21 23:09:09', '2022-06-21 23:09:09'),
(190, 'approve_offline_wallet_recharge', 'offline_payment', 'web', '2022-06-21 23:11:29', '2022-06-21 23:11:29'),
(191, 'view_all_offline_customer_package_payments', 'offline_payment', 'web', '2022-06-21 23:12:49', '2022-06-21 23:12:49'),
(192, 'approve_offline_customer_package_payment', 'offline_payment', 'web', '2022-06-21 23:13:24', '2022-06-21 23:13:24'),
(193, 'view_all_offline_seller_package_payments', 'offline_payment', 'web', '2022-06-21 23:14:02', '2022-06-21 23:14:02'),
(194, 'approve_offline_seller_package_payment', 'offline_payment', 'web', '2022-06-21 23:14:29', '2022-06-21 23:14:29'),
(195, 'asian_payment_gateway_configuration', 'paytm', 'web', '2022-06-21 23:15:56', '2022-06-21 23:15:56'),
(196, 'club_point_configurations', 'club_point', 'web', '2022-06-21 23:16:57', '2022-06-21 23:16:57'),
(197, 'set_club_points', 'club_point', 'web', '2022-06-21 23:17:21', '2022-06-21 23:17:21'),
(198, 'view_users_club_points', 'club_point', 'web', '2022-06-21 23:18:14', '2022-06-21 23:18:14'),
(199, 'otp_configurations', 'otp_system', 'web', '2022-06-22 00:07:28', '2022-06-22 00:07:28'),
(200, 'sms_templates', 'otp_system', 'web', '2022-06-22 00:08:13', '2022-06-22 00:08:13'),
(201, 'sms_providers_configurations', 'otp_system', 'web', '2022-06-22 00:08:44', '2022-06-22 00:08:44'),
(202, 'african_pg_configuration', 'african_pg', 'web', '2022-06-22 00:13:41', '2022-06-22 00:13:41'),
(203, 'african_pg_credentials_configuration', 'african_pg', 'web', '2022-06-22 00:16:12', '2022-06-22 00:16:12'),
(204, 'view_all_seller_packages', 'seller_subscription', 'web', '2022-06-22 00:17:45', '2022-06-22 00:17:45'),
(205, 'add_seller_package', 'seller_subscription', 'web', '2022-06-22 00:18:14', '2022-06-22 00:18:14'),
(206, 'edit_seller_package', 'seller_subscription', 'web', '2022-06-22 00:18:24', '2022-06-22 00:18:24'),
(207, 'delete_seller_package', 'seller_subscription', 'web', '2022-06-22 00:18:36', '2022-06-22 00:18:36'),
(208, 'send_bulk_sms', 'otp_system', 'web', '2022-06-22 00:19:06', '2022-06-22 00:19:06'),
(209, 'assign_delivery_boy_for_orders', 'delivery_boy', 'web', '2022-06-22 00:20:16', '2022-06-22 00:20:16'),
(210, 'manage_zones', 'setup_configurations', 'web', '2022-06-22 00:20:16', '2022-06-22 00:20:16'),
(211, 'manage_carriers', 'setup_configurations', 'web', '2022-06-22 00:20:16', '2022-06-22 00:20:16'),
(212, 'view_all_product_conversations', 'support', 'web', '2022-06-22 00:20:16', '2022-06-22 00:20:16'),
(213, 'reply_to_product_conversations', 'support', 'web', '2022-06-22 00:20:16', '2022-06-22 00:20:16'),
(214, 'delete_product_conversations', 'support', 'web', '2022-06-22 00:20:16', '2022-06-22 00:20:16'),
(215, 'select_homepage', 'website_setup', 'web', '2023-11-19 09:45:29', '2023-11-19 09:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickup_points`
--

CREATE TABLE `pickup_points` (
  `id` int NOT NULL,
  `staff_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `pick_up_status` int DEFAULT NULL,
  `cash_on_pickup_status` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `added_by` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'admin',
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `brand_id` int DEFAULT NULL,
  `photos` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `video_provider` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `video_link` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tags` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `unit_price` double(20,2) NOT NULL,
  `purchase_price` double(20,2) DEFAULT NULL,
  `variant_product` int NOT NULL DEFAULT '0',
  `attributes` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '[]',
  `choice_options` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `colors` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `variations` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `todays_deal` int NOT NULL DEFAULT '0',
  `published` int NOT NULL DEFAULT '1',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `stock_visibility_state` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'quantity',
  `cash_on_delivery` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = On, 0 = Off',
  `featured` int NOT NULL DEFAULT '0',
  `seller_featured` int NOT NULL DEFAULT '0',
  `current_stock` int NOT NULL DEFAULT '0',
  `unit` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `weight` double(8,2) NOT NULL DEFAULT '0.00',
  `min_qty` int NOT NULL DEFAULT '1',
  `max_qty` int NOT NULL DEFAULT '1',
  `low_stock_quantity` int DEFAULT NULL,
  `discount` double(20,2) DEFAULT NULL,
  `discount_type` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `discount_start_date` int DEFAULT NULL,
  `discount_end_date` int DEFAULT NULL,
  `tax` double(20,2) DEFAULT NULL,
  `tax_type` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'flat_rate',
  `shipping_cost` double(20,2) NOT NULL DEFAULT '0.00',
  `is_quantity_multiplied` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = Mutiplied with shipping cost',
  `est_shipping_days` int DEFAULT NULL,
  `num_of_sale` int NOT NULL DEFAULT '0',
  `meta_title` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `meta_description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `meta_img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `slug` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL DEFAULT '0.00',
  `barcode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `digital` int NOT NULL DEFAULT '0',
  `auction_product` int NOT NULL DEFAULT '0',
  `file_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `external_link` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `external_link_btn` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Buy Now',
  `wholesale_product` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `brand_id`, `photos`, `thumbnail_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `approved`, `stock_visibility_state`, `cash_on_delivery`, `featured`, `seller_featured`, `current_stock`, `unit`, `weight`, `min_qty`, `max_qty`, `low_stock_quantity`, `discount`, `discount_type`, `discount_start_date`, `discount_end_date`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `is_quantity_multiplied`, `est_shipping_days`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `rating`, `barcode`, `digital`, `auction_product`, `file_name`, `file_path`, `external_link`, `external_link_btn`, `wholesale_product`, `created_at`, `updated_at`) VALUES
(2, 'قميص رجالي', 'admin', 9, 1, 2, '40', '40', 'youtube', NULL, 'قميص,قميص رجالي,ملابس', '<p>قميص رجالي مستورد , أفضل خامة <br></p>', 50.00, NULL, 1, '[\"2\",\"1\"]', '[{\"attribute_id\":\"2\",\"values\":[\"محلي\",\"قطن مصري\"]},{\"attribute_id\":\"1\",\"values\":[\"أكس لارج\",\"لارج\"]}]', '[\"#9966CC\",\"#F0FFFF\",\"#F5F5DC\",\"#FFE4C4\",\"#5F9EA0\",\"#7FFF00\"]', NULL, 1, 1, 1, 'hide', 1, 1, 0, 0, 'قطعه', 0.00, 2, 1, 5, 0.00, 'amount', NULL, NULL, NULL, NULL, 'flat_rate', 0.00, 0, 2, 3, 'قميص رجالي', 'قميص رجالي', '40', NULL, 'kmys-rgaly', 0.00, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2023-11-28 20:04:26', '2023-12-01 14:22:37'),
(3, 'حذاء جلد', 'admin', 9, 2, 2, '38', '38', 'youtube', NULL, 'حذاء,جلد,أحذية', '<p>حذاء جلد جميل<br></p>', 50.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"39\",\"40\",\"41\"]}]', '[]', NULL, 0, 1, 1, 'hide', 1, 0, 0, 0, 'قطعه', 0.00, 1, 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', 0.00, 0, NULL, 0, 'حذاء جلد', 'حذاء جلد جميل', '38', NULL, 'hthaaa-gld', 0.00, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2023-11-28 20:07:02', '2023-11-28 20:07:02'),
(4, 'قميص رجالي', 'admin', 9, 1, 2, '40', '40', 'youtube', NULL, 'قميص,قميص رجالي,ملابس', '<p>قميص رجالي مستورد , أفضل خامة <br></p>', 50.00, NULL, 1, '[\"2\",\"1\"]', '[{\"attribute_id\":\"2\",\"values\":[\"محلي\",\"قطن مصري\"]},{\"attribute_id\":\"1\",\"values\":[\"أكس لارج\",\"لارج\"]}]', '[\"#9966CC\",\"#F0FFFF\",\"#F5F5DC\",\"#FFE4C4\",\"#5F9EA0\",\"#7FFF00\"]', NULL, 1, 1, 1, 'hide', 1, 1, 0, 0, 'قطعه', 0.00, 2, 1, 5, 0.00, 'amount', NULL, NULL, NULL, NULL, 'flat_rate', 0.00, 0, 2, 0, 'قميص رجالي', 'قميص رجالي', '40', NULL, 'kmys-rgaly-s0eYv', 0.00, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(5, 'حذاء جلد', 'admin', 9, 2, 2, '38', '38', 'youtube', NULL, 'حذاء,جلد,أحذية', '<p>حذاء جلد جميل<br></p>', 50.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"39\",\"40\",\"41\"]}]', '[]', NULL, 0, 1, 1, 'hide', 1, 0, 0, 0, 'قطعه', 0.00, 1, 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', 0.00, 0, NULL, 0, 'حذاء جلد', 'حذاء جلد جميل', '38', NULL, 'hthaaa-gld-OpWPQ', 0.00, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2023-11-28 20:08:12', '2023-11-28 20:08:12'),
(6, 'كاميرا', 'admin', 9, 1, 2, '43', '43', 'youtube', NULL, 'حذاء,جلد,أحذية', '<p>حذاء جلد جميل<br></p>', 50.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"39\",\"40\",\"41\"]}]', '[]', NULL, 0, 1, 1, 'hide', 1, 0, 0, 10, 'قطعه', 0.00, 1, 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', 0.00, 0, NULL, 0, 'حذاء جلد', 'حذاء جلد جميل', '38', NULL, 'hthaaa-gld-opwpq-hkd5y', 0.00, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2023-11-28 20:08:16', '2023-11-28 20:10:57'),
(7, 'قميص رجالي', 'admin', 9, 1, 2, '41,42', '40', 'youtube', NULL, 'قميص,قميص رجالي,ملابس', '<p>قميص رجالي مستورد , أفضل خامة <br></p>', 50.00, NULL, 1, '[\"2\",\"1\"]', '[{\"attribute_id\":\"2\",\"values\":[\"محلي\",\"قطن مصري\"]},{\"attribute_id\":\"1\",\"values\":[\"أكس لارج\",\"لارج\"]}]', '[\"#9966CC\",\"#F0FFFF\",\"#F5F5DC\",\"#FFE4C4\",\"#5F9EA0\",\"#7FFF00\"]', NULL, 1, 1, 1, 'hide', 1, 1, 0, 10, 'قطعه', 0.00, 2, 1, 5, 0.00, 'amount', NULL, NULL, NULL, NULL, 'flat_rate', 0.00, 0, 2, 0, 'قميص رجالي', 'قميص رجالي', '40', NULL, 'kmys-rgaly-s0eyv-j31i0', 0.00, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2023-11-28 20:08:20', '2023-12-06 17:15:30'),
(8, 'قميص رجالي', 'admin', 9, 1, 2, '35,39', '40', 'youtube', NULL, 'قميص,قميص رجالي,ملابس', '<p>قميص رجالي مستورد , أفضل خامة <br></p>', 50.00, NULL, 1, '[\"2\",\"1\"]', '[{\"attribute_id\":\"2\",\"values\":[\"محلي\",\"قطن مصري\"]},{\"attribute_id\":\"1\",\"values\":[\"أكس لارج\",\"لارج\"]}]', '[\"#9966CC\",\"#F0FFFF\",\"#F5F5DC\",\"#FFE4C4\",\"#5F9EA0\",\"#7FFF00\"]', NULL, 1, 1, 1, 'hide', 1, 1, 0, 10, 'قطعه', 0.00, 2, 1, 5, 0.00, 'amount', NULL, NULL, NULL, NULL, 'flat_rate', 0.00, 0, 2, 8, 'قميص رجالي', 'قميص رجالي', '40', NULL, 'kmys-rgaly-at6l3', 0.00, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2023-11-28 20:08:28', '2023-12-15 13:23:01'),
(9, 'Odette Mathis', 'admin', 9, 0, 1, NULL, NULL, 'youtube', 'Pariatur Id eos nec', '', NULL, 199.00, NULL, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"أكس لارج\",\"لارج\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 1, 0, 0, 61, 'Aliqua Deserunt lab', 15.00, 974, 1, 653, 0.00, 'percent', 898819200, 0, NULL, NULL, 'flat_rate', 0.00, 0, 23, 0, 'Sapiente in esse vo', 'Nulla dolorum proide', NULL, NULL, 'odette-mathis', 0.00, NULL, 0, 0, NULL, NULL, 'Est exercitation aut', 'Nulla excepteur et r', 0, '2023-12-15 13:50:19', '2023-12-15 13:50:19'),
(10, 'Uta Maldonado', 'admin', 9, 0, 1, NULL, NULL, 'vimeo', 'At nisi dolores nihi', '', NULL, 436.00, NULL, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"أكس لارج\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 1, 0, 0, 10, 'Unde nulla consequun', 6.00, 289, 1, 115, 54.00, 'percent', NULL, NULL, NULL, NULL, 'flat_rate', 0.00, 0, 21, 0, 'Temporibus dicta eli', 'Minim ea deserunt et', NULL, NULL, 'uta-maldonado', 0.00, NULL, 0, 0, NULL, NULL, 'Est et quia sunt ve', 'Sint adipisci conse', 0, '2023-12-15 13:51:46', '2023-12-15 13:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `product_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`product_id`, `category_id`) VALUES
(2, 1),
(2, 3),
(3, 2),
(8, 1),
(8, 3),
(7, 1),
(7, 3),
(6, 1),
(6, 3),
(9, 1),
(10, 1),
(10, 1),
(10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_queries`
--

CREATE TABLE `product_queries` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` int NOT NULL,
  `seller_id` int NOT NULL,
  `product_id` int NOT NULL,
  `question` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `variant` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `price` double(20,2) NOT NULL DEFAULT '0.00',
  `qty` int NOT NULL DEFAULT '0',
  `image` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `variant`, `sku`, `price`, `qty`, `image`, `created_at`, `updated_at`) VALUES
(2, 2, 'Amethyst-محلي-أكسلارج', NULL, 50.00, 7, NULL, '2023-11-28 20:04:26', '2023-12-01 14:22:37'),
(3, 2, 'Amethyst-محلي-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(4, 2, 'Amethyst-قطنمصري-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(5, 2, 'Amethyst-قطنمصري-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(6, 2, 'Azure-محلي-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(7, 2, 'Azure-محلي-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(8, 2, 'Azure-قطنمصري-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(9, 2, 'Azure-قطنمصري-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(10, 2, 'Beige-محلي-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(11, 2, 'Beige-محلي-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(12, 2, 'Beige-قطنمصري-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(13, 2, 'Beige-قطنمصري-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(14, 2, 'Bisque-محلي-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(15, 2, 'Bisque-محلي-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(16, 2, 'Bisque-قطنمصري-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(17, 2, 'Bisque-قطنمصري-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(18, 2, 'CadetBlue-محلي-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(19, 2, 'CadetBlue-محلي-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(20, 2, 'CadetBlue-قطنمصري-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(21, 2, 'CadetBlue-قطنمصري-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(22, 2, 'Chartreuse-محلي-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(23, 2, 'Chartreuse-محلي-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(24, 2, 'Chartreuse-قطنمصري-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(25, 2, 'Chartreuse-قطنمصري-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(26, 3, '39', NULL, 50.00, 10, NULL, '2023-11-28 20:07:02', '2023-11-28 20:07:02'),
(27, 3, '40', NULL, 50.00, 10, NULL, '2023-11-28 20:07:02', '2023-11-28 20:07:02'),
(28, 3, '41', NULL, 50.00, 10, NULL, '2023-11-28 20:07:02', '2023-11-28 20:07:02'),
(29, 4, 'Amethyst-محلي-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(30, 4, 'Amethyst-محلي-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(31, 4, 'Amethyst-قطنمصري-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(32, 4, 'Amethyst-قطنمصري-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(33, 4, 'Azure-محلي-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(34, 4, 'Azure-محلي-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(35, 4, 'Azure-قطنمصري-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(36, 4, 'Azure-قطنمصري-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(37, 4, 'Beige-محلي-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(38, 4, 'Beige-محلي-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(39, 4, 'Beige-قطنمصري-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(40, 4, 'Beige-قطنمصري-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(41, 4, 'Bisque-محلي-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(42, 4, 'Bisque-محلي-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(43, 4, 'Bisque-قطنمصري-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(44, 4, 'Bisque-قطنمصري-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(45, 4, 'CadetBlue-محلي-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(46, 4, 'CadetBlue-محلي-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(47, 4, 'CadetBlue-قطنمصري-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(48, 4, 'CadetBlue-قطنمصري-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(49, 4, 'Chartreuse-محلي-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(50, 4, 'Chartreuse-محلي-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(51, 4, 'Chartreuse-قطنمصري-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(52, 4, 'Chartreuse-قطنمصري-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(53, 5, '39', NULL, 50.00, 10, NULL, '2023-11-28 20:08:12', '2023-11-28 20:08:12'),
(54, 5, '40', NULL, 50.00, 10, NULL, '2023-11-28 20:08:12', '2023-11-28 20:08:12'),
(55, 5, '41', NULL, 50.00, 10, NULL, '2023-11-28 20:08:12', '2023-11-28 20:08:12'),
(107, 8, 'Amethyst-محلي-أكسلارج', NULL, 50.00, 4, NULL, '2023-11-28 20:09:41', '2023-12-15 13:23:01'),
(108, 8, 'Amethyst-محلي-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(109, 8, 'Amethyst-قطنمصري-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(110, 8, 'Amethyst-قطنمصري-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(111, 8, 'Azure-محلي-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(112, 8, 'Azure-محلي-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(113, 8, 'Azure-قطنمصري-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(114, 8, 'Azure-قطنمصري-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(115, 8, 'Beige-محلي-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(116, 8, 'Beige-محلي-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(117, 8, 'Beige-قطنمصري-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(118, 8, 'Beige-قطنمصري-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(119, 8, 'Bisque-محلي-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(120, 8, 'Bisque-محلي-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(121, 8, 'Bisque-قطنمصري-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(122, 8, 'Bisque-قطنمصري-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(123, 8, 'CadetBlue-محلي-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(124, 8, 'CadetBlue-محلي-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(125, 8, 'CadetBlue-قطنمصري-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(126, 8, 'CadetBlue-قطنمصري-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(127, 8, 'Chartreuse-محلي-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(128, 8, 'Chartreuse-محلي-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(129, 8, 'Chartreuse-قطنمصري-أكسلارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(130, 8, 'Chartreuse-قطنمصري-لارج', NULL, 50.00, 10, NULL, '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(131, 6, '39', NULL, 50.00, 10, NULL, '2023-11-28 20:10:57', '2023-11-28 20:10:57'),
(132, 6, '40', NULL, 50.00, 10, NULL, '2023-11-28 20:10:57', '2023-11-28 20:10:57'),
(133, 6, '41', NULL, 50.00, 10, NULL, '2023-11-28 20:10:57', '2023-11-28 20:10:57'),
(134, 9, 'أكسلارج', '50', 199.00, 10, NULL, '2023-12-15 13:50:19', '2023-12-15 13:50:19'),
(135, 9, 'لارج', '50', 199.00, 10, NULL, '2023-12-15 13:50:19', '2023-12-15 13:50:19'),
(137, 10, 'أكسلارج', '50', 436.00, 10, NULL, '2023-12-15 13:56:11', '2023-12-15 13:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `product_taxes`
--

CREATE TABLE `product_taxes` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `tax_id` int NOT NULL,
  `tax` double(20,2) NOT NULL,
  `tax_type` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `product_taxes`
--

INSERT INTO `product_taxes` (`id`, `product_id`, `tax_id`, `tax`, `tax_type`, `created_at`, `updated_at`) VALUES
(2, 2, 3, 0.00, 'amount', '2023-11-28 20:04:26', '2023-11-28 20:04:26'),
(3, 3, 3, 0.00, 'amount', '2023-11-28 20:07:02', '2023-11-28 20:07:02'),
(4, 4, 3, 0.00, 'amount', '2023-11-28 20:08:05', '2023-11-28 20:08:05'),
(5, 5, 3, 0.00, 'amount', '2023-11-28 20:08:12', '2023-11-28 20:08:12'),
(7, 7, 3, 0.00, 'amount', '2023-11-28 20:08:20', '2023-11-28 20:08:20'),
(9, 8, 3, 0.00, 'amount', '2023-11-28 20:09:41', '2023-11-28 20:09:41'),
(10, 6, 3, 0.00, 'amount', '2023-11-28 20:10:57', '2023-11-28 20:10:57'),
(11, 9, 3, 83.00, 'amount', '2023-12-15 13:50:19', '2023-12-15 13:50:19'),
(13, 10, 3, 34.00, 'amount', '2023-12-15 13:56:11', '2023-12-15 13:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `unit` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `lang` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proxypay_payments`
--

CREATE TABLE `proxypay_payments` (
  `id` int NOT NULL,
  `payment_type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `reference_id` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `order_id` int DEFAULT NULL,
  `package_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `amount` double(25,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` int NOT NULL DEFAULT '0',
  `comment` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `photos` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `viewed` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2022-06-13 00:29:58', '2022-06-12 12:00:00'),
(2, 'Quon Acosta', 'web', '2023-12-13 14:47:52', '2023-12-13 14:47:52'),
(3, 'Chiquita Merrill', 'web', '2023-12-16 07:55:23', '2023-12-16 07:55:23'),
(4, 'tu', 'web', '2023-12-16 12:43:15', '2023-12-16 12:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(97, 2),
(98, 2),
(99, 2),
(100, 2),
(102, 2),
(103, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(130, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(136, 2),
(137, 2),
(138, 2),
(139, 2),
(140, 2),
(141, 2),
(212, 2),
(213, 2),
(214, 2),
(215, 2),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(35, 3),
(36, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(71, 3),
(72, 3),
(73, 3),
(74, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(92, 3),
(93, 3),
(94, 3),
(95, 3),
(96, 3),
(97, 3),
(98, 3),
(99, 3),
(100, 3),
(109, 3),
(110, 3),
(111, 3),
(112, 3),
(113, 3),
(114, 3),
(115, 3),
(116, 3),
(117, 3),
(118, 3),
(119, 3),
(120, 3),
(121, 3),
(122, 3),
(123, 3),
(124, 3),
(125, 3),
(126, 3),
(127, 3),
(128, 3),
(129, 3),
(138, 3),
(139, 3),
(140, 3),
(141, 3),
(210, 3),
(211, 3),
(212, 3),
(213, 3),
(214, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `count` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `query`, `count`, `created_at`, `updated_at`) VALUES
(2, 'dcs', 1, '2020-03-08 00:29:09', '2020-03-08 00:29:09'),
(3, 'das', 3, '2020-03-08 00:29:15', '2020-03-08 00:29:50');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` double(3,2) NOT NULL DEFAULT '0.00',
  `num_of_reviews` int NOT NULL DEFAULT '0',
  `num_of_sale` int NOT NULL DEFAULT '0',
  `verification_status` int NOT NULL DEFAULT '0',
  `verification_info` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `cash_on_delivery_status` int NOT NULL DEFAULT '0',
  `admin_to_pay` double(20,2) NOT NULL DEFAULT '0.00',
  `bank_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bank_acc_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bank_acc_no` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bank_routing_no` int DEFAULT NULL,
  `bank_payment_status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `user_id`, `rating`, `num_of_reviews`, `num_of_sale`, `verification_status`, `verification_info`, `cash_on_delivery_status`, `admin_to_pay`, `bank_name`, `bank_acc_name`, `bank_acc_no`, `bank_routing_no`, `bank_payment_status`, `created_at`, `updated_at`) VALUES
(1, 3, 0.00, 0, 0, 1, '[{\"type\":\"text\",\"label\":\"Name\",\"value\":\"Mr. Seller\"},{\"type\":\"select\",\"label\":\"Marital Status\",\"value\":\"Married\"},{\"type\":\"multi_select\",\"label\":\"Company\",\"value\":\"[\\\"Company\\\"]\"},{\"type\":\"select\",\"label\":\"Gender\",\"value\":\"Male\"},{\"type\":\"file\",\"label\":\"Image\",\"value\":\"uploads\\/verification_form\\/CRWqFifcbKqibNzllBhEyUSkV6m1viknGXMEhtiW.png\"}]', 1, 78.40, NULL, NULL, NULL, NULL, 0, '2018-10-07 04:42:57', '2020-01-26 04:21:11'),
(2, 15, 0.00, 0, 0, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, 0, '2023-12-02 01:34:15', '2023-12-02 01:34:15'),
(3, 16, 0.00, 0, 0, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, 0, '2023-12-02 01:34:46', '2023-12-02 01:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `seller_withdraw_requests`
--

CREATE TABLE `seller_withdraw_requests` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `status` int DEFAULT NULL,
  `viewed` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sliders` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `top_banner` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `banner_full_width_1` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `banners_half_width` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `banner_full_width_2` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rating` double(3,2) NOT NULL DEFAULT '0.00',
  `num_of_reviews` int NOT NULL DEFAULT '0',
  `num_of_sale` int NOT NULL DEFAULT '0',
  `seller_package_id` int DEFAULT NULL,
  `product_upload_limit` int NOT NULL DEFAULT '0',
  `package_invalid_at` date DEFAULT NULL,
  `verification_status` int NOT NULL DEFAULT '0',
  `verification_info` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `cash_on_delivery_status` int NOT NULL DEFAULT '0',
  `admin_to_pay` double(20,2) NOT NULL DEFAULT '0.00',
  `facebook` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `google` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `pick_up_point_id` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `shipping_cost` double(20,2) NOT NULL DEFAULT '0.00',
  `delivery_pickup_latitude` float(17,15) DEFAULT NULL,
  `delivery_pickup_longitude` float(17,15) DEFAULT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bank_acc_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bank_acc_no` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bank_routing_no` int DEFAULT NULL,
  `bank_payment_status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `name`, `logo`, `sliders`, `top_banner`, `banner_full_width_1`, `banners_half_width`, `banner_full_width_2`, `phone`, `address`, `rating`, `num_of_reviews`, `num_of_sale`, `seller_package_id`, `product_upload_limit`, `package_invalid_at`, `verification_status`, `verification_info`, `cash_on_delivery_status`, `admin_to_pay`, `facebook`, `instagram`, `google`, `twitter`, `youtube`, `slug`, `meta_title`, `meta_description`, `pick_up_point_id`, `shipping_cost`, `delivery_pickup_latitude`, `delivery_pickup_longitude`, `bank_name`, `bank_acc_name`, `bank_acc_no`, `bank_routing_no`, `bank_payment_status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Demo Seller Shop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House : Demo, Road : Demo, Section : Demo', 0.00, 0, 0, NULL, 0, NULL, 0, NULL, 0, 0.00, 'www.facebook.com', NULL, 'www.google.com', 'www.twitter.com', 'www.youtube.com', 'Demo-Seller-Shop-1', 'Demo Seller Shop Title', 'Demo description', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-11-27 10:23:13', '2019-08-06 06:43:16'),
(2, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, 0, NULL, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 'demo-shop-15', NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-12-02 01:34:15', '2023-12-02 01:34:15'),
(3, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, 0, NULL, 0, NULL, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 'demo-shop-16', NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-12-02 01:34:46', '2023-12-02 01:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `social_credentials`
--

CREATE TABLE `social_credentials` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `access_token` text COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_at` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refresh_token` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 28, 2, '2023-12-13 14:49:40', '2023-12-13 14:49:40'),
(2, 29, 2, '2023-12-15 10:54:00', '2023-12-15 10:54:00'),
(3, 30, 2, '2023-12-15 10:58:33', '2023-12-15 10:58:33'),
(4, 31, 2, '2023-12-15 11:00:22', '2023-12-15 11:00:22'),
(5, 32, 2, '2023-12-15 12:13:13', '2023-12-15 12:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `country_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `cost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `status`, `created_at`, `updated_at`, `deleted_at`, `cost`) VALUES
(131, 'بغداد', 0, 1, '2023-12-09 08:30:28', '2023-12-09 08:42:47', NULL, 20),
(132, 'الموصل', 1, 1, '2023-12-09 08:30:28', '2023-12-09 08:30:28', NULL, 50),
(133, 'البصرة', 1, 1, '2023-12-09 08:30:28', '2023-12-09 08:30:28', NULL, 50),
(135, 'اربيل', 1, 1, '2023-12-09 08:30:28', '2023-12-09 08:30:28', NULL, 50),
(139, 'النجف', 1, 1, '2023-12-09 08:30:28', '2023-12-09 08:30:28', NULL, 50),
(140, 'كربلاء', 1, 1, '2023-12-09 08:30:28', '2023-12-09 08:30:28', NULL, 50),
(141, 'صلاح الدين', 1, 1, '2023-12-09 08:30:28', '2023-12-09 08:30:28', NULL, 50),
(143, 'السليمانية', 1, 1, '2023-12-09 08:30:28', '2023-12-09 08:30:28', NULL, 50),
(144, 'الأنبار', 1, 1, '2023-12-09 08:30:28', '2023-12-09 08:30:28', NULL, 50),
(188, 'بابل', 1, 1, '2023-12-09 08:30:28', '2023-12-09 08:30:28', NULL, 50),
(190, 'كركوك', 1, 1, '2023-12-09 08:30:28', '2023-12-09 08:30:28', NULL, 50),
(192, 'دهوك', 1, 1, '2023-12-09 08:30:28', '2023-12-09 08:30:28', NULL, 50),
(194, 'ديالى', 1, 1, '2023-12-09 08:30:28', '2023-12-09 08:30:28', NULL, 50),
(196, 'ذي قار', 1, 1, '2023-12-09 08:30:28', '2023-12-09 08:30:28', NULL, 50),
(202, 'القادسية', 1, 1, '2023-12-09 08:30:28', '2023-12-09 08:30:28', NULL, 50),
(204, 'المثنى', 1, 1, '2023-12-09 08:30:28', '2023-12-09 08:30:28', NULL, 50),
(206, 'ميسان', 1, 1, '2023-12-09 08:30:28', '2023-12-09 08:30:28', NULL, 50),
(208, 'واسط', 1, 1, '2023-12-09 08:30:28', '2023-12-09 08:30:28', NULL, 50);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tax_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Inactive, 1 = Active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `tax_status`, `created_at`, `updated_at`) VALUES
(3, 'Tax', 1, '2021-03-07 11:45:33', '2021-03-07 11:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int NOT NULL,
  `code` bigint NOT NULL,
  `user_id` int NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `details` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `files` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `status` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'pending',
  `viewed` int NOT NULL DEFAULT '0',
  `client_viewed` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `code`, `user_id`, `subject`, `details`, `files`, `status`, `viewed`, `client_viewed`, `created_at`, `updated_at`) VALUES
(1, 170271521934, 34, 'أوجه مشكلة فى منتجات الفئة ملابس', 'ثقبصس', '59', 'pending', 1, 1, '2023-12-16 09:15:10', '2023-12-16 07:15:10'),
(2, 170271526234, 34, 'قصث', 'قصث', NULL, 'solved', 0, 1, '2023-12-16 09:11:15', '2023-12-16 07:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` int NOT NULL,
  `ticket_id` int NOT NULL,
  `user_id` int NOT NULL,
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `files` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `ticket_replies`
--

INSERT INTO `ticket_replies` (`id`, `ticket_id`, `user_id`, `reply`, `files`, `created_at`, `updated_at`) VALUES
(1, 2, 9, '<p>fsd</p>', NULL, '2023-12-16 06:51:59', '2023-12-16 06:51:59'),
(2, 2, 34, '<p>tert</p>', NULL, '2023-12-16 06:53:25', '2023-12-16 06:53:25'),
(3, 2, 34, '<p>dsa</p>', NULL, '2023-12-16 06:56:52', '2023-12-16 06:56:52'),
(4, 2, 34, '<p>terter</p>', NULL, '2023-12-16 07:09:24', '2023-12-16 07:09:24'),
(5, 2, 34, '<p>ytr</p>', NULL, '2023-12-16 07:11:01', '2023-12-16 07:11:01'),
(6, 2, 34, '<p>tyr</p>', NULL, '2023-12-16 07:11:11', '2023-12-16 07:11:11'),
(7, 2, 34, '<p>yrt</p>', NULL, '2023-12-16 07:11:15', '2023-12-16 07:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `additional_content` text,
  `mpesa_request` varchar(255) DEFAULT NULL,
  `mpesa_receipt` varchar(255) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int NOT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `lang_key` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `lang_value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(419, 'ar', 'inhouse_auction_products', 'منتجات المزاد الداخلي', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(420, 'ar', 'seller_auction_products', 'منتجات مزاد البائع', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(421, 'ar', 'auction_products_orders', 'طلبات منتجات المزاد', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(422, 'ar', 'sales', 'المبيعات', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(423, 'ar', 'admin', 'مسؤل الموقع ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(424, 'ar', 'sorry_nothing_found_for', 'عذرا لا يوجن نتائج بحث عن ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(425, 'ar', 'notification', 'التنبيهات  ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(426, 'ar', 'all_orders', 'كل الطلبات', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(427, 'ar', 'download_your_products', ' تحميل منتجاتك الرقمية ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(428, 'ar', 'inhouse_orders', 'أوامر داخلية', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(429, 'ar', 'delete_your_account', 'حذف حسابك  ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(430, 'ar', 'delete_my_account', 'حذف حسابي  ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(431, 'ar', 'homepage_settings', 'أعدادات الصفحة الرئيسية  ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(432, 'ar', 'seller_orders', 'طلبات البائع', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(433, 'ar', 'pickup_point_order', 'نقطة الاستلام للطلابات', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(434, 'ar', 'delivery_boy', 'فتى التوصيل', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(435, 'ar', 'all_delivery_boy', 'جميع فتى التوصيل', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(436, 'ar', 'add_delivery_boy', 'إضافة صبي التوصيل', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(437, 'ar', 'cancel_request', 'إلغاء الطلب', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(438, 'ar', 'login_to_your_seller_account', 'إلغاء ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(439, 'ar', 'login_to_your_account', 'تسجيل الدخول لحسابك    ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(440, 'ar', 'terms_and_conditions', 'الأحكام والشروط', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(441, 'ar', 'by_signing_up_you_agree_to_our', 'بالتسجيل فإنك توافق على   ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(442, 'ar', 'welcome_back_', 'مرحباً بعودتك  ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(443, 'ar', 'password_must_contain_at_least_6_digits', 'يجب أن تحتوي كلمة المرور على 6 أرقام على الأقل ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(444, 'ar', 'create_an_account', 'أنشاء حساب جديد ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(445, 'ar', 'configuration', 'الاعدادات', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(446, 'ar', 'subscribe_to_our_newsletter_for_regular_updates_about_offers_coupons__more', 'اشترك في النشرة الإخبارية لدينا للحصول على تحديثات منتظمة حول العروض والكوبونات والمزيد', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(447, 'ar', 'refunds', 'المبالغ المستردة', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(448, 'ar', 'contacts', 'تواصل معنا  ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(449, 'ar', 'light', 'فاتح   ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(450, 'ar', 'header_nav_menu_text_color', 'لون نص قائمة التنقل في الرأس  ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(451, 'ar', 'topbar_banner_large', ' الصورة العلوية (فى الشاشات الكبيرة )  ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(452, 'ar', 'topbar_banner_medium', 'الصورة العلوية (فى الشاشات المتوسطة ) ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(453, 'ar', 'topbar_banner_small', 'الصورة العلوية (فى الشاشات الصغيرة )  ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(454, 'ar', 'enter_your_email_address_and_new_password_and_confirm_password', 'أدخل عنوان بريدك الإلكتروني وكلمة المرور الجديدة وقم بتأكيد كلمة المرور  ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(455, 'ar', 'reset_password', 'أستعادة كلمة المرور   ', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(456, 'ar', 'refund_requests', 'طلبات الاسترداد', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(457, 'ar', 'approved_refunds', 'المبالغ المستردة المعتمدة', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(458, 'ar', 'rejected_refunds', 'المبالغ المستردة المرفوضة', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(459, 'ar', 'refund_configuration', 'إعدادات المبالغ المستردة', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(460, 'ar', 'customers', 'العملاء', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(461, 'ar', 'customer_list', 'قائمة العملاء', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(462, 'ar', 'classified_products', 'المنتجات المبوبة', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(463, 'ar', 'classified_packages', 'الحزم المبوبة', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(464, 'ar', 'sellers', 'الباعة', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(465, 'ar', 'all_seller', 'جميع الباعة', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(466, 'ar', 'payouts', 'المدفوعات', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(467, 'ar', 'payout_requests', 'طلبات الدفع', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(468, 'ar', 'seller_commission', 'عمولة البائع', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(469, 'ar', 'seller_packages', 'حزم البائع', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(470, 'ar', 'seller_verification_form', 'نموذج التحقق من البائع', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(471, 'ar', 'uploaded_files', 'الملفات التي يتم تحميلها', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(472, 'ar', 'reports', 'التقارير', '2023-12-06 14:55:38', '2023-12-06 14:55:38'),
(473, 'ar', 'in_house_product_sale', 'بيع المنتجات في المنزل', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(474, 'ar', 'seller_products_sale', 'بيع منتجات البائع', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(475, 'ar', 'products_stock', 'مخزون المنتجات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(476, 'ar', 'products_wishlist', 'قائمة المنتجات المفضلة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(477, 'ar', 'user_searches', 'عمليات بحث المستخدم', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(478, 'ar', 'commission_history', 'تاريخ العمولات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(479, 'ar', 'wallet_recharge_history', 'سجل شحن المحفظة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(480, 'ar', 'blog_system', 'نظام المدونة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(481, 'ar', 'all_posts', 'جميع المشاركات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(482, 'ar', 'categories', 'فئات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(483, 'ar', 'marketing', 'التسويق', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(484, 'ar', 'flash_deals', 'صفقات فلاش', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(485, 'ar', 'newsletters', 'النشرات الإخبارية', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(486, 'ar', 'bulk_sms', 'الرسائل القصيرة بالجملة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(487, 'ar', 'subscribers', 'مشتركين', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(488, 'ar', 'coupon', 'قسيمة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(489, 'ar', 'support', 'الدعم', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(490, 'ar', 'ticket', 'تذكرة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(491, 'ar', 'product_queries', 'استفسارات المنتج', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(492, 'ar', 'affiliate_system', 'نظام الانتساب', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(493, 'ar', 'affiliate_registration_form', 'استمارة تسجيل المنتسبين', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(494, 'ar', 'affiliate_configurations', 'اعدادات المنتسبين', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(495, 'ar', 'affiliate_users', 'المستخدمون المنتسبون', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(496, 'ar', 'referral_users', 'المستخدمون المحالون', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(497, 'ar', 'affiliate_withdraw_requests', 'طلبات السحب التابعة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(498, 'ar', 'affiliate_logs', 'سجلات الشركات التابعة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(499, 'ar', 'offline_payment_system', 'نظام الدفع دون اتصال بالإنترنت', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(500, 'ar', 'manual_payment_methods', 'طرق الدفع اليدوية', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(501, 'ar', 'offline_wallet_recharge', 'إعادة شحن المحفظة دون اتصال بالإنترنت', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(502, 'ar', 'offline_customer_package_payments', 'مدفوعات حزمة العملاء غير المتصلين', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(503, 'ar', 'offline_seller_package_payments', 'مدفوعات حزمة البائع غير المتصل', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(504, 'ar', 'paytm_payment_gateway', 'بوابة الدفع Paytm', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(505, 'ar', 'set_paytm_credentials', 'قم بتعيين بيانات اعتماد Paytm', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(506, 'ar', 'club_point_system', 'نظام نقاط النادي', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(507, 'ar', 'club_point_configurations', 'إعدادات نظام نقاط النادي', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(508, 'ar', 'set_product_point', 'تعيين نقطة المنتج', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(509, 'ar', 'user_points', 'نقاط المستخدم', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(510, 'ar', 'otp_system', 'نظام OTP', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(511, 'ar', 'otp_configurations', 'إعدادات OTP', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(512, 'ar', 'sms_templates', 'قوالب الرسائل القصيرة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(513, 'ar', 'set_otp_credentials', 'قم بتعيين بيانات اعتماد OTP', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(514, 'ar', 'african_payment_gateway_addon', 'ملحق بوابة الدفع الأفريقية', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(515, 'ar', 'african_pg_configurations', 'تكوينات PG الأفريقية', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(516, 'ar', 'set_african_pg_credentials', 'تعيين أوراق الاعتماد الأفريقية PG', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(517, 'ar', 'website_setup', 'إعداد موقع الويب', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(518, 'ar', 'header', 'رأس', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(519, 'ar', 'footer', 'تذييل', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(520, 'ar', 'pages', 'الصفحات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(521, 'ar', 'appearance', 'مظهر', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(522, 'ar', 'setup__configurations', 'الإعداد والتكوينات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(523, 'ar', 'general_settings', 'الاعدادات العامة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(524, 'ar', 'features_activation', 'تفعيل الميزات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(525, 'ar', 'languages', 'اللغات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(526, 'ar', 'currency', 'عملة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(527, 'ar', 'vat__tax', 'ضريبة القيمة المضافة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(528, 'ar', 'pickup_point', 'نقطة الالتقاط', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(529, 'ar', 'smtp_settings', 'إعدادات SMTP', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(530, 'ar', 'payment_methods', 'طرق الدفع', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(531, 'ar', 'file_system__cache_configuration', 'تكوين نظام الملفات وذاكرة التخزين المؤقت', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(532, 'ar', 'social_media_logins', 'عمليات تسجيل الدخول إلى وسائل التواصل الاجتماعي', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(533, 'ar', 'facebook', 'فيسبوك', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(534, 'ar', 'facebook_chat', 'دردشة الفيسبوك', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(535, 'ar', 'facebook_comment', 'تعليق الفيسبوك', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(536, 'ar', 'google', 'جوجل', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(537, 'ar', 'analytics_tools', 'أدوات التحليلات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(538, 'ar', 'google_recaptcha', 'جوجل re CAPTCHA', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(539, 'ar', 'google_map', 'خرائط جوجل', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(540, 'ar', 'google_firebase', 'Google Firebase', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(541, 'ar', 'shipping', 'شحن', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(542, 'ar', 'shipping_configuration', 'تكوين الشحن', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(543, 'ar', 'shipping_countries', 'دول الشحن', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(544, 'ar', 'shipping_cities', 'مدن الشحن', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(545, 'ar', 'staffs', 'طاقم العمل', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(546, 'ar', 'all_staffs', 'كل فريق العمل', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(547, 'ar', 'all_staffs', 'كل فريق العمل', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(548, 'ar', 'staff_permissions', 'أذونات الموظفين', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(549, 'ar', 'system', 'نظام', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(550, 'ar', 'update', 'تحديث', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(551, 'ar', 'server_status', 'حالة الخادم', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(552, 'ar', 'addon_manager', 'مدير الملحق', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(553, 'ar', 'browse_website', 'تصفح الموقع', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(554, 'ar', 'pos', 'نقاط البيع', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(555, 'ar', 'notifications', 'إشعارات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(556, 'ar', 'order_code_', 'رمز الطلب:', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(557, 'ar', 'has_been_placed', 'تم وضعه', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(558, 'ar', 'view_all_notifications', 'عرض جميع الاشعارات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(559, 'ar', 'profile', 'الملف الشخصي', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(560, 'ar', 'logout', 'تسجيل خروج', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(561, 'ar', 'nothing_found', 'لم يتم العثور على شيء', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(562, 'ar', 'nothing_found', 'لم يتم العثور على شيء', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(563, 'ar', 'home', 'الصفحة الرئيسية', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(564, 'ar', 'nothing_selected', 'لا شيء محدد', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(565, 'ar', 'choose_file', 'اختر ملف', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(566, 'ar', 'file_selected', 'تم تحديد الملف', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(567, 'ar', 'files_selected', 'تم تحديد الملفات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(568, 'ar', 'add_more_files', 'إضافة المزيد من الملفات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(569, 'ar', 'adding_more_files', 'إضافة المزيد من الملفات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(570, 'ar', 'drop_files_here_paste_or', 'أفلت الملفات هنا أو الصقها أو', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(571, 'ar', 'browse', 'تصفح', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(572, 'ar', 'upload_complete', 'اكتمل التحميل', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(573, 'ar', 'upload_paused', 'توقف التحميل مؤقتًا', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(574, 'ar', 'resume_upload', 'استئناف تحميل', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(575, 'ar', 'pause_upload', 'إيقاف التحميل مؤقتًا', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(576, 'ar', 'retry_upload', 'إعادة محاولة التحميل', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(577, 'ar', 'cancel_upload', 'إلغاء الرفع', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(578, 'ar', 'uploading', 'تحميل', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(579, 'ar', 'processing', 'يعالج', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(580, 'ar', 'complete', 'مكتمل', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(581, 'ar', 'file', 'ملف', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(582, 'ar', 'files', 'الملفات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(583, 'ar', 'my_panel', 'لوحتي', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(584, 'ar', 'i_am_shopping_for', 'انا اتسوق لأجل...', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(585, 'ar', 'compare', 'قارن', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(586, 'ar', 'wishlist', 'قائمة الرغبات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(587, 'ar', 'cart', 'عربة التسوق', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(588, 'ar', 'cart_items', 'عناصر عربة التسوق', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(589, 'ar', 'subtotal', 'المجموع الفرعي', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(590, 'ar', 'view_cart', 'عرض عربة التسوق', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(591, 'ar', 'checkout', 'الدفع', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(592, 'ar', 'see_all', 'اظهار الكل', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(593, 'ar', 'flash_sale', 'بيع مفاجئ', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(594, 'ar', 'blogs', 'المدونات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(595, 'ar', 'all_brands', 'جميع العلامات التجارية', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(596, 'ar', 'all_categories', 'جميع الفئات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(597, 'ar', 'all_sellers', 'كل البائعين', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(598, 'ar', 'coupons', 'كوبونات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(599, 'ar', 'terms__conditions', 'البنود و الظروف', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(600, 'ar', 'return_policy', 'سياسة العائدات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(601, 'ar', 'support_policy', 'سياسة الدعم', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(602, 'ar', 'privacy_policy', 'سياسة الخصوصية', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(603, 'ar', 'your_email_address', 'عنوان بريدك الإلكتروني', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(604, 'ar', 'subscribe', 'الإشتراك', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(605, 'ar', 'contact_info', 'معلومات الاتصال', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(606, 'ar', 'address', 'العنوان', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(607, 'ar', 'phone', 'الجوال', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(608, 'ar', 'email', 'البريد الإلكتروني', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(609, 'ar', 'my_account', 'حسابي', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(610, 'ar', 'order_history', 'تاريخ الطلب', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(611, 'ar', 'my_wishlist', 'قائمة رغباتي', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(612, 'ar', 'track_order', 'متابعة الطلب', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(613, 'ar', 'be_an_affiliate_partner', 'كن شريكا منتسبا', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(614, 'ar', 'be_a_seller', 'كن بائعا', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(615, 'ar', 'apply_now', 'قدم الآن', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(616, 'ar', 'account', 'الحساب', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(617, 'ar', 'ok_i_understood', 'موافق. لقد فهمت', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(618, 'ar', 'subscribe_now', 'إشترك الآن', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(619, 'ar', 'confirmation', 'تأكيد', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(620, 'ar', 'delete_confirmation_message', 'حذف رسالة التأكيد', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(621, 'ar', 'cancel', 'إلغاء', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(622, 'ar', 'delete', 'حذف', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(623, 'ar', 'item_has_been_removed_from_cart', 'تمت إزالة العنصر من عربة التسوق', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(624, 'ar', 'item_has_been_added_to_compare_list', 'تمت إضافة العنصر إلى قائمة المقارنة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(625, 'ar', 'please_login_first', 'الرجاء تسجيل الدخول أولا', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(626, 'ar', 'please_choose_all_the_options', 'الرجاء اختيار جميع الخيارات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(627, 'ar', 'page_not_found', '!الصفحة غير موجودة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(628, 'ar', 'the_page_you_are_looking_for_has_not_been_found_on_our_server', 'لم يتم العثور على الصفحة التي تبحث عنها على خادمنا.', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(629, 'ar', 'login', 'تسجيل الدخول', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(630, 'ar', 'registration', 'تسجيل', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(631, 'ar', 'your_cart_is_empty', 'عربة التسوق فارغة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(632, 'ar', 'please_configure_smtp_setting_to_work_all_email_sending_functionality', 'للعمل على جميع وظائف إرسال البريد الإلكتروني SMTP يرجى تكوين إعداد', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(633, 'ar', 'configure_now', 'تكوين الآن', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(634, 'ar', 'total', 'المجموع', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(635, 'ar', 'customer', 'عميل', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(636, 'ar', 'order', 'طلب', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(637, 'ar', 'product_category', 'فئة المنتج', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(638, 'ar', 'product_brand', 'العلامة التجارية للمنتج', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(639, 'ar', 'products', 'منتجات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(640, 'ar', 'category_wise_product_sale', 'بيع فئة المنتج ', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(641, 'ar', 'category_wise_product_stock', 'مخزون فئة المنتج ', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(642, 'ar', 'top_12_products', 'أفضل 12 منتج', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(643, 'ar', 'total_published_products', 'إجمالي المنتجات المنشورة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(644, 'ar', 'total_sellers_products', 'إجمالي منتجات البائعين', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(645, 'ar', 'total_admin_products', 'إجمالي منتجات الإدارة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(646, 'ar', 'total_sellers', 'مجموع البائعين', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(647, 'ar', 'total_approved_sellers', 'إجمالي البائعين المعتمدين', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(648, 'ar', 'total_pending_sellers', 'إجمالي البائعين المعلقين', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(649, 'ar', 'number_of_sale', 'عدد المبيعات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(650, 'ar', 'number_of_stock', 'رقم المخزون', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(651, 'ar', 'search_in_menu', 'البحث في القائمة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(652, 'ar', 'dashboard', 'لوحة التحكم  ', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(653, 'ar', 'pos_system', 'نظام نقاط البيع', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(654, 'ar', 'pos_manager', 'مدير نقاط البيع', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(655, 'ar', 'pos_configuration', 'تكوين نقاط البيع', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(656, 'ar', 'add_new_product', 'اضافة منتج جديد', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(657, 'ar', 'all_products', 'جميع المنتجات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(658, 'ar', 'in_house_products', 'منتجات داخلية', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(659, 'ar', 'seller_products', 'منتجات البائع', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(660, 'ar', 'digital_products', 'المنتجات الرقمية', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(661, 'ar', 'bulk_import', 'استيراد ضخم', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(662, 'ar', 'bulk_export', 'تصديرضخم', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(663, 'ar', 'category', 'فئة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(664, 'ar', 'brand', 'علامة تجارية', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(665, 'ar', 'attribute', 'الميزات ', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(666, 'ar', 'colors', 'الألوان', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(667, 'ar', 'product_reviews', 'تعليقات المنتج', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(668, 'ar', 'auction_products', 'منتجات المزاد', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(669, 'ar', 'add_new_auction_product', 'أضف منتج مزاد جديد', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(670, 'ar', 'all_auction_products', 'جميع منتجات المزاد', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(671, 'ar', 'all_product', 'كل المنتجات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(672, 'ar', 'bulk_action', 'العمليات ', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(673, 'ar', 'delete_selection', 'حذف التحديد', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(674, 'ar', 'view_all_coupons', 'عرض الكوبونات ', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(675, 'ar', 'delete_coupon', 'حذف الكوبون ', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(676, 'ar', 'edit_coupon', 'تعديل الكوبون ', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(677, 'ar', 'add_coupon', 'أضافة الكوبون ', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(678, 'ar', 'sort_by', 'تصنف حسب', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(679, 'ar', 'any_additional_info', 'أي معلومات أضافية ؟', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(680, 'ar', 'featured_flash_deal', ' تمييز صفقات فلاش', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(681, 'ar', 'publish_flash_deal', ' نشر صفقات فلاش', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(682, 'ar', 'view_all_flash_deals', ' عرض صفقات فلاش', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(683, 'ar', 'add_flash_deal', 'أضافة صفقات فلاش ', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(684, 'ar', 'edit_flash_deal', 'تعديل صفقات فلاش', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(685, 'ar', 'delete_flash_deal', 'حذف صفقات فلاش', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(686, 'ar', 'rating_high__low', 'التقييم (مرتفع> منخفض)', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(687, 'ar', 'rating_low__high', 'التقييم (منخفض> مرتفع)', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(688, 'ar', 'num_of_sale_high__low', 'عدد المبيعات (مرتفع> منخفض)', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(689, 'ar', 'num_of_sale_low__high', 'عدد المبيعات (منخفض> مرتفع)', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(690, 'ar', 'base_price_high__low', 'السعر الأساسي (مرتفع> منخفض)', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(691, 'ar', 'base_price_low__high', 'السعر الأساسي (منخفض> مرتفع)', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(692, 'ar', 'type__enter', 'اكتب & أدخل', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(693, 'ar', 'name', 'الإسم', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(694, 'ar', 'added_by', 'أضيفت بواسطة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(695, 'ar', 'info', 'معلومات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(696, 'ar', 'total_stock', 'إجمالي المخزون', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(697, 'ar', 'todays_deal', 'صفقة اليوم', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(698, 'ar', 'published', 'نشرت', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(699, 'ar', 'featured', 'متميز', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(700, 'ar', 'options', 'خيارات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(701, 'ar', 'options', 'خيارات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(702, 'ar', 'num_of_sale', 'عدد المبيعات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(703, 'ar', 'times', 'مرات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(704, 'ar', 'base_price', 'السعر الأساسي', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(705, 'ar', 'rating', 'التقييم', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(706, 'ar', 'view', 'رؤية', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(707, 'ar', 'edit', 'تحرير', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(708, 'ar', 'duplicate', 'كرر', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(709, 'ar', 'delete_confirmation', 'تأكيد الحذف', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(710, 'ar', 'are_you_sure_to_delete_this', 'هل أنت متأكد من حذف هذا؟', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(711, 'ar', 'todays_deal_updated_successfully', 'تم تحديث صفقة اليوم بنجاح', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(712, 'ar', 'something_went_wrong', 'حدث خطأ ما', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(713, 'ar', 'published_products_updated_successfully', 'تم تحديث المنتجات المنشورة بنجاح', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(714, 'ar', 'product_approval_update_successfully', 'تحديث الموافقة على المنتج بنجاح', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(715, 'ar', 'featured_products_updated_successfully', 'تم تحديث المنتجات المميزة بنجاح', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(716, 'ar', 'edit_product', 'تعديل المنتج', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(717, 'ar', 'product_name', 'اسم المنتج', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(718, 'ar', 'translatable', 'قابل للترجمة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(719, 'ar', 'select_brand', 'إختر العلامة التجارية', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(720, 'ar', 'unit', 'وحدة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(721, 'ar', 'unit_eg_kg_pc_etc', 'وحدة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(722, 'ar', 'minimum_purchase_qty', 'الحد الأدنى من كمية الشراء', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(723, 'ar', 'tags', 'العلامات', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(724, 'ar', 'type_to_add_a_tag', 'اكتب لإضافة علامة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(725, 'ar', 'barcode', 'الرمز الشريطي', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(726, 'ar', 'refundable', 'مستردة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(727, 'ar', 'product_images', 'صور المنتج', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(728, 'ar', 'gallery_images', 'معرض الصور', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(729, 'ar', 'thumbnail_image', 'صورة مصغرة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(730, 'ar', 'product_videos', 'منتجات مشاهدة', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(731, 'ar', 'video_provider', 'مزود الفيديو', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(732, 'ar', 'youtube', 'موقع يوتيوب', '2023-12-06 14:55:39', '2023-12-06 14:55:39'),
(733, 'ar', 'dailymotion', 'Dailymotion موقع', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(734, 'ar', 'vimeo', 'Vimeo برنامج', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(735, 'ar', 'video_link', 'رابط الفيديو', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(736, 'ar', 'product_variation', 'تنوع المنتج', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(737, 'ar', 'attributes', 'سمات', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(738, 'ar', 'choose_attributes', 'اختر السمات', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(739, 'ar', 'choose_the_attributes_of_this_product_and_then_input_values_of_each_attribute', 'اختر سمات هذا المنتج ثم قيم الإدخال لكل سمة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(740, 'ar', 'product_price__stock', 'سعر المنتج + االمخزون', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(741, 'ar', 'unit_price', 'سعر الوحدة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(742, 'ar', 'discount_date_range', 'نطاق تاريخ الخصم', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(743, 'ar', 'select_date', 'حدد تاريخ', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(744, 'ar', 'discount', 'تخفيض', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(745, 'ar', 'flat', 'موحد', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(746, 'ar', 'percent', 'نسبه مئويه', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(747, 'ar', 'set_point', 'نقطة معاينة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(748, 'ar', '1', '', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(749, 'ar', 'quantity', 'كمية', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(750, 'ar', 'sku', 'وحدة حفظ الأوراق المالية', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(751, 'ar', 'external_link', 'رابط خارجي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(752, 'ar', 'leave_it_blank_if_you_do_not_use_external_site_link', 'اتركه فارغًا إذا كنت لا تستخدم ارتباط موقع خارجي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(753, 'ar', 'product_description', 'وصف المنتج', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(754, 'ar', 'description', 'وصف', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(755, 'ar', 'product_shipping_cost', 'تكلفة شحن المنتج', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(756, 'ar', 'pdf_specification', 'تخصيص ملف', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(757, 'ar', 'seo_meta_tags', 'علامات الصفحة الشبكية لتحسين محرك البحث', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(758, 'ar', 'meta_title', 'عنوان الصفحة الشبكية', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(759, 'ar', 'meta_description', '', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(760, 'ar', 'meta_images', 'صور meta', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(761, 'ar', 'slug', 'سبيكة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(762, 'ar', 'free_shipping', 'الشحن مجانا', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(763, 'ar', 'flat_rate', 'سعر موحد', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(764, 'ar', 'shipping_cost', 'تكلفة الشحن', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(765, 'ar', 'is_product_quantity_mulitiply', 'هل كمية المنتج مضاعفة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(766, 'ar', 'low_stock_quantity_warning', 'تحذير من إنخفاض كمية المخزون', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(767, 'ar', 'stock_visibility_state', 'حالة رؤية المخزون', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(768, 'ar', 'show_stock_quantity', 'عرض كمية المخزون', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(769, 'ar', 'show_stock_with_text_only', 'اظهار المخزون مع النص فقط', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(770, 'ar', 'hide_stock', 'اخفاء المخزون', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(771, 'ar', 'cash_on_delivery', 'الدفع عند الإستلام  ', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(772, 'ar', 'status', 'الحالة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(773, 'ar', 'flash_deal', 'صفقة سريعة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(774, 'ar', 'add_to_flash', 'إضافة إلي الصفقة السريعة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(775, 'ar', 'discount_type', 'نوع الخصم', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(776, 'ar', 'estimate_shipping_time', 'تقدير وقت الشحن', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(777, 'ar', 'shipping_days', 'ايام الشحن', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(778, 'ar', 'days', 'أيام', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(779, 'ar', 'tax', 'ضريبة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(780, 'ar', 'update_product', 'تحديث المنتج', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(781, 'ar', 'update_profile', 'تحديث الصفحة الشخصية', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(782, 'ar', 'choice_title', 'عنوان الاختيار', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(783, 'ar', 'variant', 'البديل', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(784, 'ar', 'variant_price', 'سعر متغير', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(785, 'ar', 'photo', 'صورة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(786, 'ar', 'product_has_been_updated_successfully', 'لقد تم تحديث المنتج بنجاح', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(787, 'ar', 'language_changed_to_', 'تغيرت اللغة إلي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(788, 'ar', 'filters', 'المرشحات', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(789, 'ar', 'price_range', 'نطاق السعر', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(790, 'ar', 'filter_by', 'مصنف بواسطة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(791, 'ar', 'filter_by_color', 'مصنف بواسطة اللون', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(792, 'ar', 'brands', 'علامات تجارية', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(793, 'ar', 'newest', 'الاحدث', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(794, 'ar', 'oldest', 'الأقدم', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(795, 'ar', 'price_low_to_high', 'تم رفع السعر', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(796, 'ar', 'price_high_to_low', 'تم تخفيض السعر', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(797, 'ar', 'add_to_wishlist', 'أضف إلي قائمة الرغبات', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(798, 'ar', 'add_to_compare', 'أضف إلي المقارنة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(799, 'ar', 'add_to_cart', 'أضف إلي عربة التسوق', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(800, 'ar', 'add_to_cart', 'أضف إلي عربة التسوق', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(801, 'ar', 'club_point', 'نقطة النادي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(802, 'ar', 'search_result_for_', 'نتيجة البحث عن', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(803, 'ar', 'popular_suggestions', 'الإقتراحات الشعبية', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(804, 'ar', 'category_suggestions', 'الفئات المقترحة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(805, 'ar', 'shops', 'المحلات التجارية', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(806, 'ar', 'reviews', 'المراجعات', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(807, 'ar', 'sold_by', 'تم بيعها من قبل', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(808, 'ar', 'inhouse_product', 'منتج داخلي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(809, 'ar', 'message_seller', 'مراسلة البائع', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(810, 'ar', 'price', 'سعر', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(811, 'ar', 'color', 'اللون', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(812, 'ar', 'available', 'متوفرة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(813, 'ar', 'total_price', 'السعر الكلي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(814, 'ar', 'buy_now', 'اشتري الآن', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(815, 'ar', 'out_of_stock', 'إنتهى من المخزون', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(816, 'ar', 'sorry_for_the_inconvenience_but_were_working_on_it', 'نأسف على الإزعاج ، لكننا نعمل على ذلك.', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(817, 'ar', 'error_code', 'خطا بالكود', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(818, 'ar', 'hot', 'جديد', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(819, 'ar', 'view_more', 'عرض المزيد', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(820, 'ar', 'classified_ads', 'إعلانات مصنفة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(821, 'ar', 'new', 'جديد', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(822, 'ar', 'used', 'مستخدم', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(823, 'ar', 'top_10_categories', 'أعلى 10 فئات', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(824, 'ar', 'view_all_categories', 'عرض جميع الفئات', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(825, 'ar', 'top_10_brands', 'أغلي 10 علامات تجارية', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(826, 'ar', 'view_all_brands', 'عرض كل علامات تجارية', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(827, 'ar', 'best_selling', 'أفضل مبيعات', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(828, 'ar', 'featured_products', 'منتجات مميزة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(829, 'ar', 'best_sellers', 'أفضل البائعين', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(830, 'ar', 'view_all_sellers', 'عرض جميع البائعين', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(831, 'ar', 'visit_store', 'قم بزيارة المتجر', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(832, 'ar', 'top_20', 'أفضل 20', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(833, 'ar', 'welcome_to', 'مرحبا بك في', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(834, 'ar', 'login_to_your_account', 'تسجيل الدخول إلى حسابك.', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(835, 'ar', 'password', 'كلمة المرور', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(836, 'ar', 'remember_me', 'تذكرنى', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(837, 'ar', 'installed_addon', 'الملحق المثبت', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(838, 'ar', 'available_addon', 'الملحق المتاح', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(839, 'ar', 'installupdate_addon', 'تثبيت / تحديث الملحق', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(840, 'ar', 'version', 'إصدار', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(841, 'ar', 'purchase_code', 'كود شراء', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(842, 'ar', 'status_updated_successfully', 'تم تحديث الحالة بنجاح', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(843, 'ar', 'zip_file', 'ملف الرمز', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(844, 'ar', 'installupdate', 'تثبيت / تحديث', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(845, 'ar', 'this_addon_is_updated_successfully', 'تم تحديث هذا الملحق بنجاح', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(846, 'ar', 'total_sale', 'إجمالي البيع', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(847, 'ar', 'total_earnings', 'الأرباح الكلية', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(848, 'ar', 'successful_orders', 'الطلبات الناجحة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(849, 'ar', 'orders', 'الطلبات', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(850, 'ar', 'total_orders', 'إجمالي الطلبات', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(851, 'ar', 'pending_orders', 'الطلبات المعلقة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(852, 'ar', 'cancelled_orders', 'الطلبات الملغاة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(853, 'ar', 'product', 'منتج', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(854, 'ar', 'purchased_package', 'الحزمة المشتراة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(855, 'ar', 'product_upload_remaining', 'تحميل المنتج المتبقي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(856, 'ar', 'digital_product_upload_remaining', 'تحميل المنتج الرقمي المتبقي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(857, 'ar', 'auction_product_upload_remaining', 'مزاد تحميل المنتج المتبقي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(858, 'ar', 'package_expires_at', 'الحزمة تنتهي في', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(859, 'ar', 'current_package', 'الحزمة الحالية', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(860, 'ar', 'upgrade_package', 'تحديث الحزمة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(861, 'ar', 'shop', 'محل', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(862, 'ar', 'manage__organize_your_shop', 'إدارة وتنظيم متجرك', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(863, 'ar', 'go_to_setting', 'الذهاب إلي الإعدادات', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(864, 'ar', 'payment', 'الدفع', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(865, 'ar', 'nothing_found', 'لا يوجد بيانات ', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(866, 'ar', 'configure_your_payment_method', 'تكوين طريقة الدفع الخاصة بك', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(867, 'ar', 'purchase_history', 'تاريخ شراء', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(868, 'ar', 'downloads', 'المنتجات الرقمية (التحميلات )', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(869, 'ar', 'sent_refund_request', 'تم إرسال طلب استرداد', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(870, 'ar', 'product_bulk_upload', 'تحميل مجمع للمنتج', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(871, 'ar', 'auction_product_orders', 'طلبات المنتجات بالمزاد', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(872, 'ar', 'auction', 'مزاد علني', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(873, 'ar', 'bidded_products', 'المنتجات المزايدة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(874, 'ar', 'received_refund_request', 'تم استلام طلب استرداد', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(875, 'ar', 'shop_setting', 'إعدادات متجر', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(876, 'ar', 'payment_history', 'تاريخ الدفع', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(877, 'ar', 'money_withdraw', 'سحب الأموال', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(878, 'ar', 'conversations', 'المحادثات', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(879, 'ar', 'my_wallet', 'محفظتى', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(880, 'ar', 'earning_points', 'كسب النقاط', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(881, 'ar', 'no_notification_found', 'لم يتم العثور على إخطار', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(882, 'ar', 'support_ticket', 'بطاقة الدعم', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(883, 'ar', 'manage_profile', 'إدارة الملف الشخصي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(884, 'ar', 'sold_amount', 'الكية المباعة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(885, 'ar', 'your_sold_amount_current_month', 'الكمية المباعة (الشهر الحالي)', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(886, 'ar', 'total_sold', 'إجمالي المبيعات', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(887, 'ar', 'last_month_sold', 'تم بيع الشهر الماضي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(888, 'ar', 'item_has_been_added_to_wishlist', 'تمت إضافة العنصر إلى قائمة الرغبات', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(889, 'ar', 'forgot_password', 'هل نسيت كلمة السر؟', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(890, 'ar', 'dont_have_an_account', 'ليس لديك حساب؟', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(891, 'ar', 'register_now', 'سجل الان', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(892, 'ar', 'remaining_uploads', 'التحديثات المتبقية', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(893, 'ar', 'no_package_found', 'لم يتم العثور على حزمة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(894, 'ar', 'available_status', 'الحالة المتاحة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(895, 'ar', 'admin_status', 'حالة الإدارة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(896, 'ar', 'status_has_been_updated_successfully', 'تم تحديث الحالة بنجاح', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(897, 'ar', 'email_or_phone', 'بريد الكتروني او جوال', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(898, 'ar', 'use_country_code_before_number', 'استخدم رمز البلد قبل الرقم', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(899, 'ar', 'create_an_account', 'انشئ حساب.', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(900, 'ar', 'full_name', 'الاسم الكامل', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(901, 'ar', 'use_email_instead', 'استخدم البريد الإلكتروني بدلاً من ذلك', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(902, 'ar', 'confirm_password', 'تأكيد كلمة المرور', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(903, 'ar', 'by_signing_up_you_agree_to_our_terms_and_conditions', 'بالتسجيل فإنك توافق على الشروط والأحكام الخاصة بنا.', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(904, 'ar', 'create_account', 'إصنع حساب', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(905, 'ar', 'already_have_an_account', 'هل لديك حساب؟', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(906, 'ar', 'log_in', 'تسجيل الدخول', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(907, 'ar', 'use_phone_instead', 'استخدم الجوال بدلاً من ذلك', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(908, 'ar', 'invalid_email_or_password', 'البريد الإلكتروني أو كلمة السر خاطئة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(909, 'ar', 'in_your_cart', 'في عربة التسوق الخاصة بك', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(910, 'ar', 'in_your_wishlist', 'في قائمة الرغبات الخاصة بك', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(911, 'ar', 'you_ordered', 'لقد طلبت', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(912, 'ar', 'default_shipping_address', 'عنوان الشحن الافتراضي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(913, 'ar', 'country', 'دولة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(914, 'ar', 'city', 'مدينة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(915, 'ar', 'change_your_email', 'تغيير البريد الإلكتروني ', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(916, 'ar', 'postal_code', 'رمز بريدي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(917, 'ar', 'product_upload', 'تحميل المنتج', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(918, 'ar', 'share', 'مشاركة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(919, 'ar', 'your_phone', 'الجوال', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(920, 'ar', 'customer_reviews', 'آراء المستهلكين', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(921, 'ar', 'top_selling_products', 'المنتجات الأكثر مبيعًا', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(922, 'ar', 'video', 'فيديو', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(923, 'ar', 'download', 'تحميل', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(924, 'ar', 'there_have_been_no_reviews_for_this_product_yet', 'لم تكن هناك أراء لهذا المنتج حتى الآن. فيديو', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(925, 'ar', 'related_products', 'منتجات ذات صله', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(926, 'ar', 'any_query_about_this_product', 'أي استفسار عن هذا المنتج', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(927, 'ar', 'your_question', 'سؤالك', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(928, 'ar', 'send', 'إرسال', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(929, 'ar', 'link_copied_to_clipboard', 'تم نسخ الرابط إلى الحافظة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(930, 'ar', 'oops_unable_to_copy', 'عفوًا ، غير قادر على النسخ', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(931, 'ar', 'item_added_to_your_cart', 'تمت الإضافة إلي عربة التسوق', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(932, 'ar', 'back_to_shopping', 'العودة إلى التسوق', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(933, 'ar', 'proceed_to_checkout', 'التقدم للحساب', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(934, 'ar', '1_my_cart', 'عربة التسوق الخاصة بي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(935, 'ar', '2_shipping_info', '2. معلومات الشحن', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(936, 'ar', '3_delivery_info', '3. معلومات التسليم', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(937, 'ar', '4_payment', '4. الدفع', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(938, 'ar', '5_confirmation', '5. التأكيد', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(939, 'ar', 'remove', 'إزالة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(940, 'ar', 'return_to_shop', 'العودة الى المتجر', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(941, 'ar', 'continue_to_shipping', 'تابع إلى الشحن', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(942, 'ar', 'add_new_address', 'أضف عنوان جديد', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(943, 'ar', 'continue_to_delivery_info', 'تابع إلى معلومات التسليم', '2023-12-06 14:55:40', '2023-12-06 14:55:40');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(944, 'ar', 'new_address', 'عنوان جديد', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(945, 'ar', 'your_address', 'عنوانك', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(946, 'ar', 'your_postal_code', 'رمزك البريدي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(947, 'ar', '880', '', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(948, 'ar', 'save', 'حفظ', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(949, 'ar', 'address_edit', 'تحرير العنوان', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(950, 'ar', 'choose_delivery_type', 'اختر نوع التسليم', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(951, 'ar', 'home_delivery', 'توصيل منزلي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(952, 'ar', 'local_pickup', 'شحن محلي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(953, 'ar', 'select_your_nearest_pickup_point', 'حدد أقرب نقطة شحن الخاصة بك', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(954, 'ar', 'continue_to_payment', 'تابع إلى الدفع', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(955, 'ar', 'select_a_payment_option', 'حدد خيار الدفع', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(956, 'ar', 'paypal', 'دفع باي بال', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(957, 'ar', 'stripe', 'شريط', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(958, 'ar', 'sslcommerz', '', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(959, 'ar', 'instamojo', '', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(960, 'ar', 'razorpay', 'دفع رازر', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(961, 'ar', 'paystack', '', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(962, 'ar', 'voguepay', 'دفع فوجو', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(963, 'ar', 'payhere', 'ادفع هنا', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(964, 'ar', 'ngenius', '', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(965, 'ar', 'iyzico', '', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(966, 'ar', 'nagad', '', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(967, 'ar', 'bkash', '', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(968, 'ar', 'proxypay', 'دفع بروكسي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(969, 'ar', 'or', 'أو', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(970, 'ar', 'your_wallet_balance_', 'رصيد محفظتك', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(971, 'ar', 'pay_with_wallet', 'ادفع بالمحفظة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(972, 'ar', 'i_agree_to_the', 'أنا أوافق على', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(973, 'ar', 'complete_order', 'اكمل الطلب', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(974, 'ar', 'summary', 'ملخص', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(975, 'ar', 'items', 'العناصر', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(976, 'ar', 'total_shipping', 'إجمالي الشحن', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(977, 'ar', 'have_coupon_code_enter_here', 'هل لديك رمز قسيمة؟ أدخل هنا', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(978, 'ar', 'apply', 'تقدم', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(979, 'ar', 'you_need_to_agree_with_our_policies', 'أنت بحاجة إلى الموافقة على سياساتنا', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(980, 'ar', 'your_order_has_been_placed_successfully', 'تم وضع طلبك بنجاح', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(981, 'ar', 'thank_you_for_your_order', 'شكرا لطلبك!', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(982, 'ar', 'a_copy_or_your_order_summary_has_been_sent_to', 'تم إرسال نسخة أو ملخص طلبك إلى', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(983, 'ar', 'order_summary', 'ملخص الطلب', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(984, 'ar', 'order_date', 'تاريخ الطلب', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(985, 'ar', 'shipping_address', 'عنوان الشحن', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(986, 'ar', 'order_status', 'حالة الطلب', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(987, 'ar', 'pending', 'قيد الانتظار', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(988, 'ar', 'total_order_amount', 'إجمالي كيمة الطلب', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(989, 'ar', 'flat_shipping_rate', 'سعر الشحن ثابت', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(990, 'ar', 'payment_method', 'طريقة الدفع', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(991, 'ar', 'order_code', 'رمز الطلب', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(992, 'ar', 'order_details', 'تفاصيل الطلب', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(993, 'ar', 'variation', 'تنوع', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(994, 'ar', 'delivery_type', 'نوع التوصيل', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(995, 'ar', 'coupon_discount', 'خصم القسيمة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(996, 'ar', 'another_product_exists_with_same_slug_please_change_the_slug', 'يوجد منتج آخر بنفس المواصفات الرجاء تغييره !', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(997, 'ar', 'default_language', 'اللغة الافتراضية', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(998, 'ar', 'add_new_language', 'أضف لغة جديدة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(999, 'ar', 'language', 'لغة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1000, 'ar', 'code', 'رمز', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1001, 'ar', 'rtl', 'RTL', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1002, 'ar', 'translation', 'ترجمة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1003, 'ar', 'type_key__enter', 'اكتب مفتاح وأدخل', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1004, 'ar', 'key', 'مفتاح', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1005, 'ar', 'weight', 'الوزن  ', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1006, 'ar', 'select_main', 'حدد الرئيسية ', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1007, 'ar', 'value', 'قيمة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1008, 'ar', 'product_category', 'فئة المنتج ', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1009, 'ar', 'copy_translations', 'نسخ الترجمات', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1010, 'ar', 'wholesale_prices', 'السعر بالجملة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1011, 'ar', 'min_qty', 'الحد الأدني للكمية', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1012, 'ar', 'max_qty', 'الحد الأقصي للكمية', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1013, 'ar', 'price_per_piece', 'السعر لكل قطعة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1014, 'ar', 'add_more', 'أضف المزيد', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1015, 'ar', 'wholesale_products', 'منتجات بالجملة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1016, 'ar', 'add_new_wholesale_product', 'أضف منتج جديد بالجملة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1017, 'ar', 'all_wholesale_products', 'كل المنتجات بالجملة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1018, 'ar', 'wholesale', 'بالجملة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1019, 'ar', 'affiliate', 'ينتسب إلي', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1020, 'ar', 'withdraw_request_history', 'تاريخ الطلب المسحوب', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1021, 'ar', 'refund', 'إسترداد', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1022, 'ar', 'view_policy', 'عرض السياسة', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(1023, 'ar', 'add_new_product', 'أضافة منتج جديد', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1024, 'ar', 'congratulations', 'تهانينا', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1025, 'ar', 'you_have_successfully_completed_the_updating_process_please_login_to_continue', 'لقد أكملت بنجاح عملية التحديث. الرجاء تسجيل الدخول للمتابعة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1026, 'ar', 'go_to_home', 'Go to Home', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1027, 'ar', 'login_to_admin_panel', 'تسجيل الدخول إلى لوحة الإدارة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1028, 'ar', 'payment_histories', 'تاريخ الدفع', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1029, 'ar', 'collected_histories', 'التواريخ المجمعة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1030, 'ar', 'shipping_states', 'المحافظات / الولايات', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1031, 'ar', 'clear_cache', 'مسح ذاكرة التخزين المؤقت', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1032, 'ar', 'all_states', 'كل المحافظات / الولايات', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1033, 'ar', 'states', 'المحافظات / الولايات', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1034, 'ar', 'type_state_name', 'أكتب إسم المحافظة / الولاية', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1035, 'ar', 'select_country', 'حدد الدولة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1036, 'ar', 'filter', 'فلتر', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1037, 'ar', 'showhide', 'أظهر / أخفي', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1038, 'ar', 'action', 'عمل', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1039, 'ar', 'add_new_state', 'أضف محافظة / ولاية جديدة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1040, 'ar', 'country_status_updated_successfully', 'تم تحديث حالة البلد بنجاح', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1041, 'ar', 'package_not_found', 'الحزمة غير موجودة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1042, 'ar', 'all_payment_list', 'قائمة جميع المدفوعات', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1043, 'ar', 'payment_list', 'قائمة الدفع', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1044, 'ar', 'type_email_or_name__enter', 'اكتب البريد الإلكتروني أو الاسم وأدخل', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1045, 'ar', 'payment_amount', 'مبلغ الدفع', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1046, 'ar', 'created_at', 'أنشئت في', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1047, 'ar', 'all_collection_list', 'كل قائمة المجموعة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1048, 'ar', 'collection_list', 'قائمة المجموعة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1049, 'ar', 'collected_amount', 'الكمية المحصلة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1050, 'ar', 'delivery_boy_information', 'معلومات فتى التوصيل', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1051, 'ar', 'state', 'حالة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1052, 'ar', 'image', 'رؤية', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1053, 'ar', 'all_delivery_boys', 'كل أولاد التوصيل', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1054, 'ar', 'add_new_delivery_boy', 'إضافة صبي توصيل جديد', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1055, 'ar', 'delivery_boys', 'أولاد التوصيل', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1056, 'ar', 'email_address', 'عنوان البريد الالكترونى', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1057, 'ar', 'earning', 'ربح', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1058, 'ar', 'collection', 'مجموعة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1059, 'ar', 'ban_this_delivery_boy', 'حظر صبي التوصيل هذا', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1060, 'ar', 'go_to_collection', 'اذهب إلى المجموعة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1061, 'ar', 'go_to_payment', 'انتقل إلى الدفع', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1062, 'ar', 'do_you_really_want_to_ban_this_delivery_boy', 'هل تريد حقا حذر فتي التوصيل هذا ؟', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1063, 'ar', 'proceed', 'يتابع!', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1064, 'ar', 'do_you_really_want_to_unban_this_delivery_boy', 'هل تريد حقا عدم حذر فتي التوصيل هذا ؟', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1065, 'ar', 'delivery_boy_has_been_created_successfully', 'تم إنشاء فتي توصيل بنجاح', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1066, 'ar', 'delivery_boy_has_been_updated_successfully', 'تم تحديث فتي توصيل بنجاح', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1067, 'ar', 'new_password', 'كلمة السر الجديدة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1068, 'ar', 'avatar', 'الصورة الرمزية', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1069, 'ar', 'off', 'إيقاف', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1070, 'ar', 'invalid_login_credentials', 'اعتماد تسجيل الدخول غير صالح', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1071, 'ar', 'help_line', 'خط المساعدة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1072, 'ar', 'all_seller_packages', 'جميع حزم البائع', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1073, 'ar', 'add_new_package', 'إضافة حزمة جديدة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1074, 'ar', 'package_logo', 'شعار الحزمة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1075, 'ar', 'digital_product_upload', 'تحميل المنتج الرقمي', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1076, 'ar', 'auction_product_upload', 'مزاد تحميل المنتج', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1077, 'ar', 'package_duration', 'مدة الحزمة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1078, 'ar', 'product_upload_limit', 'حد تحميل المنتج', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1079, 'ar', 'update_package_information', 'تحديث معلومات الحزمة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1080, 'ar', 'package_name', 'اسم الحزمة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1081, 'ar', 'amount', 'الكمية', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1082, 'ar', 'duration', 'المدة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1083, 'ar', 'validity_in_number_of_days', 'الصلاحية في عدد الأيام', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1084, 'ar', 'package_has_been_inserted_successfully', 'تم إدخال الحزمة بنجاح', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1085, 'ar', 'cache_cleared_successfully', 'تم مسح ذاكرة التخزين المؤقت بنجاح', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1086, 'ar', 'premium_packages_for_sellers', 'حزم ممتازة للبائعين', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1087, 'ar', 'purchase_package', 'حزمة الشراء', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1088, 'ar', 'select_payment_type', 'اختر طريقة الدفع', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1089, 'ar', 'payment_type', 'نوع الدفع', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1090, 'ar', 'select_one', 'حدد واحد', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1091, 'ar', 'online_payment', 'الدفع الالكتروني', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1092, 'ar', 'offline_payment', 'الدفع دون اتصال بالإنترنت', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1093, 'ar', 'purchase_your_package', 'شراء باقتك', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1094, 'ar', 'mpesa', '', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1095, 'ar', 'flutterwave', 'رفرفة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1096, 'ar', 'payfast', 'ادفع بسرعة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1097, 'ar', 'confirm', 'يتأكد', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1098, 'ar', 'offline_package_payment', 'دفع حزمة دون اتصال', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1099, 'ar', 'transaction_id', 'رقم العملية', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1100, 'ar', 'choose_image', 'اختر صورة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1101, 'ar', 'select_file', 'حدد ملف', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1102, 'ar', 'upload_new', 'تحديث جديد', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1103, 'ar', 'sort_by_newest', 'ترتيب حسب الأحدث', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1104, 'ar', 'sort_by_oldest', 'ترتيب حسب الأقدم', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1105, 'ar', 'sort_by_smallest', 'الترتب بالأصغر', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1106, 'ar', 'sort_by_largest', 'الترتب بالأكبر', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1107, 'ar', 'selected_only', 'المحدد فقط', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1108, 'ar', 'search_your_files', 'ابحث في ملفاتك', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1109, 'ar', 'no_files_found', 'لا توجد ملفات', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1110, 'ar', '0_file_selected', 'تم تحديد الملف', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1111, 'ar', 'clear', 'واضح', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1112, 'ar', 'prev', 'السابق', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1113, 'ar', 'next', 'التالي', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1114, 'ar', 'add_files', 'إضافة ملفات', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1115, 'ar', 'you_have_more_uploaded_products_than_this_package_limit_you_need_to_remove_excessive_products_to_downgrade', 'لديك منتجات تم تحميلها أكثر من حد المطلوب لهذه الحزمة .تحتاج إلى إزالة المنتجات الزائدة للرجوع إلى إصدار أقدم', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1116, 'ar', 'external_link_button_text', 'نص زر الارتباط الخارجي', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1117, 'ar', 'website_header', 'مقدمة الموقع', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1118, 'ar', 'header_setting', 'ضبط المقدمة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1119, 'ar', 'header_logo', 'شعار المقدمة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1120, 'ar', 'show_language_switcher', 'عرض محول اللغة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1121, 'ar', 'show_currency_switcher', 'عرض محول العملات', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1122, 'ar', 'enable_stikcy_header', 'تمكين رأس stikcy؟', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1123, 'ar', 'topbar_banner', 'شعار الشريط العلوي', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1124, 'ar', 'topbar_banner_link', 'رابط شعار الشريط العلوي', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1125, 'ar', 'link_with', 'الربط بواسطة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1126, 'ar', 'help_line_number', 'رقم خط المساعدة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1127, 'ar', 'header_nav_menu', 'مقدمة قائمة التنقل', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1128, 'ar', 'label', 'ملصق', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1129, 'ar', 'add_new', 'إضافة جديد', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1130, 'ar', 'settings_updated_successfully', 'تم تحديث الإعدادات بنجاح', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1131, 'ar', 'system_name', 'اسم النظام', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1132, 'ar', 'system_logo__white', 'شعار النظام - أبيض', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1133, 'ar', 'choose_files', 'اختيار الملفات', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1134, 'ar', 'will_be_used_in_admin_panel_side_menu', 'سيتم استخدامه في القائمة الجانبية للوحة الإدارة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1135, 'ar', 'system_logo__black', 'شعار النظام -اسود', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1136, 'ar', 'will_be_used_in_admin_panel_topbar_in_mobile__admin_login_page', 'سيتم استخدامه في الشريط العلوي للوحة الإدارة في الهاتف المحمول+صفحة تسجيل دخول المسؤول', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1137, 'ar', 'system_timezone', 'المنطقة الزمنية للنظام', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1138, 'ar', 'admin_login_page_background', 'خلفية صفحة تسجيل دخول المشرف', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1139, 'ar', 'https_activation', '', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1140, 'ar', 'maintenance_mode_activation', 'تفعيل وضع الصيانة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1141, 'ar', 'disable_image_encoding', 'تعطيل ترميز الصورة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1142, 'ar', 'business_related', 'الأعمال ذات الصلة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1143, 'ar', 'vendor_system_activation', 'تفعيل نظام البائعين', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1144, 'ar', 'classified_product', 'منتج مصنف', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1145, 'ar', 'wallet_system_activation', 'تفعيل نظام المحفظة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1146, 'ar', 'coupon_system_activation', 'تفعيل نظام القسيمة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1147, 'ar', 'pickup_point_activation', 'تفعيل نقطة الالتقاط', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1148, 'ar', 'conversation_activation', 'تفعيل المحادثه', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1149, 'ar', 'seller_product_manage_by_admin', 'إدارة منتج البائع بواسطة المشرف', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1150, 'ar', 'after_activate_this_option_cash_on_delivery_of_seller_product_will_be_managed_by_admin', 'بعد تنشيط هذا الخيار ، ستتم إدارة الدفع عند التسليم لمنتج البائع بواسطة المسؤول', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1151, 'ar', 'admin_approval_on_seller_product', 'موافقة المشرف على منتج البائع', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1152, 'ar', 'after_activate_this_option_admin_approval_need_to_seller_product', 'بعد تفعيل هذا الخيار ، تحتاج موافقة المسؤول للبائع', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1153, 'ar', 'email_verification', 'تأكيد بواسطة البريد الالكتروني', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1154, 'ar', 'payment_related', 'متعلقة بالدفع', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1155, 'ar', 'paypal_payment_activation', 'تفعيل الدفع بواسطة PayPal', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1156, 'ar', 'you_need_to_configure_paypal_correctly_to_enable_this_feature', 'تحتاج إلى تكوين Zain Cache بشكل صحيح لتمكين هذه الميزة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1157, 'ar', 'stripe_payment_activation', 'تفعيل الدفع الشريطي', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1158, 'ar', 'sslcommerz_activation', 'تفعيل SSlCommerz', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1159, 'ar', 'instamojo_payment_activation', 'ميزة تفعيل الدفع Instamojo', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1160, 'ar', 'you_need_to_configure_instamojo_payment_correctly_to_enable_this_feature', 'تحتاج إلى تكوين Instamojo الدفع بشكل صحيح لتمكين هذه الميزة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1161, 'ar', 'razor_pay_activation', 'تفعيل دفع رازر', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1162, 'ar', 'you_need_to_configure_razor_correctly_to_enable_this_feature', 'تحتاج إلى تكوين رازر بشكل صحيح لتمكين هذه الميزة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1163, 'ar', 'paystack_activation', 'تفعيل PayStack', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1164, 'ar', 'you_need_to_configure_paystack_correctly_to_enable_this_feature', 'تحتاج إلى تكوين PayStack بشكل صحيح لتمكين هذه الميزة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1165, 'ar', 'voguepay_activation', 'تفعيل VoguePay', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1166, 'ar', 'you_need_to_configure_voguepay_correctly_to_enable_this_feature', 'تحتاج إلى تكوين VoguePay بشكل صحيح لتمكين هذه الميزة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1167, 'ar', 'payhere_activation', 'تفعيل Payhere', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1168, 'ar', 'ngenius_activation', 'تفعيل Ngenius', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1169, 'ar', 'you_need_to_configure_ngenius_correctly_to_enable_this_feature', 'تحتاج إلى تكوين Ngenius بشكل صحيح لتمكين هذه الميزة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1170, 'ar', 'iyzico_activation', 'تفعيل Iyzico', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1171, 'ar', 'you_need_to_configure_iyzico_correctly_to_enable_this_feature', 'تحتاج إلى تكوين iyzico بشكل صحيح لتمكين هذه الميزة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1172, 'ar', 'bkash_activation', 'تفعيل bkash', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1173, 'ar', 'you_need_to_configure_bkash_correctly_to_enable_this_feature', 'تحتاج إلى تكوين bkash بشكل صحيح لتمكين هذه الميزة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1174, 'ar', 'nagad_activation', 'تفعيل Nagad', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1175, 'ar', 'you_need_to_configure_nagad_correctly_to_enable_this_feature', 'تحتاج إلى تكوين nagad بشكل صحيح لتمكين هذه الميزة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1176, 'ar', 'proxy_pay_activation', 'تفعيل الدفع بالوكيل', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1177, 'ar', 'you_need_to_configure_proxypay_correctly_to_enable_this_feature', 'أنت بحاجة إلى تكوين الدفع بالوكيل بشكل صحيح لتمكين هذه الميزة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1178, 'ar', 'amarpay_activation', 'تفعيل Amarpay', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1179, 'ar', 'you_need_to_configure_amarpay_correctly_to_enable_this_feature', 'تحتاج إلى تكوين amarpay بشكل صحيح لتمكين هذه الميزة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1180, 'ar', 'authorize_net_activation', 'تفويض التنشيط الصافي', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1181, 'ar', 'you_need_to_configure_authorize_net_correctly_to_enable_this_feature', 'تحتاج إلى تكوين تخويل net بشكل صحيح لتمكين هذه الميزة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1182, 'ar', 'payku_net_activation', 'تفعيل Payku Net', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1183, 'ar', 'you_need_to_configure_payku_net_correctly_to_enable_this_feature', 'تحتاج إلى تكوين شبكة payku net بشكل صحيح لتمكين هذه الميزة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1184, 'ar', 'cash_payment_activation', 'تفعيل الدفع النقدي', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1185, 'ar', 'social_media_login', 'تسجيل الدخول إلى وسائل التواصل الاجتماعي', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1186, 'ar', 'facebook_login', 'تسجيل الدخول الى الفيسبوك', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1187, 'ar', 'apple_login', 'تسجيل الدخول الى آبل', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1188, 'ar', 'you_need_to_configure_apple_client_correctly_to_enable_this_feature', 'تحتاج إلى تكوين Apple Client بشكل صحيح لتمكين هذه الميزة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1189, 'ar', 'you_need_to_configure_facebook_client_correctly_to_enable_this_feature', 'تحتاج إلى تكوين عميل الفيس بوك بشكل صحيح لتمكين هذه الميزة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1190, 'ar', 'google_login', 'تسجيل الدخول إلى الجوجل', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1191, 'ar', 'you_need_to_configure_google_client_correctly_to_enable_this_feature', 'تحتاج إلى تكوين عميل الجوجل بشكل صحيح لتمكين هذه الميزة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1192, 'ar', 'twitter_login', 'تسجيل الدخول إلى التويتر', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1193, 'ar', 'you_need_to_configure_twitter_client_correctly_to_enable_this_feature', 'تحتاج إلى تكوين عميل تويتر بشكل صحيح لتمكين هذه الميزة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1194, 'ar', 'step_1', 'الخطوة 1', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1195, 'ar', 'download_the_skeleton_file_and_fill_it_with_proper_data', 'قم بتنزيل ملف الهيكل العظمي واملأه بالبيانات المناسبة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1196, 'ar', 'you_can_download_the_example_file_to_understand_how_the_data_must_be_filled', 'يمكنك تنزيل ملف المثال لفهم كيفية ملأ البيانات بالبيانات المناسبة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1197, 'ar', 'once_you_have_downloaded_and_filled_the_skeleton_file_upload_it_in_the_form_below_and_submit', 'بمجرد تنزيل ملف الهيكل العظمي وملأه ، قم بتحميله في النموذج أدناه وأرسله', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1198, 'ar', 'after_uploading_products_you_need_to_edit_them_and_set_products_images_and_choices', 'بعد تحميل المنتجات تحتاج إلى تعديلها وتعيين صور المنتج وخياراته', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1199, 'ar', 'download_csv', 'تنزيل ملف CSV', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1200, 'ar', 'step_2', 'الخطوة 2', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1201, 'ar', 'category_and_brand_should_be_in_numerical_id', 'يجب أن تكون الفئة والعلامة التجارية في معرف رقمي', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1202, 'ar', 'you_can_download_the_pdf_to_get_category_and_brand_id', 'يمكنك تنزيل ملف pdf للحصول على معرف الفئة والعلامة التجارية', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1203, 'ar', 'download_category', 'فئة التحميل', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1204, 'ar', 'download_brand', 'تحميل الماركة التجارية', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1205, 'ar', 'upload_product_file', 'تحميل ملف المنتج', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1206, 'ar', 'upload_csv', 'تحميل CSV', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1207, 'ar', 'condition', 'شرط', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1208, 'ar', 'all_type', 'كل الأنواع', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1209, 'ar', 'change_order_status', 'تغيير حالة الطلب', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1210, 'ar', 'choose_an_order_status', 'اختر حالة الطلب', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1211, 'ar', 'confirmed', 'تم التأكيد', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1212, 'ar', 'picked_up', 'التقط', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1213, 'ar', 'on_the_way', 'علي الطريق', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1214, 'ar', 'delivered', 'تم التوصيل', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1215, 'ar', 'filter_by_delivery_status', 'تصفية حسب حالة التسليم', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1216, 'ar', 'filter_by_date', 'تصفية حسب التاريخ', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1217, 'ar', 'type_order_code__hit_enter', 'اكتب رمز الطلب واضغط على زر الدخول', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1218, 'ar', 'num_of_products', 'عدد المنتجات', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1219, 'ar', 'delivery_status', 'حالة التسليم', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1220, 'ar', 'payment_status', 'حالة الدفع', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1221, 'ar', 'unpaid', 'غير مدفوعة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1222, 'ar', 'no_refund', 'لا رد للمبلغ', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1223, 'ar', 'download_invoice', 'تحميل فاتورة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1224, 'ar', 'paid', 'مدفوع', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1225, 'ar', 'assign_deliver_boy', 'تعيين فتي التوصيل', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1226, 'ar', 'select_delivery_boy', 'إختيار صبي التوصيل', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1227, 'ar', 'tracking_code_optional', 'كود التتبع (اختياري)', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1228, 'ar', 'order_', 'ترتيب #', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1229, 'ar', 'total_amount', 'المبلغ الإجمالي', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1230, 'ar', 'qty', 'الكمية', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1231, 'ar', 'sub_total', 'المجموع الفرعي', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1232, 'ar', 'delivery_boy_has_been_assigned', 'تم تعيين فتى التوصيل', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1233, 'ar', 'delivery_status_has_been_updated', 'تم تحديث حالة التسليم', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1234, 'ar', 'payment_status_has_been_updated', 'تم تحديث حالة الدفع', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1235, 'ar', 'order_tracking_code_has_been_updated', 'تم تحديث رمز تتبع الطلب', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1236, 'ar', 'all_auction_product', 'كل منتجات المزاد', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1237, 'ar', 'bid_starting_amount', 'مبلغ بدء المزايدة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1238, 'ar', 'auction_start_date', 'تاريخ بدء المزاد', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1239, 'ar', 'auction_end_date', 'تاريخ انتهاء المزاد', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1240, 'ar', 'total_bids', 'إجمالي المزايدات', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1241, 'ar', 'view_products', 'عرض المشاهدات', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1242, 'ar', 'view_all_bids', 'عرض كل المزايدات', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1243, 'ar', 'in_house_wholesale_products', 'منتجات البيع بالجملة داخلي', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1244, 'ar', 'seller_wholesale_products', 'منتجات البائع بالجملة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1245, 'ar', 'asian_payment_gateway', 'بوابة الدفع الآسيوية', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1246, 'ar', 'set_asian_pg_credentials', 'قم بتعيين بيانات الاعتماد الآسيوية PG', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1247, 'ar', 'order_configuration', ' أعدادت الطلبات ', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1248, 'ar', 'this_version_is_not_capable_of_installing_addons_please_update', 'هذا الإصدار غير قادر على تثبيت الإضافات ، يرجى التحديث.', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1249, 'ar', 'activate_otp', 'تفعيل OTP', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1250, 'ar', 'nexmo_otp', '', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1251, 'ar', 'twilio_otp', '', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1252, 'ar', 'ssl_wireless_otp', '', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1253, 'ar', 'fast2sms_otp', '', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1254, 'ar', 'mimo_otp', '', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1255, 'ar', 'mimsms', '', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1256, 'ar', 'msegat_sms', '', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1257, 'ar', 'new_products', 'منتجات جديدة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1258, 'ar', 'no_addon_installed', 'لا يوجد ملحق مثبت', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1259, 'ar', 'addon_installed_successfully', 'تم تثبيت الملحق بنجاح', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1260, 'ar', 'product_information', 'معلومات المنتج', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1261, 'ar', 'type_and_hit_enter_to_add_a_tag', 'اكتب واضغط على زر الدخول لإضافة علامة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1262, 'ar', 'this_is_used_for_search_input_those_words_by_which_cutomer_can_find_this_product', 'هذا يستخدم للبحث. أدخل تلك الكلمات التي يمكن لـ لعميل العثور على هذا المنتج من خلالها.', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1263, 'ar', 'these_images_are_visible_in_product_details_page_gallery_use_600x600_sizes_images', 'هذه الصور مرئية في معرض صفحة تفاصيل المنتج. استخدم صور بحجم 600 × 600.', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1264, 'ar', 'this_image_is_visible_in_all_product_box_use_300x300_sizes_image_keep_some_blank_space_around_main_object_of_your_image_as_we_had_to_crop_some_edge_in_different_devices_to_make_it_responsive', 'هذه الصورة مرئية في كل علبة المنتج. استخدم صورة بحجم 300 × 300. احتفظ ببعض المساحة الفارغة حول الكائن الرئيسي لصورتك حيث كان علينا قص بعض الحواف في أجهزة مختلفة لجعلها مستجيبة.', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1265, 'ar', 'use_proper_link_without_extra_parameter_dont_use_short_share_linkembeded_iframe_code', 'استخدم الارتباط المناسب بدون معامل إضافية. لا تستخدم رابط المشاركة القصير / كود iframe المضمن.', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1266, 'ar', 'meta_image', 'صورة ميتا', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1267, 'ar', 'save_as_draft', 'حفظ كمسودة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1268, 'ar', 'save__unpublish', 'حفظ & إلغاء النشر', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1269, 'ar', 'save__publish', 'حفظ ونشر', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1270, 'ar', 'convert_point_to_wallet', 'تحويل النقطة إلى المحفظة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1271, 'ar', 'set_point_for_', 'تحديد نقطة من أجل', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1272, 'ar', 'points', 'نقاط', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1273, 'ar', '_you_need_to_activate_wallet_option_first_before_using_club_point_addon', 'ملاحظة: أنت بحاجة إلى تنشيط خيار المحفظة أولاً قبل استخدام ملحق نقطة النادي.', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1274, 'ar', 'point_convert_rate_has_been_updated_successfully', 'تم تحديث معدل تحويل النقاط بنجاح', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1275, 'ar', 'owner', 'المالك', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1276, 'ar', 'point', 'نقطة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1277, 'ar', 'set_point_for_product_within_a_range', 'تعيين نقطة للمنتج ضمن النطاق', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1278, 'ar', 'set_any_specific_point_for_those_products_what_are_between_minprice_and_maxprice_minprice_should_be_less_than_maxprice', 'حدد أي نقطة محددة لتلك المنتجات بين الحد الأدنى للسعر والحد الأقصى للسعر. يجب أن يكون الحد الأدنى للسعر أقل من السعر الأقصى', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1279, 'ar', 'set_point_for_multiple_products', 'تعيين نقطة لمنتجات متعددة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1280, 'ar', 'min_price', 'سعر الحد الأدنى', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1281, 'ar', 'max_price', 'سعر الحد الأقصى', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1282, 'ar', 'set_point_for_all_products', 'تعيين نقطة لجميع المنتجات', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1283, 'ar', 'customer_name', 'اسم العميل', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1284, 'ar', 'convert_status', 'تحويل الحالة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1285, 'ar', 'earned_at', 'حصل في', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1286, 'ar', 'text_input', 'ادخال النص', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1287, 'ar', 'select', 'اختيار', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1288, 'ar', 'multiple_select', 'تحديد متعدد', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1289, 'ar', 'radio', 'راديو', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1290, 'ar', 'basic_affiliate', 'شركة تابعة أساسية', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1291, 'ar', 'user_registration__first_purchase', 'تسجيل المستخدم وأول عملية شراء', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1292, 'ar', 'product_sharing_affiliate', 'شركة مساهمة في المنتج', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1293, 'ar', 'product_sharing_and_purchasing', 'مشاركة المنتج وشرائه', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1294, 'ar', 'product_sharing_affiliate_category_wise', 'شركة تابعة لمشاركة المنتج (الفئة ة)', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1295, 'ar', 'nb_you_can_not_enable_single_product_sharing_affiliate_and_category_wise_affiliate_at_a_time', 'لا يمكنك تمكين الشركة التابعة لمشاركة المنتج الفردي والشركة التابعة من الفئة ة في وقت واحد', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1296, 'ar', 'affiliate_link_validatin_time_days', 'وقت التحقق من صحة الارتباط التابع (أيام)', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1297, 'ar', 'validation_time', 'وقت التحقق', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1298, 'ar', 'update_your_system', 'حدث نظامك', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1299, 'ar', 'current_verion', 'النسخة الحالية', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1300, 'ar', 'make_sure_your_server_has_matched_with_all_requirements', 'اجعل خادمك مطابقًا لجميع المتطلبات', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1301, 'ar', 'check_here', 'افحص هنا', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1302, 'ar', 'download_latest_version_from_codecanyon', 'قم بتنزيل أحدث إصدار من برنامج codecanyon.', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1303, 'ar', 'extract_downloaded_zip_you_will_find_updateszip_file_in_those_extraced_files', 'استخراج ملف مضغوط تم تنزيله. ستجد تحديثات ملف الرمز البريدي في تلك الملفات المستخرجة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1304, 'ar', 'upload_that_zip_file_here_and_click_update_now', 'قم بتحميل هذا الملف الرمز البريدي وانقر فوق تحديث الآن', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1305, 'ar', 'if_you_are_using_any_addon_make_sure_to_update_those_addons_after_updating', 'إذا كنت تستخدم أي ملحق ، فتأكد من تحديث هذه الوظائف الإضافية بعد التحديث', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1306, 'ar', 'please_turn_off_maintenance_mode_before_updating', 'يرجى إيقاف تشغيل وضع الصيانة قبل التحديث', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1307, 'ar', 'update_now', 'حدث الآن', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1308, 'ar', 'add_new_digital_product', 'إضافة منتج رقمي جديد', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1309, 'ar', 'type_name__enter', 'اكتب الاسم وأدخل', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1310, 'ar', 'add_new_category', 'إضافة فئة جديدة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1311, 'ar', 'parent_category', 'القسم الرئيسي', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1312, 'ar', 'order_level', 'مستوى الطلب', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1313, 'ar', 'level', 'مستوى', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1314, 'ar', 'banner', 'لافتة', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(1315, 'ar', 'icon', 'أيقونة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1316, 'ar', 'commission', 'عمولة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1317, 'ar', 'featured_categories', 'الفئات المميزة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1318, 'ar', 'featured_categories_updated_successfully', 'تم تحديث الفئات المميزة بنجاح', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1319, 'ar', 'all_customers', 'كل العملاء', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1320, 'ar', 'package', 'طَرد', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1321, 'ar', 'wallet_balance', 'رصيد المحفظة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1322, 'ar', 'log_in_as_this_customer', 'تسجيل الدخول باسم هذا العميل', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1323, 'ar', 'ban_this_customer', 'حظر هذا العميل', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1324, 'ar', 'do_you_really_want_to_ban_this_customer', 'هل تريد حقًا حظر هذا العميل؟', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1325, 'ar', 'do_you_really_want_to_unban_this_customer', 'هل تريد حقًا إلغاء حظر هذا العميل؟', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1326, 'ar', 'uploaded_by', 'تم الرفع بواسطة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1327, 'ar', 'customer_status', 'حالة العميل', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1328, 'ar', 'product_image', 'صورة المنتج', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1329, 'ar', 'show', 'عرض', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1330, 'ar', 'view_all', 'عرض الكل', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1331, 'ar', 'all_classifies_packages', 'كل الحزم المصنفة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1332, 'ar', 'filter_by_payment_status', 'تصفية حسب حالة الدفع', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1333, 'ar', 'on_delivery', 'عند التسليم', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1334, 'ar', 'wallet', 'محفظة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1335, 'ar', 'invoice', 'فاتورة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1336, 'ar', 'order_id', 'رقم التعريف الخاص بالطلب', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1337, 'ar', 'bill_to', 'قدم فاتورة إلي', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1338, 'ar', 'total_tax', 'مجموع الضريبة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1339, 'ar', 'grand_total', 'المبلغ الإجمالي', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1340, 'ar', 'all_wholesale_product', 'جميع المنتجات بالجملة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1341, 'ar', 'filter_by_approval', 'تصفية حسب الموافقة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1342, 'ar', 'approved', 'وافق', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1343, 'ar', 'nonapproved', 'غير موافق', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1344, 'ar', 'type_name_or_email__enter', 'اكتب الاسم أو البريد الإلكتروني وأدخل', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1345, 'ar', 'verification_info', 'معلومات التحقق', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1346, 'ar', 'approval', 'موافقة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1347, 'ar', 'due_to_seller', 'مستحق للبائع', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1348, 'ar', 'log_in_as_this_seller', 'تسجيل الدخول باسم هذا البائع', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1349, 'ar', 'ban_this_seller', 'حظر هذا البائع', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1350, 'ar', 'do_you_really_want_to_ban_this_seller', 'هل تريد حقًا حظر هذا البائع؟', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1351, 'ar', 'do_you_really_want_to_unban_this_seller', 'هل تريد حقًا إلغاء حظر هذا البائع؟', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1352, 'ar', 'approved_sellers_updated_successfully', 'تم تحديث البائعين المعتمدين بنجاح', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1353, 'ar', 'seller_withdraw_request', 'البائع يسحب طلب', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1354, 'ar', 'date', 'تاريخ', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1355, 'ar', 'seller', 'البائع', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1356, 'ar', 'total_amount_to_pay', 'المبلغ الإجمالي للدفع', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1357, 'ar', 'requested_amount', 'الكمية المطلوبة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1358, 'ar', 'message', 'رسالة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1359, 'ar', 'seller_commission_activatation', 'تفعيل عمولة البائع', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1360, 'ar', 'category_based_commission', 'عمولة على أساس الفئة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1361, 'ar', 'note', 'ملحوظة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1362, 'ar', 'of_seller_product_price_will_be_deducted_from_seller_earnings', 'من سعر منتج البائع سيتم خصمه من أرباح البائع', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1363, 'ar', 'if_category_based_commission_is_enbaled_set_seller_commission_percentage_0', 'إذا تم تفعيل العمولة القائمة على الفئة ، فقم بتعيين نسبة عمولة البائع 0.', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1364, 'ar', 'withdraw_seller_amount', 'سحب مبلغ البائع', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1365, 'ar', 'minimum_seller_amount_withdraw', 'سحب الحد الأدنى من مبلغ البائع', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1366, 'ar', 'select_label', 'حدد الملصق', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1367, 'ar', 'multiple_select_label', 'تكرار حدد الملصق', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1368, 'ar', 'radio_label', 'ملصق الراديو', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1369, 'ar', 'type', 'يكتب', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1370, 'ar', 'sendmail', 'ارسل بريد', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1371, 'ar', 'smtp', 'SMTP', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1372, 'ar', 'mailgun', 'Mailgun', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1373, 'ar', 'mail_host', 'مضيف البريد', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1374, 'ar', 'mail_port', 'منفذ البريد', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1375, 'ar', 'mail_username', 'اسم المستخدم البريد', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1376, 'ar', 'mail_password', 'كلمة المرور البريدية', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1377, 'ar', 'mail_encryption', 'تشفير البريد', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1378, 'ar', 'mail_from_address', 'البريد من العنوان', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1379, 'ar', 'mail_from_name', 'البريد من الاسم', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1380, 'ar', 'mailgun_domain', 'نطاق mailgun', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1381, 'ar', 'mailgun_secret', 'سر بريد mailgun', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1382, 'ar', 'save_configuration', 'حفظ التكوين', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1383, 'ar', 'test_smtp_configuration', 'اختبار تكوين SMTP', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1384, 'ar', 'enter_your_email_address', 'أدخل عنوان بريدك الالكتروني', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1385, 'ar', 'send_test_email', 'إرسال بريد إلكتروني تجريبي', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1386, 'ar', 'instruction', 'تعليمات', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1387, 'ar', 'please_be_carefull_when_you_are_configuring_smtp_for_incorrect_configuration_you_will_get_error_at_the_time_of_order_place_new_registration_sending_newsletter', 'يرجى توخي الحذر عند تكوين SMTP. للتكوين غير الصحيح ، ستحصل على خطأ في وقت تقديم الطلب ، والتسجيل الجديد ، وإرسال النشرة الإخبارية.', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1388, 'ar', 'for_nonssl', 'لغير SSL', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1389, 'ar', 'select_sendmail_for_mail_driver_if_you_face_any_issue_after_configuring_smtp_as_mail_driver_', 'حدد إرسال بريد لبرنامج Mail Driver إذا واجهت أي مشكلة بعد تكوين SMTP كبرنامج تشغيل البريد', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1390, 'ar', 'set_mail_host_according_to_your_server_mail_client_manual_settings', 'قم بتعيين مضيف البريد وفقًا للإعدادات اليدوية لعميل البريد الخاص بالخادم', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1391, 'ar', 'set_mail_port_as_587', 'قم بتعيين منفذ البريد على 587', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1392, 'ar', 'set_mail_encryption_as_ssl_if_you_face_issue_with_tls', 'عيّن تشفير البريد كـ ssl إذا كنت تواجه مشكلة في tls', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1393, 'ar', 'for_ssl', 'لـ SSL', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1394, 'ar', 'select_sendmail_for_mail_driver_if_you_face_any_issue_after_configuring_smtp_as_mail_driver', 'حدد إرسال بريد لبرنامج Mail Driver إذا واجهت أي مشكلة بعد تكوين SMTP كبرنامج تشغيل البريد', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1395, 'ar', 'set_mail_port_as_465', 'قم بتعيين منفذ البريد كـ 465', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1396, 'ar', 'set_mail_encryption_as_ssl', 'قم بتعيين تشفير البريد كـ ssl', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1397, 'ar', 'inhouse_product_sale_report', 'تقرير بيع المنتج الداخلي', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1398, 'ar', 'sort_by_category', 'فرز حسب الفئة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1399, 'ar', 'product_wise_stock_report', 'تقرير مخزون المنتج ', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1400, 'ar', 'stock', 'مخزون', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1401, 'ar', 'register_your_shop', 'سجل متجرك', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1402, 'ar', 'personal_info', 'معلومات شخصية', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1403, 'ar', 'your_name', 'اسمك', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1404, 'ar', 'your_email', 'بريدك الالكتروني', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1405, 'ar', 'your_password', 'كلمة السر خاصتك', '2023-12-06 14:55:42', '2023-12-06 14:55:42');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1406, 'ar', 'repeat_password', 'اعد كلمة السر', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1407, 'ar', 'basic_info', 'معلومات أساسية', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1408, 'ar', 'shop_name', 'اسم المحل', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1409, 'ar', 'blog', 'تدوين', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1410, 'ar', 'comparison', 'مقارنة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1411, 'ar', 'reset_compare_list', 'إعادة تعيين قائمة المقارنة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1412, 'ar', 'your_comparison_list_is_empty', 'قائمة المقارنة الخاصة بك فارغة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1413, 'ar', 'click_to_show_phone_number', 'انقر لإظهار رقم الجوال', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1414, 'ar', 'other_ads_of', 'إعلانات أخرى من', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1415, 'ar', 'in_house_product', 'في المنزل المنتج', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1416, 'ar', 'english', 'إنجليزي', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1417, 'ar', 'bangla', 'البنغالية', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1418, 'ar', 'arabic', 'العربية', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1419, 'ar', 'successfully_logged_in', 'تم تسجيل الدخول بنجاح', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1420, 'ar', 'product_is_not_present_in_wishlist', 'المنتج غير موجود في قائمة الرغبات', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1421, 'ar', 'for', 'من اجل', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1422, 'ar', 'product_added_to_cart_successfully', 'تم إضافة المنتج إلى عربة التسوق بنجاح', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1423, 'ar', 'cart_updated', 'تم تحديث عربة التسوق', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1424, 'ar', 'shipping_information_has_been_added_successfully', 'تمت إضافة معلومات الشحن بنجاح', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1425, 'ar', 'address_is_saved', 'تم حفظ العنوان', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1426, 'ar', 'profile_information_updated', 'تم تحديث معلومات الملف الشخصي', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1427, 'ar', 'user_phone_number_not_found', 'رقم الجوال المستخدم غير موجود', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1428, 'ar', 'user_email_not_found', 'البريد الإلكتروني للمستخدم غير موجود', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1429, 'ar', 'user_phone_number_found', 'تم العثور على اسم الجوال المستخدم', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1430, 'ar', 'user_email_found', 'تم العثور على البريد الإلكتروني للمستخدم', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1431, 'ar', 'frequently_bought_together', 'كثيرا ما يشتري سويا', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1432, 'ar', 'discount_price', 'سعر الخصم', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1433, 'ar', 'buy_on_amazon', 'شراء من أمازون', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1434, 'ar', 'affiliate_informations', 'المعلومات التابعة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1435, 'ar', 'user_info', 'معلومات المستخدم', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1436, 'ar', 'check_your_order_status', 'تحقق من حالة طلبك', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1437, 'ar', 'you_have_subscribed_successfully', 'لقد قمت بالاشتراك بنجاح', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1438, 'ar', 'in_stock', 'متوافرة الآن', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1439, 'ar', 'any_question_about_this_product', 'أي سؤال عن هذا المنتج؟', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1440, 'ar', 'enter_your_email_address_to_recover_your_password', 'أدخل عنوان بريدك الإلكتروني لاستعادة كلمة المرور الخاصة بك.', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1441, 'ar', 'send_password_reset_link', 'إرسال رابط إعادة تعيين كلمة السر', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1442, 'ar', 'back_to_login', 'العودة لتسجيل الدخول', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1443, 'ar', 'has_not_been_verified_yet', 'لم يتم التحقق منها بعد', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1444, 'ar', 'please_click_the_button_below_to_verify_your_email_address', 'الرجاء النقر فوق الزر أدناه للتحقق من عنوان بريدك الإلكتروني', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1445, 'ar', 'email_verification__', 'تأكيد بواسطة البريد الالكتروني', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1446, 'ar', 'click_here', 'انقر هنا', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1447, 'ar', 'registration_failed_please_try_again_later', 'فشل في التسجيل. الرجاء معاودة المحاولة في وقت لاحق', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1448, 'ar', 'all_coupons', 'كل القسائم', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1449, 'ar', 'seller_payments', 'مدفوعات البائع', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1450, 'ar', 'payment_details', 'تفاصيل الدفع', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1451, 'ar', 'commission_history_report', 'تقرير تاريخ العمولة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1452, 'ar', 'choose_seller', 'اختر البائع', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1453, 'ar', 'daterange', 'نطاق الموعد', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1454, 'ar', 'admin_commission', 'عمولة المشرف', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1455, 'ar', 'seller_earning', 'ربح البائع', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1456, 'ar', 'server_information', 'معلومات الخادم', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1457, 'ar', 'current_version', 'الإصدار الحالي', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1458, 'ar', 'required_version', 'الإصدار المطلوب', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1459, 'ar', 'phpini_config', '', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1460, 'ar', 'config_name', 'اسم التكوين', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1461, 'ar', 'current', 'الحالي', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1462, 'ar', 'recommended', 'موصى به', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1463, 'ar', 'extensions_information', 'معلومات الملحقات', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1464, 'ar', 'extension_name', 'اسم الملحق', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1465, 'ar', 'filesystem_permissions', 'أذونات نظام الملفات', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1466, 'ar', 'file_or_folder', 'ملف او مجلد', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1467, 'ar', 'registration_successful', 'تم التسجيل بنجاح', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1468, 'ar', 'product_is_successfully_removed_from_your_wishlist', 'تمت إزالة المنتج بنجاح من قائمة الرغبات الخاصة بك', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1469, 'ar', 'product_added_to_wishlist', 'تمت إضافة المنتج إلى قائمة الرغبات', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1470, 'ar', 'product_present_in_wishlist', 'المنتج موجود في قائمة الرغبات', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1471, 'ar', 'please_enter_the_code885625', 'الرجاء إدخال الرمز: 885625', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1472, 'ar', 'registration_successful_please_verify_and_log_in_to_your_account', 'تم التسجيل بنجاح. يرجى التحقق وتسجيل الدخول إلى حسابك.', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1473, 'ar', 'please_verify_your_account', 'يرجى التحقق من حسابك', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1474, 'ar', 'code_does_not_match_you_can_request_for_resending_the_code', 'الرمز غير متطابق ، يمكنك طلب إعادة إرسال الرمز', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1475, 'ar', 'all_attributes', 'كل السمات', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1476, 'ar', 'verify', 'تأكيد البريد اللأكتروني ', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1477, 'ar', 'attribute_values', 'قسم السمة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1478, 'ar', 'add_new_attribute', 'إضافة سمة جديدة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1479, 'ar', 'pickup_point_orders', 'اختر ترتيب النقاط', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1480, 'ar', 'all_uploaded_files', 'جميع الملفات التي تم تحميلها', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1481, 'ar', 'upload_new_file', 'تحميل ملف جديد', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1482, 'ar', 'all_files', 'جميع الملفات', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1483, 'ar', 'search', 'بحث', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1484, 'ar', 'details_info', 'تفاصيل المعلومات', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1485, 'ar', 'copy_link', 'انسخ الرابط', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1486, 'ar', 'are_you_sure_to_delete_this_file', 'هل أنت متأكد من حذف هذا الملف؟', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1487, 'ar', 'file_info', 'معلومات الملف', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1488, 'ar', 'twilio_credential', 'اعتماد Twilio', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1489, 'ar', 'twilio_sid', '', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1490, 'ar', 'twilio_auth_token', '', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1491, 'ar', 'valid_twilio_number', 'رقم twiLIo صالح', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1492, 'ar', 'nexmo_credential', 'اعتماد Nexmo', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1493, 'ar', 'nexmo_key', 'مفتاح NIEXMO', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1494, 'ar', 'nexmo_secret', 'سر NIEXMO', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1495, 'ar', 'ssl_wireless_credential', 'اعتماد لاسلكي SSL', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1496, 'ar', 'ssl_sms_api_token', '', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1497, 'ar', 'ssl_sms_sid', '', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1498, 'ar', 'ssl_sms_url', '', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1499, 'ar', 'fast2sms_credential', 'اعتماد Fast2SMS', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1500, 'ar', 'auth_key', 'مفتاح المصادقة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1501, 'ar', 'entity_id', 'هوية الكيان', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1502, 'ar', 'route', 'مسار', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1503, 'ar', 'dlt_manual', 'دليل DLT', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1504, 'ar', 'promotional_use', 'استخدام ترويجي', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1505, 'ar', 'transactional_use', 'استخدام المعاملات', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1506, 'ar', 'sender_id', 'هوية المرسل', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1507, 'ar', 'mimo_credential', 'اعتماد MIMO', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1508, 'ar', 'mimo_username', 'اسم مستخدم MIMO', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1509, 'ar', 'mimo_password', 'كلمة مرور MIMO', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1510, 'ar', 'mimo_sender_id', 'هوية مرسل MIMO', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1511, 'ar', 'mimsms_credential', 'اعتماد MIMSMS', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1512, 'ar', 'mim_api_key', 'مفتاح MIM_API', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1513, 'ar', 'mim_sender_id', 'هوية مرسل MIM', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1514, 'ar', 'msegat_credential', '', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1515, 'ar', 'msegat_api_key', '', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1516, 'ar', 'msegat_username', '', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1517, 'ar', 'msegat_user_sender', '', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1518, 'ar', 'filter_by_rating', 'تصفية حسب التصنيف', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1519, 'ar', 'product_owner', 'مالك المنتج', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1520, 'ar', 'comment', 'تعليق', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1521, 'ar', 'published_reviews_updated_successfully', 'تم تحديث المراجعات المنشورة بنجاح', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1522, 'ar', 'logo', 'شعار', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1523, 'ar', 'add_new_brand', 'إضافة علامة تجارية جديدة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1524, 'ar', '120x80', '', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1525, 'ar', 'product_wish_report', 'تقرير رغبة المنتج', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1526, 'ar', 'number_of_wish', 'رقم قائمة الرغبات', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1527, 'ar', 'attribute_information', 'معلومات السمة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1528, 'ar', 'all_flash_deals', 'جميع الصفقات السريعة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1529, 'ar', 'create_new_flash_deal', 'إنشاء صفقة جديدة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1530, 'ar', 'title', 'لقب', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1531, 'ar', 'start_date', 'تاريخ البدء', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1532, 'ar', 'end_date', 'تاريخ الانتهاء', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1533, 'ar', 'page_link', 'رابط الصفحة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1534, 'ar', 'wholesale_product_for_seller', 'منتج بالجملة للبائع', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1535, 'ar', 'mercadopago_payment_activation', '', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1536, 'ar', 'payku_activation', 'تفعيل payku', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1537, 'ar', 'all_taxes', 'جميع الضرائب', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1538, 'ar', 'add_new_tax', 'أضف ضريبة جديدة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1539, 'ar', 'tax_type', 'نوع الضريبة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1540, 'ar', 'tax_name', 'اسم الضريبة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1541, 'ar', 'close', 'أغلق', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1542, 'ar', 'tax_status_updated_successfully', 'تم تحديث الحالة الضريبية بنجاح', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1543, 'ar', 'user_already_exists', 'المستخدم موجود بالفعل', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1544, 'ar', 'please_enter_the_code162377', 'الرجاء إدخال الرمز: 162377', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1545, 'ar', 'please_enter_the_code256761', 'الرجاء إدخال الرمز: 256761', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1546, 'ar', 'number_of_daily_orders', 'عدد الطلبات اليومية', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1547, 'ar', 'user_not_found', 'المستخدم ليس موجود', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1548, 'ar', 'unauthorized', 'غير مرخص به', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1549, 'ar', 'for_seller', 'للبائع', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1550, 'ar', 'for_customer', 'من أجل العميل', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1551, 'ar', 'offer_daily', 'تقدم يوميا', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1552, 'ar', 'days_and_time_for_dailvary', 'أيام ووقت التسليم', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1553, 'ar', 'select_time_for_delivery', 'حدد وقت التسليم', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1554, 'ar', 'qty_', 'الكمية', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1555, 'ar', 'qty_for_offer', 'الكمية المطلوبة للعرض', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1556, 'ar', 'number_of_daily_orders_for_sellers_', 'عدد الطلبات اليومية للبائعين', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1557, 'ar', 'number_of_daily_orders_for_sellers', 'عدد الطلبات اليومية للبائعين', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1558, 'ar', 'all_colors', 'جميع الالوان', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1559, 'ar', 'type_color_name__enter', 'اكتب اسم اللون وأدخل', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1560, 'ar', 'add_new_color', 'أضف لون جديد', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1561, 'ar', 'color_code', 'رمز اللون', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1562, 'ar', 'color_filter_activation', 'تفعيل فلتر اللون', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1563, 'ar', 'attribute_has_been_inserted_successfully', 'تم إدخال السمة بنجاح', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1564, 'ar', 'image_updated', 'تم تحديث الصورة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1565, 'ar', 'product_added_to_comparison_list', 'تمت إضافة المنتج إلى قائمة المقارنة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1566, 'ar', 'product_present_in_comparison_list', 'المنتج موجود في قائمة المقارنة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1567, 'ar', 'product_is_not_in_your_comparison_list', 'المنتج ليس في قائمة المقارنة الخاصة بك', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1568, 'ar', 'product_is_removed_from_comparison_list', 'تمت إزالة المنتج من قائمة المقارنة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1569, 'ar', 'product_is_successfully_added_to_your_wishlist', 'تم إضافة المنتج بنجاح إلى قائمة الرغبات الخاصة بك', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1570, 'ar', 'product_is_not_in_wishlist', 'المنتج ليس في قائمة الرغبات', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1571, 'ar', 'product_is_removed_from_wishlist', 'تمت إزالة المنتج من قائمة الرغبات', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1572, 'ar', 'unit_added', 'تمت إضافة الوحدة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1573, 'ar', 'all_subscribers', 'كل المشتركين', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1574, 'ar', 'attribute_detail', 'تفاصيل السمة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1575, 'ar', 'add_new_attribute_value', 'إضافة قيمة سمة جديدة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1576, 'ar', 'attribute_name', 'اسم السمة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1577, 'ar', 'attribute_value', 'قيمة السمة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1578, 'ar', 'attribute_value_has_been_inserted_successfully', 'تم إدخال قيمة السمة بنجاح', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1579, 'ar', 'product_is_successfully_removed_from_your_cart', 'تمت إزالة المنتج بنجاح من عربة التسوق الخاصة بك', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1580, 'ar', 'category_information', 'معلومات الفئة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1581, 'ar', 'no_parent', 'لا يوجد أصل', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1582, 'ar', 'ordering_number', 'رقم الطلب', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1583, 'ar', 'higher_number_has_high_priority', 'العدد الأكبر له أولوية عالية', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1584, 'ar', 'physical', 'بدني', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1585, 'ar', 'digital', 'رقمي', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1586, 'ar', '200x200', '200x200', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1587, 'ar', '32x32', '32x32', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1588, 'ar', 'filtering_attributes', 'سمات التصفية', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1589, 'ar', 'category_has_been_updated_successfully', 'تم تحديث الفئة بنجاح', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1590, 'ar', 'number_of_daily_orders_for_customer_', 'عدد الطلبات اليومية للعملاء', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1591, 'ar', 'number_of_daily_orders_for_customer', 'عدد الطلبات اليومية للعملاء', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1592, 'ar', 'qty_for_customer', 'الكمية للعميل', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1593, 'ar', 'qty_offer_for_customer_', 'عرض الكمية للعملاء', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1594, 'ar', 'a_new_order_has_been_placed', 'تم وضع طلب جديد', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1595, 'ar', 'verification_code_is_sent_again', 'تم إرسال رمز التحقق مرة أخرى', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1596, 'ar', 'system_default_currency', 'عملة النظام الافتراضية', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1597, 'ar', 'set_currency_formats', 'تعيين تنسيقات العملات', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1598, 'ar', 'symbol_format', 'تنسيق الرمز', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1599, 'ar', 'decimal_separator', 'الفاصل العشري', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1600, 'ar', 'no_of_decimals', 'عدد الكسور العشرية', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1601, 'ar', 'all_currencies', 'جميع العملات', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1602, 'ar', 'add_new_currency', 'أضف عملة جديدة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1603, 'ar', 'currency_name', 'اسم العملة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1604, 'ar', 'currency_symbol', 'رمز العملة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1605, 'ar', 'currency_code', 'رمز العملة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1606, 'ar', 'exchange_rate', 'معدل الصرف', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1607, 'ar', 'currency_status_updated_successfully', 'تم تحديث حالة العملة بنجاح', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1608, 'ar', 'symbol', 'رمز', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1609, 'ar', 'update_email', 'تعديل البريد الإلكتروني ', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1610, 'ar', 'currency_updated_successfully', 'تم تحديث العملة بنجاح', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1611, 'ar', 'update_currency', 'تحديث العملة', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1612, 'ar', 'import_app_translations', 'استيراد ترجمات التطبيق', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1613, 'ar', 'english_trasnlation_file', 'ملف الترجمة الإنجليزية', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1614, 'ar', 'choose_app_enarb_file', 'اختر ملف app_en.arb', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1615, 'ar', 'import', 'يستورد', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(1616, 'ar', 'flutter_app_lang_code', '', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1617, 'ar', 'app_translation', 'ترجمة التطبيق', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1618, 'ar', 'arb_file_export', 'تصدير ملف عربي', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1619, 'ar', 'offers_daily_quantity_has_been_updated_successfully', 'تم تحديث الكمية اليومية للعروض بنجاح', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1620, 'ar', 'minimum_order_amount_settings', 'الحد الأدنى من إعدادات مبلغ الطلب', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1621, 'ar', 'minimum_order_amount_check', 'التحقق من الحد الأدنى لمبلغ الطلب', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1622, 'ar', 'set_minimum_order_amount', 'تعيين الحد الأدنى لمبلغ الطلب', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1623, 'ar', 'minimum_order_amount', 'الحد الأدنى للطلب', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1624, 'ar', 'free_shipping_for_specific_amount_order_settings', 'شحن مجاني لإعدادات طلب الكمية المحددة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1625, 'ar', 'set_specific_order_amount', 'قم بتعيين مبلغ الطلب المحدد', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1626, 'ar', 'set_specific_amount_order', 'تعيين طلب كمية محددة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1627, 'ar', 'select_shipping_method', 'إختر طريقة الشحن', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1628, 'ar', 'shipping_method', ' طريقة الشحن', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1629, 'ar', 'product_wise_shipping_cost', 'تكلفة الشحن لكل منتج', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1630, 'ar', 'flat_rate_shipping_cost', 'تكلفة الشحن بسعر ثابت', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1631, 'ar', 'seller_wise_flat_shipping_cost', '', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1632, 'ar', 'area_wise_flat_shipping_cost', 'تكلفة الشحن بالنسبة للمنطقة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1633, 'ar', 'product_wise_shipping_cost_calculation_shipping_cost_is_calculate_by_addition_of_each_product_shipping_cost', 'حساب تكلفة الشحن ة للمنتج: يتم حساب تكلفة الشحن عن طريق إضافة تكلفة شحن كل منتج', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1634, 'ar', 'flat_rate_shipping_cost_calculation_how_many_products_a_customer_purchase_doesnt_matter_shipping_cost_is_fixed', 'حساب تكلفة الشحن بالسعر الثابت: لا يهم كم عدد المنتجات التي يشتريها العميل. تكلفة الشحن ثابتة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1635, 'ar', 'seller_wise_flat_shipping_cost_calculation_fixed_rate_for_each_seller_if_customers_purchase_2_product_from_two_seller_shipping_cost_is_calculated_by_addition_of_each_seller_flat_shipping_cost', 'حساب البائع لتكلفة الشحن الثابتة: سعر ثابت لكل بائع. إذا قام العملاء بشراء منتجين من اثنين من البائعين ، يتم حساب تكلفة الشحن عن طريق إضافة تكلفة الشحن الثابتة لكل بائع', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1636, 'ar', 'area_wise_flat_shipping_cost_calculation_fixed_rate_for_each_area_if_customers_purchase_multiple_products_from_one_seller_shipping_cost_is_calculated_by_the_customer_shipping_area_to_configure_area_wise_shipping_cost_go_to_', 'حساب تكلفة الشحن الثابتة حسب المنطقة: معدل ثابت لكل منطقة. إذا قام العملاء بشراء منتجات متعددة من بائع واحد ، يتم حساب تكلفة الشحن من خلال منطقة شحن العميل. لتكوين تكلفة الشحن حسب المنطقة ، انتقل إلى', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1637, 'ar', 'flat_rate_cost', 'تكلفة السعر الثابت', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1638, 'ar', '1_flat_rate_shipping_cost_is_applicable_if_flat_rate_shipping_is_enabled', 'يتم تطبيق تكلفة الشحن ذات السعر الثابت إذا تم تمكين الشحن بسعر موحد', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1639, 'ar', 'shipping_cost_for_admin_products', 'تكلفة الشحن للمنتجات الإدارية', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1640, 'ar', '1_shipping_cost_for_admin_is_applicable_if_seller_wise_shipping_cost_is_enabled', 'تسري تكلفة الشحن للمشرف إذا تم تمكين تكلفة الشحن الخاصة بالبائع', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1641, 'ar', 'all_cities', 'جميع المدن', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1642, 'ar', 'cities', 'المدن', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1643, 'ar', 'type_city_name__enter', 'اكتب اسم المدينة وأدخل', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1644, 'ar', 'select_state', 'اختر ولايه', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1645, 'ar', 'max_orders', 'الطلبات القصوى', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1646, 'ar', 'area_wise_shipping_cost', 'قيمة الشحن للمدينة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1647, 'ar', 'add_new_city', 'اضافة مدينة جديدة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1648, 'ar', 'cost', 'التكلفة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1649, 'ar', 'city_information', 'معلومات المدينة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1650, 'ar', 'city_has_been_updated_successfully', 'تم تحديث المدينة بنجاح', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1651, 'ar', 'shipping_zones', 'مناطق الشحن', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1652, 'ar', 'all_notifications', 'كل الإخطارات', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1653, 'ar', '_has_been_placed', 'تم وضعه', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1654, 'ar', 'unknown', 'غير معروف', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1655, 'ar', 'support_desk', 'مكتب الدعم', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1656, 'ar', 'type_ticket_code__enter', 'اكتب رمز التذكرة وأدخل', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1657, 'ar', 'ticket_id', 'معرف التذكرة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1658, 'ar', 'sending_date', 'تاريخ إرسال', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1659, 'ar', 'subject', 'موضوع', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1660, 'ar', 'user', 'المستخدم', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1661, 'ar', 'last_reply', 'الرد الأخير', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1662, 'ar', 'view_details', 'عرض التفاصيل', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1663, 'ar', 'add_new_staffs', 'إضافة طاقم عمل جديد', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1664, 'ar', 'role', 'دور', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1665, 'ar', 'staff_information', 'معلومات الموظفين', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1666, 'ar', 'staff_has_been_inserted_successfully', 'تم إدراج الموظفين بنجاح', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1667, 'ar', 'staff_has_been_updated_successfully', 'تم تحديث الموظفين بنجاح', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1668, 'ar', 'all_role', 'كل دور', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1669, 'ar', 'add_new_role', 'إضافة دور جديد', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1670, 'ar', 'roles', 'الأدوار', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1671, 'ar', 'role_information', 'معلومات الدور', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1672, 'ar', 'permissions', 'أذونات', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1673, 'ar', 'role_has_been_updated_successfully', 'تم تحديث الدور بنجاح', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1674, 'ar', 'seller_based_selling_report', 'تقرير البيع القائم على البائع', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1675, 'ar', 'sort_by_verificarion_status', 'فرز حسب الحالة التحقق', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1676, 'ar', 'non_approved', 'غير مقبول', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1677, 'ar', 'seller_name', 'عدد بيع المنتج', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1678, 'ar', 'number_of_product_sale', 'عدد بيع المنتج', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1679, 'ar', 'order_amount', 'كمية الطلب', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1680, 'ar', 'all_pickup_points', 'جميع نقاط الاستلام', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1681, 'ar', 'add_new_pickup_point', 'أضف نقطة التقاط جديدة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1682, 'ar', 'manager', 'مدير', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1683, 'ar', 'location', 'موقع', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1684, 'ar', 'pickup_station_contact', 'الاتصال بمحطة الالتقاط', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1685, 'ar', 'open', 'افتح', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1686, 'ar', 'paypal_credential', 'اعتماد Paypal', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1687, 'ar', 'paypal_client_id', 'معرف عميل Paypal', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1688, 'ar', 'paypal_client_secret', 'سر عميل Paypal', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1689, 'ar', 'paypal_sandbox_mode', 'وضع حماية Paypal', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1690, 'ar', 'stripe_credential', 'اعتماد Stripe', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1691, 'ar', 'stripe_key', 'مفتاح Stripe', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1692, 'ar', 'stripe_secret', 'سر Stripe', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1693, 'ar', 'mercadopago_credential', 'اعتماد Mercadopago', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1694, 'ar', 'mercadopago_key', 'مفتاح Mercadopago', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1695, 'ar', 'mercadopago_access', 'الوصول إلى Mercadopago', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1696, 'ar', 'mercadopago_currency', 'عملة MERCADOPAGO', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1697, 'ar', 'bkash_credential', 'اعتماد Bkash', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1698, 'ar', 'bkash_checkout_app_key', 'مفتاح تطبيق BKASH CHECKOUT', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1699, 'ar', 'bkash_checkout_app_secret', 'سر تطبيق BCASH CHECKOUT', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1700, 'ar', 'bkash_checkout_user_name', 'اسم مستخدم BKASH CHECKOUT', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1701, 'ar', 'bkash_checkout_password', 'كلمة مرور BKASH CHECKOUT', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1702, 'ar', 'bkash_sandbox_mode', 'وضع الحماية Bkash', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1703, 'ar', 'nagad_credential', 'اعتماد NAGAD', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1704, 'ar', 'nagad_mode', 'وضع NAGAD', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1705, 'ar', 'nagad_merchant_id', 'معرف تاجرNAGAD', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1706, 'ar', 'nagad_merchant_number', 'رقم تاجرNAGAD', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1707, 'ar', 'nagad_pg_public_key', 'مفتاح NAGAD العام', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1708, 'ar', 'nagad_merchant_private_key', 'مفتاح NAGAD خاص للتاجر', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1709, 'ar', 'sslcommerz_credential', 'اعتماد Sslcommerz', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1710, 'ar', 'sslcz_store_id', 'معرف متجر sslcz', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1711, 'ar', 'sslcz_store_password', 'كلمة المرور متجر Sslcz', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1712, 'ar', 'sslcommerz_sandbox_mode', 'وضع الحماية Sslcommerz', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1713, 'ar', 'aamarpay_credential', 'اعتماد Aamarpay', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1714, 'ar', 'aamarpay_store_id', 'معرف متجر Aamarpay', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1715, 'ar', 'aamarpay_signature_key', 'مفتاح التوقيع Aamarpay', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1716, 'ar', 'aamarpay_sandbox_mode', 'وضع الحماية Aamarpay', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1717, 'ar', 'iyzico_credential', 'اعتماد ايزيكو', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1718, 'ar', 'iyzico_api_key', 'مفتاح IYZICO_API', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1719, 'ar', 'iyzico_secret_key', 'مفتاح IYZICO السري', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1720, 'ar', 'iyzico_sandbox_mode', 'وضع الحماية IYZICO', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1721, 'ar', 'instamojo_credential', 'اعتماد Instamojo', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1722, 'ar', 'api_key', 'مفتاح API', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1723, 'ar', 'im_api_key', 'مفتاح IM API', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1724, 'ar', 'auth_token', 'رمز AUTH', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1725, 'ar', 'im_auth_token', 'رمز IM AUTH', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1726, 'ar', 'instamojo_sandbox_mode', 'وضع الحماية Instamojo', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1727, 'ar', 'paystack_credential', 'الاعتماد المكدس للدفع', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1728, 'ar', 'public_key', 'المفتاح العمومي', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1729, 'ar', 'secret_key', 'مفتاح سري', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1730, 'ar', 'merchant_email', 'البريد الإلكتروني للتاجر', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1731, 'ar', 'paystack_currency_code', 'رمز عملة الدفع', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1732, 'ar', 'payhere_credential', 'ادفع هنا الاعتماد', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1733, 'ar', 'payhere_merchant_id', 'ادفع هنا معرّف التاجر', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1734, 'ar', 'payhere_secret', 'ادفع هنا سرًا', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1735, 'ar', 'payhere_currency', 'عملة الدفع', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1736, 'ar', 'payhere_sandbox_mode', 'وضع الحماية Payhere', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1737, 'ar', 'ngenius_credential', '', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1738, 'ar', 'ngenius_outlet_id', 'معرف منفذ NGENIUS', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1739, 'ar', 'ngenius_api_key', 'مفتاح NGENIUS API', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1740, 'ar', 'ngenius_currency', 'العملة الأجنبية', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1741, 'ar', 'voguepay_credential', 'اعتماد VoguePay', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1742, 'ar', 'merchant_id', 'معرف التاجر', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1743, 'ar', 'sandbox_mode', 'وضع الحماية', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1744, 'ar', 'razorpay_credential', 'اعتماد RazorPay', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1745, 'ar', 'razor_key', 'مفتاح RAZOR', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1746, 'ar', 'razor_secret', 'سر RAZOR', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1747, 'ar', 'authorize_net', '', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1748, 'ar', 'merchant_login_id', 'معرف تسجيل دخول التاجر', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1749, 'ar', 'merchant_transaction_key', 'مفتاح معاملة التاجر', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1750, 'ar', 'authorize_net_sandbox_mode', 'تخويل وضع وضع الحماية الصافي', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1751, 'ar', 'payku', '', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1752, 'ar', 'payku_base_url', 'عنوان url الأساسي لـ PAYKU', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1753, 'ar', 'payku_public_token', 'رمز PAYKU العام', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1754, 'ar', 'payku_private_token', 'رمز PAYKU الخاص', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1755, 'ar', 's3_file_system_credentials', 'بيانات اعتماد نظام ملف S3', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1756, 'ar', 'aws_access_key_id', 'معرف مفتاح الوصول إلى AWS', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1757, 'ar', 'aws_secret_access_key', 'مفتاح الوصول السري لـ AWS', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1758, 'ar', 'aws_default_region', 'منطقة AWS الافتراضية', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1759, 'ar', 'aws_bucket', 'حاوية AWS', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1760, 'ar', 'aws_url', 'عنوان url الخاص بـ AWS', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1761, 'ar', 's3_file_system_activation', 'تفعيل نظام ملفات S3', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1762, 'ar', 'cache__session_driver', 'ذاكرة التخزين المؤقت وسائق الجلسة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1763, 'ar', 'cache_driver', 'ذاكرة التخزين المؤقت', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1764, 'ar', 'redis', '', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1765, 'ar', 'session_driver', 'سائق الجلسة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1766, 'ar', 'redis_configuration_if_you_use_redis_as_any_of_the_drivers', 'تكوين Redis (إذا كنت تستخدم redis كأي من برامج التشغيل)', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1767, 'ar', 'redis_host', 'مضيف REDIS', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1768, 'ar', 'redis_password', 'كلمة مرور REDIS', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1769, 'ar', 'redis_port', 'ميناء REDIS', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1770, 'ar', 'google_login_credential', 'بيانات اعتماد تسجيل الدخول إلى جوجل', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1771, 'ar', 'client_id', 'معرف العميل', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1772, 'ar', 'google_client_id', 'معرّف عميل جوجل', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1773, 'ar', 'client_secret', 'سر العميل', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1774, 'ar', 'google_client_secret', 'سر عميل جوجل', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1775, 'ar', 'facebook_login_credential', 'بيانات اعتماد تسجيل الدخول إلى فيسبوك', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1776, 'ar', 'app_id', 'معرف التطبيق', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1777, 'ar', 'facebook_client_id', 'معرف عميل فيسبوك', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1778, 'ar', 'app_secret', 'سر التطبيق', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1779, 'ar', 'facebook_client_secret', 'سر عميل فيسبوك', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1780, 'ar', 'twitter_login_credential', 'بيانات اعتماد تسجيل الدخول إلى تويتر', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1781, 'ar', 'twitter_client_id', 'معرّف عميل تويتر', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1782, 'ar', 'twitter_client_secret', 'سر عميل تويتر', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1783, 'ar', 'cancelled', 'ألغيت', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1784, 'ar', 'has_been_confirmed', 'تم التاكيد', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1785, 'ar', 'has_been_cancelled', 'تم إلغاء', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1786, 'ar', 'hyperpay', 'دفع مبالغ فيه', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1787, 'ar', 'for_wholesale', 'للبيع بالجملة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1788, 'ar', 'cart_is_empty', 'السلة فارغة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1789, 'ar', 'wallet_transaction_report', 'تقرير معاملات المحفظة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1790, 'ar', 'wallet_transaction', 'معاملة المحفظة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1791, 'ar', 'choose_user', 'اختر المستخدم', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1792, 'ar', 'refferal_users', 'المستخدمون المحالون', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1793, 'ar', 'reffered_by', 'نسب من قبل', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1794, 'ar', 'zones', 'المناطق', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1795, 'ar', 'order_code', 'رقم الأوردر', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1796, 'ar', 'phone_number_verification', 'التحقق من رقم الجوال', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1797, 'ar', 'password_reset', 'إعادة تعيين كلمة المرور', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1798, 'ar', 'order_placement', 'ترتيب التنسيب', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1799, 'ar', 'delivery_status_change', 'تغيير حالة التسليم', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1800, 'ar', 'payment_status_change', 'تغيير حالة الدفع', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1801, 'ar', 'assign_delivery_boy', 'تعيين صبي التسليم', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1802, 'ar', 'sms_body', 'هيئة الرسائل القصيرة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1803, 'ar', 'template_id', 'معرف النموذج', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1804, 'ar', 'update_settings', 'إعدادات التحديث', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1805, 'ar', 'activation', 'التنشيط', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1806, 'ar', 'number_of_daily', 'عدد يومي', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1807, 'ar', 'inter_the_cumber_of_order_to_sales', 'بين عدد الطلبات على المبيعات', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1808, 'ar', 'inter_the_cumber_of_order_to_customer', 'بين عدد الطلبات للعملاء', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1809, 'ar', 'category_has_been_inserted_successfully', 'تم ادراج الفئة بنجاح', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1810, 'ar', 'add_new_coupon', 'أضف قسيمة جديدة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1811, 'ar', 'coupon_information', 'معلومات القسيمة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1812, 'ar', 'cart_base', 'قاعدة العربة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1813, 'ar', 'product_base', 'قاعدة المنتج', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1814, 'ar', 'send_bulk_sms', 'إرسال رسائل نصية مجمعة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1815, 'ar', 'mobile_users', 'مستخدمو الهاتف المحمول', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1816, 'ar', 'sms_content', 'محتوى الرسائل القصيرة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1817, 'ar', 'sender', 'مرسل', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1818, 'ar', 'receiver', 'المتلقي', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1819, 'ar', 'send_newsletter', 'إرسال النشرة الإخبارية', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1820, 'ar', 'emails', 'رسائل البريد الإلكتروني', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1821, 'ar', 'users', 'المستخدمون', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1822, 'ar', 'newsletter_subject', 'موضوع النشرة الإخبارية', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1823, 'ar', 'newsletter_content', 'محتوى النشرة الإخبارية', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1824, 'ar', 'select_zones', 'حدد المناطق', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1825, 'ar', 'select_zone', 'حدد المنطقة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1826, 'ar', 'please_enter_the_code3093', 'الرجاء إدخال الرمز: 3093', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1827, 'ar', 'please_enter_the_code6121', 'الرجاء إدخال الرمز: 6121', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1828, 'ar', 'please_enter_the_code5031', 'الرجاء إدخال الرمز: 5031', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1829, 'ar', 'please_enter_the_code8791', 'الرجاء إدخال الرمز: 8791', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1830, 'ar', 'please_enter_the_code5636', 'الرجاء إدخال الرمز: 5636', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1831, 'ar', 'please_enter_the_code7630', 'الرجاء إدخال الرمز: 7630', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1832, 'ar', 'please_enter_the_code9962', 'الرجاء إدخال الرمز: 9962', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1833, 'ar', 'please_enter_the_code6087', 'الرجاء إدخال الرمز: 6087', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1834, 'ar', 'please_enter_the_code7166', 'الرجاء إدخال الرمز: 7166', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1835, 'ar', 'please_enter_the_code7690', 'الرجاء إدخال الرمز: 7690', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1836, 'ar', 'please_enter_the_code6809', 'الرجاء إدخال الرمز: 6809', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1837, 'ar', 'please_enter_the_code4137', 'الرجاء إدخال الرمز: 4137', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1838, 'ar', 'please_enter_the_code5626', 'الرجاء إدخال الرمز: 5626', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1839, 'ar', 'please_enter_the_code5144', 'الرجاء إدخال الرمز: 5144', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1840, 'ar', 'please_enter_the_code6545', 'الرجاء إدخال الرمز: 6545', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1841, 'ar', 'please_enter_the_code9389', 'الرجاء إدخال الرمز: 9389', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1842, 'ar', 'please_enter_the_code5475', 'الرجاء إدخال الرمز: 5475', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1843, 'ar', 'please_enter_the_code6916', 'الرجاء إدخال الرمز: 6916', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1844, 'ar', 'please_enter_the_code6412', 'الرجاء إدخال الرمز: 6412', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1845, 'ar', 'please_enter_the_code9636', 'الرجاء إدخال الرمز: 9636', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1846, 'ar', 'please_enter_the_code5973', 'الرجاء إدخال الرمز: 5973', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1847, 'ar', 'please_enter_the_code6163', 'الرجاء إدخال الرمز: 6163', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1848, 'ar', 'please_enter_the_code9122', 'الرجاء إدخال الرمز: 9122', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1849, 'ar', 'please_enter_the_code2268', 'الرجاء إدخال الرمز: 2268', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1850, 'ar', 'please_enter_the_code2289', 'الرجاء إدخال الرمز: 2289', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1851, 'ar', 'please_enter_the_code7407', 'الرجاء إدخال الرمز: 7407', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1852, 'ar', 'please_enter_the_code7528', 'الرجاء إدخال الرمز: 7528', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1853, 'ar', 'please_enter_the_code8135', 'الرجاء إدخال الرمز: 8135', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1854, 'ar', 'please_enter_the_code1703', 'الرجاء إدخال الرمز: 1703', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1855, 'ar', 'please_enter_the_code7518', 'الرجاء إدخال الرمز: 7518', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1856, 'ar', 'please_enter_the_code7601', 'الرجاء إدخال الرمز: 7601', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1857, 'ar', 'please_enter_the_code3796', 'الرجاء إدخال الرمز: 3796', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1858, 'ar', 'please_enter_the_code2709', 'الرجاء إدخال الرمز: 2709', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1859, 'ar', 'please_enter_the_code7154', 'الرجاء إدخال الرمز: 7154', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1860, 'ar', 'please_enter_the_code7267', 'الرجاء إدخال الرمز: 7267', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1861, 'ar', 'please_enter_the_code6221', 'الرجاء إدخال الرمز: 6221', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1862, 'ar', 'countries', 'بلدان', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1863, 'ar', 'type_country_name', 'اكتب اسم الدولة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1864, 'ar', 'update_pickup_point_information', 'تحديث معلومات نقطة الالتقاط', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1865, 'ar', 'pickup_point_status', 'حالة نقطة الالتقاط', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1866, 'ar', 'pickup_point_manager', 'مدير نقطة الالتقاط', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1867, 'ar', 'edit_digital_product', 'تحرير المنتج الرقمي', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1868, 'ar', 'general', 'عام', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1869, 'ar', 'product_file', 'ملف المنتج', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1870, 'ar', 'images', 'الصور', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1871, 'ar', 'main_images', 'الصور الرئيسية', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1872, 'ar', 'meta_tags', 'العلامات الفوقية', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1873, 'ar', 'purchase_price', 'سعر الشراء', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1874, 'ar', 'please_enter_the_code2343', 'الرجاء إدخال الرمز: 2343', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1875, 'ar', 'please_enter_the_code5756', 'الرجاء إدخال الرمز: 5756', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1876, 'ar', 'please_enter_the_code5313', 'الرجاء إدخال الرمز: 5313', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1877, 'ar', 'please_enter_the_code8247', 'الرجاء إدخال الرمز: 8247', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1878, 'ar', 'please_enter_the_code9672', 'الرجاء إدخال الرمز: 9672', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1879, 'ar', 'please_enter_the_code5553', 'الرجاء إدخال الرمز: 5553', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1880, 'ar', 'please_enter_the_code8745', 'الرجاء إدخال الرمز: 8745', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1881, 'ar', 'please_enter_the_code6260', 'الرجاء إدخال الرمز: 6260', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1882, 'ar', 'please_enter_the_code9228', 'الرجاء إدخال الرمز: 9228', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1883, 'ar', 'please_enter_the_code1943', 'الرجاء إدخال الرمز: 1943', '2023-12-06 14:55:43', '2023-12-06 14:55:43');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1884, 'ar', 'facebook_chat_setting', 'إعداد دردشة الفيسبوك', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1885, 'ar', 'facebook_page_id', 'معرف صفحة الفيسبوك', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1886, 'ar', 'please_be_carefull_when_you_are_configuring_facebook_chat_for_incorrect_configuration_you_will_not_get_messenger_icon_on_your_userend_site', 'يرجى توخي الحذر عند تهيئة دردشة Facebook. للتهيئة غير الصحيحة ، لن تحصل على أيقونة messenger على موقع المستخدم الخاص بك.', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1887, 'ar', 'login_into_your_facebook_page', 'تسجيل الدخول إلى صفحة الفيسبوك الخاصة بك', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1888, 'ar', 'find_the_about_option_of_your_facebook_page', 'ابحث عن خيار حول في صفحتك على فيسبوك', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1889, 'ar', 'set_your_website_domain_name', 'قم بتعيين اسم مجال موقع الويب الخاص بك', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1890, 'ar', 'select_product', 'حدد المنتج', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1891, 'ar', 'language_information', 'معلومات اللغة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1892, 'ar', 'update_language_info', 'تحديث معلومات اللغة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1893, 'ar', 'links_for_iso_6391_codes', 'روابط لأكواد ISO 639-1', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1894, 'ar', 'put_iso_6391_code_for_your_language', 'ضع كود ISO 639-1 للغتك', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1895, 'ar', 'file_name', 'اسم الملف', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1896, 'ar', 'file_type', 'نوع الملف', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1897, 'ar', 'file_size', 'حجم الملف', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1898, 'ar', 'uploaded_at', 'تم الرفع في', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1899, 'ar', 'file_deleted_successfully', 'تم حذف الملف بنجاح', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1900, 'ar', 'error_in_update_product', 'خطأ في تحديث المنتج', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1901, 'ar', 'error_in_store_product', 'خطأ في منتج المتجر', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1902, 'ar', 'product_has_been_inserted_successfully', 'تم إدخال المنتج بنجاح', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1903, 'ar', 'default_language_can_not_be_inactive', 'لا يمكن أن تكون اللغة الافتراضية غير نشطة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1904, 'ar', 'default_value', 'القيمة الافتراضية', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1905, 'ar', 'translated_value', 'القيمة المترجمة', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1906, 'ar', 'minimum', 'الحد الأدنى', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1907, 'ar', 'items_should_be_ordered', 'يجب طلب العنصر (العناصر)', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1908, 'ar', 'no_item_is_available_for', 'لا يوجد عنصر متاح ل', '2023-12-06 14:55:43', '2023-12-06 14:55:43'),
(1909, 'ar', 'remove_this_from_cart', 'قم بإزالة هذا من العربة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1910, 'ar', 'customers_types', 'أنواع العملاء', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1911, 'ar', 'retail', 'بيع بالتجزئة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1912, 'ar', 'customer_type', 'نوع العميل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1913, 'ar', 'unit_price_per_zones', 'سعر الوحدة لكل منطقة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1914, 'ar', 'customer_cost', 'تكلفة العميل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1915, 'ar', 'seller_cost', 'تكلفة البائع', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1916, 'ar', 'oooo', 'oooo', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1917, 'ar', 'website_footer', 'ذيل موقع الويب', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1918, 'ar', 'footer_widget', 'القطعة التذييل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1919, 'ar', 'about_widget', 'حول القطعة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1920, 'ar', 'footer_logo', 'تذييل الشعار', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1921, 'ar', 'about_description', 'حول الوصف', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1922, 'ar', 'play_store_link', 'رابط البلاي ستور', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1923, 'ar', 'app_store_link', 'رابط متجر التطبيقات', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1924, 'ar', 'contact_info_widget', 'أداة معلومات الاتصال', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1925, 'ar', 'contact_address', 'عنوان الإتصال', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1926, 'ar', 'contact_phone', 'رقم الجوال', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1927, 'ar', 'contact_email', 'تواصل بالبريد الاكتروني', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1928, 'ar', 'link_widget_one', 'رابط القطعة واحد', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1929, 'ar', 'links', 'الروابط', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1930, 'ar', 'footer_bottom', 'أسفل التذييل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1931, 'ar', 'copyright_widget_', 'قطعة حقوق الطبع والنشر', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1932, 'ar', 'copyright_text', 'نص حقوق النشر', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1933, 'ar', 'social_link_widget_', 'أداة الارتباط الاجتماعي', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1934, 'ar', 'show_social_links', 'إظهار الروابط الاجتماعية؟', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1935, 'ar', 'social_links', 'روابط اجتماعية', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1936, 'ar', 'payment_methods_widget_', 'أداة طرق الدفع', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1937, 'ar', 'website_pages', 'صفحات الموقع', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1938, 'ar', 'all_pages', 'كل الصفحات', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1939, 'ar', 'add_new_page', 'أضف صفحة جديدة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1940, 'ar', 'url', 'URL', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1941, 'ar', 'actions', 'أجراءات', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1942, 'ar', 'home_page_settings', 'إعدادات الصفحة الرئيسية', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1943, 'ar', 'home_slider', 'محرك صور الصفحة الرئيسية  ', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1944, 'ar', 'we_have_limited_banner_height_to_maintain_ui_we_had_to_crop_from_both_left__right_side_in_view_for_different_devices_to_make_it_responsive_before_designing_banner_keep_these_points_in_mind', 'لدينا ارتفاع محدود للافتة للحفاظ على واجهة المستخدم. اضطررنا إلى الاقتصاص من كلا الجانبين الأيسر والأيمن في عرض الأجهزة المختلفة لجعلها مستجيبة. قبل تصميم لافتة ، ضع هذه النقاط في الاعتبار.', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1945, 'ar', 'photos__links', 'الصور والروابط', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1946, 'ar', 'home_banner_1_max_3', 'لافتة المنزل 1 (الحد الأقصى 3)', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1947, 'ar', 'banner__links', 'لافتة وروابط', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1948, 'ar', 'home_banner_2_max_3', 'لافتة المنزل 2 (الحد الأقصى 3)', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1949, 'ar', 'home_categories', 'فئات الصفحة الرئيسية', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1950, 'ar', 'home_banner_3_max_3', 'لافتة المنزل 3 (الحد الأقصى 3)', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1951, 'ar', 'top_10', 'أعلى 10', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1952, 'ar', 'top_categories_max_10', 'أهم الفئات (بحد أقصى 10)', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1953, 'ar', 'top_brands_max_10', 'أشهر الماركات (بحد أقصى 10)', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1954, 'ar', 'frontend_website_name', 'اسم موقع الواجهة الأمامية', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1955, 'ar', 'website_name', 'اسم الموقع', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1956, 'ar', 'site_motto', 'شعار الموقع', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1957, 'ar', 'best_ecommerce_website', 'أفضل موقع للتجارة الإلكترونية', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1958, 'ar', 'site_icon', 'أيقونة الموقع', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1959, 'ar', 'website_favicon_32x32_png', 'أيقونة موقع الويب. 32 × 32. png', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1960, 'ar', 'website_base_color', 'لون قاعدة الموقع', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1961, 'ar', 'hex_color_code', 'رمز اللون السداسي', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1962, 'ar', 'website_base_hover_color', 'لون قاعدة موقع الويب', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1963, 'ar', 'global_seo', 'SEO العالمية', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1964, 'ar', 'keywords', 'الكلمات الرئيسية', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1965, 'ar', 'keyword_keyword', 'كلمة رئيسية', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1966, 'ar', 'separate_with_coma', 'فصل مع ,', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1967, 'ar', 'cookies_agreement', 'اتفاقية ملفات تعريف الارتباط', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1968, 'ar', 'cookies_agreement_text', 'نص اتفاقية ملفات تعريف الارتباط', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1969, 'ar', 'show_cookies_agreement', 'إظهار اتفاقية ملفات تعريف الارتباط؟', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1970, 'ar', 'website_popup', 'عرض ملفات تعريف الارتباط؟', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1971, 'ar', 'show_website_popup', 'إظهار النافذة المنبثقة لموقع الويب؟', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1972, 'ar', 'popup_content', 'محتوى منبثق', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1973, 'ar', 'show_subscriber_form', 'عرض نموذج المشترك؟', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1974, 'ar', 'custom_script', 'برنامج نصي مخصص', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1975, 'ar', 'header_custom_script__before_', 'برنامج نصي مخصص', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1976, 'ar', 'footer_custom_script__before_', 'البرنامج النصي المخصص للتذييل - قبل ', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1977, 'ar', 'category_has_been_deleted_successfully', 'تم حذف الفئة بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1978, 'ar', 'product_has_been_deleted_successfully', 'تم حذف المنتج بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1979, 'ar', 'brand_has_been_deleted_successfully', 'تم حذف العلامة التجارية بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1980, 'ar', 'brand_has_been_inserted_successfully', 'تم إدراج العلامة التجارية بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1981, 'ar', 'order_has_been_deleted_successfully', 'تم حذف الطلب بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1982, 'ar', 'all_cancel_request', 'كل طلب إلغاء', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1983, 'ar', 'cancel_requests', 'إلغاء الطلبات', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1984, 'ar', 'request_by', 'طلب بواسطة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1985, 'ar', 'request_at', 'طلب في', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1986, 'ar', 'payment_configuration', 'تكوين الدفع', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1987, 'ar', 'monthly_salary', 'راتب شهري', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1988, 'ar', 'salary_amount', 'مبلغ الراتب', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1989, 'ar', 'per_order_commission', 'عمولة على الطلب', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1990, 'ar', 'commission_rate', 'نسبة العمولة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1991, 'ar', 'notification_configuration', 'تكوين الإخطار', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1992, 'ar', 'send_mail', 'ارسل بريد', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1993, 'ar', 'send_otp', 'أرسل OTP', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1994, 'ar', 'pickup_location_for_delivery_boy', 'مكان الاستلام لصبي التوصيل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1995, 'ar', 'no_package', 'لا توجد باقة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1996, 'ar', 'change_status', 'تغيير الحالة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1997, 'ar', 'unknown_error', 'خطأ غير معروف', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1998, 'ar', 'customer_confirm_successfully', 'تأكيد العميل بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(1999, 'ar', 'deliverys', 'التسليم', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2000, 'ar', 'all_deliveries', 'جميع عمليات التسليم', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2001, 'ar', 'deliveries', 'عمليات التسليم', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2002, 'ar', 'type_delivery_name__enter', 'اكتب اسم التسليم وأدخل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2003, 'ar', 'add_new_delivery', 'أضف تسليم جديد', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2004, 'ar', 'add_to_wallet', 'أضف إلى المحفظة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2005, 'ar', 'create_new_package', 'إنشاء باقة جديدة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2006, 'ar', 'select_type', 'اختر صنف', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2007, 'ar', 'save_product', 'حفظ المنتج', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2008, 'ar', 'pickup_point_information', 'معلومات نقطة الالتقاط', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2009, 'ar', 'send_money_to_user_wallet', 'إرسال الأموال إلى محفظة المستخدم', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2010, 'ar', 'are_you_sure_to_send_money_to_', 'هل أنت متأكد من إرسال الأموال إلى', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2011, 'ar', 'are_you_sure_to_send_money_to_all', 'هل أنت متأكد من إرسال الأموال للجميع', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2012, 'ar', 'due_amount', 'مبلغ مستحق', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2013, 'ar', 'pay_now', 'ادفع الآن', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2014, 'ar', 'affiliate_withdraw_request', 'طلب سحب شركة تابعة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2015, 'ar', 'affiliate_withdraw_request_reject', 'رفض سحب طلب الشركة التابعة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2016, 'ar', 'are_you_sure_you_want_to_reject_this', 'هل أنت متأكد أنك تريد رفض هذا؟', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2017, 'ar', 'reject', 'رفض', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2018, 'ar', 'facebook_comment_setting', 'إعداد تعليق الفيس بوك', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2019, 'ar', 'facebook_app_id', 'معرف تطبيق الفيس بوك', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2020, 'ar', 'please_be_carefull_when_you_are_configuring_facebook_comment_for_incorrect_configuration_you_will_not_get_comment_section_on_your_userend_site', 'يرجى توخي الحذر عند تكوين تعليق الفيس بوك. للتكوين غير الصحيح ، لن تحصل على قسم التعليقات على موقع المستخدم الخاص بك.', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2021, 'ar', 'after_then_go_to_this_url_httpsdevelopersfacebookcomapps', 'بعد ذلك ، انتقل إلى عنوان URL هذا https://developers.facebook.com/apps/', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2022, 'ar', 'create_your_app', 'أنشئ تطبيقك', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2023, 'ar', 'in_dashboard_page_you_will_get_your_app_id', 'في صفحة لوحة المعلومات ، ستحصل على معرف التطبيق الخاص بك', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2024, 'ar', '_has_been_confirmed', 'تم التاكيد', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2025, 'ar', '_has_been_cancelled', 'تم إلغاء', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2026, 'ar', 'your_profile_has_been_updated_successfully', 'تم تحديث ملفك الشخصي بنجاح!', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2027, 'ar', 'flash_deal_information', 'معلومات صفقة فلاش', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2028, 'ar', 'background_color', 'لون الخلفية', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2029, 'ar', 'ffffff', '', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2030, 'ar', 'text_color', 'لون الخط', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2031, 'ar', 'white', 'أبيض', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2032, 'ar', 'dark', 'مظلم', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2033, 'ar', 'this_image_is_shown_as_cover_banner_in_flash_deal_details_page', 'تظهر هذه الصورة كبانر غلاف في صفحة تفاصيل صفقة فلاش.', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2034, 'ar', 'choose_products', 'اختر المنتجات', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2035, 'ar', 'if_any_product_has_discount_or_exists_in_another_flash_deal_the_discount_will_be_replaced_by_this_discount__time_limit', 'في حالة وجود خصم لأي منتج أو وجوده في عرض فلاش آخر ، فسيتم استبدال الخصم بهذا الخصم والحد الزمني.', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2036, 'ar', 'collection_from_delivery_boy', 'مجموعة من فتي التوصيل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2037, 'ar', 'deliver_boy', 'فتى التوصيل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2038, 'ar', 'customer_banned_successfully', 'تم حظر العميل بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2039, 'ar', 'unban_this_customer', 'إلغاء حظر هذا العميل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2040, 'ar', 'customer_unbanned_successfully', 'Customer UnBanned Successfully', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2041, 'ar', 'coupon_information_adding', 'إضافة معلومات القسيمة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2042, 'ar', 'coupon_type', 'نوع القسيمة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2043, 'ar', 'for_products', 'للمنتجات', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2044, 'ar', 'for_total_orders', 'لإجمالي الطلبات', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2045, 'ar', 'add_your_product_base_coupon', 'أضف قسيمة قاعدة المنتج الخاصة بك', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2046, 'ar', 'coupon_code', 'رمز القسيمة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2047, 'ar', 'submit_as', 'إرسال باسم', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2048, 'ar', 'solved', 'تم حلها', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2049, 'ar', 'edit_page_information', 'تحرير معلومات الصفحة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2050, 'ar', 'page_content', 'محتوى الصفحة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2051, 'ar', 'link', 'ربط', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2052, 'ar', 'use_character_number_hypen_only', 'استخدم الحرف ، الرقم ، الواصلة فقط', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2053, 'ar', 'add_content', 'إضافة محتوى', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2054, 'ar', 'content', 'محتوى..', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2055, 'ar', 'seo_fields', 'سيو فيلدز', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2056, 'ar', 'update_page', 'تحديث الصفحة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2057, 'ar', 'delivarys_days__times_have_been_updated_successfully', 'تم تحديث أيام وأوقات التسليم بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2058, 'ar', 'shipping_type', 'نوع الشحن', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2059, 'ar', 'monthly', 'شهريا', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2060, 'ar', 'weekly', 'أسبوعي', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2061, 'ar', 'duration_of_shipping_type', 'مدة نوع الشحن', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2062, 'ar', 'number_of_visits', 'عدد الزيارات', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2063, 'ar', 'visits_number', 'عدد الزيارات', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2064, 'ar', 'active', 'نشيط', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2065, 'ar', 'please_enter_the_code7380', 'الرجاء إدخال الرمز: 7380', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2066, 'ar', 'please_enter_the_code8754', 'الرجاء إدخال الرمز: 8754', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2067, 'ar', 'please_enter_the_code9180', 'الرجاء إدخال الرمز: 9180', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2068, 'ar', 'please_enter_the_code6555', 'الرجاء إدخال الرمز: 6555', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2069, 'ar', 'user_not_exists', 'المستخدم غير موجود.', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2070, 'ar', 'please_verify_your_account_to_log_in_to_your_account', 'يرجى التحقق من حسابك لتسجيل الدخول إلى حسابك.', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2071, 'ar', 'select_city', 'اختر مدينة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2072, 'ar', 'product_has_been_duplicated_successfully', 'تم تكرار المنتج بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2073, 'ar', 'maximum_purchase_qty', 'الكمية القصوى للشراء', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2074, 'ar', 'returned_policy', 'سياسة عودة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2075, 'ar', 'customer_data', 'بيانات العميل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2076, 'ar', 'enter_the_amount', 'أدخل المبلغ', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2077, 'ar', 'customer_phone', 'جوال العميل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2078, 'ar', 'customer_address', 'عنوان العميل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2079, 'ar', 'commercial_registration', 'التسجيل التجاري', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2080, 'ar', 'commercial_registration_no', 'رقم السجل التجاري', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2081, 'ar', 'change_customer_email', 'تغيير البريد الإلكتروني للعميل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2082, 'ar', 'customer_email', 'البريد الإلكتروني للعميل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2083, 'ar', 'zone', 'منطقة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2084, 'ar', 'default_price', 'السعر الافتراضي', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2085, 'ar', 'sms_has_been_sent', 'تم إرسال الرسائل القصيرة.', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2086, 'ar', 'role_has_been_inserted_successfully', 'تم إدراج الدور بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2087, 'ar', 'wholesales', 'البيع بالجملة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2088, 'ar', 'retails', 'تجارة التجزئة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2089, 'ar', 'packages', 'الباقات', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2090, 'ar', 'all_packages', 'كل الباقات', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2091, 'ar', 'product_sale', 'بيع المنتج', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2092, 'ar', 'page__slider', 'الصفحة && المنزلق', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2093, 'ar', 'days_and_time_for_delivary', 'أيام ووقت التسليم', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2094, 'ar', 'quantification_of_offer_daily', 'التحديد الكمي للعرض اليومي', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2095, 'ar', 'order_count', 'حساب الطلب', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2096, 'ar', 'no_orders', 'لا توجد طلبات', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2097, 'ar', 'block_this_customer', 'منع هذا العميل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2098, 'ar', 'do_you_really_want_to_block_this_customer', 'هل تريد حقًا منع هذا العميل؟', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2099, 'ar', 'do_you_really_want_to_active_this_customer', 'هل تريد حقًا تنشيط هذا العميل؟', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2100, 'ar', 'see_details', 'انظر التفاصيل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2101, 'ar', 'conversation_created', 'تم إنشاء المحادثة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2102, 'ar', 'affiliate_payments_of_', 'المدفوعات التابعة ل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2103, 'ar', 'product_wise_shipping_cost_is_disable_shipping_cost_is_configured_from_here', 'تكلفة شحن المنتج ة معطلة. يتم تكوين تكلفة الشحن من هنا', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2104, 'ar', 'wholesale_check_paper', 'ورق شيك بالجملة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2105, 'ar', 'commercial_name', 'الاسم التجاري', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2106, 'ar', 'owner_name', 'اسم المالك', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2107, 'ar', 'tax_number', 'الرقم الضريبي', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2108, 'ar', 'no_commercial_registry', 'لا يوجد سجل تجاري', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2109, 'ar', 'no_tax_number_certificate', 'شهادة عدم وجود شهادة رقم ضريبي', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2110, 'ar', 'insufficient_wallet_balance', 'رصيد المحفظة غير كاف', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2111, 'ar', 'user_is_not_found', 'لم يتم العثور على المستخدم', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2112, 'ar', 'shipping_information_has_been_deleted', 'تم حذف معلومات الشحن', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2113, 'ar', 'order_count_retail', 'طلب عدد التجزئة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2114, 'ar', 'order_count_wholesale', 'طلب عدد الجملة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2115, 'ar', 'google_firebase_setting', 'إعداد جوجل فير باس', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2116, 'ar', 'fcm_server_key', 'مفتاح خادم FCM', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2117, 'ar', 'not_found_this_user_package', 'لم يتم العثور على باقة المستخدم هذه', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2118, 'ar', 'state_information', 'نص المعلومات', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2119, 'ar', 'edit_state', 'تحرير النص', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2120, 'ar', 'state_has_been_updated_successfully', 'تم تحديث النص بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2121, 'ar', 'state_has_been_inserted_successfully', 'تم إدخال النص بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2122, 'ar', 'package_has_been_deleted_successfully', 'تم حذف الباقة بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2123, 'ar', 'attribute_has_been_deleted_successfully', 'تم حذف السمة بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2124, 'ar', 'has_been_delivered', 'تم التسليم', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2125, 'ar', 'collection_amount_can_not_be_larger_than_collected_amount', 'لا يمكن أن يكون مبلغ التحصيل أكبر من المبلغ المحصل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2126, 'ar', 'coupon_information_update', 'تحديث معلومات القسيمة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2127, 'ar', 'edit_your_cart_base_coupon', 'تحرير قسيمة سلة التسوق الخاصة بك', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2128, 'ar', 'minimum_shopping', 'الحد الأدنى من التسوق', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2129, 'ar', 'maximum_discount_amount', 'الحد الأقصى لمبلغ الخصم', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2130, 'ar', 'set_point_for_product', 'تعيين نقطة للمنتج', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2131, 'ar', 'point_has_been_updated_successfully', 'تم تحديث النقطة بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2132, 'ar', 'tax_information', 'معلومات حول الضرائب', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2133, 'ar', 'update_tax_info', 'تحديث المعلومات الضريبية', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2134, 'ar', 'has_been_on_the_way', 'كان في الطريق', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2135, 'ar', 'has_been_picked_up', 'تم التقاطه', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2136, 'ar', 'shipping_location_in_map_updated_successfully', 'تم تحديث موقع الشحن في الخريطة بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2137, 'ar', 'shipping_information_has_been_updated_successfully', 'تم تحديث معلومات الشحن بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2138, 'ar', '_has_been_on_the_way', 'كان في الطريق', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2139, 'ar', '_has_been_picked_up', 'تم التقاطه', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2140, 'ar', '_has_been_delivered', 'تم التسليم', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2141, 'ar', 'active_this_customer', 'تنشط هذا العميل', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2142, 'ar', 'download_commercial_registry', 'تحميل السجل التجاري', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2143, 'ar', 'tax_number_certificate', 'شهادة الرقم الضريبي', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2144, 'ar', 'user_not_active_wait_approve_from_admin', 'المستخدم غير نشط انتظر الموافقة من المسؤول.', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2145, 'ar', 'customer_blocked_successfully', 'تم حظر العميل بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2146, 'ar', 'this_product_not_allowed_in_your_zone', 'هذا المنتج غير مسموح به في منطقتك.', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2147, 'ar', 'back_to_uploaded_files', 'العودة إلى الملفات المرفوعة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2148, 'ar', 'drag__drop_your_files', 'اسحب الملفات وأفلتها', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2149, 'ar', 'send_money_successfully', 'أرسل الأموال بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2150, 'ar', 'your_account_is_activated_now_you_can_login', 'تم تنشيط حسابك الآن يمكنك تسجيل الدخول.', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2151, 'ar', 'unit_price_per_cities', 'سعر الوحدة لكل مدينة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2152, 'ar', 'total_qty', 'إجمالي الكمية', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2153, 'ar', 'product_nsssame', 'المنتج Nsssame', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2154, 'ar', 'city_name', 'اسم المدينة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2155, 'ar', 'retailer_cost', 'تكلفة بائع التجزئة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2156, 'ar', 'wholesaler_cost', 'تكلفة تاجر الجملة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2157, 'ar', 'enter_retailer_cost', 'أدخل تكلفة بائع التجزئة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2158, 'ar', 'enter_wholesaler_cost', 'أدخل تكلفة تاجر الجملة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2159, 'ar', 'user_is_active', 'المستخدم نشط.', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2160, 'ar', 'user_is_disactive', 'المستخدم غير نشط.', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2161, 'ar', 'min_qty', 'الحد الأدنى للكمية', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2162, 'ar', 'national_id', 'الهوية الوطنية', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2163, 'ar', 'national_id_expired', 'بطاقة الهوية الوطنية منتهية الصلاحية', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2164, 'ar', 'license__id', 'معرف_ الترخيص', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2165, 'ar', 'license_id_expired', 'هوية الترخيص منتهية', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2166, 'ar', 'license_car', 'رخصة السيارة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2167, 'ar', 'license_car_expired', 'انتهت صلاحية رخصة السيارة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2168, 'ar', 'permanent_employee', 'موظف دائم', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2169, 'ar', 'select_delivery_type', 'حدد نوع التسليم', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2170, 'ar', 'temporary_driver', 'سائق مؤقت', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2171, 'ar', 'license_id', 'معرف الترخيص', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2172, 'ar', 'customer_active_successfully', 'العميل نشط بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2173, 'ar', 'brand_information', 'معلومات العلامة التجارية', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2174, 'ar', 'brand_has_been_updated_successfully', 'تم تحديث العلامة التجارية بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2175, 'ar', 'this_product_not_allowed_in_your_city', 'هذا المنتج غير مسموح به في مدينتك.', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2176, 'ar', 'add', 'يضيف', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2177, 'ar', 'enter_quantity', 'أدخل الكمية', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2178, 'ar', 'invalid_coupon_code', 'رقم قسيمه غير صالح!', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2179, 'ar', 'add_your_cart_base_coupon', 'أضف قسيمة سلة التسوق الخاصة بك', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2180, 'ar', 'coupon_type_is_required', 'نوع القسيمة مطلوب', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2181, 'ar', 'coupon_code_is_required', 'كود القسيمة مطلوب', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2182, 'ar', 'coupon_already_exist_for_this_coupon_code', 'القسيمة موجودة بالفعل لرمز القسيمة هذا', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2183, 'ar', 'max_255_characters', 'بحد أقصى 255 حرفًا', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2184, 'ar', 'product_is_required', 'المنتج مطلوب', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2185, 'ar', 'discount_is_required', 'الخصم مطلوب', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2186, 'ar', 'discount_should_be_numeric_type', 'يجب أن يكون الخصم من النوع الرقمي', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2187, 'ar', 'discount_should_be_l_or_greater', 'يجب أن يكون الخصم ل أو أكبر', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2188, 'ar', 'discount_type_is_required', 'نوع الخصم مطلوب', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2189, 'ar', 'minimum_shopping_amount_is_required', 'مطلوب الحد الأدنى من مبلغ التسوق', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2190, 'ar', 'minimum_shopping_amount_should_be_numeric_type', 'يجب أن يكون الحد الأدنى لمبلغ التسوق من النوع الرقمي', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2191, 'ar', 'minimum_shopping_amount_should_be_l_or_greater', 'يجب أن يكون الحد الأدنى لمبلغ التسوق لتر أو أكثر', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2192, 'ar', 'max_discount_amount_is_required', 'مطلوب مبلغ الخصم الأقصى', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2193, 'ar', 'max_discount_amount_should_be_numeric_type', 'يجب أن يكون الحد الأقصى لمبلغ الخصم من النوع الرقمي', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2194, 'ar', 'max_discount_amount_should_be_l_or_greater', 'يجب أن يكون الحد الأقصى لمبلغ الخصم واحد أو أكبر', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2195, 'ar', 'date_range_is_required', 'النطاق الزمني مطلوب', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2196, 'ar', 'coupon_has_been_saved_successfully', 'تم حفظ القسيمة بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2197, 'ar', 'coupon_has_been_updated_successfully', 'تم تحديث القسيمة بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2198, 'ar', 'coupon_applied', 'تم تطبيق الكوبون', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2199, 'ar', 'coupon_removed', 'تمت إزالة القسيمة', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2200, 'ar', 'oops', 'أوبس نأسف', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2201, 'ar', 'you_already_used_this_coupon', 'لقد استخدمت بالفعل هذه القسيمة!', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2202, 'ar', 'page_has_been_updated_successfully', 'تم تحديث الصفحة بنجاح', '2023-12-06 14:55:44', '2023-12-06 14:55:44'),
(2203, 'ar', 'no_manager', 'لا يوجد مدير', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2204, 'ar', 'an_email_has_been_sent', 'تم ارسال البريد الإلكتروني.', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2205, 'ar', 'forgot_password_', 'هل نسيت كلمة السر ؟', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2206, 'ar', 'address_is_updated', 'تم تحديث العنوان', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2207, 'ar', 'could_not_save_the_address', 'تعذر حفظ العنوان', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2208, 'ar', 'the_requested_quantity_is_not_available_for_', 'الكمية المطلوبة غير متوفرة لـ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2209, 'ar', 'delivery_date', 'تاريخ التسليم', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2210, 'ar', 'delivery_time', 'موعد التسليم', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2211, 'ar', 'package_has_been_updated_successfully', 'تم تحديث الحزمة بنجاح', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2212, 'ar', 'attachments', 'المرفقات', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2213, 'ar', 'national_id_attachment', 'مرفق الرقم القومي', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2214, 'ar', 'license_id_attachment', 'مرفق معرف الترخيص', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2215, 'ar', 'license_car_attachment', 'ترخيص مرفق السيارة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2216, 'ar', 'you_are_assigned_to_delivery_an_order_order_code', 'تم تعيينك لتسليم طلب. رمز الطلب', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2217, 'ar', 'delivery_status_changed_to_', 'تغيرت حالة التسليم إلى', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2218, 'ar', 'commercial_registration_no', 'رقم السجل التجاري.', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2219, 'ar', 'commercial_registry', 'السجل التجاري', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2220, 'ar', 'shipping_cost', 'تكلفة الشحن', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2221, 'ar', 'user_search_report', 'تقرير بحث المستخدم', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2222, 'ar', 'search_by', 'البحث عن طريق', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2223, 'ar', 'number_searches', 'عدد عمليات البحث', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2224, 'ar', 'national_id_attachment', 'مرفق الهوية الوطنية', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2225, 'ar', 'license_id_attachment', 'مرفق معرف الترخيص', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2226, 'ar', 'default_shipping_information_has_been_updated', 'تم تحديث معلومات الشحن الافتراضية', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2227, 'ar', 'all_subscribes', 'كل الاشتراكات', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2228, 'ar', 'all_subscribe_packages', 'جميع باقات الاشتراك', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2229, 'ar', 'converted', 'محولة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2230, 'ar', 'disactive', 'كارثي', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2231, 'ar', 'not_converted_to_orders', 'لم يتم تحويلها إلى أوامر', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2232, 'ar', 'subscribe_details', 'تفاصيل الاشتراك', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2233, 'ar', 'visits', 'الزيارات', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2234, 'ar', 'no', 'لا', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2235, 'ar', 'package_products', 'منتجات العبوة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2236, 'ar', 'you_subscribe_on_this_package', 'أنت تشترك في هذه الباقة.', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2237, 'ar', 'you_already_subscribed_on_this_package', 'لقد اشتركت بالفعل في هذه الباقة.', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2238, 'ar', 'yes', 'نعم', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2239, 'ar', 'number_of_days_dont_match_number_of_times', 'عدد الأيام لا يتطابق مع عدد المرات.', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2240, 'ar', 'you_should_add_default_address', 'يجب عليك إضافة العنوان الافتراضي.', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2241, 'ar', 'map', 'خريطة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2242, 'ar', 'you_cant_subscribe_this_package', 'لا يمكنك الاشتراك في هذه الباقة.', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2243, 'ar', 'na', '', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2244, 'ar', 'product_unavailable', 'المنتج غير متوفر', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2245, 'ar', 'this_package_does_not_exist', 'هذه الحزمة غير موجودة.', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2246, 'ar', 'payment_failed', 'عملية الدفع فشلت', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2247, 'ar', 'dates__times', 'التواريخ والأوقات', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2248, 'ar', 'time', 'التوقيت', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2249, 'ar', 'reorder', 'أعادة الطلب ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2250, 'ar', 'new', 'جديد  ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2251, 'ar', 'privacy_policy', 'سياسية الخصوصية', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2252, 'ar', 'convert_to_orders', 'تحويل إلى أوامر', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2253, 'ar', 'payment_succeeded_with_updating_package_information', 'نجح الدفع بتحديث معلومات الحزمة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2254, 'ar', 'apple_login_credential', 'تسجيل الدخول بآبل   ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2255, 'ar', 'callback_url', 'الرابط المرجعي ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2256, 'ar', 'type_your_text', 'اكتب   ...  ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2257, 'ar', 'have_coupon_code_apply_here', 'هل لديك رمز القسيمة؟ قدم هنا ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2258, 'ar', 'address_info_stored_successfully', 'تم تخزين معلومات العنوان بنجاح ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2259, 'ar', 'product_query_activation', 'تفعيل الاستعلام عن المنتج  ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2260, 'ar', 'order_code_', 'رمز الطلب:', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2261, 'ar', 'delivered', 'تم التوصيل  :', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2262, 'ar', 'tickets', 'تذاكر الدعم الفني    :', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2263, 'ar', 'cancel', ' إلغاء', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2264, 'ar', 'type_your_reply', ' اكتب ردك', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2265, 'ar', 'send_ticket', 'أرسال ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2266, 'ar', 'provide_a_detailed_description', ' شرح مفصل للمشكلة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2267, 'ar', 'create_a_ticket', 'أنشاء تذكرة دعم فني   ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2268, 'ar', 'default', 'العنوان الأفتراضي   ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2269, 'ar', 'there_isnt_anything_added_yet', ' لم يتم اضافة شي بعد    ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2270, 'ar', 'sign_out', 'تسجيل الخروج     ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2271, 'ar', 'total_products_ordered', 'عدد الطلبات ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2272, 'ar', 'products_in_cart', 'سلة التسوق  ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2273, 'ar', 'products_in_wishlist', 'المفضلة   ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2274, 'ar', 'view_order_history', 'عرض  سجل الطلب ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2275, 'ar', 'you_had_placed_your_items_in_the_shopping_cart_try_to_order_before_the_product_quantity_runs_out', 'لقد وضعت العناصر الخاصة بك في عربة التسوق. حاول الطلب قبل نفاذ كمية المنتج.  ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2276, 'ar', 'make_this_default', 'جعل هذا العنوان العنوان الأفتراضي   :', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2277, 'ar', 'additional_info', 'معلومات أضافية', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2278, 'ar', 'category', 'الفئة  ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2279, 'ar', 'badge', 'الوسم (البادج)  ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2280, 'ar', 'orders_count', 'عدد الطلبات ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2281, 'ar', 'orders_sum_grand_total', 'المبلغ المدفوع ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2282, 'ar', 'cash_on_delivery', 'الدفع عند الإستلام  ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2283, 'ar', 'show_all_products', 'عرض كافة المنتجات', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2284, 'ar', 'show_in_house_products', 'عرض المنتجات الداخلية', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2285, 'ar', 'show_seller_products', 'عرض منتجات البائع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2286, 'ar', 'product_edit', 'تحرير المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2287, 'ar', 'product_duplicate', 'منتج مكرر', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2288, 'ar', 'product_delete', 'حذف المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2289, 'ar', 'show_digital_products', 'عرض المنتجات الرقمية', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2290, 'ar', 'add_digital_product', 'إضافة منتج رقمي', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2291, 'ar', 'delete_digital_product', 'حذف المنتج الرقمي', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2292, 'ar', 'download_digital_product', 'تحميل المنتج الرقمي', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2293, 'ar', 'product_bulk_import', 'استيراد المنتجات بالجملة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2294, 'ar', 'product_bulk_export', 'تصدير المنتجات بالجملة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2295, 'ar', 'view_product_categories', 'عرض فئات المنتجات', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2296, 'ar', 'add_product_category', 'إضافة فئة المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2297, 'ar', 'edit_product_category', 'تحرير فئة المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2298, 'ar', 'delete_product_category', 'حذف فئة المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2299, 'ar', 'product_attribute', 'سمة المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2300, 'ar', 'view_product_attributes', 'عرض سمات المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2301, 'ar', 'add_product_attribute', 'إضافة سمة المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2302, 'ar', 'edit_product_attribute', 'تحرير سمة المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2303, 'ar', 'delete_product_attribute', 'حذف سمة المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2304, 'ar', 'view_product_attribute_values', 'عرض قيم سمات المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2305, 'ar', 'add_product_attribute_values', 'إضافة قيم سمات المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2306, 'ar', 'edit_product_attribute_value', 'تحرير قيمة سمة المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2307, 'ar', 'delete_product_attribute_value', 'حذف قيمة سمة المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2308, 'ar', 'view_colors', 'عرض الألوان', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2309, 'ar', 'add_color', 'أضف اللون', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2310, 'ar', 'edit_color', 'تحرير اللون', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2311, 'ar', 'delete_color', 'حذف اللون', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2312, 'ar', 'product_review', 'تقييم المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2313, 'ar', 'view_product_reviews', 'عرض مراجعات المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2314, 'ar', 'publish_product_review', 'نشر مراجعة المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2315, 'ar', 'sale', 'أُوكَازيُون', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2316, 'ar', 'view_all_orders', 'عرض جميع الطلبات', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2317, 'ar', 'view_inhouse_orders', 'عرض الطلبات الداخلية', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2318, 'ar', 'view_seller_orders', 'عرض طلبات البائع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2319, 'ar', 'view_pickup_point_orders', 'عرض أوامر نقطة الالتقاط', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2320, 'ar', 'view_order_details', 'معاينة تفاصيل الطلب', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2321, 'ar', 'update_order_payment_status', 'تحديث حالة دفع الطلب', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2322, 'ar', 'update_order_delivery_status', 'تحديث حالة تسليم الطلب', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2323, 'ar', 'delete_order', 'حذف الطلب', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2324, 'ar', 'view_all_customers', 'عرض كافة العملاء', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2325, 'ar', 'login_as_customer', 'تسجيل الدخول كعميل', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2326, 'ar', 'ban_customer', 'حظر العميل', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2327, 'ar', 'delete_customer', 'حذف العميل', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2328, 'ar', 'view_classified_products', 'عرض المنتجات المبوبة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2329, 'ar', 'publish_classified_product', 'نشر المنتج المبوب', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2330, 'ar', 'delete_classified_product', 'حذف المنتج المصنف', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2331, 'ar', 'view_classified_packages', 'عرض الحزم المبوبة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2332, 'ar', 'add_classified_package', 'إضافة حزمة سرية', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2333, 'ar', 'edit_classified_package', 'تحرير الحزمة المبوبة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2334, 'ar', 'delete_classified_package', 'حذف الحزمة السرية', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2335, 'ar', 'view_all_seller', 'عرض جميع البائع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2336, 'ar', 'view_seller_profile', 'عرض الملف الشخصي للبائع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2337, 'ar', 'login_as_seller', 'تسجيل الدخول كبائع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2338, 'ar', 'pay_to_seller', 'الدفع للبائع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2339, 'ar', 'seller_payment_history', 'سجل الدفع للبائع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2340, 'ar', 'edit_seller', 'تحرير البائع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2341, 'ar', 'delete_seller', 'حذف البائع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2342, 'ar', 'ban_seller', 'حظر البائع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2343, 'ar', 'approve_seller', 'الموافقة على البائع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2344, 'ar', 'view_seller_payout_requests', 'عرض طلبات دفع تعويضات البائع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2345, 'ar', 'seller_commission_configuration', 'تكوين عمولة البائع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2346, 'ar', 'seller_verification_form_configuration', 'تكوين نموذج التحقق من البائع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2347, 'ar', 'in_house_product_sale_report', 'تقرير مبيعات المنتجات الداخلية', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2348, 'ar', 'seller_products_sale_report', 'تقرير مبيعات منتجات البائع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2349, 'ar', 'products_stock_report', 'تقرير مخزون المنتجات', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2350, 'ar', 'product_wishlist_report', 'تقرير قائمة أمنيات المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2351, 'ar', 'commission_history_report', 'تقرير تاريخ اللجنة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2352, 'ar', 'view_blogs', 'عرض المدونات', '2023-12-06 14:55:45', '2023-12-06 14:55:45');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(2353, 'ar', 'add_blog', 'أضف مدونة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2354, 'ar', 'edit_blog', 'تحرير المدونة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2355, 'ar', 'delete_blog', 'حذف المدونة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2356, 'ar', 'publish_blog', 'نشر المدونة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2357, 'ar', 'view_blog_categories', 'عرض فئات المدونة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2358, 'ar', 'add_blog_category', 'أضف فئة المدونة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2359, 'ar', 'edit_blog_category', 'تحرير فئة المدونة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2360, 'ar', 'delete_blog_category', 'حذف فئة المدونة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2361, 'ar', 'delete_subscriber', 'حذف المشترك', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2362, 'ar', 'view_all_subscribers', 'عرض جميع المشتركين', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2363, 'ar', 'view_all_support_tickets', 'عرض جميع تذاكر الدعم', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2364, 'ar', 'reply_to_support_tickets', 'الرد على تذاكر الدعم', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2365, 'ar', 'view_all_product_queries', 'عرض جميع استعلامات المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2366, 'ar', 'reply_to_product_queries', 'الرد على استفسارات المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2367, 'ar', 'view_all_product_conversations', 'عرض جميع محادثات المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2368, 'ar', 'reply_to_product_conversations', 'الرد على محادثات المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2369, 'ar', 'delete_product_conversations', 'حذف محادثات المنتج', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2370, 'ar', 'header_setup', 'إعداد الرأس', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2371, 'ar', 'footer_setup', 'إعداد التذييل', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2372, 'ar', 'website_appearance', 'مظهر الموقع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2373, 'ar', 'view_all_website_pages', 'عرض جميع صفحات الموقع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2374, 'ar', 'add_website_page', 'إضافة صفحة الموقع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2375, 'ar', 'edit_website_page', 'تحرير صفحة الموقع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2376, 'ar', 'delete_website_page', 'حذف صفحة الموقع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2377, 'ar', 'select_homepage', 'حدد الصفحة الرئيسية', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2378, 'ar', 'features_activation', 'تفعيل المميزات', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2379, 'ar', 'language_setup', 'إعداد اللغة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2380, 'ar', 'currency_setup', 'إعداد العملة', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2381, 'ar', 'vat__tax_setup', 'إعداد ضريبة القيمة المضافة والضرائب', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2382, 'ar', 'pickup_point_setup', 'إعداد نقطة الالتقاط', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2383, 'ar', 'smtp_settings', 'إعدادات سمتب', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2384, 'ar', 'payment_methods_configurations', 'تكوينات طرق الدفع', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2385, 'ar', 'social_media_logins', 'تسجيلات الدخول لوسائل التواصل الاجتماعي', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2386, 'ar', 'analytics_tools_configuration', 'تكوين أدوات التحليلات', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2387, 'ar', 'google_recaptcha_configuration', 'تكوين جوجل Recaptcha', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2388, 'ar', 'google_map_setting', 'إعداد خريطة جوجل', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2389, 'ar', 'shipping_country_setting', 'إعداد بلد الشحن', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2390, 'ar', 'manage_shipping_states', 'إدارة حالات الشحن', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2391, 'ar', 'manage_shipping_cities', 'إدارة مدن الشحن', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2392, 'ar', 'manage_zones', 'إدارة المناطق', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2393, 'ar', 'manage_carriers', 'إدارة الناقلات', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2394, 'ar', 'setup_configurations', 'تكوينات الإعداد', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2395, 'ar', 'system_update', 'تحديث النظام', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2396, 'ar', 'server_status', 'حالة الملقم', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2397, 'ar', 'manage_addons', 'إدارة الوظائف الإضافية', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2398, 'ar', 'admin_dashboard', 'لوحة تحكم المشرف', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2399, 'ar', 'staff', 'طاقم عمل', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2400, 'ar', 'view_all_staffs', 'عرض جميع الموظفين', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2401, 'ar', 'add_staff', 'أضف فريق العمل', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2402, 'ar', 'edit_staff', 'تحرير الموظفين', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2403, 'ar', 'delete_staff', 'حذف الموظفين', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2404, 'ar', 'view_staff_roles', 'عرض أدوار الموظفين', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2405, 'ar', 'add_staff_role', 'أضف دور الموظفين', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2406, 'ar', 'edit_staff_role', 'تحرير دور الموظفين', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2407, 'ar', 'delete_staff_role', 'حذف دور الموظفين', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2408, 'ar', 'or_login_with', 'أو سجل دخول بـ', '2023-12-06 14:55:45', '2023-12-06 14:55:45'),
(2409, 'ar', 'website_pages', 'Website Pages', '2023-12-06 14:55:54', '2023-12-06 14:55:54'),
(2410, 'ar', 'bid_for_product', 'Bid For Product', '2023-12-06 14:56:39', '2023-12-06 14:56:39'),
(2411, 'ar', 'place_bid_price', 'Place Bid Price', '2023-12-06 14:56:39', '2023-12-06 14:56:39'),
(2412, 'ar', 'enter_amount', 'Enter Amount', '2023-12-06 14:56:39', '2023-12-06 14:56:39'),
(2413, 'ar', 'submit', 'Submit', '2023-12-06 14:56:39', '2023-12-06 14:56:39'),
(2414, 'ar', '________', 'تنبيه : هل أنت متأكد من هذه الخطوة ', '2023-12-06 14:56:39', '2023-12-06 14:56:39'),
(2415, 'ar', '_', 'تنبيه :', '2023-12-06 14:56:39', '2023-12-06 14:56:39'),
(2416, 'ar', '__________________', 'ملحوظة: لا تنقر على أي زر أو لا تقم بأي إجراء أثناء حذف الحساب، فقد يستغرق ذلك بعض الوقت..', '2023-12-06 14:56:39', '2023-12-06 14:56:39'),
(2417, 'ar', '____', 'حذف حسابي يعني : ', '2023-12-06 14:56:39', '2023-12-06 14:56:39'),
(2418, 'ar', 'warning', 'warning', '2023-12-06 14:56:39', '2023-12-06 14:56:39'),
(2419, 'ar', '_________', 'بعد حذف حسابك، لن يعد رصيد المحفظة موجودًا في نظامنا', '2023-12-06 14:56:39', '2023-12-06 14:56:39'),
(2420, 'ar', '__', 'نعم , أحذف', '2023-12-06 14:56:39', '2023-12-06 14:56:39'),
(2421, 'ar', 'please_login_as_a_customer_to_add_products_to_the_wishlist', 'Please Login as a customer to add products to the WishList.', '2023-12-06 14:56:39', '2023-12-06 14:56:39'),
(2422, 'ar', 'please_login_as_a_customer_to_add_products_to_the_cart', 'Please Login as a customer to add products to the Cart.', '2023-12-06 14:56:39', '2023-12-06 14:56:39'),
(2423, 'ar', 'sorry_only_customers__sellers_can_bid', 'Sorry, Only customers & Sellers can Bid.', '2023-12-06 14:56:39', '2023-12-06 14:56:39'),
(2424, 'ar', 'coupon_code_copied', 'Coupon Code Copied', '2023-12-06 14:56:39', '2023-12-06 14:56:39'),
(2425, 'sa', 'inhouse_auction_products', NULL, '2023-12-06 15:00:43', '2023-12-06 15:00:43'),
(2426, 'sa', 'seller_auction_products', NULL, '2023-12-06 15:00:43', '2023-12-06 15:00:43'),
(2427, 'sa', 'auction_products_orders', NULL, '2023-12-06 15:00:43', '2023-12-06 15:00:43'),
(2428, 'sa', 'sales', NULL, '2023-12-06 15:00:43', '2023-12-06 15:00:43'),
(2429, 'sa', 'admin', NULL, '2023-12-06 15:00:43', '2023-12-06 15:00:43'),
(2430, 'sa', 'sorry_nothing_found_for', NULL, '2023-12-06 15:00:43', '2023-12-06 15:00:43'),
(2431, 'sa', 'notification', NULL, '2023-12-06 15:00:43', '2023-12-06 15:00:43'),
(2432, 'sa', 'all_orders', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2433, 'sa', 'download_your_products', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2434, 'sa', 'inhouse_orders', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2435, 'sa', 'delete_your_account', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2436, 'sa', 'delete_my_account', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2437, 'sa', 'homepage_settings', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2438, 'sa', 'seller_orders', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2439, 'sa', 'pickup_point_order', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2440, 'sa', 'delivery_boy', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2441, 'sa', 'all_delivery_boy', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2442, 'sa', 'add_delivery_boy', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2443, 'sa', 'cancel_request', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2444, 'sa', 'login_to_your_seller_account', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2445, 'sa', 'login_to_your_account', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2446, 'sa', 'terms_and_conditions', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2447, 'sa', 'by_signing_up_you_agree_to_our', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2448, 'sa', 'welcome_back_', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2449, 'sa', 'password_must_contain_at_least_6_digits', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2450, 'sa', 'create_an_account', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2451, 'sa', 'configuration', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2452, 'sa', 'subscribe_to_our_newsletter_for_regular_updates_about_offers_coupons__more', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2453, 'sa', 'refunds', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2454, 'sa', 'contacts', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2455, 'sa', 'light', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2456, 'sa', 'header_nav_menu_text_color', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2457, 'sa', 'topbar_banner_large', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2458, 'sa', 'topbar_banner_medium', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2459, 'sa', 'topbar_banner_small', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2460, 'sa', 'enter_your_email_address_and_new_password_and_confirm_password', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2461, 'sa', 'reset_password', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2462, 'sa', 'refund_requests', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2463, 'sa', 'approved_refunds', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2464, 'sa', 'rejected_refunds', 'المبالغ المستردة المرفوضة', '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2465, 'sa', 'refund_configuration', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2466, 'sa', 'customers', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2467, 'sa', 'customer_list', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2468, 'sa', 'classified_products', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2469, 'sa', 'classified_packages', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2470, 'sa', 'sellers', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2471, 'sa', 'all_seller', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2472, 'sa', 'payouts', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2473, 'sa', 'payout_requests', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2474, 'sa', 'seller_commission', NULL, '2023-12-06 15:00:44', '2023-12-06 15:00:44'),
(2475, 'ar', 'translations_updated_for_', 'Translations updated for', '2023-12-06 15:00:44', '2023-12-06 16:58:33'),
(2476, 'ar', 'website_secondary_base_color', 'Website Secondary Base Color', '2023-12-06 16:57:37', '2023-12-06 16:57:37'),
(2477, 'ar', 'website_secondary_base_hover_color', 'Website Secondary Base Hover Color', '2023-12-06 16:57:37', '2023-12-06 16:57:37'),
(2478, 'ar', 'customer_login_page_image', 'Customer Login page Image', '2023-12-06 16:57:37', '2023-12-06 16:57:37'),
(2479, 'ar', 'customer_register_page_image', 'Customer Register page Image', '2023-12-06 16:57:38', '2023-12-06 16:57:38'),
(2480, 'ar', 'flash_deal_banner_large', 'Flash Deal Banner large', '2023-12-06 16:57:38', '2023-12-06 16:57:38'),
(2481, 'ar', 'flash_deal_banner_small', 'Flash Deal Banner Small', '2023-12-06 16:57:38', '2023-12-06 16:57:38'),
(2482, 'ar', 'header_custom_script__before_head', 'Header custom script - before </head>', '2023-12-06 16:57:38', '2023-12-06 16:57:38'),
(2483, 'ar', 'write_script_with_script_tag', 'Write script with <script> tag', '2023-12-06 16:57:38', '2023-12-06 16:57:38'),
(2484, 'ar', 'footer_custom_script__before_body', 'Footer custom script - before </body>', '2023-12-06 16:57:38', '2023-12-06 16:57:38'),
(2485, 'ar', 'translations', 'الترجمات', '2023-12-06 16:58:12', '2023-12-06 16:58:33'),
(2486, 'ar', 'lang_key', 'المفتاح', '2023-12-06 16:59:34', '2023-12-09 08:54:49'),
(2487, 'ar', '______', 'هل انت متأكد من حذف العناصر ؟', '2023-12-06 17:02:43', '2023-12-06 17:02:43'),
(2488, 'ar', 'banner_level_1', 'Banner Level 1', '2023-12-06 17:16:34', '2023-12-06 17:16:34'),
(2489, 'ar', 'banner_level_2', 'Banner Level 2', '2023-12-06 17:16:34', '2023-12-06 17:16:34'),
(2490, 'ar', 'banner_level_3', 'Banner Level 3', '2023-12-06 17:16:34', '2023-12-06 17:16:34'),
(2491, 'ar', 'coupon_section', 'Coupon Section', '2023-12-06 17:16:34', '2023-12-06 17:16:34'),
(2492, 'ar', 'category_wise_products', 'Category Wise Products', '2023-12-06 17:16:34', '2023-12-06 17:16:34'),
(2493, 'ar', 'classifieds', 'Classifieds', '2023-12-06 17:16:34', '2023-12-06 17:16:34'),
(2494, 'ar', 'top_brands', 'Top Brands', '2023-12-06 17:16:35', '2023-12-06 17:16:35'),
(2495, 'ar', 'minimum_664_px_or_higher__x_490px', 'Minimum 664 px or higher  X 490px', '2023-12-06 17:16:35', '2023-12-06 17:16:35'),
(2496, 'ar', 'flash_deal_section_settings', 'Flash Deal Section Settings', '2023-12-06 17:16:35', '2023-12-06 17:16:35'),
(2497, 'ar', 'use_background_color_as_full_width', 'Use background color as full width', '2023-12-06 17:16:35', '2023-12-06 17:16:35'),
(2498, 'ar', 'flash_deal_banner_text_color', 'Flash Deal Banner Text Color', '2023-12-06 17:16:35', '2023-12-06 17:16:35'),
(2499, 'ar', 'todays_deal_section_settings', 'Today\'s Deal Section Settings', '2023-12-06 17:16:35', '2023-12-06 17:16:35'),
(2500, 'ar', 'use_background_color_in_this_section', 'Use background color in this section', '2023-12-06 17:16:35', '2023-12-06 17:16:35'),
(2501, 'ar', 'select_color', 'Select Color', '2023-12-06 17:16:35', '2023-12-06 17:16:35'),
(2502, 'ar', 'large_banner', 'Large Banner', '2023-12-06 17:16:35', '2023-12-06 17:16:35'),
(2503, 'ar', 'small_banner', 'Small Banner', '2023-12-06 17:16:35', '2023-12-06 17:16:35'),
(2504, 'ar', 'products_background_color', 'Products background color', '2023-12-06 17:16:35', '2023-12-06 17:16:35'),
(2505, 'ar', 'todays_deal_banner_text_color', 'Today\'s Deal Banner Text Color', '2023-12-06 17:16:35', '2023-12-06 17:16:35'),
(2506, 'ar', 'banner__links_max_3', 'Banner & Links (Max 3)', '2023-12-06 17:16:35', '2023-12-06 17:16:35'),
(2507, 'ar', 'background_image', 'Background Image', '2023-12-06 17:16:36', '2023-12-06 17:16:36'),
(2508, 'ar', 'subtitle', 'Subtitle', '2023-12-06 17:16:36', '2023-12-06 17:16:36'),
(2509, 'ar', 'top_brands_max_12', 'Top Brands (Max 12)', '2023-12-06 17:16:36', '2023-12-06 17:16:36'),
(2510, 'ar', 'footer_info_widget', 'Footer Info Widget', '2023-12-06 17:17:05', '2023-12-06 17:17:05'),
(2511, 'ar', 'footer_description', 'Footer description', '2023-12-06 17:17:05', '2023-12-06 17:17:05'),
(2512, 'ar', 'cover_image', 'Cover Image', '2023-12-06 17:23:33', '2023-12-06 17:23:33'),
(2513, 'ar', 'product_inquiry', 'Product Inquiry', '2023-12-06 17:23:51', '2023-12-06 17:23:51'),
(2514, 'ar', '_product_queries_', ' Product Queries ', '2023-12-06 17:23:53', '2023-12-06 17:23:53'),
(2515, 'ar', 'write_your_question_here', 'Write your question here...', '2023-12-06 17:23:53', '2023-12-06 17:23:53'),
(2516, 'ar', 'other_questions', 'Other Questions', '2023-12-06 17:23:53', '2023-12-06 17:23:53'),
(2517, 'ar', 'no_none_asked_to_seller_yet', 'No none asked to seller yet', '2023-12-06 17:23:53', '2023-12-06 17:23:53'),
(2518, 'ar', 'sorry_only_customers_can_give_review', 'Sorry, Only customers can give review.', '2023-12-06 17:23:54', '2023-12-06 17:23:54'),
(2519, 'ar', 'select_all', 'Select All', '2023-12-06 17:24:03', '2023-12-06 17:24:03'),
(2520, 'ar', 'add_brand', 'Add Brand', '2023-12-06 17:24:50', '2023-12-06 17:24:50'),
(2521, 'ar', 'edit_brand', 'Edit Brand', '2023-12-06 17:24:50', '2023-12-06 17:24:50'),
(2522, 'ar', 'delete_brand', 'Delete Brand', '2023-12-06 17:24:50', '2023-12-06 17:24:50'),
(2523, 'ar', 'report', 'Report', '2023-12-06 17:24:50', '2023-12-06 17:24:50'),
(2524, 'ar', 'in_kg', 'In Kg', '2023-12-06 17:25:36', '2023-12-06 17:25:36'),
(2525, 'ar', 'this_will_be_used_for_commission_based_calculations_and_homepage_category_wise_product_show', 'This will be used for commission based calculations and homepage category wise product Show.', '2023-12-06 17:25:36', '2023-12-06 17:25:36'),
(2526, 'ar', 'choose_flash_title', 'Choose Flash Title', '2023-12-06 17:25:36', '2023-12-06 17:25:36'),
(2527, 'ar', 'choose_discount_type', 'Choose Discount Type', '2023-12-06 17:25:36', '2023-12-06 17:25:36'),
(2528, 'ar', 'badges', 'Badges', '2023-12-06 17:32:38', '2023-12-06 17:32:38'),
(2529, 'ar', 'edit_badge', 'Edit Badge', '2023-12-06 17:33:19', '2023-12-06 17:33:19'),
(2530, 'ar', '', 'أضافة', '2023-12-08 09:35:09', '2023-12-08 09:35:09'),
(2531, 'ar', '___', 'تم إنشاء العميل بنجاح', '2023-12-08 09:36:55', '2023-12-08 09:36:55'),
(2532, 'ar', '______________', 'حساب تكلفة الشحن بالسعر الثابت: لا يهم عدد المنتجات التي يشتريها العميل. تكلفة الشحن ثابتة', '2023-12-08 09:56:12', '2023-12-08 09:56:12'),
(2533, 'ar', '________________________________', 'حساب تكلفة الشحن المسطحة للمنطقة: معدل ثابت لكل منطقة. إذا قام العملاء بشراء منتجات متعددة من بائع واحد، فسيتم حساب تكلفة الشحن حسب منطقة شحن العميل. لتكوين تكلفة الشحن حسب المنطقة، انتقل إلى', '2023-12-08 09:56:12', '2023-12-08 09:56:12'),
(2534, 'ar', 'or_join_with', 'Or Join With', '2023-12-08 10:10:18', '2023-12-08 10:10:18'),
(2535, 'ar', 'min_bid_amount_', 'Min Bid Amount: ', '2023-12-08 10:10:26', '2023-12-08 10:10:26'),
(2536, 'ar', 'test', 'Test', '2023-12-08 10:50:53', '2023-12-08 10:50:53'),
(2537, 'ar', 'backblaze_file_system_credentials', 'Backblaze File System Credentials', '2023-12-08 10:58:02', '2023-12-08 10:58:02'),
(2538, 'ar', 'backblaze_access_key_id', 'BACKBLAZE_ACCESS_KEY_ID', '2023-12-08 10:58:02', '2023-12-08 10:58:02'),
(2539, 'ar', 'backblaze_secret_access_key', 'BACKBLAZE_SECRET_ACCESS_KEY', '2023-12-08 10:58:02', '2023-12-08 10:58:02'),
(2540, 'ar', 'backblaze_default_region', 'BACKBLAZE_DEFAULT_REGION', '2023-12-08 10:58:02', '2023-12-08 10:58:02'),
(2541, 'ar', 'backblaze_bucket', 'BACKBLAZE_BUCKET', '2023-12-08 10:58:02', '2023-12-08 10:58:02'),
(2542, 'ar', 'backblaze_endpoint', 'BACKBLAZE_ENDPOINT', '2023-12-08 10:58:03', '2023-12-08 10:58:03'),
(2543, 'ar', 'backblaze_url', 'BACKBLAZE_URL', '2023-12-08 10:58:03', '2023-12-08 10:58:03'),
(2544, 'ar', 'aws_s3_file_system_activation', 'AWS S3 File System Activation', '2023-12-08 10:58:03', '2023-12-08 10:58:03'),
(2545, 'ar', 'backblaze_file_system_activation', 'Backblaze File System Activation', '2023-12-08 10:58:03', '2023-12-08 10:58:03'),
(2546, 'ar', 'local_file_system_activation', 'Local File System Activation', '2023-12-08 10:58:03', '2023-12-08 10:58:03'),
(2547, 'ar', 'language_has_been_deleted_successfully', 'Language has been deleted successfully', '2023-12-08 11:02:39', '2023-12-08 11:02:39'),
(2548, 'en', 'inhouse_auction_products', 'منتجات المزاد الداخليInhouse Auction Products', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2549, 'en', 'seller_auction_products', 'منتجات مزاد البائعSeller Auction Products', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2550, 'en', 'auction_products_orders', 'طلبات منتجات المزادAuction Products Orders', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2551, 'en', 'sales', 'المبيعاتSales', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2552, 'en', 'admin', 'مسؤل الموقع Admin', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2553, 'en', 'sorry_nothing_found_for', 'عذرا لا يوجن نتائج بحث عن Sorry Nothing Found For', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2554, 'en', 'notification', 'التنبيهات  Notification', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2555, 'en', 'all_orders', 'كل الطلباتAll Orders', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2556, 'en', 'download_your_products', 'تحميل منتجاتك الرقمية Download Your Products', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2557, 'en', 'inhouse_orders', 'أوامر داخليةInhouse Orders', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2558, 'en', 'delete_your_account', 'حذف حسابك  Delete Your Account', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2559, 'en', 'delete_my_account', 'حذف حسابي  Delete My Account', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2560, 'en', 'homepage_settings', 'أعدادات الصفحة الرئيسية  Homepage Settings', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2561, 'en', 'seller_orders', 'طلبات البائعSeller Orders', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2562, 'en', 'pickup_point_order', 'نقطة الاستلام للطلاباتPickup Point Order', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2563, 'en', 'delivery_boy', 'فتى التوصيلDelivery Boy', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2564, 'en', 'all_delivery_boy', 'جميع فتى التوصيلAll Delivery Boy', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2565, 'en', 'add_delivery_boy', 'إضافة صبي التوصيلAdd Delivery Boy', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2566, 'en', 'cancel_request', 'إلغاء الطلبCancel Request', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2567, 'en', 'login_to_your_seller_account', 'إلغاء Login To Your Seller Account', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2568, 'en', 'login_to_your_account', 'تسجيل الدخول لحسابك    Login To Your Account', '2023-12-08 11:03:22', '2023-12-08 11:03:22'),
(2569, 'en', 'terms_and_conditions', 'الأحكام والشروطTerms And Conditions', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2570, 'en', 'by_signing_up_you_agree_to_our', 'بالتسجيل فإنك توافق على   By Signing Up You Agree To Our', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2571, 'en', 'welcome_back_', 'مرحباً بعودتك  Welcome Back', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2572, 'en', 'password_must_contain_at_least_6_digits', 'يجب أن تحتوي كلمة المرور على 6 أرقام على الأقل Password Must Contain At Least 6 Digits', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2573, 'en', 'create_an_account', 'أنشاء حساب جديد Create An Account', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2574, 'en', 'configuration', 'الاعداداتConfiguration', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2575, 'en', 'subscribe_to_our_newsletter_for_regular_updates_about_offers_coupons__more', 'اشترك في النشرة الإخبارية لدينا للحصول على تحديثات منتظمة حول العروض والكوبونات والمزيدSubscribe To Our Newsletter For Regular Updates About Offers Coupons  More', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2576, 'en', 'refunds', 'المبالغ المستردةRefunds', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2577, 'en', 'contacts', 'تواصل معنا  Contacts', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2578, 'en', 'light', 'فاتح   Light', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2579, 'en', 'header_nav_menu_text_color', 'لون نص قائمة التنقل في الرأس  Header Nav Menu Text Color', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2580, 'en', 'topbar_banner_large', 'الصورة العلوية (فى الشاشات الكبيرة )  Topbar Banner Large', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2581, 'en', 'topbar_banner_medium', 'الصورة العلوية (فى الشاشات المتوسطة ) Topbar Banner Medium', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2582, 'en', 'topbar_banner_small', 'الصورة العلوية (فى الشاشات الصغيرة )  Topbar Banner Small', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2583, 'en', 'enter_your_email_address_and_new_password_and_confirm_password', 'أدخل عنوان بريدك الإلكتروني وكلمة المرور الجديدة وقم بتأكيد كلمة المرور  Enter Your Email Address And New Password And Confirm Password', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2584, 'en', 'reset_password', 'أستعادة كلمة المرور   Reset Password', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2585, 'en', 'refund_requests', 'طلبات الاستردادRefund Requests', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2586, 'en', 'approved_refunds', 'المبالغ المستردة المعتمدةApproved Refunds', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2587, 'en', 'rejected_refunds', 'المبالغ المستردة المرفوضةRejected Refunds', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2588, 'en', 'refund_configuration', 'إعدادات المبالغ المستردةRefund Configuration', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2589, 'en', 'customers', 'العملاءCustomers', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2590, 'en', 'customer_list', 'قائمة العملاءCustomer List', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2591, 'en', 'classified_products', 'المنتجات المبوبةClassified Products', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2592, 'en', 'classified_packages', 'الحزم المبوبةClassified Packages', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2593, 'en', 'sellers', 'الباعةSellers', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2594, 'en', 'all_seller', 'جميع الباعةAll Seller', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2595, 'en', 'payouts', 'المدفوعاتPayouts', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2596, 'en', 'payout_requests', 'طلبات الدفعPayout Requests', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2597, 'en', 'seller_commission', 'عمولة البائعSeller Commission', '2023-12-08 11:03:23', '2023-12-08 11:03:23'),
(2598, 'ar', 'choose_category', 'Choose Category', '2023-12-08 11:04:12', '2023-12-08 11:04:12'),
(2599, 'ar', 'less', 'Less', '2023-12-09 18:37:46', '2023-12-09 18:37:46'),
(2600, 'ar', 'more', 'More', '2023-12-09 18:37:46', '2023-12-09 18:37:46'),
(2601, 'ar', 'values', 'Values', '2023-12-09 20:42:53', '2023-12-09 20:42:53'),
(2602, 'ar', 'color_has_been_deleted_successfully', 'Color has been deleted successfully', '2023-12-09 20:49:48', '2023-12-09 20:49:48'),
(2603, 'ar', 'please_enable_ziparchive_extension', 'Please enable ZipArchive extension.', '2023-12-13 11:42:45', '2023-12-13 11:42:45'),
(2604, 'ar', 'check_all_permissions', 'Check all Permissions', '2023-12-13 11:46:39', '2023-12-13 11:46:39'),
(2605, 'ar', 'check_all', 'Check all', '2023-12-13 11:49:24', '2023-12-13 11:49:24'),
(2606, 'ar', 'city_has_been_inserted_successfully', 'City has been inserted successfully', '2023-12-13 12:59:08', '2023-12-13 12:59:08'),
(2607, 'ar', 'city_has_been_deleted_successfully', 'City has been deleted successfully', '2023-12-13 12:59:21', '2023-12-13 12:59:21'),
(2608, 'ar', 'new_role_has_been_added_successfully', 'New Role has been added successfully', '2023-12-13 14:47:52', '2023-12-13 14:47:52'),
(2609, 'ar', 'recharge_wallet', 'Recharge Wallet', '2023-12-15 12:39:44', '2023-12-15 12:39:44'),
(2610, 'ar', 'please_add_shipping_address', 'Please add shipping address', '2023-12-15 12:40:19', '2023-12-15 12:40:19'),
(2611, 'ar', 'change', 'Change', '2023-12-15 12:43:11', '2023-12-15 12:43:11'),
(2612, 'ar', 'inhouse_products', 'Inhouse Products', '2023-12-15 12:43:18', '2023-12-15 12:43:18'),
(2613, 'ar', 'you_order_amount_is_less_then_the_minimum_order_amount', 'You order amount is less then the minimum order amount', '2023-12-15 12:43:25', '2023-12-15 12:43:25'),
(2614, 'ar', 'you_need_to_put_transaction_id', 'You need to put Transaction id', '2023-12-15 12:43:25', '2023-12-15 12:43:25'),
(2615, 'ar', 'canceled_requests', 'Canceled Requests', '2023-12-15 12:56:40', '2023-12-15 12:56:40'),
(2616, 'ar', 'delivered_orders', 'Delivered Orders', '2023-12-15 12:57:20', '2023-12-15 12:57:20'),
(2617, 'ar', 'canceled_orders', 'Canceled Orders', '2023-12-15 12:57:27', '2023-12-15 12:57:27'),
(2618, 'ar', '_has_been_paid', ' has been Paid', '2023-12-15 13:09:40', '2023-12-15 13:09:40'),
(2619, 'ar', 'rejected', 'Rejected', '2023-12-15 13:10:36', '2023-12-15 13:10:36'),
(2620, 'ar', 'canceled', 'Canceled', '2023-12-15 13:10:36', '2023-12-15 13:10:36'),
(2621, 'ar', 'has_been_paid', 'has been Paid', '2023-12-15 13:18:53', '2023-12-15 13:18:53'),
(2622, 'ar', 'product_name_is_required', 'Product name is required', '2023-12-15 13:43:26', '2023-12-15 13:43:26'),
(2623, 'ar', 'product_category_is_required', 'Product category is required', '2023-12-15 13:43:26', '2023-12-15 13:43:26'),
(2624, 'ar', 'main_category_is_required', 'Main Category is required', '2023-12-15 13:43:26', '2023-12-15 13:43:26'),
(2625, 'ar', 'main_category_must_be_within_selected_categories', 'Main Category must be within selected categories', '2023-12-15 13:43:26', '2023-12-15 13:43:26'),
(2626, 'ar', 'product_unit_is_required', 'Product unit is required', '2023-12-15 13:43:26', '2023-12-15 13:43:26'),
(2627, 'ar', 'minimum_purchase_quantity_is_required', 'Minimum purchase quantity is required', '2023-12-15 13:43:26', '2023-12-15 13:43:26'),
(2628, 'ar', 'minimum_purchase_must_be_numeric', 'Minimum purchase must be numeric', '2023-12-15 13:43:26', '2023-12-15 13:43:26'),
(2629, 'ar', 'unit_price_is_required', 'Unit price is required', '2023-12-15 13:43:26', '2023-12-15 13:43:26'),
(2630, 'ar', 'unit_price_must_be_numeric', 'Unit price must be numeric', '2023-12-15 13:43:26', '2023-12-15 13:43:26'),
(2631, 'ar', 'discount_must_be_numeric', 'Discount must be numeric', '2023-12-15 13:43:26', '2023-12-15 13:43:26'),
(2632, 'ar', 'discount_cannot_be_gretaer_than_unit_price', 'Discount cannot be gretaer than unit price', '2023-12-15 13:43:26', '2023-12-15 13:43:26'),
(2633, 'ar', 'current_stock_is_required', 'Current stock is required', '2023-12-15 13:43:26', '2023-12-15 13:43:26'),
(2634, 'ar', 'current_stock_must_be_numeric', 'Current stock must be numeric', '2023-12-15 13:43:26', '2023-12-15 13:43:26'),
(2635, 'ar', 'starting_bid_is_required', 'Starting Bid is required', '2023-12-15 13:43:26', '2023-12-15 13:43:26'),
(2636, 'ar', 'starting_bid_must_be_numeric', 'Starting Bid must be numeric', '2023-12-15 13:43:26', '2023-12-15 13:43:26'),
(2637, 'ar', 'minimum_starting_bid_is_1', 'Minimum Starting Bid is 1', '2023-12-15 13:43:26', '2023-12-15 13:43:26'),
(2638, 'ar', 'auction_date_range_is_required', 'Auction Date Range is required', '2023-12-15 13:43:26', '2023-12-15 13:43:26'),
(2639, 'ar', 'customer_has_been_updated_successfully', 'Customer has been updated successfully', '2023-12-15 14:21:29', '2023-12-15 14:21:29'),
(2640, 'ar', 'save_page', 'Save Page', '2023-12-15 14:25:02', '2023-12-15 14:25:02'),
(2641, 'ar', 'new_page_has_been_created_successfully', 'New page has been created successfully', '2023-12-15 14:25:21', '2023-12-15 14:25:21'),
(2642, 'ar', 'pickup_points', 'Pick-up Points', '2023-12-16 05:24:53', '2023-12-16 05:24:53'),
(2643, 'ar', 'apple_client_id', 'Apple Client ID', '2023-12-16 05:27:50', '2023-12-16 05:27:50'),
(2644, 'ar', 'apple_client_secret', 'Apple Client Secret', '2023-12-16 05:27:50', '2023-12-16 05:27:50'),
(2645, 'ar', 'whatsapp_phone_number_sender', 'Whatsapp Phone Number Sender', '2023-12-16 05:35:02', '2023-12-16 05:35:02'),
(2646, 'ar', 'page_has_been_deleted_successfully', 'Page has been deleted successfully', '2023-12-16 05:40:47', '2023-12-16 05:40:47'),
(2647, 'ar', 'support_ticket_code_is', 'Support ticket Code is', '2023-12-16 06:26:59', '2023-12-16 06:26:59'),
(2648, 'ar', 'hi_a_ticket_has_been_created_please_check_the_ticket', 'Hi. A ticket has been created. Please check the ticket.', '2023-12-16 06:26:59', '2023-12-16 06:26:59'),
(2649, 'ar', 'details', 'Details', '2023-12-16 06:26:59', '2023-12-16 06:26:59'),
(2650, 'ar', 'see_ticket', 'See ticket', '2023-12-16 06:27:00', '2023-12-16 06:27:00'),
(2651, 'ar', 'ticket_has_been_sent_successfully', 'Ticket has been sent successfully', '2023-12-16 06:27:02', '2023-12-16 06:27:02'),
(2652, 'ar', 'closed', 'Closed', '2023-12-16 06:47:36', '2023-12-16 06:47:36'),
(2653, 'ar', 'replayed', 'Replayed', '2023-12-16 06:51:38', '2023-12-16 06:51:38'),
(2654, 'ar', 'reply_has_been_sent_successfully', 'Reply has been sent successfully', '2023-12-16 06:51:59', '2023-12-16 06:51:59'),
(2655, 'ar', 'hi_you_have_a_new_response_for_this_ticket_please_check_the_ticket', 'Hi. You have a new response for this ticket. Please check the ticket.', '2023-12-16 06:51:59', '2023-12-16 06:51:59'),
(2656, 'ar', 'send_reply', 'Send Reply', '2023-12-16 06:53:20', '2023-12-16 06:53:20'),
(2657, 'ar', 'please_write_note_here', 'Please Write Note Here', '2023-12-16 07:24:16', '2023-12-16 07:24:16'),
(2658, 'ar', 'order_notes', 'Order Notes', '2023-12-16 07:25:22', '2023-12-16 07:25:22'),
(2659, 'ar', 'saved_successfully', 'Saved Successfully', '2023-12-16 07:30:24', '2023-12-16 07:30:24'),
(2660, 'ar', 'update_and_backup', 'Update and Backup', '2023-12-16 12:42:52', '2023-12-16 12:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int NOT NULL,
  `file_original_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `file_size` int DEFAULT NULL,
  `extension` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `external_link` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `file_original_name`, `file_name`, `user_id`, `file_size`, `extension`, `type`, `external_link`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '406269925_705512298351466_5482575450280657122_n', 'uploads/all/JXaF0xPv8ja77Sq6LluZyNb1F4xzCzKYTsO7b4T2.jpg', 9, 85281, 'jpg', 'image', NULL, '2023-11-27 23:26:20', '2023-11-27 23:26:20', NULL),
(2, '406154261_704996618403034_6523074286317240510_n', 'uploads/all/VzxpVuv4ul4VOuPx9OJBQMvcrdwI2Xnzgvb7eGVG.jpg', 9, 77182, 'jpg', 'image', NULL, '2023-11-27 23:28:55', '2023-11-27 23:28:55', NULL),
(3, '406269925_705512298351466_5482575450280657122_n', 'uploads/all/9i2PuROzlP5ycHwzC17g5TwQ58rKp7EFVEMPvZWi.jpg', 9, 85281, 'jpg', 'image', NULL, '2023-11-27 23:31:40', '2023-11-27 23:31:48', '2023-11-27 23:31:48'),
(4, 'logo-w', 'uploads/all/4JtVVDh1JVBnXEAFOat3lx6KZaejN5Zo0Vlsbi8N.png', 9, 16993, 'png', 'image', NULL, '2023-11-27 23:36:48', '2023-11-27 23:36:48', NULL),
(5, 'logo', 'uploads/all/BmIjNlpnuXtQ8yQbxIwvltD2LE2ZviYYskfm4ZxD.png', 9, 18803, 'png', 'image', NULL, '2023-11-27 23:36:58', '2023-11-27 23:36:58', NULL),
(6, 'Login', 'uploads/all/neiP6hIk9XDSp2My9VlAABLcNa6z8luVM2mRteyK.png', 9, 77904, 'png', 'image', NULL, '2023-11-27 23:37:36', '2023-11-27 23:37:36', NULL),
(7, '3', 'uploads/all/f7VBUM6XeMANe1JaxJHcjXLTsyS0olZcQ3UuCse8.jpg', 9, 80884, 'jpg', 'image', NULL, '2023-11-28 00:31:06', '2023-11-28 00:31:06', NULL),
(8, '7', 'uploads/all/mDILMX9V0mdIhf791L47KDSwh0phqyCtLwXn814P.jpg', 9, 87001, 'jpg', 'image', NULL, '2023-11-28 00:31:29', '2023-11-28 00:31:29', NULL),
(9, '1', 'uploads/all/s20Z2cpgPK9Dh8bBwlcpaAizqQZLG2Adrs4pg11x.png', 9, 1116058, 'png', 'image', NULL, '2023-11-28 00:32:04', '2023-11-28 00:32:04', NULL),
(10, 'IMG_٢٠٢١١٠١٥_١٢٥٣٢٢', 'uploads/all/FmDpzgMBLVCGzz38jmq8f6gLw8VfLDo4ZO17Fzse.jpg', 9, 62245, 'jpg', 'image', NULL, '2023-11-28 11:49:21', '2023-11-28 11:49:21', NULL),
(34, 'IMG20220415175843', 'uploads/all/IMG20220415175843.webp', 11, 39420, 'webp', 'image', NULL, '2023-11-28 19:35:41', '2023-11-28 19:35:41', NULL),
(35, '2ev2ZSkbNMatarmFLOFFvXukC5yrBxoLyGWzJZVQ', 'uploads/all/2ev2ZSkbNMatarmFLOFFvXukC5yrBxoLyGWzJZVQ.webp', 9, 3382, 'webp', 'image', NULL, '2023-11-28 19:49:36', '2023-11-28 19:49:36', NULL),
(36, '8MqtdcU7P3nYIIYriq961yUONT519pV50SSgLpnU', 'uploads/all/8MqtdcU7P3nYIIYriq961yUONT519pV50SSgLpnU.webp', 9, 2300, 'webp', 'image', NULL, '2023-11-28 19:54:12', '2023-11-28 19:54:12', NULL),
(37, '1RutGcPmMYvLHiatsxAVq9l8XMM3IiuuvGUq20yh', 'uploads/all/1RutGcPmMYvLHiatsxAVq9l8XMM3IiuuvGUq20yh.webp', 9, 3172, 'webp', 'image', NULL, '2023-11-28 19:54:42', '2023-11-28 19:54:42', NULL),
(38, '5nCNVceSPSm0HLIvHp0cViVOjAUUrQtwXCVz67sN', 'uploads/all/5nCNVceSPSm0HLIvHp0cViVOjAUUrQtwXCVz67sN.webp', 9, 8598, 'webp', 'image', NULL, '2023-11-28 19:55:27', '2023-11-28 19:55:27', NULL),
(39, '0MLzc9v7TKFzEy93z16hpm7bvCl7lxgFCMFKxxSh', 'uploads/all/0MLzc9v7TKFzEy93z16hpm7bvCl7lxgFCMFKxxSh.webp', 9, 11384, 'webp', 'image', NULL, '2023-11-28 19:56:09', '2023-11-28 19:56:09', NULL),
(40, '9mzdYIglNyO2zsjK6IyKERNQpClVJpCWxy4zUMaH', 'uploads/all/9mzdYIglNyO2zsjK6IyKERNQpClVJpCWxy4zUMaH.webp', 9, 19286, 'webp', 'image', NULL, '2023-11-28 20:01:55', '2023-11-28 20:01:55', NULL),
(41, '5XVyeLGw5zRpb63bqgn2dtIOjCktLgBltNSQIPG3', 'uploads/all/5XVyeLGw5zRpb63bqgn2dtIOjCktLgBltNSQIPG3.webp', 9, 43918, 'webp', 'image', NULL, '2023-11-28 20:10:07', '2023-11-28 20:10:07', NULL),
(42, '6CvhQmd0QNEct8tsjlWcZGM3vOHFKkqYMYNruA6y', 'uploads/all/6CvhQmd0QNEct8tsjlWcZGM3vOHFKkqYMYNruA6y.webp', 9, 20534, 'webp', 'image', NULL, '2023-11-28 20:10:07', '2023-11-28 20:10:07', NULL),
(43, '7eLAP9Fx3RyoDU2imFEW1B0kasAmCvIagFbH9HCJ', 'uploads/all/7eLAP9Fx3RyoDU2imFEW1B0kasAmCvIagFbH9HCJ.webp', 9, 3726, 'webp', 'image', NULL, '2023-11-28 20:10:32', '2023-11-28 20:10:32', NULL),
(44, '4566537-assassin039s-creed-video-games-rooftops-parkour-sequence-photography', 'uploads/all/4566537-assassin039s-creed-video-games-rooftops-parkour-sequence-photography.webp', 14, 155606, 'webp', 'image', NULL, '2023-12-01 23:27:16', '2023-12-01 23:27:16', NULL),
(45, '407967808_1505569723569109_6475068299130644867_n', 'uploads/all/407967808_1505569723569109_6475068299130644867_n.webp', 26, 103230, 'webp', 'image', NULL, '2023-12-08 10:11:16', '2023-12-08 10:11:16', NULL),
(46, 'code4arab21', 'uploads/all/code4arab21.webp', 9, 162712, 'webp', 'image', NULL, '2023-12-15 10:53:51', '2023-12-15 10:53:51', NULL),
(47, 'BANNER', 'uploads/all/BANNER.webp', 9, 32194, 'webp', 'image', NULL, '2023-12-15 14:04:45', '2023-12-15 14:04:45', NULL),
(48, 'advices', 'uploads/all/advices.webp', 9, 43230, 'webp', 'image', NULL, '2023-12-15 14:10:33', '2023-12-15 14:10:33', NULL),
(49, 'ads', 'uploads/all/ads.webp', 9, 60192, 'webp', 'image', NULL, '2023-12-15 14:11:10', '2023-12-15 14:11:10', NULL),
(50, 'ads', 'uploads/all/ads.webp', 9, 63850, 'webp', 'image', NULL, '2023-12-15 14:12:28', '2023-12-15 14:12:28', NULL),
(51, 'advices', 'uploads/all/advices.webp', 9, 47108, 'webp', 'image', NULL, '2023-12-15 14:13:14', '2023-12-15 14:13:14', NULL),
(52, '3', 'uploads/all/3.webp', 9, 40048, 'webp', 'image', NULL, '2023-12-15 14:15:49', '2023-12-15 14:15:49', NULL),
(53, 'avatar-place', 'uploads/all/avatar-place.webp', 9, 1328, 'webp', 'image', NULL, '2023-12-15 14:16:46', '2023-12-15 14:16:46', NULL),
(54, '5', 'uploads/all/5.webp', 9, 67206, 'webp', 'image', NULL, '2023-12-15 14:17:00', '2023-12-15 14:17:00', NULL),
(55, '4', 'uploads/all/4.webp', 9, 74242, 'webp', 'image', NULL, '2023-12-16 06:18:06', '2023-12-16 06:18:06', NULL),
(56, 'avatar-place', 'uploads/all/avatar-place.webp', 9, 1328, 'webp', 'image', NULL, '2023-12-16 06:19:11', '2023-12-16 06:19:11', NULL),
(57, '403', 'uploads/all/aDDE7CrrZ2b9Cv4hpCvOehx5qNdzY7021taZDT72.svg', 9, 38772, 'svg', 'image', NULL, '2023-12-16 06:20:25', '2023-12-16 06:20:25', NULL),
(58, 'ads', 'uploads/all/ads.webp', 9, 59886, 'webp', 'image', NULL, '2023-12-16 06:24:28', '2023-12-16 06:24:28', NULL),
(59, '5', 'uploads/all/5.webp', 34, 64424, 'webp', 'image', NULL, '2023-12-16 06:26:52', '2023-12-16 06:26:52', NULL),
(60, '3', 'uploads/all/3.webp', 34, 40584, 'webp', 'image', NULL, '2023-12-16 06:27:18', '2023-12-16 06:27:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `referred_by` int DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `provider_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `refresh_token` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `access_token` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `user_type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'customer',
  `name` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `new_email_verificiation_code` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `password` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `avatar` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `country` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `state` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `city` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `balance` double(20,2) NOT NULL DEFAULT '0.00',
  `banned` tinyint NOT NULL DEFAULT '0',
  `referral_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `customer_package_id` int DEFAULT NULL,
  `remaining_uploads` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `referred_by`, `provider`, `provider_id`, `refresh_token`, `access_token`, `user_type`, `name`, `email`, `email_verified_at`, `verification_code`, `new_email_verificiation_code`, `password`, `remember_token`, `device_token`, `avatar`, `avatar_original`, `address`, `country`, `state`, `city`, `postal_code`, `phone`, `balance`, `banned`, `referral_code`, `customer_package_id`, `remaining_uploads`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, NULL, NULL, NULL, 'seller', 'Mr. Seller', 'seller@example.com', '2018-12-11 18:00:00', NULL, NULL, '$2y$10$eUKRlkmm2TAug75cfGQ4i.WoUbcJ2uVPqUlVkox.cv4CCyGEIMQEm', 'pEFqi9Gm9144kLhhG6d3Bp9hwNRZjVkgshDasgXfbWS3iNRhAjw7bClbmOUn', NULL, 'https://lh3.googleusercontent.com/-7OnRtLyua5Q/AAAAAAAAAAI/AAAAAAAADRk/VqWKMl4f8CI/photo.jpg?sz=50', NULL, 'Demo address', 'US', NULL, 'Demo city', '1234', NULL, 0.00, 0, '3dLUoHsR1l', NULL, NULL, '2018-10-07 04:42:57', '2020-03-05 01:33:22'),
(8, NULL, NULL, NULL, NULL, NULL, 'customer', 'Skyler Cortez', 'vymece@mailinator.com', '2018-12-11 18:00:00', NULL, NULL, '$2y$10$Ijhyxv2E9Q40B70PG48X/eN4CGSPnFr/JE3b11jdvQ3VkVtZ2KURS', '9ndcz5o7xgnuxctJIbvUQcP41QKmgnWCc7JDSnWdHOvipOP2AijpamCNafEe', NULL, 'https://lh3.googleusercontent.com/-7OnRtLyua5Q/AAAAAAAAAAI/AAAAAAAADRk/VqWKMl4f8CI/photo.jpg?sz=50', NULL, 'Demo address', 'US', NULL, 'Demo city', '1234', '+1 (785) 236-4243', 0.00, 0, '8zJTyXTlTT', NULL, NULL, '2018-10-07 04:42:57', '2023-12-02 01:46:31'),
(9, NULL, NULL, NULL, NULL, NULL, 'admin', 'أحمد حجازي', 'ahmedhegazi214@gmail.com', '2023-11-27 23:11:25', '537277', NULL, '$2y$10$6b2kdfhdSab5YFL/5UU/VeeEapvThxzSTu9OUh8Qs5SRvJ/Aglcxy', 'gF7s2TxdI0MfkFMMGC1FY2QZXaQP7be0m9sOzq0VIoEmM1Bq5j9InDduSGme', NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, NULL, '2023-11-28 11:49:33'),
(10, NULL, NULL, NULL, NULL, NULL, 'customer', 'Vivian Nunez', 'haxacuqitu@mailinator.com', '2023-11-27 23:11:15', NULL, NULL, '$2y$10$ESz5vYDLDUzqnMiaYAKCq.Q4vuhysExQKorBsyExg1hCPUH4hyLWi', 'SJNher9JmzgI7atubySDVPBbi81iuWrVi1DvKLDhoPHIeExar2qdq5XxYrgt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2023-11-27 23:34:15', '2023-11-27 23:34:15'),
(11, NULL, NULL, NULL, NULL, NULL, 'customer', 'Ora Maxwell', 'keta@mailinator.com', '2023-11-28 17:11:26', NULL, NULL, '$2y$10$RKwYqTsbJfNavlI/YIoSJ.0Q3FH9zbvTj074LqMwWOv./4CpPyohG', NULL, NULL, NULL, '34', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2023-11-28 17:47:26', '2023-11-28 19:35:54'),
(12, NULL, NULL, NULL, NULL, NULL, 'customer', 'Nolan Sharp', 'fedy@mailinator.com', '2023-11-28 20:11:09', NULL, NULL, '$2y$10$fpURVAYQUIcHLyi607SnlefK0i3t5omIxAJT5JW3LXeIlqNUfyAei', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2023-11-28 20:15:09', '2023-11-28 20:15:09'),
(13, NULL, NULL, NULL, NULL, NULL, 'customer', 'Harlan Potts', 'namapyj@mailinator.com', '2023-12-01 14:12:45', NULL, NULL, '$2y$10$xh.0F57eolXG06MgTSDvJeCK3qz1NnlyuwV5cxKJi.WpX5iUlHECu', 'gDdvI10O9sq47AoyOjsRSHjWo5X8KDINLJKtLRPOfkZEs4fAMKv7nkykCMMB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2023-12-01 14:05:45', '2023-12-01 14:05:45'),
(14, NULL, NULL, NULL, NULL, NULL, 'customer', 'أحمد محمد حجازي أحمد', 'gyjehypemi@mailinator.com', '2023-12-01 14:12:34', NULL, NULL, '$2y$10$5FFS9q5rT12w61m3ih2Nsu3eSyETjayt./sTFaLBZfOV1WnK82kvO', 'UWZTKi97Pkhrlvb7ngmljgXnZQlEoQdyW2sYaJ54wrRqBFALhG3lCygLI6XL', NULL, NULL, '44', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2023-12-01 14:15:34', '2023-12-01 23:27:31'),
(15, NULL, NULL, NULL, NULL, NULL, 'seller', 'Signe Graham', 'coxoguzu@mailinator.com', '2023-12-02 01:12:15', NULL, NULL, '$2y$10$KhJ8.nxQW41R1M0M0vugFuQvMCddWQySzypbFUHc.5enrvXM52ZCG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2023-12-02 01:34:15', '2023-12-02 01:34:15'),
(16, NULL, NULL, NULL, NULL, NULL, 'seller', 'Molly Wolfe', 'rabivevy@mailinator.com', '2023-12-02 01:12:46', NULL, NULL, '$2y$10$FRpGph9gjFnXFpR2An7D8usSHHj1vyg74qeSYzfSZ.sgf3Bc.TuO6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2023-12-02 01:34:46', '2023-12-02 01:34:46'),
(17, NULL, NULL, NULL, NULL, NULL, 'customer', 'Bo Durham', 'hibar@mailinator.com', '2023-12-02 03:35:43', NULL, NULL, 'Pa$$w0rd!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2023-12-02 01:35:06', '2023-12-02 01:35:06'),
(18, NULL, NULL, NULL, NULL, NULL, 'customer', 'Keane Francis', 'pipop@mailinator.com', '2023-12-02 03:35:44', NULL, NULL, 'Pa$$w0rd!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2023-12-02 01:35:23', '2023-12-02 01:35:23'),
(19, NULL, NULL, NULL, NULL, NULL, 'customer', 'Serena Moses', 'kanavy@mailinator.com', '2023-12-02 03:37:01', NULL, NULL, 'Pa$$w0rd!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2023-12-02 01:36:37', '2023-12-02 01:36:37'),
(20, NULL, NULL, NULL, NULL, NULL, 'customer', 'Gannon Hawkins', 'cobuhudik@mailinator.com', NULL, NULL, NULL, 'Pa$$w0rd!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2023-12-02 01:37:07', '2023-12-02 01:37:07'),
(21, NULL, NULL, NULL, NULL, NULL, 'customer', 'Hope Grant', 'symax@mailinator.com', '2023-12-02 01:37:29', NULL, NULL, 'Pa$$w0rd!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2023-12-02 01:37:29', '2023-12-02 01:37:29'),
(23, NULL, NULL, NULL, NULL, NULL, 'customer', 'Glenna Witt', 'cutos@mailinator.com', '2023-12-02 01:59:21', NULL, NULL, '$2y$10$MZJ1UAAS5e9XXToAsqtdMO9DMQX5JXoa7.qLdNiLXDbLGUcVEDUj.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07598745632', 0.00, 0, NULL, NULL, 0, '2023-12-02 01:59:21', '2023-12-02 01:59:21'),
(24, NULL, NULL, NULL, NULL, NULL, 'customer', 'Leslie Hampton', 'dudityxo@mailinator.com', '2023-12-08 09:36:55', NULL, NULL, '$2y$10$XPk0Q8Iq4dZr9eM4m6ikc.xIfmcassYTZSuCP0TpuOOvUjpDgos9S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07598745632', 0.00, 0, NULL, NULL, 0, '2023-12-08 09:36:55', '2023-12-08 09:36:55'),
(25, NULL, NULL, NULL, NULL, NULL, 'customer', 'Lillian Burton', 'gykem@mailinator.com', '2023-12-08 09:46:30', NULL, NULL, '$2y$10$pfNWBBiB43UFJakv/dgbNOPo9T8i/LjoRHP19WyN2xiKKsieCh4L2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7598745632', 0.00, 0, NULL, NULL, 0, '2023-12-08 09:46:30', '2023-12-08 09:46:30'),
(26, NULL, NULL, NULL, NULL, NULL, 'customer', 'Eagan Medina', 'wizuv@mailinator.com', '2023-12-08 10:12:24', NULL, NULL, '$2y$10$1XuT6ZOHxmnIWTSfjODZT.VvEfZ7Ni/AHpP4mksTlMROuETNeMjhq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2023-12-08 10:10:23', '2023-12-08 10:10:24'),
(27, NULL, NULL, NULL, NULL, NULL, 'customer', 'Felicia Walter', 'roxokowefo@mailinator.com', '2023-12-08 10:14:44', NULL, NULL, '$2y$10$7WpopwYDh6iD.Bxa/KaLlOKwuzTTdT1csJF0/SIsScFAwJvZYp2Se', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7801191466', 0.00, 0, NULL, NULL, 0, '2023-12-08 10:14:44', '2023-12-15 14:21:29'),
(28, NULL, NULL, NULL, NULL, NULL, 'staff', 'Renee Wilder', 'tewag@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enim eiusmod odio no', 0.00, 0, NULL, NULL, 0, '2023-12-13 14:49:40', '2023-12-13 14:49:40'),
(29, NULL, NULL, NULL, NULL, NULL, 'staff', 'Tyrone Potts', 'tacebo@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '46', NULL, NULL, NULL, NULL, NULL, 'Laudantium aute com', 0.00, 0, NULL, NULL, 0, '2023-12-15 10:54:00', '2023-12-15 10:54:00'),
(30, NULL, NULL, NULL, NULL, NULL, 'staff', 'Chantale Snider', 'zezupi@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, '46', NULL, NULL, NULL, NULL, NULL, NULL, 'Illum nulla archite', 0.00, 0, NULL, NULL, 0, '2023-12-15 10:58:33', '2023-12-15 10:58:33'),
(31, NULL, NULL, NULL, NULL, NULL, 'staff', 'Macey Callahan', 'wogypurih@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '42', NULL, NULL, NULL, NULL, NULL, 'Qui eum alias possim', 0.00, 0, NULL, NULL, 0, '2023-12-15 11:00:22', '2023-12-15 11:00:22'),
(32, NULL, NULL, NULL, NULL, NULL, 'staff', 'Yoko Alexander', 'bafagaput@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Officia sed est esse', 0.00, 0, NULL, NULL, 0, '2023-12-15 12:13:13', '2023-12-15 12:13:13'),
(33, NULL, NULL, NULL, NULL, NULL, 'customer', 'Reese Ingram', 'jotydaruha@mailinator.com', '2023-12-15 12:39:38', NULL, NULL, '$2y$10$6MILzBPWVG/soVF5n4dMLu3JBzkOfgYpOAC84N.uk4TN9KQt/RPyu', 'Nyj4ggnGW0HhhcDvQFpIHs34gEhXXmkjkOsY1D0Kceo6U7alYbg1bgW6Og67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7801111466', 0.00, 0, NULL, NULL, 0, '2023-12-15 12:39:38', '2023-12-15 12:39:38'),
(34, NULL, NULL, NULL, NULL, NULL, 'customer', 'Emmanuel Wall', 'nedij@mailinator.com', '2023-12-15 14:21:17', NULL, NULL, '$2y$10$egRPvnQEy5vRq8bpiCisxu2woLGU52R/M4CCmubEHzAFA2d3kFv6.', 'tmM34OahaEVU2wAgGHijdyt2VkVL728b46VmAzkEnseiPZxRfQyzLxvvSGHo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7896236545', 0.00, 0, NULL, NULL, 0, '2023-12-15 14:21:17', '2023-12-15 14:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_classifications`
--

CREATE TABLE `user_classifications` (
  `id` bigint UNSIGNED NOT NULL,
  `classification_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_classifications`
--

INSERT INTO `user_classifications` (`id`, `classification_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 23, '2023-12-02 03:56:40', '2023-12-02 03:56:40'),
(2, 2, 23, '2023-12-02 03:56:40', '2023-12-02 03:56:40'),
(3, 1, 14, '2023-12-02 04:01:37', '2023-12-02 04:01:37'),
(4, 2, 14, '2023-12-02 04:01:37', '2023-12-02 04:01:37'),
(5, 3, 14, '2023-12-02 04:01:37', '2023-12-02 04:01:37'),
(6, 4, 14, '2023-12-02 04:01:37', '2023-12-02 04:01:37'),
(7, 5, 14, '2023-12-02 04:01:37', '2023-12-02 04:01:37'),
(8, 1, 24, '2023-12-08 09:38:51', '2023-12-08 09:38:51'),
(9, 2, 24, '2023-12-08 09:38:51', '2023-12-08 09:38:51'),
(10, 3, 24, '2023-12-08 09:38:51', '2023-12-08 09:38:51'),
(11, 1, 21, '2023-12-08 09:39:11', '2023-12-08 09:39:11'),
(12, 2, 21, '2023-12-08 09:39:11', '2023-12-08 09:39:11'),
(13, 3, 21, '2023-12-08 09:39:11', '2023-12-08 09:39:11'),
(14, 4, 21, '2023-12-08 09:39:11', '2023-12-08 09:39:11'),
(15, 5, 21, '2023-12-08 09:39:11', '2023-12-08 09:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `amount` double(20,2) NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payment_details` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 12, 4, '2023-11-28 20:15:15', '2023-11-28 20:15:15'),
(2, 12, 7, '2023-11-28 20:15:18', '2023-11-28 20:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = Inactive, 1 = Active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_translations`
--
ALTER TABLE `app_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_category`
--
ALTER TABLE `attribute_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carriers`
--
ALTER TABLE `carriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carrier_ranges`
--
ALTER TABLE `carrier_ranges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carrier_range_prices`
--
ALTER TABLE `carrier_range_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classifications`
--
ALTER TABLE `classifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combined_orders`
--
ALTER TABLE `combined_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission_histories`
--
ALTER TABLE `commission_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_packages`
--
ALTER TABLE `customer_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_package_payments`
--
ALTER TABLE `customer_package_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_products`
--
ALTER TABLE `customer_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firebase_notifications`
--
ALTER TABLE `firebase_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payku_payments`
--
ALTER TABLE `payku_payments`
  ADD UNIQUE KEY `payku_payments_transaction_id_unique` (`transaction_id`);

--
-- Indexes for table `payku_transactions`
--
ALTER TABLE `payku_transactions`
  ADD UNIQUE KEY `payku_transactions_id_unique` (`id`),
  ADD UNIQUE KEY `payku_transactions_order_unique` (`order`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pickup_points`
--
ALTER TABLE `pickup_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `tags` (`tags`(255)),
  ADD KEY `unit_price` (`unit_price`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `product_queries`
--
ALTER TABLE `product_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_taxes`
--
ALTER TABLE `product_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proxypay_payments`
--
ALTER TABLE `proxypay_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_credentials`
--
ALTER TABLE `social_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_classifications`
--
ALTER TABLE `user_classifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app_translations`
--
ALTER TABLE `app_translations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attribute_category`
--
ALTER TABLE `attribute_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `carriers`
--
ALTER TABLE `carriers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carrier_ranges`
--
ALTER TABLE `carrier_ranges`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carrier_range_prices`
--
ALTER TABLE `carrier_range_prices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19078;

--
-- AUTO_INCREMENT for table `classifications`
--
ALTER TABLE `classifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `combined_orders`
--
ALTER TABLE `combined_orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `commission_histories`
--
ALTER TABLE `commission_histories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `customer_packages`
--
ALTER TABLE `customer_packages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_package_payments`
--
ALTER TABLE `customer_package_payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_products`
--
ALTER TABLE `customer_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `firebase_notifications`
--
ALTER TABLE `firebase_notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickup_points`
--
ALTER TABLE `pickup_points`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_queries`
--
ALTER TABLE `product_queries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `product_taxes`
--
ALTER TABLE `product_taxes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proxypay_payments`
--
ALTER TABLE `proxypay_payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_credentials`
--
ALTER TABLE `social_credentials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2661;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user_classifications`
--
ALTER TABLE `user_classifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payku_payments`
--
ALTER TABLE `payku_payments`
  ADD CONSTRAINT `payku_payments_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `payku_transactions` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
