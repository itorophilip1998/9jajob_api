-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 20, 2023 at 07:42 PM
-- Server version: 10.5.20-MariaDB-cll-lve-log
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajajtble_9jajob`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `zip` text DEFAULT NULL,
  `website` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `linkedin` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `pinterest` text DEFAULT NULL,
  `youtube` text DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `password` text NOT NULL,
  `token` text NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `country`, `address`, `state`, `city`, `zip`, `website`, `facebook`, `twitter`, `linkedin`, `instagram`, `pinterest`, `youtube`, `photo`, `banner`, `password`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sammy', 'Info@9jajob.com', '08132547433', 'Nigeria', 'Topland', 'Lagos', 'Lagos', '00443', 'https://www.9jajob.com', '#', '#', '#', NULL, NULL, NULL, '9ead0b550b7e8cb1fe5351e7893bea6c.jpg', '13acc21245be96efbe24de7d4c690476.jpg', '$2y$10$idqmEK3TKgJ5.443UmLQGu1kFZmFcMfCxjfy3UgblIaMbNYkHAT7a', '', 'Active', NULL, '2023-01-23 23:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amenity_name` text NOT NULL,
  `amenity_slug` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `amenity_name`, `amenity_slug`, `created_at`, `updated_at`) VALUES
(1, 'Free Wifi', 'free-wifi', '2021-07-06 13:16:34', '2021-07-06 13:16:34'),
(2, 'Swimming Pool', 'swimming-pool', '2021-07-06 13:16:42', '2021-07-06 13:16:42'),
(3, 'Car Parking Lot', 'car-parking-lot', '2021-07-06 13:16:52', '2021-07-06 13:16:52'),
(4, 'Breakfast and Dinner', 'breakfast-and-dinner', '2021-07-06 13:17:05', '2021-07-06 13:17:05'),
(5, 'Currency Exchange', 'currency-exchange', '2021-07-06 13:18:07', '2021-07-06 13:18:07'),
(6, 'Television', 'television', '2021-07-06 13:18:25', '2021-07-06 13:18:25'),
(7, 'Fitness Center', 'fitness-center', '2021-07-06 13:18:43', '2021-07-06 13:18:43'),
(8, 'Gaming Corner', 'gaming-corner', '2021-07-06 13:18:52', '2021-07-06 13:18:52'),
(9, 'Home service', 'Home service', '2022-12-24 00:31:52', '2022-12-24 00:31:52'),
(10, 'Home delivery', 'Home delivery', '2022-12-24 00:32:13', '2022-12-24 00:32:13'),
(11, 'Nationwide delivery', 'Nationwide-delivery', '2023-01-24 01:22:15', '2023-01-24 01:22:15'),
(12, 'Online Services only', 'Online-services-only', '2023-04-12 11:15:21', '2023-04-12 11:15:21'),
(13, 'Online sales only', 'Online-sales-only', '2023-04-12 11:17:25', '2023-04-12 11:17:25'),
(14, 'Physical and online services', 'Physical-and-online-services', '2023-04-12 11:18:34', '2023-04-12 11:18:34'),
(15, 'CAC Registered', 'CAC-Registered', '2023-04-12 21:10:44', '2023-04-12 21:10:44'),
(16, 'Physical office/shop', 'Physical-office/shop', '2023-04-12 21:11:57', '2023-04-12 21:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) DEFAULT NULL,
  `post_content` text NOT NULL,
  `post_content_short` text NOT NULL,
  `post_photo` varchar(255) NOT NULL,
  `comment_show` text NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `post_title`, `post_slug`, `post_content`, `post_content_short`, `post_photo`, `comment_show`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nature of small Business', 'Small-Business', '<p>In our country traditional and modern practice exist in small&nbsp;<span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">industries which are divided into eight various groups</span></p><p>handicraft, coir, handloom, sericulture, power looms, Village&nbsp;<span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">industries and small industries. The power loom industry and&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">small scale industry come under modern small industries&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">whereas the rest come under traditional practice. Village arid&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">small industries give the maximum employment opportunity in&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">India. Before we try to understand the concept nature or&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">meaning of this small business we should know how the size&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">of business is defined.&nbsp;</span></p><p><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">Different parameters are used to&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">measure the size of business these include the number of&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">employees, capital invested for that business, the volume and&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">value of output delivered and the power consumption for&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">business activities. All these parameters come with limitations&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">and depending on the requirements the measures can vary. in&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">India the small scale industries are defined by the Investmen&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">in Plant and machinery, keeping in mind the socio-economic&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">environment in India were the capital resource is scarce and&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">labour availability is abundant. The other important point to be&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">noted is that this definition exists only for small scale&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">industries and units and not for large or medium industries.</span></p><p><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">Small businesses surround us. They are on every other street&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">and in every corner. Every second thing someone buys comes&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">from a small business. in India where unemployment is a&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">serious issue, small business gains a special position in the&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">industrial structure because of their ability to utilize labor and&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">create employment. Let us learn about meaning, nature and&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">types of small business. Small businesses are either services&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">or retail operations like grocery stores, medical stores, trades&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">people, bakeries and small manufacturing units. Small&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">businesses are independently owned organisations that&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">require less capital and less workforce and less or no&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">machinery. These businesses are ideally suited to operate on&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">a small scale to serve a local community and to provide profits&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">to the company owners.</span></p><p><b style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">Nature Of Small Businesses:</b><br></p><p>The nature of small businesses<span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">can be classified as follows:</span></p><p>1. Shoestring Budget: A sole proprietor or a small group of&nbsp;<span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">people operate small businesses. These businesses often run&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">on shoestring budget\' meaning that small businesses function&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">on a very tight budget.</span></p><p>2. Labour intensive: Small businesses are mostly labour&nbsp;<span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">intensive. Various types of small business largely rely on&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">labour for their functioning. The primary nature of small&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">businesses is more involvement of physical work rather than&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">intellectual work. The lack of machinery makes the employees&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">manage their operations manually.</span></p><p>3. Community-based: Small businesses are started with the&nbsp;<span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">motive of satisfying the needs and demands of a local area or&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">community. These businesses demographically target few&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">areas of concentration and are hence community-based.</span></p><p>4. Indigenous technology: Due to small businesses being&nbsp;<span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">community focused and labour oriented they often thrive upon&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">native methods of operations. In India,, there are many&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">businesses in the rural sector that still use outdated&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">technology. This might give uniqueness to the products but&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">hinders the development of the business.</span></p><p><br></p><p><b>Characteristics of Small Business Enterprises:&nbsp;</b></p><p><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">&nbsp;Some of</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">the salient characteristics of small business enterprises are</span></p><p>stated below:</p><p>(i) Limited Investment: In a small business enterprise, capital&nbsp;<span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">is supplied by an individual or a small group of individuals. As&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">per a census of small scale units in Nigeria, mostly small&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">business enterprises are run as sole-proprietorship and&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">partnership.</span></p><p>(lil) Personal Characters Owner-Management: A small&nbsp;<span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">business is identified with its owners; who themselves act as&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">managers. Managers as such have maximum motivation to&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">work; as they themselves happen to be the owners also, at the&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">same time.</span></p><p>(3)</p><p>Nil) Labour-Intensive: Small business enterprises are mostly&nbsp;<span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">labour-intensive. The machinery and equipment used are notB</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">very sophisticated and are operated manually.</span></p><p>(iv) Unorganized Labour: Small business enterprises employ&nbsp;<span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">less number of workers as compared with big business&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">enterprises. Workers of these units, do not form labour unions&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">and remain unprotected.</span></p><p>(v) Local Area of Operations:&nbsp;<span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">The area of operations of small units is generally local as they&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">have less capital and less marketing facilities at their disposal.&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">There is a local touch between employer and employees; and&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">between employer and customers though products of some&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">small scale enterprises are exported to many countries of the&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">world.</span></p><p><b>CATEGORY OF SMALL SCALE INDUSTRY</b></p><p>On the basis of capital Invested small business in Nigeria falls&nbsp;<span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">under these categories:</span></p><p><b>Small Scale Industry:</b> These small scale industry&nbsp;<span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">undertakings have a fixed amount as investment where in the&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">investment on fixed assets of plant and machinery should not&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">exceed Fifty thousand Naira. However to promote export and&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">modernize such small industry the investment ceiling in plant&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">and machinery is Thirty five thousand Naira.</span></p><p><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">ill. Ancillary Small Industrial Unit A small scale industry&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">becomes an ancillary industry to another industry by supplying&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">a minimum of 50 percent of its production to the other industry&nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">which is referred as parent unit.&nbsp;</span></p><p><br></p>', 'Small businesses surround us. They are on every other street and in every corner. Every second thing someone buys comes from a small business.', '2d7d524e79cadfe134470418693457b5.jpg', 'Yes', 'Nature of small business in Nigeria', 'Small businesses surround us. They are on every other street and in every corner. Every second thing someone buys comes from a small business.', '2021-07-24 17:30:14', '2023-01-22 01:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'City Guide', 'city-guide', 'City Guide', 'City Guide', '2020-11-19 10:00:01', '2021-05-23 21:38:48'),
(4, 'Hotel Guide', 'hotel-guide', 'Hotel Guide', 'Hotel Guide', '2020-11-28 00:07:59', '2021-07-06 03:53:26'),
(8, 'Business Tour', 'business-tour', 'Business Tour', 'Business Tour', '2021-07-24 17:39:05', '2021-07-24 17:39:05'),
(15, 'Restaurant', 'restaurant', 'Restaurant', 'Restaurant', '2021-07-24 17:57:11', '2021-07-24 17:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL,
  `person_name` text NOT NULL,
  `person_email` text NOT NULL,
  `person_comment` text NOT NULL,
  `comment_status` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_pages`
--

CREATE TABLE `dynamic_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dynamic_page_name` text NOT NULL,
  `dynamic_page_slug` text DEFAULT NULL,
  `dynamic_page_content` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `et_subject` text NOT NULL,
  `et_content` text NOT NULL,
  `et_name` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `et_subject`, `et_content`, `et_name`, `created_at`, `updated_at`) VALUES
(1, 'Contact Form Message', '<p>A person has messaged you. Please see it below:&nbsp;<br><br><b>Visitor Message:</b></p><p>Visitor Name: <br>[[visitor_name]]</p><p>Visitor Email: <br>[[visitor_email]]</p><p>Visitor Phone: <br>[[visitor_phone]]</p><p>Visitor Message: <br>[[visitor_message]]<img src=\"data:image/jpeg;base64,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d998888888888888CDDDDDDDP/8A/wD/AP8A/wD+5LIIIAAARzz77zzz7z//ADhBBBBBBBBBBNN99888888888888888DDDDDPf/AP8A/wD/AP8A+sNKIIIAAwxzz77zzzz33mEEEEEEEEEEEV333zzzzzzzzDDDTzzzzzwMMc//AP8A/wD/AP736yCAAAAAMc8++88899995hBBBBBBBBBBN99888888888888888888888Pf8A/wD/AP8A/wD/AOiCCCCAAAMc8++++8899xxBBBBBBBBBFNN9w88888888888IU8888888888/wD/AP8A/wD/ALrIAIIIIITzz77zz77z/wBxBBBBBBHLBBBN9988888888888888888888889999/wD/APvPKAAAAAIY57777zz3333mEEEEEEbV1yx05X3zzzzzzzzywwwwxzzzzzzzzz33EEH/AOOCCAAAAEc88+88++9995xBBBBBBDNc8888888o/wDPPPMNDPPPPPPPPPPPPPfccQQQQQggggAABPPPvvPPPPPfcYQQQQQQQQ/vPPPPPPPPPPdfPPPPPPPPPPPPPPPfeYQQQQQQQQgAAAjvvvvvPPPPPfcYQQQQQQQQQV/PPPN/PUdvPPHPPPPPPPPPPPPPPPccQQQQQQQQQQADPPvvvvvvvffecQQQQQQQQQQTSnPPObvPPPLW/PPP/PPPPPPPPPOcYQQQQQQQQQQRTXPPvvPPPvvfeYQQQQQQQQQRTfffb/PPtvMHz8fL/vPLvPPPPPPffYQQQQQQQQQQQTX/AHz77zzzz33/ADhBBBBBBBBBFd99888V88v849888a8a888X888995xhBBBBBBBBFN99/wDvvPvPfffccQQQQQQQQQTfffffPPPL3PPHfPvPPPLvLPPPPvfecYQQQQQQQQQRT/8A3zzzzz7z33nEEEEEEEEEEEEX33zzzzzzzvzzx/D/AM888986888ixBBBBBBBBBBFNd9++888++889pBBBBBBBBBBFNd988888888888W88d8f888828g884LBBBBBBBBBN99998888+++wgABBBBBBBBBBV9988888888888888W88u3s718yc/d88vBBBBBBBFNd99+888++84iAAACBBBBBBBBN99888888888408w088t888e/wDPHMZZvPPAAQQQQRXff/vvvPvvPMIAAAAgggQQQRTXffPPPPPPPPPPPPPPPPPPPEPPPPP/AGEWbzzykMEEV33333z7777zCAAAAAAAM88EU033zzzzzzzzzzzzzzzzzzzzzzy/XzzlCEWbzzzooU3337zzzz777rKIIAAAA777/wD/ADXffPPPPPPPPPPPPPPPPPPPPPPPPeYNeQAR5vPPOn3/AP8A++888888wwACCCCGe+//AP8A/wD/APPPPPPPPPPPPPDHPPPPPPPPPPfcYQQQAAR/vPPOn/fPPvvvvvMIgAAggghvv/8A/wD/AP8A/wD/APPPPPPPPPPMNPPPPPPPPPPPecQQQQQQQR/vPPOj/fPPPvvvOIAAAAAAnvv/AP8A/wD/AP8A/jDD888888888888888888895xBBBBBBBBBBc1886H888++8wgAAACCGe+P/AP8A/wD/AP8A/OMMMMPzzzywzzzzzzzzzzz3n0EEEEEEEEEEE133z3ofz77zjCAAAIAIIL7/AP8A/wD/AP8A+8wwwwwwwvPPPPPPPPPPPPPfeYQQQRDAxQQQTDOffNffZ/vffYABAiCADTSff/8A/wD/AP8AOMMMMMIIIILzzzzzzzzzzz33GEEEEEEIvHuA13z/AP8AvTs/vOMcCBgy4P2yevefvv8A/vOMMMMMMIIII47zzzzzzzz3nHEEEEEEEEGoE1vf37zn/wCrNbwCAACqVne++Hgv88bdzDDDDDDCCCGO++++88888899xBBBBBBBBBBBoTunTw88pvo6wDtFIACqQH//AP1tfssgygwwwwwghjvvvvvvvvPPPfeccQQQQQQQQQTXfeJXfn0tfMyHhjz98xVuS+d/v+A3agw64AwwgghvvvvvvvvvvvffcYQQQQQQQQQQT/8A3zyrOIP22t54BcIILaVNKeX+1s8dlSENO6AIII777777777777/kEEEEEEEEEEE033zz7zz753zAADEJKIIY/wD/APzv/wD/ALjyjDDzzjCCOOOe+++++++++7CCBBBBBBBBBNd9/wDPPPPPvvusAAAggBnvv/8A/wD/AP8A/wDzDDDDDCCCCGO+++++++++++/6CCDDBBBBBBFd99988888++6yCCCCCCCe/wD/AP8A/wD/AP8A7jDDDDCCCCCSy+++++++++++7CCDDDDDBBBBBx9/99988++++KCCCCAAGO//AP8A/wD/AP8A/sMMMMMMIIIJLLLb77777777rIIIMMMMMMM0kEEEEEEEFHHHHHT777774www44IIJLLPPPf/AP8Azzzzzzwwwgggksssssvvvvvrjjjjj/PPPPPLDDTTTTSQQQQQQQQccc/vvvvvrjjjjDjiksos8889/wD/APPPPPDDDCCCCSyyyyyy888888888888888888MMMMMMMMMMAAAAAAAMNN9999xxwCOOOeyyyzzz3/8A/wA88888MMLHHHHXzzzzzzzzCAAw00EFHH33zzzzzzzzz33HHHHHEEEE3zzgAA33nEI44oILLPPP/vM0kEEEEEEFHHHGwwzHEU00jDDDzzzzzzzzzzzzzjDDCAAAEU333GADzyEHX7777444447b777774w000kEEEFHHHCAQwzzznHGEEEEEU00EE1nHHHGAAwwzzzjEEEEEEF20FHHHPA444oILLLLLLb7777740000kEEFHHHHHHDDDzzzwwwwwwxyxzzzzzzzzzywwzjQw200kHPPPPf/wDPPPPOCCCCCyyyy+++++++/PNNJBBBBBBBRxxxxx08888888888888sYAMMMc8OCCCCCCDTzzzzz3/AP8A/wDPOOKCCCCyyyy2+++++/tNNNNNBBBBBBBRxxxw088888888888+++++++OOKCCCCCCDDTzzzz3/wD/AP8AvPPOOOCCCyyy8++++++67BBFNNJBBBBBBRxxx888/8QAAv/aAAwDAQACAAMAAAAQAAMc8884yyCCCCHP/wD/AP777IIII777/MMMMMI5777KAABzz/8AxBDDDCAM8888885xBBBBN8888wgACCCCHP8A/wD/AO+6iCCOe++zDDDHf++++6gACc88/wC8QQwQQAnPPPPPOIAQQTfffXPMgggggggz3/f/AL77IIIJ777rMMMM897zzqAAAxzz/wD/AIwAAAADHPPPIEMcQQRfffffvsAgggggjz//AP8A/wDuoggjnvvowwwwx/vvvsoABDPP/wD+sMMMAAQzzzzzyEEEEEU33377zzwIIII8/wD/AP8A77KIIIZ777OMMMc84577rIAAQzz/APxhBBBAGM888885xBBBBd998+888wgAKz//AP8A/wDyyCCCCO++/wAwwwwwvvvvoAAhjv8A/wD5xDBDAAEc8888wBBBBBN998+++4wwAAAAf/8A/wDP44III5777OMMMMIb7zzjAAAxzz/nGMMMEAQzzzzDzjEEEEV333zzzzjAAAAAIIL/AO++yCCCO++/zDDDDSuO++wgAEc8/wD+YQQwQgjnPPPPPOYQQQTTfffPPOMAAAAggggAAOsoggjnvv8AsMMMNf8Aue+ywAMMc8/7hBBBAAEc888885xhBBFd998+888wAAMMMIAAAAEMCCGO++yyDDHLGO+84wAAMc8//wAQQQAAABHPPPOMMIQQQTfffvvvPOIAAAAggAAAADDPPDnvsswwwwwnvvvugAADHPP+88wQQADDPPPPPOIQQRTTfcPvvvOIAAAAAtKAAABDPPPvvPs8wwwwhjvPvsgghPPP/wDEEMMEIAzzzzzzzoYEEE333zzzziAAAAAAIIAAAwzzzz73330MMMc85zziAAIY5/8A/wD8QQAAABHPPPMIDKAgkkMU/fPPPOMAAAkssMMIABHPPPPvvfcQQQwsvvvOIABHPPf+cQwwAABDPPPNLPNqIgggggggs/fMIADCMAAAAAABDPPvPPfccQQQQfvvuoAABPPP/wDEEEEEAAxzzzzzzEEboIIIIIIIIIJKoAAIIIAAAAAzzzz733mEEEEE3zz6gAAI7/8A/wD8QQQQQADHPPOMMIQQQeggggjH3oSQggpCAAAAAADDPPvvvPccQQQTTDPPPAADPPv/AP8AjDDAAAEM88804hBBBBNYiCCEf4wwASDCCCmAAAM888+885xhBBBNN888884wc8//AMYQQwwABHPPPPPOYQQRTfffcgggF7AiECgESwggjDPPPPv/AH2EEEEEBTzzzzzCIAH/APhBBBAACOc884wxxBBBFd99888gCCCwzhAAAJAOCCSf8+8995xhBBBc88884wAACDDBzhAAAAMM88408BBBBN9999++88jiCCyCiAAAADEKCCC2995xhBBFMc88884yCABBBFd/BAAEM8888M8BBBBBF998+884wAHCCCgMiAAAAV8sCCCKxBBBBd888884wgADDBBF/wD/ADwBTzzzzzziEEEU133zzzzzCAAAACMIJUy0AAAAb7sIIYAEEEBzzzzzAAAAAEEV3/8A/wAIAPPPPKAAAQQVfffPvvPIAAAAAAggKQgg9fBCRH3fyggkQTTHPPPOMIAAAwRTf/8AziIAAw7zznEEEEE333z7zzzAAAAQgI4oBD0IIIbfzyzGFkIILTzzzzziAAIMMMV//wA8wgAEM+++xxBBFNd988888wgAAAAACAAAAEc8ICCCk29hBRCCCC+884gAAAAFPP8A/wDzCAABzzzz/PMEU033z77zzDCAAAAAAAAAABzzzz6wIIITOEFkIIINbjAAAMEEE3//AP6yiCMc88yCCDDDNd98+888wwAAAACCAAAAEMc8++895jKEhFO5CCCDZiCCDDBFd988wwAOO++6iCDDDDH/APPvvOMAAAAAAgsIAADDHPPPvPfcYQQQxHNoQggg2QAQQw//AP8A8wiAAGO++6CDDDDHP+++888gAAAAABMIAAEMc88+8895xBBBFc88+hCCCDJABBNf/wD/ADiAAAzzz6IIMMMd/wC++iCCwgAAACCABAAAAM8888895xBBBFNc8888jKCCDABNN/8A/MIAABPvuogswwwz3/vsoggjjgAAAEMAAAADHPPPvPefQQQQVfPPPPPMIAAAAxPf/wDzjCAAx7z774IMMMM//wC6yCGOO++/CCAAAAAAM88++995hBBBAWw7885yyHABDdtl/wCc84BA/etOf/uiQxzjvvsoggghv/8A/wD/AAAAAAAHPPPvvfcYQQQTTJpb2vsIM5FQw+3P/OEcvRmbbzVdAst2l/vusoghjjvv/wD/APzyAAEc88++95xxBBBFd888e1wsoADBSVf9+/5CAEO+qZiCSTcCc8ucyCCCOe+//wD+8wgggvPPPPvPfcQQQQQQPPPPPEm82qRQTbhaZ8MCwffPvq6Qww6iAzDdgghvvvv/APvMMIIIIILzz733nHEEE3zzzzzzCAA5BBmTLTy3KirKdcHKpCdVcI/m+xcILUb77/8A/wCQwgggghjjjvffcYQQRTTPPPPPMggAQUb/AJJ1+/P5Qf774muq9989odPahEz65vz/AP8A8wwgggghHPPPPeQQQQTPPPPPPMMAAQQwTf7/ADzABHQ6577rNONPc/77rMMI57777/8AzzyiCCCE888885AABBBAE8888wgACBBBFN//AP8AvAAB77zqIIMMMd/777IIIY74/wD/APecQwggggjvvPPPeAAAQQADDHPOIAAAAQRTXf8A/vIII57776IMMMMc/wC+6iCCCO//AP8A/wDvPCCCCCGc88885AABBBBBMc888MACAAABV/8A/wD8oIIJbzzrIMMMMPf77oIIIL77/wD/AP7zziggggkvvPOMAAAQQQQccTSQQcccccPLDDDDCQ8888/jDDDvsssrjjzz+888hjjjjjsss8//AO888447LLDDCwwwww0BDDDzyww00000kFHHDDDDAww4MPPPPOMMMdz77qIJI88//vPPIY445LLLPP8A/vPPOMc8MMMIAAAAAQwwwww888MIAAAAAAAAMMMMMM8wxxBNNMww1PTz3uCCGPPPbzzzCOOOOSyzxxxx18888MMMIMZx9wgMNRz/ADzjjjjjjjjjzww088/TTPMAVeQFMRWMD0/usshjzz09/wDDTzz0wU013HHFyEHwjf8AjG+iDPPPPPPPPPPP/wD+88sohjjy8xjspXQfIVCM888/zzzvvt/zzzzz8cMMJDDDDXfQQENLDccRDDHMccYRT388vqggkvrTQcdDDOMQQEMcfOOPLDDDjcsohjjvussstzzzzww8MMMNLDDHeccccYAADDDDPPPPOMIEIAAEMMMMMMLDHBKMEVeeccssohjz/wDPPPL444477LLO88888MMLLDCQwwww0AFHHHHHHTzywwwwwAAAAAABQwAADzzP/wD/AP7zznssssshjjzy88stjjjjussst/zzzzykMMMMMLDDDTRSUccccNPDDDDDDDAAAPDDCAAgsstv/wD/AP8Azzjnsssshjzww0888sgjjjvssvP/AM88sMcbzzgDAS00EEEFHHHHzzz/xAAtEQACAQIFBAIBAwUBAAAAAAABAgADERASICExBEFQUTJhEyIwcSMzYIGQsf/aAAgBAgEBPwD/AKHXEuPf+APWSnyd/QjdW5+IAhq1Dy5xFSoOHMXqqg5sZT6im+17H0fNkhRcmwlXqS2ybD3+zS6h6ex3WI6uLqfMEhQSeBK1Y1T6X9unVak1x/sRHDqGHl+pq5jkB2HOgAk2AidK7fLaDpE7sTD0lPsSI3SOPiQYyspsRY6KFX8bb/E8+WrVPxoT34GinTao1hKdJKY2G/vS6LUFmErUTSPtex0dLUzJlPK+V6t7uF9DEAkgCUqYpoB374AXmWZZbB1DqVMdCjFTj075Kq/e3lahzVHP3j0qZnLesANJGHVpsr/6OI2MU3APseTPB0dILIx9nAaTh1AvRbRR3pJ/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\" data-filename=\"70FD21CD-EFE7-41D9-B756-E7A2A7027FAE.jpeg\" style=\"width: 198px;\"></p>', 'Contact Page Message', NULL, '2022-12-26 12:32:13'),
(2, 'New Comment Posted', '<p>You have received a new comment from a person. His detail is here:</p><p><strong>Person Name:</strong>&nbsp;[[person_name]]</p><p><strong>Person Email:&nbsp;</strong>[[person_email]]</p><p><strong>Person Message:</strong></p><p>[[person_comment]]</p><p>Go to this link to see this comment<span style=\"font-weight: bolder;\">:&nbsp;</span><a href=\"[[comment_see_url]]\" target=\"_blank\">See Comment</a></p>', 'Comment Message to Admin', NULL, '2021-07-10 12:07:17'),
(5, 'Reset Password', '<p>To reset your password, please click on the following link:</p><p><a href=\"[[reset_link]]\" target=\"_blank\">Reset Password</a><br></p>', 'Reset Password Message to Admin', NULL, '2020-11-27 19:20:59');
INSERT INTO `email_templates` (`id`, `et_subject`, `et_content`, `et_name`, `created_at`, `updated_at`) VALUES
(6, 'Confirm Registration', '<p>To activate your account and confirm the registration, please click on the verify link below:</p><p><a href=\"[[verification_link]]\" target=\"_blank\">Verification Link</a><img src=\"data:image/jpeg;base64,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AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA//8QAAv/aAAwDAQACAAMAAAAh8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888885lgxxH7888888888888888888888888888888888888888888888888888888888888tCCCCCCSy988sb888888qY888888hY8888888888888888888888888888888888888tDCCCCCCCCA08ko888888pf888888XU8888888888888888888888888888888888887iCCQtferKCC88/58879885/885y88XU869888888888888888888888888888888888jCC/8y0/85CCG9oj+piCH1oV5riCA2XDiCSY88888888888888888888888888888888gCE8xiCCQ8BCC+o/QdveryoVbX++AEfC1+9LX8888888888888888888888888888888iCe9LCCCT3dCCUoPC2888GoVL088qC9F888Jj8888888888888888888888888888888iC1qCCCCC34CC0oXC3889DoVpV88rGiU888B38888888888888888888888888888888BCisACCCX9nCCfoLoE90iDoVYCdxoF+D2xyH288888888888888888888888888888885CTWutDB34qCXcojtrCOAGoVsOGGbf8aMHEO88888888888888888888888888888888tLC1788885CGM8or888888sR888888888888888888888888888888888888888888888PCCDRC88hCL88Lt888888TB8888888888888888888888888888888888888888888888eJKCCXqqd88/S/888888qW888888888888888888888888888888888888888888888888fog8+9888vO8888888e888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888/8QAAv/aAAwDAQACAAMAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA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\" data-filename=\"B520C9B7-A4F4-45E2-941A-E5626388FCA7.jpeg\" style=\"width: 198px;\"></p>', 'Registration Email to Customer', NULL, '2023-01-09 13:29:17'),
(7, 'Reset Password', '<p>To reset your password, please click on the following link:</p><p><a href=\"[[reset_link]]\" target=\"_blank\">Reset Password Link</a></p>', 'Reset Password Message to Customer', NULL, '2020-12-05 03:30:14'),
(8, 'Package Purchase Completed', '<p>Dear [[customer_name]],</p><p>You have successfully purchased the package.</p><p><b>Payment Detail:</b></p><p>Payment Method: [[payment_method]]<br>Package Start Date: [[package_start_date]]<br>Package End Date: [[package_end_date]]<br>Transaction Id: [[transaction_id]]<br>Paid Amount: [[paid_amount]]<br>Payment Status: [[payment_status]]<br><br>Thank you!<br>Phpscriptpoint</p>', 'Package Purchase Completed Email to Customer', NULL, '2021-07-08 19:28:15'),
(9, 'Listing Page Message', '<p>Dear [[agent_name]],</p><p>You have received a message from a visitor.</p><p><b>Listing Name: </b><br>[[listing_name]]<br><br><b>Listing URL: </b><br>[[listing_url]]<br><br><b>Name: </b><br>[[name]]<br><br><b>Email: </b><br>[[email]]<br><br><b>Phone: </b><br>[[phone]]<br><br><b>Message: </b><br>[[message]]<br></p>', 'Listing Page Message to Agent', NULL, '2021-07-23 03:48:20'),
(10, 'Listing Page Report', '<p>Hi,</p><p>A visitor has reported to a listing.</p><p><b>Listing Name: </b><br>[[listing_name]]<br><br><b>Listing URL: </b><br>[[listing_url]]<br><br><b>Name: </b><br>[[name]]<br><br><b>Email: </b><br>[[email]]<br><br><b>Phone: </b><br>[[phone]]<br><br><b>Message: </b><br>[[message]]</p>', 'Listing Page Report to Admin', NULL, '2021-07-23 03:48:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faq_title` text NOT NULL,
  `faq_content` text NOT NULL,
  `faq_order` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faq_title`, `faq_content`, `faq_order`, `created_at`, `updated_at`) VALUES
(1, '9jajob email verification ?', '<ul style=\"margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 13px; color: rgb(76, 78, 80);\"><li>If you received an account verification email in error, it\'s likely that another user accidentally entered your email while trying to create or recover their own email account. If you didn\'t initiate the request, you don\'t need to take any further action. You can simply disregard the verification email, and the account won\'t be verified. If you accidentally clicked the link to verify the account, you may decide to continue to use or delete this account. Either way, to sign in, you\'ll first need to&nbsp;<font color=\"#262626\">reset the password</font></li></ul>', 7, '2020-11-23 11:09:14', '2022-12-24 20:44:27'),
(2, 'Is registration required?', '<b style=\"font-weight: bold; caret-color: rgb(76, 78, 80); color: rgb(76, 78, 80); font-family: Arial, sans-serif; font-size: 13px;\">No,&nbsp;</b><span style=\"caret-color: rgb(76, 78, 80); color: rgb(76, 78, 80); font-family: Arial, sans-serif; font-size: 13px; font-weight: bold;\">the registration is not required if you want to search business &amp; services.</span><br style=\"caret-color: rgb(76, 78, 80); color: rgb(76, 78, 80); font-family: Arial, sans-serif; font-size: 13px; font-weight: bold;\"><b style=\"font-weight: bold; caret-color: rgb(76, 78, 80); color: rgb(76, 78, 80); font-family: Arial, sans-serif; font-size: 13px;\">Yes,&nbsp;</b><span style=\"caret-color: rgb(76, 78, 80); color: rgb(76, 78, 80); font-family: Arial, sans-serif; font-size: 13px; font-weight: bold;\">the registration is compulsory if you want to save &amp; manage your business &amp; services</span><div><a href=\"https://youtu.be/F8RssqujCOw\" target=\"_blank\">How to register </a><br></div><div><br></div>', 4, '2020-11-23 11:09:31', '2023-02-03 02:38:33'),
(3, 'What is 9jajob ?', '9JAJOB is Nigerian number one&nbsp; free business &amp; services listing platform that easily connect all service providers listed to its clients and also allows your business to come up in results on google Search with your location with maps. You can add full information here, including location on MAP, descriptions, hours of operation, contact details, links to your website, images, social media profiles and more. Further, you can add latest updates just like you do on social media. You’ll need to activate the listing if you haven’t already. If you currently have an account on 9jajob kindly Revisit the website and save all your business &amp; services on 9JAJOB without any restriction', 1, '2020-11-23 11:09:45', '2022-11-26 19:58:45'),
(5, 'Our support unit ?', '<p><span style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: Arial, sans-serif; font-size: 13px; font-weight: bold;\">For more enquiries about 9JAJOB kindly contact our support unit on the contact page&nbsp;</span><br></p>', 8, '2022-11-26 20:07:26', '2022-12-24 20:44:47'),
(6, 'How to add your map (iframe code) to your account', '<ol class=\"X5LH0c\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">To obtain your map location kindly follow this process;</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\"><br></li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">Go to Google Maps.</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">Enter the business address in the search bar, then click the search button.</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">Click on the Share icon.</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">Choose \"Embed map\"</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">Select the size of the map from the drop down.</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">Select and copy the HTML iframe embed code</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">Then pest .</li></ol><p style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\"><br></p><p style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\"><b>Note that its optional</b></p>', 9, '2022-11-28 18:16:53', '2022-12-24 20:45:00'),
(7, 'Is 9jajob a registered company ?', '<p>9JAJOB is a registered company with Nigerian Corporate Affairs Commission and all its activities are being monitored by the commission.&nbsp;</p>', 2, '2022-12-24 20:29:13', '2022-12-24 20:29:13'),
(8, 'Who can join 9JAJOB ?', '<p>9JAJOB is for all Nigerian business owners and all service providers who wish &nbsp;to own an online shop .&nbsp;</p>', 3, '2022-12-24 20:36:41', '2022-12-24 20:40:34'),
(9, 'Is multiple accounts allowed ?', '<p>Only one account is allowed for a user but you can list different businesses/services\' with one account&nbsp;</p>', 6, '2022-12-24 20:38:46', '2022-12-24 20:38:46');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `footer_column_1_heading` text NOT NULL,
  `footer_column_1_total_item` text NOT NULL,
  `footer_column_2_heading` text NOT NULL,
  `footer_column_2_total_item` text NOT NULL,
  `footer_column_3_heading` text NOT NULL,
  `footer_column_4_heading` text NOT NULL,
  `footer_address` text NOT NULL,
  `footer_email` text NOT NULL,
  `footer_phone` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `google_analytic_tracking_id` text NOT NULL,
  `google_analytic_status` text NOT NULL,
  `tawk_live_chat_property_id` text NOT NULL,
  `tawk_live_chat_status` text NOT NULL,
  `cookie_consent_message` text NOT NULL,
  `cookie_consent_button_text` text NOT NULL,
  `cookie_consent_text_color` text NOT NULL,
  `cookie_consent_bg_color` text NOT NULL,
  `cookie_consent_button_text_color` text NOT NULL,
  `cookie_consent_button_bg_color` text NOT NULL,
  `cookie_consent_status` text NOT NULL,
  `google_recaptcha_site_key` text NOT NULL,
  `google_recaptcha_status` text NOT NULL,
  `theme_color` text NOT NULL,
  `customer_listing_option` text NOT NULL,
  `layout_direction` text NOT NULL,
  `paypal_environment` text NOT NULL,
  `paypal_client_id` text NOT NULL,
  `paypal_secret_key` text NOT NULL,
  `paypal_status` text NOT NULL,
  `stripe_public_key` text NOT NULL,
  `stripe_secret_key` text NOT NULL,
  `stripe_status` text NOT NULL,
  `bank_information` text NOT NULL,
  `bank_status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `logo`, `favicon`, `footer_column_1_heading`, `footer_column_1_total_item`, `footer_column_2_heading`, `footer_column_2_total_item`, `footer_column_3_heading`, `footer_column_4_heading`, `footer_address`, `footer_email`, `footer_phone`, `footer_copyright`, `google_analytic_tracking_id`, `google_analytic_status`, `tawk_live_chat_property_id`, `tawk_live_chat_status`, `cookie_consent_message`, `cookie_consent_button_text`, `cookie_consent_text_color`, `cookie_consent_bg_color`, `cookie_consent_button_text_color`, `cookie_consent_button_bg_color`, `cookie_consent_status`, `google_recaptcha_site_key`, `google_recaptcha_status`, `theme_color`, `customer_listing_option`, `layout_direction`, `paypal_environment`, `paypal_client_id`, `paypal_secret_key`, `paypal_status`, `stripe_public_key`, `stripe_secret_key`, `stripe_status`, `bank_information`, `bank_status`, `created_at`, `updated_at`) VALUES
(1, '288428f1afd3555c8202c328b0a498a7.png', 'c2b660ef3ae97821074fe50eee9df5ba.png', 'Categories', '5', 'Locations', '5', 'Footer Menu', 'Contact', 'IKEJA, LAGOS\r\nNIGERIA', 'Info@9jajob.com', '+234 915 198 7637', 'Copyright 2022. 9jajob.com. All Rights Reserved.', 'UA-84213520-6', 'Show', 'script type=\"text/javascript\"> var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date(); (function(){ var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0]; s1.async=true; s1.src=\'https://embed.tawk.to/63adf011c2f1ac1e202ac4b8/1glfn3i5d\'; s1.charset=\'UTF-8\'; s1.setAttribute(\'crossorigin\',\'*\'); s0.parentNode.insertBefore(s1,s0); })(); </script> <!--End of Tawk.to Script-->', 'Hide', 'This website uses cookies to ensure you get the best experience on our website.', 'ACCEPT', 'F8FFED', '173709', '000000', 'FFFFFF', 'Show', '6Lcf1V0bAAAAAIN5nY_O2MXq0hUuTiKTt_XOYM-_', 'Hide', '2C660E', 'On', 'ltr', 'sandbox', 'ATNUEVlu6q5GWK29zJcO7QV989sT9Yno5eumZEnhgTz_89wG3vFKxdsWGWn0U12g0c7RHSdFVtkOLWMg', 'EFw7ctHHaifC_Ldy-_Hhf4xW8mNVBaywCcupSlA9UW2RTbvazQaj13O33utcIj09s4xOpRPHhYmNzDcT', 'Disable', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Disable', 'Bank Name: ABC Bank\r\nAccount Holder: PK Jim\r\nAccount Number: 872767820310\r\nRouting No: 8293947\r\nSwift Code: ABC28374', 'Disable', NULL, '2023-04-10 15:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `language_admin_panel_texts`
--

CREATE TABLE `language_admin_panel_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_key` text NOT NULL,
  `lang_value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_admin_panel_texts`
--

INSERT INTO `language_admin_panel_texts` (`id`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Admin Panel', NULL, '2022-11-10 00:16:34'),
(3, 'SETTINGS', 'Settings', NULL, '2022-11-10 00:16:34'),
(4, 'LANGUAGE_SETTINGS', 'Language Settings', NULL, '2022-11-10 00:16:34'),
(5, 'GENERAL_SETTING', 'General Settings', NULL, '2022-11-10 00:16:34'),
(6, 'PAYMENT_SETTING', 'Payment Settings', NULL, '2022-11-10 00:16:34'),
(7, 'MENU_TEXT', 'Menu Text', NULL, '2022-11-10 00:16:34'),
(8, 'WEBSITE_TEXT', 'Website Text', NULL, '2022-11-10 00:16:34'),
(9, 'NOTIFICATION_TEXT', 'Notification Text', NULL, '2022-11-10 00:16:34'),
(10, 'ADMIN_PANEL_TEXT', 'Admin Panel Text', NULL, '2022-11-10 00:16:34'),
(11, 'PAGE_SETTINGS', 'Page Settings', NULL, '2022-11-10 00:16:34'),
(12, 'ABOUT', 'About', NULL, '2022-11-10 00:16:34'),
(13, 'BLOG', 'Blog', NULL, '2022-11-10 00:16:34'),
(14, 'FAQ', 'FAQ', NULL, '2022-11-10 00:16:34'),
(15, 'CONTACT', 'Contact', NULL, '2022-11-10 00:16:34'),
(16, 'PRICING', 'Pricing', NULL, '2022-11-10 00:16:34'),
(17, 'LISTING_CATEGORY', 'Listing Category', NULL, '2022-11-10 00:16:34'),
(18, 'LISTING_LOCATION', 'Listing Location', NULL, '2022-11-10 00:16:35'),
(19, 'LISTING', 'Listing', NULL, '2022-11-10 00:16:35'),
(20, 'TERMS_AND_CONDITIONS', 'Terms and Conditions', NULL, '2022-11-10 00:16:35'),
(21, 'PRIVACY_POLICY', 'Privacy Policy', NULL, '2022-11-10 00:16:35'),
(22, 'OTHER', 'Other', NULL, '2022-11-10 00:16:35'),
(23, 'BLOG_SECTION', 'Blog Section', NULL, '2022-11-10 00:16:35'),
(24, 'BLOGS', 'Blogs', NULL, '2022-11-10 00:16:35'),
(25, 'APPROVED_COMMENTS', 'Approved Comments', NULL, '2022-11-10 00:16:35'),
(26, 'PENDING_COMMENTS', 'Pending Comments', NULL, '2022-11-10 00:16:35'),
(27, 'WEBSITE_SECTION', 'Website Section', NULL, '2022-11-10 00:16:35'),
(28, 'LISTING_SECTION', 'Listing Section', NULL, '2022-11-10 00:16:35'),
(29, 'LISTING_AMENITY', 'Listing Amenity', NULL, '2022-11-10 00:16:35'),
(30, 'REVIEW_SECTION', 'Review Section', NULL, '2022-11-10 00:16:35'),
(31, 'ADMIN_REVIEW', 'Admin Review', NULL, '2022-11-10 00:16:35'),
(32, 'CUSTOMER_REVIEW', 'Customer Review', NULL, '2022-11-10 00:16:35'),
(33, 'PACKAGE_SECTION', 'Package Section', NULL, '2022-11-10 00:16:35'),
(34, 'DYNAMIC_PAGES', 'Dynamic Pages', NULL, '2022-11-10 00:16:35'),
(35, 'CUSTOMER', 'Customer', NULL, '2022-11-10 00:16:35'),
(36, 'EMAIL_TEMPLATE', 'Email Template', NULL, '2022-11-10 00:16:35'),
(37, 'CLEAR_DATABASE', 'Clear Database', NULL, '2022-11-10 00:16:35'),
(38, 'VISIT_WEBSITE', 'Visit Website', NULL, '2022-11-10 00:16:35'),
(39, 'CHANGE_PROFILE', 'Change Profile', NULL, '2022-11-10 00:16:35'),
(40, 'CHANGE_PASSWORD', 'Change Password', NULL, '2022-11-10 00:16:35'),
(41, 'AMENITY', 'Amenity', NULL, '2022-11-10 00:16:35'),
(42, 'ADD_NEW', 'Add New', NULL, '2022-11-10 00:16:35'),
(43, 'SLUG', 'Slug', NULL, '2022-11-10 00:16:35'),
(44, 'ADD_AMENITY', 'Add Amenity', NULL, '2022-11-10 00:16:35'),
(45, 'VIEW_ALL', 'View All', NULL, '2022-11-10 00:16:35'),
(46, 'EDIT_AMENITY', 'Edit Amenity', NULL, '2022-11-10 00:16:35'),
(47, 'POSTS', 'Posts', NULL, '2022-11-10 00:16:35'),
(48, 'PHOTO', 'Photo', NULL, '2022-11-10 00:16:35'),
(49, 'ADD_POST', 'Add Post', NULL, '2022-11-10 00:16:35'),
(50, 'CONTENT', 'Content', NULL, '2022-11-10 00:16:35'),
(51, 'SHORT_CONTENT', 'Short Content', NULL, '2022-11-10 00:16:35'),
(52, 'QUESTION_SHOW_COMMENT', 'Show Comment?', NULL, '2022-11-10 00:16:35'),
(53, 'SEO_INFORMATION', 'SEO Information', NULL, '2022-11-10 00:16:35'),
(54, 'EDIT_POST', 'Edit Post', NULL, '2022-11-10 00:16:35'),
(55, 'ADD_CATEGORY', 'Add Category', NULL, '2022-11-10 00:16:35'),
(56, 'EDIT_CATEGORY', 'Edit Category', NULL, '2022-11-10 00:16:35'),
(57, 'NAME_AND_EMAIL', 'Name and Email', NULL, '2022-11-10 00:16:35'),
(58, 'BLOG_TITLE', 'Blog Title', NULL, '2022-11-10 00:16:35'),
(59, 'CUSTOMERS', 'Customers', NULL, '2022-11-10 00:16:35'),
(60, 'DETAIL', 'Details', NULL, '2022-11-10 00:16:35'),
(61, 'CUSTOMER_DETAIL', 'Customer Details', NULL, '2022-11-10 00:16:35'),
(62, 'BANNER', 'Banner', NULL, '2022-11-10 00:16:35'),
(63, 'ADD_DYNAMIC_PAGE', 'Add Dynamic Page', NULL, '2022-11-10 00:16:35'),
(64, 'EDIT_DYNAMIC_PAGE', 'Edit Dynamic Page', NULL, '2022-11-10 00:16:35'),
(65, 'EDIT_EMAIL_TEMPLATE', 'Edit Email Template', NULL, '2022-11-10 00:16:35'),
(66, 'SUBJECT', 'Subject', NULL, '2022-11-10 00:16:35'),
(67, 'CONTACT_PAGE_MESSAGE', 'Contact Page Message', NULL, '2022-11-10 00:16:35'),
(68, 'PARAMETERS_YOU_CAN_USE', 'Parameters you can use', NULL, '2022-11-10 00:16:35'),
(69, 'VISITOR_NAME', 'Visitor Name', NULL, '2022-11-10 00:16:35'),
(70, 'VISITOR_EMAIL', 'Visitor Email', NULL, '2022-11-10 00:16:35'),
(71, 'VISITOR_PHONE', 'Visitor Phone', NULL, '2022-11-10 00:16:35'),
(72, 'VISITOR_MESSAGE', 'Visitor Message', NULL, '2022-11-10 00:16:35'),
(73, 'ORDER', 'Order', NULL, '2022-11-10 00:16:35'),
(74, 'ADD_FAQ', 'Add FAQ', NULL, '2022-11-10 00:16:35'),
(75, 'EDIT_FAQ', 'Edit FAQ', NULL, '2022-11-10 00:16:35'),
(76, 'ACTIVE_CUSTOMERS', 'Active Customers', NULL, '2022-11-10 00:16:35'),
(77, 'PENDING_CUSTOMERS', 'Pending Customers', NULL, '2022-11-10 00:16:35'),
(78, 'ACTIVE_LISTINGS', 'Active Listings', NULL, '2022-11-10 00:16:35'),
(79, 'PENDING_LISTINGS', 'Pending Listings', NULL, '2022-11-10 00:16:35'),
(80, 'LANGUAGE_MENU_TEXT', 'Language (Menu Change)', NULL, '2022-11-10 00:16:35'),
(81, 'SETUP_KEY_VALUES', 'Setup Key Values', NULL, '2022-11-10 00:16:35'),
(82, 'KEY', 'Key', NULL, '2022-11-10 00:16:35'),
(83, 'LANGUAGE_WEBSITE_TEXT', 'Language (Website Change)', NULL, '2022-11-10 00:16:35'),
(84, 'LANGUAGE_NOTIFICATION_TEXT', 'Language (Notification Change)', NULL, '2022-11-10 00:16:35'),
(85, 'LANGUAGE_ADMIN_PANEL_TEXT', 'Language (Admin Panel Text Change)', NULL, '2022-11-10 00:16:35'),
(86, 'ADD_LISTING_CATEGORY', 'Add Listing Category', NULL, '2022-11-10 00:16:35'),
(87, 'EDIT_LISTING_CATEGORY', 'Edit Listing Category', NULL, '2022-11-10 00:16:35'),
(88, 'ADD_LISTING_LOCATION', 'Add Listing Location', NULL, '2022-11-10 00:16:35'),
(89, 'EDIT_LISTING_LOCATION', 'Edit Listing Location', NULL, '2022-11-10 00:16:35'),
(90, 'QUESTION_IS_FEATURED', 'Is Featured?', NULL, '2022-11-10 00:16:35'),
(91, 'ADDED_BY', 'Added By', NULL, '2022-11-10 00:16:35'),
(92, 'ADMIN', 'Admin', NULL, '2022-11-10 00:16:35'),
(93, 'MAP', 'MAP', NULL, '2022-11-10 00:16:35'),
(94, 'URL_TO_CLICK', 'URL to Click', NULL, '2022-11-10 00:16:35'),
(95, 'YOUTUBE_VIDEO_PLAYER', 'YouTube Video Player', NULL, '2022-11-10 00:16:35'),
(96, 'CLOSE', 'Close', NULL, '2022-11-10 00:16:35'),
(97, 'MAIN_SECTION', 'Main Section', NULL, '2022-11-10 00:16:35'),
(98, 'PHOTO_GALLERY', 'Photo Gallery', NULL, '2022-11-10 00:16:35'),
(99, 'VIDEO_GALLERY', 'Video Gallery', NULL, '2022-11-10 00:16:35'),
(100, 'SEO', 'SEO', NULL, '2022-11-10 00:16:35'),
(101, 'STATUS_AND_FEATURED', 'Status & Featured', NULL, '2022-11-10 00:16:35'),
(102, 'SOCIAL_ICONS', 'Social Icons', NULL, '2022-11-10 00:16:35'),
(103, 'ACTIVE', 'Active', NULL, '2022-11-10 00:16:35'),
(104, 'PENDING', 'Pending', NULL, '2022-11-10 00:16:35'),
(105, 'CHANGE_FEATURED_PHOTO', 'Change Featured Photo', NULL, '2022-11-10 00:16:35'),
(106, 'ADMIN_LOGIN', 'Admin Login', NULL, '2022-11-10 00:16:35'),
(107, 'PRICE', 'Price', NULL, '2022-11-10 00:16:35'),
(108, 'TYPE', 'Type', NULL, '2022-11-10 00:16:35'),
(109, 'ADD_PACKAGE', 'Add Package', NULL, '2022-11-10 00:16:35'),
(110, 'SELECT_PACKAGE_TYPE', 'Select Package Type', NULL, '2022-11-10 00:16:35'),
(111, 'FREE', 'Free', NULL, '2022-11-10 00:16:35'),
(112, 'PAID', 'Paid', NULL, '2022-11-10 00:16:35'),
(113, 'VALID_NUMBER_OF_DAYS', 'Valid Number of Days', NULL, '2022-11-10 00:16:35'),
(114, 'ALLOWED_LISTINGS', 'Allowed Listings', NULL, '2022-11-10 00:16:35'),
(115, 'ALLOWED_AMENITIES_PER_LISTING', 'Allowed Amenities per Listing', NULL, '2022-11-10 00:16:35'),
(116, 'ALLOWED_PHOTOS_PER_LISTING', 'Allowed Photos per Listing', NULL, '2022-11-10 00:16:35'),
(117, 'ALLOWED_VIDEOS_PER_LISTING', 'Allowed Videos per Listing', NULL, '2022-11-10 00:16:35'),
(118, 'ALLOWED_SOCIAL_ITEMS_PER_LISTING', 'Allowed Social Items per Listing', NULL, '2022-11-10 00:16:35'),
(119, 'ALLOWED_ADDITIONAL_FEATURES_PER_LISTING', 'Allowed Additional Features per Listing', NULL, '2022-11-10 00:16:35'),
(120, 'QUESTION_ALLOW_FEATURED_LISTING', 'Allow Featured Listing?', NULL, '2022-11-10 00:16:35'),
(121, 'EDIT_PACKAGE', 'Edit Package', NULL, '2022-11-10 00:16:35'),
(122, 'EDIT_HOME_PAGE_INFO', 'Edit Home Page Information', NULL, '2022-11-10 00:16:35'),
(123, 'SEARCH_SECTION', 'Search Section', NULL, '2022-11-10 00:16:35'),
(124, 'CATEGORY_SECTION', 'Category Section', NULL, '2022-11-10 00:16:35'),
(125, 'LOCATION_SECTION', 'Location Section', NULL, '2022-11-10 00:16:35'),
(126, 'SEARCH_HEADING', 'Search Heading', NULL, '2022-11-10 00:16:35'),
(127, 'SEARCH_TEXT', 'Search Text', NULL, '2022-11-10 00:16:35'),
(128, 'EXISTING_SEARCH_BACKGROUND', 'Existing Search Background', NULL, '2022-11-10 00:16:35'),
(129, 'CHANGE_SEARCH_BACKGROUND', 'Change Search Background', NULL, '2022-11-10 00:16:35'),
(130, 'HEADING', 'Heading', NULL, '2022-11-10 00:16:35'),
(131, 'SUBHEADING', 'Subheading', NULL, '2022-11-10 00:16:35'),
(132, 'TOTAL_ITEMS', 'Total Items', NULL, '2022-11-10 00:16:35'),
(133, 'SHOW', 'Show', NULL, '2022-11-10 00:16:35'),
(134, 'HIDE', 'Hide', NULL, '2022-11-10 00:16:35'),
(135, 'EDIT_ABOUT_PAGE_INFO', 'Edit About Page Information', NULL, '2022-11-10 00:16:35'),
(136, 'EDIT_BLOG_PAGE_INFO', 'Edit Blog Page Information', NULL, '2022-11-10 00:16:35'),
(137, 'EDIT_FAQ_PAGE_INFO', 'Edit FAQ Page Information', NULL, '2022-11-10 00:16:35'),
(138, 'EDIT_CONTACT_PAGE_INFO', 'Edit Contact Page Information', NULL, '2022-11-10 00:16:35'),
(139, 'EDIT_PRICING_PAGE_INFO', 'Edit Pricing Page Information', NULL, '2022-11-10 00:16:35'),
(140, 'EDIT_LISTING_CATEGORY_PAGE_INFO', 'Edit Listing Category Page Information', NULL, '2022-11-10 00:16:35'),
(141, 'EDIT_LISTING_LOCATION_PAGE_INFO', 'Edit Listing Location Page Information', NULL, '2022-11-10 00:16:35'),
(142, 'EDIT_LISTING_PAGE_INFO', 'Edit Listing Page Information', NULL, '2022-11-10 00:16:35'),
(143, 'EDIT_TERMS_AND_CONDITIONS_PAGE_INFO', 'Edit Terms and Conditions Page Information', NULL, '2022-11-10 00:16:35'),
(144, 'EDIT_PRIVACY_POLICY_PAGE_INFO', 'Edit Privacy Policy Page Information', NULL, '2022-11-10 00:16:35'),
(145, 'EDIT_OTHER_PAGE_INFO', 'Edit Other Page Information', NULL, '2022-11-10 00:16:35'),
(146, 'LOGIN_PAGE', 'Login Page', NULL, '2022-11-10 00:16:36'),
(147, 'REGISTRATION_PAGE', 'Registration Page', NULL, '2022-11-10 00:16:36'),
(148, 'FORGET_PASSWORD_PAGE', 'Forget Password Page', NULL, '2022-11-10 00:16:36'),
(149, 'CUSTOMER_PANEL', 'Customer Panel', NULL, '2022-11-10 00:16:36'),
(150, 'CUSTOMER_NAME', 'Customer Name', NULL, '2022-11-10 00:16:36'),
(151, 'PURCHASE_INVOICE', 'Purchase Invoice', NULL, '2022-11-10 00:16:36'),
(152, 'INVOICE_TO', 'Invoice To', NULL, '2022-11-10 00:16:36'),
(153, 'ADMIN_REVIEWS', 'Admin Reviews', NULL, '2022-11-10 00:16:36'),
(154, 'LISTING_FEATURED_PHOTO', 'Listing Featured Photo', NULL, '2022-11-10 00:16:36'),
(155, 'MY_REVIEW', 'My Reviews', NULL, '2022-11-10 00:16:36'),
(156, 'ADD_REVIEW', 'Add Review', NULL, '2022-11-10 00:16:36'),
(157, 'SELECTED_ITEM', 'Selected Item', NULL, '2022-11-10 00:16:36'),
(158, 'UPDATE_REVIEW', 'Update Review', NULL, '2022-11-10 00:16:36'),
(159, 'CUSTOMER_REVIEWS', 'Customer Reviews', NULL, '2022-11-10 00:16:36'),
(160, 'SOCIAL_MEDIA_ITEMS', 'Social Media Items', NULL, '2022-11-10 00:16:36'),
(161, 'ICON', 'Icon', NULL, '2022-11-10 00:16:36'),
(162, 'ADD_SOCIAL_MEDIA_ITEM', 'Add Social Media Item', NULL, '2022-11-10 00:16:36'),
(163, 'ICON_FONT_AWESOME_5_CODE', 'Icon (Font Awesome 5 Code)', NULL, '2022-11-10 00:16:36'),
(164, 'EXAMPLE', 'Example', NULL, '2022-11-10 00:16:36'),
(165, 'EDIT_SOCIAL_MEDIA_ITEM', 'Edit Social Media Item', NULL, '2022-11-10 00:16:36'),
(166, 'EXISTING_ITEM', 'Existing Item', NULL, '2022-11-10 00:16:36'),
(167, 'EDIT_PAYMENT_SETTING', 'Edit Payment Setting', NULL, '2022-11-10 00:16:36'),
(168, 'PAYPAL', 'PayPal', NULL, '2022-11-10 00:16:36'),
(169, 'PAYPAL_ENVIRONMENT', 'PayPal Environment', NULL, '2022-11-10 00:16:36'),
(170, 'SANDBOX', 'Sandbox', NULL, '2022-11-10 00:16:36'),
(171, 'PRODUCTION', 'Production', NULL, '2022-11-10 00:16:36'),
(172, 'PAYPAL_CLIENT_ID', 'PayPal Client ID', NULL, '2022-11-10 00:16:36'),
(173, 'PAYPAL_SECRET_KEY', 'PayPal Secret Key', NULL, '2022-11-10 00:16:36'),
(174, 'STRIPE', 'Stripe', NULL, '2022-11-10 00:16:36'),
(175, 'STRIPE_PUBLIC_KEY', 'Stripe Public Key', NULL, '2022-11-10 00:16:36'),
(176, 'STRIPE_SECRET_KEY', 'Stripe Secret Key', NULL, '2022-11-10 00:16:36'),
(177, 'EDIT_GENERAL_SETTING', 'Edit General Setting', NULL, '2022-11-10 00:16:36'),
(178, 'LOGO', 'Logo', NULL, '2022-11-10 00:16:36'),
(179, 'FAVICON', 'Favicon', NULL, '2022-11-10 00:16:36'),
(180, 'FOOTER', 'Footer', NULL, '2022-11-10 00:16:36'),
(181, 'GOOGLE_RECAPTCHA', 'Google Recaptcha', NULL, '2022-11-10 00:16:36'),
(182, 'GOOGLE_ANALYTIC', 'Google Analytic', NULL, '2022-11-10 00:16:36'),
(183, 'TAWK_LIVE_CHAT', 'Tawk Live Chat', NULL, '2022-11-10 00:16:36'),
(184, 'COOKIE_CONSENT', 'Cookie Consent', NULL, '2022-11-10 00:16:36'),
(185, 'THEME_COLOR', 'Theme Color', NULL, '2022-11-10 00:16:36'),
(186, 'CUSTOMER_LISTING_OPTION', 'Customer Listing Option', NULL, '2022-11-10 00:16:36'),
(187, 'LAYOUT_DIRECTION', 'Layout Direction', NULL, '2022-11-10 00:16:36'),
(188, 'EXISTING_LOGO', 'Existing Logo', NULL, '2022-11-10 00:16:36'),
(189, 'CHANGE_LOGO', 'Change Logo', NULL, '2022-11-10 00:16:36'),
(190, 'EXISTING_FAVICON', 'Existing Favicon', NULL, '2022-11-10 00:16:36'),
(191, 'CHANGE_FAVICON', 'Change Favicon', NULL, '2022-11-10 00:16:36'),
(192, 'FOOTER_COLUMN_1_HEADING', 'Footer Column 1 - Heading', NULL, '2022-11-10 00:16:36'),
(193, 'FOOTER_COLUMN_1_TOTAL_ITEM', 'Footer Column 1 - Total Items', NULL, '2022-11-10 00:16:36'),
(194, 'FOOTER_COLUMN_2_HEADING', 'Footer Column 2 - Heading', NULL, '2022-11-10 00:16:36'),
(195, 'FOOTER_COLUMN_2_TOTAL_ITEM', 'Footer Column 2 - Total Items', NULL, '2022-11-10 00:16:36'),
(196, 'FOOTER_COLUMN_3_HEADING', 'Footer Column 3 - Heading', NULL, '2022-11-10 00:16:36'),
(197, 'FOOTER_COLUMN_4_HEADING', 'Footer Column 4 - Heading', NULL, '2022-11-10 00:16:36'),
(198, 'FOOTER_ADDRESS', 'Footer Address', NULL, '2022-11-10 00:16:36'),
(199, 'FOOTER_EMAIL', 'Footer Email', NULL, '2022-11-10 00:16:36'),
(200, 'FOOTER_PHONE', 'Footer Phone', NULL, '2022-11-10 00:16:36'),
(201, 'FOOTER_COPYRIGHT', 'Footer Copyright', NULL, '2022-11-10 00:16:36'),
(202, 'GOOGLE_RECAPTCHA_SITE_KEY', 'Google Recaptcha Site Key', NULL, '2022-11-10 00:16:36'),
(203, 'GOOGLE_RECAPTCHA_STATUS', 'Google Recaptcha Status', NULL, '2022-11-10 00:16:36'),
(204, 'GOOGLE_ANALYTIC_TRACKING_ID', 'Google Analytic Tracking ID', NULL, '2022-11-10 00:16:36'),
(205, 'GOOGLE_ANALYTIC_STATUS', 'Google Analytic Status', NULL, '2022-11-10 00:16:36'),
(206, 'TAWK_LIVE_CHAT_CODE', 'Tawk Live Chat Code', NULL, '2022-11-10 00:16:36'),
(207, 'TAWK_LIVE_CHAT_STATUS', 'Tawk Live Chat Status', NULL, '2022-11-10 00:16:36'),
(208, 'COOKIE_CONSENT_MESSAGE', 'Cookie Consent Message', NULL, '2022-11-10 00:16:36'),
(209, 'COOKIE_CONSENT_BUTTON_TEXT', 'Cookie Consent Button Text', NULL, '2022-11-10 00:16:36'),
(210, 'COOKIE_CONSENT_TEXT_COLOR', 'Cookie Consent Text Color', NULL, '2022-11-10 00:16:36'),
(211, 'COOKIE_CONSENT_BACKGROUND_COLOR', 'Cookie Consent Background Color', NULL, '2022-11-10 00:16:36'),
(212, 'COOKIE_CONSENT_BUTTON_TEXT_COLOR', 'Cookie Consent Button Text Color', NULL, '2022-11-10 00:16:36'),
(213, 'COOKIE_CONSENT_BUTTON_BACKGROUND_COLOR', 'Cookie Consent Button Background Color', NULL, '2022-11-10 00:16:36'),
(214, 'COOKIE_CONSENT_STATUS', 'Cookie Consent Status', NULL, '2022-11-10 00:16:36'),
(215, 'CUSTOMER_LISTING', 'Customer Listing', NULL, '2022-11-10 00:16:36'),
(216, 'ON', 'On', NULL, '2022-11-10 00:16:36'),
(217, 'OFF', 'Off', NULL, '2022-11-10 00:16:36'),
(218, 'LTR', 'LTR (Left to Right)', NULL, '2022-11-10 00:16:36'),
(219, 'RTL', 'RTL (Right to Left)', NULL, '2022-11-10 00:16:36'),
(220, 'PERSON_NAME', 'Person Name', NULL, '2022-11-10 00:16:36'),
(221, 'PERSON_EMAIL', 'Person Email', NULL, '2022-11-10 00:16:36'),
(222, 'PERSON_COMMENT', 'Person Comment', NULL, '2022-11-10 00:16:36'),
(223, 'COMMENT_SEE_URL', 'Comment See URL', NULL, '2022-11-10 00:16:36'),
(224, 'RESET_PASSWORD_PAGE_LINK', 'Reset Password Page Link', NULL, '2022-11-10 00:16:36'),
(225, 'CUSTOMER_REGISTRATION_VERIFY_LINK', 'Customer Registration Verify Link', NULL, '2022-11-10 00:16:36'),
(226, 'AGENT_NAME', 'Agent Name', NULL, '2022-11-10 00:16:36'),
(227, 'LISTING_URL', 'Listing URL', NULL, '2022-11-10 00:16:36'),
(228, 'ENABLE', 'Enable', NULL, '2022-11-10 00:16:36'),
(229, 'DISABLE', 'Disable', NULL, '2022-11-10 00:16:36'),
(230, 'BANK_PAYMENT', 'Bank Payment', NULL, NULL),
(231, 'BANK_INFORMATION', 'Bank Information', NULL, NULL),
(232, 'WHERE_TO_PAY', 'Where to Pay', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_menu_texts`
--

CREATE TABLE `language_menu_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_key` text NOT NULL,
  `lang_value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_menu_texts`
--

INSERT INTO `language_menu_texts` (`id`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1, 'MENU_HOME', 'Home', NULL, '2023-02-02 18:31:09'),
(2, 'MENU_LISTING', 'Listings', NULL, '2023-02-02 18:31:09'),
(3, 'MENU_PRICING', 'Pricing', NULL, '2023-02-02 18:31:09'),
(4, 'MENU_PAGES', 'Pages', NULL, '2023-02-02 18:31:09'),
(5, 'MENU_ABOUT', 'About', NULL, '2023-02-02 18:31:09'),
(6, 'MENU_LOCATION', 'Location', NULL, '2023-02-02 18:31:09'),
(7, 'MENU_FAQ', 'FAQ', NULL, '2023-02-02 18:31:09'),
(8, 'MENU_CATEGORY', 'Category', NULL, '2023-02-02 18:31:09'),
(9, 'MENU_BLOG', 'Adverts', NULL, '2023-02-02 18:31:09'),
(10, 'MENU_CONTACT', 'Contact', NULL, '2023-02-02 18:31:09'),
(11, 'MENU_LOGIN_REGISTER', 'Login or Register', NULL, '2023-02-02 18:31:09'),
(12, 'MENU_DASHBOARD', 'Dashboard', NULL, '2023-02-02 18:31:09'),
(13, 'MENU_ADD_LISTING', 'Add Business', NULL, '2023-02-02 18:31:09'),
(14, 'MENU_PRIVACY_POLICY', 'Privacy Policy', NULL, '2023-02-02 18:31:09'),
(15, 'MENU_TERMS_AND_CONDITIONS', 'Terms and Conditions', NULL, '2023-02-02 18:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `language_notification_texts`
--

CREATE TABLE `language_notification_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_key` text NOT NULL,
  `lang_value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_notification_texts`
--

INSERT INTO `language_notification_texts` (`id`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1, 'ERR_EMAIL_REQUIRED', 'Email is required', NULL, '2023-03-07 02:37:30'),
(2, 'ERR_EMAIL_INVALID', 'Email is invalid', NULL, '2023-03-07 02:37:30'),
(3, 'ERR_PASSWORD_REQUIRED', 'Password is required', NULL, '2023-03-07 02:37:30'),
(4, 'ERR_RECAPTCHA_REQUIRED', 'You must have to input recaptcha correctly', NULL, '2023-03-07 02:37:30'),
(5, 'ERR_NAME_REQUIRED', 'Name is required', NULL, '2023-03-07 02:37:30'),
(6, 'ERR_RE_PASSWORD_REQUIRED', 'Retype Password is required', NULL, '2023-03-07 02:37:30'),
(7, 'ERR_PASSWORDS_MATCH', 'Both Passwords must match', NULL, '2023-03-07 02:37:30'),
(8, 'ERR_NEW_PASSWORD_REQUIRED', 'New Password is required', NULL, '2023-03-07 02:37:30'),
(9, 'ERR_CUSTOMER_NOT_FOUND', 'Customer is not found', NULL, '2023-03-07 02:37:30'),
(10, 'SUCCESS_LOGIN', 'Login is successful', NULL, '2023-03-07 02:37:30'),
(11, 'SUCCESS_REGISTRATION_EMAIL_SEND', 'Please check your email to verify your registration. Check your spam folder too. Note: Your confirmation mail might delay upto 2 Minutes.', NULL, '2023-03-07 02:37:30'),
(12, 'SUCCESS_REGISTRATION_VERIFY_DONE', 'Registration is completed. You can now login.', NULL, '2023-03-07 02:37:30'),
(13, 'ERR_EMAIL_NOT_FOUND', 'Email is not found', NULL, '2023-03-07 02:37:30'),
(14, 'SUCCESS_FORGET_PASSWORD_EMAIL_SEND', 'Please check your email for reset instruction', NULL, '2023-03-07 02:37:30'),
(15, 'SUCCESS_RESET_PASSWORD', 'Password is reset successfully!', NULL, '2023-03-07 02:37:30'),
(16, 'ERR_COMMENT_REQUIRED', 'Comment is required', NULL, '2023-03-07 02:37:30'),
(17, 'SUCCESS_BLOG_COMMENT', 'Comment is posted successfully. It will be published after reviewed by admin.', NULL, '2023-03-07 02:37:30'),
(18, 'ERR_MESSAGE_REQUIRED', 'Message is required', NULL, '2023-03-07 02:37:30'),
(19, 'SUCCESS_CONTACT_MESSAGE', 'Message is sent successfully', NULL, '2023-03-07 02:37:30'),
(20, 'ERR_EMAIL_EXIST', 'Email already exists', NULL, '2023-03-07 02:37:30'),
(21, 'SUCCESS_PASSWORD_UPDATE', 'Password is updated successfully', NULL, '2023-03-07 02:37:30'),
(22, 'SUCCESS_PROFILE_UPDATE', 'Profile is updated successfully', NULL, '2023-03-07 02:37:30'),
(23, 'SUCCESS_PHOTO_UPDATE', 'Photo is updated successfully', NULL, '2023-03-07 02:37:30'),
(24, 'ERR_PHOTO_REQUIRED', 'Photo is required', NULL, '2023-03-07 02:37:30'),
(25, 'ERR_PHOTO_IMAGE', 'Only image is accepted', NULL, '2023-03-07 02:37:30'),
(26, 'ERR_PHOTO_JPG_PNG_GIF', 'Allowed photo types are JPG, PNG, GIF', NULL, '2023-03-07 02:37:30'),
(27, 'ERR_PHOTO_MAX', 'Maximum photo size will be 2 MB', NULL, '2023-03-07 02:37:30'),
(28, 'SUCCESS_BANNER_UPDATE', 'Banner is updated successfully', NULL, '2023-03-07 02:37:30'),
(29, 'ERR_ENROLL_PACKAGE_FIRST', 'You must have to enroll a package first', NULL, '2023-03-07 02:37:30'),
(30, 'ERR_LISTING_DATE_EXPIRED', 'Listing date is expired. Please purchase a package again to renew.', NULL, '2023-03-07 02:37:30'),
(31, 'ERR_LISTING MAXIMUM_LIMIT_REACHED', 'Your maximum limit to add a listing has reached', NULL, '2023-03-07 02:37:30'),
(32, 'ERR_NAME_EXIST', 'Name already exists', NULL, '2023-03-07 02:37:30'),
(33, 'ERR_SLUG_UNIQUE', 'Slug will be unique', NULL, '2023-03-07 02:37:30'),
(34, 'ERR_DESCRIPTION_REQUIRED', 'Description is required', NULL, '2023-03-07 02:37:30'),
(35, 'ERR_PHONE_REQUIRED', 'Phone is required', NULL, '2023-03-07 02:37:30'),
(36, 'ERR_PHONE_UNIQUE', 'Phone will be unique', NULL, '2023-03-07 02:37:30'),
(37, 'ERR_SLUG_WHITESPACE', 'Username can not have whitespace. Add (-) in-between your slug or use only one word.', NULL, '2023-03-07 02:37:30'),
(38, 'SUCCESS_LISTING_ADD', 'Listing is added successfully, but it will be live after admin approval!', NULL, '2023-03-07 02:37:30'),
(39, 'SUCCESS_LISTING_EDIT', 'Listing is updated successfully!', NULL, '2023-03-07 02:37:30'),
(40, 'SUCCESS_LISTING_DELETE', 'Listing is deleted successfully!', NULL, '2023-03-07 02:37:30'),
(41, 'SUCCESS_SOCIAL_ITEM_DELETE', 'Social Item is deleted successfully', NULL, '2023-03-07 02:37:30'),
(42, 'SUCCESS_PHOTO_DELETE', 'Photo is deleted successfully', NULL, '2023-03-07 02:37:30'),
(43, 'SUCCESS_VIDEO_DELETE', 'Video is deleted successfully', NULL, '2023-03-07 02:37:30'),
(44, 'SUCCESS_ADDITIONAL_FEATURE_DELETE', 'Addition Feature is deleted successfully', NULL, '2023-03-07 02:37:30'),
(45, 'ERR_REVIEW_REQUIRED', 'Review is required', NULL, '2023-03-07 02:37:30'),
(46, 'SUCCESS_RATING_PLACED', 'Rating is placed successfully', NULL, '2023-03-07 02:37:30'),
(47, 'SUCCESS_PACKAGE_ENROLL', 'Package is enrolled successfully', NULL, '2023-03-07 02:37:30'),
(48, 'SUCCESS_REVIEW_UPDATE', 'Review is updated successfully', NULL, '2023-03-07 02:37:30'),
(49, 'SUCCESS_REVIEW_DELETE', 'Review is deleted successfully', NULL, '2023-03-07 02:37:30'),
(50, 'SUCCESS_ITEM_REMOVED_FROM_WISHLIST', 'Item is deleted from wishlist successfully', NULL, '2023-03-07 02:37:30'),
(51, 'SUCCESS_PACKAGE_PURCHASE', 'Package purchase is successful', NULL, '2023-03-07 02:37:30'),
(52, 'SUCCESS_MESSAGE_SENT', 'Message is sent successfully', NULL, '2023-03-07 02:37:30'),
(53, 'SUCCESS_REPORT_SENT', 'Report is sent successfully', NULL, '2023-03-07 02:37:30'),
(54, 'ERR_LOGIN_FIRST', 'You have to login first', NULL, '2023-03-07 02:37:30'),
(55, 'ERR_ALREADY_TO_WISHLIST', 'This item is already added to wishlist', NULL, '2023-03-07 02:37:30'),
(56, 'SUCCESS_WISHLIST_ADD', 'Item is added to wishlist successfully', NULL, '2023-03-07 02:37:30'),
(57, 'ERR_ADMIN_NOT_FOUND', 'Admin Not Found', NULL, '2023-03-07 02:37:30'),
(58, 'SUCCESS_DATA_ADD', 'Data added successfully', NULL, '2023-03-07 02:37:30'),
(59, 'SUCCESS_DATA_UPDATE', 'Data is updated successfully', NULL, '2023-03-07 02:37:30'),
(60, 'SUCCESS_DATA_DELETE', 'Data is deleted successfully', NULL, '2023-03-07 02:37:30'),
(61, 'ERR_CONTENT_REQUIRED', 'Contact is required', NULL, '2023-03-07 02:37:30'),
(62, 'ERR_CONTENT_SHORT_REQUIRED', 'Short content is required', NULL, '2023-03-07 02:37:30'),
(63, 'ERR_ITEM_DELETE', 'Item can not be deleted, because it is used in another table.', NULL, '2023-03-07 02:37:30'),
(64, 'SUCCESS_DATABASE_CLEAR', 'Database is cleared successfully.', NULL, '2023-03-07 02:37:30'),
(65, 'SUCCESS_ACTION', 'Action is successful', NULL, '2023-03-07 02:37:30'),
(66, 'ERR_SUBJECT_REQUIRED', 'Subject is required', NULL, '2023-03-07 02:37:30'),
(68, 'ERR_TITLE_REQUIRED', 'Title is required', NULL, '2023-03-07 02:37:30'),
(69, 'ERR_ORDER_NUMERIC', 'Order must be numeric', NULL, '2023-03-07 02:37:30'),
(70, 'ERR_ORDER_MIN', 'Order minimum value is 0', NULL, '2023-03-07 02:37:30'),
(71, 'ERR_ORDER_MAX', 'Order maximum value is 32767', NULL, '2023-03-07 02:37:30'),
(72, 'ERR_TEXT_REQUIRED', 'Text is required', NULL, '2023-03-07 02:37:30'),
(73, 'ERR_URL_REQUIRED', 'URL is required', NULL, '2023-03-07 02:37:30'),
(74, 'ERR_PRICE_REQUIRED', 'Price is required', NULL, '2023-03-07 02:37:30'),
(75, 'ERR_VALID_DAYS_REQUIRED', 'Valid days is required', NULL, '2023-03-07 02:37:30'),
(76, 'ERR_TOTAL_LISTING_REQUIRED', 'Total listing is required', NULL, '2023-03-07 02:37:30'),
(77, 'ERR_TOTAL_AMENITIES_REQUIRED', 'Total amenities is required', NULL, '2023-03-07 02:37:30'),
(78, 'ERR_TOTAL_PHOTOS_REQUIRED', 'Total photos is required', NULL, '2023-03-07 02:37:30'),
(79, 'ERR_TOTAL_VIDEOS_REQUIRED', 'Total videos is required', NULL, '2023-03-07 02:37:30'),
(80, 'ERR_TOTAL_SOCIAL_ITEMS_REQUIRED', 'Total social items is required', NULL, '2023-03-07 02:37:30'),
(81, 'ERR_TOTAL_ADDITIONAL_FEATURES_REQUIRED', 'Total additional features is required', NULL, '2023-03-07 02:37:30'),
(82, 'ERR_ICON_REQUIRED', 'Icon is required', NULL, '2023-03-07 02:37:30'),
(83, 'SUCCESS_PACKAGE_PENDING', 'Package purchase is in pending status. Admin will approve it.', NULL, '2023-03-07 02:37:30'),
(84, 'ERR_BANK_TRANSACTION_REQUIRED', 'Bank transaction information is required', NULL, '2023-03-07 02:37:30'),
(85, 'ARE_YOU_SURE_TO_APPROVE', 'Are you sure want to approve this?', NULL, '2023-03-07 02:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `language_website_texts`
--

CREATE TABLE `language_website_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_key` text NOT NULL,
  `lang_value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_website_texts`
--

INSERT INTO `language_website_texts` (`id`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1, 'FIND_ANYTHING', 'Business/Brand Name ...', NULL, '2023-02-11 15:55:17'),
(2, 'SELECT_LOCATION', 'Select Location', NULL, '2023-02-11 15:55:17'),
(3, 'SELECT_CATEGORY', 'Select Business Type', NULL, '2023-02-11 15:55:17'),
(4, 'SEARCH', 'Search', NULL, '2023-02-11 15:55:17'),
(5, 'LISTINGS', 'Listings', NULL, '2023-02-11 15:55:17'),
(6, 'FEATURED', 'Featured', NULL, '2023-02-11 15:55:17'),
(7, 'REVIEWS', 'Reviews', NULL, '2023-02-11 15:55:17'),
(8, 'HOME', 'Home', NULL, '2023-02-11 15:55:17'),
(9, 'ADDRESS', 'Address', NULL, '2023-02-11 15:55:17'),
(10, 'PHONE_NUMBER', 'Phone Number', NULL, '2023-02-11 15:55:17'),
(11, 'PHONE', 'Phone', NULL, '2023-02-11 15:55:17'),
(12, 'EMAIL_ADDRESS', 'Email Address', NULL, '2023-02-11 15:55:17'),
(13, 'EMAIL', 'Email', NULL, '2023-02-11 15:55:17'),
(14, 'CONTACT_FORM', 'Contact Form', NULL, '2023-02-11 15:55:17'),
(15, 'NAME', 'Name', NULL, '2023-02-11 15:55:17'),
(16, 'MESSAGE', 'Message', NULL, '2023-02-11 15:55:17'),
(17, 'SEND_MESSAGE', 'Send Message', NULL, '2023-02-11 15:55:17'),
(18, 'FILTERS', 'Filters', NULL, '2023-02-11 15:55:17'),
(19, 'FILTER', 'Search', NULL, '2023-02-11 15:55:17'),
(20, 'CATEGORIES', 'Categories', NULL, '2023-02-11 15:55:17'),
(21, 'LOCATIONS', 'Locations', NULL, '2023-02-11 15:55:17'),
(22, 'AMENITIES', 'Amenities', NULL, '2023-02-11 15:55:17'),
(23, 'ADD_TO_WISHLIST', 'Add to Wishlist', NULL, '2023-02-11 15:55:17'),
(24, 'REPORT', 'Report', NULL, '2023-02-11 15:55:17'),
(25, 'SUBMIT_REPORT', 'Submit Report', NULL, '2023-02-11 15:55:17'),
(26, 'DESCRIPTION', 'Description', NULL, '2023-02-11 15:55:17'),
(27, 'PHOTOS', 'Photos', NULL, '2023-02-11 15:55:17'),
(28, 'VIDEOS', 'Videos', NULL, '2023-02-11 15:55:17'),
(29, 'LOCATION_MAP', 'Location Map', NULL, '2023-02-11 15:55:17'),
(30, 'ADDITIONAL_FEATURES', 'Additional Features', NULL, '2023-02-11 15:55:17'),
(31, 'CONTACT_INFORMATION', 'Contact Information', NULL, '2023-02-11 15:55:17'),
(32, 'WEBSITE', 'Website (optional)', NULL, '2023-02-11 15:55:17'),
(33, 'OVERALL', 'Overall', NULL, '2023-02-11 15:55:17'),
(34, 'OUT_OF_5', 'Out of 5', NULL, '2023-02-11 15:55:17'),
(35, 'NO_REVIEW_FOUND', 'No Review Found', NULL, '2023-02-11 15:55:17'),
(36, 'WRITE_A_REVIEW', 'Write a Review', NULL, '2023-02-11 15:55:17'),
(37, 'LOGIN_TO_REVIEW', 'Login to Review', NULL, '2023-02-11 15:55:17'),
(38, 'OWN_PRODUCT_REVIEW_STOP', 'You can not review your own listing items', NULL, '2023-02-11 15:55:17'),
(39, 'ALREADY_GIVEN_REVIEW_STOP', 'You already have reviewed this listing', NULL, '2023-02-11 15:55:17'),
(40, 'YOUR_RATING', 'Your Rating', NULL, '2023-02-11 15:55:17'),
(41, 'STAR_1', '1 Star', NULL, '2023-02-11 15:55:17'),
(42, 'STAR_2', '2 Star', NULL, '2023-02-11 15:55:17'),
(43, 'STAR_3', '3 Star', NULL, '2023-02-11 15:55:17'),
(44, 'STAR_4', '4 Star', NULL, '2023-02-11 15:55:17'),
(45, 'STAR_5', '5 Star', NULL, '2023-02-11 15:55:17'),
(46, 'YOUR_REVIEW', 'Your Review', NULL, '2023-02-11 15:55:17'),
(47, 'SUBMIT', 'Submit', NULL, '2023-02-11 15:55:17'),
(48, 'AGENT', 'Agent', NULL, '2023-02-11 15:55:17'),
(49, 'VIEW_PROFILE', 'View Profile', NULL, '2023-02-11 15:55:17'),
(50, 'POSTED_ON', 'Posted on', NULL, '2023-02-11 15:55:17'),
(51, 'OPENING_HOUR', 'Opening Hours', NULL, '2023-02-11 15:55:17'),
(52, 'MONDAY', 'Monday', NULL, '2023-02-11 15:55:17'),
(53, 'TUESDAY', 'Tuesday', NULL, '2023-02-11 15:55:17'),
(54, 'WEDNESDAY', 'Wednesday', NULL, '2023-02-11 15:55:17'),
(55, 'THURSDAY', 'Thursday', NULL, '2023-02-11 15:55:17'),
(56, 'FRIDAY', 'Friday', NULL, '2023-02-11 15:55:17'),
(57, 'SATURDAY', 'Saturday', NULL, '2023-02-11 15:55:17'),
(58, 'SUNDAY', 'Sunday', NULL, '2023-02-11 15:55:17'),
(59, 'DAYS', 'Days', NULL, '2023-02-11 15:55:17'),
(60, 'LISTING_ALLOWED', 'Listing Allowed', NULL, '2023-02-11 15:55:17'),
(61, 'AMENITIES_PER_LISTING', 'Amenities per Listing', NULL, '2023-02-11 15:55:17'),
(62, 'PHOTOS_PER_LISTING', 'Photos per Listing', NULL, '2023-02-11 15:55:17'),
(63, 'VIDEOS_PER_LISTING', 'Videos per Listing', NULL, '2023-02-11 15:55:17'),
(64, 'SOCIAL_ITEMS_PER_LISTING', 'Social Items per Listing', NULL, '2023-02-11 15:55:17'),
(65, 'ADDITIONAL_FEATURES_PER_LISTING', 'Additional Features per Listing', NULL, '2023-02-11 15:55:17'),
(66, 'FEATURED_LISTING_ALLOWED', 'Feactured Listing Allowed', NULL, '2023-02-11 15:55:17'),
(67, 'FEATURED_LISTING_NOT_ALLOWED', 'Featured  Listing Not Allowed', NULL, '2023-02-11 15:55:17'),
(68, 'ENROLL_NOW', 'Enroll Now', NULL, '2023-02-11 15:55:17'),
(69, 'BUY_NOW', 'Buy Now', NULL, '2023-02-11 15:55:17'),
(70, 'PACKAGES', 'Packages', NULL, '2023-02-11 15:55:17'),
(71, 'CATEGORY', 'Category', NULL, '2023-02-11 15:55:17'),
(72, 'CATEGORY_COLON', 'Category:', NULL, '2023-02-11 15:55:17'),
(73, 'COMMENTS', 'Comments', NULL, '2023-02-11 15:55:17'),
(74, 'COMMENT', 'Comment', NULL, '2023-02-11 15:55:17'),
(75, 'POST_COMMENT', 'Post Comment', NULL, '2023-02-11 15:55:17'),
(76, 'NO_COMMENT_FOUND', 'No Comment Found', NULL, '2023-02-11 15:55:17'),
(77, 'REGISTERED_ON', 'Registered on', NULL, '2023-02-11 15:55:17'),
(78, 'LISTING_CATEGORY_COLON', 'Listing Category:', NULL, '2023-02-11 15:55:17'),
(79, 'LISTING_LOCATION_COLON', 'Listing Location:', NULL, '2023-02-11 15:55:17'),
(80, 'NO_RESULT_FOUND', 'No Result Found', NULL, '2023-02-11 15:55:17'),
(81, 'DASHBOARD', 'Dashboard', NULL, '2023-02-11 15:55:17'),
(82, 'PURCHASE_HISTORY', 'Purchase History', NULL, '2023-02-11 15:55:17'),
(83, 'ALL_LISTINGS', 'All Listings', NULL, '2023-02-11 15:55:17'),
(84, 'ADD_LISTING', 'Add Business', NULL, '2023-02-11 15:55:17'),
(85, 'MY_REVIEWS', 'My Reviews', NULL, '2023-02-11 15:55:17'),
(86, 'WISHLIST', 'Wishlist', NULL, '2023-02-11 15:55:17'),
(87, 'EDIT_PROFILE', 'Edit Profile', NULL, '2023-02-11 15:55:17'),
(88, 'EDIT_PASSWORD', 'Edit Password', NULL, '2023-02-11 15:55:17'),
(89, 'EDIT_PHOTO', 'Edit Photo', NULL, '2023-02-11 15:55:17'),
(90, 'EDIT_BANNER', 'Edit Banner', NULL, '2023-02-11 15:55:17'),
(91, 'LOGOUT', 'Logout', NULL, '2023-02-11 15:55:17'),
(92, 'ACTIVE_LISTING_ITEMS', 'Active Listing Items', NULL, '2023-02-11 15:55:17'),
(93, 'PENDING_LISTING_ITEMS', 'Pending Listing Items', NULL, '2023-02-11 15:55:17'),
(94, 'ACTIVE_PACKAGE_NAME', 'Active Package Name', NULL, '2023-02-11 15:55:17'),
(95, 'PACKAGE_START_DATE', 'Package Start Date', NULL, '2023-02-11 15:55:17'),
(96, 'PACKAGE_END_DATE', 'Package End Date', NULL, '2023-02-11 15:55:17'),
(97, 'DAYS_REMAINING', 'Days Remaining', NULL, '2023-02-11 15:55:17'),
(98, 'EXPIRED', 'Expired', NULL, '2023-02-11 15:55:17'),
(99, 'QUESTION_FEATURED_LISTING_ALLOWED', 'Featured Listing Allowed?', NULL, '2023-02-11 15:55:17'),
(100, 'FORGET_PASSWORD', 'Forget Password', NULL, '2023-02-11 15:55:17'),
(101, 'BACK_TO_LOGIN_PAGE', 'Back to login page', NULL, '2023-02-11 15:55:17'),
(102, 'RESET_PASSWORD', 'Reset Password', NULL, '2023-02-11 15:55:17'),
(103, 'NEW_PASSWORD', 'New Password', NULL, '2023-02-11 15:55:17'),
(104, 'RETYPE_PASSWORD', 'Retype Password', NULL, '2023-02-11 15:55:17'),
(105, 'UPDATE', 'Update', NULL, '2023-02-11 15:55:17'),
(106, 'SERIAL', 'Serial', NULL, '2023-02-11 15:55:17'),
(107, 'ACTION', 'Action', NULL, '2023-02-11 15:55:17'),
(108, 'FEATURED_PHOTO', 'Brand Logo', NULL, '2023-02-11 15:55:17'),
(109, 'SEE_DETAIL', 'See Detail', NULL, '2023-02-11 15:55:17'),
(110, 'ARE_YOU_SURE', 'Are you sure?', NULL, '2023-02-11 15:55:17'),
(111, 'EDIT_PROFILE_INFORMATION', 'Edit Profile Information', NULL, '2023-02-11 15:55:17'),
(112, 'NAME_CAN_NOT_BE_CHANGED', 'Name can not be changed', NULL, '2023-02-11 15:55:17'),
(113, 'EMAIL_CAN_NOT_BE_CHANGED', 'Email can not be changed', NULL, '2023-02-11 15:55:17'),
(114, 'COUNTRY', 'Country', NULL, '2023-02-11 15:55:17'),
(115, 'STATE', 'State', NULL, '2023-02-11 15:55:17'),
(116, 'CITY', 'City', NULL, '2023-02-11 15:55:17'),
(117, 'ZIP', 'Zip', NULL, '2023-02-11 15:55:17'),
(118, 'FACEBOOK', 'Facebook', NULL, '2023-02-11 15:55:17'),
(119, 'TWITTER', 'Twitter', NULL, '2023-02-11 15:55:17'),
(120, 'LINKEDIN', 'Linkedin', NULL, '2023-02-11 15:55:17'),
(121, 'INSTAGRAM', 'Instagram', NULL, '2023-02-11 15:55:17'),
(122, 'PINTEREST', 'Pinterest', NULL, '2023-02-11 15:55:17'),
(123, 'YOUTUBE', 'YouTube', NULL, '2023-02-11 15:55:17'),
(124, 'EXISTING_PHOTO', 'Existing Photo', NULL, '2023-02-11 15:55:17'),
(125, 'CHANGE_PHOTO', 'Change Photo', NULL, '2023-02-11 15:55:17'),
(126, 'EXISTING_BANNER', 'Existing Banner', NULL, '2023-02-11 15:55:17'),
(127, 'CHANGE_BANNER', 'Change Banner', NULL, '2023-02-11 15:55:17'),
(128, 'REGISTRATION', 'Registrtion', NULL, '2023-02-11 15:55:17'),
(129, 'PASSWORD', 'Password', NULL, '2023-02-11 15:55:17'),
(130, 'MAKE_REGISTRATION', 'Make Registration', NULL, '2023-02-11 15:55:17'),
(131, 'LOGIN_NOW', 'Login Now', NULL, '2023-02-11 15:55:17'),
(132, 'HAVE_AN_ACCOUNT', 'Have an account?', NULL, '2023-02-11 15:55:17'),
(133, 'LOGIN', 'Login', NULL, '2023-02-11 15:55:17'),
(134, 'QUESTION_NEW_USER', 'New User?', NULL, '2023-02-11 15:55:17'),
(135, 'REGISTER_NOW', 'Register Now', NULL, '2023-02-11 15:55:17'),
(136, 'RATING', 'Rating', NULL, '2023-02-11 15:55:17'),
(137, 'REVIEW', 'Review', NULL, '2023-02-11 15:55:17'),
(138, 'EDIT_REVIEW', 'Edit Review', NULL, '2023-02-11 15:55:17'),
(139, 'PAYMENT', 'Payment', NULL, '2023-02-11 15:55:17'),
(140, 'PAY_WITH_PAYPAL', 'Pay with PayPal', NULL, '2023-02-11 15:55:17'),
(141, 'PAY_WITH_STRIPE', 'Pay with Stripe', NULL, '2023-02-11 15:55:17'),
(142, 'PACKAGE_NAME', 'Package Name', NULL, '2023-02-11 15:55:17'),
(143, 'PAID_AMOUNT', 'Paid Amount', NULL, '2023-02-11 15:55:17'),
(144, 'CURRENTLY_ACTIVE', 'Currently Active', NULL, '2023-02-11 15:55:17'),
(145, 'INVOICE', 'Invoice', NULL, '2023-02-11 15:55:17'),
(146, 'HISTORY_DETAIL', 'History Detail', NULL, '2023-02-11 15:55:17'),
(147, 'PACKAGE_DETAIL', 'Package Detail', NULL, '2023-02-11 15:55:17'),
(148, 'PURCHASE_HISTORY_DETAIL', 'Purchase History Detail', NULL, '2023-02-11 15:55:17'),
(149, 'TRANSACTION_ID', 'Transaction ID', NULL, '2023-02-11 15:55:17'),
(150, 'NOT_APPLICABLE', 'N/A', NULL, '2023-02-11 15:55:17'),
(151, 'BACK_TO_PREVIOUS', 'Back to previous page', NULL, '2023-02-11 15:55:17'),
(152, 'PAYMENT_STATUS', 'Payment Status', NULL, '2023-02-11 15:55:17'),
(153, 'PACKAGE_PRICE', 'Package Price', NULL, '2023-02-11 15:55:17'),
(154, 'PAYMENT_METHOD', 'Payment Method', NULL, '2023-02-11 15:55:17'),
(155, 'SUBTOTAL', 'Subtotal', NULL, '2023-02-11 15:55:17'),
(156, 'TOTAL_PRICE', 'Total Price', NULL, '2023-02-11 15:55:17'),
(157, 'INVOICE_DATE', 'Invoice Date', NULL, '2023-02-11 15:55:17'),
(158, 'INVOICED_TO', 'Invoiced To', NULL, '2023-02-11 15:55:17'),
(159, 'DATE', 'Date', NULL, '2023-02-11 15:55:17'),
(160, 'INVOICE_NO', 'Invoice No', NULL, '2023-02-11 15:55:17'),
(161, 'PRINT_INVOICE', 'Print Invoice', NULL, '2023-02-11 15:55:17'),
(162, 'LOCATION', 'Location', NULL, '2023-02-11 15:55:17'),
(163, 'LISTING_NAME', 'Business/Brand Name', NULL, '2023-02-11 15:55:17'),
(164, 'NOT_FEATURED', 'Not Featured', NULL, '2023-02-11 15:55:17'),
(165, 'STATUS', 'Status', NULL, '2023-02-11 15:55:17'),
(166, 'LISTING_DETAIL', 'Listing Detail', NULL, '2023-02-11 15:55:17'),
(167, 'LISTING_SLUG', 'User Name', NULL, '2023-02-11 15:55:17'),
(168, 'LISTING_DESCRIPTION', 'Business Description', NULL, '2023-02-11 15:55:17'),
(169, 'MAP_IFRAME_CODE', 'Map (iFrame Code)', NULL, '2023-02-11 15:55:17'),
(170, 'SOCIAL_MEDIA', 'Social Media', NULL, '2023-02-11 15:55:17'),
(171, 'URL', 'Link', NULL, '2023-02-11 15:55:17'),
(172, 'GOOGLE_PLUS', 'Google Plus', NULL, '2023-02-11 15:55:17'),
(173, 'ALLOWED_EQUAL', 'Allowed=', NULL, '2023-02-11 15:55:17'),
(174, 'VALUE', 'Value (optional)', NULL, '2023-02-11 15:55:17'),
(175, 'SEO_SECTION', 'SEO Section', NULL, '2023-02-11 15:55:17'),
(176, 'TITLE', 'Title (optional)', NULL, '2023-02-11 15:55:17'),
(177, 'META_DESCRIPTION', 'Meta Description (optional)', NULL, '2023-02-11 15:55:17'),
(178, 'YOUTUBE_VIDEO_ID', 'YouTube Video Link (optional)', NULL, '2023-02-11 15:55:17'),
(179, 'QUESTION_FEATURED', 'Featured?', NULL, '2023-02-11 15:55:17'),
(180, 'YES', 'Yes', NULL, '2023-02-11 15:55:17'),
(181, 'NO', 'No', NULL, '2023-02-11 15:55:17'),
(182, 'MAX_ALLOWED_SOCIAL_ITEMS_FOR_YOU', 'Maximum allowed social items for you', NULL, '2023-02-11 15:55:17'),
(183, 'MAX_ALLOWED_PHOTOS_FOR_YOU', 'Maximum allowed photos for you', NULL, '2023-02-11 15:55:17'),
(184, 'MAX_ALLOWED_VIDEOS_FOR_YOU', 'Maximum allowed videos for you', NULL, '2023-02-11 15:55:17'),
(185, 'MAX_ALLOWED_ADDITIONAL_FEATURES_FOR_YOU', 'Maximum allowed additional features for you', NULL, '2023-02-11 15:55:17'),
(186, 'MAX_ALLOWED_AMENITIES_FOR_YOU', 'Maximum allowed amenities for you', NULL, '2023-02-11 15:55:17'),
(187, 'EDIT_LISTING', 'Edit Listing', NULL, '2023-02-11 15:55:17'),
(188, 'EXISTING_FEATURED_PHOTO', 'Existing Featured Photo', NULL, '2023-02-11 15:55:17'),
(189, 'EXISTING_SOCIAL_MEDIA', 'Existing Social Media', NULL, '2023-02-11 15:55:17'),
(190, 'NEW_SOCIAL_MEDIA', 'New Social Media', NULL, '2023-02-11 15:55:17'),
(191, 'DELETE', 'Delete', NULL, '2023-02-11 15:55:17'),
(192, 'EXISTING_PHOTOS', 'Existing Photos', NULL, '2023-02-11 15:55:17'),
(193, 'NEW_PHOTOS', 'New Photos', NULL, '2023-02-11 15:55:17'),
(194, 'EXISTING_VIDEOS', 'Existing Videos', NULL, '2023-02-11 15:55:17'),
(195, 'NEW_VIDEOS', 'New Videos', NULL, '2023-02-11 15:55:17'),
(196, 'EXISTING_ADDITIONAL_FEATURES', 'Existing Additional Features', NULL, '2023-02-11 15:55:17'),
(197, 'NEW_ADDITIONAL_FEATURES', 'New Additional Features', NULL, '2023-02-11 15:55:17'),
(198, 'PAY_WITH_BANK', 'Pay with Bank', NULL, '2023-02-11 15:55:17'),
(199, 'BANK_TRANSACTION_INFO', 'Transaction Information', NULL, '2023-02-11 15:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_name` text NOT NULL,
  `listing_slug` text DEFAULT NULL,
  `listing_description` text NOT NULL,
  `listing_address` text DEFAULT NULL,
  `address_longitude` varchar(255) DEFAULT NULL,
  `address_latitude` varchar(255) DEFAULT NULL,
  `listing_phone` text NOT NULL,
  `listing_email` text DEFAULT NULL,
  `listing_website` text DEFAULT NULL,
  `listing_map` text DEFAULT NULL,
  `listing_oh_monday` text DEFAULT NULL,
  `listing_oh_tuesday` text DEFAULT NULL,
  `listing_oh_wednesday` text DEFAULT NULL,
  `listing_oh_thursday` text DEFAULT NULL,
  `listing_oh_friday` text DEFAULT NULL,
  `listing_oh_saturday` text DEFAULT NULL,
  `listing_oh_sunday` text DEFAULT NULL,
  `listing_featured_photo` text NOT NULL,
  `listing_category_id` int(11) NOT NULL,
  `listing_location_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `listing_status` text NOT NULL,
  `is_featured` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `listing_name`, `listing_slug`, `listing_description`, `listing_address`, `address_longitude`, `address_latitude`, `listing_phone`, `listing_email`, `listing_website`, `listing_map`, `listing_oh_monday`, `listing_oh_tuesday`, `listing_oh_wednesday`, `listing_oh_thursday`, `listing_oh_friday`, `listing_oh_saturday`, `listing_oh_sunday`, `listing_featured_photo`, `listing_category_id`, `listing_location_id`, `user_id`, `admin_id`, `seo_title`, `seo_meta_description`, `listing_status`, `is_featured`, `created_at`, `updated_at`) VALUES
(3, 'Ruby Tuesday', 'ruby-tuesday', '<p>We know that comfort and convenience are top priorities on every traveler\'s mind. That\'s why we designed the Holiday Inn Express Experience around your unique needs. Stylish accommodations and streamlined guest services help get you where you\'re going, while our signature bedroom and bathroom collections might give you a reason to stay behind.<br></p>', '333 East Broadway AvenueMaryville, TN 37804', NULL, NULL, '(606) 862-0015', NULL, 'http://www.rubytuesday.com/', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3237.7024268769424!2d-83.97154938525155!3d35.75811813335977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x885e9fd3fccccd2b%3A0x4b27a99931ed8fd8!2s333%20E%20Broadway%20Ave%2C%20Maryville%2C%20TN%2037804%2C%20USA!5e0!3m2!1sen!2sbd!4v1625719037629!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '126f23d72c2d6009d7b47a548af73f48.jpg', 2, 3, 0, 1, 'Ruby Tuesday', NULL, 'Active', 'Yes', '2021-07-07 22:44:22', '2023-07-21 12:27:51'),
(5, 'Saybrook Point Resort & Marina', 'saybrook-point-resort-marina', '<p>Lorem ipsum dolor sit amet, suscipit dissentiunt usu at, eu nam veri vidit signiferumque. Ad mea erat fabellas, et facete everti eum, tation consul ea ius. Autem feugiat maiorum id sea. Est omnis mediocrem assentior ea. Nam ubique possit verterem ea, cum facer scriptorem an.</p><p><span style=\"font-size: 1rem;\">Equidem legendos duo ei, et legimus offendit mei. Mea amet tibique explicari ne. Nam blandit patrioque comprehensam an, sed in errem omnes partem. No quo impedit percipit comprehensam, ei dolores intellegam pro, et sed quaeque temporibus referrentur. Quodsi causae dissentias in pri, idque ridens cum an. Vis in facilisi conclusionemque, eu est erant affert veritus. Id qui quodsi iriure quaestio, omittam praesent ne sea, postulant consetetur definitiones an nec.</span><br></p><p><span style=\"font-size: 1rem;\">Probo animal interpretaris ea mea. Mea ad nostrud urbanitas inciderint, sea no noluisse incorrupte. His democritum vituperatoribus no, ad cum offendit rationibus vituperatoribus, eos te quodsi interesset. Regione bonorum no quo. Lobortis torquatos constituto ne per, ferri facete ea duo. Usu molestie complectitur eu, euismod forensibus moderatius sed no.</span><br></p>', '2 Bridge St Old Saybrook, CT 06475', NULL, NULL, '(860) 395-2000', 'info@saybrook.com', 'https://www.saybrook.com/', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2998.1644726412524!2d-72.35277188518384!3d41.283524779273854!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e62268e8620931%3A0x88b1bc148a89e421!2s2%20Bridge%20St%2C%20Old%20Saybrook%2C%20CT%2006475%2C%20USA!5e0!3m2!1sen!2sbd!4v1625913163080!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '24 Hours Open', '24 Hours Open', '24 Hours Open', '24 Hours Open', '24 Hours Open', '24 Hours Open', '24 Hours Open', 'e1f9ef65722d3a382150b23824ee2131.jpg', 1, 3, 3, 0, 'Saybrook Point Resort & Marina', NULL, 'Active', 'Yes', '2021-07-10 04:37:48', '2023-02-02 00:50:22'),
(6, 'Cappleman Antiques', 'cappleman-antiques', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', '1619 Constitution Dr Iuka, MS 38852', NULL, NULL, '(662) 423-6836', NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3275.2685692563628!2d-88.20734968527874!3d34.82433938409503!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x887d9fa0f88eab05%3A0x5ef40a6f791abf32!2s1619%20Constitution%20Dr%2C%20Iuka%2C%20MS%2038852%2C%20USA!5e0!3m2!1sen!2sbd!4v1626071441294!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '10:00 AM - 5:00 PM', '10:00 AM - 5:00 PM', '10:00 AM - 5:00 PM', '10:00 AM - 5:00 PM', '10:00 AM - 5:00 PM', '10:00 AM - 5:00 PM', 'Closed', 'd1bb41291198239b76dc20f3da8d595a.jpg', 7, 2, 4, 0, 'Cappleman Antiques', 'Cappleman Antiques', 'Active', 'No', '2021-07-12 00:34:12', '2023-02-02 00:50:17'),
(7, '57 Fitness', '57-fitness', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p><p>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', '3780 Ash Avenue\r\nSt Louis, MO 63101', NULL, NULL, '(731) 689-7423', 'info@fitness57.com', 'https://www.fitness57.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12467.067058237182!2d-90.20114767193759!3d38.63124633618563!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87d8b318a560484b%3A0x4d6bff75e2320bd4!2sSt.%20Louis%2C%20MO%2063101%2C%20USA!5e0!3m2!1sen!2sbd!4v1627142211618!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', 'bc605cbd5029dd3efb0bdcdff79e7be6.jpg', 3, 3, 0, 1, '57 Fitness', NULL, 'Active', 'Yes', '2021-07-12 11:57:14', '2023-02-02 00:50:14'),
(8, 'Duane Wright Realty', 'duane-wright-realty', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p><p>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', '1375 Stanley Avenue\r\nLynbrook, NY 11563', NULL, NULL, '(731) 607-3076', 'contact@duanewright.com', 'http://www.duanewright.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24214.094270888058!2d-73.69071312302569!3d40.657181234407346!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2649434a75c9b%3A0x2a440e4b0a258756!2sLynbrook%2C%20NY%2011563%2C%20USA!5e0!3m2!1sen!2sbd!4v1627142848579!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '10 AM - 9 PM', '10 AM - 9 PM', '10 AM - 9 PM', '10 AM - 9 PM', '10 AM - 9 PM', '10 AM - 9 PM', 'Closed', 'edab4be8928878d360863260de306ff9.jpg', 6, 5, 0, 1, 'Duane Wright Realty', NULL, 'Pending', 'Yes', '2021-07-12 12:00:04', '2023-02-01 01:37:31'),
(10, 'Chicago Medical Center', 'chicago-medical-center', '<p>Lorem ipsum dolor sit amet, suscipit dissentiunt usu at, eu nam veri vidit signiferumque. Ad mea erat fabellas, et facete everti eum, tation consul ea ius. Autem feugiat maiorum id sea. Est omnis mediocrem assentior ea. Nam ubique possit verterem ea, cum facer scriptorem an.</p><p><span style=\"font-size: 1rem;\">Equidem legendos duo ei, et legimus offendit mei. Mea amet tibique explicari ne. Nam blandit patrioque comprehensam an, sed in errem omnes partem. No quo impedit percipit comprehensam, ei dolores intellegam pro, et sed quaeque temporibus referrentur. Quodsi causae dissentias in pri, idque ridens cum an. Vis in facilisi conclusionemque, eu est erant affert veritus. Id qui quodsi iriure quaestio, omittam praesent ne sea, postulant consetetur definitiones an nec.</span><br></p><p><span style=\"font-size: 1rem;\">Probo animal interpretaris ea mea. Mea ad nostrud urbanitas inciderint, sea no noluisse incorrupte. His democritum vituperatoribus no, ad cum offendit rationibus vituperatoribus, eos te quodsi interesset. Regione bonorum no quo. Lobortis torquatos constituto ne per, ferri facete ea duo. Usu molestie complectitur eu, euismod forensibus moderatius sed no.</span></p>', '3661 Pinewood Avenue\r\nMenominee, MI 49858', NULL, NULL, '123-343-4444', 'chicagomedicalcenter@gmail.com', 'http://www.chicagomedicalcenter.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d45041.29338642683!2d-87.66000203029316!3d45.124697659298626!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4d52a1080e88c5fd%3A0x4ab429fd11be80ec!2sMenominee%2C%20MI%2049858%2C%20USA!5e0!3m2!1sen!2sbd!4v1627143440252!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '24 Hours Open', '24 Hours Open', '24 Hours Open', '24 Hours Open', '24 Hours Open', '24 Hours Open', '24 Hours Open', '5b3f69db1e4d8800b0fca61fe676d676.jpg', 8, 2, 3, 0, 'Chicago Medical Center', 'Chicago Medical Center', 'Active', 'No', '2021-07-19 08:43:27', '2023-02-02 00:50:29'),
(12, 'Cherry', 'Hot', '<p>We deal on clothes&nbsp;</p>', 'Primary health centre, Abuja, Nigeria', '7.467853699999998', '9.009242499999997', '08132547433', 'samuelonah0@gmail.com', 'Www.dorime.com', NULL, '6am to 5pm', '6 to 7', '1 to 3', '1 to 6', '1 to 1', '1 to 5', 'Closed', '78d1567561ff1c4d806129781e4468f4.jpg', 7, 2, 3, 0, 'Job creation', 'We deal on clothes', 'Pending', 'No', '2022-11-16 03:52:45', '2023-02-02 00:49:50'),
(13, 'this is test listing', 'this-is-testlisting', '<p>this is test description<br></p>', 'Nizamiye Hospital, Abuja, Nigeria', '7.390735399999999', '9.059489800000001', '3434', '34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '078ada3f59fc2248f46acb968c9a768f.jpg', 1, 0, 0, 1, NULL, NULL, 'Pending', 'Yes', '2022-12-19 22:54:34', '2023-02-01 01:39:07'),
(14, 'this is user test listing', 'this-is-user-test-listing', '<p>this is user test description<br></p>', 'Govt. Secondary School, Ato Close Zone 4, Abuja, Nigeria', '7.4767234', '9.0649949', '94354545454', 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'b98e98b73e5b7c8bde92f244917ec41a.jpg', 2, 0, 3, 0, NULL, NULL, 'Pending', 'Yes', '2022-12-20 05:27:47', '2023-02-01 01:39:11'),
(15, 'Beauty\'s Couture.', 'Bc', '<p>In our world,we bring your imaginative fashion designs to live. We make all kind of dresses,</p><p>Summer dresses,<span style=\"font-size: 1rem;\">Party dresses,</span><span style=\"font-size: 1rem;\">Corporate dresses,Etc....</span></p><p>A trial with us,will keep you wanting more. Welcome!</p>', 'Port Harcourt, Nigeria', '6.974603999999999', '4.847222599999999', '+2349150446451', 'beauty.eliad@gmail.com', NULL, NULL, '8AM-7PM', '8AM -7PM', '8AM -7PM', '8AM -7PM', '8AM -7PM', '8AM -7PM', '8AM -7PM', 'a59d659ac9d824fbdfb28ce99f0ae809.jpg', 14, 0, 19, 0, NULL, NULL, 'Active', 'No', '2023-01-09 13:30:11', '2023-01-13 18:15:10'),
(16, 'SAMMY GYM', 'GYM', '<p>BEST IN YOUR UR FITNESS</p>', 'Nsukka, Nigeria', '7.3732655', '6.8429422', '08132547435', 'SM@GMAIL.COM', NULL, NULL, '6AM TO 8PM', '6AM TO PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '8bff600a2401f615b5b177d4731d701b.jpg', 43, 0, 7, 0, NULL, NULL, 'Pending', 'No', '2023-01-13 18:02:46', '2023-02-02 00:50:36'),
(18, 'HabaTech Digital Solutions', 'habatech', '<p class=\"15\" style=\"margin: 0pt 15.15pt 0pt 22.85pt; text-indent: -22.85pt; line-height: 113%;\"><!--[if !supportLists]--><span style=\"font-family: Calibri; color: rgb(51, 51, 51); letter-spacing: -0.05pt; font-weight: bold; font-size: 14pt; --darkreader-inline-color:#c8c3bc;\" data-darkreader-inline-color=\"\">1.&nbsp;</span><!--[endif]--><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 14pt;\">Habatech Digital Solutions</span></b><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';font-size:14.0000pt;\">&nbsp;is birth in response to the exponential increase in the need of a reputable online presence for every individual, business, cooperatives, companies, churches etc. We are drilled through the</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';letter-spacing:-1.6500pt;\r\nfont-size:14.0000pt;\">&nbsp;</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';font-size:14.0000pt;\">standard skills and requirements to fit into the 21st century demand of digital products and</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';letter-spacing:0.0500pt;\r\nfont-size:14.0000pt;\">&nbsp;</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';font-size:14.0000pt;\">services.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';font-size:14.0000pt;\"><o:p></o:p></span></p><p class=\"MsoBodyText\" style=\"margin-right:7.5500pt;margin-left:22.7000pt;mso-para-margin-left:2.0000gd;\r\ntext-indent:-0.7000pt;mso-char-indent-count:-0.0500;line-height:114%;\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';font-size:14.0000pt;\">We are dedicated deem of highly skilled software developers and engineers, with high degree of proficiency in 21st century digital skills capable of offering you best of your digital imaginations, world class secured internet deployments, high application speed and high traffic compatibility</span><span style=\"font-family: &quot;Times New Roman&quot;; color: rgb(102, 102, 102); font-size: 14pt; --darkreader-inline-color:#a8a095;\" data-darkreader-inline-color=\"\">.</span><u><span style=\"font-family: &quot;Times New Roman&quot;; color: rgb(0, 0, 0); font-size: 14pt; --darkreader-inline-color:#e8e6e3;\" data-darkreader-inline-color=\"\"><o:p></o:p></span></u></p>', 'Enugu, Nigeria', '7.5138947', '6.448270099999999', '+2347064611080', 'info@habatech.net', 'habatech.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'e8bc4f605876d9191d9725be3b2a628a.png', 59, 0, 7, 0, 'Software Development company near me', 'Web application development, mobile app development, ios dev.', 'Active', 'No', '2023-02-05 19:21:32', '2023-02-07 02:37:52'),
(20, 'Edulinx', 'Natsol', 'Edulinx is a professional within the graphic design and graphic arts industry. We assemble together images, typography, or (sometimes) motion graphics. We also creates the graphics primarily for published, printed, or electronic media, such as brochures and advertising.<div><span style=\"font-size: 1rem;\">We promote a brand identity through marketing and visual content from logo design to advertising, copywriting or slogan design and branding.</span><br></div>', 'Nsukka, Nigeria', '7.3732655', '6.8429422', '09029281851', 'Idokosolomonchinedu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9f1139035b8543888ad2a0dd7b89cd6a.jpg', 84, 0, 53, 0, NULL, NULL, 'Active', 'No', '2023-02-07 02:35:53', '2023-02-07 02:37:53'),
(21, 'Janie Cakes and desert', 'Janie', '<p>Janie cakes and dessert</p><p><br></p><p>We specialize in home made cakes and dessert....We offer varieties of breath-taking cakes ranging from coconut cake, banana cake, vanilla cake, chocolate cake, red velvet cake, sponge cake, and small chops like samosa, spring roll, puffs, doughnuts etc. We cater for birthday, special occasions like valentine packages and surprise packages, which will provide significance convenience for customers.... Motto:Unforgettable Sweetness You\'ll Keep Craving For.</p>', 'UNIVERSITY OF NIGERIA NSUKKA, Nsukka, Nigeria', '7.4101442', '6.8682021', '+234 818 087 3483', 'janiferg2002@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', 'cb9616c3e3abc510f00f31d7d4552a5e.jpg', 86, 0, 54, 0, NULL, NULL, 'Active', 'No', '2023-02-07 10:14:00', '2023-02-07 10:14:50'),
(23, 'M-JAY Fabrics collection', 'Jayboy1', '<p>In M-JAY Fabrics collection, we offer all kind of fabrics materials with different quality and design like, Ankara, George, Lace, Senator materials, Vel-vet Sequence, Crepe, leader materials, Gele, shirt materials, Vintage, and Female Hand bags, etc.. \"YOUR BEAUTY IS OUR CONCERN\"</p><p><br></p>', '@ No.1 Oceanic Plaza Onuiyi Nsukka, Enugu State.', NULL, NULL, '08067104025, 09122525529', 'nnabugwujustice@gmail.com', NULL, NULL, '8am - 8pm', '8am - 8pm', '8am - 8pm', '8am - 8pm', '8am - 8pm', '8am - 8pm', NULL, '15b4ad50705f1b59bb30edcd7e9600e2.jpg', 40, 0, 58, 0, 'CEO', NULL, 'Active', 'Yes', '2023-02-08 16:24:20', '2023-02-08 19:24:59'),
(24, 'PROMO COMPUTERS', 'Promo', '<p>We deals on all kind of computers such ask, hp laptops, accer, lenovo etc &nbsp;and computer accessories.</p><p>We have been existing for over 7 years and we give the best price for our customers.</p><p>chcek us out today using our contact informations</p>', 'Nsukka, Nigeria', '7.3732655', '6.8429422', '0813 166 8465', 'Stanrock8@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd6d357e8e934f48153a13b1db6e0cd50.jpg', 36, 0, 60, 0, NULL, NULL, 'Active', 'No', '2023-02-11 15:13:16', '2023-02-11 15:53:57'),
(25, 'BOBBY FUNERAL HOME', 'Bobby1', '<p>Bobby funeral homes deals on all kind of gaskets, ambulance, undertakers etc. we help you give your loved ones a befitting burial and our services are top notch.&nbsp;</p>', 'Nsukka, Nigeria', '7.3732655', '6.8429422', '0903 872 6757', 'Bobbyfuneral763@gmail', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f471b0b51496dfe195e1ef73a3b05793.jpg', 29, 0, 36, 0, NULL, NULL, 'Active', 'No', '2023-02-11 15:27:39', '2023-02-11 15:53:59'),
(26, 'E-Star Cake and pastries', 'E-star', '<p><b>E-star Cake and Pastries</b></p><p><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Just a Bite, you will ask for more</font></p><p>We Banke All kind of Events cake. Proposal Package and small Chops.</p><p><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">(Birthday cakes, Weeding cake, Surprise Partt Cake, Chi-chim, Peanuts, Meatpie Etc)</span></p><p>Estar cakes and pastries is where&nbsp;<span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">you get your yummy cake and&nbsp;</span><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">crunchy pastries at affordable&nbsp;</span><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">price, just a bite you will ask for&nbsp;</span><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">more.</span></p>', 'Awka, Anambra, Nigeria', '7.0821162', '6.222004300000001', '07032128841', 'cynthiaesther95@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1eb0903d6e715ed6ecab5cc8e555a45c.jpg', 86, 0, 61, 0, NULL, NULL, 'Active', 'No', '2023-02-12 00:52:44', '2023-02-12 01:03:46'),
(27, 'Olauniquebase', 'Olauniquebase', '<p><b>Olauniquebase</b></p><p>I am Chinwe and I&nbsp; sell original turkey underwear, boxers, singlet, tshirts, briefs and female hand bags. I have sold to hundreds of people and I want to sell to you too.</p>', 'Enugu, Nigeria', '7.5138947', '6.448270099999999', '08096484547', 'Olauniquebase5@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', 'db21d25a0a3494af38585f38d54f33b7.jpg', 87, 0, 63, 0, NULL, NULL, 'Active', 'No', '2023-02-13 19:32:05', '2023-02-13 19:32:57'),
(28, 'Kassy\'s Kitchen', 'Kassy', '<p>We serve you the best of your favourite meals in good, healthy and nutritious condition.&nbsp;</p>', 'UNN, Enugu State', NULL, NULL, '08144465857', 'Kassyskichen01@gmail.com', NULL, NULL, '6AM - 8PM', NULL, NULL, NULL, NULL, NULL, NULL, 'e9ab9ed5b1b855faadc721915f3a69b1.png', 57, 0, 65, 0, NULL, NULL, 'Active', 'No', '2023-02-14 02:53:12', '2023-02-14 12:51:46'),
(29, 'Smart Events And Services (SMT)', 'Smartgregory', '<p>Smart Events and Services; they are interested in making your special days ever green and keeping to agreement is there utmost priority.&nbsp;<span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">We offer a truly magnificent setting for your special event.</span><br></p>', 'Nsukka, Enugu, Nigeria', '7.3732655', '6.8429422', '07034760317', 'Smarteventsservices186@gmail.com', NULL, NULL, '8AM - 6PM', '8AM - 6PM', '8AM - 6PM', '8AM - 6PM', '8AM - 6PM', '8AM - 6PM', '8AM - 6PM', '5a8fff9c1384fb408b92b2e63b538639.jpg', 46, 0, 66, 0, NULL, NULL, 'Active', 'No', '2023-02-14 23:36:21', '2023-02-15 13:44:00'),
(30, 'Mav-Tech', 'Mav-Tech', '<p><span style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto; caret-color: rgb(114, 114, 114); color: rgb(114, 114, 114); font-family: Poppins, sans-serif;\">Mac-tech provides a one stop solution for professional web development in Nigeria. We offer customised website design and development services. Our team of experienced web developers at Mav-Techunderstand your needs for a great website and can deliver any website project you might have in your mind.</span><br></p>', 'Enugu, Nigeria', '7.5138947', '6.448270099999999', '08054088564', 'Emriskingsley300@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '93049177cdb374b7894f4af8361c5653.jpg', 59, 0, 68, 0, NULL, NULL, 'Active', 'No', '2023-02-15 02:35:52', '2023-02-15 13:43:59'),
(31, 'Apex Optical Ltd', 'JOY', '<p>Dealers in Optical frames,&nbsp; Sunglasses and Contact Lenses.</p><p>Professional in all Optical services&nbsp;</p>', 'Apex Optical Ltd  20, umudiagu road, off Hadel Junction, Orji Owerri, Imo State .', NULL, NULL, '07052165812', 'apexopticalltd@gmail.com', NULL, NULL, '9am - 7pm', '9am - 7pm', '9am - 7pm', '9am - 7pm', '9am - 7pm', '10am - 7pm', 'Non', '3cf9a246739e4de1020d0f5d30d8f109.jpg', 8, 0, 76, 0, NULL, NULL, 'Active', 'No', '2023-02-23 21:39:03', '2023-02-26 14:15:37'),
(32, 'NONO’S FASHION WORLD', 'Nono', '<p><b>Nono Fashion world</b> deals with all kinds of Male and Female Attires, casual wears, Ready-made Etc.</p><p><span style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Charter, Georgia, Times, serif; font-size: 19px; -webkit-text-size-adjust: 100%;\">What you wear is how you present yourself to the world, especially today, when human contacts are so quick. Fashion is instant language.</span></p><p><span style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Charter, Georgia, Times, serif; font-size: 19px; -webkit-text-size-adjust: 100%;\">Reach out to us today🙏<br></span><br></p>', 'Enugu, Nigeria', '7.5138947', '6.448270099999999', '07018919412', 'Chinenyefaith6767@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4be3be8ef46494191e75f76cc00f9112.jpg', 14, 0, 79, 0, NULL, NULL, 'Active', 'Yes', '2023-03-03 11:01:54', '2023-03-05 12:10:09'),
(33, 'TENDER TOUCH BEAUTY PLUG (Unisex salon)', 'Tendertouch', '<p><b>Tender Touch Beauty plug</b> are specialist in making you look amazing. We specialize on Braiding, Fixing of nails, Wig making, Rocking of Dreads, Hair cuts, Tinting of hair and wig, packing gel, ponytail, Fixing of lashes etc</p><p>New hair, new me.” “There\'s nothing like new hair to make you feel confident &amp; beautiful.” “When life doesn\'t allow you to change anything else, get a new hairstyle.</p>', 'Akwuke, Enugu, Nigeria', '7.476004700000001', '6.3906848', '09027626673', 'Amakafevour@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9e9a897816cb725a521e2947c6c16afd.jpg', 88, 0, 80, 0, NULL, NULL, 'Active', 'Yes', '2023-03-04 11:55:07', '2023-03-05 12:10:07'),
(34, 'Ada\'s jewelry collection', 'Adajewelry', '<p><b>Ada\'s jewelry collection</b> is the best selling jewelry collection right now.</p><p>JEWELRY&nbsp;<span style=\"font-size: 1rem;\">HAS THE POWER&nbsp;</span><span style=\"font-size: 1rem;\">TO BE THIS&nbsp;</span><span style=\"font-size: 1rem;\">ONE LITTLE THING&nbsp;</span><span style=\"font-size: 1rem;\">THAT CAN MAKE&nbsp;</span><span style=\"font-size: 1rem;\">YOU FEEL UNIQUE</span></p><p>We are active and ready to serve you better.</p>', 'Nsukka, Nigeria', '7.3732655', '6.8429422', '08110423020', 'preciousadaora49@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '92c331db356139180df326b9c40377af.jpg', 89, 0, 82, 0, NULL, NULL, 'Active', 'Yes', '2023-03-05 12:51:41', '2023-03-05 15:05:04'),
(35, 'Nadisapples', 'Nadisapples', '<p>We deal with all kind of UK used IPhone And new iPhone.</p><p>kindly contact <span style=\"-webkit-text-size-adjust: 100%;\">us today for your business.</span></p>', '72 New Haven Market Road, Enugu, Nigeria', '7.5131479', '6.459073399999999', '08166699372', 'nadisapple1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3d710cb899611d9c6d6fc763f2821fcd.jpg', 55, 0, 84, 0, NULL, NULL, 'Active', 'Yes', '2023-03-05 13:15:20', '2023-03-05 15:05:10'),
(36, 'Stylist Plush Interiors', 'stylistplush', '<p>Stylist Plush Interiors Are professional interior decorators with long term history in the space.</p><p>Our numerous job well done are our prove of pure class and we look forward to handling your project for you. Contact us today for more details.</p>', 'University Market Road, Nsukka, Nigeria', '7.3993794', '6.853353599999999', '08088241802', 'stylistplushinteriors@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '50fd783866cb4f57e44b1d11e3de3fa3.jpg', 56, 0, 88, 0, NULL, NULL, 'Active', 'Yes', '2023-03-05 14:09:43', '2023-03-05 15:05:12'),
(37, 'M&B Luxuries', 'M&BLuxuries', '<p>Good Day, I am <b>M&amp;B LUXURIES 🛍️❤️</b>&nbsp;we deal on all kinds of quality luxury wears like <b>Senator,Kaftan,Shirts, Trousers,Street-wears,Wrist Watches and more 🏷️.</b></p><p>Buy class and stand out effortlessly🔥📍Very Affordable,Send us a DM nowwww!🥳</p><p>We deal on organic products as well for a rich and healthy skin✨</p><p>Delivery is nationwide 💯</p>', 'Umuahia, Aba, Nigeria', '7.3471441', '5.0805431', '08147169250', 'ebubeamblessed74@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82af3bf131e4367dde0ed7ebe23ba837.jpg', 91, 0, 90, 0, NULL, NULL, 'Active', 'Yes', '2023-03-05 16:11:36', '2023-03-06 04:06:49'),
(38, 'Sovan_designs', 'sovan-designs', 'A design company that nurtures, grow and bring your brand to life, through captivating visuals.', 'Enugu East, Nigeria', '7.5680595', '6.5638913', '+2348165795439', 'greatvegas7@gmail.com', NULL, NULL, '8AM-8PM', '8AM-8PM', '8AM-8PM', '8AM-8PM', '8AM-8PM', '8AM-8PM', '2PM-5PM', '4be187337fddcf305d87ce45e4a13b01.png', 84, 0, 91, 0, NULL, NULL, 'Active', 'No', '2023-03-05 18:10:52', '2023-03-06 04:06:48'),
(39, 'Webb Communication Limited', 'webb-communication-limited', '<p><b>Webb Communication LTD</b></p><p>We at Webb communication limited deals in all kinds of electronic gadgets such as Smart watches, power banks, earpiece, sound boxes, blender and lots of more . Kindly contact us from here as we deliver best of services .&nbsp;</p>', '9 Amechi Road, Enugu, Nigeria', '7.4967867', '6.4061715', '+2348103045188', 'Webbconnectt@gmail.com', NULL, NULL, '6am - 8pm', '6am - 8pm', '6am - 8pm', '6am - 8pm', '6am - 8pm', '6am - 8pm', '6am - 8pm', '76c937945c8e63d91077b9d08e842d7d.jpg', 94, 0, 96, 0, NULL, NULL, 'Active', 'Yes', '2023-03-06 15:23:11', '2023-03-06 16:01:13'),
(40, 'EMM AUTOS', 'EMM-AUTOS', '<p><b>EMM AUTOS</b></p><p>We deal in all kinds of of luxury cars .</p><p>Moto: Satisfaction guarantied. &nbsp;</p>', 'Enugu, Nigeria', '7.5138947', '6.448270099999999', '08131582529', 'sagethomas4@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', 'e70788fbf37351792b1479e293c09a15.jpg', 39, 0, 97, 0, NULL, NULL, 'Active', 'Yes', '2023-03-06 15:58:53', '2023-03-06 16:01:12'),
(41, 'CJ special cleaning Agency', 'Cjspecial', '<p><b>CJ special cleaning Agency</b>, we are the best cleaning Agency you can think of with dedicated staffs.</p><p>Our services are:</p><p>&nbsp;• &nbsp;Cleaning</p><p>&nbsp;• Dusting All Surface</p><p>&nbsp;• Tash Removal</p><p>&nbsp;• Restroom Sanitation</p><p>&nbsp;• Vacuuming</p><p>&nbsp;• Windows Cleaning</p><p>&nbsp;• Carpet Cleaning</p><p>&nbsp;•Presure Cleaning</p><p>&nbsp;•Custom Services</p><p><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">&nbsp;. Moving Services</span></p><p>&nbsp;•Fumigation</p>', '7 Ogui Road, Enugu, Nigeria', '7.492504999999999', '6.4375656', '09032414575', 'ekwunzechidera@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fa4dfe28ec6c12b7cfad576125799349.jpg', 93, 0, 89, 0, NULL, NULL, 'Active', 'Yes', '2023-03-06 16:35:38', '2023-03-06 16:44:13'),
(42, 'Ifedimma Phone Accessories', 'Ifedimma', '<p>We deal on all kinds iPhones products, &nbsp;Uk used and new ones.</p><p>kindly use our contact information and reach out to us today.</p>', 'Enugu, Nigeria', '7.5138947', '6.448270099999999', '09133998804', 'Preciouskennendy042&gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dd5e2b053dbeec53c0a113f9fd544d75.jpg', 55, 0, 98, 0, NULL, NULL, 'Active', 'Yes', '2023-03-06 16:55:34', '2023-03-06 17:02:26'),
(43, 'Emerald\'s Body Priority', 'Emerald', '<p>For your body perfection</p>', 'Enugu, Nigeria', '7.5138947', '6.448270099999999', '07058787727', 'Emeraldsbodypriority@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '180383dec2a584d94b4ff2b12f283464.jpg', 8, 0, 99, 0, NULL, NULL, 'Active', 'Yes', '2023-03-06 17:06:10', '2023-03-06 17:08:39'),
(44, 'Golden Coin Integrated Animal Farm', 'Goldencoin', '<p>We sell Pets and Laboratory Animals At a very good rate.</p><p>kindly message us today.</p>', 'Odim Street, Nsukka, Nigeria', '7.412525', '6.8716699', '08167824944', 'goldencoin247@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11197bb722590dbc27118753c2e1470c.jpg', 95, 0, 100, 0, NULL, NULL, 'Active', 'Yes', '2023-03-06 17:22:42', '2023-03-07 02:03:29'),
(45, 'Nie\'s Hair Collection', 'Ifunanya', '<p>We sell affordable luxury hairs - human hair blend, Vietnamese hair, raw donor etc</p>', 'Benin City, Nigeria', '5.6037465', '6.334986', '08071634442', 'ifunanyaokonkwo69@gmail.com', NULL, NULL, '9AM - 9PM', '9AM -9PM', '9AM -9PM', '9AM - 9PM', '9AM - 9PM', '9AM - 8PM', '11AM - 8PM', 'dba23a910a2cc66d984fbd3cb4bf8b31.jpg', 92, 0, 95, 0, NULL, NULL, 'Active', 'No', '2023-03-07 01:24:11', '2023-03-07 02:03:30'),
(46, 'True Love Nest', 'Truelove@68', '<p><b>True love nest</b> </p><p>is a parent brand to&nbsp;</p><p>&nbsp;True love Surprises, True love APPARELS and true love gist.</p><p>@ True love surprises,we build memories with creating beautiful moments with our services which includes sales of flower bouquets, dinner date planning, birthday hangouts, surprise engagements, birthdays,lots more...</p><p>@True love APPARELS we are your quality yet affordable fashion plug</p><p>@True love gist is a mini blog where we have fun sessions,love advices,Q&amp;A sessions, relationship tips, cruise and games....</p>', 'Awka, Anambra, Nigeria', '7.0821162', '6.222004300000001', '08165076750', 'onyekachidera63@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '69976c26e032ac806ef7135e941559ff.jpg', 46, 0, 78, 0, NULL, NULL, 'Active', 'Yes', '2023-03-07 04:06:13', '2023-03-07 04:13:09'),
(47, 'Deeflora-store', 'Deeflora-store', '<p class=\"p1\" style=\"margin-bottom: 0px; font-stretch: normal; font-size: 14px; line-height: normal; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto;\"><span class=\"s1\" style=\"font-family: UICTFontTextStyleEmphasizedBody; font-weight: bold;\">Objects designed for the adornment of the body</span><span class=\"s2\" style=\"font-family: UICTFontTextStyleBody;\">&nbsp;are called jewelry. While modern jewelry is made of gold, silver, or platinum, often with precious or semiprecious stones, it evolved from shells, animal teeth, and other items used as body decoration in prehistoric times.</span></p>', 'Enugu East, Nigeria', '7.5680595', '6.5638913', '09036472808/09012047283', 'deeflorastore@gmail.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', 'd13cf6beeda9608b6d0ee426a20246b8.jpg', 89, 0, 94, 0, 'Jewelry', NULL, 'Active', 'No', '2023-03-07 16:22:05', '2023-03-09 21:24:36'),
(48, 'Annabelle luxury wear', 'Annabelle-luxury-wears', '<p><b>Annabelle luxury wear</b></p><p>We deal in all kinds of luxury wears at very affordable rate.&nbsp;</p><p>ANNABELLE\'s &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;COLLECTION &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; store.. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; slay on your budget &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;we deal on: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Nice,Affordable and Quality Nigeria made wears and Turkey wears for both Genders &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I also deal on customized crocs &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Bikini\'s,Sweet Nighties and Shoes<br></p>', 'Enugu, Nigeria', '7.5138947', '6.448270099999999', '07043893026', 'Beautyannabel@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', 'c85d3885ee82fbfa36bed61c4509bce2.jpg', 91, 0, 103, 0, NULL, NULL, 'Active', 'Yes', '2023-03-10 19:10:27', '2023-03-10 19:22:44'),
(49, 'IBE.TO.Luxury wears', 'Godwill', '<p>Always ready for business</p>', 'Anagada, Nigeria', '7.1740653', '9.0394534', '08100595104', 'igwegodwill4343@gmail.com', NULL, NULL, '9AM-7PM', '9AM-7AM', '9AM-7PM', '9AM-7PM', '9AM-7PM', '10AM-7PM', '4PM', '4046a3b7ef1334f82d119b51b4732c0c.jpg', 1, 0, 105, 0, 'Nice wears', 'Always ready for business', 'Active', 'No', '2023-03-11 01:52:57', '2023-03-13 14:18:02'),
(50, 'PRODI AND DPI', 'PRODI-DPI', '<p>DPI and Prodi is a registered fashion brand,we are into manufacturing of leather footwears and bags,belts, duvets and bedding,cloths and other agro allied products,importers, exporters of general goods, representative of both local and international organizations across the globe.<br></p>', '194 200 Faulks Road, Aba, Nigeria', '7.3402246', '5.114200299999999', '+2348139029696', 'divparagon@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '29e649db022e1cb0ecbb501bfe272411.png', 87, 0, 111, 0, 'FASHION BRAND', 'Registered fashion brand located at Abia state Aba town.', 'Active', 'Yes', '2023-03-21 01:14:36', '2023-03-21 12:08:52'),
(51, 'MI AMOR GALLERY', 'MI-AMOR-GALLERY', '<p>We are *<b>Mi Amor Gallery</b>* an interior and exterior decor brand that delivers top-notch house finishing and furnishing. Our services are second to none. We sell and install all kinds of curtains, window blinds, wallpapers, wall panels, Furnitures and we also paint all kinds of painting. \"Not make not just you,we make your wall smile too\"<br></p>', 'Enugu, Nigeria', '7.5138947', '6.448270099999999', '09028034313', '2.alohprecious4u@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '321f74f4e23f37060956921b9080157b.jpg', 56, 0, 112, 0, 'Enugu Interior decorator', 'We are the best in Interior decorations in Enugu state. We rank number in all that concern interior decoration .', 'Active', 'Yes', '2023-03-21 12:06:13', '2023-03-21 12:08:51'),
(52, 'Victy\'sskinglowing', 'Victy\'sskinglowing', '<p>We produce an sell different types of organic products for all skin types&nbsp;</p>', 'Uyo Itam, Nigeria', '7.948049299999998', '5.1137497', '08103138426', 'Okon27922@gmail.com', NULL, NULL, '5AM _ 7PM', '5AM _ 7PM', '5AM _ 7PM', '5AM _ 7PM', '5AM _ 7PM', '5AM _ 7PM', '5AM _ 7PM', '528e6b62b2a9ad19db0f32ada690c4b7.jpg', 64, 0, 114, 0, NULL, NULL, 'Active', 'No', '2023-03-22 02:51:59', '2023-03-22 16:26:10'),
(53, 'Digital Skills Academy', 'Glot', '<p><b>Digital Skills Academy</b><br><i>G-Colledge &amp; Digital Skills Acquisition Center<br></i><br><b><i>DSA</i></b> provides opportunity for anyone from anywhere in the world to learn from experts. <br><br>Choose the skill you want to learn or the business you want to do, and <b><i>DSA</i></b> will help you become an expert, succeed and start making money online.<br><br><b>FEATURES:</b><br><br>1. <a href=\"https://t.me/DSA_GICT/83\">50+ Digital Skills Acquisition| Current-Training (Public)</a><br><br>2. <a href=\"https://t.me/DSA_GICT/84\">20+ Digital Entrepreneurship (online businesses)|Current-Training<br>(Public)</a><br><br>3.<a href=\"https://paystack.com/buy/how-i-made-my-first-10000-online-without-capital\"> Private Mentorship <br>(Private)</a><br><br>4. <a href=\"https://paystack.com/pay/dsa-one-time-registration-fee\">350+ Online Courses| Free-to-re-sell<br>(Private)</a><br><br>5. <a href=\"https://paystack.com/pay/dsa-one-time-registration-fee\">100+ Pro Mobile Apps And User\'s Guide| Free-to-re-sell <br>(Private)</a><br><br>6. 10% <b>Discount on </b><b><i>DSA</i></b><b> Premium Courses<br></b><br>7. <a href=\"https://chat.whatsapp.com/Amda4RSocbf8gAeKdysXIB\">In-house and Guest Tutors<br>(Public)</a><br><br>8. <a href=\"https://paystack.com/pay/dsa-one-time-registration-fee\">24/7 Live Support <br>(Private)</a><br><br><b>Other Benefits:</b><br><br>❌ No monthly subscription fee!<br><br>✅ Unlimited courses!<br><br>✅ Re-sell 350+ online courses and Pro Apps, keep 100% profit!<br><br>✅ Life-time access!<br><br>✅ Constant update!<br><br>✅ Question/Answer comment sections!<br><br><b>To access </b><b><i>Private</i></b><b> materials, register and become </b><b><i>DSA</i></b><b> bonafide student.</b><br><br>Registration Fee:<br>✅ <b>#10,000 NGN / $20 USD only!</b><br><br>But we are giving 75% off For the first 1,000 students to register, once complete, price reverts back. <br><br>Pay :<b>#2,500 NGN / $20 USD</b><br><br><b>Register Here: 👇</b><br>https://paystack.com/pay/dsa-one-time-registration-fee<br><br> Share this free telegram link for others too to have life-time access to 70+ free trainings both on digital skills and Entrepreneurship: 👇<br><br>https://t.me/DSA_GICT<br><br>Like and follow us on Facebook:👇<br><br>https://www.facebook.com/gictcollege<br></p>', 'Lagos Island, Lagos, Nigeria', '3.4245984', '6.454879099999999', '08167530825', 'academydigitalskills@gmail.com', 'https://t.me/DSA_GICT', NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '624eb0f743678e52853567c903d002eb.jpg', 59, 0, 116, 0, 'Digital Skills Academy', 'G-Colledge & Digital Skills Acquisition Center!\r\nDSA provides opportunity for anyone from anywhere in the world to learn from experts.', 'Active', 'Yes', '2023-03-22 15:42:39', '2023-03-22 16:40:19'),
(54, 'Miracle B Education Services', 'Miracle-education-service', 'We are into Education services, online tutorials and private teachings .&nbsp;', 'Aba, Abia, Nigeria', '7.3732655', '5.1215877', '08107571345', 'bukasman01@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', 'd0b0bd445e90d3911de6288d71c0bc1b.jpg', 49, 0, 117, 0, 'Education services', 'We are into Education services, online tutorials and private teachings .', 'Active', 'Yes', '2023-03-22 23:31:29', '2023-03-22 23:36:21'),
(55, 'Abdulmalik usman POS', 'POS', '<p>We engage all monitory transactions..&nbsp;</p>', 'Sabiwar Abuja', NULL, NULL, '09061921783', 'abdulmalikusmankankia@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '7c3917267e7c9fa5994319b3bcb8a41f.jpg', 79, 0, 118, 0, NULL, NULL, 'Active', 'No', '2023-03-22 23:55:11', '2023-03-22 23:55:45'),
(56, 'Gabest Creative Leathers', 'Creative-Lathers', '<p>We specialize in shoe makings, all kinds of cover pams, shoes, sandals etc with the best materials .</p><p>Our products are one of the best you can get around and we deliver nation wide.&nbsp;</p>', 'Sango Otta, Ogun State, Nigeria', '3.2364854', '6.692744599999999', '08178330208', 'gabestleathers2018@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '477b326aff457cb3fff46db09a98796b.jpg', 87, 0, 109, 0, NULL, NULL, 'Active', 'Yes', '2023-03-23 00:30:18', '2023-03-23 00:30:38'),
(57, 'LEKO INTER-TRADE NIGERIA LIMITED', 'LEKO-TRADE', '<p>Dealer in all kinds of textiles materials both in whole sales and retails .&nbsp;</p><p>We also also have Lekotex Online Services the division of Leko Inter-Trade Nigeria Limited . We are located at No suit 03 office A.M.P. Plaza opposite Union bank unity road kwari market kano state .&nbsp;</p><p>We are on of the best dealers in Kano sate which is the capital for all textile materials in Nigeria and some other African countries.&nbsp;</p><p>We deliver nation wide .&nbsp;</p>', 'Kwari market, Kano, Nigeria', '8.53225', '12.0025137', '+2347034227477', 'alhajitijjanilekodandago@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', 'a55fd6d6089e77b9ba5911bbf91ac3fd.jpg', 40, 0, 119, 0, 'Kano Fabrics', 'We deal in all kinds of fabrics and textile materials.', 'Active', 'Yes', '2023-03-23 13:48:48', '2023-03-23 13:52:16'),
(58, 'RICHDA PROPERTIES AND INVESTMENT', 'PROPERTIES', '<p>We buy and sales land\'s we have house for lease at different locations we also give consultation to our clients .&nbsp;<br></p>', 'Odogunyan, Ikorodu, Lagos, Nigeria', '3.5155086', '6.6780696', '08132253106', 'daddydiamond1992@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', 'abcf503b6566598d1dfb13fbe7e13d84.jpg', 6, 0, 125, 0, NULL, NULL, 'Active', 'Yes', '2023-03-24 12:57:09', '2023-03-24 12:58:32'),
(59, 'PRESH BUSINESS', 'Presh-luxury-wears', '<p>PRESH LUXURY WEARS&nbsp;</p><p>We sale night wears, different fabrics ie kampala, chiffon, vintage materials, admire, boxers, unisex turtle neck etc</p>', 'Lagos State University, Ojo, Lagos, Nigeria', '3.1987564', '6.467467399999999', '08156762739', 'preshp445@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', 'a52935dc94f5de1727df7162106a9eea.jpg', 91, 0, 127, 0, 'Presh luxry wears', 'We sale night wears, different fabrics ie kampala, chiffon, vintage materials, admire, boxers, unisex turtle neck etc', 'Active', 'Yes', '2023-03-24 15:38:09', '2023-03-24 15:41:49'),
(60, 'JEFF CONSULTANT REAL ESTATE GLOBAL', 'Jeff-real-estate', '<p>We &nbsp;into real estate</p><p><br></p><p>Like sale of Land anywhere in Nigerian and house, and I am into selling of cars.</p>', 'Effurun-Sapele Road, Warri, Nigeria', '5.773664999999999', '5.5281444', '09156086546', 'Springlifefellowship7@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '338ccb8e3504b868102fad3af2b08212.jpg', 6, 0, 128, 0, NULL, NULL, 'Active', 'Yes', '2023-03-24 16:51:18', '2023-03-24 19:45:34'),
(61, 'Son-Light Techs and Services Ltd.', 'Son-Light', '<p><span style=\"color: rgb(71, 71, 71); font-family: Raleway, sans-serif; font-size: 17px;\">Son-Light Techs and Services Ltd is a limited Liability company registered in Nigeria under company allied matters commission (CAC) and has since grown progressively into a reputable business, sourcing the right technology to be your best&nbsp;&nbsp; partner for computers&nbsp;&nbsp; business and repairing services.</span><br></p>', 'Danziyal Shopping Plaza, Nal Boulevard, Abuja, Nigeria', '7.477065', '9.052564799999999', '08168919476', 'Info@sonlighttech.com', 'www.sonlighttech.com', NULL, '9AM - 6PM', '9AM - 6PM', '9AM - 6PM', '9AM - 6PM', '9AM - 6PM', '10AM - 6PM', 'Closed', '539b868b7a2c83436227c97223d3f78b.jpg', 36, 0, 129, 0, NULL, 'We are into Computer Services such as Repairs, Sells and Training.', 'Active', 'No', '2023-03-24 17:26:53', '2023-03-24 19:45:31'),
(62, 'One Touch Digital', 'Victor', '<p>One Touch Digital is a well recognize design and print company, where we give out quality designs and printing of flyers, wedding programs, jotters logo and so on<br></p>', 'Cross River State University of Technology, Ekpo Abasi St, Calabar, Nigeria', '8.765605599999999', '6.7044559', '08126927824', 'victorbassey2021@gmail.com', NULL, NULL, '8am-6pm', '8am-6pm', '8am-6pm', '8am-6pm', '8am-6pm', '10am-6pm', '3pm -6pm', '0370fe677154ea7adea19c4dabe2c320.jpg', 84, 0, 107, 0, NULL, NULL, 'Active', 'Yes', '2023-03-24 23:39:48', '2023-03-24 23:47:36'),
(63, 'PRO TEAM', 'Pro-team-POP', '<p>We make plaster of Paris (POP)&nbsp;</p><p>we specialize in making Morocco type of of POP.</p><p>we are the best in Nigeria &nbsp;currently. Hit us today for a gurrantied work</p><p>your satisfaction is our joy.</p>', 'Wuse 2, Abuja, Nigeria', '7.4701862', '9.078749', '09040066944', 'Emmydiamond910@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', 'bbea51780d721c038043e8ae54853ad6.jpg', 96, 0, 133, 0, NULL, NULL, 'Active', 'Yes', '2023-03-25 00:04:57', '2023-03-25 00:09:14'),
(64, 'HANSON GRAPHICS', 'Hanson-graphics', '<p>Hassan graphics is a well known graphics designer</p><p>With all kinds of design</p><p>Marriage, certificate, international passport,visa, birthday, letterhead etc.</p>', 'Uyo, Akwa Ibom, Nigeria', '7.9127945', '5.0377396', '07046331775', 'promisehanson5@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', 'f991714fe6dd06a452b1b08866068ad4.jpg', 84, 0, 134, 0, NULL, NULL, 'Active', 'Yes', '2023-03-25 00:18:58', '2023-03-25 00:19:39'),
(65, 'MAKINSON VTU/DATA', 'MAKINDEKABIR', '<p>We are selling VTU, DATA, buy of exams pin from our app like Neco, Waec etc, paying of NEPA bills both prepaid and postpaid, sub of TV eg Gotv,Star time etc</p>', 'Ogbomosho North, Nigeria', '4.2538452', '8.1335403', '07031004295', 'Makindekabirtech1@gmail.com', 'https://sabuss.com/makindekabirtech16', NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', 'b580e5e8f2189dd3be6ec936f15cd8a7.jpg', 77, 0, 135, 0, NULL, NULL, 'Active', 'Yes', '2023-03-25 20:02:14', '2023-03-25 21:42:50'),
(66, 'DANI BOY STORE', 'Daniboy-store', '<p>We operate a provision store for all your home needs .</p>', 'Umuoria Market, Aba Ala, Nigeria', '7.492388900000001', '5.051866', '09022106780', 'danielcharles66300@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '18fff3c389f58ab73655b56749bb643c.jpg', 97, 0, 140, 0, NULL, NULL, 'Active', 'Yes', '2023-03-26 03:19:18', '2023-03-26 03:20:25');
INSERT INTO `listings` (`id`, `listing_name`, `listing_slug`, `listing_description`, `listing_address`, `address_longitude`, `address_latitude`, `listing_phone`, `listing_email`, `listing_website`, `listing_map`, `listing_oh_monday`, `listing_oh_tuesday`, `listing_oh_wednesday`, `listing_oh_thursday`, `listing_oh_friday`, `listing_oh_saturday`, `listing_oh_sunday`, `listing_featured_photo`, `listing_category_id`, `listing_location_id`, `user_id`, `admin_id`, `seo_title`, `seo_meta_description`, `listing_status`, `is_featured`, `created_at`, `updated_at`) VALUES
(67, 'CHIOMZY PLACE', 'Chiomzy-place', '<p>CHIOMZY PLACE !</p><p>Making beauty and cleaniness sparkling of ur class.&nbsp;</p><p><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent;\">&nbsp;Chiomzy&nbsp;</span><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">place&nbsp;</span><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">is a division of make up artist, fixing of hairs and nails with exclusive laundry services</span></p><p><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">We give the best of&nbsp;laundry services&nbsp;within our environment. You cannot get it neater and better elsewhere &nbsp;except at chiomzy laundry service an extension of Chiomzy Place .&nbsp;</span><br></p><p>Our&nbsp;saloon section&nbsp;with well trained and experienced hair dressers with their magic fingers takes care of all hair style of your choice which brings &nbsp;out your hidden beauty.</p><p>we also have the best team of&nbsp;make up artist&nbsp;in town that’s &nbsp;gives you the best look of your imagination.&nbsp;</p><p>With our out team of&nbsp;manicurists and pedicurists&nbsp;we assure the best look of your nails.&nbsp;</p><p>Chiomy place also have a &nbsp;tailoring division (fashion house) that takes care of all kinds of female clothe designs .&nbsp;</p><p>We are complete at Chiomzy place . Visit us today for a taste of a new look.&nbsp;</p><p><br></p><p><br></p><p>Is located at opposite Kilimanjaro federal housing Lugbe estate</p>', 'FEDERAL HOUSING JUNCTION, LUGBE, Umaru Musa Yar\'Adua Road, Abuja, Nigeria', '7.337063799999999', '8.9554339', '07011757350', 'Chiomziest@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '2b78e39587f21f9691cad7757f9bb374.jpg', 98, 0, 141, 0, 'Chiomzy place Spar', 'Chiomzy place a place for all services .', 'Active', 'Yes', '2023-03-26 15:17:18', '2023-03-26 16:01:37'),
(68, 'OSMONS O. EKPI & CO', 'OSmons-properties', '<p>OSMONS O. EKPI &amp; CO</p><p>We\'re PROPERTY CONSULTANTS based in Lagos State</p>', 'Insha Allah Street, Ogudu, Lagos, Nigeria', '3.3901728', '6.5707191', '08064442829', 'oseyomonekpi@yahoo.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '4a9f39902ff86ecebf365a6edec10361.jpg', 6, 0, 142, 0, NULL, NULL, 'Active', 'Yes', '2023-03-27 16:42:42', '2023-03-27 16:44:14'),
(69, 'HOUSE OF CREATIVE MINDS', 'House-of-creative-minds', '<p>What we do: </p><p><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">CINEMATOGRAPHY || PHOTOGRAPHY || CREATIVITY || BRANDING || FASHION || EVENTS || ACADEMICS || KIDS ENTERTAINMENT || PROJECT &amp; TALENT MANAGEMENT || BLOGGING || MUSICAL PRODUCTION || CD\'s &amp; FLYERS DISTRIBUTORS || PASTING POSTERS || MUSIC || JINGLES || MEDIA MARKETING CONSULTANTS | TRAINING &amp; PRIVATE LESSONS | USHERS | ROADSHOW | HYPE MAN / VOICE OVER ARTISTS www.kustins.blogspot.com</span><br></p>', 'Shoprite, Onitsha Mall, Onitsha, Nigeria', '6.7948964', '6.1557662', '08097485785', 'Sonofthesoil001@gmail.com', 'www.kustins.blogspot.com', NULL, '6AM TO 8PM', '6AM TO PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', 'fcbd912260f6ed19d6cb3f98ee0ccd28.jpg', 13, 0, 145, 0, 'Entertainment', 'House of creative minds', 'Active', 'Yes', '2023-03-29 13:06:51', '2023-03-29 13:09:19'),
(70, 'Photo Editing', 'Denike’s-touch', '<p>Are you photo shy because your pictures don’t come out nicely as expected? Do you want to make your pictures appear stunning and beautiful for the gram? Or are you interested in learning how to edit pictures then worry less</p><p>our service include</p><p>photoediting</p><p>restoration of old photos to new</p><p>changing of background</p><p>adding makeup to your face picture</p><p>adding smile&nbsp;</p><p>changing of hairstyles&nbsp;</p><p>skin smoothing</p><p>whiten teeth and eyes&nbsp;</p><p>and many more.</p>', 'Nigeria', '8.675277', '9.081999', '09042602466', 'adebayoadenike2009@gmail.com', NULL, NULL, '7:00AM - 8:00PM', '7:00AM - 8:00PM', '7:00AM - 8:00PM', '7:00AM -8:00PM', '7:00AM - 8:00PM', '7:00AM - 8:00PM', '9:00AM - 8:00PM', '0ab9ad956e70f65a59176416107615ea.png', 16, 0, 143, 0, NULL, NULL, 'Active', 'Yes', '2023-03-29 15:26:36', '2023-03-29 17:35:51'),
(71, 'Sukari M A Global Ventures', 'twinsyerama', '<p>BUY CHEAP DATA BUNDLES FROM SUKARI M A GLOBAL VENTURES DATA SUBSCRIPTION&nbsp;</p><p><br></p><p>&nbsp;MTN Data</p><p>500MB...#150&nbsp;</p><p>&nbsp;1Gb...#300</p><p>&nbsp;2GB...#600</p><p>&nbsp;3GB...#900</p><p>&nbsp;4GB...#1100</p><p>&nbsp;5Gb...#1,400&nbsp;</p><p><br></p><p>&nbsp;Airtel Data</p><p>500MB=#200</p><p>1GB=#400</p><p>2GB=#800</p><p>5GB=#1900</p><p><br></p><p>&nbsp;GLO Data&nbsp;</p><p>1GB=#300</p><p>2GB=#600</p><p>3GB=#900</p><p><br></p><p>&nbsp;Banks&nbsp;</p><p>🏦 Union Bank: 0042502080</p><p>🏦 Kuda Bank</p><p>&nbsp;2049191983</p><p>&nbsp;Sukari Mohammed Alhaji&nbsp;</p><p>&nbsp;*07062148200,09057634570</p>', 'PATIGI TOWN, Chini, Nigeria', '8.675277', '9.081999', '07062148200', 'sukarialhaji17478@gmail.com', NULL, NULL, '24HOURS', '24HOURS', '24HOURS', '24HOURS', '24HOURS', '24HOURS', '34HOURS', '01c2583a43f70d6843cc7cfc6e7e5efe.jpg', 13, 0, 148, 0, NULL, NULL, 'Active', 'Yes', '2023-03-29 18:08:42', '2023-03-29 18:57:05'),
(72, 'AUSTREMEDIA', 'Austremedia', '<p>The name of my business is Austremedia&nbsp;</p><p>We offer services like graphics design, video editing, video directing, photography, videography.</p>', 'Abuja, Nigeria', '7.398574', '9.0764785', '08107225996', 'emotionsunwritten@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '34aa288a6f31c0aec909a5a38a1d1236.jpg', 16, 0, 149, 0, NULL, NULL, 'Active', 'Yes', '2023-03-29 19:15:52', '2023-03-30 14:09:26'),
(73, 'car Today', 'Beautifulray', 'Car dealership. We buy,&nbsp; sell and swap Good and genuine car.', 'Ilorin, Kwara, Nigeria', '4.5443923', '8.5373356', '08149782377', 'raymondiyanuoluwa264@gmail.com', NULL, NULL, '9am - 6pm', '9am - 6pm', '9am - 6pm', '9am - 6pm', '9am - 6pm', '9am - 6pm', '9am - 6pm', '0b867dfa22743a3295c8824d1f58db11.png', 76, 0, 151, 0, 'Buy Good and afforadale cars from us', NULL, 'Active', 'Yes', '2023-03-30 03:33:08', '2023-03-30 14:09:24'),
(74, 'DOCARS LUXURY WEARS', 'Dorcas-luxry-wears', '<p>We deal on unisex fashion collection and kitchen utensils and others. For wholesalers, retailers and end users.<br></p>', '7 Abike Close, Lagos, Nigeria', '3.2731963', '6.6159184', '08144023456', 'Dorcasishioma@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '85058acb43aa0d6b9247f54e9b5d9e0d.jpg', 91, 0, 152, 0, NULL, NULL, 'Active', 'Yes', '2023-03-30 16:48:34', '2023-03-30 18:56:53'),
(75, 'Soft27media', 'Soft27media', '<p>Soft27media is a well known graphics designer&nbsp;</p><p><br></p><p>We Brand, Design and Print&nbsp;</p><p><br></p><p>&nbsp;Flyers /Banners /Sav /Tickets /Jotter /Books/ T-shirts /ID cards /Business cards /Magazines /Mugs /Events IV /Posters /Billboards /Handbills /Letterheads/Programmers /Roll-up banners /Wedding cards /Face caps /Carries bags /Diaries /Calendars /Travel mugs /Umbrellas /Envelopes /Invoice &amp; Receipt /Windows Graphic /and more...</p>', 'Abuja, Nigeria', '7.398574', '9.0764785', '08105527227', 'Softmedia127@gmail.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '6d88db369c8d82328c114d82b70e566d.jpg', 84, 0, 154, 0, 'Soft27media  Graphic designs', 'One of the best graphic designers you would get in Nigeria', 'Active', 'Yes', '2023-03-31 12:42:56', '2023-03-31 13:58:53'),
(76, 'PAMAT FOOTIES', 'PAMAT', '<p>Sales of branded footwears; Sandals, slippers,slides, sneakers</p>', 'Ibadan', NULL, NULL, '7060999006', 'tildatc211@gmail.com', NULL, NULL, '6AM-8PM', '6AM-8PM', '6AM-8PM', '6AM-8PM', '6AM-8PM', '6AM-8PM', '6AM-8PM', 'fc05a180363d63e0474dce6befdcf17a.jpg', 14, 0, 155, 0, NULL, NULL, 'Active', 'No', '2023-04-05 19:34:58', '2023-04-06 16:27:18'),
(77, 'Jaji agrovet and farm services', 'Jaji-farm', '<p>We rare livestock’s such as Chickens, Turkeys and guinea fowl .. we also sale both in retail and in whole sale . We deliver nation white . With Jaji livestock best service delivery is assured .&nbsp;</p>', 'no. 277 Zoo Road, Kano, Nigeria', '8.5386224', '11.9779502', '08165875820', 'legendauwal@gmail.com', NULL, NULL, '24/7', '24/7', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', 'e3fbbf062119ac454da786f4f936e524.jpg', 99, 0, 162, 0, NULL, NULL, 'Active', 'Yes', '2023-04-06 16:17:37', '2023-04-06 16:27:16'),
(78, 'Mj apparels and clothings', 'Mj-apperel-and-clothing', '<p>We are Mj apperals and clothings the best plug for your ,</p><p>Suit, agbada , senator wears, casual outfits , joggers, safari suit , vetoes pants etc .&nbsp;</p><p>With us you satisfaction is assured. Come let’s bring out the real beauty in you .&nbsp;</p>', 'No 28,koiwo street,Modakeke,Osun state,ife east', NULL, NULL, '09168241110', 'Monijesuayodele@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '08b461a38bc4c93259480c664165f160.jpg', 14, 0, 163, 0, NULL, NULL, 'Active', 'Yes', '2023-04-06 16:26:27', '2023-04-06 16:27:15'),
(79, 'BEN SMILE ENTERTAINMENT', 'Ben-smile-entertainment', '<p>Ben-Smile Entertainment World is a Registered Entertainment and Talent Management Agency...</p><p>We are into video production, brand commercial video production etc</p>', 'Jakande, 1st gate, Platinum Way, Lekki, Nigeria', '3.5022603', '6.4390003', '08139597258', 'paul.benjamin999@gmail.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '4f1c973e85174f76178d7c53530518fd.jpg', 13, 0, 164, 0, 'BEN SMILE ENTERTAINMENT', 'Ben-Smile Entertainment World is a Registered Entertainment and Talent Management Agency...\r\n\r\nWe are into video production, brand commercial video production etc', 'Active', 'Yes', '2023-04-07 19:09:17', '2023-04-07 19:10:02'),
(80, 'MIKAS GROUP', 'Mikas-group', '<p>Mikas Group</p><p><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">Comprises of&nbsp;</span></p><p><b>.&nbsp;</b>MikasBurger</p><p><b>.&nbsp;</b>Mikas Cleaning Service&nbsp;</p><p><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">Mikas Group is a brand that is built upon service to humanity consisting of&nbsp;</span></p><p>MikasBurger</p><p>MikasKitchen</p><p>MikasCleaningService</p>', '4 Ugwuaji Road, Enugu, Nigeria', '7.504617000000001', '6.415204', '09060545987', 'Emmanuel.amika@yahoo.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '0685af55883f5d3be77ee302823367a5.jpg', 93, 0, 168, 0, NULL, NULL, 'Active', 'Yes', '2023-04-10 14:29:57', '2023-04-10 14:31:04'),
(81, 'Bamilyon & co Global', 'Bamilyon', '<p>We are here to give you the best of services in air condition sales,repair .if you need a solar inverter to power your home we are the right choice to get your home powered</p>', 'Alimosho, Lagos, Nigeria', '3.3019767', '6.605120700000001', '08090194101', 'bamilyon@gmail.com', NULL, NULL, '6am -8pm', NULL, NULL, NULL, NULL, NULL, NULL, 'e29c4e0cc2b411240449686fe8fd4fa0.jpg', 26, 0, 175, 0, NULL, NULL, 'Active', 'Yes', '2023-04-11 14:56:18', '2023-04-12 11:12:48'),
(82, 'DMUnique Fictions', 'DMUnique-fictions', '<p>Book collections&nbsp;</p>', 'Nnewi, Nigeria', '6.9103455', '6.0105192', '07085294013', 'dmuniquefictions@gmail.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '3c795043cd8b03bff659edb640e41851.jpg', 49, 0, 179, 0, NULL, NULL, 'Active', 'Yes', '2023-04-12 11:29:51', '2023-04-12 11:30:31'),
(83, 'Cozzyinvestment', 'Emmanuel', '<p>Buy Airtime</p><p>Buy cheaper data bundle</p><p>Cable subscriptions&nbsp;</p><p>Electricity payment</p><p>Waec E-pin</p><p>Wallet funding&nbsp;</p>', 'Aba South, Nigeria', '7.3408535', '5.0702604', '07015827991', 'austinemmanuel721@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '191d04bca90b1d80747fe4868fbad145.png', 13, 0, 181, 0, NULL, NULL, 'Active', 'No', '2023-04-12 16:26:02', '2023-04-12 20:41:44'),
(84, 'Beeptelecoms', 'Beeptelecoms', '<p>Rendering virtual top up services</p>', 'Nigeria', '8.675277', '9.081999', '08139054752', 'Beeptelecoms@gmail.com', 'www.beeptelecoms.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8bb8a8ecda1d0cc7c4cfaa9cedb15ea8.jpg', 77, 0, 180, 0, NULL, NULL, 'Active', 'No', '2023-04-12 16:26:18', '2023-04-12 18:26:32'),
(85, 'Brave Grill kitchen', 'Brave-Grill-kitchen', '<p>We specialize in making great small chops for mini and big parties .we give you the best taste of any kind of small chop you need .</p>', 'Totoro Road, Abeokuta, Ogun State, Nigeria', '3.3308486', '7.1523473', '09018218817', 'victoriaofonime1@gmail.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '6665c4291db702f31fc474ef98ad7d52.jpg', 57, 0, 182, 0, NULL, NULL, 'Active', 'Yes', '2023-04-12 20:09:25', '2023-04-12 20:41:38'),
(86, 'AdedotunWorld Multi-Biz', 'Adedotunworld-multi-biz', '<p><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent;\">We specialize in&nbsp;</span><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">boosting of social media platforms</span><br></p><p>Training on how to boost all social media platforms</p><p>How to monetize it</p><p>How to open an account to start social media boosting platform.&nbsp;</p>', 'Opolo Housing Estate, Ilorin Kwara state, Nigeria', '6.3387523', '4.9364447', '08167417287', 'adepojuabayomi63@gmail.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '3aa911b03eb2c4da3bcb6ff5f8e401d6.jpg', 100, 0, 183, 0, NULL, NULL, 'Active', 'Yes', '2023-04-12 20:25:56', '2023-04-12 21:26:48'),
(87, 'Cut and Share foods', 'Cut-and-share-food', '<p>Meeting your food needs at least prise.</p>', 'Nsukka, Nigeria', '7.3732655', '6.8429422', '08036630905', 'beleks20012001@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', 'e5d23c86427c96ce59c346aca4e99446.jpg', 48, 0, 186, 0, NULL, NULL, 'Active', 'Yes', '2023-04-12 22:27:20', '2023-04-12 22:32:53'),
(88, 'MIRRORSIG TECHNOLOGY', 'mirrorsigtechnology', '<p>We are CCTV and Surveillance Security Company. We have extensive experience working with security gadgets. We deal on Sales, Services and Installation of all kinds of quality CCTV cameras both Analog and IP based System at affordable prices.<br></p>', '88 Onyeagba Street, Iyowa Odekpe, Nigeria', '6.7576405', '6.093254', '08080085061', 'mirrorsigtechnology@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c3819035eefc7afeafb8055002c452ab.jpg', 36, 0, 189, 0, NULL, NULL, 'Active', 'Yes', '2023-04-13 14:13:28', '2023-04-13 17:27:00'),
(89, 'Ce Bliss Eventz', 'Chibizy', '<p>I am an event manager and I am also onto ushering services of any kind of event or occasion&nbsp;</p>', 'Enugu, Nigeria', '7.5138947', '6.448270099999999', '08149673397', 'ceblissevents@gmail.com', NULL, NULL, '7am - 9pm', '7am - 9pm', '7am - 9pm', '7am - 9pm', '7am - 9pm', '7am - 9pm', '7am - 9pm', '2ff45c0be8f5da5fca30facae7f06149.jpg', 46, 0, 188, 0, NULL, NULL, 'Active', 'Yes', '2023-04-13 14:13:29', '2023-04-13 17:26:31'),
(90, 'Fajao International Projects Limited', 'Fajao-International-Projects-Limited', '<p>We are into rural and industrial electricfication, installation of transformers, solar and inverter,and general contractor<br></p>', 'St.Jude Cosmetics, Market Road, Abuja, Nigeria', '7.320070299999999', '9.149939', '09034570300', 'fajaoprojects@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', 'c91e1a1432d1d198245a8e3b67465357.jpg', 22, 0, 194, 0, NULL, NULL, 'Active', 'Yes', '2023-04-14 13:30:11', '2023-04-14 16:29:24'),
(91, 'Chiss tech construction Limited', 'Chiss-tech-construction-Limited', '<p>Chisom Okechukwu is a guy that is gifted and talented in any type of construction work such as best stand,soap cutting machine ,mental dinning tables ,model car park s<br></p>', 'Enugu, Nigeria', '7.5138947', '6.448270099999999', '07047759295', 'joelchisom31@gmail.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', 'e27bf81f81aa17761f207481e838078f.jpg', 44, 0, 195, 0, NULL, NULL, 'Active', 'Yes', '2023-04-14 14:00:40', '2023-04-14 16:29:26'),
(92, 'Toluwase Autos', 'Toluwase', '<p>We sell used, Tokunbo and brand new cars</p><p>We buy used cars</p><p>We swap cars</p>', 'Head office in Ibadan, branch office in Ilorin', NULL, NULL, '09032265353', 'toluwase2025@gmail.com', NULL, NULL, '7AM - 6PM', '7AM - 6PM', '7AM - 6PM', '7AM - 6PM', '7AM - 6PM', '7AM - 6PM', '10AM - 4PM', 'bfc80162dbbf9101dec24eade3d29f06.png', 39, 0, 197, 0, NULL, NULL, 'Active', 'Yes', '2023-04-14 15:20:33', '2023-04-14 16:29:27'),
(93, 'ODETECH, ENGINEERING', 'ODETECH-ENGINEERING', '<p>We intall all kinds of tv cables such DSTV, START TIMES, GO Tv etc&nbsp;</p><p><br></p><p>we also install Air conditionals and also fix plasma TVs&nbsp;<span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">and many more others&nbsp;</span></p>', 'Iju Ishaga Road, Lagos, Nigeria', '3.3235571', '6.6409144', '08143929754', 'davidsanmi@yahoo.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', 'fa23222dc089a96f12502394925db665.jpg', 22, 0, 198, 0, NULL, NULL, 'Active', 'Yes', '2023-04-14 16:26:35', '2023-04-14 16:29:28'),
(94, 'Quest Home Tutors', 'QuestTutors', '<p>Who We Are</p><p><br></p><p>Quest Home Tutor is an educational company that uses home tutoring to make education accessible, interactive and engaging for all categories of learners. As an educational&nbsp; business, our primary focus is aggregating professional tutors and connecting them with learners that need academic support or bespoke learning programs that are specifically crafted to help the learners achieve their goals.</p>', 'Egbeda, Akowonjo Road, Lagos, Nigeria', '3.2949667', '6.599198400000001', '08095790897', 'questhometutors2000@gmail.com', NULL, NULL, '9:00am - 7:00pm', '9:00am - 7:00pm', '9:00am - 7:00pm', '9:00am - 7:00pm', '9:00am - 7:00pm', '9:00am - 7:00pm', NULL, 'e53d31d864dc6afaae5660d6300bde6e.jpg', 49, 0, 199, 0, NULL, NULL, 'Active', 'Yes', '2023-04-14 16:41:47', '2023-04-16 12:21:27'),
(95, 'Stihl', 'Stihl-FS-250-Brush-Cutter', '<p id=\"isDescp23004855412\" class=\"db fs15 clrb fw brdb pd20 tc\" style=\"margin-bottom: 0px; padding: 20px; outline: 0px; border-top: none; border-right: none; border-bottom: 1px solid rgb(203, 203, 203); border-left: none; border-image: initial; text-align: center; font-weight: 700; font-size: 15px; font-family: Arial, Helvetica, sans-serif;\"><b style=\"text-align: left; outline: 0px; border: none;\">Description :</b><span style=\"font-weight: 400; text-align: left;\">With perfect balance and an excellent power-to-weight ratio, it is ideal for professional brush cutting. A rigid drive shaft ensures top performance all day. Easy to start ensures easy start-up and a long life filter system, considerably extends intervals between cleaning.</span></p><p id=\"isDescp23004855412\" class=\"db fs15 clrb fw brdb pd20 tc\" style=\"margin-bottom: 0px; padding: 20px; outline: 0px; border-top: none; border-right: none; border-bottom: 1px solid rgb(203, 203, 203); border-left: none; border-image: initial; text-align: center; font-weight: 700; font-size: 15px; font-family: Arial, Helvetica, sans-serif;\"><b style=\"text-align: left; outline: 0px; border: none;\">Specification:</b></p><div id=\"isToggleId23004855412\" class=\"db\" style=\"outline: 0px; border: none; font-family: Arial, Helvetica, sans-serif; font-size: 14px;\"><div id=\"pdpDetail_box23004855412\" class=\"fs15 color7 ta_l B3  ovyato\" style=\"outline: 0px; border: none; overflow-y: auto; font-size: 15px;\"><div id=\"prodDesc23004855412\" class=\"animated htato os mb40px\" style=\"margin-bottom: 40px; outline: 0px; border: none; overflow: scroll; height: auto; animation-duration: 0.5s;\"><div class=\"containerPD\" style=\"margin-bottom: 50px; outline: 0px; border: none; display: flex; flex-direction: column; max-height: 55vh; min-height: 30vh;\"><div id=\"prod_desc1\" class=\"wrapperPD fs15\" style=\"outline: 0px; border: none; flex-grow: 1; overflow: auto; min-height: 100%;\"><div class=\"fs15 lh22 clr33 pd10\" style=\"padding: 10px; outline: 0px; border: none; line-height: 22px;\"><ul style=\"margin-bottom: 0px; padding-left: 20px; outline: 0px; border: none; list-style-position: initial; list-style-image: initial;\"><li style=\"outline: 0px; border: none;\">Model No. : FS-250</li><li style=\"outline: 0px; border: none;\">Product Type : Brush Cutter</li><li style=\"outline: 0px; border: none;\">Brand : Stihl</li><li style=\"outline: 0px; border: none;\">Displacement : 40.2cc</li><li style=\"outline: 0px; border: none;\">Tank Capacity : 0.64 L</li><li style=\"outline: 0px; border: none;\">Engine Power : 2.2hp, 1.6KW</li><li style=\"outline: 0px; border: none;\">Total Length : 177 cm</li><li style=\"outline: 0px; border: none;\">Weight : 6.3Kg</li></ul></div></div></div></div></div></div>', '7th Avenue, A1 Close, Lagos, Nigeria', '3.2699911', '6.462242600000001', '07026406621', 'oguejioforprecious35@gmail.com', NULL, NULL, '7AM - 8PM', '7AM - 8PM', '7AM - 8PM', '7AM - 8PM', '7AM - 8PM', '7AM - 8PM', NULL, 'd86b7d8dc17f3c56fc51a03a92adf758.png', 59, 0, 192, 0, 'Stihl FS-250 Petrol Operated Professional Brush Cutter 40.2cc, 2.2hp', 'Brushcutter FS 250', 'Active', 'Yes', '2023-04-14 16:49:59', '2023-04-16 12:21:26'),
(96, 'Water Treatment Reverse Osmosis', 'water-treatment-reverse-osmosis', '<p class=\"p1\" style=\"margin-bottom: 0px; font-stretch: normal; font-size: 17px; line-height: normal; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto;\"><span class=\"s1\" style=\"font-family: UICTFontTextStyleBody;\">AQUARIUS IS A QUALITY PRODUCT MADE WITH EUROPEAN STANDARDS, CERTIFIED BY WATER QUALITY ASSOCIATION. FILTERS ARE NSF APPROVED. YOU PRODUCE QUALITY WATER AT HOME, RATHER THAN BUYING PLASTIC WATER FROM THE STORE.&nbsp;</span></p><p class=\"p1\" style=\"margin-bottom: 0px; font-stretch: normal; font-size: 17px; line-height: normal; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto;\"><span class=\"s1\" style=\"font-family: UICTFontTextStyleBody;\">WHEN YOU ALREADY HAVE RUNNING WATER IN YOUR APARTMENT THEN YOU NEED TO STOP BUYING WATER AND INSTALL THE PERSONAL REVERSE OSMOSIS SYSTEM IN YOUR SELF CONTAIN APARTMENT, ONE TWO THREE BEDROOM OR DUPLEX.&nbsp;</span></p><p class=\"p1\" style=\"margin-bottom: 0px; font-stretch: normal; font-size: 17px; line-height: normal; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto;\"><span class=\"s1\" style=\"font-family: UICTFontTextStyleBody;\">WE OFFER SELF AND FREE INSTALLATION IN ABUJA, LAGOS, ENUGU, BAYELSA &amp; IMO, WE CAN NEGOTIATE ON OTHER LOCATION NATIONWIDE. AND 5 YEARS WARRANTY.</span></p>', 'Fct', NULL, NULL, '08101086687', 'Onyeka310@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24a261a2694eef549e5d9d6f83016908.jpg', 8, 0, 200, 0, NULL, NULL, 'Active', 'Yes', '2023-04-14 18:49:16', '2023-04-16 12:21:25'),
(97, 'Thegooa and sons building material', 'OGT', '<p><font color=\"#000000\"><span style=\"background-color: rgb(255, 255, 0);\">We supply any kind of building materials such as sand ,grandnite ,filling sand ,laterite ,imported door,and we clean appartment</span></font></p>', '1 teledalase street oworonsoki Lagos state', NULL, NULL, '08169255324', 'oluwasegunakingbade31@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8d78ffd9005cac0b0add257a64e88672.jpg', 1, 0, 204, 0, NULL, NULL, 'Active', 'Yes', '2023-04-15 11:02:55', '2023-04-16 12:21:23'),
(98, 'Dami\'s collection', 'hope247', '<p>Dealer of all kind of men and women wears</p>', 'Kaduna South, Nigeria', '7.413801999999999', '10.4630656', '+2347086852168', 'damilogospelministry21@gmail.com', NULL, NULL, '8AM - 9PM', '8AM - 9PM', '8AM - 9PM', '8AM - 9PM', '8AM - 9PM', '7AM - 9PM', '12PM - 9PM', 'b16aba4503a05df0b17c5d7fad9ea6a8.jpg', 58, 0, 202, 0, NULL, NULL, 'Active', 'Yes', '2023-04-15 12:12:47', '2023-04-16 12:21:21'),
(99, 'Itunuoluwa fashion accessories', 'Itunes', '<p><b>Order for your customize jewelry, bracelet, chain, earrings, rings and waistbead at affordable price</b></p><p>Note...all order arrive after 4--6weeks of ordering&nbsp;</p>', 'Ogun State, Nigeria', '3.4737378', '6.997974699999999', '08152764641', 'ayodeleitunu18@gmail.com', NULL, NULL, '8am --8pm', '8am --8pm', '8am--8pm', '8am--6pm', '8am--8pm', '9am -8pm', NULL, 'cea444f10fb8b1690092aa330cb2f03b.jpg', 89, 0, 205, 0, NULL, NULL, 'Active', 'Yes', '2023-04-15 23:10:43', '2023-04-16 12:21:20'),
(100, 'De-Brill Consults Ltd', '@DBCadmin', '<p>De-Brill Consults Ltd is professional communication and educational organisation that offers services ranging from public speaking, etiquette coaching, IELTS registration and preparation, and products in language and communication development for children and adults alike.</p>', 'Ibrahim Taiwo Road, Ilorin, Kwara State, Nigeria', NULL, NULL, '+2348068624903', 'debrilleducationalconcept@gmail.com', 'www.dbconcept.com.ng', NULL, '9AM - 5PM', '9AM - 5PM', '9AM - 5PM', '9AM - 5PM', '9AM - 5PM', NULL, NULL, '831a70f0e3a20a9a85937ce2ea4304ac.jpg', 49, 0, 207, 0, NULL, NULL, 'Active', 'Yes', '2023-04-16 02:37:49', '2023-04-16 12:21:19'),
(101, 'Abigirl luxury wears', 'Abigirl-luxury-wears', '<p><br></p><p>Deals in all kind of males and females wear ,gowns,joggers,luxury bags,sneakers,night wears etc</p>', 'Minna, Nigeria', '6.5463156', '9.5835546', '0907 114 9638', 'abbyjames262@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '31823055073f58ad262a998a2fa53c49.jpg', 91, 0, 210, 0, NULL, NULL, 'Active', 'Yes', '2023-04-17 12:09:58', '2023-04-18 12:28:13'),
(102, 'Decency Academic Services', 'DecentAlisa', '<p>Works relating to academics as per typing, term papers, assignments.&nbsp;</p>', 'Maya ikorodu Lagos state, Okobi street, Ikorodu, Nigeria', '3.5559113', '6.6457428', '+2348058266136', 'decenteconomistalisa@gmail.com', NULL, NULL, '8am - 4pm', '8am - 4pm', '8am - 4pm', '8am - 4pm', '8am - 4pm', '12pm - 5pm', '12pm - 4pm', '5d2c9cd6dbdfa0722f48d252ef8e2712.jpg', 1, 0, 216, 0, NULL, NULL, 'Active', 'Yes', '2023-04-17 13:38:32', '2023-04-18 12:28:10'),
(103, 'Beauty Hairs', 'Ifyyy', '<p><b>We make quality and affordable hair😊.</b></p><p><b>Braids</b></p><p><b>Knotless Braids</b></p><p><b>Cornrows</b></p><p><b>Locs&nbsp;</b></p><p><b>Butterfly Braids</b></p><p><b>Ghana weaving</b></p><p><b>Crochet</b>&nbsp;</p><p><b>Natural Hair Braids.</b></p><p><b>Any braids you could think of☺</b></p>', 'University of Nigeria, UNN Nsukka, Obukpa Road, Nsukka, Nigeria', '7.411526299999998', '6.866602', '09134556009', 'ifeomagrace472@gmail.com', NULL, NULL, '7am-6pm', '7am-6pm', '7am-6pm', '7am-6pm', '7am-6pm', '9am-7pm', '12pm-6pm', '465862c9b5057e21fcdb44f9a0c49d97.jpg', 92, 0, 218, 0, NULL, NULL, 'Active', 'Yes', '2023-04-17 16:01:12', '2023-04-18 12:28:10'),
(104, 'Ohas Fashion house', 'Ohas-fashion-house', '<p>We at ohas fashion house deliver the best sewing and branding of all kinds of unisex wears . We are currently among the best nation wide&nbsp;</p>', 'Abba, Nigeria', '6.9786326', '6.216787399999999', '09079280467', 'ohasbright@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '8dfba19f744e5a90b50117a6c8306727.jpg', 14, 0, 219, 0, NULL, NULL, 'Active', 'Yes', '2023-04-18 12:39:41', '2023-04-18 22:17:42'),
(105, 'D&D footwears', 'D&D-footwears', '<p>We deal on luxury foot wears of all kinds and colors&nbsp;</p>', '3 Layo Adeniyi Street, Lagos, Nigeria', '3.329861', '6.6532252', '08139403668', 'sholaadeniyi985@gmail.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '2', '51a21c6ffdfa8de426c2d82ea77e5ea1.jpg', 91, 0, 225, 0, NULL, NULL, 'Active', 'Yes', '2023-04-18 20:00:37', '2023-04-18 22:17:40'),
(106, 'Borntalented concepts..', 'Borntalented-concepts..', '<p>Creative writer</p><p>Creative photographer</p><p>Event planning, compere, photo book ( hard and soft copy)... &nbsp;Camera man, picture frame</p>', 'Water Water Bus-Stop, Unnamed Road, Ota, Nigeria', '3.1654426', '6.645130600000001', '09018977672', 'godspowerenabulele5@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', 'd8c13642beb7e04599c5f746a954574b.jpg', 13, 0, 226, 0, NULL, NULL, 'Active', 'Yes', '2023-04-18 21:40:40', '2023-04-18 22:17:39'),
(107, 'Vivo-products', 'Vivo-products', '<p>I sell vivo product a brand new phone not fairly used</p><p>Pls feel free to slide into my DM</p><p>Serious buyer</p>', 'Abeokuta okiewilo', NULL, NULL, '09072993404', 'adesojiaolushola23@gmail.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '53929f666542eda0553b9e78874e8b03.jpg', 55, 0, 227, 0, NULL, NULL, 'Active', 'Yes', '2023-04-18 21:49:25', '2023-04-18 22:17:38'),
(108, 'Iretio Concept Limited', 'Iretio-Concept-limited', '<p><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">&nbsp;we deal with making school bags , lunch bags, handbag of different sizes and specifications.</span></p><p><br></p><p>We also have our beans flour, yam flour, plantain chips and more...</p>', '3 Prosperity Road, Lagos, Nigeria', '3.3131263', '6.5371475', '08162059860', 'ilelaboyeolayemi@gmail.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', 'e45997d19c8678dc25563cf6a3ae1ccb.jpg', 49, 0, 233, 0, NULL, NULL, 'Active', 'Yes', '2023-04-19 18:08:24', '2023-04-19 18:12:09'),
(109, 'OBADEEZYNES', 'Obadeezynes', '<p><span style=\"font-size: 16px;\">Every brands has its own personality and potentials, that\'s what makes them stand out,</span></p><p><span style=\"font-size: 16px;\">it\'s now time you get a branding agency / creative director that would strategies</span></p><p><span style=\"font-size: 16px;\">in creating unique artworks that grabs attention, makes a strong first impression,</span></p><p><span style=\"font-size: 16px;\">foundation of your brand identity, memorable, separates you from competition,</span></p><p><span style=\"font-size: 16px;\">fosters brand loyalty, expected by your audience and lots more.</span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><span style=\"font-size: 16px;\">° Creative Designs</span></p><p><span style=\"font-size: 16px;\">° Printings</span></p><p><span style=\"font-size: 16px;\">° Branding &amp; Merchandise&nbsp;</span></p><p><span style=\"font-size: 16px;\">° UI/UX</span></p><p><span style=\"font-size: 16px;\">° Motion Graphics</span></p><p><span style=\"font-size: 16px;\">° SMP Handle &amp; ads ads campaign</span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><span style=\"font-size: 16px;\">https://linktr.ee/obadeezynes&nbsp;</span></p>', 'Nigeria', '8.675277', '9.081999', '+2349152808215', 'jnrolamilekandavid@gmail.com', 'https://linktr.ee/obadeezynes', NULL, '9am - 5pm', '9am - 5pm', '9am - 5pm', '9am - 5pm', '9am - 5pm', '9am - 5pm', NULL, '11bfb5444a560b3c3d34f2e87b8ddb2e.png', 85, 0, 234, 0, NULL, NULL, 'Active', 'Yes', '2023-04-19 21:15:36', '2023-04-20 20:14:10'),
(110, 'Rave Properties', 'Rave-properties', '<p>We deal on installation of different kinds of wall papers, window blinds and modern tiling &nbsp;</p>', 'Ahmadiya Road, Lagos, Nigeria', '3.2962811', '6.6646363', '08100443470', 'emmanuelatoyebi19@yahoo.com', NULL, NULL, '24/7', '24/7', '24hrs', '24/7', '24/7', '24/7', '24/7', 'bb5c38efd1542528ea8f13fa8d4651b3.jpg', 56, 0, 238, 0, NULL, NULL, 'Active', 'Yes', '2023-04-20 10:10:56', '2023-04-20 20:14:08'),
(111, 'Dlaw stitches', 'Dlaw79', '<p>I am expert in unisex wears both English and native wears...</p><p>We make school uniform and academic gown....</p><p>We sew nice polo and Tshirts ...etc</p><p>A trial we convince you&nbsp;</p><p>Thanks&nbsp;</p>', '7 Kajegbo Street, Ibadan, Nigeria', '3.879417399999999', '7.345114199999999', '07062319069', 'Dlaw3535@yahoo.com', NULL, NULL, '7AM - 7PM', '7AM - 7PM', '7AM - 7PM', '7AM  - 7PM', '7AM  - 7PM', '9Am - 6PM', '11AM - 3PM', '1d1d3db802b1a5766c6b026d31ab6950.jpg', 14, 0, 230, 0, NULL, NULL, 'Active', 'Yes', '2023-04-20 10:26:37', '2023-04-20 20:14:06'),
(112, 'Perazim Virtual Services', 'Perazim', '<p>Quality and Affordable Virtual Services like Network data subscriptions (1gig of MTN, AIRTEL, GLO and ETISALAT are ₦225, ₦235, ₦252 and ₦325 respectively).</p><p>Discounted Airtime purchase, Satellite TV subscriptions, Exam Result checkers and great referral rewards.</p>', 'Owode Ede, Nigeria', '4.495428899999999', '7.7127255', '08167882074, 09013666048', 'perazim.virtual@gmail.com', 'www.pvs.com.ng', NULL, '7AM - 9PM', '7AM - 9PM', '7AM - 9PM', '7AM - 9PM', '7AM - 9PM', '7AM - 9PM', '7AM - 9PM', '57227ca365b763abb9e7036ef8661264.jpg', 59, 0, 240, 0, 'Data', 'Cheap data', 'Active', 'Yes', '2023-04-20 17:23:09', '2023-04-20 20:14:05'),
(113, 'FortunX Properties', 'FortunX', '<p>We buy and sales lands, we have houses for rent,sale and lease at different locations we also give consultation to our clients,</p><p>We also rent and sale warehouses, shops and plazas.</p>', 'Kano, Nigeria', '8.591956099999999', '12.0021794', '09069434450', 'Fortunxholdings.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ca03a29aa597e91c13e47ac28a237b2d.jpg', 6, 0, 241, 0, 'Real estate kano, kano real estate', 'Real estate,  kano, properties, properties kano', 'Active', 'Yes', '2023-04-21 05:44:11', '2023-04-21 16:20:06'),
(114, 'OJ\'S COLLECTIONS', 'Ojima', '<p>OJ\'S COLLECTIONS helps you look good with decency, it comprises of both male and female accessories&nbsp;</p>', 'Kaduna, Nigeria', '7.4408397', '10.5015183', '07036249877,08179100611', 'Joelglory21@gmail.com', NULL, NULL, '6AM-8PM', '6AM-8PM', '6AM-8PM', '6AM-8PM', '6AM-8PM', '6AM-8PM', '12PM-5PM', 'aa7216235eff9d3b4ac25540e9ed1521.jpg', 14, 0, 244, 0, NULL, NULL, 'Active', 'Yes', '2023-04-21 20:25:47', '2023-04-21 22:53:23'),
(115, 'DANEKS DYNAMIC CONCEPT', 'DANEKS200', '<p>We specialized on all telecommunications sim reg and sales of airtime.</p><p>We sell mifis and moderns, we sell phone assesories etc</p>', 'No 11 beside Nigorite pharmacy Anyigba', NULL, NULL, '08055595145', 'Jamesatadogau@gmail', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5e1c9522915938b50058a4a965577551.jpg', 55, 0, 245, 0, NULL, NULL, 'Active', 'Yes', '2023-04-21 23:27:59', '2023-04-21 23:53:30'),
(116, 'Adelpha graphic', 'Debbie', '<p>Graphic Designer</p>', 'Benin City, Nigeria', '5.6037465', '6.334986', '07018444410', 'iyayiosahon2019@gmail.com', NULL, NULL, '6Am to 10pm', '6Am to 10pm', '6Am to 10pm', '6Am to 10pm', '6Am to 10pm', '6Am to 10pm', '6Am to 10pm', '9fc1069452a47adfd29bb9e5d8a6888c.jpg', 84, 0, 253, 0, NULL, NULL, 'Active', 'Yes', '2023-04-23 16:00:33', '2023-04-23 21:11:19'),
(117, 'Fred Telecom', 'Fred-telecom', '<p><br></p><p>my services:&nbsp;</p><p>* selling of data for all networks at cheaper rate</p><p>* selling of airtime for all networks</p><p>* selling of E-pin scratch card for checking of waec, Neco and Jamb results</p><p>*training people how to print all networks recharge card with their android phone</p><p>*training people how to generate E-pin scratch card for result checking</p><p>*we also make payments for electricity bills for all the states .&nbsp;</p>', 'Psychiatric road udowowina number 40 Benin city', NULL, NULL, '08030767441', 'wilfredyakubu17@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '98f697474d47304591e9e3fd2007521c.jpg', 101, 0, 255, 0, NULL, NULL, 'Active', 'Yes', '2023-04-24 12:46:57', '2023-04-24 18:01:44'),
(118, 'Alheri Communication', 'Alheri-Communication', '<p>Communication services&nbsp;</p>', 'Old kwata area potiskum', NULL, NULL, '+2347034255170', 'Abdullahisalehumar2022@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '3552131e02d0f9ffc61b04ae95e373d9.jpg', 101, 0, 258, 0, NULL, NULL, 'Active', 'Yes', '2023-04-24 13:01:02', '2023-04-24 18:01:44'),
(119, 'Royalty Foot Wears', 'Royalty-foot-wears', '<p>I\'m Adeniyi Daniel Adewunmi</p><p>I\'m Into Shoe Making, Palms, Half Shoes, Slippers, Unisex Sandals, Unisex Beckons Stock and any kind of FootWear of your choose...</p><p>I base in Lagos, Ojota in particular..</p>', '152, Kujore Street, Ojota Lagos', NULL, NULL, '09155581971', 'adeniyidanieladewunmi@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', 'f155dd27dcff21c1c7b46289a12cce45.jpg', 91, 0, 259, 0, NULL, NULL, 'Active', 'Yes', '2023-04-24 13:11:56', '2023-04-24 18:01:43'),
(120, 'DebbyCee Klassik', 'DebbyCee', '<p>DebbyCee-Klassik! Home of Fashion and Styles. We do wholesales and retail on different kinds of wears both for Adults(unisex) and Children, Ladies Handbags, Footwear, Ready to Wear, Human Hair Wigs, Back to School, Ladies Underwear<br></p>', '12 Rumuadaolu Market Rd, Port Harcourt, Nigeria', '7.0022318', '4.8308957', '08155542050', 'debbyceeklassik@gmail.com', 'https://wa.me/message/PJX3SSUGJOMUC1', NULL, '8:30AM - 7PM', '8:30AM - 7PM', '8:30AM - 7PM', '11AM - 7PM', '8:30AM - 7PM', '8:30AM - 7PM', 'CLOSED', 'b0559fe17e4777b80452632cace2a21d.png', 58, 0, 264, 0, NULL, NULL, 'Active', 'Yes', '2023-04-24 23:59:32', '2023-04-25 12:59:48'),
(121, 'Micheal services', 'Lil-dad22', '<p>We sell cheap data at Affordable prices for all Networks and subscribers&nbsp;</p>', 'Lagos, Nigeria', '3.3792057', '6.5243793', '08166343397', 'Adejokunmicheal@gmail.com', NULL, NULL, 'Everyday', 'Everyday', 'Everyday', 'Everyday', 'Everyday', 'Everyday', 'Everyday', 'b733acee7130889a58c4a7fa339124bb.jpg', 59, 0, 266, 0, NULL, NULL, 'Active', 'Yes', '2023-04-25 01:24:19', '2023-04-25 12:59:48'),
(122, 'ZEE SIGNATURE', 'Zee-Signature', '<p>We design your cloth to your taste&nbsp;</p>', '20, ijaiye road ifako Lagos', NULL, NULL, '09024078607', 'ahmedfunmi1991@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '1762166ba3b4ebcaec4667f7416deb16.jpg', 14, 0, 270, 0, NULL, NULL, 'Active', 'Yes', '2023-04-25 13:20:57', '2023-04-25 13:23:48'),
(123, 'Omobella Store', 'Omobella-store', '<p><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent;\">We</span><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\"> deals on &nbsp;dropshipping jewelry nighties bedsheets duvex wallpaper curtains accessories household items, attachment etc</span></p>', '24 Kazeem Street, Ketu, Lagos, Nigeria', '3.3961493', '6.588939000000001', '08173089915', 'omobolanleazeez016@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '5199e51a358b5e9ae2a734bd97c6cf7a.jpg', 91, 0, 271, 0, NULL, NULL, 'Active', 'Yes', '2023-04-25 13:38:46', '2023-04-25 19:29:22'),
(124, 'VC INTERIOR', 'VC-INTERIOR', '<p><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">Welcome to VC INTERIORS, where we believe that everyone deserves to live in a beautiful and functional space that inspires and enhances their daily life. Our brand was founded with the goal of making high-quality, stylish interior design accessible to everyone, regardless of budget or lifestyle.</span><br></p>', 'Enugu, Nigeria', '7.5138947', '6.448270099999999', '08161367803', 'Vcinteriorss@gmail.com', NULL, NULL, '24/7', '24/7', '24hrs', '24/7', '24/7', '24/7', '24/7', '8f07a1ffec4983669b9d9474a36f9e3c.jpg', 56, 0, 274, 0, NULL, NULL, 'Active', 'Yes', '2023-04-25 19:28:47', '2023-04-25 19:29:23'),
(125, 'THE-VINE', 'THE-VINE', '<p>Perfume oil, Liquid soap, glow oil, scent and skin care,</p>', 'Akure, Nigeria', '5.205790899999999', '7.257132500000001', '08134403901', 'Olonimoyodivine@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '15f1fccabdb478eca386c5752a0487b0.jpg', 98, 0, 283, 0, NULL, NULL, 'Active', 'Yes', '2023-05-01 16:12:40', '2023-05-02 00:13:04'),
(126, 'BEUCAS ENTERPRISE', 'BEUCAS-ENTERPRISE', '<p>All kinds of pastries and small chops for events and retail sales and whole sale .</p>', 'Imohwe Street, Ughelli, Nigeria', '5.9771323', '5.5017381', '09021275904', 'beucasenterprise@gmail.com', NULL, NULL, '24/7', '24/7', '24hrs', '24/7', '24/7', '24/7', '24/7', 'f78ca1fc01b7ccd474a3cb88d8c52d75.jpg', 86, 0, 284, 0, NULL, NULL, 'Active', 'Yes', '2023-05-01 19:03:00', '2023-05-02 00:13:03'),
(127, 'BAS Investment', 'Surudara1912', '<p>We build Leather slippers and sandals</p>', 'Ijebu Ode, Nigeria', '3.9164585', '6.8299846', '07054093320', 'baokuadebola@gmail.com', NULL, NULL, '9AM-5PM', NULL, NULL, NULL, NULL, NULL, NULL, '08e41e0d2590ae2c4dba348a4bbbe5fa.jpg', 34, 0, 285, 0, NULL, NULL, 'Active', 'Yes', '2023-05-02 13:03:08', '2023-05-03 01:38:43'),
(128, 'God\'s Favorite plumbing services', 'Holluwartosin3', 'We install and repair pipes and fixtures that carry water, gas, or other fluids in homes and businesses. We maintain plumbing fixtures like bathtubs and toilets and appliances such as dishwashers or heating systems.', 'Lekki Phase 1, Lekki, Nigeria', '3.4723495', '6.447809299999999', '09052912719', 'holluwartomisinmicheal@gmail.com', 'https://www.facebook.com/profile.php?id=100088093921658', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bec3b7a9cd1551ec7779c306ff7281f6.jpg', 19, 0, 286, 0, 'Plumbing services', NULL, 'Active', 'Yes', '2023-05-02 13:30:28', '2023-05-03 01:38:42'),
(129, 'Diva\'s hairs & Luxury', 'Diva_hairs', '<p>Welcome to Diva\'s hairs &amp; Luxury.</p><p>We give you quality hairs at affordable prices.</p><p>We are located at awka anambra state</p><p>We are smedan registered.</p><p>With us, you slay and save🥰</p>', 'Awka, Anambra, Nigeria', '7.0821162', '6.222004300000001', '09122520902', 'chukwudoruef@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5a925b93ec3e1ca060f54477856b9478.jpg', 92, 0, 287, 0, NULL, NULL, 'Active', 'Yes', '2023-05-02 17:04:19', '2023-05-03 01:38:55'),
(130, '9JAPAWA INTERNET SERVICES', '9japawa', '<p>Internet and Agroallied Services&nbsp;</p>', 'Lagos, Nigeria', '3.3792057', '6.5243793', '07068183825', '9japawainternetservices@gmail.com', 'www.9japawa.com', NULL, '9am - 9pm', '9am -9pm', '9am -9pm', '9am - 9pm', '9am - 9pm', '9am - 9pm', '9am - 9pm', 'a4c4ecf8df8e16ffea0cb585ef17750d.jpg', 101, 0, 289, 0, NULL, NULL, 'Active', 'Yes', '2023-05-02 20:05:28', '2023-05-03 01:38:56'),
(131, 'BEEG TECH', 'BEEG-TECH', '<p>VTU app creation</p><p>Logo design</p>', 'Ondo West, Nigeria', '4.7691586', '7.025680299999999', '08160804217', 'tejumolaelizabeth10@gmail.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '718da04036a1994df970d5416716bebd.jpg', 59, 0, 294, 0, NULL, NULL, 'Active', 'Yes', '2023-05-03 20:45:00', '2023-05-03 23:46:15'),
(132, 'Amen-estate', 'Amen-estate', '<p>We deal on sales of land and houses .&nbsp;</p>', 'Nigeria', '8.675277', '9.081999', '08140124563', 'shogbolatemitope23@gmail.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '6bb79b386535421c3c0c65b5648ee4fb.jpg', 6, 0, 297, 0, NULL, NULL, 'Active', 'Yes', '2023-05-03 22:22:56', '2023-05-03 23:46:15'),
(133, 'Sneakers', 'Kallykam', '<p>kallykam Best sneakers is the best sneakers so far</p>', 'Aba South, Nigeria', '7.3408535', '5.0702604', '08064624996', 'kallykam119@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9663736a162500875d139dcc0af6a89e.jpg', 3, 0, 298, 0, NULL, NULL, 'Active', 'Yes', '2023-05-03 22:41:36', '2023-05-03 23:46:14'),
(134, 'RHEMA NATURAL CLINIC', 'rhemaclinic', '<p><b>RHEMA NATURAL CLINIC NIGERIA</b></p><p><u>Advanced Ayurvedic Medicine India</u></p><p>Our Medicines are very effective and natural with no side effects.</p><p><b>*WE TREAT* :</b></p><p>👉 *INFECTIONS*</p><p>👉 *HIV &amp; AIDS*</p><p>👉 *DIABETES*&nbsp;</p><p>👉 *ULCER*👉 *PILE*</p><p>👉 *INFERTILITY* 👉 *WORM*</p><p>👉 *BLOCKED FALLOPIAN TUBE*</p><p>👉 *WEAK ERECTION and QUICK EJACULATION*</p><p>👉 *LOW SPERM COUNT*</p><p>👉 *RHEUMATISM* &amp;</p><p>&nbsp;*ARTHRITIS*</p><p>👉 *HEPATITIS **</p><p>👉 *HIGH BLOOD PRESSURE*&nbsp;</p><p>👉 *STROKE* 👉 *EYE &amp; EAR PROBLEM*</p><p>👉 *FIBROID*</p><p>👉 *PROSTATE DISORDER*</p><p>👉 *PENIS &amp; BREAST ENLARGEMENT * HERNIA * CANCER * OVARIAN CYST*&nbsp;</p><p><span style=\"font-size: 1rem;\">..... *AND LOTS MORE*.</span></p><p>*<b>WE TREAT BUT GOD HEALS</b>*</p><p>🍉🍒🍓🥬🍍🥑🍇🍏🍌🍑🥥🍅🍎🍊</p>', 'Abuja, Nigeria', '7.398574', '9.0764785', '+2347057447365', 'rhemaclinic2020@gmail.com', NULL, NULL, '6AM-10PM', '6AM-10PM', '6AM-10PM', '6AM-10PM', '6AM-10PM', '6AM-10PM', '12PM-10PM', 'dad0ccad0c238c3dd50fda73f4b7d90b.jpg', 8, 0, 305, 0, NULL, NULL, 'Active', 'Yes', '2023-05-05 15:03:15', '2023-05-06 14:28:28'),
(135, 'Nino-cab', 'Nino-cab', '<p>I own a camery 2004 big daddy which I use for for cab services . I decider nation wide . With my smoot dive your journey is secured .</p>', 'TotalEnergies - Ijebu Itokin Road Service Station, Ikorodu, Nigeria', '3.5', '6.600000000000001', '+2348086878791', 'princehenry932@gmail.com', NULL, NULL, '24/7', '24/7', '24hrs', '24/7', '24/7', '24/7', '24/7', '62a043643b4806679751ddb306e05f47.jpg', 102, 0, 308, 0, NULL, NULL, 'Active', 'Yes', '2023-05-06 11:28:40', '2023-05-06 14:28:27'),
(136, 'ultimate high quality center rug', 'Kingsley', '<p><b>high quality center rug</b></p>', 'Surulere, Lagos, Nigeria', '3.348572', '6.498292999999999', '07089274173', 'excelarinze7@gmail.com', 'www.excelrug.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2b22ddf9c32db48ca677366929da2bf5.png', 7, 0, 309, 0, NULL, 'high quality center rug', 'Active', 'Yes', '2023-05-06 12:57:45', '2023-05-06 14:28:27'),
(137, 'AMAZING FASHION STORE', 'Amazing-fashion-store', '<p>We sale fashion items such as unisex wears, shoes, bags snickers , heels and many more.</p>', 'Ilorin, Nigeria', '4.5443923', '8.5373356', '08157780529', 'oyelekedamilola15@gmail.com', NULL, NULL, '24/7', '24/7', '24hrs', '24/7', '24/7', '24/7', '24/7', '425b909f71685e103d31c57621514043.jpg', 87, 0, 311, 0, NULL, NULL, 'Active', 'Yes', '2023-05-06 21:54:20', '2023-05-07 11:46:54'),
(138, 'CROWN CONCEPT', 'Crown-concept', '<p>Art and publicity&nbsp;</p><p>surprises parckages&nbsp;</p>', 'Nigeria', '8.675277', '9.081999', '08039922582', 'oluwadamilaresamson470@gmail.com', NULL, NULL, '24/7', '24/7', '24hrs', '24/7', '24/7', '24/7', '24/7', 'f0d50ebb9b1f796d7c195791d5bcb340.jpg', 24, 0, 312, 0, NULL, NULL, 'Active', 'Yes', '2023-05-06 22:04:07', '2023-05-07 11:39:09'),
(139, 'ATLAD AND ASSOCIATES', 'ATLAD-AND-ASSOCIATES', '<p>ATLAD AND ASSOCIATES is an Architectural firm in which our service centers on building 🏠 design and construction of well design building and Aesthetically pleasing. And we also process building documents<br></p>', 'Ofatedo, Osun, Nigeria', '4.487701899999999', '7.780533699999999', '08066428438', 'olatunbosunlukmanolatunde@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', 'd5732e90a4f69ee26a79f00b12a89e54.jpg', 104, 0, 314, 0, NULL, NULL, 'Active', 'Yes', '2023-05-07 11:37:59', '2023-05-07 11:39:08'),
(140, 'AISE', 'AISE', '<p>Right from day one, man has always battled with the need to eat complete square meals, but with Aise, everything just got better! Not only do we give our customers satisfaction,but also ensure their freedom.<br></p>', 'Airport Road, Abuja, Nigeria', '7.4108297', '9.0015813', '09158855522', 'aise15728@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', 'd16602abc3d1b4c7f81b16f3acf5697e.jpg', 2, 0, 315, 0, NULL, NULL, 'Active', 'Yes', '2023-05-07 16:07:30', '2023-05-10 10:57:23'),
(141, 'Vjayhairlines', 'Vjayhairlines', '<p><b>We sell all kind of human hairs</b></p>', 'Akwa Ibom, Nigeria', '7.853667499999999', '4.9057371', '08131810367', 'Chat hairline a gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '231e310902d0e2d2d565dd864058afb4.jpg', 92, 0, 319, 0, NULL, NULL, 'Active', 'Yes', '2023-05-08 19:12:39', '2023-05-10 10:57:21'),
(142, 'SMARTECH MEDIA', 'SmarTech-Media', '<p>We deal on live streaming of events and video coverage ..we cover all kinds of events .</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', 'Enugu State, Nigeria', '7.435619399999999', '6.536353', '08133558457', 'adjarhojonathan7@gmail.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', 'c12817302916f6be150144cda9547a91.jpg', 16, 0, 320, 0, NULL, NULL, 'Active', 'Yes', '2023-05-10 16:43:58', '2023-05-14 03:30:06');
INSERT INTO `listings` (`id`, `listing_name`, `listing_slug`, `listing_description`, `listing_address`, `address_longitude`, `address_latitude`, `listing_phone`, `listing_email`, `listing_website`, `listing_map`, `listing_oh_monday`, `listing_oh_tuesday`, `listing_oh_wednesday`, `listing_oh_thursday`, `listing_oh_friday`, `listing_oh_saturday`, `listing_oh_sunday`, `listing_featured_photo`, `listing_category_id`, `listing_location_id`, `user_id`, `admin_id`, `seo_title`, `seo_meta_description`, `listing_status`, `is_featured`, `created_at`, `updated_at`) VALUES
(143, 'Nonny Apparel', 'Nonny-Apparel', '<p>We design all kinds of male wears that one can think of.&nbsp;</p><p>We deliver quality services and your best desire is our top priority.</p><p>Com and experience a top notch services .&nbsp;</p>', '117 Amechi Road, Enugu, Nigeria', '7.504701700000001', '6.396446499999999', '08104913941', 'ugwuchinonsomiracle@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '3f73a007f01bef09ef4d90318a4bbf16.jpg', 14, 0, 321, 0, NULL, NULL, 'Active', 'Yes', '2023-05-12 01:37:56', '2023-05-14 03:30:04'),
(144, 'STAINLESS DABBY', 'Stainless-Dabby', '<p>Dealers in health and beauty products, hairs, beauty skin care, and makeups.&nbsp;</p>', 'Lagos Trade Fair Complex, Lagos, Nigeria', '3.2412112', '6.465179399999999', '08166229879', 'ejiakaonyejoy@gmail.com', NULL, NULL, '24/7', '24/7', '24hrs', '24/7', '24/7', '24/7', '24/7', '5c5396b7aa8026d48bbc25368b5b6e01.jpg', 98, 0, 322, 0, NULL, NULL, 'Active', 'Yes', '2023-05-12 02:45:35', '2023-05-14 03:30:04'),
(145, 'Crown Star Production', 'Crown-Star-Production', '<p>Name is crown star production &nbsp;</p><p>Awo Jesu on Facebook ticktock Djnorkia</p><p>A place where u get cheap and good music which comes with promotion and all others so come and get good music</p>', 'Alakuko, Lagos, Nigeria', '3.2646492', '6.681121099999999', '08050954745', 'djnorkia@yahoo.com', NULL, NULL, '6AM TO 8PM', '6AM TO PM', '6am to 5pm', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '4a7332401a765a3e57e0ebfe9a2ff8ff.jpg', 50, 0, 327, 0, NULL, NULL, 'Active', 'Yes', '2023-05-14 02:52:02', '2023-05-14 03:30:02'),
(146, 'Nice Dreams properties', 'Nice-Dreams-properties', '<p>We deal on property sales .&nbsp;</p>', 'Ogunsanya Street, Lagos, Surulere, Nigeria', '3.3352757', '6.480795899999999', '0816 262 6298', 'Nicedreamspropertiesltd.ng@gmail.com', NULL, NULL, '6AM TO 8PM', '6am to 8pm', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '9f8a6bb67d9ed972fc1891f62048f248.jpg', 6, 0, 327, 0, NULL, NULL, 'Active', 'Yes', '2023-05-14 02:58:09', '2023-05-14 03:30:01'),
(147, 'Glamour Digital Communication', 'Glamour-Digital-Commutation', '<p>We sale phone, phone parts and also repair phones .&nbsp;</p>', 'Nigeria', '8.675277', '9.081999', '07037346281', 'Ikeejike200@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '7b2a63012ae0fed7166be48b47fa8a0a.jpg', 28, 0, 328, 0, NULL, NULL, 'Active', 'Yes', '2023-05-14 03:16:26', '2023-05-14 03:30:00'),
(148, 'Astonish Technology', 'Astonish-Technology', '<p>Astonish Technology</p><p>Astonish Technology</p><p>Shop 38 Johnny and gro plaza behind microstation, BRT terminal ikotun, lagos.</p><p>...we fix all kinds of phones, tablets&nbsp;</p><p>*WE FIX</p><p>*WE SELL&nbsp;</p><p>*WE SWAP</p><p><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">08188375246, 08131500645.</span><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">...</span></p>', 'Shop 38 Johnny and gro plaza behind microstation, BRT terminal ikotun, lagos.', NULL, NULL, '08131500645', 'echomike400@gmail.com', NULL, NULL, '24/7', '24/7', '24hrs', '24/7', '24/7', '24/7', '24/7', '39efcf49fca278f52ba5b166c9fc8485.jpg', 55, 0, 329, 0, NULL, NULL, 'Active', 'Yes', '2023-05-14 03:23:15', '2023-05-14 03:29:59'),
(149, 'Gollden Write-ups', 'Golden-Write-ups', '<p><span style=\"font-size: 1rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">&nbsp;I am a fully fledged content writer who is able to create concrete and best selling contents for your business or personal use respectively. I have worked with different clients who can tell of my work. I write articles, sales copy, novels and lot more.</span></p><p>You can also contact me if you need a ghostwriter. I am an highly confidential one.</p>', 'Lagos, Nigeria', '3.3792057', '6.5243793', '08119498048', 'adedejiayomide902@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '835f36c5d561f752f3eda6d011fe8015.jpg', 49, 0, 330, 0, NULL, NULL, 'Active', 'Yes', '2023-05-14 03:29:06', '2023-05-14 03:29:45'),
(150, 'Prime Telecom Services', 'Primetelecom', '<p>We offer instant recharge of Airtime, Databundle, CableTV (DStv, GOtv &amp;, Startimes), Electricity Bill Payment and more...<br></p>', 'Okochiri Kingdom, Okrika, Nigeria', '7.1148718', '4.7441985', '09031411039', 'primetelecomservicesonline@gmail.com', 'www.primetelecom.com.ng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ca5b3af756b1869a49d95a05bc24e3d2.jpg', 101, 0, 331, 0, NULL, NULL, 'Active', 'Yes', '2023-05-14 13:13:12', '2023-05-16 02:54:28'),
(151, 'D BEN\'S COMMUNICATIONS', 'BLESSEDBEN', '<p>Ethical Hacking A-Z</p>', 'Kaduna', NULL, NULL, '08068757381', 'nelbenjamin1@gmail.com', 'https://wa.me/+2347031482418', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dc5ebdae5b0db012e7e380131879640a.png', 1, 0, 337, 0, NULL, 'Ethical Hacking A-Z', 'Active', 'Yes', '2023-05-15 13:01:40', '2023-05-16 02:54:28'),
(152, 'ABK SEX TOYS', 'Abk-sex-toys', '<p>Discover a world of pleasure and satisfaction with our wide range of adult toys and accessories in Abeokuta, Ogun State.</p><p><br></p><p>From Vibrators to dildos, lubricants and massage tools. We are always there for you</p><p>Adult Tech Tool bus stop in Abeokuta.</p>', 'No 9 Wole Ogunbowale Close, Ibara Housing Estate,  Abeokuta', NULL, NULL, '09153062944', 'Abeokutasexstore@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '108af755990dfe41cabba09b94c91cc6.jpg', 90, 0, 338, 0, NULL, NULL, 'Active', 'Yes', '2023-05-15 13:18:15', '2023-05-16 02:54:29'),
(153, 'Qelifox Unatarmit Service', 'Qelifox-Unatarmit-Service', '<div>Hi!WelcomeQelifox Unatarmit Service&nbsp;</div><div>We’re here to get you the right fit in the shortest possible time A place where leading professional cleaning service. Are served and give out to the masses</div>', 'Address no 7b Alhaji Kareem ogungbeye first gate agidingbe Ikeja Lagos, Ikeja, Nigeria 100266', NULL, NULL, '+2348107572970', 'qelifoxunatarmitservice@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '4f82f6b82d67fe005a5c995559c21b54.jpg', 93, 0, 167, 0, NULL, NULL, 'Active', 'Yes', '2023-05-15 15:55:51', '2023-05-16 02:54:31'),
(154, 'Ajispecial plumber and materials sellers', 'Ajispeciall', '<div class=\"flex-shrink-0 flex flex-col relative items-end\" style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(69,89,164,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; position: relative; display: flex; flex-direction: column; align-items: flex-end; color: rgb(52, 53, 65); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; background-color: rgb(247, 247, 248);\"><div class=\"w-[30px]\" style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(69,89,164,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; width: 30px;\"><div class=\"relative p-1 rounded-sm h-[30px] w-[30px] text-white flex items-center justify-center\" style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(69,89,164,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; position: relative; display: flex; height: 30px; width: 30px; align-items: center; justify-content: center; border-radius: 0.125rem; --tw-text-opacity:1; color: rgba(255,255,255,var(--tw-text-opacity)); background-color: rgb(16, 163, 127);\"><svg width=\"41\" height=\"41\" viewBox=\"0 0 41 41\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\" stroke-width=\"1.5\" class=\"h-6 w-6\" role=\"img\"><text x=\"-9999\" y=\"-9999\"></text></svg><br class=\"Apple-interchange-newline\">ChatGPT<path d=\"M37.5324 16.8707C37.9808 15.5241 38.1363 14.0974 37.9886 12.6859C37.8409 11.2744 37.3934 9.91076 36.676 8.68622C35.6126 6.83404 33.9882 5.3676 32.0373 4.4985C30.0864 3.62941 27.9098 3.40259 25.8215 3.85078C24.8796 2.7893 23.7219 1.94125 22.4257 1.36341C21.1295 0.785575 19.7249 0.491269 18.3058 0.500197C16.1708 0.495044 14.0893 1.16803 12.3614 2.42214C10.6335 3.67624 9.34853 5.44666 8.6917 7.47815C7.30085 7.76286 5.98686 8.3414 4.8377 9.17505C3.68854 10.0087 2.73073 11.0782 2.02839 12.312C0.956464 14.1591 0.498905 16.2988 0.721698 18.4228C0.944492 20.5467 1.83612 22.5449 3.268 24.1293C2.81966 25.4759 2.66413 26.9026 2.81182 28.3141C2.95951 29.7256 3.40701 31.0892 4.12437 32.3138C5.18791 34.1659 6.8123 35.6322 8.76321 36.5013C10.7141 37.3704 12.8907 37.5973 14.9789 37.1492C15.9208 38.2107 17.0786 39.0587 18.3747 39.6366C19.6709 40.2144 21.0755 40.5087 22.4946 40.4998C24.6307 40.5054 26.7133 39.8321 28.4418 38.5772C30.1704 37.3223 31.4556 35.5506 32.1119 33.5179C33.5027 33.2332 34.8167 32.6547 35.9659 31.821C37.115 30.9874 38.0728 29.9178 38.7752 28.684C39.8458 26.8371 40.3023 24.6979 40.0789 22.5748C39.8556 20.4517 38.9639 18.4544 37.5324 16.8707ZM22.4978 37.8849C20.7443 37.8874 19.0459 37.2733 17.6994 36.1501C17.7601 36.117 17.8666 36.0586 17.936 36.0161L25.9004 31.4156C26.1003 31.3019 26.2663 31.137 26.3813 30.9378C26.4964 30.7386 26.5563 30.5124 26.5549 30.2825V19.0542L29.9213 20.998C29.9389 21.0068 29.9541 21.0198 29.9656 21.0359C29.977 21.052 29.9842 21.0707 29.9867 21.0902V30.3889C29.9842 32.375 29.1946 34.2791 27.7909 35.6841C26.3872 37.0892 24.4838 37.8806 22.4978 37.8849ZM6.39227 31.0064C5.51397 29.4888 5.19742 27.7107 5.49804 25.9832C5.55718 26.0187 5.66048 26.0818 5.73461 26.1244L13.699 30.7248C13.8975 30.8408 14.1233 30.902 14.3532 30.902C14.583 30.902 14.8088 30.8408 15.0073 30.7248L24.731 25.1103V28.9979C24.7321 29.0177 24.7283 29.0376 24.7199 29.0556C24.7115 29.0736 24.6988 29.0893 24.6829 29.1012L16.6317 33.7497C14.9096 34.7416 12.8643 35.0097 10.9447 34.4954C9.02506 33.9811 7.38785 32.7263 6.39227 31.0064ZM4.29707 13.6194C5.17156 12.0998 6.55279 10.9364 8.19885 10.3327C8.19885 10.4013 8.19491 10.5228 8.19491 10.6071V19.808C8.19351 20.0378 8.25334 20.2638 8.36823 20.4629C8.48312 20.6619 8.64893 20.8267 8.84863 20.9404L18.5723 26.5542L15.206 28.4979C15.1894 28.5089 15.1703 28.5155 15.1505 28.5173C15.1307 28.5191 15.1107 28.516 15.0924 28.5082L7.04046 23.8557C5.32135 22.8601 4.06716 21.2235 3.55289 19.3046C3.03862 17.3858 3.30624 15.3413 4.29707 13.6194ZM31.955 20.0556L22.2312 14.4411L25.5976 12.4981C25.6142 12.4872 25.6333 12.4805 25.6531 12.4787C25.6729 12.4769 25.6928 12.4801 25.7111 12.4879L33.7631 17.1364C34.9967 17.849 36.0017 18.8982 36.6606 20.1613C37.3194 21.4244 37.6047 22.849 37.4832 24.2684C37.3617 25.6878 36.8382 27.0432 35.9743 28.1759C35.1103 29.3086 33.9415 30.1717 32.6047 30.6641C32.6047 30.5947 32.6047 30.4733 32.6047 30.3889V21.188C32.6066 20.9586 32.5474 20.7328 32.4332 20.5338C32.319 20.3348 32.154 20.1698 31.955 20.0556ZM35.3055 15.0128C35.2464 14.9765 35.1431 14.9142 35.069 14.8717L27.1045 10.2712C26.906 10.1554 26.6803 10.0943 26.4504 10.0943C26.2206 10.0943 25.9948 10.1554 25.7963 10.2712L16.0726 15.8858V11.9982C16.0715 11.9783 16.0753 11.9585 16.0837 11.9405C16.0921 11.9225 16.1048 11.9068 16.1207 11.8949L24.1719 7.25025C25.4053 6.53903 26.8158 6.19376 28.2383 6.25482C29.6608 6.31589 31.0364 6.78077 32.2044 7.59508C33.3723 8.40939 34.2842 9.53945 34.8334 10.8531C35.3826 12.1667 35.5464 13.6095 35.3055 15.0128ZM14.2424 21.9419L10.8752 19.9981C10.8576 19.9893 10.8423 19.9763 10.8309 19.9602C10.8195 19.9441 10.8122 19.9254 10.8098 19.9058V10.6071C10.8107 9.18295 11.2173 7.78848 11.9819 6.58696C12.7466 5.38544 13.8377 4.42659 15.1275 3.82264C16.4173 3.21869 17.8524 2.99464 19.2649 3.1767C20.6775 3.35876 22.0089 3.93941 23.1034 4.85067C23.0427 4.88379 22.937 4.94215 22.8668 4.98473L14.9024 9.58517C14.7025 9.69878 14.5366 9.86356 14.4215 10.0626C14.3065 10.2616 14.2466 10.4877 14.2479 10.7175L14.2424 21.9419ZM16.071 17.9991L20.4018 15.4978L24.7325 17.9975V22.9985L20.4018 25.4983L16.071 22.9985V17.9991Z\" fill=\"currentColor\"></path></div></div></div><div class=\"relative flex w-[calc(100%-50px)] flex-col gap-1 md:gap-3 lg:w-[calc(100%-115px)]\" style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(69,89,164,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; position: relative; display: flex; width: calc(100% - 50px); flex-direction: column; gap: 0.25rem; color: rgb(52, 53, 65); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; background-color: rgb(247, 247, 248);\"><div class=\"flex flex-grow flex-col gap-3\" style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(69,89,164,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; display: flex; flex-grow: 1; flex-direction: column; gap: 0.75rem;\"><div class=\"min-h-[20px] flex flex-col items-start gap-4 whitespace-pre-wrap break-words\" style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(69,89,164,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; display: flex; min-height: 20px; flex-direction: column; align-items: flex-start; gap: 1rem; white-space: pre-wrap; overflow-wrap: break-word;\"><div class=\"markdown prose w-full break-words dark:prose-invert light\" style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(69,89,164,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: var(--tw-prose-body); max-width: none; --tw-prose-body:#374151; --tw-prose-headings:#111827; --tw-prose-lead:#4b5563; --tw-prose-links:#111827; --tw-prose-bold:#111827; --tw-prose-counters:#6b7280; --tw-prose-bullets:#d1d5db; --tw-prose-hr:#e5e7eb; --tw-prose-quotes:#111827; --tw-prose-quote-borders:#e5e7eb; --tw-prose-captions:#6b7280; --tw-prose-code:#111827; --tw-prose-pre-code:#e5e7eb; --tw-prose-pre-bg:#1f2937; --tw-prose-th-borders:#d1d5db; --tw-prose-td-borders:#e5e7eb; --tw-prose-invert-body:#d1d5db; --tw-prose-invert-headings:#fff; --tw-prose-invert-lead:#9ca3af; --tw-prose-invert-links:#fff; --tw-prose-invert-bold:#fff; --tw-prose-invert-counters:#9ca3af; --tw-prose-invert-bullets:#4b5563; --tw-prose-invert-hr:#374151; --tw-prose-invert-quotes:#f3f4f6; --tw-prose-invert-quote-borders:#374151; --tw-prose-invert-captions:#9ca3af; --tw-prose-invert-code:#fff; --tw-prose-invert-pre-code:#d1d5db; --tw-prose-invert-pre-bg:rgba(0,0,0,0.5); --tw-prose-invert-th-borders:#4b5563; --tw-prose-invert-td-borders:#374151; font-size: 1rem; line-height: 1.75; width: 270px; overflow-wrap: break-word;\"><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(69,89,164,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 0px;\">AjiPlumber worked for a plumbing company. He fixed pipes, unclogged drains, and repaired faucets. He enjoyed helping people and learning about plumbing. He always wore safety gear and followed instructions carefully. AjiPlumber was a reliable and skilled worker.</p></div></div></div></div>', 'Lagos, Nigeria', '3.3792057', '6.5243793', '08092267446', 'ajiboyeemmanuel2017@gmail.com', NULL, NULL, '8am - 4pm', '8am - 2pm', '8am - 4pm', '10am - 2pm', '7am - 4pm', '10am - 2pm', NULL, '68555ef50a2576e973a6d6874fee296a.png', 19, 0, 344, 0, NULL, NULL, 'Active', 'Yes', '2023-05-15 22:31:09', '2023-05-16 02:55:20'),
(155, 'Wendy Hairs', 'Wendy-hairs', '<p>Dealers in all kinds of hairs. Weavon and hair oils .</p>', 'Igbariam, Anambra, Nigeria', '6.9450688', '6.390186099999999', '07030255951', 'Okoyewendy@gmail.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', 'fdf215e1187a4b863c92da170dc239bf.jpg', 92, 0, 347, 0, NULL, NULL, 'Active', 'Yes', '2023-05-16 03:04:00', '2023-05-16 23:39:32'),
(156, 'Didi’s fashion hub', 'Didi’s-fashion-hub', '<p>Sells night wears and other fashions items like bags e.t.c&nbsp;</p>', 'Off Apapa Road, Lagos, Nigeria', '3.3812932', '6.4804837', '07018045601', 'echidinma539@gmail.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '72f0bc45ec9004a4c15ffbd45842ac1f.jpg', 87, 0, 352, 0, NULL, NULL, 'Active', 'Yes', '2023-05-16 18:34:19', '2023-05-16 23:39:32'),
(157, 'Zephire designs', 'Zephire-designs', '<p>Products made from one of the finest fabrics with attention to details and it comes in various colors and sizes<br></p>', 'C67 banex plaza wuse 2 Abuja', '7.469455399999999', '9.084334', '07063098080', 'ibesammie10@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '4cbb29650fd532b49cb4099cf79c6cae.jpg', 14, 0, 356, 0, NULL, NULL, 'Active', 'Yes', '2023-05-17 13:35:04', '2023-05-18 10:27:09'),
(158, 'PESTRID', 'pestrid', '<p>PEST-RID is a pest controlling company that contolls all kinds of Pest problems such as, mosquitoes, Cockroaches,Rats bedbug, termites etc. Below are some of our services</p><p><br></p><p>&nbsp; &nbsp;| FUMIGATION&nbsp;</p><p>&nbsp; &nbsp;| IRS-INDOOR RESIDUAL SPRAY&nbsp;</p><p>&nbsp; &nbsp;| BAITING-RAT CONTROL</p><p>&nbsp; &nbsp;| DISINFECTION ETC.</p>', 'No. 1 Campground Road Anthony Village Lagos Nigeria', NULL, NULL, '07018143449', 'Pestrid11@gmail.com', NULL, NULL, '8AM to 5PM', '8AM to 5PM', '8AM to 5PM', '8AM to 5PM', '8AM to 5PM', '8AM to 5PM', 'Close', 'd8dee9611dbc0c1e046134cecdd70955.jpg', 105, 0, 357, 0, NULL, NULL, 'Active', 'Yes', '2023-05-17 14:11:49', '2023-05-18 10:27:10'),
(159, 'Impeccable concept', 'Dan-yusuf', '<p>I own a music digital recording studio plus video editing studio where I do.</p><p>1 music production</p><p>2 video editing&nbsp;</p><p>3 graphic design</p><p>4 sound and media engineering</p><p>5 post production&nbsp;</p><p>6 online marketing&nbsp;</p><p>7 music and video upload to all platforms</p><p><br></p><p><br></p>', 'Surulere, Lagos, Nigeria', '3.348572', '6.498292999999999', '08060662059', 'dnaduku@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6c28fd59a5822ff8228aa0bbf1f3794e.jpg', 13, 0, 361, 0, NULL, NULL, 'Active', 'Yes', '2023-05-18 13:08:15', '2023-05-18 21:26:42'),
(160, 'VINAJUL TECH ENTERPRISE', 'Ajulo', '<p>We build and service all kind of fast food equipment and agro machine&nbsp;</p>', 'Lagos', NULL, NULL, '07035941867', 'ajulotechnologycompany@gmail.com', NULL, NULL, '8AM - 6PM', '8AM - 6PM', '8AM - 6PM', '8AM -6PM', '8AM - 6PM', '8AM - 6PM', NULL, 'd42cd8f9b26432329932ad345447bb72.jpg', 44, 0, 362, 0, NULL, NULL, 'Active', 'Yes', '2023-05-18 13:13:40', '2023-05-18 21:26:41'),
(161, 'Queen Esther Fashion world', 'Queen-Esther-fashion-world', '<p>Giving you quality deigns&nbsp;</p>', 'no39 Agunbiade Street, Somolu, Lagos, Nigeria', '3.3710477', '6.533555799999999', '07059403922', 'adisaprecious2001@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '392e46bb956aee2f4dc0780522dc8979.jpg', 14, 0, 367, 0, NULL, NULL, 'Active', 'Yes', '2023-05-18 21:24:31', '2023-05-18 21:26:40'),
(162, 'Prem groceries empire', 'Premempire', 'Android phone, iPhones, goggles phone, laptops, iPad, phone accessories', '2 Walter Carrington Crescent, Lagos, Nigeria', '3.4069013', '6.4410754', '09064916524', 'lucasleonardos224@gmail.com', NULL, NULL, '8am-4pm', '8am-4pm', '8am-4pm', '8am-4pm', '8am-4pm', '8am-4pm', '8am-4pm', '1f70b05722caf6edb6fef3d4692a317c.jpg', 55, 0, 369, 0, NULL, NULL, 'Active', 'Yes', '2023-05-19 16:38:11', '2023-05-20 02:06:30'),
(163, 'Neutine Apparel', 'Neutine-apparel', '<p><br></p><p>*Am into male and female cloth Making (fashion designer)</p>', '8 Coast-U Feli Street, Lagos, Nigeria', '3.3436046', '6.5040542', '09031394566', 'isaacdominic135@gmail.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '79c146ed7d6514579c87cd5056dea740.jpg', 14, 0, 370, 0, NULL, NULL, 'Active', 'Yes', '2023-05-20 11:27:05', '2023-05-20 11:36:41'),
(164, 'Bomnaj Ventures', 'Bomnaj-ventures', '<p>Real Estate ...&nbsp;</p>', 'Okpanam, Delta, Nigeria', '6.6477771', '6.2329186', '08037771718', 'stjudenwabianeze@gmail.com', NULL, NULL, '24/7', '24/7', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', 'c7c0aa2dc71cf578793d9983afc85525.jpg', 6, 0, 371, 0, NULL, NULL, 'Active', 'Yes', '2023-05-20 11:35:27', '2023-05-20 11:36:40'),
(165, 'Timson Graphics and Prints', 'Timson', '<p>We\'re ready to serve you better</p><p>We brand, we print, we Design&nbsp;</p>', 'Adelaja Street, Mokola Hill, Ibadan, Nigeria', '3.891074599999999', '7.4042339', '08144054101', 'timsongraphics403@gmail.com', NULL, NULL, '9am-6pm', '9am-6pm', '9am-6pm', '9am-6pm', '9am-6am', '10am-3pm', NULL, '848e713738fd774ae3f272f5b741e149.jpg', 85, 0, 378, 0, NULL, NULL, 'Active', 'Yes', '2023-05-22 16:30:02', '2023-05-26 11:35:16'),
(166, 'Rommy best laundry and dry cleaning(home service)', 'Romanusdgreat', '<p>We render laundry and dry cleaning services &nbsp;( home service ) precisely.&nbsp;</p><p>If you need our service, we can come to your house and do the washing and ironing the &nbsp;cloths before leaving.</p>', 'Ikeja, Nigeria', '3.3514863', '6.601838', '08051921300', 'romanusbenjamin2023@gmail.com', NULL, NULL, '6AM-8PM', '6AM-8PM', '6AM-8PM', '6AM-8PM', '6AM-8PM', '6AM-PM', '6AM-8PM', '5591037a3fb8a5e4e3e321c880888849.jpg', 30, 0, 387, 0, NULL, NULL, 'Active', 'Yes', '2023-05-23 21:40:05', '2023-05-26 11:35:15'),
(167, 'Brown shopping Mall', 'Brown', '<p>Why you\'re broke</p>', 'Enugu', NULL, NULL, '08063781945', 'denimbrown41@gmail.com', NULL, NULL, '6AM-10PM', '6AM-10PM', '6AM-10PM', '6AM-10PM', '6AM-10PM', '6AM-10PM', '6AM-8PM', 'ebd7e881b57f9cc16a4cc77644b105a6.jpg', 101, 0, 414, 0, NULL, NULL, 'Active', 'Yes', '2023-06-11 04:23:11', '2023-06-13 18:02:11'),
(168, 'Beverages and cereals training', 'Zeeventures', '<p><b>Free Free Free</b></p><p>Here is another opportunity for you to add to your knowledge and even get another source of income.</p><p>It\'s a training where you can produce beverages, cereals, spices and lot more from the comfort of your home</p>', 'Lagos', NULL, NULL, '08164457976', 'ayindeadeola23@gmail.com', NULL, NULL, '8Am-11pm', '8Am-11pm', '8Am-11pm', '8Am-11pm', '8Am-11pm', '8Am-11pm', '2pm-10pm', '70cfb1057630c3a3a1bd86e99b8d1bfe.jpg', 49, 0, 420, 0, NULL, NULL, 'Active', 'Yes', '2023-06-12 03:07:53', '2023-06-13 18:02:10'),
(169, 'Inspire link automobile engineering', 'Inspire-link-automobile-engineering', '<p>Our services&nbsp;</p><p>. Gear services and repair&nbsp;</p><p>. Diagnosis&nbsp;</p><p>. Ac system</p><p>. Electrical repair&nbsp;</p><p>. Programming and Upgrade&nbsp;</p><p>. Brain box&nbsp;</p><p>. Bad Accellerator&nbsp;</p>', 'Idowu Egba Bus Stop, Igando Road, Lagos, Nigeria', '3.254313500000001', '6.572784', '09121011256', 'Akandeadebayomicheal42@gmail.com', NULL, NULL, '6AM TO 8PM', '6AM TO PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '6AM TO 8PM', '346f8cce3a97a3e43e8daa9388b2d9fb.jpg', 21, 0, 421, 0, NULL, NULL, 'Active', 'Yes', '2023-06-12 20:23:29', '2023-06-13 18:01:42'),
(170, 'Fizzy Entertainment', 'fient', '<p><span style=\"color: rgb(53, 66, 84); font-family: Roboto, sans-serif; font-size: 15px;\">Fizzy Entertainment is the all-in-one platform for managing and promoting your artistes, both online and offline. We help you manage your artistes social media, promote their gigs and events, and much more! With Fizzy Entertainment, you\'ll have everything you need to take your act to the next level.&nbsp;</span><span style=\"font-size: 15px; color: rgb(53, 66, 84); font-family: Roboto, sans-serif;\">It provides the tools and resources needed to help artiste grow and succeed. Fizzy Entertainment manages everything from social media presence to concert ticket sales, merchandising, and more.</span></p>', 'Mararaba, New Karu, Nigeria', '7.607355399999999', '9.0266823', '09021464538', 'ochewap@gmail.com', NULL, NULL, '8AM - 5PM', '8AM - 5PM', '8AM - 5PM', '8AM - 5PM', '8AM - 4PM', '9AM - 4PM', '12AM - 4PM', 'f5551ed65937a59f20b92d2cd13f81dc.jpg', 13, 0, 406, 0, 'Fizzy Entertainment', 'Fizzy Entertainment is a social media management and promotion platform for music artistes. Fizzy Entertainment helps manage artiste social media to help promote their music, create engaging content, and grow their fan base.', 'Active', 'Yes', '2023-06-12 21:17:45', '2023-06-13 18:01:40'),
(171, 'CB-TECH', 'CB-TECH', '<p>CCTV INSTALLATION SERVICES</p><p><br></p><p>Protecting your property when you are not there.</p><p><br></p><p>CB technology specializes in designing and installing CCTV surveillance systems to suit our growing client base throughout Nigeria.</p><p><br></p><p>We take care of everything from the initial site survey, design, installation and maintenance of your CCTV system to give you the peace of mind that your property and premises are protected by commercial security cameras when you’re not on site.</p><p><br></p><p>Contact: 08163013675</p><p><br></p><p>Protecting your property when you are not there.</p><p><br></p><p>💁 7 Reasons Why CCTV Security Systems are Vital for Your Business</p><p>1. Reduce Cost and Risk</p><p>2. Prevent and Deter Crime</p><p>3. Fool-Proof Coverage</p><p>4. Keep Your Employees Honest</p><p>5. Encourage Good Behavior</p><p>6. Prevent Safety Incidents</p><p>7 .Assist Law Enforcement.....</p>', 'Ajah, Lagos, Nigeria', '3.5725244', '6.464587400000001', '08163013675', 'cbventures75@gmail.com', NULL, NULL, '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '24hrs', '9343cf2260a6665f58d0b1f7daaec3bd.jpg', 26, 0, 428, 0, NULL, NULL, 'Active', 'Yes', '2023-06-13 13:44:58', '2023-06-13 18:01:30'),
(172, 'Lilly Food Hub', 'Lilly_foidsndrinks', '<p>We sell all indeginious/Local foods such as Egbo,Ewa Aganhin, Amala gbegiri and Ewedu, Tuwo gbegiri and Ewedu, Ofada rice, Ekuru, Ikokore etc.</p><p>We also produce and package Kulikuli Alata, Healthy Tigernut drink and Healthy Sobo drink.</p>', 'Ikorodu, Nigeria', '3.5104537', '6.6194131', '08037262884', 'lillyfoodsnmore@yahoo.com', NULL, NULL, '8am to 10pm', '8am to 10pm', '8am to 10pm', '8am to 10pm', '8am to 10pm', '10am to 8pm', NULL, '22a15668c787b4e1b48b179cc008f131.png', 2, 0, 441, 0, NULL, NULL, 'Active', 'Yes', '2023-06-19 17:19:24', '2023-07-10 14:51:18'),
(173, 'AIDA\'S Luxury Apartments', 'aidas-luxury-apartments', '<p>Luxury Service Apartments. Well Equipped &amp; Furnished Serviced 5 &amp; 3-Bedroom Apartment.</p><p><span style=\"font-size: 1rem;\">Location: Malaysia Quarters off Okwu Uratta road,Imsu Back gate Owerri 📍</span><br></p><p><span style=\"font-size: 1rem;\">Price: N150,000 &amp; N70,000 per night&nbsp;</span><br></p><p><span style=\"font-size: 1rem;\">☎️ : 09022972650</span><br></p><p>✅️24/7hr Electricity&nbsp;</p><p>✅️Fibre Optics Internet&nbsp;</p><p>✅️House keeping</p><p>✅️Full kitchen setup&nbsp;</p><p>✅️Work Station</p><p>✅️DSTV&nbsp;</p><p>✅️ Swimming Pool&nbsp;</p><p>✅️Serene Environment&nbsp;</p><p>✅️Security</p>', 'Malaysia Quarters off Okwu Uratta Imsu Back gate Owerri Imo state', NULL, NULL, '09022972650', 'aidasplace@gmail.com', NULL, NULL, '6am - 11pm', '6AM - 11PM', '6AM - 11PM', '6am - 11pm', '6AM - 11PM', '6am- 11pm', '6am - 11pm', 'add88a05fc57f6c105df549d30872e67.jpg', 1, 0, 444, 0, NULL, NULL, 'Active', 'Yes', '2023-07-07 20:42:38', '2023-07-10 14:51:17'),
(174, 'Trendnotch Media', 'Trendnotch', '<p><a href=\"https://trendnotch.com\" target=\"_blank\">Trendnotch</a>&nbsp;No 1 Platform For All Trending Matters On Latest Music Videos, News, Musics, Learn, Comedy, Live Gist, Gossip &amp; Most Popular Site To Be Educated.</p>', 'Nigeria', '8.675277', '9.081999', '08103660044', 'trendnotchng@gmail.com', 'https://trendnotch.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3ca06a9d94482b4283f714ab4a1447c2.png', 13, 0, 445, 0, 'Trendnotch', 'No 1 Platform For All Trending Matters On Latest Music Videos, News, Musics, Learn, Comedy, Live Gist, Gossip & Most Popular Site To Be Educated.', 'Active', 'Yes', '2023-07-09 23:18:13', '2023-07-10 14:51:22'),
(175, 'Topupdata', 'Endowed', '<p>Dealer in selling data and airtime at affordable prices... Our prices are the cheapest right now... you can. visit our website to check or chat up at 07043097196 on WhatsApp</p>', 'State Hospital, Owode, Oyo, Oyo-Ogbomosho Road, Oyo, Nigeria', '3.928765000000001', '7.8317652', '09032615444', 'oladepouthman3@gmail.com', 'https://sabuss.com/topupdata2', NULL, '6am-10pm', '6am-10pm', '6am-10pm', '6am-10pm', '6am-10pm', '6am-10pm', '6am-8pm', '3aee225cf68883d299a6cd50faa100ed.jpg', 101, 0, 446, 0, 'Entrepreneur', 'Dealer in Telecommunications services', 'Active', 'Yes', '2023-07-10 19:20:18', '2023-07-11 21:43:06'),
(176, 'KESH ROYAL EVENT', 'CHEF-KESH', '<p><b>WE PROVIDE QUALITY SERVICE IN&nbsp;</b></p><p><b>COOKING:LOCAL,INTERCONTINENTAL,ORIENTAL</b></p><p><b>GRILLING</b></p><p><b>BARTENDING:COCTAILS,MOCKTAILS,SMOOTHIES,PARFAIT</b></p><p><b>BAKING OF ALL CAKES</b></p><p><b>USHERING JOBS</b></p><p><b>WAITERS AND WAITRESSES</b></p><p><b>WE ALSO RENT OUT CATERING UTENSILS&nbsp;</b></p>', 'University of Ibadan First Gate, Ibadan, Nigeria', '3.906650299999999', '7.4410015', '09023988858', 'Keshroyalecuisine@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '273cc0701ee7467b906bf9d7a31f8b9c.jpg', 57, 0, 447, 0, NULL, NULL, 'Active', 'Yes', '2023-07-11 11:59:37', '2023-07-11 21:42:57'),
(177, 'NCTest', 'Test', '<p>This is a test.</p>', 'New york', NULL, NULL, '7856314987', 'nccsteam@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4cb177355f51daf90f94ec935e15ec42.jpg', 1, 0, 453, 0, NULL, NULL, 'Pending', 'Yes', '2023-07-11 15:39:56', '2023-07-11 21:44:21'),
(178, 'IBKOLUWA', 'Ibukunoluwa', '<p><font color=\"#000000\"><span style=\"background-color: rgb(255, 255, 0);\">IBKOLUWA&nbsp;</span></font></p>', 'Shittu Street okeoniti osogbo', NULL, NULL, '07048130975', 'samuelfaseyi0@gmail.com', 'TikTok @samuelfaseyi232', NULL, '6am-8pm', NULL, NULL, NULL, NULL, NULL, NULL, 'f8de3de8e99d96568fe511156e1936eb.jpg', 44, 0, 469, 0, NULL, NULL, 'Active', 'Yes', '2023-07-12 02:10:02', '2023-07-13 19:10:54'),
(179, 'Fairyfingers massage services', 'fairyfingersmasseuse', '<p>A mobile masseuse based in Abuja, I offer home service to clients for Swedish, Deep tissue, Hot stone and reflexology massage at an affordable rate.</p>', 'Abuja, Nigeria', '7.398574', '9.0764785', '09077548889', 'jasminegabriel54@gmail.com', NULL, NULL, '5PM-7PM', '5PM-7PM', '5PM-7PM', '5PM-7PM', '5PM-7PM', '8AM-6PM', '10AM-5PM', '7052514dffe30f382945912603192261.jpg', 3, 0, 472, 0, NULL, NULL, 'Active', 'Yes', '2023-07-12 17:47:14', '2023-07-13 19:10:50'),
(180, 'GRACYLN LUXY', 'GRACYLN-LUXY', '<p>I sell good quality and affordable WRISTWATCHES/ jewelry<br></p>', 'Lakowe Beach, Lekki, Lagos, Nigeria', '3.738636300000001', '6.430985999999999', '08137236038', 'Graceclement619@gmail.com', NULL, NULL, '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '24/7', '9b4c3b89356392d9488cc52c8827415a.jpg', 89, 0, 471, 0, NULL, NULL, 'Active', 'Yes', '2023-07-12 22:00:46', '2023-07-13 19:10:49'),
(181, 'Gboyega Akomolafe. & Co', 'Gboyega', '<p>Business name, Company and Church registration with CAC</p><p>Tax and Annual filling&nbsp;</p><p>Estate Agency</p>', 'Lagos State University, Lasu Main Road, Lagos, Nigeria', '3.2008727', '6.4696511', '07060530012', 'gboyegacompany@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'b6d8d74d1910ce7aba7900f9808e088b.jpg', 1, 0, 481, 0, NULL, NULL, 'Active', 'Yes', '2023-07-13 13:49:56', '2023-07-13 19:10:47'),
(182, 'Yusrah Online Qur\'an Institutes', 'Jlateef', '<p><b><br></b></p><p><b>For your Learning and Teaching of the Holy Qur\'an Recitation and Memorization with Tajweed within 6 (six) months</b></p><p><b>&nbsp;Physical Class, and Online Service and Home Service&nbsp;</b></p><p><b>Training via WhatsApp, Google meet, Zoom etc</b></p>', 'Shasha/Akowonjo, Nigeria', '3.3036439', '6.5834937', '+2349135470902', 'jlateef2017@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8bb47e3a7027f1b69cbd0508f3c4a393.jpg', 49, 0, 483, 0, NULL, NULL, 'Active', 'Yes', '2023-07-13 15:35:20', '2023-07-13 19:10:46'),
(183, 'LULU SCENTS', 'Luluscents', '<p>We sell designer, Arabian and diluted/undiluted oil perfumes. We also deal on body spray, diffusers, scented candles, home fragrances, body mist, children perfume, deodorants and roll on.<br></p>', 'Port harcourt, rivers state', NULL, NULL, '08091407715', 'Odoemelamc8@gmail.com', NULL, NULL, '9AM - 7PM', '9AM - 7PM', '9AM - 7PM', '9AM - 7PM', '9AM - 7PM', '9AM - 7PM', '11AM - 8PM', '188a37aa592e0003c0635469de07c3a7.jpg', 67, 0, 489, 0, NULL, NULL, 'Active', 'Yes', '2023-07-14 01:50:23', '2023-07-17 00:51:09'),
(184, 'Jay\'s investment global limited', 'Jay\'s', '<p><span style=\"font-size: 1rem;\">We are into Real Estate and Property investment</span></p><p><span style=\"font-size: 1rem;\"><br></span><span style=\"font-size: 1rem;\">W</span><span style=\"font-size: 1rem;\">e have landed properties in Lagos, Abuja, Port Harcourt and Owerri</span></p>', 'Lagos, Nigeria', '3.3792057', '6.5243793', '09065521202', 'udofiajoshua76@gmail.com', NULL, NULL, '6AM - 8PM', '6AM - 8PM', '6AM - 8PM', '6AM - 8PM', '6AM - 8PM', '6AM - 8PM', '6AM - 8PM', 'd1d046037565cc2f0fb48d50086bfde2.jpg', 6, 0, 482, 0, 'Sale consultant', NULL, 'Active', 'Yes', '2023-07-14 02:25:34', '2023-07-17 00:51:11'),
(185, 'Healing Soul Furnitures', 'Healing-Soul', '<p>Welcome to Healing Soul Furniture We are a company located in Lagos Nigeria providing One-stop solution for Home Decor. Our main products: Sofa, Tv shelves, Wooden doors, Kitchen cabinets, and all kind of Home furnitures/ Interior Decor. All of these can be customized according to your choice.<br></p>', 'Lagos, Nigeria', '3.3792057', '6.5243793', '08164643438', 'healingsoulfurniture@gmail.com', NULL, NULL, '7AM - 7PM', '7AM - 7PM', '7AM - 7PM', '7AM - 7PM', '7AM - 7PM', '7AM - 7PM', NULL, '5d07fd71dd05294b6e7580df1e5094bd.jpg', 56, 0, 490, 0, NULL, NULL, 'Active', 'Yes', '2023-07-14 02:40:15', '2023-07-18 23:02:32'),
(186, 'Zeezix Solar Consult', 'Zeezix', '<p>Renewable energy provider,</p><p>Solar solutions sales, installation and maintenance&nbsp;</p>', 'Ipaja, Lagos, Nigeria', '3.2659066', '6.613069899999999', '07064692237', 'zeezixconsult@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '874c0a26b14be50e744b7a8c7406a20f.jpg', 26, 0, 498, 0, NULL, NULL, 'Active', 'Yes', '2023-07-17 09:10:37', '2023-07-17 12:53:38'),
(187, 'Completesub.com.ng', 'Completesub', '<p>Sale data bundle recharge card&nbsp;</p>', 'Osun, Nigeria', '4.5199593', '7.562896399999999', '07030801667', 'Peteresan2012@gmail.com', 'Completesub.com.ng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16c22642b89b7ce99250c3b57eb35568.jpg', 101, 0, 503, 0, NULL, NULL, 'Active', 'Yes', '2023-07-25 00:57:28', '2023-08-08 23:29:53'),
(188, 'Flexuniqueevent', 'Benard', '<p><b>I\'m a event stylist, planning all kinds of occasion. With a professional hands to deliver your occasion&nbsp;</b></p>', 'Benin City, Nigeria', '5.6037465', '6.334986', '07012297102', 'decoflex21@gmail.com', NULL, NULL, '8am', NULL, NULL, NULL, NULL, NULL, NULL, 'd3027df7377ad0f9e081510dabf569c5.png', 54, 0, 505, 0, NULL, NULL, 'Active', 'Yes', '2023-07-25 20:33:42', '2023-08-08 23:29:48'),
(189, 'Mayriney\'s Resin accessories', 'Mayriney', 'We make Resin accessories like rings, earrings, bangles, pendants, keychains, book covers, pens, crushers, hairpins, combs, phone pouch design... Hand made with love.we deliver the best.', 'Umuahia, Nigeria', '7.4922407', '5.5249526', '08162643138', 'mattywinky11@gmail.com', NULL, NULL, NULL, '6AM - 9PM', '6AM - 9PM', '6AM - 9PM', '6AM - 9PM', '6AM - 9PM', '6AM - 9PM', '68b0d63260bf5e37667609e5e301aa95.png', 14, 0, 518, 0, NULL, NULL, 'Active', 'Yes', '2023-11-19 14:54:59', '2023-11-20 23:31:23'),
(190, 'Chidanipay Technologies LTD', 'Chidanipay', '<p>Chidanipay Technologies is a value added organization (VAT) that sales data bundles subscriptions of all network at affordable rate, as low as #226 but base on the market prices, Airtime with discount, Cable TV subscriptions, Electricity bill payment, Airtime to cash, recharge and data card printing and so much more to our customers.</p><p>Chidanipay Technologies gives referral bonuses of #500 whenever any of your downliners upgraded to RESELLER package and you also earn direct and indirect commissions from your 1st, 2nd and 3rd generation referrals.</p><p>Chidanipay Technologies offers 24/7 customer support Service. And manual wallet funding is free. All you need is to sign up.</p><p><br></p><p><br></p><p><br></p><p><br></p>', 'Enugu State, Nigeria', '7.435619399999999', '6.536353', '08131312943', 'admin@chidanipay.com.ng', 'https://chidanipay.com.ng', NULL, '6am-11pm', '6am-11pm', '6am-11pm', '6am-11pm', '6am-11pm', '6am-11pm', '8am-11pm', 'f04b6331321975bd84cb2f3eba6f4eb5.jpg', 101, 0, 517, 0, NULL, NULL, 'Active', 'Yes', '2023-11-19 15:44:09', '2023-11-20 23:31:22');

-- --------------------------------------------------------

--
-- Table structure for table `listing_additional_features`
--

CREATE TABLE `listing_additional_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `additional_feature_name` text NOT NULL,
  `additional_feature_value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_additional_features`
--

INSERT INTO `listing_additional_features` (`id`, `listing_id`, `additional_feature_name`, `additional_feature_value`, `created_at`, `updated_at`) VALUES
(7, 3, 'Pet Keeping', 'Allowed', NULL, NULL),
(8, 3, 'Smoking', 'Not Allowed', NULL, NULL),
(11, 5, 'Masks required', 'Yes', NULL, NULL),
(12, 5, 'Payment Methods', 'All major payment method are allowed', NULL, NULL),
(13, 6, 'Credit Card', 'Does not accept', NULL, NULL),
(16, 7, 'Trainer Facility', 'Yes', '2021-07-24 10:00:13', '2021-07-24 10:00:13'),
(17, 7, 'Number of persons in a class', '10', '2021-07-24 10:00:13', '2021-07-24 10:00:13'),
(18, 8, 'Guard Facility', 'Yes', '2021-07-24 10:10:34', '2021-07-24 10:10:34'),
(19, 8, 'Internet Connection', 'Yes', '2021-07-24 10:10:35', '2021-07-24 10:10:35'),
(20, 10, 'Patient Outdoor', 'Yes', '2021-07-24 10:20:24', '2021-07-24 10:20:24'),
(21, 10, 'Emergency Exit', 'Yes', '2021-07-24 10:20:24', '2021-07-24 10:20:24'),
(22, 10, 'Cafe Facility', 'No', '2021-07-24 10:20:24', '2021-07-24 10:20:24'),
(23, 12, 'Samuel Ogechukwu', 'Car park', '2022-11-16 03:52:45', '2022-11-16 03:52:45'),
(25, 53, 'Digital Skills Academy Registration', '#2,500 NGN / $5 UDS', '2023-03-22 15:42:39', '2023-03-22 15:42:39'),
(26, 134, 'Dr Sunday Oguche', 'CEO & MD', '2023-05-05 15:03:15', '2023-05-05 15:03:15'),
(27, 175, 'Tush Thrift', 'render your savings diligently', '2023-07-10 19:20:18', '2023-07-10 19:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `listing_amenities`
--

CREATE TABLE `listing_amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `amenity_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_amenities`
--

INSERT INTO `listing_amenities` (`id`, `listing_id`, `amenity_id`, `created_at`, `updated_at`) VALUES
(13, 3, 1, NULL, NULL),
(14, 3, 2, NULL, NULL),
(15, 3, 7, NULL, NULL),
(19, 5, 1, NULL, NULL),
(20, 5, 2, NULL, NULL),
(21, 6, 3, NULL, NULL),
(22, 6, 5, NULL, NULL),
(23, 6, 7, NULL, NULL),
(27, 7, 1, '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(28, 7, 2, '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(29, 7, 3, '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(30, 7, 6, '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(31, 7, 7, '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(32, 7, 8, '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(33, 8, 1, '2021-07-24 10:09:58', '2021-07-24 10:09:58'),
(34, 8, 2, '2021-07-24 10:09:58', '2021-07-24 10:09:58'),
(35, 8, 3, '2021-07-24 10:09:58', '2021-07-24 10:09:58'),
(36, 8, 7, '2021-07-24 10:09:58', '2021-07-24 10:09:58'),
(37, 8, 8, '2021-07-24 10:09:58', '2021-07-24 10:09:58'),
(38, 10, 1, '2021-07-24 10:20:22', '2021-07-24 10:20:22'),
(39, 10, 5, '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(40, 10, 6, '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(41, 10, 7, '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(42, 12, 6, '2022-11-16 03:52:45', '2022-11-16 03:52:45'),
(43, 15, 9, '2023-01-09 13:30:11', '2023-01-09 13:30:11'),
(44, 15, 10, '2023-01-09 13:30:11', '2023-01-09 13:30:11'),
(45, 16, 1, '2023-01-13 18:02:46', '2023-01-13 18:02:46'),
(46, 16, 2, '2023-01-13 18:02:46', '2023-01-13 18:02:46'),
(49, 18, 6, '2023-02-05 19:21:32', '2023-02-05 19:21:32'),
(50, 18, 9, '2023-02-05 19:21:32', '2023-02-05 19:21:32'),
(51, 18, 11, '2023-02-05 19:21:32', '2023-02-05 19:21:32'),
(53, 20, 5, '2023-02-07 02:35:53', '2023-02-07 02:35:53'),
(54, 20, 6, '2023-02-07 02:35:53', '2023-02-07 02:35:53'),
(55, 20, 9, '2023-02-07 02:35:53', '2023-02-07 02:35:53'),
(56, 20, 10, '2023-02-07 02:35:53', '2023-02-07 02:35:53'),
(57, 20, 11, '2023-02-07 02:35:53', '2023-02-07 02:35:53'),
(58, 21, 9, '2023-02-07 10:14:00', '2023-02-07 10:14:00'),
(59, 21, 10, '2023-02-07 10:14:00', '2023-02-07 10:14:00'),
(60, 21, 11, '2023-02-07 10:14:00', '2023-02-07 10:14:00'),
(63, 23, 3, '2023-02-08 16:24:20', '2023-02-08 16:24:20'),
(64, 23, 10, '2023-02-08 16:24:20', '2023-02-08 16:24:20'),
(65, 23, 11, '2023-02-08 16:24:20', '2023-02-08 16:24:20'),
(66, 24, 10, '2023-02-11 15:13:16', '2023-02-11 15:13:16'),
(67, 24, 11, '2023-02-11 15:13:16', '2023-02-11 15:13:16'),
(68, 25, 11, '2023-02-11 15:27:39', '2023-02-11 15:27:39'),
(69, 26, 9, '2023-02-12 00:52:44', '2023-02-12 00:52:44'),
(70, 26, 10, '2023-02-12 00:52:44', '2023-02-12 00:52:44'),
(71, 26, 11, '2023-02-12 00:52:44', '2023-02-12 00:52:44'),
(72, 27, 10, '2023-02-13 19:32:05', '2023-02-13 19:32:05'),
(73, 27, 11, '2023-02-13 19:32:05', '2023-02-13 19:32:05'),
(74, 28, 10, '2023-02-14 02:53:12', '2023-02-14 02:53:12'),
(75, 28, 11, '2023-02-14 02:53:12', '2023-02-14 02:53:12'),
(76, 29, 11, '2023-02-14 23:36:21', '2023-02-14 23:36:21'),
(77, 31, 9, '2023-02-23 21:39:03', '2023-02-23 21:39:03'),
(78, 31, 10, '2023-02-23 21:39:03', '2023-02-23 21:39:03'),
(79, 31, 11, '2023-02-23 21:39:03', '2023-02-23 21:39:03'),
(80, 32, 10, '2023-03-03 11:01:54', '2023-03-03 11:01:54'),
(81, 32, 11, '2023-03-03 11:01:54', '2023-03-03 11:01:54'),
(82, 33, 9, '2023-03-04 11:55:07', '2023-03-04 11:55:07'),
(83, 33, 10, '2023-03-04 11:55:07', '2023-03-04 11:55:07'),
(84, 33, 11, '2023-03-04 11:55:07', '2023-03-04 11:55:07'),
(85, 34, 10, '2023-03-05 12:51:41', '2023-03-05 12:51:41'),
(86, 34, 11, '2023-03-05 12:51:41', '2023-03-05 12:51:41'),
(87, 35, 9, '2023-03-05 13:15:20', '2023-03-05 13:15:20'),
(88, 35, 10, '2023-03-05 13:15:20', '2023-03-05 13:15:20'),
(89, 35, 11, '2023-03-05 13:15:20', '2023-03-05 13:15:20'),
(90, 36, 9, '2023-03-05 14:09:43', '2023-03-05 14:09:43'),
(91, 36, 10, '2023-03-05 14:09:43', '2023-03-05 14:09:43'),
(92, 36, 11, '2023-03-05 14:09:43', '2023-03-05 14:09:43'),
(93, 37, 9, '2023-03-05 16:11:36', '2023-03-05 16:11:36'),
(94, 37, 10, '2023-03-05 16:11:36', '2023-03-05 16:11:36'),
(95, 37, 11, '2023-03-05 16:11:36', '2023-03-05 16:11:36'),
(96, 38, 11, '2023-03-05 18:10:52', '2023-03-05 18:10:52'),
(97, 39, 10, '2023-03-06 15:23:11', '2023-03-06 15:23:11'),
(98, 39, 11, '2023-03-06 15:23:11', '2023-03-06 15:23:11'),
(99, 40, 3, '2023-03-06 15:58:53', '2023-03-06 15:58:53'),
(100, 40, 10, '2023-03-06 15:58:53', '2023-03-06 15:58:53'),
(101, 40, 11, '2023-03-06 15:58:53', '2023-03-06 15:58:53'),
(102, 41, 9, '2023-03-06 16:35:38', '2023-03-06 16:35:38'),
(103, 41, 10, '2023-03-06 16:35:38', '2023-03-06 16:35:38'),
(104, 41, 11, '2023-03-06 16:35:38', '2023-03-06 16:35:38'),
(105, 42, 9, '2023-03-06 16:55:34', '2023-03-06 16:55:34'),
(106, 42, 10, '2023-03-06 16:55:34', '2023-03-06 16:55:34'),
(107, 42, 11, '2023-03-06 16:55:34', '2023-03-06 16:55:34'),
(108, 43, 9, '2023-03-06 17:06:10', '2023-03-06 17:06:10'),
(109, 43, 10, '2023-03-06 17:06:10', '2023-03-06 17:06:10'),
(110, 43, 11, '2023-03-06 17:06:10', '2023-03-06 17:06:10'),
(111, 44, 9, '2023-03-06 17:22:42', '2023-03-06 17:22:42'),
(112, 44, 10, '2023-03-06 17:22:42', '2023-03-06 17:22:42'),
(113, 44, 11, '2023-03-06 17:22:42', '2023-03-06 17:22:42'),
(114, 45, 11, '2023-03-07 01:24:11', '2023-03-07 01:24:11'),
(115, 46, 9, '2023-03-07 04:06:13', '2023-03-07 04:06:13'),
(116, 46, 10, '2023-03-07 04:06:13', '2023-03-07 04:06:13'),
(117, 46, 11, '2023-03-07 04:06:13', '2023-03-07 04:06:13'),
(118, 47, 10, '2023-03-07 16:22:05', '2023-03-07 16:22:05'),
(119, 47, 11, '2023-03-07 16:22:05', '2023-03-07 16:22:05'),
(120, 48, 10, '2023-03-10 19:10:27', '2023-03-10 19:10:27'),
(121, 48, 11, '2023-03-10 19:10:27', '2023-03-10 19:10:27'),
(122, 49, 10, '2023-03-11 01:52:57', '2023-03-11 01:52:57'),
(123, 50, 3, '2023-03-21 01:14:36', '2023-03-21 01:14:36'),
(124, 50, 11, '2023-03-21 01:14:36', '2023-03-21 01:14:36'),
(125, 51, 9, '2023-03-21 12:06:13', '2023-03-21 12:06:13'),
(126, 51, 10, '2023-03-21 12:06:13', '2023-03-21 12:06:13'),
(127, 51, 11, '2023-03-21 12:06:13', '2023-03-21 12:06:13'),
(128, 52, 10, '2023-03-22 02:51:59', '2023-03-22 02:51:59'),
(129, 52, 11, '2023-03-22 02:51:59', '2023-03-22 02:51:59'),
(130, 54, 9, '2023-03-22 23:31:29', '2023-03-22 23:31:29'),
(131, 54, 10, '2023-03-22 23:31:29', '2023-03-22 23:31:29'),
(132, 54, 11, '2023-03-22 23:31:29', '2023-03-22 23:31:29'),
(133, 55, 3, '2023-03-22 23:55:11', '2023-03-22 23:55:11'),
(134, 55, 5, '2023-03-22 23:55:11', '2023-03-22 23:55:11'),
(135, 56, 3, '2023-03-23 00:30:18', '2023-03-23 00:30:18'),
(136, 56, 10, '2023-03-23 00:30:18', '2023-03-23 00:30:18'),
(137, 56, 11, '2023-03-23 00:30:18', '2023-03-23 00:30:18'),
(138, 57, 3, '2023-03-23 13:48:48', '2023-03-23 13:48:48'),
(139, 57, 6, '2023-03-23 13:48:48', '2023-03-23 13:48:48'),
(140, 57, 10, '2023-03-23 13:48:48', '2023-03-23 13:48:48'),
(141, 57, 11, '2023-03-23 13:48:48', '2023-03-23 13:48:48'),
(142, 58, 11, '2023-03-24 12:57:09', '2023-03-24 12:57:09'),
(143, 59, 10, '2023-03-24 15:38:09', '2023-03-24 15:38:09'),
(144, 59, 11, '2023-03-24 15:38:09', '2023-03-24 15:38:09'),
(145, 61, 3, '2023-03-24 17:26:53', '2023-03-24 17:26:53'),
(146, 61, 6, '2023-03-24 17:26:53', '2023-03-24 17:26:53'),
(147, 61, 9, '2023-03-24 17:26:53', '2023-03-24 17:26:53'),
(148, 61, 10, '2023-03-24 17:26:53', '2023-03-24 17:26:53'),
(149, 62, 9, '2023-03-24 23:39:48', '2023-03-24 23:39:48'),
(150, 62, 10, '2023-03-24 23:39:48', '2023-03-24 23:39:48'),
(151, 62, 11, '2023-03-24 23:39:48', '2023-03-24 23:39:48'),
(152, 63, 10, '2023-03-25 00:04:57', '2023-03-25 00:04:57'),
(153, 63, 11, '2023-03-25 00:04:57', '2023-03-25 00:04:57'),
(154, 64, 11, '2023-03-25 00:18:58', '2023-03-25 00:18:58'),
(155, 65, 11, '2023-03-25 20:02:14', '2023-03-25 20:02:14'),
(156, 66, 11, '2023-03-26 03:19:18', '2023-03-26 03:19:18'),
(157, 67, 3, '2023-03-26 15:17:18', '2023-03-26 15:17:18'),
(158, 67, 6, '2023-03-26 15:17:18', '2023-03-26 15:17:18'),
(159, 67, 7, '2023-03-26 15:17:18', '2023-03-26 15:17:18'),
(160, 68, 11, '2023-03-27 16:42:42', '2023-03-27 16:42:42'),
(161, 69, 3, '2023-03-29 13:06:51', '2023-03-29 13:06:51'),
(162, 69, 6, '2023-03-29 13:06:51', '2023-03-29 13:06:51'),
(163, 71, 11, '2023-03-29 18:08:42', '2023-03-29 18:08:42'),
(164, 72, 11, '2023-03-29 19:15:52', '2023-03-29 19:15:52'),
(165, 73, 3, '2023-03-30 03:33:08', '2023-03-30 03:33:08'),
(166, 74, 3, '2023-03-30 16:48:34', '2023-03-30 16:48:34'),
(167, 74, 11, '2023-03-30 16:48:34', '2023-03-30 16:48:34'),
(168, 75, 11, '2023-03-31 12:42:56', '2023-03-31 12:42:56'),
(169, 76, 9, '2023-04-05 19:34:58', '2023-04-05 19:34:58'),
(170, 76, 10, '2023-04-05 19:34:58', '2023-04-05 19:34:58'),
(171, 76, 11, '2023-04-05 19:34:58', '2023-04-05 19:34:58'),
(172, 77, 11, '2023-04-06 16:17:37', '2023-04-06 16:17:37'),
(173, 78, 6, '2023-04-06 16:26:27', '2023-04-06 16:26:27'),
(174, 78, 10, '2023-04-06 16:26:27', '2023-04-06 16:26:27'),
(175, 78, 11, '2023-04-06 16:26:27', '2023-04-06 16:26:27'),
(176, 79, 3, '2023-04-07 19:09:17', '2023-04-07 19:09:17'),
(177, 79, 6, '2023-04-07 19:09:17', '2023-04-07 19:09:17'),
(178, 79, 11, '2023-04-07 19:09:17', '2023-04-07 19:09:17'),
(179, 80, 9, '2023-04-10 14:29:57', '2023-04-10 14:29:57'),
(180, 80, 10, '2023-04-10 14:29:57', '2023-04-10 14:29:57'),
(181, 80, 11, '2023-04-10 14:29:57', '2023-04-10 14:29:57'),
(182, 81, 5, '2023-04-11 14:56:18', '2023-04-11 14:56:18'),
(183, 81, 9, '2023-04-11 14:56:18', '2023-04-11 14:56:18'),
(184, 81, 10, '2023-04-11 14:56:18', '2023-04-11 14:56:18'),
(185, 81, 11, '2023-04-11 14:56:18', '2023-04-11 14:56:18'),
(186, 82, 11, '2023-04-12 11:29:51', '2023-04-12 11:29:51'),
(187, 82, 12, '2023-04-12 11:29:51', '2023-04-12 11:29:51'),
(188, 82, 13, '2023-04-12 11:29:51', '2023-04-12 11:29:51'),
(189, 83, 9, '2023-04-12 16:26:02', '2023-04-12 16:26:02'),
(190, 83, 10, '2023-04-12 16:26:02', '2023-04-12 16:26:02'),
(191, 83, 12, '2023-04-12 16:26:02', '2023-04-12 16:26:02'),
(192, 83, 13, '2023-04-12 16:26:02', '2023-04-12 16:26:02'),
(193, 83, 14, '2023-04-12 16:26:02', '2023-04-12 16:26:02'),
(194, 84, 12, '2023-04-12 16:26:18', '2023-04-12 16:26:18'),
(195, 85, 11, '2023-04-12 20:09:25', '2023-04-12 20:09:25'),
(196, 85, 12, '2023-04-12 20:09:25', '2023-04-12 20:09:25'),
(197, 85, 13, '2023-04-12 20:09:25', '2023-04-12 20:09:25'),
(198, 85, 14, '2023-04-12 20:09:25', '2023-04-12 20:09:25'),
(199, 86, 11, '2023-04-12 20:25:56', '2023-04-12 20:25:56'),
(200, 86, 14, '2023-04-12 20:25:56', '2023-04-12 20:25:56'),
(201, 87, 11, '2023-04-12 22:27:20', '2023-04-12 22:27:20'),
(202, 87, 14, '2023-04-12 22:27:20', '2023-04-12 22:27:20'),
(203, 87, 16, '2023-04-12 22:27:20', '2023-04-12 22:27:20'),
(204, 88, 11, '2023-04-13 14:13:28', '2023-04-13 14:13:28'),
(205, 88, 12, '2023-04-13 14:13:28', '2023-04-13 14:13:28'),
(206, 88, 13, '2023-04-13 14:13:28', '2023-04-13 14:13:28'),
(207, 88, 14, '2023-04-13 14:13:28', '2023-04-13 14:13:28'),
(208, 88, 16, '2023-04-13 14:13:28', '2023-04-13 14:13:28'),
(209, 89, 15, '2023-04-13 14:13:29', '2023-04-13 14:13:29'),
(210, 90, 3, '2023-04-14 13:30:11', '2023-04-14 13:30:11'),
(211, 90, 9, '2023-04-14 13:30:11', '2023-04-14 13:30:11'),
(212, 90, 11, '2023-04-14 13:30:11', '2023-04-14 13:30:11'),
(213, 90, 14, '2023-04-14 13:30:11', '2023-04-14 13:30:11'),
(214, 90, 16, '2023-04-14 13:30:11', '2023-04-14 13:30:11'),
(215, 91, 9, '2023-04-14 14:00:40', '2023-04-14 14:00:40'),
(216, 91, 11, '2023-04-14 14:00:40', '2023-04-14 14:00:40'),
(217, 91, 14, '2023-04-14 14:00:40', '2023-04-14 14:00:40'),
(218, 92, 15, '2023-04-14 15:20:33', '2023-04-14 15:20:33'),
(219, 92, 16, '2023-04-14 15:20:33', '2023-04-14 15:20:33'),
(220, 93, 9, '2023-04-14 16:26:35', '2023-04-14 16:26:35'),
(221, 93, 10, '2023-04-14 16:26:35', '2023-04-14 16:26:35'),
(222, 93, 11, '2023-04-14 16:26:35', '2023-04-14 16:26:35'),
(223, 93, 14, '2023-04-14 16:26:35', '2023-04-14 16:26:35'),
(224, 94, 9, '2023-04-14 16:41:47', '2023-04-14 16:41:47'),
(225, 95, 9, '2023-04-14 16:49:59', '2023-04-14 16:49:59'),
(226, 96, 7, '2023-04-14 18:49:16', '2023-04-14 18:49:16'),
(227, 96, 9, '2023-04-14 18:49:16', '2023-04-14 18:49:16'),
(228, 96, 10, '2023-04-14 18:49:16', '2023-04-14 18:49:16'),
(229, 96, 11, '2023-04-14 18:49:16', '2023-04-14 18:49:16'),
(230, 96, 14, '2023-04-14 18:49:16', '2023-04-14 18:49:16'),
(231, 98, 4, '2023-04-15 12:12:47', '2023-04-15 12:12:47'),
(232, 98, 11, '2023-04-15 12:12:47', '2023-04-15 12:12:47'),
(233, 98, 12, '2023-04-15 12:12:47', '2023-04-15 12:12:47'),
(234, 98, 14, '2023-04-15 12:12:47', '2023-04-15 12:12:47'),
(235, 98, 16, '2023-04-15 12:12:47', '2023-04-15 12:12:47'),
(236, 100, 9, '2023-04-16 02:37:49', '2023-04-16 02:37:49'),
(237, 100, 14, '2023-04-16 02:37:49', '2023-04-16 02:37:49'),
(238, 100, 15, '2023-04-16 02:37:49', '2023-04-16 02:37:49'),
(239, 100, 16, '2023-04-16 02:37:49', '2023-04-16 02:37:49'),
(240, 101, 11, '2023-04-17 12:09:58', '2023-04-17 12:09:58'),
(241, 101, 12, '2023-04-17 12:09:58', '2023-04-17 12:09:58'),
(242, 102, 11, '2023-04-17 13:38:32', '2023-04-17 13:38:32'),
(243, 102, 12, '2023-04-17 13:38:32', '2023-04-17 13:38:32'),
(244, 102, 14, '2023-04-17 13:38:32', '2023-04-17 13:38:32'),
(245, 103, 9, '2023-04-17 16:01:12', '2023-04-17 16:01:12'),
(246, 104, 11, '2023-04-18 12:39:41', '2023-04-18 12:39:41'),
(247, 104, 14, '2023-04-18 12:39:41', '2023-04-18 12:39:41'),
(248, 104, 16, '2023-04-18 12:39:41', '2023-04-18 12:39:41'),
(249, 105, 10, '2023-04-18 20:00:37', '2023-04-18 20:00:37'),
(250, 105, 11, '2023-04-18 20:00:37', '2023-04-18 20:00:37'),
(251, 105, 13, '2023-04-18 20:00:37', '2023-04-18 20:00:37'),
(252, 105, 14, '2023-04-18 20:00:37', '2023-04-18 20:00:37'),
(253, 105, 16, '2023-04-18 20:00:37', '2023-04-18 20:00:37'),
(254, 106, 9, '2023-04-18 21:40:40', '2023-04-18 21:40:40'),
(255, 106, 11, '2023-04-18 21:40:40', '2023-04-18 21:40:40'),
(256, 106, 14, '2023-04-18 21:40:40', '2023-04-18 21:40:40'),
(257, 107, 10, '2023-04-18 21:49:25', '2023-04-18 21:49:25'),
(258, 107, 11, '2023-04-18 21:49:25', '2023-04-18 21:49:25'),
(259, 107, 14, '2023-04-18 21:49:25', '2023-04-18 21:49:25'),
(260, 107, 16, '2023-04-18 21:49:25', '2023-04-18 21:49:25'),
(261, 108, 10, '2023-04-19 18:08:24', '2023-04-19 18:08:24'),
(262, 108, 11, '2023-04-19 18:08:24', '2023-04-19 18:08:24'),
(263, 108, 14, '2023-04-19 18:08:24', '2023-04-19 18:08:24'),
(264, 109, 1, '2023-04-19 21:15:36', '2023-04-19 21:15:36'),
(265, 109, 6, '2023-04-19 21:15:36', '2023-04-19 21:15:36'),
(266, 109, 7, '2023-04-19 21:15:36', '2023-04-19 21:15:36'),
(267, 109, 8, '2023-04-19 21:15:36', '2023-04-19 21:15:36'),
(268, 109, 9, '2023-04-19 21:15:36', '2023-04-19 21:15:36'),
(269, 109, 14, '2023-04-19 21:15:36', '2023-04-19 21:15:36'),
(270, 109, 15, '2023-04-19 21:15:36', '2023-04-19 21:15:36'),
(271, 110, 9, '2023-04-20 10:10:56', '2023-04-20 10:10:56'),
(272, 110, 10, '2023-04-20 10:10:56', '2023-04-20 10:10:56'),
(273, 110, 11, '2023-04-20 10:10:56', '2023-04-20 10:10:56'),
(274, 110, 16, '2023-04-20 10:10:56', '2023-04-20 10:10:56'),
(275, 111, 1, '2023-04-20 10:26:37', '2023-04-20 10:26:37'),
(276, 111, 3, '2023-04-20 10:26:37', '2023-04-20 10:26:37'),
(277, 111, 6, '2023-04-20 10:26:37', '2023-04-20 10:26:37'),
(278, 111, 10, '2023-04-20 10:26:37', '2023-04-20 10:26:37'),
(279, 111, 11, '2023-04-20 10:26:37', '2023-04-20 10:26:37'),
(280, 111, 14, '2023-04-20 10:26:37', '2023-04-20 10:26:37'),
(281, 111, 16, '2023-04-20 10:26:37', '2023-04-20 10:26:37'),
(282, 112, 11, '2023-04-20 17:23:09', '2023-04-20 17:23:09'),
(283, 112, 12, '2023-04-20 17:23:09', '2023-04-20 17:23:09'),
(284, 113, 3, '2023-04-21 05:44:11', '2023-04-21 05:44:11'),
(285, 113, 14, '2023-04-21 05:44:11', '2023-04-21 05:44:11'),
(286, 113, 16, '2023-04-21 05:44:11', '2023-04-21 05:44:11'),
(287, 114, 12, '2023-04-21 20:25:47', '2023-04-21 20:25:47'),
(288, 114, 13, '2023-04-21 20:25:47', '2023-04-21 20:25:47'),
(289, 116, 12, '2023-04-23 16:00:33', '2023-04-23 16:00:33'),
(290, 116, 13, '2023-04-23 16:00:33', '2023-04-23 16:00:33'),
(291, 117, 11, '2023-04-24 12:46:57', '2023-04-24 12:46:57'),
(292, 117, 14, '2023-04-24 12:46:57', '2023-04-24 12:46:57'),
(293, 118, 11, '2023-04-24 13:01:02', '2023-04-24 13:01:02'),
(294, 118, 14, '2023-04-24 13:01:02', '2023-04-24 13:01:02'),
(295, 119, 3, '2023-04-24 13:11:56', '2023-04-24 13:11:56'),
(296, 119, 11, '2023-04-24 13:11:56', '2023-04-24 13:11:56'),
(297, 119, 14, '2023-04-24 13:11:56', '2023-04-24 13:11:56'),
(298, 120, 10, '2023-04-24 23:59:32', '2023-04-24 23:59:32'),
(299, 120, 11, '2023-04-24 23:59:32', '2023-04-24 23:59:32'),
(300, 120, 14, '2023-04-24 23:59:32', '2023-04-24 23:59:32'),
(301, 120, 15, '2023-04-24 23:59:32', '2023-04-24 23:59:32'),
(302, 120, 16, '2023-04-24 23:59:32', '2023-04-24 23:59:32'),
(303, 122, 11, '2023-04-25 13:20:57', '2023-04-25 13:20:57'),
(304, 122, 14, '2023-04-25 13:20:57', '2023-04-25 13:20:57'),
(305, 123, 11, '2023-04-25 13:38:46', '2023-04-25 13:38:46'),
(306, 123, 16, '2023-04-25 13:38:46', '2023-04-25 13:38:46'),
(307, 124, 11, '2023-04-25 19:28:47', '2023-04-25 19:28:47'),
(308, 125, 11, '2023-05-01 16:12:40', '2023-05-01 16:12:40'),
(309, 126, 11, '2023-05-01 19:03:00', '2023-05-01 19:03:00'),
(310, 126, 14, '2023-05-01 19:03:00', '2023-05-01 19:03:00'),
(311, 126, 16, '2023-05-01 19:03:00', '2023-05-01 19:03:00'),
(312, 127, 10, '2023-05-02 13:03:08', '2023-05-02 13:03:08'),
(313, 127, 12, '2023-05-02 13:03:08', '2023-05-02 13:03:08'),
(314, 128, 2, '2023-05-02 13:30:28', '2023-05-02 13:30:28'),
(315, 128, 9, '2023-05-02 13:30:28', '2023-05-02 13:30:28'),
(316, 128, 16, '2023-05-02 13:30:28', '2023-05-02 13:30:28'),
(317, 129, 11, '2023-05-02 17:04:19', '2023-05-02 17:04:19'),
(318, 129, 13, '2023-05-02 17:04:19', '2023-05-02 17:04:19'),
(319, 129, 15, '2023-05-02 17:04:19', '2023-05-02 17:04:19'),
(320, 130, 12, '2023-05-02 20:05:28', '2023-05-02 20:05:28'),
(321, 130, 15, '2023-05-02 20:05:28', '2023-05-02 20:05:28'),
(322, 130, 16, '2023-05-02 20:05:28', '2023-05-02 20:05:28'),
(323, 131, 11, '2023-05-03 20:45:00', '2023-05-03 20:45:00'),
(324, 131, 14, '2023-05-03 20:45:00', '2023-05-03 20:45:00'),
(325, 132, 11, '2023-05-03 22:22:56', '2023-05-03 22:22:56'),
(326, 133, 10, '2023-05-03 22:41:36', '2023-05-03 22:41:36'),
(327, 134, 1, '2023-05-05 15:03:15', '2023-05-05 15:03:15'),
(328, 134, 4, '2023-05-05 15:03:15', '2023-05-05 15:03:15'),
(329, 134, 5, '2023-05-05 15:03:15', '2023-05-05 15:03:15'),
(330, 134, 6, '2023-05-05 15:03:15', '2023-05-05 15:03:15'),
(331, 134, 7, '2023-05-05 15:03:15', '2023-05-05 15:03:15'),
(332, 134, 9, '2023-05-05 15:03:15', '2023-05-05 15:03:15'),
(333, 134, 10, '2023-05-05 15:03:15', '2023-05-05 15:03:15'),
(334, 134, 11, '2023-05-05 15:03:15', '2023-05-05 15:03:15'),
(335, 134, 14, '2023-05-05 15:03:15', '2023-05-05 15:03:15'),
(336, 134, 16, '2023-05-05 15:03:15', '2023-05-05 15:03:15'),
(337, 135, 11, '2023-05-06 11:28:40', '2023-05-06 11:28:40'),
(338, 136, 9, '2023-05-06 13:03:15', '2023-05-06 13:03:15'),
(339, 136, 10, '2023-05-06 13:03:15', '2023-05-06 13:03:15'),
(340, 136, 12, '2023-05-06 13:03:15', '2023-05-06 13:03:15'),
(341, 136, 13, '2023-05-06 13:03:15', '2023-05-06 13:03:15'),
(342, 137, 11, '2023-05-06 21:54:20', '2023-05-06 21:54:20'),
(343, 137, 13, '2023-05-06 21:54:20', '2023-05-06 21:54:20'),
(344, 138, 11, '2023-05-06 22:04:07', '2023-05-06 22:04:07'),
(345, 138, 12, '2023-05-06 22:04:07', '2023-05-06 22:04:07'),
(346, 139, 11, '2023-05-07 11:37:59', '2023-05-07 11:37:59'),
(347, 140, 10, '2023-05-07 16:07:30', '2023-05-07 16:07:30'),
(348, 140, 11, '2023-05-07 16:07:30', '2023-05-07 16:07:30'),
(349, 140, 14, '2023-05-07 16:07:30', '2023-05-07 16:07:30'),
(350, 141, 9, '2023-05-08 19:12:39', '2023-05-08 19:12:39'),
(351, 141, 10, '2023-05-08 19:12:39', '2023-05-08 19:12:39'),
(352, 141, 11, '2023-05-08 19:12:39', '2023-05-08 19:12:39'),
(353, 142, 11, '2023-05-10 16:43:58', '2023-05-10 16:43:58'),
(354, 143, 11, '2023-05-12 01:37:56', '2023-05-12 01:37:56'),
(355, 143, 14, '2023-05-12 01:37:56', '2023-05-12 01:37:56'),
(356, 143, 16, '2023-05-12 01:37:56', '2023-05-12 01:37:56'),
(357, 144, 11, '2023-05-12 02:45:35', '2023-05-12 02:45:35'),
(358, 144, 14, '2023-05-12 02:45:35', '2023-05-12 02:45:35'),
(359, 145, 14, '2023-05-14 02:52:02', '2023-05-14 02:52:02'),
(360, 147, 11, '2023-05-14 03:16:26', '2023-05-14 03:16:26'),
(361, 148, 11, '2023-05-14 03:23:15', '2023-05-14 03:23:15'),
(362, 148, 14, '2023-05-14 03:23:15', '2023-05-14 03:23:15'),
(363, 148, 16, '2023-05-14 03:23:15', '2023-05-14 03:23:15'),
(364, 149, 11, '2023-05-14 03:29:06', '2023-05-14 03:29:06'),
(365, 150, 11, '2023-05-14 13:13:12', '2023-05-14 13:13:12'),
(366, 150, 14, '2023-05-14 13:13:12', '2023-05-14 13:13:12'),
(367, 152, 11, '2023-05-15 13:18:15', '2023-05-15 13:18:15'),
(368, 152, 14, '2023-05-15 13:18:15', '2023-05-15 13:18:15'),
(369, 153, 9, '2023-05-15 15:55:51', '2023-05-15 15:55:51'),
(370, 153, 11, '2023-05-15 15:55:51', '2023-05-15 15:55:51'),
(371, 153, 14, '2023-05-15 15:55:51', '2023-05-15 15:55:51'),
(372, 153, 16, '2023-05-15 15:55:51', '2023-05-15 15:55:51'),
(373, 154, 1, '2023-05-15 22:31:09', '2023-05-15 22:31:09'),
(374, 154, 4, '2023-05-15 22:31:09', '2023-05-15 22:31:09'),
(375, 154, 9, '2023-05-15 22:31:09', '2023-05-15 22:31:09'),
(376, 154, 16, '2023-05-15 22:31:09', '2023-05-15 22:31:09'),
(377, 155, 10, '2023-05-16 03:04:00', '2023-05-16 03:04:00'),
(378, 155, 11, '2023-05-16 03:04:00', '2023-05-16 03:04:00'),
(379, 155, 14, '2023-05-16 03:04:00', '2023-05-16 03:04:00'),
(380, 157, 11, '2023-05-17 13:35:04', '2023-05-17 13:35:04'),
(381, 157, 14, '2023-05-17 13:35:04', '2023-05-17 13:35:04'),
(382, 158, 11, '2023-05-17 14:39:39', '2023-05-17 14:39:39'),
(383, 158, 14, '2023-05-17 14:39:39', '2023-05-17 14:39:39'),
(384, 159, 12, '2023-05-18 13:08:15', '2023-05-18 13:08:15'),
(385, 160, 9, '2023-05-18 13:13:40', '2023-05-18 13:13:40'),
(386, 160, 10, '2023-05-18 13:13:40', '2023-05-18 13:13:40'),
(387, 160, 11, '2023-05-18 13:13:40', '2023-05-18 13:13:40'),
(388, 160, 14, '2023-05-18 13:13:40', '2023-05-18 13:13:40'),
(389, 160, 15, '2023-05-18 13:13:40', '2023-05-18 13:13:40'),
(390, 161, 11, '2023-05-18 21:24:31', '2023-05-18 21:24:31'),
(391, 161, 14, '2023-05-18 21:24:31', '2023-05-18 21:24:31'),
(392, 162, 10, '2023-05-19 16:38:11', '2023-05-19 16:38:11'),
(393, 162, 11, '2023-05-19 16:38:11', '2023-05-19 16:38:11'),
(394, 162, 12, '2023-05-19 16:38:11', '2023-05-19 16:38:11'),
(395, 162, 13, '2023-05-19 16:38:11', '2023-05-19 16:38:11'),
(396, 163, 11, '2023-05-20 11:27:05', '2023-05-20 11:27:05'),
(397, 163, 16, '2023-05-20 11:27:05', '2023-05-20 11:27:05'),
(398, 165, 5, '2023-05-22 16:30:02', '2023-05-22 16:30:02'),
(399, 165, 8, '2023-05-22 16:30:02', '2023-05-22 16:30:02'),
(400, 165, 9, '2023-05-22 16:30:02', '2023-05-22 16:30:02'),
(401, 165, 10, '2023-05-22 16:30:02', '2023-05-22 16:30:02'),
(402, 165, 11, '2023-05-22 16:30:02', '2023-05-22 16:30:02'),
(403, 165, 12, '2023-05-22 16:30:02', '2023-05-22 16:30:02'),
(404, 165, 13, '2023-05-22 16:30:02', '2023-05-22 16:30:02'),
(405, 165, 14, '2023-05-22 16:30:02', '2023-05-22 16:30:02'),
(406, 165, 15, '2023-05-22 16:30:02', '2023-05-22 16:30:02'),
(407, 165, 16, '2023-05-22 16:30:02', '2023-05-22 16:30:02'),
(408, 166, 9, '2023-05-23 21:40:05', '2023-05-23 21:40:05'),
(409, 166, 10, '2023-05-23 21:40:05', '2023-05-23 21:40:05'),
(410, 167, 9, '2023-06-11 04:23:11', '2023-06-11 04:23:11'),
(411, 167, 10, '2023-06-11 04:23:11', '2023-06-11 04:23:11'),
(412, 167, 12, '2023-06-11 04:23:11', '2023-06-11 04:23:11'),
(413, 167, 13, '2023-06-11 04:23:11', '2023-06-11 04:23:11'),
(414, 167, 14, '2023-06-11 04:23:11', '2023-06-11 04:23:11'),
(415, 168, 12, '2023-06-12 03:07:53', '2023-06-12 03:07:53'),
(416, 168, 13, '2023-06-12 03:07:53', '2023-06-12 03:07:53'),
(417, 169, 3, '2023-06-12 20:23:29', '2023-06-12 20:23:29'),
(418, 169, 9, '2023-06-12 20:23:29', '2023-06-12 20:23:29'),
(419, 169, 16, '2023-06-12 20:23:29', '2023-06-12 20:23:29'),
(420, 170, 1, '2023-06-12 21:17:45', '2023-06-12 21:17:45'),
(421, 170, 14, '2023-06-12 21:17:45', '2023-06-12 21:17:45'),
(422, 171, 9, '2023-06-13 13:44:58', '2023-06-13 13:44:58'),
(423, 171, 10, '2023-06-13 13:44:58', '2023-06-13 13:44:58'),
(424, 171, 11, '2023-06-13 13:44:58', '2023-06-13 13:44:58'),
(425, 171, 14, '2023-06-13 13:44:58', '2023-06-13 13:44:58'),
(426, 172, 1, '2023-06-19 17:19:24', '2023-06-19 17:19:24'),
(427, 172, 9, '2023-06-19 17:19:24', '2023-06-19 17:19:24'),
(428, 172, 10, '2023-06-19 17:19:24', '2023-06-19 17:19:24'),
(429, 172, 14, '2023-06-19 17:19:24', '2023-06-19 17:19:24'),
(430, 172, 15, '2023-06-19 17:19:24', '2023-06-19 17:19:24'),
(431, 173, 1, '2023-07-07 20:42:38', '2023-07-07 20:42:38'),
(432, 173, 2, '2023-07-07 20:42:38', '2023-07-07 20:42:38'),
(433, 173, 3, '2023-07-07 20:42:38', '2023-07-07 20:42:38'),
(434, 173, 6, '2023-07-07 20:42:38', '2023-07-07 20:42:38'),
(435, 173, 9, '2023-07-07 20:42:38', '2023-07-07 20:42:38'),
(436, 173, 15, '2023-07-07 20:42:38', '2023-07-07 20:42:38'),
(437, 173, 16, '2023-07-07 20:42:38', '2023-07-07 20:42:38'),
(438, 174, 12, '2023-07-09 23:18:13', '2023-07-09 23:18:13'),
(439, 174, 14, '2023-07-09 23:18:13', '2023-07-09 23:18:13'),
(440, 175, 12, '2023-07-10 19:20:18', '2023-07-10 19:20:18'),
(441, 178, 10, '2023-07-12 02:10:02', '2023-07-12 02:10:02'),
(442, 178, 14, '2023-07-12 02:10:02', '2023-07-12 02:10:02'),
(443, 179, 9, '2023-07-12 17:47:14', '2023-07-12 17:47:14'),
(444, 179, 10, '2023-07-12 17:47:14', '2023-07-12 17:47:14'),
(445, 180, 10, '2023-07-12 22:00:46', '2023-07-12 22:00:46'),
(446, 180, 11, '2023-07-12 22:00:46', '2023-07-12 22:00:46'),
(447, 181, 11, '2023-07-13 13:49:56', '2023-07-13 13:49:56'),
(448, 181, 14, '2023-07-13 13:49:56', '2023-07-13 13:49:56'),
(449, 181, 15, '2023-07-13 13:49:56', '2023-07-13 13:49:56'),
(450, 181, 16, '2023-07-13 13:49:56', '2023-07-13 13:49:56'),
(451, 182, 9, '2023-07-13 15:35:20', '2023-07-13 15:35:20'),
(452, 182, 14, '2023-07-13 15:35:20', '2023-07-13 15:35:20'),
(453, 183, 10, '2023-07-14 01:50:23', '2023-07-14 01:50:23'),
(454, 183, 11, '2023-07-14 01:50:23', '2023-07-14 01:50:23'),
(455, 183, 12, '2023-07-14 01:50:23', '2023-07-14 01:50:23'),
(456, 183, 13, '2023-07-14 01:50:23', '2023-07-14 01:50:23'),
(457, 184, 14, '2023-07-14 02:25:34', '2023-07-14 02:25:34'),
(458, 184, 16, '2023-07-14 02:25:34', '2023-07-14 02:25:34'),
(459, 185, 9, '2023-07-14 02:40:15', '2023-07-14 02:40:15'),
(460, 185, 11, '2023-07-14 02:40:15', '2023-07-14 02:40:15'),
(461, 185, 14, '2023-07-14 02:40:15', '2023-07-14 02:40:15'),
(462, 185, 15, '2023-07-14 02:40:15', '2023-07-14 02:40:15'),
(463, 185, 16, '2023-07-14 02:40:15', '2023-07-14 02:40:15'),
(464, 186, 9, '2023-07-17 09:10:37', '2023-07-17 09:10:37'),
(465, 186, 11, '2023-07-17 09:10:37', '2023-07-17 09:10:37'),
(466, 187, 11, '2023-07-25 00:57:28', '2023-07-25 00:57:28'),
(467, 187, 12, '2023-07-25 00:57:28', '2023-07-25 00:57:28'),
(468, 187, 13, '2023-07-25 00:57:28', '2023-07-25 00:57:28'),
(469, 187, 14, '2023-07-25 00:57:28', '2023-07-25 00:57:28'),
(470, 188, 14, '2023-07-25 20:33:42', '2023-07-25 20:33:42'),
(471, 188, 16, '2023-07-25 20:33:42', '2023-07-25 20:33:42'),
(472, 189, 9, '2023-11-19 14:54:59', '2023-11-19 14:54:59'),
(473, 189, 10, '2023-11-19 14:54:59', '2023-11-19 14:54:59'),
(474, 189, 11, '2023-11-19 14:54:59', '2023-11-19 14:54:59'),
(475, 189, 14, '2023-11-19 14:54:59', '2023-11-19 14:54:59'),
(476, 189, 16, '2023-11-19 14:54:59', '2023-11-19 14:54:59'),
(477, 190, 12, '2023-11-19 15:44:09', '2023-11-19 15:44:09'),
(478, 190, 13, '2023-11-19 15:44:09', '2023-11-19 15:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `listing_categories`
--

CREATE TABLE `listing_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_category_name` text NOT NULL,
  `listing_category_slug` text DEFAULT NULL,
  `listing_category_photo` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_categories`
--

INSERT INTO `listing_categories` (`id`, `listing_category_name`, `listing_category_slug`, `listing_category_photo`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Hotel/Shortlet', 'hotel', 'f3732842a26a08ea66bf0a597f439531.jpg', 'Hotel', NULL, '2021-07-06 13:39:30', '2023-05-10 22:56:15'),
(2, 'Restaurant', 'restaurant', '1d4dca1a2427173c1a4ebbf52577f791.jpg', 'Restaurant', NULL, '2021-07-06 13:39:42', '2021-07-08 05:05:05'),
(3, 'Fitness', 'fitness', '000ff0e54ed1e1613b671ca69b372d16.jpg', 'Restaurant', NULL, '2021-07-06 13:40:29', '2021-07-18 06:37:12'),
(6, 'Real Estate', 'real-estate', 'ff164db33e1470ce369fe9e5252eb680.jpg', 'Real Estate', 'Real Estate', '2021-07-11 23:00:44', '2021-07-11 23:00:44'),
(7, 'Shopping', 'shopping', 'e5098068687cfb1e68b31d06057985b9.jpg', 'Shopping', 'Shopping', '2021-07-11 23:03:44', '2021-07-11 23:03:44'),
(8, 'Health and Medical', 'health-and-medical', '0a2d2dec01b808da3aae794cbc7baf1f.jpg', 'Health and Medical', 'Health and Medical', '2021-07-11 23:50:49', '2021-07-11 23:50:49'),
(13, 'Entertainment', 'Entertainment', '88f536bf8b4c84aba077d62bf306e7df.jpg', 'Entertainment', NULL, '2022-11-27 12:35:37', '2022-11-27 12:35:37'),
(14, 'Fashion designers', 'Fashion', '82a7cb3883c24001b3a39d6062f257bc.jpg', 'Fashion designers', NULL, '2022-11-27 12:43:11', '2022-11-27 12:43:11'),
(15, 'Painters', 'Painters', '17eb6216b0f96b2fa2f92a4b11e74ceb.jpg', 'Painters', NULL, '2022-11-27 12:44:28', '2022-11-27 12:44:28'),
(16, 'Photographers/Cinematography', 'Photographers-Cinematography', '8b6039adfde14f50bc60f5dd1490d667.jpg', 'Photographers', NULL, '2022-11-27 12:45:47', '2023-05-10 22:58:19'),
(17, 'Vulcanizers', 'Vulcanizers', 'fb47f82c86370eb7255325d464aad28a.jpg', 'Vulcanizers', NULL, '2022-11-27 12:48:49', '2022-11-27 12:48:49'),
(18, 'Car wash station', 'Car-wash', '30c1b4ada10a48cae16a29b6ff148ab0.jpg', 'Car wash', NULL, '2022-11-27 12:52:02', '2022-11-27 12:52:02'),
(19, 'Plumber', 'Plumber', '61eb766a0ebff80b6fd8dbfa409bafa9.jpg', 'Plumber', NULL, '2022-11-27 12:53:11', '2022-11-27 12:53:11'),
(20, 'Tiler', 'Tiler', '798e0aa70d3c8ec117cf4e8e2585b915.jpg', 'Tiler', NULL, '2022-11-27 12:55:02', '2022-11-27 12:55:02'),
(21, 'Motor mechanic', 'Mechanic', 'abe9f81377a928df3a558bbf6b0f6c2b.jpg', 'Motor mechanic', NULL, '2022-11-27 12:56:37', '2022-11-27 12:56:37'),
(22, 'Electrician', 'Electrician', 'f67c8bd1435bec4cd1a3b9a7fd1680b0.jpg', 'Electrician', NULL, '2022-11-27 12:57:12', '2022-11-27 12:57:12'),
(23, 'Brick layers', 'Brick-layers', '54424286e53ffe42a9866e16518bb026.jpg', 'Brick layers', NULL, '2022-11-27 13:01:03', '2022-11-27 13:01:03'),
(24, 'Artists', 'Artists', '19c0fcbb7c255c26a8312cb839d2274b.jpg', 'Artists', NULL, '2022-11-27 13:02:33', '2022-11-27 13:02:33'),
(25, 'Carpenters', 'Carpenters', '39771b612f528300ef1ed73e973d99cb.jpg', 'Carpenters', NULL, '2022-11-27 13:04:49', '2022-11-27 13:04:49'),
(26, 'Solar installers', 'Solar', '4880c8d65b7b879e626fcb576b13103f.jpg', 'Solar-installers', NULL, '2022-11-27 13:05:59', '2022-11-27 13:05:59'),
(27, 'Road side shops', 'Shops', '27e23713ce357b04e4ffeca64990a87a.jpg', NULL, NULL, '2022-11-27 13:09:22', '2022-11-27 13:09:22'),
(28, 'Phone technicians', 'Phone-technicians', '63c6a6572e6097c608720acbf1019cf2.jpg', 'Phone technicians', NULL, '2022-11-27 13:10:58', '2022-11-27 13:10:58'),
(29, 'Funeral services', 'Funeral-services', '8ae35a05853fd6df6de3b5210e1098f9.jpg', 'Funeral service', 'Find the best funerals services in Nigeria at 9jajob.com', '2022-11-27 17:03:12', '2023-03-13 14:19:41'),
(30, 'Laundry services', 'Laundry-services', '1c072f477b3c68d9ae25e1c13d797062.jpg', 'Laundry', 'Find the best and most reliable laundry services at 9jajob.com', '2022-11-27 17:05:59', '2022-11-27 17:05:59'),
(31, 'Air conditioner repair', 'AC-technician', '42e25f763cc78cbdecc237a95e2e7c1a.jpg', 'AC technician', 'Find the best and most reliable air conditioner technicians at 9jajob.com', '2022-11-27 17:07:57', '2022-11-27 17:07:57'),
(32, 'Refrigerator technicians', 'Refrigerator-technicians', 'e9a9a615c09a254011a4ad1b7ec09867.jpg', 'Refrigerator technicians', 'Find the best and most reliable refrigerator technicians  at 9jajob.com', '2022-11-27 17:09:42', '2022-11-27 17:09:42'),
(33, 'Generator Technicians', 'Gen-technicians', 'e671e6faaeebd8594d1bd38cdf09372b.jpg', 'Generator technicians', 'Find the best and most reliable Generator technicians  at 9jajob.com', '2022-11-27 17:11:14', '2022-11-27 17:11:14'),
(34, 'Shoe repairs', 'Shoe-repairs', 'b76ced5ef32ce97f55e972768eeefb56.jpg', 'Shoe repairs', 'Find the best and most reliable shoe repairers within and outside your location in Nigeria at 9jajob.com', '2022-11-27 17:15:28', '2022-11-27 17:15:28'),
(35, 'Schools', 'Schools', '4c10bd8e4a0b0d3d084620c83c0cee51.jpg', 'Schools', 'Find the best and most reliable schools within and outside your location in Nigeria at 9jajob.com', '2022-11-27 17:16:31', '2022-11-27 17:16:31'),
(36, 'Computer stores', 'Computer', '77e58e1b7cb559af346e1069af4ea753.jpg', 'Computer store', 'Find the best and most reliable computer stores within and outside your location in Nigeria at 9jajob.com', '2022-11-27 17:17:51', '2022-11-27 17:17:51'),
(37, 'Building materials', 'Building-materials', 'ce9814f44c9707ee6064d2e86155f47e.jpg', 'Building materials', 'Find the best and most reliable building material  within and outside your location in Nigeria at 9jajob.com', '2022-11-27 17:19:08', '2022-11-27 17:19:08'),
(38, 'Bet shops', 'Bet-shops', '723fdfb4326e903f0274bb81031f058c.jpg', 'Bet shops', 'Find the best and most reliable bet shops within and outside your location in Nigeria at 9jajob.com', '2022-11-27 17:29:13', '2022-11-27 17:29:13'),
(39, 'Car dealers', 'Car-dealers', '9c9498df7bf0b323fa264901957da5ae.jpg', 'Car dealers', 'Find the best and most reliable shoe car dealers  within and outside your location in Nigeria at 9jajob.com', '2022-11-27 17:31:54', '2022-11-27 17:31:54'),
(40, 'Fabric store', 'Fabric', '8d70d5bbc7d41c8cea7970d125351c86.jpg', 'Fabrics', 'Find the best and most reliable fabric dealers  within and outside your location in Nigeria at 9jajob.com', '2022-11-27 17:33:45', '2022-11-27 17:33:45'),
(41, 'Ushering services', 'Usher', '0466e1b6c61c1b65f42098e6cbdf3f6c.jpg', 'Ushering services', 'Find the best and most reliable ushering services   within and outside your location in Nigeria at 9jajob.com', '2022-11-27 19:11:03', '2022-11-27 19:11:03'),
(42, 'Ambulance services', 'Ambulance', '40f974f0e6ade7286b70062d3e1a53b3.jpg', 'Ambulance', 'Find the best and most reliable Ambulance services within and outside your location in Nigeria at 9jajob.com', '2022-11-27 19:14:37', '2022-11-27 19:14:37'),
(43, 'Gym centers', 'Gym', '40b149b28a8f47729f5424ef33f391db.jpg', 'Gym center', 'Find the best and most reliable gym centers  within and outside your location in Nigeria at 9jajob.com', '2022-11-27 19:18:38', '2022-11-27 19:18:38'),
(44, 'Welding services', 'Welder', 'd860b6346b898900219324d56e830dce.jpg', 'Welding services', 'Find the best and most reliable welding services  within and outside your location in Nigeria at 9jajob.com', '2022-11-27 19:20:05', '2022-11-27 19:20:05'),
(45, 'Private security', 'Security', '84a9fa80c5860582e040b53a124803de.jpg', 'Private security service', 'Find the best and most private security services within and outside your location in Nigeria at 9jajob.com', '2022-11-27 19:21:41', '2022-11-27 19:21:41'),
(46, 'Event Managers', 'Events', 'a20113bc627208ac7f2c5730403ef221.jpg', 'Event Managers', 'Find the best and most reliable Event  managers within and outside your location in Nigeria at 9jajob.com', '2022-11-27 19:23:50', '2022-11-27 19:23:50'),
(47, 'DJ', 'DJ', '1949536a6694a44685171bbca74dfa90.jpg', 'DJ', 'Find the best and most reliable DJ services within and outside your location in Nigeria at 9jajob.com', '2022-11-27 19:26:17', '2022-11-27 19:26:17'),
(48, 'Local ingredients', 'Local-ingredients', '1d6e623424a15c1d15c2d8bfda0ee0a2.jpg', 'Local ingredients', 'Find the best and most reliable local ingredients dealers  within and outside your location in Nigeria at 9jajob.com', '2022-11-27 19:28:04', '2022-11-27 19:28:04'),
(49, 'Educational Service', 'Educational-Services', 'bec3b192eed0d7327655a1d1533d54ba.jpg', 'Private teacher', 'Find the best and most reliable private teachers within and outside your location in Nigeria at 9jajob.com', '2022-11-27 19:30:02', '2023-03-22 23:35:07'),
(50, 'Music studio', 'Music-studio', '503425704d7979f9fe6122ad219f90b8.jpg', 'Music studio', 'Find the best and most reliable music studios within and outside your location in Nigeria at 9jajob.com', '2022-11-27 19:31:59', '2022-11-27 19:31:59'),
(51, 'Photo Studio', 'Photo-studio', '49d54fb2ddf43107a9c9dd63a4cf7a0f.jpg', 'Photo Studio', 'Find the best and most reliable photo studios within and outside your location in Nigeria at 9jajob.com', '2022-11-27 19:36:00', '2022-11-27 19:36:00'),
(52, 'Watch Repairs', 'Watch-repair', 'e775c670be2d2219efb4969d5b675e61.jpg', 'Watch Repairs', 'Find the best and most reliable watch repair services   within and outside your location in Nigeria at 9jajob.com', '2022-11-27 19:38:30', '2022-11-27 19:38:30'),
(53, 'Night Clubs', 'Night-clubs', '9f79396e07f5b623563a00c1320c47f3.jpg', 'Night Clubs', 'Find the best and most reliable Night clubs within and outside your location in Nigeria at 9jajob.com', '2022-11-27 19:40:45', '2022-11-27 19:40:45'),
(54, 'Event center', 'Event-centers', '361b9251a9a765096bbe8e0dccf8fb26.jpg', 'Event centers', 'Find the best and most reliable Event centers within and outside your location in Nigeria at 9jajob.com', '2022-11-27 19:42:21', '2022-11-27 19:42:21'),
(55, 'Phone stores', 'Phone-stores', '4948c8f3445cbd7852f3063d869e80a1.jpg', 'Phone stores', 'Find the best and most Phone dealers  within and outside your location in Nigeria at 9jajob.com', '2022-11-27 19:44:27', '2022-11-27 19:44:27'),
(56, 'Interior decorators', 'Interior', '133ea02c6f4be21afe84c2d2d2c2279f.jpg', 'Interior', 'Find the best and most reliable interior decorators within and outside your location in Nigeria at 9jajob.com', '2022-11-27 19:46:58', '2022-11-27 19:46:58'),
(57, 'Catering services', 'Catering', 'e94ec0cdaf9f2031ae1ce8ce06896832.jpg', 'Catering services', 'Find the best and most reliable catering services   within and outside your location in Nigeria at 9jajob.com', '2022-11-27 19:48:47', '2022-11-27 19:48:47'),
(58, 'Boutiques', 'Boutique', '7314a66097573db40366a2319cc5854c.jpg', 'Boutique', 'Find the best and most reliable Boutiques within and outside your location in Nigeria at 9jajob.com', '2022-11-27 19:51:44', '2022-11-27 19:51:44'),
(59, 'Tech', 'Tech', '13c13b27624d727d1848ae96e815be3e.jpg', 'Tech', 'Find the best and most reliable tech genus within and outside your location in Nigeria at 9jajob.com', '2022-11-27 20:09:14', '2022-11-27 20:09:14'),
(60, 'Liquor store', 'Liquor', '3454401706b382755ead07eed91fd7bf.jpg', 'Liquor', NULL, '2022-11-27 20:10:25', '2022-11-27 20:10:25'),
(61, 'Shopping Mall', 'Mall', '4a4300c22ea96d63d8f218352bfc4d99.jpg', 'Mall', NULL, '2022-11-27 20:11:10', '2022-11-27 20:11:10'),
(62, 'Pedicure services', 'Pedicure', 'ccdfbd3fbddc208d68fae66f9fe0cb48.jpg', NULL, NULL, '2022-11-28 03:45:59', '2022-11-28 03:45:59'),
(63, 'Manicure services', 'Manicure', '833e89d8b02aabeb89e9620b24e3e909.jpg', NULL, NULL, '2022-11-28 03:46:55', '2022-11-28 03:46:55'),
(64, 'Facial treatment', 'Facial-treatment', '5781f21966ac33ee97e3adfbb1b2a23f.jpg', NULL, NULL, '2022-11-28 03:47:51', '2022-11-28 03:47:51'),
(65, 'Massage therapist', 'Massage', 'fc58bca68f37e8abca0de3755bb89f27.jpg', NULL, NULL, '2022-11-28 03:49:52', '2022-11-28 03:49:52'),
(66, 'Gas-station', 'Gas-plant', 'cc7b98c4be37d0f2d0ae994cd07a23b7.jpg', NULL, NULL, '2022-11-28 03:50:37', '2022-11-28 03:50:37'),
(67, 'Cosmetics', 'Cosmetics', '4940136769d8618500d5be6e09ab0836.jpg', NULL, NULL, '2022-11-28 03:51:04', '2022-11-28 03:51:04'),
(68, 'Tipper services', 'Tipper', '33970efa0a7c9a99922324ccd84c3a27.jpg', NULL, NULL, '2022-12-04 02:53:00', '2022-12-04 02:53:00'),
(69, 'Timber dealers', 'Timber', 'a369b0be680001d74ce5b1913886c71e.jpg', NULL, NULL, '2022-12-04 02:53:51', '2022-12-04 02:53:51'),
(70, 'Chemist shops', 'chemist-shops', '8f57b6e71f07835f35153594b30abfbb.jpg', NULL, NULL, '2022-12-04 02:55:09', '2022-12-04 02:55:09'),
(71, 'Pharmacists', 'Pharmacist', '0c060475fb0a23d94dd2703705e6196c.jpg', NULL, NULL, '2022-12-04 02:57:38', '2022-12-04 02:57:38'),
(72, 'Forest brokers', 'Forest-brokers', 'de5ca1be703efb95deca012947b98ad8.jpg', NULL, NULL, '2022-12-04 02:58:11', '2022-12-04 02:58:11'),
(73, 'Water tankers', 'Water-tankers', 'a456d83ac4d83f9bc8723494d18d1e2e.jpg', NULL, NULL, '2022-12-04 02:58:59', '2022-12-04 02:58:59'),
(74, 'Machine parts dealers', 'Machine-parts', 'a22dcf1fdc5dfef137682f4220ee7c31.jpg', NULL, NULL, '2022-12-04 02:59:50', '2022-12-04 02:59:50'),
(75, 'Motor parts dealers', 'Motor-parts', '11075a1c805e7bc0e0cdfdb27e20b3df.jpg', NULL, NULL, '2022-12-04 03:00:50', '2022-12-04 03:00:50'),
(76, 'Motorcycle dealers', 'Motorcycle', '09d3a68774561cc1341d37187dbf47b2.jpg', NULL, NULL, '2022-12-04 03:01:37', '2022-12-04 03:01:37'),
(77, 'Logistics', 'Logistics', 'b146df983716c4575af4921fd1060aab.jpg', NULL, NULL, '2022-12-04 03:03:58', '2022-12-04 03:03:58'),
(78, 'Motorcycle mechanic', 'Motorcycle-mechanic', 'ec9a01e9b3fff3e2f8e6b483fe20381a.jpg', NULL, NULL, '2022-12-04 03:04:44', '2022-12-04 03:04:44'),
(79, 'ATM Booth', 'ATM-BOOTH', '11946112eb637df990b2f48e25537cdb.jpg', NULL, NULL, '2023-01-16 16:29:06', '2023-01-16 16:29:06'),
(80, 'Recreation Center', 'PLay-center', '619f56f0d42776b309c4aa3b5e990b07.jpg', NULL, NULL, '2023-01-16 16:30:03', '2023-01-16 16:30:03'),
(81, 'Rental Services', 'Rentals', '12a3c1215fbbbe9ca78d7094d466cd91.jpg', NULL, NULL, '2023-01-23 22:32:43', '2023-01-23 22:32:43'),
(82, 'Barbing Saloon', 'Saloon', '8206a0cea8a276272b63aaff52c54594.jpg', NULL, NULL, '2023-01-24 01:20:14', '2023-01-24 01:20:14'),
(83, 'Millinery and Bridal accessories', 'Millinery-Bridals-accessories', '97d6537615ad5a959f6be783b32baddd.jpg', NULL, NULL, '2023-02-03 23:02:40', '2023-02-03 23:02:40'),
(84, 'Graphics design', 'Graphics-designs', '5b1e2586f53bcf492bfe37fc6f238bc7.jpg', NULL, NULL, '2023-02-07 01:20:03', '2023-02-07 01:20:03'),
(85, 'Brand Identity designers', 'Brand-designers', '1add020e2e9d1c71b62d627b3824ee2c.jpg', NULL, NULL, '2023-02-07 01:22:53', '2023-02-07 01:22:53'),
(86, 'Cakes and Pastries', 'Cakes-Pastries', 'f56c51debdaf305c3f74e94cfebfbd14.jpg', NULL, NULL, '2023-02-07 10:03:19', '2023-02-07 10:03:19'),
(87, 'Fashion Accessories', 'Fashion-Accessories', 'c495a84913e76440f6f7ef1887f6b5ea.jpg', NULL, NULL, '2023-02-13 16:14:48', '2023-02-13 16:14:48'),
(88, 'Unisex Salon', 'Unisex-salon', 'a41c8686ba919fb1e39d8ebaa56032e8.jpg', NULL, NULL, '2023-02-20 18:46:29', '2023-02-20 18:46:29'),
(89, 'Jewelries/ Wristwatches', 'Jewelries-wristwatches', '0f55f88223d66dcfa02e78ea1a86cf44.jpg', NULL, NULL, '2023-03-05 01:56:37', '2023-07-13 01:11:48'),
(90, 'Sex Enhancement products', 'Sex-enhancement-products', '1aa5c124a1c6e80da3d5aa302910db37.jpg', NULL, NULL, '2023-03-05 02:13:46', '2023-03-05 02:13:46'),
(91, 'Luxury-Wears', 'Luxury-wears', '7b1078d72153d8bcf2131ccf0d58ee34.jpg', NULL, NULL, '2023-03-05 15:53:11', '2023-03-05 15:53:11'),
(92, 'Hair Extension and Luxury', 'Hair-extension-and-Luxury', '8de967467ebdf6780ba5cee596fcedd2.jpg', NULL, NULL, '2023-03-06 04:08:18', '2023-03-06 04:08:18'),
(93, 'Cleaning Agency', 'Cleaning-Agency', 'b16bb92a9c5d153346732d24aa9c7068.jpg', NULL, NULL, '2023-03-06 14:24:15', '2023-03-06 14:24:15'),
(94, 'Electronic Store', 'Electronics-store', '8e06c1d925a9b05c7ce144bf62d0f762.jpg', NULL, NULL, '2023-03-06 15:05:54', '2023-03-06 15:05:54'),
(95, 'Pets and laboratory Animals', 'Pete-laboratory-Animals', '2fdf86c6c10080cb7f15ef75d125a0eb.jpg', NULL, NULL, '2023-03-06 17:21:51', '2023-03-06 17:21:51'),
(96, 'POP engineers', 'POP-engineers', 'e769365d92600f7317b587137eac0f9e.jpg', NULL, NULL, '2023-03-24 23:54:24', '2023-03-24 23:54:24'),
(97, 'Provision store', 'Provision-store', '6721483d804934e654fdc6b9c5a39b91.jpg', NULL, NULL, '2023-03-26 03:12:30', '2023-03-26 03:12:30'),
(98, 'Spar', 'Spar', '4a694391e4ee7fa1ae14f04c3f98c55f.jpg', NULL, NULL, '2023-03-26 15:09:13', '2023-03-26 15:09:13'),
(99, 'Live stock farming', 'Live-stock-farming', '4732fbab992596fc5e77ae7079a63c17.jpg', NULL, NULL, '2023-04-06 16:12:36', '2023-04-06 16:12:36'),
(100, 'Social media managers', 'Social-media-managers', '1e4be4730330f1b1e3b18e2b4e1d9e23.jpg', 'Social media managers', 'Boost your social media account', '2023-04-12 20:19:12', '2023-04-12 20:19:12'),
(101, 'Telecommunications services', 'Telecommunication-services', 'ce64c6c307b02328e481f1c680df3bf4.jpg', NULL, NULL, '2023-04-22 00:18:03', '2023-04-22 00:18:03'),
(102, 'Taxi/cab', 'Taxi-Cab', '42655a46f9f7a33b1eededf2eb53f1fa.jpg', '9jajob Taxi', '9Jajob has the best taxi services in town .', '2023-05-06 11:22:24', '2023-05-06 11:22:24'),
(103, 'Surprise/Gift Vendors', 'Surprise-gift-vendors', 'a2502d6026a85757abb5b012eb7ec403.jpg', NULL, NULL, '2023-05-06 11:37:40', '2023-05-06 11:37:40'),
(104, 'Architects', 'Architects', '09e65fcac27bf8fc4c4db060567d2dac.jpg', NULL, NULL, '2023-05-07 11:31:28', '2023-05-07 11:31:28'),
(105, 'AgroChemical/farm products', 'Agrochemicals/farmproducts', '741358c9829a855e3202057ba83a41de.jpg', NULL, NULL, '2023-05-17 00:23:06', '2023-05-17 00:23:06'),
(106, 'Car-Hire service', 'Car-hire-services', '6cd5de29785064a60ba0a587d3a31c81.jpg', NULL, NULL, '2023-07-13 01:09:22', '2023-07-13 01:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `listing_locations`
--

CREATE TABLE `listing_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_location_name` text NOT NULL,
  `listing_location_slug` text DEFAULT NULL,
  `listing_location_photo` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_locations`
--

INSERT INTO `listing_locations` (`id`, `listing_location_name`, `listing_location_slug`, `listing_location_photo`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Paris, France', 'paris', '36116d11827f34adb99a661bc7890882.jpg', 'Paris', NULL, '2021-07-06 20:02:02', '2021-07-11 23:52:35'),
(2, 'Chicago, USA', 'chicago', '7f2a3cc598783d96c6cb38822f297c4e.jpg', 'Chicago', NULL, '2021-07-06 20:02:42', '2021-07-11 23:52:28'),
(3, 'London, UK', 'london', '4d79a723380e7495b8a0d0a77c09691d.jpg', 'London', NULL, '2021-07-06 20:02:54', '2021-07-11 23:52:21'),
(4, 'NewYork, USA', 'newyork', '15f7c09ace5d9dde86c025758b88e3e0.jpg', 'NewYork', NULL, '2021-07-06 20:03:07', '2021-07-11 23:52:40'),
(5, 'Tokyo, Japan', 'tokyo', '33fd259bec2e92c1c7cd245700dfc2d0.jpg', 'Tokyo', NULL, '2021-07-06 20:03:18', '2021-07-11 23:52:46'),
(7, 'Khulna, Bangladesh', 'Khulna', 'd3c826869a1d7fa59cf8e91239b010cd.jpg', 'Khulna', 'Khulna', '2021-07-12 09:39:50', '2021-07-18 06:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `listing_photos`
--

CREATE TABLE `listing_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `photo` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_photos`
--

INSERT INTO `listing_photos` (`id`, `listing_id`, `photo`, `created_at`, `updated_at`) VALUES
(13, 3, 'c300dd46b9c5d491b50dbaa2000d4348.jpg', NULL, NULL),
(14, 3, '1872dae7c0f4f4d8f158bb06d33e2ce1.jpg', NULL, NULL),
(15, 3, 'dd20239ac11ea0c9f93f6d0e7829d11a.jpg', NULL, NULL),
(18, 5, '1f003ae875e68528cb038b27228f5ba5.jpg', NULL, NULL),
(19, 5, '1fcfce92b374bb747c46555c930ce4cb.jpg', NULL, NULL),
(20, 6, '2716c8d7388273f1f662173314662dc0.jpg', NULL, NULL),
(21, 6, '521e4fb855084ba6df1f1abf34d01542.jpg', NULL, NULL),
(22, 6, 'd31b0bebd91adec66a7a742c5a73718c.jpg', NULL, NULL),
(23, 6, '8e6ae32f5a0131b77e4a355fb85a9229.jpg', NULL, NULL),
(24, 6, 'ea6d7c0ead0444b76e2f08dfb88908b4.jpg', NULL, NULL),
(25, 6, '6b2ad7dcd887ce14897144580961080b.jpg', NULL, NULL),
(29, 7, '2415a25f7640b9865dbd659c09031715.jpg', '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(30, 7, '6edcf92f5001a25f017fe635f85ee5ac.jpg', '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(31, 7, 'df4b17a8f3daac5ae7161ff382540fc9.jpg', '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(32, 7, '3de2971a3dc473fb838d3544a5ad8698.jpg', '2021-07-24 10:00:57', '2021-07-24 10:00:57'),
(33, 7, 'bea662524af11636f4eb0d862b23f638.jpg', '2021-07-24 10:00:57', '2021-07-24 10:00:57'),
(34, 7, '178309f17a65fe9fedf130ed22ff957f.jpg', '2021-07-24 10:00:57', '2021-07-24 10:00:57'),
(35, 8, '9736aecb1f0c37c850e0a4597518611c.jpg', '2021-07-24 10:09:58', '2021-07-24 10:09:58'),
(36, 8, '8125cadd617ac31a7edcfd516de1a521.jpg', '2021-07-24 10:09:59', '2021-07-24 10:09:59'),
(37, 8, '356866b98f8dbdb3c8ca05df122bf6e2.jpg', '2021-07-24 10:09:59', '2021-07-24 10:09:59'),
(38, 10, '7c69a401ffc4cfe7f15cfaa0af4e7169.jpg', '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(39, 10, '5ec5ce8b2bdd2c6e8a8f4c28ebe174dc.jpg', '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(40, 10, '715c36fdea8499d9fcefd0fa88463ce1.jpg', '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(41, 10, 'edd4bda88ee13da3ef89a11c2cc78b33.jpg', '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(42, 10, '06a5ed1c3398f394bc51e7398007bfe4.jpg', '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(43, 15, '16d0f5e0b66692a7f384a3cf2db15c77.jpg', '2023-01-09 13:30:11', '2023-01-09 13:30:11'),
(44, 16, '1e61335b9d0eb9af9efc9ba0b4fff413.jpg', '2023-01-13 18:02:46', '2023-01-13 18:02:46'),
(55, 21, 'b97554cc920f8a5c66b4a8f839691bf8.jpg', '2023-02-07 10:14:00', '2023-02-07 10:14:00'),
(56, 21, 'ecce68bb90f95440d83ac266a3ca72e1.jpg', '2023-02-07 10:14:00', '2023-02-07 10:14:00'),
(57, 21, '9b324a3161a073ffcb9ccfc4e5d0be83.jpg', '2023-02-07 10:14:00', '2023-02-07 10:14:00'),
(58, 21, '736089a74bf41fba5108f819f9813341.jpg', '2023-02-07 10:14:00', '2023-02-07 10:14:00'),
(59, 21, 'e2b63a65a0060812d9b6ef4b21616177.jpg', '2023-02-07 10:14:00', '2023-02-07 10:14:00'),
(60, 21, 'abfebb0a6c68d5ac927929a82694e0fb.jpg', '2023-02-07 10:14:00', '2023-02-07 10:14:00'),
(65, 23, '453f30833eb978a515bf40de9a68acd3.jpg', '2023-02-08 16:24:20', '2023-02-08 16:24:20'),
(66, 24, 'c5a64eec4ad45034a24b92e3bec79c3f.jpg', '2023-02-11 15:13:16', '2023-02-11 15:13:16'),
(67, 24, 'af981bb842ba7779100a1d388f4cf043.jpg', '2023-02-11 15:13:16', '2023-02-11 15:13:16'),
(68, 25, 'f2c602fb25adf09ed6d7d3297086aa81.jpg', '2023-02-11 15:27:39', '2023-02-11 15:27:39'),
(69, 25, 'ebe9e3af614793d21bc11e5f27f75a6e.jpg', '2023-02-11 15:27:39', '2023-02-11 15:27:39'),
(70, 25, '96c5545260df25e30adef080a1c19b0f.jpg', '2023-02-11 15:27:39', '2023-02-11 15:27:39'),
(71, 25, '4be52da84b5e1f4ce2892e691ef6dc5f.jpg', '2023-02-11 15:27:39', '2023-02-11 15:27:39'),
(72, 25, '333f3f83383fe025508f5ee4c4eb8ab4.jpg', '2023-02-11 15:27:39', '2023-02-11 15:27:39'),
(73, 25, 'c36821b0209bfe88a5dbeee02656e65c.jpg', '2023-02-11 15:27:39', '2023-02-11 15:27:39'),
(74, 25, '8945ddef896ef34a633e75cd6dad6036.jpg', '2023-02-11 15:27:39', '2023-02-11 15:27:39'),
(75, 25, '35ac999a5c308398889723e052eda171.jpg', '2023-02-11 15:27:39', '2023-02-11 15:27:39'),
(76, 25, '741b3869d096ed56a3f328c275554e36.jpg', '2023-02-11 15:27:39', '2023-02-11 15:27:39'),
(77, 25, '42cbe3345530e853af35e47c06f94f08.jpg', '2023-02-11 15:27:39', '2023-02-11 15:27:39'),
(78, 26, '1cd695a8b346fa95169115c6e4a637e2.jpg', '2023-02-12 00:52:44', '2023-02-12 00:52:44'),
(79, 26, '7df00e30294886be5108174e62448d14.jpg', '2023-02-12 00:52:44', '2023-02-12 00:52:44'),
(80, 26, '2ca0e6c1b26fe97dd63360af1f8ff82c.jpg', '2023-02-12 00:52:44', '2023-02-12 00:52:44'),
(81, 26, '0678a0ee3be29e7c28c77014125b3fad.jpg', '2023-02-12 00:52:44', '2023-02-12 00:52:44'),
(82, 27, '186cc62b46a03139567a350ae0a59d24.jpg', '2023-02-13 19:32:05', '2023-02-13 19:32:05'),
(83, 27, '359279c6acb5774175636ff160a02e9a.jpg', '2023-02-13 19:32:05', '2023-02-13 19:32:05'),
(84, 27, '6dca93b58b3f4bee40103ebaf5b14e4a.jpg', '2023-02-13 19:32:05', '2023-02-13 19:32:05'),
(85, 27, 'ab3f93d8843ee386b37a63ada7a5f18b.jpg', '2023-02-13 19:32:05', '2023-02-13 19:32:05'),
(86, 27, '47c027027b7f5415abf7d231a188c687.jpg', '2023-02-13 19:32:05', '2023-02-13 19:32:05'),
(87, 27, '0ec6264c22b498d48e3f2d1803bf02b6.jpg', '2023-02-13 19:32:05', '2023-02-13 19:32:05'),
(88, 27, 'd0c676a4d04eb7ca982d012443626911.jpg', '2023-02-13 19:32:05', '2023-02-13 19:32:05'),
(89, 28, 'd1fa41ef5eb7d398c6601f2a7182f966.jpg', '2023-02-14 02:53:12', '2023-02-14 02:53:12'),
(90, 28, '5eb92dfeceb3bbfbc87a095ef38cf440.jpg', '2023-02-14 02:53:12', '2023-02-14 02:53:12'),
(91, 29, '024fcc8c05beec466dfd221d7453d0b7.jpg', '2023-02-14 23:36:21', '2023-02-14 23:36:21'),
(92, 30, 'd529b821a7d90a65ea3b7c01ba79bfc9.jpg', '2023-02-15 02:35:52', '2023-02-15 02:35:52'),
(93, 30, 'adee71426a9b00acb8f2e79a3b8e6ae6.jpg', '2023-02-15 02:35:52', '2023-02-15 02:35:52'),
(94, 31, 'cfda8671899a0638509ae7c52ebccaf7.jpg', '2023-02-23 21:39:03', '2023-02-23 21:39:03'),
(95, 31, '62e4907ce9ec8f2319e5851f47b3da3b.jpg', '2023-02-23 21:39:03', '2023-02-23 21:39:03'),
(96, 32, '6a049c77004277fc711e3e565ffc3325.jpg', '2023-03-03 11:01:54', '2023-03-03 11:01:54'),
(97, 32, '29f929352a61fb8e77b407c889318f8c.jpg', '2023-03-03 11:01:54', '2023-03-03 11:01:54'),
(98, 32, 'd1ed0306c98cf41da81a3c4865c0febe.jpg', '2023-03-03 11:01:54', '2023-03-03 11:01:54'),
(99, 32, '7eeecc344ff3791bdf3ac453ccdd795a.jpg', '2023-03-03 11:01:54', '2023-03-03 11:01:54'),
(100, 32, '184ee67b839f29a8cd085c9a9a0459f9.jpg', '2023-03-03 11:01:54', '2023-03-03 11:01:54'),
(101, 32, '7608b2f2434ab3a20f824787c4fdb608.jpg', '2023-03-03 11:01:54', '2023-03-03 11:01:54'),
(102, 32, 'e458ef24f9d71106ad6147d7827e7e16.jpg', '2023-03-03 11:01:54', '2023-03-03 11:01:54'),
(103, 32, '628ca13d0961797dee90fe09c602f880.jpg', '2023-03-03 11:01:54', '2023-03-03 11:01:54'),
(104, 32, '515c1c41934c555e73c655b8c093f9e3.jpg', '2023-03-03 11:01:54', '2023-03-03 11:01:54'),
(105, 32, 'f8c3618e2b2bb394303a76659be8a425.jpg', '2023-03-03 11:01:54', '2023-03-03 11:01:54'),
(106, 33, 'a5e6e73a4b666d74c09baa8ea28010f0.jpg', '2023-03-04 11:55:07', '2023-03-04 11:55:07'),
(107, 33, '7bfab79e7686edd16c8ec172d0f1733f.jpg', '2023-03-04 11:55:07', '2023-03-04 11:55:07'),
(108, 33, 'bd76d19294107503617a111dafa767fa.jpg', '2023-03-04 11:55:07', '2023-03-04 11:55:07'),
(109, 33, 'f6f019a3e9671610fe049dda060503d1.jpg', '2023-03-04 11:55:07', '2023-03-04 11:55:07'),
(110, 33, '9d3dc1dde1ebd977cd3d65b4557f8092.jpg', '2023-03-04 11:55:07', '2023-03-04 11:55:07'),
(111, 33, 'c2c93c991bd2ad29ea567cdd9f5b1132.jpg', '2023-03-04 11:55:07', '2023-03-04 11:55:07'),
(112, 33, 'f4c5d82a56b54e3f828aa2ee903cd91c.jpg', '2023-03-04 11:55:07', '2023-03-04 11:55:07'),
(113, 33, '453391045ce2bd0216f377253fc1d53f.jpg', '2023-03-04 11:55:07', '2023-03-04 11:55:07'),
(114, 33, '99ced170be76e546004bed4693f59b19.jpg', '2023-03-04 11:55:07', '2023-03-04 11:55:07'),
(115, 34, 'e0930eb8d00e6c6125f7bc40cb7dd1c2.jpg', '2023-03-05 12:51:41', '2023-03-05 12:51:41'),
(116, 34, '8557889ea34f9b3c72e38dc15313daa6.jpg', '2023-03-05 12:56:07', '2023-03-05 12:56:07'),
(117, 34, '0ec48f5f9129b58127545df4b2896a8d.jpg', '2023-03-05 12:56:07', '2023-03-05 12:56:07'),
(118, 34, 'e5f76375b971f7a4f8711e4e9c5ac203.jpg', '2023-03-05 12:56:07', '2023-03-05 12:56:07'),
(119, 34, 'b505f0b1d0e1d1b22e53178870e49763.jpg', '2023-03-05 12:56:07', '2023-03-05 12:56:07'),
(120, 34, '50a1299c6443048ba0e929f5264105c2.jpg', '2023-03-05 12:56:07', '2023-03-05 12:56:07'),
(121, 34, 'b23886f0b19919485590ce609feafdf7.jpg', '2023-03-05 12:56:07', '2023-03-05 12:56:07'),
(122, 34, '333afa5c597bcaeb1af5c302505a78bd.jpg', '2023-03-05 12:56:07', '2023-03-05 12:56:07'),
(123, 34, '45109d0a5e3a807ab9dd30c33b5532fc.jpg', '2023-03-05 12:56:07', '2023-03-05 12:56:07'),
(124, 35, '47de000b35d856a4297098cb6c47add0.jpg', '2023-03-05 13:15:20', '2023-03-05 13:15:20'),
(125, 35, 'ee51922807fab6ce6379d945ed73cb38.jpg', '2023-03-05 13:15:20', '2023-03-05 13:15:20'),
(126, 36, 'ed724d259ade35649d3b49fe064329a0.jpg', '2023-03-05 14:09:43', '2023-03-05 14:09:43'),
(127, 36, '835f0b5b72b399b7fcee04ac5d0e1f4e.jpg', '2023-03-05 14:09:43', '2023-03-05 14:09:43'),
(128, 36, '28874fd6f767a1a11eb7ae65b8d67412.jpg', '2023-03-05 14:09:43', '2023-03-05 14:09:43'),
(129, 36, '0f4b11d4387fb7ab12d6457f02f1dc25.jpg', '2023-03-05 14:09:43', '2023-03-05 14:09:43'),
(130, 36, '0357797053c38a81ec5aabf94ae4a663.jpg', '2023-03-05 14:09:43', '2023-03-05 14:09:43'),
(131, 36, '7cd8aa297a6db76ef1605faaafda8570.jpg', '2023-03-05 14:09:43', '2023-03-05 14:09:43'),
(132, 36, '9ac06dd53bf68c55d0a548605fb075a9.jpg', '2023-03-05 14:09:43', '2023-03-05 14:09:43'),
(133, 36, 'd64df6d9f87db68ca5563d7068934ba8.jpg', '2023-03-05 14:09:43', '2023-03-05 14:09:43'),
(134, 36, '02658b835d0da6a3afcb2b652a52452e.jpg', '2023-03-05 14:09:43', '2023-03-05 14:09:43'),
(135, 37, 'd3e104ec8647e2cf4b966cd4145ede5b.jpg', '2023-03-05 16:11:36', '2023-03-05 16:11:36'),
(136, 37, '7910af6e2ab468ac80c7f88566774ecd.jpg', '2023-03-05 16:11:36', '2023-03-05 16:11:36'),
(137, 37, '957f50b4eccfbc10e04eff55d8eaf945.jpg', '2023-03-05 16:11:36', '2023-03-05 16:11:36'),
(138, 37, '4f728b6f501f8dbba3475d7b904ac054.jpg', '2023-03-05 16:11:36', '2023-03-05 16:11:36'),
(139, 37, '287cce939b39156e75ec807df77bbee1.jpg', '2023-03-05 16:11:36', '2023-03-05 16:11:36'),
(140, 37, 'da6098a01e7f98fcd7b83f5423ea7912.jpg', '2023-03-05 16:11:36', '2023-03-05 16:11:36'),
(141, 37, '99914fd62c803ca1247e4c6e2d39f435.jpg', '2023-03-05 16:11:36', '2023-03-05 16:11:36'),
(142, 37, '421f4b027de08dacb9e44b1317d194fb.jpg', '2023-03-05 16:11:36', '2023-03-05 16:11:36'),
(143, 37, 'dbe83d55645240fcd935ca16f86c81dd.jpg', '2023-03-05 16:11:36', '2023-03-05 16:11:36'),
(144, 37, '39a8b4295013886157d7eb2c03503c73.jpg', '2023-03-05 16:11:36', '2023-03-05 16:11:36'),
(145, 38, 'b5ce75911e635f24cc4bc0096ae986d7.png', '2023-03-05 18:10:52', '2023-03-05 18:10:52'),
(146, 39, 'ae766c92facf567696052b46b28260f6.jpg', '2023-03-06 15:23:11', '2023-03-06 15:23:11'),
(147, 39, 'dec219ea0aefeca6ed82b583ce54268d.jpg', '2023-03-06 15:23:11', '2023-03-06 15:23:11'),
(148, 39, '3feba6626303f8aa6d29a1dbd4e21c98.jpg', '2023-03-06 15:23:11', '2023-03-06 15:23:11'),
(149, 39, '8797e6fe506d5fa7ed6dd97a3ca32962.jpg', '2023-03-06 15:23:11', '2023-03-06 15:23:11'),
(150, 39, '8de56ce86edf09b58c36c5daaaea64bb.jpg', '2023-03-06 15:23:11', '2023-03-06 15:23:11'),
(151, 39, '841b4338e3b6aaa24de7415c1434e913.jpg', '2023-03-06 15:23:11', '2023-03-06 15:23:11'),
(152, 39, '1d39373809d4290deffd13bbdb61245a.jpg', '2023-03-06 15:23:11', '2023-03-06 15:23:11'),
(153, 39, '2416d4d6a61bfb1e99a8bc0e46845cae.jpg', '2023-03-06 15:23:11', '2023-03-06 15:23:11'),
(154, 40, '6fa89ed6be167e058c833c840a41cf81.jpg', '2023-03-06 15:58:53', '2023-03-06 15:58:53'),
(155, 40, '249430de662d59b3df474bf4424f2a4e.jpg', '2023-03-06 15:58:53', '2023-03-06 15:58:53'),
(156, 40, '0bb41cbac8dd8930c649807b85181342.jpg', '2023-03-06 15:58:53', '2023-03-06 15:58:53'),
(157, 40, 'a9508c506be5406f31fc466effb45973.jpg', '2023-03-06 15:58:53', '2023-03-06 15:58:53'),
(158, 40, 'b50b4436a5c25f12fa9ba12ca335ae0f.jpg', '2023-03-06 15:58:53', '2023-03-06 15:58:53'),
(159, 40, '8ab34f6e2a1679a8cdaaae7b7c339ead.jpg', '2023-03-06 15:58:53', '2023-03-06 15:58:53'),
(160, 41, '4fd37d16f2a3bf424df6cf27ddb72979.jpg', '2023-03-06 16:35:38', '2023-03-06 16:35:38'),
(161, 42, 'ad96663122be22efef8557502d2e03cd.jpg', '2023-03-06 16:55:34', '2023-03-06 16:55:34'),
(162, 42, '0020e16c9c1ba953fb7dc31abe890e69.jpg', '2023-03-06 16:55:34', '2023-03-06 16:55:34'),
(163, 42, 'fde4c1cbbe3970370dc3a353c1ab7e23.jpg', '2023-03-06 16:55:34', '2023-03-06 16:55:34'),
(164, 42, '2aaa648937fd7cbe3fcfba5482f6368b.jpg', '2023-03-06 16:55:34', '2023-03-06 16:55:34'),
(165, 42, '7eadd08f65a447169358b2a57ed650dc.jpg', '2023-03-06 16:55:34', '2023-03-06 16:55:34'),
(166, 43, '03dd2759fe1860dc127f533300cfb2bc.jpg', '2023-03-06 17:06:10', '2023-03-06 17:06:10'),
(167, 43, '8697dd66ccfef8aa36dfd3ea3a71a3c0.jpg', '2023-03-06 17:06:10', '2023-03-06 17:06:10'),
(168, 43, 'cf4b0fd5e2b113eab0b0eabe198b9d24.jpg', '2023-03-06 17:06:10', '2023-03-06 17:06:10'),
(169, 43, 'c920000a7486ad111a02859d5ef0ab86.jpg', '2023-03-06 17:06:10', '2023-03-06 17:06:10'),
(170, 43, '3404691e9e8ea8871ac2c9c46f5ea1b0.jpg', '2023-03-06 17:06:10', '2023-03-06 17:06:10'),
(171, 43, '5119377c8fde307b7148b2d6a8e94f3e.jpg', '2023-03-06 17:06:10', '2023-03-06 17:06:10'),
(172, 44, 'a362a69e90307b9a54fa048891835a8a.jpg', '2023-03-06 17:22:42', '2023-03-06 17:22:42'),
(173, 44, '633c18f252e5d5958a8c0776a0f184b3.jpg', '2023-03-06 17:22:42', '2023-03-06 17:22:42'),
(174, 44, 'b81bd5cd598eef6cb48482c382b044d0.jpg', '2023-03-06 17:22:42', '2023-03-06 17:22:42'),
(175, 44, '0796f5b8e966992f000be5f0bafd5926.jpg', '2023-03-06 17:22:42', '2023-03-06 17:22:42'),
(176, 44, '0bc7c39c13e592d1727f9dde82b8cdc1.jpg', '2023-03-06 17:22:42', '2023-03-06 17:22:42'),
(177, 44, 'f82faa469aa08d05f5136453f281efde.jpg', '2023-03-06 17:22:42', '2023-03-06 17:22:42'),
(178, 44, '5c6003893f2d3e3eeeda6eb9b7b4e301.jpg', '2023-03-06 17:22:42', '2023-03-06 17:22:42'),
(179, 44, '25d62feb30a30dda2d246505a13dc70f.jpg', '2023-03-06 17:22:42', '2023-03-06 17:22:42'),
(180, 44, 'a8250276e3ce93d590ba506f80aa6c19.jpg', '2023-03-06 17:22:42', '2023-03-06 17:22:42'),
(181, 44, '791674b1d27da9fe7cc4ce59612a1172.jpg', '2023-03-06 17:22:42', '2023-03-06 17:22:42'),
(182, 45, 'd5305f6f3f608e073ecf6ab7ab8ba340.jpg', '2023-03-07 01:24:11', '2023-03-07 01:24:11'),
(183, 46, '381ef3dd6a0478121576e1172fd999ae.jpg', '2023-03-07 04:06:13', '2023-03-07 04:06:13'),
(184, 46, '271db7ec027c61f9bbe0b7bfbf6fc44b.jpg', '2023-03-07 04:06:13', '2023-03-07 04:06:13'),
(185, 46, 'e42495137e5b1a5be4ea95d24439cad7.jpg', '2023-03-07 04:06:13', '2023-03-07 04:06:13'),
(186, 46, '121473cc77a91a328ee40e55c580c01b.jpg', '2023-03-07 04:06:13', '2023-03-07 04:06:13'),
(187, 46, 'c8bd61beb850c7d79b8b5bc8a3722fdd.jpg', '2023-03-07 04:06:13', '2023-03-07 04:06:13'),
(188, 46, '1d36137cdb666270ec9fc442cd3c9a5a.jpg', '2023-03-07 04:06:13', '2023-03-07 04:06:13'),
(189, 46, 'ed97333c7f9f33f15b9d77cd82b3a87d.jpg', '2023-03-07 04:06:13', '2023-03-07 04:06:13'),
(190, 46, '3cf07fe66c63d9ee942036c55bdd9d32.jpg', '2023-03-07 04:06:13', '2023-03-07 04:06:13'),
(191, 47, '4bfe339c8a9a21543ded094705c2e332.jpg', '2023-03-07 16:22:05', '2023-03-07 16:22:05'),
(192, 47, '0dc9e0085cd4642eb962749a40be1617.jpg', '2023-03-07 16:22:05', '2023-03-07 16:22:05'),
(193, 47, 'e8fbbf4bc2783a95e4a9580d56563c4d.jpg', '2023-03-07 16:22:05', '2023-03-07 16:22:05'),
(194, 47, 'fe0290b0c845e5c0cd5a8ac8f1f0d073.jpg', '2023-03-07 16:22:05', '2023-03-07 16:22:05'),
(195, 47, '5ca64c3ff3739b3151186281f42331fd.jpg', '2023-03-07 16:22:05', '2023-03-07 16:22:05'),
(196, 47, 'e03dd147b5f63db66a4ff7f3231cdf29.jpg', '2023-03-07 16:22:05', '2023-03-07 16:22:05'),
(197, 47, 'b72ccea2209b39afb206d4fde80393fc.jpg', '2023-03-07 16:22:05', '2023-03-07 16:22:05'),
(198, 47, '6812abfe17423b0a4606bedea1426a23.jpg', '2023-03-07 16:22:05', '2023-03-07 16:22:05'),
(199, 47, '33ea5d62687815b9dbef3589701fb417.jpg', '2023-03-07 16:22:05', '2023-03-07 16:22:05'),
(200, 47, 'bcd05616034a256be9b29e00111d1673.jpg', '2023-03-07 16:22:05', '2023-03-07 16:22:05'),
(201, 48, '72fdd95adc389474d3f3b1cc9774816d.jpg', '2023-03-10 19:10:27', '2023-03-10 19:10:27'),
(202, 48, 'c358858b732978f3fa1c1fb0c968ce5d.jpg', '2023-03-10 19:10:27', '2023-03-10 19:10:27'),
(203, 48, '776f568f00afa7f5c25143653e44e4a8.jpg', '2023-03-10 19:10:27', '2023-03-10 19:10:27'),
(204, 48, '3e681c5762846abc68069444c6219b0a.jpg', '2023-03-10 19:10:27', '2023-03-10 19:10:27'),
(205, 48, 'f2461c353977a844d695c153734bed47.jpg', '2023-03-10 19:10:27', '2023-03-10 19:10:27'),
(206, 48, '4cd59e79aa53f845ac7406913252c25b.jpg', '2023-03-10 19:10:27', '2023-03-10 19:10:27'),
(207, 49, '11de9bd06860286b50335ece38ccaf2d.jpg', '2023-03-11 01:52:57', '2023-03-11 01:52:57'),
(208, 50, 'b16debe9a9a66ebd3560856d056b7a76.jpg', '2023-03-21 01:14:36', '2023-03-21 01:14:36'),
(209, 50, 'f5f20dd7058be779292e7659c948ffef.jpg', '2023-03-21 01:14:36', '2023-03-21 01:14:36'),
(210, 50, 'e0af7b0c95f9147f3df1770820fc0af6.jpg', '2023-03-21 01:14:36', '2023-03-21 01:14:36'),
(211, 50, '76f7db218bdf777650b0d58183780a66.jpg', '2023-03-21 01:14:36', '2023-03-21 01:14:36'),
(212, 50, '76bce74937edd55e69c30bdd82c11d87.jpg', '2023-03-21 01:14:36', '2023-03-21 01:14:36'),
(213, 50, '81c784ccd6f82ae7d2b9b29b23e0529b.jpg', '2023-03-21 01:14:36', '2023-03-21 01:14:36'),
(214, 50, '8cd2b1ae7fc0fdf6b408057518dd4dca.jpg', '2023-03-21 01:14:36', '2023-03-21 01:14:36'),
(215, 51, 'b185aea4c5103baa85cf3208b38c66e6.jpg', '2023-03-21 12:06:13', '2023-03-21 12:06:13'),
(216, 51, '76848dd77ea1fde709d8d433dcbb7638.jpg', '2023-03-21 12:06:13', '2023-03-21 12:06:13'),
(217, 51, '5e024caba528362e44e54073c5b89b99.jpg', '2023-03-21 12:06:13', '2023-03-21 12:06:13'),
(218, 51, '4d249cfa9e718b1f5eba96535f78da90.jpg', '2023-03-21 12:06:13', '2023-03-21 12:06:13'),
(219, 51, '496eed5c59ca0b455d265ecc764ff04e.jpg', '2023-03-21 12:06:13', '2023-03-21 12:06:13'),
(220, 51, 'de7589db94b6f3b8bb8def4fd75d6c8f.jpg', '2023-03-21 12:06:13', '2023-03-21 12:06:13'),
(221, 52, '0b145e4aec47f75be7a4e537930525bf.jpg', '2023-03-22 02:51:59', '2023-03-22 02:51:59'),
(222, 53, 'f8d09f4775e968c631ef8d8bac4fe496.png', '2023-03-22 15:42:39', '2023-03-22 15:42:39'),
(223, 53, 'a8844522e353234ae4d25fac93db378d.jpg', '2023-03-22 16:40:19', '2023-03-22 16:40:19'),
(224, 54, 'b5e6de2aa698a2a0f345e2ae63f2378b.jpg', '2023-03-22 23:31:29', '2023-03-22 23:31:29'),
(225, 54, 'ef74ca7d2742cdb0f901aae59ef2fd0b.jpg', '2023-03-22 23:31:29', '2023-03-22 23:31:29'),
(226, 54, '37e26c7116fddd40d0130b3cd00ad128.jpg', '2023-03-22 23:31:29', '2023-03-22 23:31:29'),
(227, 54, '2006776bf304c445ad63797b83730be3.jpg', '2023-03-22 23:31:29', '2023-03-22 23:31:29'),
(228, 55, 'af8853473a427b1348aa4f89b7815ff8.jpg', '2023-03-22 23:55:11', '2023-03-22 23:55:11'),
(229, 56, 'fe600b2189339a870d35ddcc4af86384.jpg', '2023-03-23 00:30:18', '2023-03-23 00:30:18'),
(230, 56, '7801f028c1b2ea112668e11197c1d5b7.jpg', '2023-03-23 00:30:18', '2023-03-23 00:30:18'),
(231, 56, '956b7779c4b70b1533e359989ec5153f.jpg', '2023-03-23 00:30:18', '2023-03-23 00:30:18'),
(232, 56, 'f5de06bd464e65748872ae98c9d9cad6.jpg', '2023-03-23 00:30:18', '2023-03-23 00:30:18'),
(233, 56, 'eb39efec18211199f73460d7b7fd04c7.jpg', '2023-03-23 00:30:18', '2023-03-23 00:30:18'),
(234, 56, 'd10b0bf78a4669f2e3f866ac47580225.jpg', '2023-03-23 00:30:18', '2023-03-23 00:30:18'),
(235, 57, 'bf76036248f3d33d60e5817736ed62dd.jpg', '2023-03-23 13:48:48', '2023-03-23 13:48:48'),
(236, 57, '3792c0045e3b10b5cc8db44464a54ea7.jpg', '2023-03-23 13:48:48', '2023-03-23 13:48:48'),
(237, 57, '6a59e7a3d6870d5cf0c1501913a6fa49.jpg', '2023-03-23 13:48:48', '2023-03-23 13:48:48'),
(238, 57, 'c4bc7e3704e22e773ec8cca62b4614c5.jpg', '2023-03-23 13:48:48', '2023-03-23 13:48:48'),
(239, 57, 'a4942118fbb2b8880631cf455a0a677f.jpg', '2023-03-23 13:48:48', '2023-03-23 13:48:48'),
(240, 57, 'f1b795df5fd7c17d5fdcc8a062517560.jpg', '2023-03-23 13:48:48', '2023-03-23 13:48:48'),
(241, 57, '0ec85d6b636f06a040ecbefbea5bfca3.jpg', '2023-03-23 13:48:48', '2023-03-23 13:48:48'),
(242, 57, 'cd488821ce16733ca410c955e2ca3995.jpg', '2023-03-23 13:48:48', '2023-03-23 13:48:48'),
(243, 57, 'a188756cda9ab70ef5db8dae5dc6f1ff.jpg', '2023-03-23 13:48:48', '2023-03-23 13:48:48'),
(244, 58, '5dfefab8322e8831b7aaf6daa961d53a.jpg', '2023-03-24 12:57:09', '2023-03-24 12:57:09'),
(245, 58, 'c6e342e7250b52d601f44617045d2323.jpg', '2023-03-24 12:57:09', '2023-03-24 12:57:09'),
(246, 58, 'b2f213b1d3ecaf2bd0f1b25fddef6480.jpg', '2023-03-24 12:57:09', '2023-03-24 12:57:09'),
(247, 58, '9a7fb0f088c0f0936e9836f18282c023.jpg', '2023-03-24 12:57:09', '2023-03-24 12:57:09'),
(248, 58, '5b91eb8724eb1f88f30c248d93e789da.jpg', '2023-03-24 12:57:09', '2023-03-24 12:57:09'),
(249, 58, '6ff942c90d8c3aeb9c1ae85b27c261e1.jpg', '2023-03-24 12:57:09', '2023-03-24 12:57:09'),
(250, 58, '5dc7513833216fb90b1ad96eae433676.jpg', '2023-03-24 12:57:09', '2023-03-24 12:57:09'),
(251, 58, 'dd0bba9e2c0ab805b87742708dc2cbf6.jpg', '2023-03-24 12:57:09', '2023-03-24 12:57:09'),
(252, 59, '65b79e2d938d76e309fdaff20a9a053d.jpg', '2023-03-24 15:38:09', '2023-03-24 15:38:09'),
(253, 59, 'fa22253139f7c0a9754f776e85c0b66f.jpg', '2023-03-24 15:38:09', '2023-03-24 15:38:09'),
(254, 59, '8a5067c4ceebe69ed80051ac3ab96279.jpg', '2023-03-24 15:38:09', '2023-03-24 15:38:09'),
(255, 59, '5e50a7da7968dffbad3899a646ec0e44.jpg', '2023-03-24 15:38:09', '2023-03-24 15:38:09'),
(256, 59, 'e59c8812e977f5b1563c184d78f3b6cd.jpg', '2023-03-24 15:38:09', '2023-03-24 15:38:09'),
(257, 59, '0d8e7d382cd9751dd8954c2cbdbe5139.jpg', '2023-03-24 15:38:09', '2023-03-24 15:38:09'),
(258, 60, '8a81c8cee292fea0f181e04a5f35113b.jpg', '2023-03-24 16:51:18', '2023-03-24 16:51:18'),
(259, 60, '58cfc943c9ae0268949103c8d6e78d0e.jpg', '2023-03-24 16:51:18', '2023-03-24 16:51:18'),
(260, 61, '5f4719ced96580156144a7f1c6d8654f.jpg', '2023-03-24 17:26:53', '2023-03-24 17:26:53'),
(261, 63, 'acbce510aa129f7ce27cf819745f3420.jpg', '2023-03-25 00:04:57', '2023-03-25 00:04:57'),
(262, 63, '170d45c3054e33269a9f1879ad55afad.jpg', '2023-03-25 00:04:57', '2023-03-25 00:04:57'),
(263, 63, '7451927031941e850c1731f1026ce846.jpg', '2023-03-25 00:04:57', '2023-03-25 00:04:57'),
(264, 64, 'd82af7afddd37672e81fcd3952f5ad27.jpg', '2023-03-25 00:18:58', '2023-03-25 00:18:58'),
(265, 64, '35257a02198a1db66693088c61fb7256.jpg', '2023-03-25 00:18:58', '2023-03-25 00:18:58'),
(266, 64, 'c7ba5256ca0189720ab767865a7f23f8.jpg', '2023-03-25 00:18:58', '2023-03-25 00:18:58'),
(267, 64, '5d0b7325528f7337fa41d3ea63825156.jpg', '2023-03-25 00:18:58', '2023-03-25 00:18:58'),
(268, 64, '70a96aeb03fcda02c41a2fe69334fcf3.jpg', '2023-03-25 00:18:58', '2023-03-25 00:18:58'),
(269, 64, '3042b993d34a8b422731423a58a86d2e.jpg', '2023-03-25 00:18:58', '2023-03-25 00:18:58'),
(270, 64, 'bef203196b40a5fcbe38104ea5744346.jpg', '2023-03-25 00:18:58', '2023-03-25 00:18:58'),
(271, 60, '970cb632672dca6544cc6a2fce7c4fb7.jpg', '2023-03-25 00:27:21', '2023-03-25 00:27:21'),
(272, 60, '872a477a5e0abc519a6840c9bbb78b34.jpg', '2023-03-25 00:27:21', '2023-03-25 00:27:21'),
(273, 60, 'af2b7fa6a7dcd62af56add1a7fdcaef2.jpg', '2023-03-25 00:27:21', '2023-03-25 00:27:21'),
(274, 60, '64521644f2c32da329efc28673d2a14d.jpg', '2023-03-25 00:27:21', '2023-03-25 00:27:21'),
(275, 66, '3e2204db023695692820101fb6287040.jpg', '2023-03-26 03:19:18', '2023-03-26 03:19:18'),
(276, 67, '49a7fe774cc8b602d2c9404f1b9820f9.jpg', '2023-03-26 15:17:18', '2023-03-26 15:17:18'),
(277, 67, '8972a02cefd2c78549a515942769958d.jpg', '2023-03-26 15:17:18', '2023-03-26 15:17:18'),
(278, 67, 'b99e6c2e3bebe815e2cf2ea545588209.jpg', '2023-03-26 15:17:18', '2023-03-26 15:17:18'),
(279, 67, 'a5df0d2464f795c7e0d896ca9a936785.jpg', '2023-03-26 15:17:18', '2023-03-26 15:17:18'),
(280, 67, 'd185aa33409eb0d48d33b01c7751d2ae.jpg', '2023-03-26 15:17:18', '2023-03-26 15:17:18'),
(281, 67, '5c50e4066036db3137808b2b7c6e3bfc.jpg', '2023-03-26 15:17:18', '2023-03-26 15:17:18'),
(282, 67, 'dae6cb15e7ab853484d104055ed47da7.jpg', '2023-03-26 15:17:18', '2023-03-26 15:17:18'),
(283, 69, '5654f2c1b4d9481d6632cf378529a71f.jpg', '2023-03-29 13:06:51', '2023-03-29 13:06:51'),
(284, 69, '833e16b6b8e1b1bd03515eebccbdf312.jpg', '2023-03-29 13:06:51', '2023-03-29 13:06:51'),
(285, 69, 'eb6a23e1feba33c2f2714a66bc5a5a37.jpg', '2023-03-29 13:06:51', '2023-03-29 13:06:51'),
(286, 69, 'a8f7df188952fa37301693951a7d2035.jpg', '2023-03-29 13:06:51', '2023-03-29 13:06:51'),
(287, 70, '8720a30a91414f83dafcfa6c6a31a092.jpg', '2023-03-29 15:26:36', '2023-03-29 15:26:36'),
(288, 70, 'a2c1ed8d48922a757f55cb9c8348dbdc.jpg', '2023-03-29 15:26:36', '2023-03-29 15:26:36'),
(289, 70, 'a9cd85fb25d5af159128b3d7ef443375.jpg', '2023-03-29 15:26:36', '2023-03-29 15:26:36'),
(290, 70, '46be1e5c7c16be0039e800e0fd064d40.jpg', '2023-03-29 15:26:36', '2023-03-29 15:26:36'),
(291, 70, '99f9f70be5387427dc6dff8a1b7f4015.jpg', '2023-03-29 15:26:36', '2023-03-29 15:26:36'),
(292, 70, 'c5b76a6052e191de05df821fd88b2fb5.jpg', '2023-03-29 15:26:36', '2023-03-29 15:26:36'),
(293, 70, 'dad81527cf379d9199d11d16b02913f7.jpg', '2023-03-29 15:26:36', '2023-03-29 15:26:36'),
(294, 70, '6f10546ce7e3ce35eec16cdb196e6c42.jpg', '2023-03-29 15:26:36', '2023-03-29 15:26:36'),
(295, 71, 'ac024c81bd06e1a21ccf948c2f7d9a8b.jpg', '2023-03-29 18:08:42', '2023-03-29 18:08:42'),
(296, 72, 'c21797700725c53d02da27ce54885b0d.jpg', '2023-03-29 19:15:52', '2023-03-29 19:15:52'),
(297, 72, '8f16a0da0bfdc3f3d90b1af7326e3956.jpg', '2023-03-29 19:15:52', '2023-03-29 19:15:52'),
(298, 72, 'ce7cb5ebf230d9c63c6c63003af7ceee.jpg', '2023-03-29 19:15:52', '2023-03-29 19:15:52'),
(299, 72, '5e7061bca39384260f1dd64126341232.jpg', '2023-03-29 19:15:52', '2023-03-29 19:15:52'),
(300, 74, 'ce8ac056c3fa36fc9a9bb6b852b69b97.jpg', '2023-03-30 16:48:34', '2023-03-30 16:48:34'),
(301, 74, '411a7f80e5cc527a696c2d9164d9d8f9.jpg', '2023-03-30 16:48:34', '2023-03-30 16:48:34'),
(302, 74, 'ed0078e14d0a26b6437e31c3e33c5a31.jpg', '2023-03-30 16:48:34', '2023-03-30 16:48:34'),
(303, 74, 'af62a0715fdcab61a1519827c4f643c9.jpg', '2023-03-30 16:48:34', '2023-03-30 16:48:34'),
(304, 74, '958f6a28269abf5e67e4ca5297fa6296.jpg', '2023-03-30 16:48:34', '2023-03-30 16:48:34'),
(305, 74, '06ff4139c1e575c373260f37991705aa.jpg', '2023-03-30 16:48:34', '2023-03-30 16:48:34'),
(306, 74, '3973a41d3b65114634f946a2f48058e0.jpg', '2023-03-30 16:48:34', '2023-03-30 16:48:34'),
(307, 75, 'a24d16df516f94019021193d3d598578.jpg', '2023-03-31 12:42:56', '2023-03-31 12:42:56'),
(308, 75, 'c55f2fab3ef54ac6460387f3b7533492.jpg', '2023-03-31 12:42:56', '2023-03-31 12:42:56'),
(309, 75, 'c56a68290cc9f318c04a7d1a4b047a6f.jpg', '2023-03-31 12:42:56', '2023-03-31 12:42:56'),
(310, 75, '848777a3e907149b097f7b1c70f2dc17.jpg', '2023-03-31 12:42:56', '2023-03-31 12:42:56'),
(311, 75, '04c423ceecaa5535fe0e5b9121a23cf2.jpg', '2023-03-31 12:42:56', '2023-03-31 12:42:56'),
(312, 75, '310edae918c67eb9f4cfeb34ad924b5b.jpg', '2023-03-31 12:42:56', '2023-03-31 12:42:56'),
(313, 75, 'fb1d4113bbfebacd5c7125f106813c69.jpg', '2023-03-31 12:42:56', '2023-03-31 12:42:56'),
(314, 75, '6fa93a149dd6786b90d39bef10b3fbbf.jpg', '2023-03-31 12:42:56', '2023-03-31 12:42:56'),
(315, 75, '4ea7e31a7879e6abdc27de1e58f6b3e8.jpg', '2023-03-31 12:42:56', '2023-03-31 12:42:56'),
(316, 75, '3e49426199cb2dca756e9f9d25344f3d.jpg', '2023-03-31 12:42:56', '2023-03-31 12:42:56'),
(317, 76, '9c91deb9fe3e6d0841a39111005b8ffe.jpg', '2023-04-05 19:34:58', '2023-04-05 19:34:58'),
(318, 76, 'b3093574b2c8c0bd4f94065ab897eb57.jpg', '2023-04-05 19:34:58', '2023-04-05 19:34:58'),
(319, 76, 'f0fa473028ca68d9c465351a53b33c0c.jpg', '2023-04-05 19:34:58', '2023-04-05 19:34:58'),
(320, 77, 'ece5a3f24f6d0e872640503c8241a5cf.jpg', '2023-04-06 16:17:37', '2023-04-06 16:17:37'),
(321, 77, 'f9f52b3fb39938bf0fe2443dfa8b885a.jpg', '2023-04-06 16:17:37', '2023-04-06 16:17:37'),
(322, 77, 'ba973a982eb1d5e328d061a131c85d20.jpg', '2023-04-06 16:17:37', '2023-04-06 16:17:37'),
(323, 77, '46b3ef6881d22f2e701120335ba97acf.jpg', '2023-04-06 16:17:37', '2023-04-06 16:17:37'),
(324, 77, 'f51f2ec1ae7e62e0083131340379cfb2.jpg', '2023-04-06 16:17:37', '2023-04-06 16:17:37'),
(325, 78, '67b1cef53cd46bcaf1294d4c896231ab.jpg', '2023-04-06 16:26:27', '2023-04-06 16:26:27'),
(326, 78, 'd2c41c40bd6fae75a60015806561a625.jpg', '2023-04-06 16:26:27', '2023-04-06 16:26:27'),
(327, 80, '37ef22c2fb2b0d569bff51aa9212f5da.jpg', '2023-04-10 14:29:57', '2023-04-10 14:29:57'),
(328, 80, '46010703708a8e19de2f538e07e9a3e8.jpg', '2023-04-10 14:29:57', '2023-04-10 14:29:57'),
(329, 80, '95fd682baf0632dc1b125460de6b73f7.jpg', '2023-04-10 14:29:57', '2023-04-10 14:29:57'),
(330, 82, '967012de31f0b68d799c63fdfb9d04d6.jpg', '2023-04-12 11:29:51', '2023-04-12 11:29:51'),
(331, 82, '0e0708af7fd36504d592c309b0a3d1a7.jpg', '2023-04-12 11:29:51', '2023-04-12 11:29:51'),
(332, 82, '240abfacce01908a076a222c9c4c3138.jpg', '2023-04-12 11:29:51', '2023-04-12 11:29:51'),
(333, 82, '5809c92896621e4386dd1757666e3afd.jpg', '2023-04-12 11:29:51', '2023-04-12 11:29:51'),
(334, 82, 'e4ca26194133e5198ff0bbb457dd21bd.jpg', '2023-04-12 11:29:51', '2023-04-12 11:29:51'),
(335, 83, '55b5e5f4adb34f87105fdc0b47c2ec1a.png', '2023-04-12 16:26:02', '2023-04-12 16:26:02'),
(336, 84, '723d47e67b2fc245637d0031e12bc43c.jpg', '2023-04-12 16:26:18', '2023-04-12 16:26:18'),
(337, 84, '2f936e62df43ca503296823bfbb92c24.jpg', '2023-04-12 16:26:18', '2023-04-12 16:26:18'),
(338, 85, 'e024edd781cb2df2c80852b1c0e6d7b1.jpg', '2023-04-12 20:09:25', '2023-04-12 20:09:25'),
(339, 85, 'df8844d040a8e0e291aaccef08b0e1d5.jpg', '2023-04-12 20:09:25', '2023-04-12 20:09:25'),
(340, 85, '7bbf7b73ed58d9c6380e4587ea30b63f.jpg', '2023-04-12 20:09:25', '2023-04-12 20:09:25'),
(341, 85, '4e5472b8dafb27a0037a573b19045cb0.jpg', '2023-04-12 20:09:25', '2023-04-12 20:09:25'),
(342, 85, 'c5451dfb76a165302730f4b4734d5690.jpg', '2023-04-12 20:09:25', '2023-04-12 20:09:25'),
(343, 86, '27840dbde1dbbd559603db8148051472.jpg', '2023-04-12 20:25:56', '2023-04-12 20:25:56'),
(344, 86, '9fd16dcff5f4b023bcee0b64927d8670.jpg', '2023-04-12 20:25:56', '2023-04-12 20:25:56'),
(345, 86, '8fe2bf14ad69569d66a6f1ac8d80987b.jpg', '2023-04-12 20:25:56', '2023-04-12 20:25:56'),
(346, 86, 'c45826568137cfdb3fed494c2806902b.jpg', '2023-04-12 20:25:56', '2023-04-12 20:25:56'),
(347, 86, '2eee0c8e19172953754a49790b0f7df3.jpg', '2023-04-12 20:25:56', '2023-04-12 20:25:56'),
(348, 86, '8237f1071779d00ab5654884948286c8.jpg', '2023-04-12 20:25:56', '2023-04-12 20:25:56'),
(349, 87, 'd3d8f9e58ae1e259bc6c043048c8a135.jpg', '2023-04-12 22:27:20', '2023-04-12 22:27:20'),
(350, 87, '42af024c99821e4e96c1df835c598fa4.jpg', '2023-04-12 22:27:20', '2023-04-12 22:27:20'),
(351, 87, '47440745c314611bd4cf366005bbbb9c.jpg', '2023-04-12 22:27:20', '2023-04-12 22:27:20'),
(352, 87, '29bbb953a105a5e36d3256fa45ef1ea4.jpg', '2023-04-12 22:27:20', '2023-04-12 22:27:20'),
(353, 87, 'dbc5777deb585f17eb5fb7f40e737bae.jpg', '2023-04-12 22:27:20', '2023-04-12 22:27:20'),
(354, 87, '3800f4a7c3a96d2dc1f9d71f603176cd.jpg', '2023-04-12 22:27:20', '2023-04-12 22:27:20'),
(355, 88, 'cf0604bf65db8cd739e22a91c334f1eb.jpg', '2023-04-13 14:13:28', '2023-04-13 14:13:28'),
(356, 88, '949531c6806223283583472fdc75bec9.jpg', '2023-04-13 14:13:28', '2023-04-13 14:13:28'),
(357, 88, '27963bec8b4ff38a8007598ca6e669df.jpg', '2023-04-13 14:13:28', '2023-04-13 14:13:28'),
(358, 90, 'c87ad6d9c3efdba70bb65a5db860a6f2.jpg', '2023-04-14 13:30:11', '2023-04-14 13:30:11'),
(359, 90, '9406773a99ec0d6da50dd8b4b5fa8c45.jpg', '2023-04-14 13:30:11', '2023-04-14 13:30:11'),
(360, 90, 'fbc4088b94df4e89c301e31b89cd98c7.jpg', '2023-04-14 13:30:11', '2023-04-14 13:30:11'),
(361, 90, '3d800d6239127802ed6294908b1a62e4.jpg', '2023-04-14 13:30:11', '2023-04-14 13:30:11'),
(362, 90, '83cffcb342b6525267e62bec68a76afd.jpg', '2023-04-14 13:30:11', '2023-04-14 13:30:11'),
(363, 91, '5132793b1ae5b69fbca05e8e36678594.jpg', '2023-04-14 14:00:40', '2023-04-14 14:00:40'),
(364, 91, '2a96ac4c1d39143b41bbf9f39097c619.jpg', '2023-04-14 14:00:40', '2023-04-14 14:00:40'),
(365, 91, 'c946c8a891446ae2ef28701ddba5924a.jpg', '2023-04-14 14:00:40', '2023-04-14 14:00:40'),
(366, 91, 'e9d89a717efe58092e7f07e4e2a5722d.jpg', '2023-04-14 14:00:40', '2023-04-14 14:00:40'),
(367, 91, '8f386104c5d7e23ba7d7b4da6c01f0f5.jpg', '2023-04-14 14:00:40', '2023-04-14 14:00:40'),
(368, 91, 'cafe94efc472965993bf72d53cda48ce.jpg', '2023-04-14 14:00:40', '2023-04-14 14:00:40'),
(369, 91, '7d25769273f75ed846c8950271f23563.jpg', '2023-04-14 14:00:40', '2023-04-14 14:00:40'),
(370, 91, '71ff97f08fb54c5dd35365595b3cac5d.jpg', '2023-04-14 14:00:40', '2023-04-14 14:00:40'),
(371, 91, '1e11cd1e6f964120822adbc9f9ffb277.jpg', '2023-04-14 14:00:40', '2023-04-14 14:00:40'),
(372, 92, '654f5932938f087baf4845089200687b.jpg', '2023-04-14 15:20:33', '2023-04-14 15:20:33'),
(373, 92, '0df6a9791bc3e9638529ef494ec8d3fc.jpg', '2023-04-14 15:20:33', '2023-04-14 15:20:33'),
(374, 92, '3f3578c7a914bacea4ce63f98f995413.jpg', '2023-04-14 15:20:33', '2023-04-14 15:20:33'),
(375, 92, '1fa01a2bf3236ae5eb921731757efb41.jpg', '2023-04-14 15:20:33', '2023-04-14 15:20:33'),
(376, 92, '98814f82ce1d37b2ae6036d437e06fb1.jpg', '2023-04-14 15:20:33', '2023-04-14 15:20:33'),
(377, 93, '478f62fe6cc17b1b2365c99584d508e7.jpg', '2023-04-14 16:26:35', '2023-04-14 16:26:35'),
(378, 93, '79a0a54378a9c1793317754737cfc8d5.jpg', '2023-04-14 16:26:35', '2023-04-14 16:26:35'),
(379, 93, '8dde26151ed6a7691682ad9d2fa9ba76.jpg', '2023-04-14 16:26:35', '2023-04-14 16:26:35'),
(380, 93, 'e728d749539f56ff58287d2563bd79be.jpg', '2023-04-14 16:26:35', '2023-04-14 16:26:35'),
(381, 93, '7e46ebf27af15b18faca9aaf90f32504.jpg', '2023-04-14 16:26:35', '2023-04-14 16:26:35'),
(382, 94, 'f37512e531e600f3704772844a4d5bdf.jpg', '2023-04-14 16:41:47', '2023-04-14 16:41:47'),
(383, 95, '783929df5539dee953f70937599dfab9.jpg', '2023-04-14 16:49:59', '2023-04-14 16:49:59'),
(384, 98, '6c8f7e3de6e961dbd30deb071707e72b.jpg', '2023-04-15 12:12:47', '2023-04-15 12:12:47'),
(385, 98, '2cac2b8ab377976f27d159b53af92308.jpg', '2023-04-15 12:12:47', '2023-04-15 12:12:47'),
(386, 98, 'db63b2c07e8d2d89aaea1b9f44ac906b.jpg', '2023-04-15 12:12:47', '2023-04-15 12:12:47'),
(387, 98, 'd74a107882b8b755799455e457af344b.jpg', '2023-04-15 12:12:47', '2023-04-15 12:12:47'),
(388, 98, '45f5547fcee0fe4f98173a718afe4707.jpg', '2023-04-15 12:12:47', '2023-04-15 12:12:47'),
(389, 98, '54acc7e79f26d19d02d38a8d40c73eb0.jpg', '2023-04-15 12:12:47', '2023-04-15 12:12:47'),
(390, 98, '62653d08b9e6af95738407d44c721f65.png', '2023-04-15 12:12:47', '2023-04-15 12:12:47'),
(391, 98, 'f7cd8fae4a4a4cdf9144e4b519191a91.jpg', '2023-04-15 12:12:47', '2023-04-15 12:12:47'),
(392, 98, '8ff94cbe413124ac37acd81515ea0ed7.jpg', '2023-04-15 12:12:47', '2023-04-15 12:12:47'),
(393, 98, 'fcae4c3bad79c58d07d950562257e68c.jpg', '2023-04-15 12:12:47', '2023-04-15 12:12:47'),
(394, 99, '680582e8a877c833993c2288e8bb7d72.jpg', '2023-04-15 23:10:43', '2023-04-15 23:10:43'),
(395, 99, 'ae7a456fdcd42bd4afa8230589659e9d.jpg', '2023-04-15 23:10:43', '2023-04-15 23:10:43'),
(396, 100, 'da045902a9e7f14a349e38d0932990b1.jpg', '2023-04-16 02:37:49', '2023-04-16 02:37:49'),
(397, 101, 'e582b5ad800a358f7f533079352fb524.jpg', '2023-04-17 12:09:58', '2023-04-17 12:09:58'),
(398, 101, '2dea40145d44c9f6842b7bc2d9ef4ed7.jpg', '2023-04-17 12:09:58', '2023-04-17 12:09:58'),
(399, 101, '0c3fcd40cb74fcb8f6f2b4adab0ede7a.jpg', '2023-04-17 12:09:58', '2023-04-17 12:09:58'),
(400, 101, 'e3d36ecba7917bb15eb01ad1e80c31a7.jpg', '2023-04-17 12:09:58', '2023-04-17 12:09:58'),
(401, 101, 'ee12289bf8185c92611008195f078961.jpg', '2023-04-17 12:09:58', '2023-04-17 12:09:58'),
(402, 105, '0cb4e1348e1ff87e83b24f115b19f3b5.jpg', '2023-04-18 20:03:16', '2023-04-18 20:03:16'),
(403, 105, '36dc2b32a3c5aa0e93f27f222e7c82f0.jpg', '2023-04-18 20:03:16', '2023-04-18 20:03:16'),
(404, 105, 'b21e534a3f7cab02f84063201ca583e9.jpg', '2023-04-18 20:03:16', '2023-04-18 20:03:16'),
(405, 105, 'ce91a6149326fc3ad04814aab6147126.jpg', '2023-04-18 20:03:16', '2023-04-18 20:03:16'),
(406, 105, 'cb9ff103d52724611c0c462c3d1c7d21.jpg', '2023-04-18 20:03:16', '2023-04-18 20:03:16'),
(407, 105, 'd9257f5e0012309f0b0189e5b21bf2c4.jpg', '2023-04-18 20:03:16', '2023-04-18 20:03:16'),
(408, 105, 'c46a3061f1921fe2b7477edb352df4dd.jpg', '2023-04-18 20:03:16', '2023-04-18 20:03:16'),
(409, 106, '8698d28de490d4d3ac88c75e6e792677.jpg', '2023-04-18 21:40:40', '2023-04-18 21:40:40'),
(410, 106, '8cbad6b5b05723bb6c19bce24f49a717.jpg', '2023-04-18 21:40:40', '2023-04-18 21:40:40'),
(411, 106, '9db08ca1bf3abe87f492cddafcc72345.jpg', '2023-04-18 21:40:40', '2023-04-18 21:40:40'),
(412, 106, '0dc60fafa3880f70042f50aebadcc503.jpg', '2023-04-18 21:40:40', '2023-04-18 21:40:40'),
(413, 106, '4a02965d056399d8cf2d2520f4cb7ba0.jpg', '2023-04-18 21:40:40', '2023-04-18 21:40:40'),
(414, 106, '0d8e3aee116f25ab70966a45201cf760.jpg', '2023-04-18 21:40:40', '2023-04-18 21:40:40'),
(415, 106, '5c0027ecf9bac138c6d5a041e3f45fca.jpg', '2023-04-18 21:40:40', '2023-04-18 21:40:40'),
(416, 106, '95ca237623f1d174f71eafc33141ba2a.jpg', '2023-04-18 21:40:40', '2023-04-18 21:40:40'),
(417, 107, '58fedaa685d8ffd9c6ab70cc6910ff34.jpg', '2023-04-18 21:49:25', '2023-04-18 21:49:25'),
(418, 107, '553a5ecae5cdae671901512af26f43cb.jpg', '2023-04-18 21:49:25', '2023-04-18 21:49:25'),
(419, 107, 'dd74a3481941182846e5eeafac995b32.jpg', '2023-04-18 21:49:25', '2023-04-18 21:49:25'),
(420, 107, '3a8642b718a330c3e9d2da391cb4953c.jpg', '2023-04-18 21:49:25', '2023-04-18 21:49:25'),
(421, 107, 'fb3c6117c84b49ac4d64ab589eefeb9f.jpg', '2023-04-18 21:49:25', '2023-04-18 21:49:25'),
(422, 108, '895a43f083bac1431d8de14f0b90bf54.jpg', '2023-04-19 18:08:24', '2023-04-19 18:08:24'),
(423, 108, '35f5e51bb8def6e0334f861b28c2e173.jpg', '2023-04-19 18:08:24', '2023-04-19 18:08:24'),
(424, 108, '73e5ae332bb8482de22a8aa14cdc7e2e.jpg', '2023-04-19 18:08:24', '2023-04-19 18:08:24'),
(425, 108, '157744ff39afe946664cb6f6b1bf25f2.jpg', '2023-04-19 18:08:24', '2023-04-19 18:08:24'),
(426, 108, 'a89ec39aa5060ac59fc26822fa3d2f86.jpg', '2023-04-19 18:08:24', '2023-04-19 18:08:24'),
(427, 108, 'ebe44ebf4847115e4306f676073afcfa.jpg', '2023-04-19 18:08:24', '2023-04-19 18:08:24'),
(428, 109, '565e0ea761dc52f96ece69b2d677288a.jpg', '2023-04-19 21:15:36', '2023-04-19 21:15:36'),
(429, 109, '54c72bf34322cdb56c56ff2a32beab88.jpg', '2023-04-19 21:15:36', '2023-04-19 21:15:36'),
(430, 109, '6e74cc2f2818a7e028b6a422e1816c01.jpg', '2023-04-19 21:15:36', '2023-04-19 21:15:36'),
(431, 109, '5397a4e7394d79bad9c770666c1052ed.jpg', '2023-04-19 21:15:36', '2023-04-19 21:15:36'),
(432, 109, 'a82fedcd26bcaa9a4ef77e72b241bd3f.jpg', '2023-04-19 21:15:36', '2023-04-19 21:15:36'),
(433, 111, '99e9b136bdf61bbf9a926ceb92aa3959.jpg', '2023-04-20 10:26:37', '2023-04-20 10:26:37'),
(434, 113, 'cdbd68fe2ca7456d210ab6d0f7874146.jpg', '2023-04-21 05:44:11', '2023-04-21 05:44:11'),
(435, 113, 'cd52160abf5474aca2e4b8cb1e42e79b.jpg', '2023-04-21 05:44:11', '2023-04-21 05:44:11'),
(436, 113, '7cda7a7e772261417a168596b6f46e3d.jpg', '2023-04-21 05:44:11', '2023-04-21 05:44:11'),
(437, 113, '5874151af31db9f7f5b81b36f1370283.jpg', '2023-04-21 05:44:11', '2023-04-21 05:44:11'),
(438, 113, '6eb45d453e423c176a575b5dcdf6d329.jpg', '2023-04-21 05:44:11', '2023-04-21 05:44:11'),
(439, 115, 'edc65cb1a018cb21e0d86b51a6b2541a.jpg', '2023-04-21 23:27:59', '2023-04-21 23:27:59'),
(440, 116, '4f60a15a9106e0c28935f903f757359f.jpg', '2023-04-23 16:00:33', '2023-04-23 16:00:33'),
(441, 117, 'd535a6c35d2b7fc9ee02ff8248eba22e.jpg', '2023-04-24 12:46:57', '2023-04-24 12:46:57'),
(442, 119, '1889941cf24daa4668fa145289a16fa3.jpg', '2023-04-24 13:11:56', '2023-04-24 13:11:56'),
(443, 119, '3dbcc0e4459eef3b47fde9dd3b79f208.jpg', '2023-04-24 13:11:56', '2023-04-24 13:11:56'),
(444, 119, 'ed6d301db59469da3c1d445783c67d03.jpg', '2023-04-24 13:11:56', '2023-04-24 13:11:56'),
(445, 119, 'd5b053a0dbb5d93e3c666584c1bc920e.jpg', '2023-04-24 13:11:56', '2023-04-24 13:11:56'),
(446, 119, '07774ab5be50c1786cfeeacd3d37a1cb.jpg', '2023-04-24 13:11:56', '2023-04-24 13:11:56'),
(447, 119, '085a2d58742ad8fe4f5014ec06e0aee7.jpg', '2023-04-24 13:11:56', '2023-04-24 13:11:56'),
(448, 119, 'a0b4998805743c61d829fb2e22401fbb.jpg', '2023-04-24 13:11:56', '2023-04-24 13:11:56'),
(449, 119, '8b9d7a915c3b5047c94ebff97987f271.jpg', '2023-04-24 13:11:56', '2023-04-24 13:11:56'),
(450, 119, '2802ab76bc30288e40532a06840bb0c4.jpg', '2023-04-24 13:11:56', '2023-04-24 13:11:56'),
(452, 120, '47132ac3e7fd9fb6fd4c736e6b1e022b.jpg', '2023-04-25 01:53:11', '2023-04-25 01:53:11'),
(453, 120, '7180f583e34c8f20eeb547968a24b518.jpg', '2023-04-25 01:53:11', '2023-04-25 01:53:11'),
(454, 120, '7a9e3325450d4327490792bc0f9441bd.jpg', '2023-04-25 01:53:11', '2023-04-25 01:53:11'),
(455, 120, '7be09379fff1509025a7ad4c40b4416b.jpg', '2023-04-25 01:53:11', '2023-04-25 01:53:11'),
(456, 120, '1f4d9bc32148ae76bbcc95b4a6230361.jpg', '2023-04-25 01:53:11', '2023-04-25 01:53:11'),
(457, 122, '5a79865030ce9b334070bde15cd3204f.jpg', '2023-04-25 13:20:57', '2023-04-25 13:20:57'),
(458, 122, '60a4860085bb657a8ce3821ec6e797ed.jpg', '2023-04-25 13:20:57', '2023-04-25 13:20:57'),
(459, 122, '1394dcbfa145ed8916ad35df29471009.jpg', '2023-04-25 13:20:57', '2023-04-25 13:20:57'),
(460, 122, '43056a6510fb0a0f5b162f361df1b240.jpg', '2023-04-25 13:20:57', '2023-04-25 13:20:57'),
(461, 122, '4086f2aa0351446aa0e0607110c9a2c7.jpg', '2023-04-25 13:20:57', '2023-04-25 13:20:57'),
(462, 122, '643b42dc730f1652f634de9770899a48.jpg', '2023-04-25 13:20:57', '2023-04-25 13:20:57'),
(463, 122, '2df9bccc64f7db513ea2570ea9a33620.jpg', '2023-04-25 13:20:57', '2023-04-25 13:20:57'),
(464, 123, 'e1a60b10fdf32f3531ca491b5f682762.jpg', '2023-04-25 13:38:46', '2023-04-25 13:38:46'),
(465, 123, 'c30d586ce8db7284d9d07e33f0818f07.jpg', '2023-04-25 13:38:46', '2023-04-25 13:38:46'),
(466, 123, '49962b5a79c6aa59f825e537a9d5e2d9.jpg', '2023-04-25 13:38:46', '2023-04-25 13:38:46'),
(467, 123, 'a4f05b1c144e5d590a38b480768e145e.jpg', '2023-04-25 13:38:46', '2023-04-25 13:38:46'),
(468, 124, 'c22e48e7a6227c8c99b51f55815fa33e.jpg', '2023-04-25 19:28:47', '2023-04-25 19:28:47'),
(469, 125, '2d517e6d7b5bdc860f84960fce4d0e0b.jpg', '2023-05-01 16:12:40', '2023-05-01 16:12:40'),
(470, 126, 'f184dc01712a85fca66b956009a13cf1.jpg', '2023-05-01 19:03:00', '2023-05-01 19:03:00'),
(471, 126, '63d9502f8ab7a2d38abe296b14e9d716.jpg', '2023-05-01 19:03:00', '2023-05-01 19:03:00'),
(472, 126, '5467e182b76159066eae9682f3317fe3.jpg', '2023-05-01 19:03:00', '2023-05-01 19:03:00'),
(473, 126, '0bd20eccfdd80f0d241008e2d3e79263.jpg', '2023-05-01 19:03:00', '2023-05-01 19:03:00'),
(474, 126, '7073e3877d6cc886307d5a73cd666f08.jpg', '2023-05-01 19:03:00', '2023-05-01 19:03:00'),
(475, 126, '33244dbbfc66c0273bea97151577904d.jpg', '2023-05-01 19:03:00', '2023-05-01 19:03:00'),
(476, 127, 'dc37c6e6ab34da5d8796904bc031ae60.jpg', '2023-05-02 13:03:08', '2023-05-02 13:03:08'),
(477, 129, '06acbf3be7ab87d760165656d5c17766.jpg', '2023-05-02 17:04:19', '2023-05-02 17:04:19'),
(478, 130, 'c4637d98a84b0a4dda8e184a0ba5a307.jpg', '2023-05-02 20:05:28', '2023-05-02 20:05:28'),
(479, 130, '9964cc5142ee4cdd8e7705c9b623e3fa.jpg', '2023-05-02 20:05:28', '2023-05-02 20:05:28'),
(480, 130, '68e527f6723e614826d980d546d44e63.jpg', '2023-05-02 20:05:28', '2023-05-02 20:05:28'),
(481, 130, 'bd798753d6af86a603cd3e8cd9597f39.jpg', '2023-05-02 20:05:28', '2023-05-02 20:05:28'),
(482, 130, 'e183205ca51cbdd7dac8a3e7f8d7c60a.jpg', '2023-05-02 20:05:28', '2023-05-02 20:05:28'),
(483, 130, '4e31206430e37ff6c1bf76950e0e6be5.jpg', '2023-05-02 20:05:28', '2023-05-02 20:05:28'),
(484, 131, '19db4f0dda8b751c45c4fc53473e7017.jpg', '2023-05-03 20:45:00', '2023-05-03 20:45:00'),
(485, 132, 'e735f665b9511bda8ccf4eaf5b9ffe8f.jpg', '2023-05-03 22:40:41', '2023-05-03 22:40:41'),
(486, 132, 'c0abecd765e085bd7b6ed2d06a33a1f9.jpg', '2023-05-03 22:40:41', '2023-05-03 22:40:41'),
(487, 132, '43cd94804078b5b56da27cbb4325d3a5.jpg', '2023-05-03 22:40:41', '2023-05-03 22:40:41'),
(488, 132, '3f0d7f988b17f88e0b9659ac8ccf7193.jpg', '2023-05-03 22:40:41', '2023-05-03 22:40:41'),
(489, 132, '9495fd7f1aeb3256fd42bb38ea8fdb02.jpg', '2023-05-03 22:40:41', '2023-05-03 22:40:41'),
(490, 132, '38b70c3bbe815c94d077136df93b006b.jpg', '2023-05-03 22:40:41', '2023-05-03 22:40:41'),
(491, 132, '212258b89e9fd7445a67fd41f8ae18bd.jpg', '2023-05-03 22:40:41', '2023-05-03 22:40:41'),
(492, 132, 'db9ce7e04c558079ded74011236c19c5.jpg', '2023-05-03 22:40:41', '2023-05-03 22:40:41'),
(493, 133, '0494446613cf1c31437a93aacd5268ce.jpg', '2023-05-03 22:41:36', '2023-05-03 22:41:36'),
(494, 134, '622d620aec4e953c0822b609ef99e4a6.jpg', '2023-05-05 15:03:15', '2023-05-05 15:03:15'),
(495, 134, '9a402751843662524a733997f492a316.jpg', '2023-05-05 15:03:15', '2023-05-05 15:03:15'),
(496, 135, 'd632620af1a444c5887ed9eff1d0ec8e.jpg', '2023-05-06 11:28:40', '2023-05-06 11:28:40'),
(497, 135, '34928f6f2ab1bfb1948fd3d0483b2a6d.jpg', '2023-05-06 11:28:40', '2023-05-06 11:28:40'),
(498, 136, 'd814883e6442ae2d236da75d07398e72.jpg', '2023-05-06 13:03:15', '2023-05-06 13:03:15'),
(499, 136, '7fbb48552a9a3977346880c90ff0a945.jpg', '2023-05-06 13:03:15', '2023-05-06 13:03:15'),
(500, 136, '9c0461a248719017438a5006cdf37796.jpg', '2023-05-06 13:03:15', '2023-05-06 13:03:15'),
(501, 136, 'd1239bfe7034a79c70b73b48d0546ac3.jpg', '2023-05-06 13:03:15', '2023-05-06 13:03:15'),
(502, 136, '41a94c1dcb0c2ffe40e8a2da2db30335.jpg', '2023-05-06 13:03:15', '2023-05-06 13:03:15'),
(503, 136, 'cd42f62508db2d815338022dd3d1fb7a.jpg', '2023-05-06 13:03:15', '2023-05-06 13:03:15'),
(504, 138, '671ee96fa7b76bcd02009e922476c1ee.jpg', '2023-05-06 22:04:07', '2023-05-06 22:04:07'),
(505, 138, 'a5e0bde6c76703fa97bdf195b62c43ad.jpg', '2023-05-06 22:04:07', '2023-05-06 22:04:07'),
(506, 138, '9e369f43f0c52bf34e5a28c66e5c5610.jpg', '2023-05-06 22:04:07', '2023-05-06 22:04:07'),
(507, 138, '2c2d8e3ace7c1d067044e66857e5a019.jpg', '2023-05-06 22:04:07', '2023-05-06 22:04:07'),
(508, 138, '69d7e5c63ee118b9fb5f052886d73adb.jpg', '2023-05-06 22:04:07', '2023-05-06 22:04:07'),
(509, 138, 'd9d218d33fa53059dbb631766e9020d2.jpg', '2023-05-06 22:04:07', '2023-05-06 22:04:07'),
(510, 138, '6020fa85a80bfe53f60e6c8ea87b19b2.jpg', '2023-05-06 22:04:07', '2023-05-06 22:04:07'),
(511, 139, '23c0c9a51054d414fdee17272ce654ed.jpg', '2023-05-07 11:37:59', '2023-05-07 11:37:59'),
(512, 139, '93151dbd0c2d2065190bcdca61967872.jpg', '2023-05-07 11:37:59', '2023-05-07 11:37:59'),
(513, 139, 'acf41ad8b78e8b75d2b9126822fbc8b7.jpg', '2023-05-07 11:37:59', '2023-05-07 11:37:59'),
(514, 139, 'f3cbc814adabd58adbd70f42d081ef9b.jpg', '2023-05-07 11:37:59', '2023-05-07 11:37:59'),
(515, 137, '3f35bd7ad4e78925984d81604f5e4e6f.jpg', '2023-05-07 11:46:54', '2023-05-07 11:46:54'),
(516, 137, '37f37696c4a730964a6ced3eb075e9f4.jpg', '2023-05-07 11:46:54', '2023-05-07 11:46:54'),
(517, 137, '0ad86d0791e9afd4c14d6036d6e97572.jpg', '2023-05-07 11:46:54', '2023-05-07 11:46:54'),
(518, 137, 'c29294941f60895afc006dff36d5bfd6.jpg', '2023-05-07 11:46:54', '2023-05-07 11:46:54'),
(519, 137, '28900616fde6009024ed256ba025d0ea.jpg', '2023-05-07 11:46:54', '2023-05-07 11:46:54'),
(520, 137, 'c1e5182e26d8f8a06394cce2e6292591.jpg', '2023-05-07 11:46:54', '2023-05-07 11:46:54'),
(521, 137, '135b39c59379c4647c18580d01d3429a.jpg', '2023-05-07 11:46:54', '2023-05-07 11:46:54'),
(522, 140, '7a92ddd1a7be015d8f800b931cebe886.jpg', '2023-05-07 16:07:30', '2023-05-07 16:07:30'),
(523, 140, 'c97dcd9a6e9288c5e167c13256dc120c.jpg', '2023-05-07 16:07:30', '2023-05-07 16:07:30'),
(524, 140, 'b7431a3f558a73cb9d47be3014c2c2dd.jpg', '2023-05-07 16:07:30', '2023-05-07 16:07:30'),
(525, 140, 'd6bf2b58cda9add0b2b75e87693ff9ab.jpg', '2023-05-07 16:07:30', '2023-05-07 16:07:30'),
(526, 140, '6c06f2926bf2e92565ada34f8c16ede2.jpg', '2023-05-07 16:07:30', '2023-05-07 16:07:30'),
(527, 140, 'aae1b95ca6537cd247fefcd2ad3657ff.jpg', '2023-05-07 16:07:30', '2023-05-07 16:07:30'),
(528, 140, '68f6098f68c3dc2963e18c5065bf12c9.jpg', '2023-05-07 16:07:30', '2023-05-07 16:07:30'),
(529, 140, '7744cb9ed041fb580083caa348a5b729.jpg', '2023-05-07 16:07:30', '2023-05-07 16:07:30'),
(530, 143, '7df4c0a1b2fecc10a10f307b78b7d64d.jpg', '2023-05-12 01:37:56', '2023-05-12 01:37:56'),
(531, 143, 'cc3018b4512182c36e5ef8a755c55820.jpg', '2023-05-12 01:37:56', '2023-05-12 01:37:56'),
(532, 143, 'ac784aec6c17e0c4d0be0e20c9334a02.jpg', '2023-05-12 01:37:56', '2023-05-12 01:37:56'),
(533, 143, '4c32093b0efb7888d91ad72dfab919eb.jpg', '2023-05-12 01:37:56', '2023-05-12 01:37:56'),
(534, 143, '86c1dcdecb56365126cce14e4444113a.jpg', '2023-05-12 01:37:56', '2023-05-12 01:37:56'),
(535, 143, '02373cc5b99b9e1351237eecead4efe3.jpg', '2023-05-12 01:37:56', '2023-05-12 01:37:56'),
(536, 143, '3e214cd6497895645a47b7a484221871.jpg', '2023-05-12 01:37:56', '2023-05-12 01:37:56'),
(537, 143, 'e66624445126f96c3331fae639c8ad81.jpg', '2023-05-12 01:37:56', '2023-05-12 01:37:56'),
(538, 144, 'b609957073f3ac2a9e2070a98ae96e31.jpg', '2023-05-12 02:45:35', '2023-05-12 02:45:35'),
(539, 144, 'd57d39da46b84a27338cd47f5ad21bba.jpg', '2023-05-12 02:45:35', '2023-05-12 02:45:35'),
(540, 144, '46c2a08de505d2cdbf298723d183c156.jpg', '2023-05-12 02:45:35', '2023-05-12 02:45:35'),
(541, 144, 'abad09a3ebb6c75c8bb5924ba2d0d7e8.jpg', '2023-05-12 02:45:35', '2023-05-12 02:45:35'),
(542, 144, 'e517b6cea04dc82f06543ef816a6bd59.jpg', '2023-05-12 02:45:35', '2023-05-12 02:45:35'),
(543, 144, 'd8ef0df99f485f7200faf09ab2cc6946.jpg', '2023-05-12 02:45:35', '2023-05-12 02:45:35'),
(544, 145, 'c08923101e0dd8d668d77cd46759db24.jpg', '2023-05-14 02:52:02', '2023-05-14 02:52:02'),
(545, 145, '6687544182490006bb74e6e37b645c8c.jpg', '2023-05-14 02:52:02', '2023-05-14 02:52:02'),
(546, 145, '4a8ff92f5a48c9c9229fe601e336e76d.jpg', '2023-05-14 02:52:02', '2023-05-14 02:52:02'),
(547, 145, 'ed0b980e18c4c863ebfc91ae75a5cecc.jpg', '2023-05-14 02:52:02', '2023-05-14 02:52:02'),
(548, 145, 'd0e1dca26ec478135d390b6af746221f.jpg', '2023-05-14 02:52:02', '2023-05-14 02:52:02'),
(549, 145, 'ac3eb3a31a06cf903296f3f086157501.jpg', '2023-05-14 02:52:02', '2023-05-14 02:52:02'),
(550, 147, '3aa8e6df6c4ea6939dd4d6f42165318e.jpg', '2023-05-14 03:16:26', '2023-05-14 03:16:26'),
(551, 148, 'f7a59a6d79a3bf1d13a09076c6367ca6.jpg', '2023-05-14 03:23:15', '2023-05-14 03:23:15'),
(552, 148, 'bf054194c0f549f76595dab2d54b0c83.jpg', '2023-05-14 03:23:15', '2023-05-14 03:23:15'),
(553, 148, '6081762ed715ebcae6de83c846786ab7.jpg', '2023-05-14 03:23:15', '2023-05-14 03:23:15'),
(554, 148, '493bd52fbf142fff179ead127be06a24.jpg', '2023-05-14 03:23:15', '2023-05-14 03:23:15'),
(555, 148, '9440aaa627d98b54c3370a828992c52e.jpg', '2023-05-14 03:23:15', '2023-05-14 03:23:15'),
(556, 149, '89db5565b3d6cdef8a37b3155c6cde32.jpg', '2023-05-14 03:29:06', '2023-05-14 03:29:06'),
(557, 152, '4cc564f68e75f5fbb4b53aeef11a245d.jpg', '2023-05-15 13:18:15', '2023-05-15 13:18:15'),
(558, 152, 'e1c8deab03eb3dc0aaafe81d211cc656.jpg', '2023-05-15 13:18:15', '2023-05-15 13:18:15'),
(559, 152, 'b4c1ff2bbf6e097766e492a73a09a2bc.jpg', '2023-05-15 13:18:15', '2023-05-15 13:18:15'),
(560, 152, 'a86a26e22645280c784cc9cd0b3f8123.jpg', '2023-05-15 13:18:15', '2023-05-15 13:18:15');
INSERT INTO `listing_photos` (`id`, `listing_id`, `photo`, `created_at`, `updated_at`) VALUES
(561, 152, '0ada6e9acb2b98f606ea423e10d9b491.jpg', '2023-05-15 13:18:15', '2023-05-15 13:18:15'),
(562, 152, '0f3f8cc7f03eb6de74b373d556d29d7d.jpg', '2023-05-15 13:18:15', '2023-05-15 13:18:15'),
(563, 152, 'b322f2bcf33f11c1b49f4563a6039d95.jpg', '2023-05-15 13:18:15', '2023-05-15 13:18:15'),
(564, 152, '2449639a762568b48f13d6bdde7aa45d.jpg', '2023-05-15 13:18:15', '2023-05-15 13:18:15'),
(565, 152, '42af0c616862bdd0d78674aa6e49c8c4.jpg', '2023-05-15 13:18:15', '2023-05-15 13:18:15'),
(566, 152, '465717cbd99b1e4e674c15dc5ece8cce.jpg', '2023-05-15 13:18:15', '2023-05-15 13:18:15'),
(567, 155, '99712cd2d604f7dd86b50bd795b77b88.jpg', '2023-05-16 03:04:00', '2023-05-16 03:04:00'),
(568, 155, '5afe22ea72df28346b88e1a28728280f.jpg', '2023-05-16 03:04:00', '2023-05-16 03:04:00'),
(569, 155, 'a62b76515055e086ad33d2ddae40413e.jpg', '2023-05-16 03:04:00', '2023-05-16 03:04:00'),
(570, 155, '3b3c635edf9600f0440008f158c50f90.jpg', '2023-05-16 03:04:00', '2023-05-16 03:04:00'),
(571, 155, '701aaaca03aa1d6426620b80b1096fa9.jpg', '2023-05-16 03:04:00', '2023-05-16 03:04:00'),
(572, 155, '5b2dfda057c8f85d47c3c812872993db.jpg', '2023-05-16 03:04:00', '2023-05-16 03:04:00'),
(573, 155, 'e9586baaa467f76877a8f5a2ea7f9f42.jpg', '2023-05-16 03:04:00', '2023-05-16 03:04:00'),
(574, 155, '8f530aaae1246ee1bb7426b1de0a96ac.jpg', '2023-05-16 03:04:00', '2023-05-16 03:04:00'),
(575, 156, '2e989cb05448bb502371ebdcd152dbb3.jpg', '2023-05-16 18:34:19', '2023-05-16 18:34:19'),
(576, 156, 'a77a8b5ddab69f7ff18b62a1ce314075.jpg', '2023-05-16 18:34:19', '2023-05-16 18:34:19'),
(577, 156, 'ac6e34e67257a3735599e9859901379a.jpg', '2023-05-16 18:34:19', '2023-05-16 18:34:19'),
(578, 156, '9abd3c0fc2481a8dc56d04530330aaff.jpg', '2023-05-16 18:34:19', '2023-05-16 18:34:19'),
(579, 156, 'b9641ab8673cdff3908eb3140071fd22.jpg', '2023-05-16 18:34:19', '2023-05-16 18:34:19'),
(580, 156, '5b30860d744fecf6c1ab5193ea8527c7.jpg', '2023-05-16 18:34:19', '2023-05-16 18:34:19'),
(581, 156, '15e56d0a4e64947a776589afb9ac4a63.jpg', '2023-05-16 18:34:19', '2023-05-16 18:34:19'),
(582, 156, '3700e71461c7c7fb0a8ddc8c71ad7263.jpg', '2023-05-16 18:34:19', '2023-05-16 18:34:19'),
(583, 156, '88756150aa78dcfcaebbb1ba59d302d5.jpg', '2023-05-16 18:34:19', '2023-05-16 18:34:19'),
(584, 157, '482ffa0c24247e695a6bae42ab73672c.jpg', '2023-05-17 13:35:04', '2023-05-17 13:35:04'),
(585, 157, 'a807cf4673d1ea6a1b431b41b0e1aab7.jpg', '2023-05-17 13:35:04', '2023-05-17 13:35:04'),
(586, 157, '2d2495e7ba241cbae11d40258581a89c.jpg', '2023-05-17 13:35:04', '2023-05-17 13:35:04'),
(587, 157, 'ecab77ac3fc2dba467af1a28c3471034.jpg', '2023-05-17 13:35:04', '2023-05-17 13:35:04'),
(588, 157, '9bc568b48c6acaea982b684f23760fcc.jpg', '2023-05-17 13:35:04', '2023-05-17 13:35:04'),
(589, 157, 'fb018acc84e31504d5ea121f2e4edae1.jpg', '2023-05-17 13:35:04', '2023-05-17 13:35:04'),
(590, 157, 'cf536e6f6b430c218065f347e7f29134.jpg', '2023-05-17 13:35:04', '2023-05-17 13:35:04'),
(591, 157, 'd7aa3e7f9ddafbd6e8a81ce837c07d55.jpg', '2023-05-17 13:35:04', '2023-05-17 13:35:04'),
(592, 157, 'b7e703410ebc6dc59fb90309788101d5.jpg', '2023-05-17 13:35:04', '2023-05-17 13:35:04'),
(593, 158, '6adab479f4e48db65a8716ff37fa8470.jpg', '2023-05-17 14:39:39', '2023-05-17 14:39:39'),
(594, 159, '73b299c016c45edcf68d3384e651cc7f.jpg', '2023-05-18 13:08:15', '2023-05-18 13:08:15'),
(595, 160, 'ede5e72fb48429964f5ea53ba6e72386.jpg', '2023-05-18 13:13:40', '2023-05-18 13:13:40'),
(596, 160, '3b29d56986560be529e57364e76513c6.jpg', '2023-05-18 13:13:40', '2023-05-18 13:13:40'),
(597, 160, '21a8a5ee8068cb157c85553010070709.jpg', '2023-05-18 13:13:40', '2023-05-18 13:13:40'),
(598, 160, 'f643da3f818dc30584e0bd75e66f6b6a.jpg', '2023-05-18 13:13:40', '2023-05-18 13:13:40'),
(599, 160, '29f0da3d6f976555b7bb4307c98105ac.jpg', '2023-05-18 13:13:40', '2023-05-18 13:13:40'),
(600, 161, '593e67707448b82736a2e04253ee34e5.jpg', '2023-05-18 21:24:31', '2023-05-18 21:24:31'),
(601, 161, '5f53369a8f5bde41421cd387e894f6c2.jpg', '2023-05-18 21:24:31', '2023-05-18 21:24:31'),
(602, 161, '62f58ac760937b5114a2ead221f463dd.jpg', '2023-05-18 21:24:31', '2023-05-18 21:24:31'),
(603, 161, '37221fa0719542377ddb61b523e18bda.jpg', '2023-05-18 21:24:31', '2023-05-18 21:24:31'),
(604, 161, '8ed7b6d1b37b5d2fd728d68dbefc91bd.jpg', '2023-05-18 21:24:31', '2023-05-18 21:24:31'),
(605, 161, '67313226d026d40860a35ed7e2c7e402.jpg', '2023-05-18 21:24:31', '2023-05-18 21:24:31'),
(606, 161, '833140a565efa743ae5fae9fe64a8784.jpg', '2023-05-18 21:24:31', '2023-05-18 21:24:31'),
(607, 163, '7a8daa688a55221a65ac3233a0fa2909.jpg', '2023-05-20 11:27:05', '2023-05-20 11:27:05'),
(608, 163, '1c10fd0fe9de0ac3201a2539099e5c75.jpg', '2023-05-20 11:27:05', '2023-05-20 11:27:05'),
(609, 163, '1106ea36c1e272a473a960d38c80b70f.jpg', '2023-05-20 11:27:05', '2023-05-20 11:27:05'),
(610, 164, '830f2ffc92e21bce204144eee6a3b557.jpg', '2023-05-20 11:35:27', '2023-05-20 11:35:27'),
(611, 164, 'e3bd08573aa9ea66909a45d989422074.jpg', '2023-05-20 11:35:27', '2023-05-20 11:35:27'),
(612, 164, 'c7a77cf1c5bce823f7b4defef8423f0b.jpg', '2023-05-20 11:35:27', '2023-05-20 11:35:27'),
(613, 164, '946fc92646366f0edbcd0b6744b6772d.jpg', '2023-05-20 11:35:27', '2023-05-20 11:35:27'),
(614, 164, '437e709aa46251b5dacba9d0300250d2.jpg', '2023-05-20 11:35:27', '2023-05-20 11:35:27'),
(615, 164, 'a7ffe7402c446f4bec6986ce9fce438c.jpg', '2023-05-20 11:35:27', '2023-05-20 11:35:27'),
(616, 164, '9205f777d604d6e7f80a73c5f7c8723e.jpg', '2023-05-20 11:35:27', '2023-05-20 11:35:27'),
(617, 165, '41fd2c9eb99e0195ebe96a6854e0c01d.jpg', '2023-05-22 16:30:02', '2023-05-22 16:30:02'),
(618, 165, '52fc8c639177627d5855167df5279921.jpg', '2023-05-22 16:30:02', '2023-05-22 16:30:02'),
(619, 166, '34c7bd13dbcc33fbd9a617061c94a7cb.jpg', '2023-05-23 21:40:05', '2023-05-23 21:40:05'),
(620, 169, '7fa8532264f8ecac140a7c5186c70bf0.jpg', '2023-06-12 20:23:29', '2023-06-12 20:23:29'),
(621, 171, '7ffa5d90d10139b98af6664ebb5c460c.jpg', '2023-06-13 13:44:58', '2023-06-13 13:44:58'),
(622, 171, 'e7aac1a6c29091ce631e64406e9244e9.jpg', '2023-06-13 13:44:58', '2023-06-13 13:44:58'),
(623, 171, '8db1ab8e0aae5663dd7da79ab11a143c.jpg', '2023-06-13 13:44:58', '2023-06-13 13:44:58'),
(624, 171, '905f81e70ebbb9bc1ba18a6bfffae261.jpg', '2023-06-13 13:44:58', '2023-06-13 13:44:58'),
(625, 171, '6be52d442ff7d5bcc0849fc8c58da0b1.jpg', '2023-06-13 13:44:58', '2023-06-13 13:44:58'),
(626, 171, '1c2c017ded7cc2c17d8ab59878230d7e.jpg', '2023-06-13 13:44:58', '2023-06-13 13:44:58'),
(627, 171, '488c4afd55e99c83daad666e4f2a7951.jpg', '2023-06-13 13:44:58', '2023-06-13 13:44:58'),
(628, 171, 'e0ac1406d062f1aa0ebe0c2dbfb7f023.jpg', '2023-06-13 13:44:58', '2023-06-13 13:44:58'),
(629, 171, '4db94c4a4d0407b56e328886ae232181.jpg', '2023-06-13 13:44:58', '2023-06-13 13:44:58'),
(630, 171, '22300b7500c11687eedd693e1b8807cc.jpg', '2023-06-13 13:44:58', '2023-06-13 13:44:58'),
(631, 172, '3eed3335197324cf85f3146ddc0727e0.png', '2023-06-19 17:19:24', '2023-06-19 17:19:24'),
(632, 172, '879c65c23faea74e1f38a44d8e53fbf5.png', '2023-06-19 17:19:24', '2023-06-19 17:19:24'),
(633, 172, '413be6a51f65e90efd4dadbba67f9a5c.jpg', '2023-06-19 17:19:24', '2023-06-19 17:19:24'),
(634, 172, 'db1a9ffc424f51b3dea58ba5f9c27cfc.jpg', '2023-06-19 17:19:24', '2023-06-19 17:19:24'),
(635, 173, 'ac7419266a878e0f6d7659f9ebd92cb6.jpg', '2023-07-07 20:42:38', '2023-07-07 20:42:38'),
(636, 173, '93ce7ded0e350719b45b955104ddb1a3.jpg', '2023-07-07 20:42:38', '2023-07-07 20:42:38'),
(637, 173, '7712835df7c88565100e14afc6371062.jpg', '2023-07-07 20:42:38', '2023-07-07 20:42:38'),
(638, 173, '610c261d6babf76997b0cc7d6bc3a6dc.jpg', '2023-07-07 20:42:38', '2023-07-07 20:42:38'),
(639, 173, 'c46b673958c2818a32c516f061a4d0d0.jpg', '2023-07-07 20:42:39', '2023-07-07 20:42:39'),
(640, 173, '75f176538865e695e64f778462a3a116.jpg', '2023-07-07 20:42:39', '2023-07-07 20:42:39'),
(641, 173, '98196292f3f4147f49e44dc335a1c619.jpg', '2023-07-07 20:42:39', '2023-07-07 20:42:39'),
(642, 173, '7852e983609c2d700e79653b9d133fcc.jpg', '2023-07-07 20:42:39', '2023-07-07 20:42:39'),
(643, 173, 'acf124c8be379637639bb48d430dd69b.jpg', '2023-07-07 20:42:39', '2023-07-07 20:42:39'),
(644, 173, '136eccc50b47fdfa11da46da293b3b1f.jpg', '2023-07-07 20:42:39', '2023-07-07 20:42:39'),
(645, 175, 'ddc949dabb497b3fc0cb5dc853edf1e5.jpg', '2023-07-10 19:20:18', '2023-07-10 19:20:18'),
(646, 179, 'e20e5dd5a7951c0155d67e8862ec5846.jpg', '2023-07-12 17:47:14', '2023-07-12 17:47:14'),
(647, 180, 'f18a2512ee998bddbea070ab1f5181eb.jpg', '2023-07-12 22:00:46', '2023-07-12 22:00:46'),
(648, 180, '81a2312fdf850e4553d02e4f9865b899.jpg', '2023-07-12 22:00:46', '2023-07-12 22:00:46'),
(649, 180, 'eda299cf14ffa3a0b128f94a84e8ef63.jpg', '2023-07-12 22:00:46', '2023-07-12 22:00:46'),
(650, 180, 'a322288abcf357ef69bf8d0f206986e8.jpg', '2023-07-12 22:00:46', '2023-07-12 22:00:46'),
(651, 180, '46f7e1ab078197369a3396a627daf204.jpg', '2023-07-12 22:00:46', '2023-07-12 22:00:46'),
(652, 180, '6b17c746076e9cd190e2961673fc1ad9.jpg', '2023-07-12 22:00:46', '2023-07-12 22:00:46'),
(653, 180, '1750e94ca745561fae97435d3ad4bae1.jpg', '2023-07-12 22:00:46', '2023-07-12 22:00:46'),
(654, 180, 'bacbd6113bd3df32f80903f5c3546aa7.jpg', '2023-07-12 22:00:46', '2023-07-12 22:00:46'),
(655, 180, '0f867d13ef3e37deadccfa4900c5c900.jpg', '2023-07-12 22:00:46', '2023-07-12 22:00:46'),
(656, 181, '836f8eba8184538a1581592f8654870c.jpg', '2023-07-13 13:49:56', '2023-07-13 13:49:56'),
(657, 182, '8405d677d4c47949142d57dcf078424b.jpg', '2023-07-13 15:35:20', '2023-07-13 15:35:20'),
(658, 183, 'c7658ce1f686fa9d987c01acac960d21.jpg', '2023-07-14 01:50:23', '2023-07-14 01:50:23'),
(659, 183, '2bf66fe9abeb8c706de38a5cdcc9d506.jpg', '2023-07-14 01:50:23', '2023-07-14 01:50:23'),
(660, 183, '94c14f51eebc57ef9477f24dd9229a5f.jpg', '2023-07-14 01:50:23', '2023-07-14 01:50:23'),
(661, 183, 'b8b1200f38155a38e759ec1d4aa79436.jpg', '2023-07-14 01:50:23', '2023-07-14 01:50:23'),
(662, 183, '3ed90f0d6fc246dcfd5632fed175629b.jpg', '2023-07-14 01:50:23', '2023-07-14 01:50:23'),
(663, 183, 'a91c37e77622d6f06336773e02ef890b.jpg', '2023-07-14 01:50:23', '2023-07-14 01:50:23'),
(664, 183, '4c165bf57baecaa35152063294be2dea.jpg', '2023-07-14 01:50:23', '2023-07-14 01:50:23'),
(665, 183, '3d5eecfe051dd0fbdb3eb1fa395d1c88.jpg', '2023-07-14 01:50:23', '2023-07-14 01:50:23'),
(666, 183, 'c5999124dea845ef9ee8fc14f0d587c8.jpg', '2023-07-14 01:50:23', '2023-07-14 01:50:23'),
(667, 183, 'cf19ce68f48b5aa8d93d4f700443b04c.jpg', '2023-07-14 01:50:23', '2023-07-14 01:50:23'),
(668, 185, '79e7dc03d7425099b858887a2874ba05.jpg', '2023-07-14 02:40:15', '2023-07-14 02:40:15'),
(669, 185, '63444b7cd46936886f40da3e5a3fa072.jpg', '2023-07-14 02:40:15', '2023-07-14 02:40:15'),
(670, 185, '72d0ac9034ebdcf7d1b898e0060b576c.jpg', '2023-07-17 02:00:33', '2023-07-17 02:00:33'),
(671, 185, '2164b940270eab0bf1eb8b49f30baa51.jpg', '2023-07-17 02:00:33', '2023-07-17 02:00:33'),
(672, 185, '90719518f14d0eec66dc4f651fe04009.jpg', '2023-07-17 02:00:33', '2023-07-17 02:00:33'),
(673, 185, 'eded88fe703f51714d7fb1067d6fd423.jpg', '2023-07-17 02:00:33', '2023-07-17 02:00:33'),
(674, 190, '525a7c9d402d4d5f88db8becf266d465.png', '2023-11-19 15:44:09', '2023-11-19 15:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `listing_social_items`
--

CREATE TABLE `listing_social_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `social_icon` text NOT NULL,
  `social_url` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_social_items`
--

INSERT INTO `listing_social_items` (`id`, `listing_id`, `social_icon`, `social_url`, `created_at`, `updated_at`) VALUES
(10, 3, 'Facebook', '#', NULL, NULL),
(11, 3, 'Twitter', '#', NULL, NULL),
(12, 3, 'LinkedIn', '#', NULL, NULL),
(15, 5, 'Facebook', '#', NULL, NULL),
(16, 5, 'Twitter', '#', NULL, NULL),
(17, 6, 'Facebook', '#', NULL, NULL),
(18, 6, 'Twitter', '#', NULL, NULL),
(19, 6, 'YouTube', '#', NULL, NULL),
(20, 6, 'Instagram', '#', NULL, NULL),
(24, 7, 'Facebook', '#', '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(25, 7, 'Twitter', '#', '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(26, 7, 'LinkedIn', '#', '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(27, 8, 'Facebook', '#', '2021-07-24 10:09:59', '2021-07-24 10:09:59'),
(28, 8, 'Twitter', '#', '2021-07-24 10:09:59', '2021-07-24 10:09:59'),
(29, 8, 'Pinterest', '#', '2021-07-24 10:09:59', '2021-07-24 10:09:59'),
(30, 10, 'Facebook', '#', '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(31, 10, 'YouTube', '#', '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(32, 10, 'GooglePlus', '#', '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(33, 10, 'LinkedIn', '#', '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(34, 15, 'Twitter', 'https://twitter.com/Beautay4/', '2023-01-09 13:30:11', '2023-01-09 13:30:11'),
(37, 20, 'Facebook', 'https://www.facebook.com/profile.php?id=100083624289620&mibextid=ZbWKwL', '2023-02-07 02:35:53', '2023-02-07 02:35:53'),
(39, 25, 'Facebook', 'https://www.facebook.com/boby.real.7161?mibextid=LQQJ4d', '2023-02-11 15:27:39', '2023-02-11 15:27:39'),
(40, 25, 'Instagram', 'https://instagram.com/bobbymr2021?igshid=YmMyMTA2M2Y=', '2023-02-11 15:27:39', '2023-02-11 15:27:39'),
(41, 27, 'Facebook', 'https://www.facebook.com/chinwe.amalu.35?mibextid=LQQJ4d', '2023-02-13 19:32:05', '2023-02-13 19:32:05'),
(42, 27, 'Instagram', 'https://instagram.com/olauniquebase?igshid=YmMyMTA2M2Y=', '2023-02-13 19:32:05', '2023-02-13 19:32:05'),
(43, 28, 'Facebook', 'https://www.facebook.com/profile.php?id=100089971189734', '2023-02-14 02:53:12', '2023-02-14 02:53:12'),
(44, 29, 'Facebook', 'https://www.facebook.com/iniobongsmart.etuk', '2023-02-14 23:36:21', '2023-02-14 23:36:21'),
(45, 31, 'Twitter', 'https://twitter.com/ApexOpt?s=09', '2023-02-23 21:39:03', '2023-02-23 21:39:03'),
(46, 32, 'Facebook', 'https://instagram.com/peterfaith3636?igshid=NzAzN2Q1NTE=', '2023-03-03 11:01:54', '2023-03-03 11:01:54'),
(47, 36, 'Twitter', 'https://wa.me/message/RXW2DGD32D6CG1', '2023-03-05 14:09:43', '2023-03-05 14:09:43'),
(48, 37, 'Instagram', 'https://instagram.com/__mbluxuries001__?igshid=YmMyMTA2M2Y', '2023-03-05 16:11:36', '2023-03-05 16:11:36'),
(49, 38, 'Instagram', 'https://instagram.com/sovan_designs?igshid=NmQ2ZmYxZjA=', '2023-03-05 18:10:52', '2023-03-05 18:10:52'),
(50, 38, 'Facebook', 'https://www.facebook.com/Somhie12', '2023-03-05 18:10:52', '2023-03-05 18:10:52'),
(51, 39, 'GooglePlus', 'https://www.facebook.com/Webbcommunications?mibextid=ZbWKwL', '2023-03-06 15:23:11', '2023-03-06 15:23:11'),
(52, 44, 'Facebook', '7)https://www.facebook.com/Goldencoinfarm', '2023-03-06 17:22:42', '2023-03-06 17:22:42'),
(53, 45, 'Instagram', 'https://www.instagram.com/reel/Cn6Twf4Dtay/?igshid=YmMyMTA2M2Y=', '2023-03-07 01:24:11', '2023-03-07 01:24:11'),
(54, 46, 'Instagram', 'https://www.instagram.com/invites/contact/?i=x69i5nfstrsf&utm_content=qtq4exn', '2023-03-07 04:06:13', '2023-03-07 04:06:13'),
(55, 47, 'Facebook', 'https://www.facebook.com/itzmhiz.floxy.7?mibextid=LQQJ4d', '2023-03-07 16:22:05', '2023-03-07 16:22:05'),
(56, 52, 'Facebook', 'Victy\'s skin glowing', '2023-03-22 02:51:59', '2023-03-22 02:51:59'),
(57, 53, 'Facebook', 'https://www.facebook.com/gictcollege', '2023-03-22 15:42:39', '2023-03-22 15:42:39'),
(58, 59, 'Facebook', 'https://www.facebook.com/profile.php?id=100064833843432', '2023-03-24 15:38:09', '2023-03-24 15:38:09'),
(59, 61, 'Facebook', 'Son-Light Techs and Services Ltd', '2023-03-24 17:26:53', '2023-03-24 17:26:53'),
(60, 65, 'Facebook', 'https://sabuss.com/makindekabirtech16', '2023-03-25 20:02:14', '2023-03-25 20:02:14'),
(61, 69, 'YouTube', 'https://youtube.com/@colouredhousetv1768', '2023-03-29 13:06:51', '2023-03-29 13:06:51'),
(62, 70, 'Facebook', 'https://www.facebook.com/herdhebayor.meesqeeyathorlarmeedeeh?mibextid=LQQJ4d', '2023-03-29 15:26:36', '2023-03-29 15:26:36'),
(63, 71, 'Facebook', 'https://www.facebook.com/100084747233564/posts/177835438384696/?mibextid=oOd1uteEIMsbggoE', '2023-03-29 18:08:42', '2023-03-29 18:08:42'),
(64, 75, 'Instagram', 'https://instagram.com/soft27media?igshid=ZDdkNTZiNTM=', '2023-03-31 12:42:56', '2023-03-31 12:42:56'),
(65, 83, 'Facebook', 'https://www.facebook.com/mhista.cozy', '2023-04-12 16:26:02', '2023-04-12 16:26:02'),
(66, 84, 'Facebook', 'Beeptelecoms', '2023-04-12 16:26:18', '2023-04-12 16:26:18'),
(67, 86, 'Facebook', 'Facebook link  https://www.facebook.com/profile.php?id=100083671148781', '2023-04-12 20:25:56', '2023-04-12 20:25:56'),
(68, 86, 'Twitter', 'https://twitter.com/AdepojuAdedot10?t=osqJsUhsoyklfyDXx5LC6g&s=09', '2023-04-12 20:25:56', '2023-04-12 20:25:56'),
(69, 89, 'Instagram', 'https://instagram.com/cebliss_events?igshid=YmMyMTA2M2Y=', '2023-04-13 14:13:29', '2023-04-13 14:13:29'),
(70, 91, 'Facebook', 'https://www.facebook.com/chisom.okechukwu.5895', '2023-04-14 14:00:40', '2023-04-14 14:00:40'),
(71, 92, 'Twitter', 'https://twitter.com/ToluwaseAutos?t=IluFW9_FCd7gKG_pU2oOiw&s=09', '2023-04-14 15:20:33', '2023-04-14 15:20:33'),
(72, 95, 'Facebook', 'https://www.facebook.com/cole.davis.9887117?mibextid=ZbWKwL', '2023-04-14 16:49:59', '2023-04-14 16:49:59'),
(73, 97, 'Facebook', 'oluwaseunfunmi Akingbade', '2023-04-15 11:02:55', '2023-04-15 11:02:55'),
(74, 98, 'Facebook', 'https://www.facebook.com/deeshumhope.danjuma', '2023-04-15 12:12:47', '2023-04-15 12:12:47'),
(75, 99, 'Facebook', 'Mhiz Tosyn', '2023-04-15 23:10:43', '2023-04-15 23:10:43'),
(76, 100, 'Facebook', 'https://www.facebook.com/brilliantconcept16?mibextid=ZbWKwL', '2023-04-16 02:37:49', '2023-04-16 02:37:49'),
(77, 100, 'Instagram', 'https://www.instagram.com/invites/contact/?i=1q29x9yz6lzjh&utm_content=1vut8kf', '2023-04-16 02:37:49', '2023-04-16 02:37:49'),
(78, 102, 'Facebook', 'Alisa Okonkwo', '2023-04-17 13:38:32', '2023-04-17 13:38:32'),
(79, 103, 'Instagram', 'https://www.instagram.com/beauty_hairs01?r=nametag', '2023-04-17 16:01:12', '2023-04-17 16:01:12'),
(80, 109, 'Facebook', 'https://facebook.com/obadeezynes', '2023-04-19 21:15:36', '2023-04-19 21:15:36'),
(81, 109, 'Instagram', 'https://instagram.com/obadeezynes', '2023-04-19 21:15:36', '2023-04-19 21:15:36'),
(82, 109, 'Twitter', 'https://twitter.com/obadeezynes', '2023-04-19 21:15:36', '2023-04-19 21:15:36'),
(83, 111, 'Facebook', 'Ogunsola Lawrence', '2023-04-20 10:26:37', '2023-04-20 10:26:37'),
(84, 113, 'Instagram', 'https://www.instagram.com/kanoproperty/', '2023-04-21 05:44:11', '2023-04-21 05:44:11'),
(85, 114, 'Facebook', 'https://www.facebook.com/glory.dagono', '2023-04-21 20:25:47', '2023-04-21 20:25:47'),
(86, 115, 'Facebook', 'https://www.facebook.com/james.atadoga.92', '2023-04-21 23:27:59', '2023-04-21 23:27:59'),
(87, 115, 'Facebook', 'https://www.facebook.com/profile.php?id=100090392056674', '2023-04-21 23:27:59', '2023-04-21 23:27:59'),
(88, 116, 'Facebook', 'https://www.facebook.com/deborah.iyayi', '2023-04-23 16:00:33', '2023-04-23 16:00:33'),
(89, 119, 'Facebook', 'https://www.facebook.com/profile.php?id=100089919237199&mibextid=ZbWKwL', '2023-04-24 13:11:56', '2023-04-24 13:11:56'),
(90, 119, 'Instagram', 'https://instagram.com/royaltyfootwears01?igshid=ZDdkNTZiNTM=', '2023-04-24 13:11:56', '2023-04-24 13:11:56'),
(91, 120, 'Facebook', 'https://www.facebook.com/debby4cee?mibextid=ZbWKwL', '2023-04-24 23:59:32', '2023-04-24 23:59:32'),
(92, 120, 'Instagram', 'https://www.instagram.com/debbycee.klassik', '2023-04-24 23:59:32', '2023-04-24 23:59:32'),
(93, 124, 'Instagram', 'https://instagram.com/vc_interiorss?igshid=YmMyMTA2M2Y=', '2023-04-25 19:28:47', '2023-04-25 19:28:47'),
(94, 127, 'Facebook', 'Adebola Baoku', '2023-05-02 13:03:08', '2023-05-02 13:03:08'),
(95, 128, 'Facebook', 'https://www.facebook.com/profile.php?id=100088093921658', '2023-05-02 13:30:28', '2023-05-02 13:30:28'),
(96, 130, 'Facebook', 'https://www.facebook.com/9japawa', '2023-05-02 20:05:28', '2023-05-02 20:05:28'),
(97, 133, 'Facebook', 'https://www.facebook.com/100092147343962/posts/pfbid0SkGNKspEeotMf3ywbyEU5SsXHxX8aLhEMjfUoBqioHUWF74FPvoxPoT8ZrrZuF7wl/', '2023-05-03 22:41:36', '2023-05-03 22:41:36'),
(98, 134, 'Facebook', 'http://fb.me/RhemaNaturalClinic', '2023-05-05 15:03:15', '2023-05-05 15:03:15'),
(99, 134, 'YouTube', 'https://www.youtube.com/channel/UC-aTnYMHdVbsIWpceQzm3KA', '2023-05-05 15:03:15', '2023-05-05 15:03:15'),
(100, 136, 'Facebook', 'https://www.facebook.com/profile.php?id=100077700037368', '2023-05-06 13:03:15', '2023-05-06 13:03:15'),
(101, 140, 'Instagram', 'https://instagram.com/a._i._s._e._?igshid=NTc4MTIwNjQ2YQ==', '2023-05-07 16:07:30', '2023-05-07 16:07:30'),
(102, 150, 'Facebook', 'www.facebook.com/primetelecomservices', '2023-05-14 13:13:12', '2023-05-14 13:13:12'),
(103, 152, 'Twitter', 'https://twitter.com/Abk_sex_toys_?t=f7CJ5gH1kw8cNXz8Manb5A&s=09', '2023-05-15 13:42:31', '2023-05-15 13:42:31'),
(104, 152, 'Instagram', 'https://www.instagram.com/reel/CsQYIzhOaDm/?igshid=MzRlODBiNWFlZA==', '2023-05-15 13:42:31', '2023-05-15 13:42:31'),
(105, 158, 'Facebook', 'https://www.facebook.com/TheG0al', '2023-05-17 14:39:39', '2023-05-17 14:39:39'),
(106, 160, 'LinkedIn', 'https://www.linkedin.com/in/abayomi-ajulo-a806981b5', '2023-05-18 13:13:40', '2023-05-18 13:13:40'),
(107, 165, 'Facebook', 'Oluwaseyifunmi Adunola Taiwo', '2023-05-22 16:30:02', '2023-05-22 16:30:02'),
(108, 165, 'Instagram', 'tims_ongraphics', '2023-05-22 16:30:02', '2023-05-22 16:30:02'),
(109, 167, 'Facebook', 'https://www.facebook.com/profile.php?id=100079297905153', '2023-06-11 04:23:11', '2023-06-11 04:23:11'),
(110, 168, 'Facebook', 'https://m.facebook.com/story.php?story_fbid=pfbid02gQc3RXrvgSNpEcDhh4jxfbZ4AFq7fiS5AjqRm4RG78ZaQigkGeUcFXLtiy8d947Fl&id=100084113733665&mibextid=Nif5oz', '2023-06-12 03:07:53', '2023-06-12 03:07:53'),
(111, 170, 'Facebook', 'Fizzy entertainment', '2023-06-12 21:17:45', '2023-06-12 21:17:45'),
(112, 172, 'Facebook', 'https://www.facebook.com/100063590318286/posts/pfbid0g54c2Xyjr9TgsfMvwRumrxc9QCHijmSqudBzLoPwXM6G6SN4EgQHFdxPjK2MNwS2l/?app=fbl', '2023-06-19 17:19:24', '2023-06-19 17:19:24'),
(113, 172, 'Instagram', 'https://instagram.com/lilly_foodndrinks?igshid=MzNlNGNkZWQ4Mg==', '2023-06-19 17:19:24', '2023-06-19 17:19:24'),
(114, 173, 'Instagram', 'https://instagram.com/aidasapartments_owerri?igshid=NTc4MTIwNjQ2YQ==', '2023-07-07 20:42:39', '2023-07-07 20:42:39'),
(115, 174, 'Facebook', 'https://facebook.com/trendnotch', '2023-07-09 23:18:13', '2023-07-09 23:18:13'),
(116, 174, 'Twitter', 'https://twitter.com/trendnotch', '2023-07-09 23:18:13', '2023-07-09 23:18:13'),
(117, 174, 'Instagram', 'https://instagram.com/trendnotchng', '2023-07-09 23:18:13', '2023-07-09 23:18:13'),
(118, 174, 'Pinterest', 'https://pinterest.com/trendnotch', '2023-07-09 23:18:13', '2023-07-09 23:18:13'),
(119, 175, 'Facebook', 'https://www.facebook.com/uthmanoladepo.uthmanoladepo', '2023-07-10 19:20:18', '2023-07-10 19:20:18'),
(120, 178, 'Facebook', 'Samuel oluwajuwon faseyi', '2023-07-12 02:10:02', '2023-07-12 02:10:02'),
(121, 179, 'Instagram', 'https://www.instagram.com/reel/Ck0AAOGAYnb/?igshid=NTc4MTIwNjQ2YQ==', '2023-07-12 17:47:14', '2023-07-12 17:47:14'),
(122, 180, 'Facebook', 'https://www.facebook.com/profile.php?id=100093969960360&mibextid=ZbWKwL', '2023-07-12 22:00:46', '2023-07-12 22:00:46'),
(123, 182, 'Facebook', 'Facebook@Jimoh Lateef', '2023-07-13 15:35:20', '2023-07-13 15:35:20'),
(124, 183, 'Instagram', 'https://instagram.com/luluscents_?igshid=MjEwN2IyYWYwYw==', '2023-07-14 01:50:23', '2023-07-14 01:50:23'),
(125, 188, 'Instagram', 'https://instagram.com/flexuniqueevent?igshid=MzNlNGNkZWQ4Mg==', '2023-07-25 20:33:42', '2023-07-25 20:33:42'),
(126, 190, 'Facebook', 'https://www.facebook.com/profile.php?id=100082917185596', '2023-11-19 15:48:24', '2023-11-19 15:48:24');

-- --------------------------------------------------------

--
-- Table structure for table `listing_videos`
--

CREATE TABLE `listing_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `youtube_video_id` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_videos`
--

INSERT INTO `listing_videos` (`id`, `listing_id`, `youtube_video_id`, `created_at`, `updated_at`) VALUES
(7, 3, 'boW2QKPvBrw', NULL, NULL),
(8, 3, 'q19D-lU44rI', NULL, NULL),
(12, 5, 'PJXbMzL7TJA', NULL, NULL),
(13, 5, '0PmGvz6MSRc', NULL, NULL),
(14, 6, 'M1Gam7Eomuc', NULL, NULL),
(15, 6, 'oYCHHMpL3kI', NULL, NULL),
(17, 7, 's5D29O1HqoQ', '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(18, 7, 'JG9Ii3MyOzw', '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(19, 7, 'RKAYPZI2eHc', '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(20, 8, 'AcVaTIW-DGQ', '2021-07-24 10:09:59', '2021-07-24 10:09:59'),
(21, 8, '-A_g7bwNxn4', '2021-07-24 10:09:59', '2021-07-24 10:09:59'),
(22, 8, 'v2yjbEuDCRY', '2021-07-24 10:09:59', '2021-07-24 10:09:59'),
(23, 10, 'Xz2y4Wd7l1g', '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(24, 10, 'EKHQCDYuHqA', '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(25, 10, 'xSTUoWYCmdo', '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(27, 18, 'thewtkxaHQc', '2023-02-05 19:25:38', '2023-02-05 19:25:38'),
(29, 25, 'https://youtube.com/@bobbyfuneral7271', '2023-02-11 15:27:39', '2023-02-11 15:27:39'),
(31, 53, 'https://youtu.be/onjSoQgvPuo', '2023-03-22 16:40:19', '2023-03-22 16:40:19'),
(32, 53, 'https://youtu.be/rYuHu322YV8', '2023-03-22 16:40:19', '2023-03-22 16:40:19'),
(33, 69, 'https://youtube.com/@colouredhousetv1768', '2023-03-29 13:06:51', '2023-03-29 13:06:51'),
(34, 98, 'Uh', '2023-04-15 12:12:47', '2023-04-15 12:12:47'),
(35, 134, 'https://www.youtube.com/channel/UC-aTnYMHdVbsIWpceQzm3KA', '2023-05-05 15:03:15', '2023-05-05 15:03:15'),
(36, 173, 'https://www.instagram.com/tv/CX0hemBJDuB/?igshid=NTc4MTIwNjQ2YQ==', '2023-07-07 20:42:39', '2023-07-07 20:42:39'),
(37, 173, 'https://www.instagram.com/tv/CXwBe9XNX4s/?igshid=NTc4MTIwNjQ2YQ==', '2023-07-07 20:42:39', '2023-07-07 20:42:39'),
(38, 190, 'https://www.youtube.com/@Chidanipay', '2023-11-19 15:48:24', '2023-11-19 15:48:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_05_052517_create_admins_table', 1),
(5, '2020_11_18_041627_create_categories_table', 1),
(6, '2020_11_18_041747_create_blogs_table', 1),
(8, '2020_11_20_052802_create_general_settings_table', 3),
(11, '2020_11_20_161634_create_page_about_items_table', 4),
(14, '2020_11_21_052123_create_page_blog_items_table', 5),
(18, '2020_11_21_052416_create_page_faq_items_table', 5),
(20, '2020_11_21_052449_create_page_contact_items_table', 5),
(22, '2020_11_21_052522_create_page_term_items_table', 5),
(23, '2020_11_21_052537_create_page_privacy_items_table', 5),
(24, '2020_11_21_121719_create_page_home_items_table', 6),
(25, '2020_11_22_034318_create_page_other_items_table', 7),
(35, '2020_11_23_065919_create_testimonials_table', 15),
(36, '2020_11_23_145620_create_team_members_table', 16),
(37, '2020_11_23_170012_create_faqs_table', 17),
(38, '2020_11_24_155819_create_email_templates_table', 18),
(39, '2020_11_25_003858_create_social_media_items_table', 19),
(40, '2020_11_25_014512_create_subscribers_table', 20),
(48, '2020_12_03_124013_create_customers_table', 27),
(49, '2020_12_06_054145_create_orders_table', 28),
(68, '2021_05_27_120318_create_page_refund_items_table', 29),
(69, '2021_06_14_033116_create_products_table', 29),
(70, '2021_06_14_033648_create_product_categories_table', 29),
(71, '2021_06_14_033937_create_product_tags_table', 29),
(72, '2021_06_14_034232_create_product_photos_table', 29),
(73, '2021_06_19_133943_create_product_videos_table', 30),
(74, '2021_06_20_103527_create_features_table', 31),
(75, '2021_06_24_042127_create_order_details_table', 32),
(76, '2021_06_25_115914_create_customer_products_table', 33),
(77, '2021_07_06_091800_create_page_pricing_items_table', 34),
(78, '2021_07_06_092303_create_page_listing_category_items_table', 35),
(79, '2021_07_06_092326_create_page_listing_location_items_table', 35),
(80, '2021_07_06_092346_create_page_listing_items_table', 35),
(81, '2020_11_28_085244_create_comments_table', 36),
(83, '2020_11_22_051017_create_dynamic_pages_table', 37),
(84, '2021_07_06_155753_create_listing_categories_table', 37),
(85, '2021_07_06_155812_create_listing_locations_table', 37),
(86, '2021_07_06_155829_create_listings_table', 37),
(92, '2021_07_06_160817_create_listing_amenities_table', 38),
(93, '2021_07_06_160837_create_listing_photos_table', 38),
(94, '2021_07_06_160854_create_listing_videos_table', 38),
(95, '2021_07_06_160938_create_listing_social_items_table', 38),
(96, '2021_07_06_161021_create_listing_additional_features_table', 38),
(97, '2021_07_06_185302_create_amenities_table', 38),
(98, '2021_07_08_064744_create_packages_table', 39),
(99, '2021_07_08_163838_create_package_purchases_table', 40);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_type` text NOT NULL,
  `package_name` text NOT NULL,
  `package_price` text DEFAULT NULL,
  `valid_days` text NOT NULL,
  `total_listings` text NOT NULL,
  `total_amenities` text NOT NULL,
  `total_photos` text NOT NULL,
  `total_videos` text NOT NULL,
  `total_social_items` text NOT NULL,
  `total_additional_features` text NOT NULL,
  `allow_featured` text NOT NULL,
  `package_order` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_type`, `package_name`, `package_price`, `valid_days`, `total_listings`, `total_amenities`, `total_photos`, `total_videos`, `total_social_items`, `total_additional_features`, `allow_featured`, `package_order`, `created_at`, `updated_at`) VALUES
(1, 'Free', 'Online services only', '0', '365', '2', '5', '10', '5', '5', '2', 'Yes', 1, '2021-07-08 02:42:16', '2023-04-12 21:08:40'),
(2, 'Free', 'Verified Plan with physical shop', '0', '365', '2', '10', '10', '5', '5', '5', 'Yes', 2, '2021-07-08 02:43:07', '2023-04-12 21:07:16'),
(4, 'Free', 'Top verified plan with CAC registration.', '0', '365', '2', '10', '10', '5', '10', '10', 'Yes', 3, '2021-07-08 03:31:43', '2023-04-12 21:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `package_purchases`
--

CREATE TABLE `package_purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `transaction_id` text DEFAULT NULL,
  `paid_amount` text NOT NULL,
  `payment_method` text DEFAULT NULL,
  `bank_transaction_info` text DEFAULT NULL,
  `payment_status` text NOT NULL,
  `package_start_date` text NOT NULL,
  `package_end_date` text NOT NULL,
  `currently_active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_purchases`
--

INSERT INTO `package_purchases` (`id`, `user_id`, `package_id`, `transaction_id`, `paid_amount`, `payment_method`, `bank_transaction_info`, `payment_status`, `package_start_date`, `package_end_date`, `currently_active`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '', '0', '', '', 'Completed', '2021-07-10', '2021-07-11', 0, NULL, '2022-11-10 02:11:52'),
(2, 3, 4, 'txn_1JC09TBoKopKik6AUVUPhyXy', '45', 'Stripe', '', 'Completed', '2021-07-11', '2021-09-09', 0, NULL, '2022-11-10 02:11:52'),
(3, 4, 4, 'PAYID-MDV23AY53140771GK6394933', '45.00', 'PayPal', '', 'Completed', '2021-07-12', '2021-09-10', 1, NULL, NULL),
(8, 3, 2, 'PAYID-MDZRXKI7FB95577LJ293450N', '10.00', 'PayPal', '', 'Completed', '2021-07-17', '2021-08-16', 0, '2021-07-17 12:04:47', '2022-11-10 02:11:52'),
(9, 3, 4, 'txn_1JEHuCBoKopKik6A2Y6O59g9', '45', 'Stripe', '', 'Completed', '2021-07-17', '2021-09-15', 0, '2021-07-17 12:06:27', '2022-11-10 02:11:52'),
(10, 3, 2, 'txn_1JEPhYBoKopKik6AUjaGkUTR', '10', 'Stripe', '', 'Completed', '2021-07-18', '2023-08-17', 0, '2021-07-17 20:25:53', '2022-11-10 02:11:52'),
(11, 3, 1, '', '0', '', '', 'Completed', '2022-04-14', '2022-04-15', 0, '2022-04-14 10:54:48', '2022-11-10 02:11:52'),
(12, 3, 2, 'txn_3KoVxgBoKopKik6A2jO5NDJP', '10', 'Stripe', '', 'Completed', '2022-04-14', '2022-05-14', 0, '2022-04-14 10:56:06', '2022-11-10 02:11:52'),
(13, 3, 2, 'N/A', '10', 'Bank', 'Bank: DBBL\r\nAcc No: Morshedul Arefin\r\nAcc No: 91283918236\r\nBranch: Khulna\r\nSwift: DBBLBDDH', 'Completed', '2022-11-10', '2028-12-10', 1, '2022-11-10 01:44:37', '2022-11-10 02:11:52'),
(15, 15, 1, '', '0', '', NULL, 'Completed', '2022-11-26', '2023-11-26', 1, '2022-11-26 12:29:47', '2022-11-26 12:29:47'),
(16, 10, 1, '', '0', '', NULL, 'Completed', '2022-11-26', '2023-11-26', 1, '2022-11-26 16:18:54', '2022-11-26 16:18:54'),
(17, 7, 1, '', '0', '', NULL, 'Completed', '2022-11-27', '2023-11-27', 1, '2022-11-27 05:27:14', '2022-11-27 05:27:14'),
(18, 8, 1, '', '0', '', NULL, 'Completed', '2022-12-21', '2023-12-21', 1, '2022-12-21 14:44:15', '2022-12-21 14:44:15'),
(19, 17, 1, '', '0', '', NULL, 'Completed', '2022-12-23', '2023-12-23', 1, '2022-12-24 01:04:42', '2022-12-24 01:04:42'),
(20, 19, 1, '', '0', '', NULL, 'Completed', '2023-01-09', '2024-01-09', 1, '2023-01-09 12:49:50', '2023-01-09 12:49:50'),
(21, 24, 1, '', '0', '', NULL, 'Completed', '2023-01-23', '2024-01-23', 1, '2023-01-23 20:16:49', '2023-01-23 20:16:49'),
(22, 26, 1, '', '0', '', NULL, 'Completed', '2023-01-24', '2024-01-24', 0, '2023-01-24 23:53:39', '2023-02-23 23:28:52'),
(23, 28, 4, 'N/A', '45', 'Bank', 'Hagsushej', 'Pending', '2023-01-24', '2023-03-25', 0, '2023-01-25 00:42:49', '2023-02-05 15:49:41'),
(24, 28, 4, 'N/A', '45', 'Bank', 'Nsbsjsvdidbjsh', 'Pending', '2023-01-24', '2023-03-25', 0, '2023-01-25 01:09:31', '2023-02-05 15:49:41'),
(25, 32, 4, '', '0', '', NULL, 'Completed', '2023-02-01', '2024-02-01', 1, '2023-02-02 01:26:34', '2023-02-02 01:26:34'),
(26, 36, 2, '', '0', '', NULL, 'Completed', '2023-02-02', '2024-02-02', 0, '2023-02-02 11:47:05', '2023-02-02 12:13:11'),
(27, 36, 1, '', '0', '', NULL, 'Completed', '2023-02-02', '2024-02-02', 1, '2023-02-02 12:13:11', '2023-02-02 12:13:11'),
(28, 45, 1, '', '0', '', NULL, 'Completed', '2023-02-02', '2024-02-02', 1, '2023-02-02 23:11:20', '2023-02-02 23:11:20'),
(29, 28, 1, '', '0', '', NULL, 'Completed', '2023-02-05', '2024-02-05', 1, '2023-02-05 15:49:41', '2023-02-05 15:49:41'),
(30, 49, 2, '', '0', '', NULL, 'Completed', '2023-02-05', '2024-02-05', 1, '2023-02-05 20:41:28', '2023-02-05 20:41:28'),
(31, 53, 1, '', '0', '', NULL, 'Completed', '2023-02-06', '2024-02-06', 1, '2023-02-07 02:24:22', '2023-02-07 02:24:22'),
(32, 54, 1, '', '0', '', NULL, 'Completed', '2023-02-07', '2024-02-07', 1, '2023-02-07 09:58:07', '2023-02-07 09:58:07'),
(33, 50, 1, '', '0', '', NULL, 'Completed', '2023-02-07', '2024-02-07', 1, '2023-02-07 22:19:43', '2023-02-07 22:19:43'),
(34, 58, 2, '', '0', '', NULL, 'Completed', '2023-02-08', '2024-02-08', 1, '2023-02-08 15:50:31', '2023-02-08 15:50:31'),
(35, 55, 1, '', '0', '', NULL, 'Completed', '2023-02-08', '2024-02-08', 1, '2023-02-08 17:29:04', '2023-02-08 17:29:04'),
(36, 56, 1, '', '0', '', NULL, 'Completed', '2023-02-08', '2024-02-08', 1, '2023-02-09 00:13:15', '2023-02-09 00:13:15'),
(37, 60, 1, '', '0', '', NULL, 'Completed', '2023-02-11', '2024-02-11', 1, '2023-02-11 15:03:30', '2023-02-11 15:03:30'),
(38, 61, 1, '', '0', '', NULL, 'Completed', '2023-02-11', '2024-02-11', 1, '2023-02-12 00:37:30', '2023-02-12 00:37:30'),
(39, 63, 1, '', '0', '', NULL, 'Completed', '2023-02-13', '2024-02-13', 1, '2023-02-13 19:20:10', '2023-02-13 19:20:10'),
(40, 64, 1, '', '0', '', NULL, 'Completed', '2023-02-13', '2024-02-13', 1, '2023-02-14 00:17:08', '2023-02-14 00:17:08'),
(41, 65, 1, '', '0', '', NULL, 'Completed', '2023-02-13', '2024-02-13', 1, '2023-02-14 02:20:04', '2023-02-14 02:20:04'),
(42, 66, 1, '', '0', '', NULL, 'Completed', '2023-02-14', '2024-02-14', 1, '2023-02-14 23:10:40', '2023-02-14 23:10:40'),
(43, 68, 1, '', '0', '', NULL, 'Completed', '2023-02-14', '2024-02-14', 1, '2023-02-15 02:13:55', '2023-02-15 02:13:55'),
(44, 70, 4, '', '0', '', NULL, 'Completed', '2023-02-16', '2024-02-16', 1, '2023-02-16 14:12:50', '2023-02-16 14:12:50'),
(45, 43, 1, '', '0', '', NULL, 'Completed', '2023-02-17', '2024-02-17', 1, '2023-02-18 00:05:54', '2023-02-18 00:05:54'),
(46, 74, 1, '', '0', '', NULL, 'Completed', '2023-02-20', '2024-02-20', 1, '2023-02-20 18:36:24', '2023-02-20 18:36:24'),
(47, 76, 1, '', '0', '', NULL, 'Completed', '2023-02-23', '2024-02-23', 1, '2023-02-23 21:09:09', '2023-02-23 21:09:09'),
(48, 26, 2, '', '0', '', NULL, 'Completed', '2023-02-23', '2024-02-23', 1, '2023-02-23 23:28:52', '2023-02-23 23:28:52'),
(49, 77, 1, '', '0', '', NULL, 'Completed', '2023-02-24', '2024-02-24', 1, '2023-02-25 04:31:04', '2023-02-25 04:31:04'),
(50, 78, 1, '', '0', '', NULL, 'Completed', '2023-03-01', '2024-02-29', 0, '2023-03-02 04:28:06', '2023-03-07 03:53:46'),
(51, 79, 2, '', '0', '', NULL, 'Completed', '2023-03-03', '2024-03-02', 1, '2023-03-03 10:47:19', '2023-03-03 10:47:19'),
(52, 80, 2, '', '0', '', NULL, 'Completed', '2023-03-04', '2024-03-03', 1, '2023-03-04 11:36:53', '2023-03-04 11:36:53'),
(53, 81, 2, '', '0', '', NULL, 'Completed', '2023-03-04', '2024-03-03', 1, '2023-03-04 14:11:11', '2023-03-04 14:11:11'),
(54, 82, 2, '', '0', '', NULL, 'Completed', '2023-03-05', '2024-03-04', 1, '2023-03-05 12:32:09', '2023-03-05 12:32:09'),
(55, 84, 2, '', '0', '', NULL, 'Completed', '2023-03-05', '2024-03-04', 1, '2023-03-05 13:00:35', '2023-03-05 13:00:35'),
(56, 88, 2, '', '0', '', NULL, 'Completed', '2023-03-05', '2024-03-04', 1, '2023-03-05 13:56:44', '2023-03-05 13:56:44'),
(57, 90, 2, '', '0', '', NULL, 'Completed', '2023-03-05', '2024-03-04', 1, '2023-03-05 15:45:26', '2023-03-05 15:45:26'),
(58, 91, 1, '', '0', '', NULL, 'Completed', '2023-03-05', '2024-03-04', 1, '2023-03-05 17:36:48', '2023-03-05 17:36:48'),
(59, 94, 1, '', '0', '', NULL, 'Completed', '2023-03-05', '2024-03-04', 1, '2023-03-05 19:16:22', '2023-03-05 19:16:22'),
(60, 89, 2, '', '0', '', NULL, 'Completed', '2023-03-06', '2024-03-05', 1, '2023-03-06 06:35:48', '2023-03-06 06:35:48'),
(61, 96, 2, '', '0', '', NULL, 'Completed', '2023-03-06', '2024-03-05', 1, '2023-03-06 14:53:34', '2023-03-06 14:53:34'),
(62, 97, 2, '', '0', '', NULL, 'Completed', '2023-03-06', '2024-03-05', 1, '2023-03-06 15:51:14', '2023-03-06 15:51:14'),
(63, 98, 2, '', '0', '', NULL, 'Completed', '2023-03-06', '2024-03-05', 1, '2023-03-06 16:47:02', '2023-03-06 16:47:02'),
(64, 99, 2, '', '0', '', NULL, 'Completed', '2023-03-06', '2024-03-05', 1, '2023-03-06 17:02:56', '2023-03-06 17:02:56'),
(65, 100, 2, '', '0', '', NULL, 'Completed', '2023-03-06', '2024-03-05', 1, '2023-03-06 17:11:16', '2023-03-06 17:11:16'),
(66, 95, 1, '', '0', '', NULL, 'Completed', '2023-03-06', '2024-03-05', 1, '2023-03-06 23:17:41', '2023-03-06 23:17:41'),
(67, 78, 2, '', '0', '', NULL, 'Completed', '2023-03-06', '2024-03-05', 1, '2023-03-07 03:53:46', '2023-03-07 03:53:46'),
(68, 101, 1, '', '0', '', NULL, 'Completed', '2023-03-08', '2024-03-07', 1, '2023-03-08 22:57:27', '2023-03-08 22:57:27'),
(69, 103, 1, '', '0', '', NULL, 'Completed', '2023-03-10', '2024-03-09', 0, '2023-03-10 19:03:07', '2023-03-10 19:03:22'),
(70, 103, 2, '', '0', '', NULL, 'Completed', '2023-03-10', '2024-03-09', 1, '2023-03-10 19:03:22', '2023-03-10 19:03:22'),
(71, 105, 1, '', '0', '', NULL, 'Completed', '2023-03-10', '2024-03-09', 1, '2023-03-11 01:34:20', '2023-03-11 01:34:20'),
(72, 102, 1, '', '0', '', NULL, 'Completed', '2023-03-11', '2024-03-10', 0, '2023-03-11 23:05:29', '2023-03-11 23:06:18'),
(73, 102, 2, '', '0', '', NULL, 'Completed', '2023-03-11', '2024-03-10', 0, '2023-03-11 23:05:33', '2023-03-11 23:06:18'),
(74, 102, 2, '', '0', '', NULL, 'Completed', '2023-03-11', '2024-03-10', 1, '2023-03-11 23:06:18', '2023-03-11 23:06:18'),
(75, 107, 2, '', '0', '', NULL, 'Completed', '2023-03-19', '2024-03-18', 1, '2023-03-19 20:46:31', '2023-03-19 20:46:31'),
(76, 108, 1, '', '0', '', NULL, 'Completed', '2023-03-19', '2024-03-18', 1, '2023-03-19 21:31:49', '2023-03-19 21:31:49'),
(77, 110, 2, '', '0', '', NULL, 'Completed', '2023-03-20', '2024-03-19', 1, '2023-03-21 00:52:35', '2023-03-21 00:52:35'),
(78, 111, 2, '', '0', '', NULL, 'Completed', '2023-03-20', '2024-03-19', 1, '2023-03-21 00:57:33', '2023-03-21 00:57:33'),
(79, 112, 2, '', '0', '', NULL, 'Completed', '2023-03-21', '2024-03-20', 1, '2023-03-21 11:56:57', '2023-03-21 11:56:57'),
(80, 106, 2, '', '0', '', NULL, 'Completed', '2023-03-21', '2024-03-20', 1, '2023-03-22 00:35:50', '2023-03-22 00:35:50'),
(81, 114, 1, '', '0', '', NULL, 'Completed', '2023-03-21', '2024-03-20', 1, '2023-03-22 02:42:17', '2023-03-22 02:42:17'),
(82, 116, 4, '', '0', '', NULL, 'Completed', '2023-03-22', '2024-03-21', 1, '2023-03-22 14:58:29', '2023-03-22 14:58:29'),
(83, 109, 2, '', '0', '', NULL, 'Completed', '2023-03-22', '2024-03-21', 0, '2023-03-22 18:00:14', '2023-03-23 00:23:03'),
(84, 117, 2, '', '0', '', NULL, 'Completed', '2023-03-22', '2024-03-21', 1, '2023-03-22 23:22:43', '2023-03-22 23:22:43'),
(85, 118, 1, '', '0', '', NULL, 'Completed', '2023-03-22', '2024-03-21', 1, '2023-03-22 23:48:40', '2023-03-22 23:48:40'),
(86, 109, 2, '', '0', '', NULL, 'Completed', '2023-03-22', '2024-03-21', 1, '2023-03-23 00:23:03', '2023-03-23 00:23:03'),
(87, 119, 4, '', '0', '', NULL, 'Completed', '2023-03-23', '2024-03-22', 1, '2023-03-23 13:34:48', '2023-03-23 13:34:48'),
(88, 121, 1, '', '0', '', NULL, 'Completed', '2023-03-23', '2024-03-22', 1, '2023-03-23 17:42:59', '2023-03-23 17:42:59'),
(89, 124, 4, '', '0', '', NULL, 'Completed', '2023-03-23', '2024-03-22', 1, '2023-03-24 02:34:40', '2023-03-24 02:34:40'),
(90, 125, 2, '', '0', '', NULL, 'Completed', '2023-03-24', '2024-03-23', 1, '2023-03-24 12:50:30', '2023-03-24 12:50:30'),
(91, 127, 2, '', '0', '', NULL, 'Completed', '2023-03-24', '2024-03-23', 1, '2023-03-24 15:25:32', '2023-03-24 15:25:32'),
(92, 128, 2, '', '0', '', NULL, 'Completed', '2023-03-24', '2024-03-23', 1, '2023-03-24 16:33:46', '2023-03-24 16:33:46'),
(93, 129, 1, '', '0', '', NULL, 'Completed', '2023-03-24', '2024-03-23', 1, '2023-03-24 17:11:21', '2023-03-24 17:11:21'),
(94, 130, 2, '', '0', '', NULL, 'Completed', '2023-03-24', '2024-03-23', 1, '2023-03-24 20:01:14', '2023-03-24 20:01:14'),
(95, 131, 1, '', '0', '', NULL, 'Completed', '2023-03-24', '2024-03-23', 1, '2023-03-24 23:37:41', '2023-03-24 23:37:41'),
(96, 133, 2, '', '0', '', NULL, 'Completed', '2023-03-24', '2024-03-23', 1, '2023-03-24 23:54:35', '2023-03-24 23:54:35'),
(97, 134, 2, '', '0', '', NULL, 'Completed', '2023-03-24', '2024-03-23', 1, '2023-03-25 00:12:19', '2023-03-25 00:12:19'),
(98, 135, 4, '', '0', '', NULL, 'Completed', '2023-03-25', '2024-03-24', 1, '2023-03-25 19:40:53', '2023-03-25 19:40:53'),
(99, 138, 1, '', '0', '', NULL, 'Completed', '2023-03-25', '2024-03-24', 1, '2023-03-26 01:12:05', '2023-03-26 01:12:05'),
(100, 140, 2, '', '0', '', NULL, 'Completed', '2023-03-25', '2024-03-24', 1, '2023-03-26 03:06:05', '2023-03-26 03:06:05'),
(101, 141, 2, '', '0', '', NULL, 'Completed', '2023-03-26', '2024-03-25', 1, '2023-03-26 14:10:10', '2023-03-26 14:10:10'),
(102, 142, 2, '', '0', '', NULL, 'Completed', '2023-03-27', '2024-03-26', 1, '2023-03-27 16:36:48', '2023-03-27 16:36:48'),
(103, 143, 4, '', '0', '', NULL, 'Completed', '2023-03-27', '2024-03-26', 0, '2023-03-27 20:23:21', '2023-03-29 15:27:25'),
(104, 145, 2, '', '0', '', NULL, 'Completed', '2023-03-29', '2024-03-28', 1, '2023-03-29 12:57:45', '2023-03-29 12:57:45'),
(105, 143, 4, '', '0', '', NULL, 'Completed', '2023-03-29', '2024-03-28', 1, '2023-03-29 15:27:25', '2023-03-29 15:27:25'),
(106, 146, 1, '', '0', '', NULL, 'Completed', '2023-03-29', '2024-03-28', 1, '2023-03-29 16:50:29', '2023-03-29 16:50:29'),
(107, 148, 2, '', '0', '', NULL, 'Completed', '2023-03-29', '2024-03-28', 1, '2023-03-29 17:56:57', '2023-03-29 17:56:57'),
(108, 149, 2, '', '0', '', NULL, 'Completed', '2023-03-29', '2024-03-28', 1, '2023-03-29 19:06:34', '2023-03-29 19:06:34'),
(109, 151, 4, '', '0', '', NULL, 'Completed', '2023-03-29', '2024-03-28', 1, '2023-03-30 03:25:58', '2023-03-30 03:25:58'),
(110, 152, 2, '', '0', '', NULL, 'Completed', '2023-03-30', '2024-03-29', 1, '2023-03-30 16:42:28', '2023-03-30 16:42:28'),
(111, 154, 2, '', '0', '', NULL, 'Completed', '2023-03-31', '2024-03-30', 1, '2023-03-31 12:33:04', '2023-03-31 12:33:04'),
(112, 155, 1, '', '0', '', NULL, 'Completed', '2023-04-05', '2024-04-04', 0, '2023-04-05 19:29:49', '2023-04-05 19:30:43'),
(113, 155, 4, '', '0', '', NULL, 'Completed', '2023-04-05', '2024-04-04', 1, '2023-04-05 19:30:43', '2023-04-05 19:30:43'),
(114, 157, 1, '', '0', '', NULL, 'Completed', '2023-04-06', '2024-04-05', 0, '2023-04-06 09:37:18', '2023-04-06 09:52:37'),
(115, 157, 2, '', '0', '', NULL, 'Completed', '2023-04-06', '2024-04-05', 1, '2023-04-06 09:52:37', '2023-04-06 09:52:37'),
(116, 162, 2, '', '0', '', NULL, 'Completed', '2023-04-06', '2024-04-05', 1, '2023-04-06 16:06:04', '2023-04-06 16:06:04'),
(117, 163, 2, '', '0', '', NULL, 'Completed', '2023-04-06', '2024-04-05', 1, '2023-04-06 16:20:09', '2023-04-06 16:20:09'),
(118, 164, 2, '', '0', '', NULL, 'Completed', '2023-04-07', '2024-04-06', 1, '2023-04-07 19:02:53', '2023-04-07 19:02:53'),
(119, 165, 2, '', '0', '', NULL, 'Completed', '2023-04-07', '2024-04-06', 1, '2023-04-08 00:10:42', '2023-04-08 00:10:42'),
(120, 168, 2, '', '0', '', NULL, 'Completed', '2023-04-10', '2024-04-09', 1, '2023-04-10 14:18:10', '2023-04-10 14:18:10'),
(121, 169, 2, '', '0', '', NULL, 'Completed', '2023-04-10', '2024-04-09', 1, '2023-04-10 15:51:04', '2023-04-10 15:51:04'),
(122, 171, 1, '', '0', '', NULL, 'Completed', '2023-04-10', '2024-04-09', 1, '2023-04-10 19:57:00', '2023-04-10 19:57:00'),
(123, 170, 1, '', '0', '', NULL, 'Completed', '2023-04-10', '2024-04-09', 0, '2023-04-11 01:02:38', '2023-04-11 01:03:41'),
(124, 170, 2, '', '0', '', NULL, 'Completed', '2023-04-10', '2024-04-09', 1, '2023-04-11 01:03:41', '2023-04-11 01:03:41'),
(125, 172, 2, '', '0', '', NULL, 'Completed', '2023-04-10', '2024-04-09', 1, '2023-04-11 01:48:15', '2023-04-11 01:48:15'),
(126, 173, 4, '', '0', '', NULL, 'Completed', '2023-04-11', '2024-04-10', 1, '2023-04-11 14:45:29', '2023-04-11 14:45:29'),
(127, 175, 4, '', '0', '', NULL, 'Completed', '2023-04-11', '2024-04-10', 1, '2023-04-11 14:47:47', '2023-04-11 14:47:47'),
(128, 176, 1, '', '0', '', NULL, 'Completed', '2023-04-11', '2024-04-10', 1, '2023-04-11 20:47:21', '2023-04-11 20:47:21'),
(129, 179, 2, '', '0', '', NULL, 'Completed', '2023-04-12', '2024-04-11', 1, '2023-04-12 11:21:33', '2023-04-12 11:21:33'),
(130, 181, 1, '', '0', '', NULL, 'Completed', '2023-04-12', '2024-04-11', 1, '2023-04-12 16:18:16', '2023-04-12 16:18:16'),
(131, 180, 1, '', '0', '', NULL, 'Completed', '2023-04-12', '2024-04-11', 1, '2023-04-12 16:18:17', '2023-04-12 16:18:17'),
(132, 182, 2, '', '0', '', NULL, 'Completed', '2023-04-12', '2024-04-11', 1, '2023-04-12 18:32:12', '2023-04-12 18:32:12'),
(133, 183, 2, '', '0', '', NULL, 'Completed', '2023-04-12', '2024-04-11', 0, '2023-04-12 20:13:06', '2023-04-24 21:30:42'),
(134, 185, 4, '', '0', '', NULL, 'Completed', '2023-04-12', '2024-04-11', 1, '2023-04-12 22:06:34', '2023-04-12 22:06:34'),
(135, 186, 1, '', '0', '', NULL, 'Completed', '2023-04-12', '2024-04-11', 1, '2023-04-12 22:11:27', '2023-04-12 22:11:27'),
(136, 188, 4, '', '0', '', NULL, 'Completed', '2023-04-13', '2024-04-12', 1, '2023-04-13 14:00:13', '2023-04-13 14:00:13'),
(137, 189, 1, '', '0', '', NULL, 'Completed', '2023-04-13', '2024-04-12', 1, '2023-04-13 14:06:45', '2023-04-13 14:06:45'),
(138, 191, 1, '', '0', '', NULL, 'Completed', '2023-04-13', '2024-04-12', 1, '2023-04-13 20:30:53', '2023-04-13 20:30:53'),
(139, 192, 1, '', '0', '', NULL, 'Completed', '2023-04-13', '2024-04-12', 0, '2023-04-13 23:39:14', '2023-04-13 23:40:31'),
(140, 192, 1, '', '0', '', NULL, 'Completed', '2023-04-13', '2024-04-12', 1, '2023-04-13 23:40:31', '2023-04-13 23:40:31'),
(141, 194, 2, '', '0', '', NULL, 'Completed', '2023-04-14', '2024-04-13', 1, '2023-04-14 13:17:07', '2023-04-14 13:17:07'),
(142, 195, 2, '', '0', '', NULL, 'Completed', '2023-04-14', '2024-04-13', 1, '2023-04-14 13:40:56', '2023-04-14 13:40:56'),
(143, 197, 1, '', '0', '', NULL, 'Completed', '2023-04-14', '2024-04-13', 0, '2023-04-14 15:10:49', '2023-04-14 15:11:36'),
(144, 197, 2, '', '0', '', NULL, 'Completed', '2023-04-14', '2024-04-13', 1, '2023-04-14 15:11:36', '2023-04-14 15:11:36'),
(145, 196, 1, '', '0', '', NULL, 'Completed', '2023-04-14', '2024-04-13', 1, '2023-04-14 15:52:10', '2023-04-14 15:52:10'),
(146, 198, 2, '', '0', '', NULL, 'Completed', '2023-04-14', '2024-04-13', 1, '2023-04-14 16:16:30', '2023-04-14 16:16:30'),
(147, 199, 1, '', '0', '', NULL, 'Completed', '2023-04-14', '2024-04-13', 1, '2023-04-14 16:28:27', '2023-04-14 16:28:27'),
(148, 200, 1, '', '0', '', NULL, 'Completed', '2023-04-14', '2024-04-13', 1, '2023-04-14 18:44:01', '2023-04-14 18:44:01'),
(149, 204, 1, '', '0', '', NULL, 'Completed', '2023-04-15', '2024-04-14', 0, '2023-04-15 10:46:11', '2023-04-15 10:47:39'),
(150, 204, 4, '', '0', '', NULL, 'Completed', '2023-04-15', '2024-04-14', 1, '2023-04-15 10:47:39', '2023-04-15 10:47:39'),
(151, 202, 2, '', '0', '', NULL, 'Completed', '2023-04-15', '2024-04-14', 0, '2023-04-15 11:53:47', '2023-04-15 11:54:53'),
(152, 202, 1, '', '0', '', NULL, 'Completed', '2023-04-15', '2024-04-14', 1, '2023-04-15 11:54:53', '2023-04-15 11:54:53'),
(153, 206, 1, '', '0', '', NULL, 'Completed', '2023-04-15', '2024-04-14', 1, '2023-04-15 21:38:11', '2023-04-15 21:38:11'),
(154, 205, 1, '', '0', '', NULL, 'Completed', '2023-04-15', '2024-04-14', 1, '2023-04-15 23:01:54', '2023-04-15 23:01:54'),
(155, 207, 4, '', '0', '', NULL, 'Completed', '2023-04-15', '2024-04-14', 1, '2023-04-16 02:24:39', '2023-04-16 02:24:39'),
(156, 208, 1, '', '0', '', NULL, 'Completed', '2023-04-16', '2024-04-15', 1, '2023-04-16 20:41:04', '2023-04-16 20:41:04'),
(157, 210, 1, '', '0', '', NULL, 'Completed', '2023-04-17', '2024-04-16', 1, '2023-04-17 12:00:33', '2023-04-17 12:00:33'),
(158, 213, 1, '', '0', '', NULL, 'Completed', '2023-04-17', '2024-04-16', 1, '2023-04-17 12:25:33', '2023-04-17 12:25:33'),
(159, 215, 1, '', '0', '', NULL, 'Completed', '2023-04-17', '2024-04-16', 1, '2023-04-17 12:51:56', '2023-04-17 12:51:56'),
(160, 216, 1, '', '0', '', NULL, 'Completed', '2023-04-17', '2024-04-16', 1, '2023-04-17 13:27:22', '2023-04-17 13:27:22'),
(161, 217, 1, '', '0', '', NULL, 'Completed', '2023-04-17', '2024-04-16', 1, '2023-04-17 14:55:20', '2023-04-17 14:55:20'),
(162, 218, 1, '', '0', '', NULL, 'Completed', '2023-04-17', '2024-04-16', 1, '2023-04-17 15:40:46', '2023-04-17 15:40:46'),
(163, 219, 2, '', '0', '', NULL, 'Completed', '2023-04-18', '2024-04-17', 1, '2023-04-18 12:33:38', '2023-04-18 12:33:38'),
(164, 221, 1, '', '0', '', NULL, 'Completed', '2023-04-18', '2024-04-17', 1, '2023-04-18 14:00:41', '2023-04-18 14:00:41'),
(165, 225, 2, '', '0', '', NULL, 'Completed', '2023-04-18', '2024-04-17', 1, '2023-04-18 19:57:15', '2023-04-18 19:57:15'),
(166, 224, 1, '', '0', '', NULL, 'Completed', '2023-04-18', '2024-04-17', 1, '2023-04-18 19:59:01', '2023-04-18 19:59:01'),
(167, 226, 2, '', '0', '', NULL, 'Completed', '2023-04-18', '2024-04-17', 1, '2023-04-18 21:34:55', '2023-04-18 21:34:55'),
(168, 227, 2, '', '0', '', NULL, 'Completed', '2023-04-18', '2024-04-17', 1, '2023-04-18 21:44:11', '2023-04-18 21:44:11'),
(169, 228, 4, '', '0', '', NULL, 'Completed', '2023-04-18', '2024-04-17', 0, '2023-04-18 21:58:59', '2023-04-18 22:00:35'),
(170, 228, 2, '', '0', '', NULL, 'Completed', '2023-04-18', '2024-04-17', 1, '2023-04-18 22:00:35', '2023-04-18 22:00:35'),
(171, 233, 2, '', '0', '', NULL, 'Completed', '2023-04-19', '2024-04-18', 1, '2023-04-19 18:00:09', '2023-04-19 18:00:09'),
(172, 234, 1, '', '0', '', NULL, 'Completed', '2023-04-19', '2024-04-18', 0, '2023-04-19 20:59:49', '2023-04-19 21:00:07'),
(173, 234, 4, '', '0', '', NULL, 'Completed', '2023-04-19', '2024-04-18', 0, '2023-04-19 21:00:01', '2023-04-19 21:00:07'),
(174, 234, 2, '', '0', '', NULL, 'Completed', '2023-04-19', '2024-04-18', 1, '2023-04-19 21:00:07', '2023-04-19 21:00:07'),
(175, 235, 1, '', '0', '', NULL, 'Completed', '2023-04-19', '2024-04-18', 0, '2023-04-20 00:14:32', '2023-04-20 00:15:02'),
(176, 235, 1, '', '0', '', NULL, 'Completed', '2023-04-19', '2024-04-18', 1, '2023-04-20 00:15:02', '2023-04-20 00:15:02'),
(177, 230, 2, '', '0', '', NULL, 'Completed', '2023-04-19', '2024-04-18', 1, '2023-04-20 00:28:56', '2023-04-20 00:28:56'),
(178, 236, 1, '', '0', '', NULL, 'Completed', '2023-04-19', '2024-04-18', 1, '2023-04-20 00:49:07', '2023-04-20 00:49:07'),
(179, 238, 2, '', '0', '', NULL, 'Completed', '2023-04-20', '2024-04-19', 1, '2023-04-20 10:05:13', '2023-04-20 10:05:13'),
(180, 240, 1, '', '0', '', NULL, 'Completed', '2023-04-20', '2024-04-19', 1, '2023-04-20 17:11:05', '2023-04-20 17:11:05'),
(181, 241, 1, '', '0', '', NULL, 'Completed', '2023-04-21', '2024-04-20', 1, '2023-04-21 05:37:00', '2023-04-21 05:37:00'),
(182, 243, 1, '', '0', '', NULL, 'Completed', '2023-04-21', '2024-04-20', 0, '2023-04-21 17:01:50', '2023-04-21 17:02:17'),
(183, 243, 4, '', '0', '', NULL, 'Completed', '2023-04-21', '2024-04-20', 1, '2023-04-21 17:02:17', '2023-04-21 17:02:17'),
(184, 244, 1, '', '0', '', NULL, 'Completed', '2023-04-21', '2024-04-20', 1, '2023-04-21 20:20:48', '2023-04-21 20:20:48'),
(185, 245, 1, '', '0', '', NULL, 'Completed', '2023-04-21', '2024-04-20', 1, '2023-04-21 23:21:05', '2023-04-21 23:21:05'),
(186, 247, 1, '', '0', '', NULL, 'Completed', '2023-04-21', '2024-04-20', 1, '2023-04-22 02:48:33', '2023-04-22 02:48:33'),
(187, 246, 1, '', '0', '', NULL, 'Completed', '2023-04-21', '2024-04-20', 0, '2023-04-22 02:49:20', '2023-04-22 02:49:57'),
(188, 246, 1, '', '0', '', NULL, 'Completed', '2023-04-21', '2024-04-20', 1, '2023-04-22 02:49:57', '2023-04-22 02:49:57'),
(189, 250, 1, '', '0', '', NULL, 'Completed', '2023-04-22', '2024-04-21', 1, '2023-04-23 02:58:27', '2023-04-23 02:58:27'),
(190, 251, 1, '', '0', '', NULL, 'Completed', '2023-04-23', '2024-04-22', 1, '2023-04-23 10:43:53', '2023-04-23 10:43:53'),
(191, 253, 1, '', '0', '', NULL, 'Completed', '2023-04-23', '2024-04-22', 1, '2023-04-23 15:53:17', '2023-04-23 15:53:17'),
(192, 255, 1, '', '0', '', NULL, 'Completed', '2023-04-23', '2024-04-22', 0, '2023-04-24 02:16:54', '2023-04-24 02:54:46'),
(193, 255, 2, '', '0', '', NULL, 'Completed', '2023-04-23', '2024-04-22', 1, '2023-04-24 02:54:46', '2023-04-24 02:54:46'),
(194, 257, 1, '', '0', '', NULL, 'Completed', '2023-04-24', '2024-04-23', 1, '2023-04-24 11:56:29', '2023-04-24 11:56:29'),
(195, 258, 1, '', '0', '', NULL, 'Completed', '2023-04-24', '2024-04-23', 1, '2023-04-24 12:55:57', '2023-04-24 12:55:57'),
(196, 259, 2, '', '0', '', NULL, 'Completed', '2023-04-24', '2024-04-23', 1, '2023-04-24 13:05:46', '2023-04-24 13:05:46'),
(197, 261, 1, '', '0', '', NULL, 'Completed', '2023-04-24', '2024-04-23', 1, '2023-04-24 16:14:29', '2023-04-24 16:14:29'),
(198, 262, 2, '', '0', '', NULL, 'Completed', '2023-04-24', '2024-04-23', 1, '2023-04-24 17:57:21', '2023-04-24 17:57:21'),
(199, 183, 4, '', '0', '', NULL, 'Completed', '2023-04-24', '2024-04-23', 1, '2023-04-24 21:30:42', '2023-04-24 21:30:42'),
(200, 264, 4, '', '0', '', NULL, 'Completed', '2023-04-24', '2024-04-23', 1, '2023-04-24 23:27:44', '2023-04-24 23:27:44'),
(201, 266, 1, '', '0', '', NULL, 'Completed', '2023-04-24', '2024-04-23', 1, '2023-04-25 01:12:53', '2023-04-25 01:12:53'),
(202, 267, 1, '', '0', '', NULL, 'Completed', '2023-04-24', '2024-04-23', 1, '2023-04-25 01:48:10', '2023-04-25 01:48:10'),
(203, 268, 1, '', '0', '', NULL, 'Completed', '2023-04-25', '2024-04-24', 0, '2023-04-25 04:06:22', '2023-04-25 04:06:36'),
(204, 268, 1, '', '0', '', NULL, 'Completed', '2023-04-25', '2024-04-24', 1, '2023-04-25 04:06:36', '2023-04-25 04:06:36'),
(205, 269, 1, '', '0', '', NULL, 'Completed', '2023-04-25', '2024-04-24', 1, '2023-04-25 07:15:01', '2023-04-25 07:15:01'),
(206, 270, 2, '', '0', '', NULL, 'Completed', '2023-04-25', '2024-04-24', 1, '2023-04-25 13:14:55', '2023-04-25 13:14:55'),
(207, 271, 2, '', '0', '', NULL, 'Completed', '2023-04-25', '2024-04-24', 0, '2023-04-25 13:32:23', '2023-04-29 16:24:59'),
(208, 272, 1, '', '0', '', NULL, 'Completed', '2023-04-25', '2024-04-24', 1, '2023-04-25 13:36:30', '2023-04-25 13:36:30'),
(209, 274, 2, '', '0', '', NULL, 'Completed', '2023-04-25', '2024-04-24', 1, '2023-04-25 19:25:29', '2023-04-25 19:25:29'),
(210, 279, 1, '', '0', '', NULL, 'Completed', '2023-04-27', '2024-04-26', 1, '2023-04-27 15:41:08', '2023-04-27 15:41:08'),
(211, 280, 1, '', '0', '', NULL, 'Completed', '2023-04-28', '2024-04-27', 1, '2023-04-28 14:25:06', '2023-04-28 14:25:06'),
(212, 282, 4, '', '0', '', NULL, 'Completed', '2023-04-28', '2024-04-27', 1, '2023-04-28 17:03:33', '2023-04-28 17:03:33'),
(213, 271, 1, '', '0', '', NULL, 'Completed', '2023-04-29', '2024-04-28', 1, '2023-04-29 16:24:59', '2023-04-29 16:24:59'),
(214, 283, 2, '', '0', '', NULL, 'Completed', '2023-05-01', '2024-04-30', 1, '2023-05-01 16:07:35', '2023-05-01 16:07:35'),
(215, 284, 2, '', '0', '', NULL, 'Completed', '2023-05-01', '2024-04-30', 1, '2023-05-01 18:57:55', '2023-05-01 18:57:55'),
(216, 285, 1, '', '0', '', NULL, 'Completed', '2023-05-02', '2024-05-01', 1, '2023-05-02 12:36:18', '2023-05-02 12:36:18'),
(217, 286, 1, '', '0', '', NULL, 'Completed', '2023-05-02', '2024-05-01', 1, '2023-05-02 13:24:36', '2023-05-02 13:24:36'),
(218, 287, 1, '', '0', '', NULL, 'Completed', '2023-05-02', '2024-05-01', 1, '2023-05-02 16:57:04', '2023-05-02 16:57:04'),
(219, 289, 4, '', '0', '', NULL, 'Completed', '2023-05-02', '2024-05-01', 0, '2023-05-02 19:54:23', '2023-05-02 19:54:47'),
(220, 289, 4, '', '0', '', NULL, 'Completed', '2023-05-02', '2024-05-01', 0, '2023-05-02 19:54:47', '2023-05-02 19:54:47'),
(221, 289, 4, '', '0', '', NULL, 'Completed', '2023-05-02', '2024-05-01', 1, '2023-05-02 19:54:47', '2023-05-02 19:54:47'),
(222, 291, 2, '', '0', '', NULL, 'Completed', '2023-05-02', '2024-05-01', 1, '2023-05-02 23:07:28', '2023-05-02 23:07:28'),
(223, 293, 2, '', '0', '', NULL, 'Completed', '2023-05-03', '2024-05-02', 1, '2023-05-03 16:23:40', '2023-05-03 16:23:40'),
(224, 294, 2, '', '0', '', NULL, 'Completed', '2023-05-03', '2024-05-02', 1, '2023-05-03 20:41:29', '2023-05-03 20:41:29'),
(225, 297, 1, '', '0', '', NULL, 'Completed', '2023-05-03', '2024-05-02', 0, '2023-05-03 22:14:27', '2023-05-03 22:14:28'),
(226, 297, 1, '', '0', '', NULL, 'Completed', '2023-05-03', '2024-05-02', 1, '2023-05-03 22:14:28', '2023-05-03 22:14:28'),
(227, 298, 1, '', '0', '', NULL, 'Completed', '2023-05-03', '2024-05-02', 1, '2023-05-03 22:33:06', '2023-05-03 22:33:06'),
(228, 300, 1, '', '0', '', NULL, 'Completed', '2023-05-03', '2024-05-02', 0, '2023-05-04 02:13:42', '2023-05-04 02:13:51'),
(229, 300, 1, '', '0', '', NULL, 'Completed', '2023-05-03', '2024-05-02', 1, '2023-05-04 02:13:51', '2023-05-04 02:13:51'),
(230, 305, 2, '', '0', '', NULL, 'Completed', '2023-05-05', '2024-05-04', 1, '2023-05-05 14:48:07', '2023-05-05 14:48:07'),
(231, 302, 1, '', '0', '', NULL, 'Completed', '2023-05-05', '2024-05-04', 1, '2023-05-05 17:07:04', '2023-05-05 17:07:04'),
(232, 306, 1, '', '0', '', NULL, 'Completed', '2023-05-05', '2024-05-04', 1, '2023-05-05 20:09:54', '2023-05-05 20:09:54'),
(233, 307, 1, '', '0', '', NULL, 'Completed', '2023-05-05', '2024-05-04', 1, '2023-05-05 21:30:13', '2023-05-05 21:30:13'),
(234, 308, 2, '', '0', '', NULL, 'Completed', '2023-05-06', '2024-05-05', 1, '2023-05-06 11:17:59', '2023-05-06 11:17:59'),
(235, 309, 1, '', '0', '', NULL, 'Completed', '2023-05-06', '2024-05-05', 1, '2023-05-06 12:35:07', '2023-05-06 12:35:07'),
(236, 311, 1, '', '0', '', NULL, 'Completed', '2023-05-06', '2024-05-05', 1, '2023-05-06 21:49:34', '2023-05-06 21:49:34'),
(237, 312, 1, '', '0', '', NULL, 'Completed', '2023-05-06', '2024-05-05', 1, '2023-05-06 21:59:38', '2023-05-06 21:59:38'),
(238, 314, 2, '', '0', '', NULL, 'Completed', '2023-05-07', '2024-05-06', 1, '2023-05-07 11:33:18', '2023-05-07 11:33:18'),
(239, 315, 2, '', '0', '', NULL, 'Completed', '2023-05-07', '2024-05-06', 1, '2023-05-07 16:01:59', '2023-05-07 16:01:59'),
(240, 295, 1, '', '0', '', NULL, 'Completed', '2023-05-08', '2024-05-07', 1, '2023-05-08 13:57:07', '2023-05-08 13:57:07'),
(241, 319, 1, '', '0', '', NULL, 'Completed', '2023-05-08', '2024-05-07', 1, '2023-05-08 19:00:06', '2023-05-08 19:00:06'),
(242, 320, 2, '', '0', '', NULL, 'Completed', '2023-05-10', '2024-05-09', 1, '2023-05-10 16:24:33', '2023-05-10 16:24:33'),
(243, 321, 2, '', '0', '', NULL, 'Completed', '2023-05-11', '2024-05-10', 1, '2023-05-12 01:31:29', '2023-05-12 01:31:29'),
(244, 322, 2, '', '0', '', NULL, 'Completed', '2023-05-11', '2024-05-10', 1, '2023-05-12 02:37:18', '2023-05-12 02:37:18'),
(245, 323, 1, '', '0', '', NULL, 'Completed', '2023-05-12', '2024-05-11', 1, '2023-05-12 15:19:30', '2023-05-12 15:19:30'),
(246, 325, 2, '', '0', '', NULL, 'Completed', '2023-05-13', '2024-05-12', 1, '2023-05-13 17:29:17', '2023-05-13 17:29:17'),
(247, 327, 1, '', '0', '', NULL, 'Completed', '2023-05-13', '2024-05-12', 1, '2023-05-14 02:39:30', '2023-05-14 02:39:30'),
(248, 328, 1, '', '0', '', NULL, 'Completed', '2023-05-13', '2024-05-12', 1, '2023-05-14 03:03:50', '2023-05-14 03:03:50'),
(249, 329, 1, '', '0', '', NULL, 'Completed', '2023-05-13', '2024-05-12', 1, '2023-05-14 03:18:48', '2023-05-14 03:18:48'),
(250, 330, 1, '', '0', '', NULL, 'Completed', '2023-05-13', '2024-05-12', 1, '2023-05-14 03:26:17', '2023-05-14 03:26:17'),
(251, 331, 1, '', '0', '', NULL, 'Completed', '2023-05-14', '2024-05-13', 1, '2023-05-14 13:04:41', '2023-05-14 13:04:41'),
(252, 332, 2, '', '0', '', NULL, 'Completed', '2023-05-14', '2024-05-13', 1, '2023-05-14 13:43:16', '2023-05-14 13:43:16'),
(253, 336, 4, '', '0', '', NULL, 'Completed', '2023-05-14', '2024-05-13', 1, '2023-05-15 01:29:15', '2023-05-15 01:29:15'),
(254, 337, 1, '', '0', '', NULL, 'Completed', '2023-05-15', '2024-05-14', 1, '2023-05-15 12:22:43', '2023-05-15 12:22:43'),
(255, 338, 2, '', '0', '', NULL, 'Completed', '2023-05-15', '2024-05-14', 1, '2023-05-15 13:03:48', '2023-05-15 13:03:48'),
(256, 339, 1, '', '0', '', NULL, 'Completed', '2023-05-15', '2024-05-14', 1, '2023-05-15 14:28:19', '2023-05-15 14:28:19'),
(257, 167, 2, '', '0', '', NULL, 'Completed', '2023-05-15', '2024-05-14', 1, '2023-05-15 15:41:35', '2023-05-15 15:41:35'),
(258, 341, 1, '', '0', '', NULL, 'Completed', '2023-05-15', '2024-05-14', 1, '2023-05-15 19:12:49', '2023-05-15 19:12:49'),
(259, 340, 4, '', '0', '', NULL, 'Completed', '2023-05-15', '2024-05-14', 1, '2023-05-15 19:36:28', '2023-05-15 19:36:28'),
(260, 344, 1, '', '0', '', NULL, 'Completed', '2023-05-15', '2024-05-14', 0, '2023-05-15 22:12:34', '2023-05-15 22:32:27'),
(261, 344, 2, '', '0', '', NULL, 'Completed', '2023-05-15', '2024-05-14', 0, '2023-05-15 22:32:12', '2023-05-15 22:32:27'),
(262, 344, 4, '', '0', '', NULL, 'Completed', '2023-05-15', '2024-05-14', 1, '2023-05-15 22:32:27', '2023-05-15 22:32:27'),
(263, 345, 1, '', '0', '', NULL, 'Completed', '2023-05-15', '2024-05-14', 1, '2023-05-16 00:20:04', '2023-05-16 00:20:04'),
(264, 347, 1, '', '0', '', NULL, 'Completed', '2023-05-15', '2024-05-14', 1, '2023-05-16 02:59:21', '2023-05-16 02:59:21'),
(265, 350, 2, '', '0', '', NULL, 'Completed', '2023-05-16', '2024-05-15', 1, '2023-05-16 15:37:19', '2023-05-16 15:37:19'),
(266, 352, 1, '', '0', '', NULL, 'Completed', '2023-05-16', '2024-05-15', 1, '2023-05-16 18:29:42', '2023-05-16 18:29:42'),
(267, 351, 2, '', '0', '', NULL, 'Completed', '2023-05-16', '2024-05-15', 1, '2023-05-17 03:05:00', '2023-05-17 03:05:00'),
(268, 356, 1, '', '0', '', NULL, 'Completed', '2023-05-17', '2024-05-16', 0, '2023-05-17 13:28:37', '2023-05-17 13:28:56'),
(269, 356, 2, '', '0', '', NULL, 'Completed', '2023-05-17', '2024-05-16', 1, '2023-05-17 13:28:56', '2023-05-17 13:28:56'),
(270, 357, 1, '', '0', '', NULL, 'Completed', '2023-05-17', '2024-05-16', 1, '2023-05-17 13:59:21', '2023-05-17 13:59:21'),
(271, 360, 1, '', '0', '', NULL, 'Completed', '2023-05-17', '2024-05-16', 1, '2023-05-18 02:46:36', '2023-05-18 02:46:36'),
(272, 361, 1, '', '0', '', NULL, 'Completed', '2023-05-18', '2024-05-17', 1, '2023-05-18 12:46:46', '2023-05-18 12:46:46'),
(273, 362, 4, '', '0', '', NULL, 'Completed', '2023-05-18', '2024-05-17', 1, '2023-05-18 12:56:42', '2023-05-18 12:56:42'),
(274, 367, 1, '', '0', '', NULL, 'Completed', '2023-05-18', '2024-05-17', 1, '2023-05-18 21:20:44', '2023-05-18 21:20:44'),
(275, 368, 1, '', '0', '', NULL, 'Completed', '2023-05-18', '2024-05-17', 1, '2023-05-19 01:14:57', '2023-05-19 01:14:57'),
(276, 369, 1, '', '0', '', NULL, 'Completed', '2023-05-19', '2024-05-18', 1, '2023-05-19 16:30:30', '2023-05-19 16:30:30'),
(277, 370, 2, '', '0', '', NULL, 'Completed', '2023-05-20', '2024-05-19', 1, '2023-05-20 11:21:22', '2023-05-20 11:21:22'),
(278, 371, 2, '', '0', '', NULL, 'Completed', '2023-05-20', '2024-05-19', 1, '2023-05-20 11:29:52', '2023-05-20 11:29:52'),
(279, 373, 1, '', '0', '', NULL, 'Completed', '2023-05-21', '2024-05-20', 1, '2023-05-21 14:16:35', '2023-05-21 14:16:35'),
(280, 374, 4, '', '0', '', NULL, 'Completed', '2023-05-21', '2024-05-20', 1, '2023-05-21 20:23:17', '2023-05-21 20:23:17'),
(281, 378, 1, '', '0', '', NULL, 'Completed', '2023-05-22', '2024-05-21', 0, '2023-05-22 16:12:38', '2023-05-22 16:23:31'),
(282, 379, 1, '', '0', '', NULL, 'Completed', '2023-05-22', '2024-05-21', 1, '2023-05-22 16:13:57', '2023-05-22 16:13:57'),
(283, 378, 2, '', '0', '', NULL, 'Completed', '2023-05-22', '2024-05-21', 1, '2023-05-22 16:23:31', '2023-05-22 16:23:31'),
(284, 382, 1, '', '0', '', NULL, 'Completed', '2023-05-22', '2024-05-21', 1, '2023-05-22 20:21:06', '2023-05-22 20:21:06'),
(285, 387, 2, '', '0', '', NULL, 'Completed', '2023-05-23', '2024-05-22', 1, '2023-05-23 20:40:34', '2023-05-23 20:40:34'),
(286, 388, 2, '', '0', '', NULL, 'Completed', '2023-05-27', '2024-05-26', 1, '2023-05-27 16:05:30', '2023-05-27 16:05:30'),
(287, 389, 2, '', '0', '', NULL, 'Completed', '2023-05-29', '2024-05-28', 1, '2023-05-29 12:09:03', '2023-05-29 12:09:03'),
(288, 391, 1, '', '0', '', NULL, 'Completed', '2023-06-05', '2024-06-04', 0, '2023-06-05 22:13:28', '2023-06-05 22:13:29'),
(289, 391, 1, '', '0', '', NULL, 'Completed', '2023-06-05', '2024-06-04', 1, '2023-06-05 22:13:29', '2023-06-05 22:13:29'),
(290, 395, 1, '', '0', '', NULL, 'Completed', '2023-06-08', '2024-06-07', 1, '2023-06-08 23:31:28', '2023-06-08 23:31:28'),
(291, 398, 1, '', '0', '', NULL, 'Completed', '2023-06-09', '2024-06-08', 1, '2023-06-09 11:23:19', '2023-06-09 11:23:19'),
(292, 400, 1, '', '0', '', NULL, 'Completed', '2023-06-09', '2024-06-08', 1, '2023-06-09 15:23:30', '2023-06-09 15:23:30'),
(293, 404, 2, '', '0', '', NULL, 'Completed', '2023-06-10', '2024-06-09', 1, '2023-06-10 09:48:24', '2023-06-10 09:48:24'),
(294, 405, 1, '', '0', '', NULL, 'Completed', '2023-06-10', '2024-06-09', 1, '2023-06-10 14:40:17', '2023-06-10 14:40:17'),
(295, 407, 1, '', '0', '', NULL, 'Completed', '2023-06-10', '2024-06-09', 1, '2023-06-10 14:52:04', '2023-06-10 14:52:04'),
(296, 408, 1, '', '0', '', NULL, 'Completed', '2023-06-10', '2024-06-09', 1, '2023-06-10 15:59:19', '2023-06-10 15:59:19'),
(297, 412, 2, '', '0', '', NULL, 'Completed', '2023-06-10', '2024-06-09', 1, '2023-06-11 02:38:45', '2023-06-11 02:38:45'),
(298, 414, 1, '', '0', '', NULL, 'Completed', '2023-06-11', '2024-06-10', 1, '2023-06-11 04:13:17', '2023-06-11 04:13:17'),
(299, 420, 1, '', '0', '', NULL, 'Completed', '2023-06-11', '2024-06-10', 1, '2023-06-12 02:30:14', '2023-06-12 02:30:14'),
(300, 421, 1, '', '0', '', NULL, 'Completed', '2023-06-12', '2024-06-11', 1, '2023-06-12 11:39:17', '2023-06-12 11:39:17'),
(301, 423, 1, '', '0', '', NULL, 'Completed', '2023-06-12', '2024-06-11', 1, '2023-06-12 12:45:50', '2023-06-12 12:45:50'),
(302, 425, 1, '', '0', '', NULL, 'Completed', '2023-06-12', '2024-06-11', 1, '2023-06-12 18:39:20', '2023-06-12 18:39:20'),
(303, 406, 1, '', '0', '', NULL, 'Completed', '2023-06-12', '2024-06-11', 1, '2023-06-12 20:33:51', '2023-06-12 20:33:51'),
(304, 429, 1, '', '0', '', NULL, 'Completed', '2023-06-12', '2024-06-11', 1, '2023-06-13 00:05:56', '2023-06-13 00:05:56'),
(305, 431, 4, '', '0', '', NULL, 'Completed', '2023-06-12', '2024-06-11', 1, '2023-06-13 00:50:48', '2023-06-13 00:50:48'),
(306, 432, 1, '', '0', '', NULL, 'Completed', '2023-06-12', '2024-06-11', 1, '2023-06-13 02:50:08', '2023-06-13 02:50:08'),
(307, 428, 1, '', '0', '', NULL, 'Completed', '2023-06-13', '2024-06-12', 1, '2023-06-13 12:06:31', '2023-06-13 12:06:31'),
(308, 435, 1, '', '0', '', NULL, 'Completed', '2023-06-13', '2024-06-12', 1, '2023-06-13 12:19:34', '2023-06-13 12:19:34'),
(309, 436, 1, '', '0', '', NULL, 'Completed', '2023-06-13', '2024-06-12', 1, '2023-06-13 15:01:32', '2023-06-13 15:01:32'),
(310, 433, 1, '', '0', '', NULL, 'Completed', '2023-06-13', '2024-06-12', 1, '2023-06-13 20:44:05', '2023-06-13 20:44:05'),
(311, 439, 4, '', '0', '', NULL, 'Completed', '2023-06-13', '2024-06-12', 1, '2023-06-13 22:47:23', '2023-06-13 22:47:23'),
(312, 441, 1, '', '0', '', NULL, 'Completed', '2023-06-19', '2024-06-18', 1, '2023-06-19 16:48:25', '2023-06-19 16:48:25'),
(313, 443, 1, '', '0', '', NULL, 'Completed', '2023-06-20', '2024-06-19', 1, '2023-06-20 13:41:09', '2023-06-20 13:41:09'),
(314, 444, 2, '', '0', '', NULL, 'Completed', '2023-07-07', '2024-07-06', 1, '2023-07-07 19:43:03', '2023-07-07 19:43:03'),
(315, 445, 1, '', '0', '', NULL, 'Completed', '2023-07-09', '2024-07-08', 1, '2023-07-09 23:10:44', '2023-07-09 23:10:44'),
(316, 446, 1, '', '0', '', NULL, 'Completed', '2023-07-10', '2024-07-09', 1, '2023-07-10 19:02:16', '2023-07-10 19:02:16'),
(317, 447, 1, '', '0', '', NULL, 'Completed', '2023-07-10', '2024-07-09', 0, '2023-07-10 21:27:17', '2023-07-11 11:46:07'),
(318, 448, 1, '', '0', '', NULL, 'Completed', '2023-07-10', '2024-07-09', 1, '2023-07-11 00:05:14', '2023-07-11 00:05:14'),
(319, 451, 1, '', '0', '', NULL, 'Completed', '2023-07-11', '2024-07-10', 0, '2023-07-11 11:35:01', '2023-07-11 11:36:58'),
(320, 451, 2, '', '0', '', NULL, 'Completed', '2023-07-11', '2024-07-10', 1, '2023-07-11 11:36:58', '2023-07-11 11:36:58'),
(321, 447, 2, '', '0', '', NULL, 'Completed', '2023-07-11', '2024-07-10', 0, '2023-07-11 11:45:41', '2023-07-11 11:46:07'),
(322, 447, 4, '', '0', '', NULL, 'Completed', '2023-07-11', '2024-07-10', 1, '2023-07-11 11:46:07', '2023-07-11 11:46:07'),
(323, 453, 1, '', '0', '', NULL, 'Completed', '2023-07-11', '2024-07-10', 1, '2023-07-11 15:31:18', '2023-07-11 15:31:18'),
(324, 455, 4, '', '0', '', NULL, 'Completed', '2023-07-11', '2024-07-10', 1, '2023-07-11 16:38:57', '2023-07-11 16:38:57'),
(325, 459, 4, '', '0', '', NULL, 'Completed', '2023-07-11', '2024-07-10', 1, '2023-07-11 18:37:02', '2023-07-11 18:37:02'),
(326, 461, 4, '', '0', '', NULL, 'Completed', '2023-07-11', '2024-07-10', 1, '2023-07-11 19:37:59', '2023-07-11 19:37:59'),
(327, 462, 1, '', '0', '', NULL, 'Completed', '2023-07-11', '2024-07-10', 1, '2023-07-11 19:52:03', '2023-07-11 19:52:03'),
(328, 469, 1, '', '0', '', NULL, 'Completed', '2023-07-11', '2024-07-10', 1, '2023-07-12 01:59:55', '2023-07-12 01:59:55'),
(329, 471, 1, '', '0', '', NULL, 'Completed', '2023-07-12', '2024-07-11', 0, '2023-07-12 15:24:11', '2023-07-12 21:22:09'),
(330, 471, 1, '', '0', '', NULL, 'Completed', '2023-07-12', '2024-07-11', 0, '2023-07-12 15:26:24', '2023-07-12 21:22:09'),
(331, 472, 1, '', '0', '', NULL, 'Completed', '2023-07-12', '2024-07-11', 1, '2023-07-12 17:00:36', '2023-07-12 17:00:36'),
(332, 471, 1, '', '0', '', NULL, 'Completed', '2023-07-12', '2024-07-11', 0, '2023-07-12 18:04:11', '2023-07-12 21:22:09'),
(333, 471, 1, '', '0', '', NULL, 'Completed', '2023-07-12', '2024-07-11', 1, '2023-07-12 21:22:09', '2023-07-12 21:22:09'),
(334, 422, 1, '', '0', '', NULL, 'Completed', '2023-07-13', '2024-07-12', 0, '2023-07-13 10:37:02', '2023-07-17 13:18:02'),
(335, 478, 4, '', '0', '', NULL, 'Completed', '2023-07-13', '2024-07-12', 1, '2023-07-13 10:43:25', '2023-07-13 10:43:25'),
(336, 422, 1, '', '0', '', NULL, 'Completed', '2023-07-13', '2024-07-12', 0, '2023-07-13 11:23:29', '2023-07-17 13:18:02'),
(337, 479, 1, '', '0', '', NULL, 'Completed', '2023-07-13', '2024-07-12', 1, '2023-07-13 12:21:42', '2023-07-13 12:21:42'),
(338, 481, 1, '', '0', '', NULL, 'Completed', '2023-07-13', '2024-07-12', 1, '2023-07-13 13:38:18', '2023-07-13 13:38:18'),
(339, 483, 1, '', '0', '', NULL, 'Completed', '2023-07-13', '2024-07-12', 0, '2023-07-13 13:51:31', '2023-07-13 15:19:42'),
(340, 483, 2, '', '0', '', NULL, 'Completed', '2023-07-13', '2024-07-12', 1, '2023-07-13 15:19:42', '2023-07-13 15:19:42'),
(341, 422, 1, '', '0', '', NULL, 'Completed', '2023-07-13', '2024-07-12', 0, '2023-07-14 00:17:00', '2023-07-17 13:18:02'),
(342, 489, 1, '', '0', '', NULL, 'Completed', '2023-07-13', '2024-07-12', 1, '2023-07-14 01:27:52', '2023-07-14 01:27:52'),
(343, 482, 4, '', '0', '', NULL, 'Completed', '2023-07-13', '2024-07-12', 0, '2023-07-14 01:56:13', '2023-07-14 01:57:19'),
(344, 482, 2, '', '0', '', NULL, 'Completed', '2023-07-13', '2024-07-12', 1, '2023-07-14 01:57:19', '2023-07-14 01:57:19'),
(345, 490, 1, '', '0', '', NULL, 'Completed', '2023-07-13', '2024-07-12', 0, '2023-07-14 02:06:21', '2023-07-17 00:56:39'),
(346, 490, 2, '', '0', '', NULL, 'Completed', '2023-07-13', '2024-07-12', 0, '2023-07-14 02:41:27', '2023-07-17 00:56:39'),
(347, 490, 2, '', '0', '', NULL, 'Completed', '2023-07-13', '2024-07-12', 0, '2023-07-14 02:41:42', '2023-07-17 00:56:39'),
(348, 422, 1, '', '0', '', NULL, 'Completed', '2023-07-15', '2024-07-14', 0, '2023-07-15 06:39:29', '2023-07-17 13:18:02'),
(349, 422, 1, '', '0', '', NULL, 'Completed', '2023-07-15', '2024-07-14', 0, '2023-07-15 07:01:15', '2023-07-17 13:18:02'),
(350, 494, 4, '', '0', '', NULL, 'Completed', '2023-07-15', '2024-07-14', 1, '2023-07-15 14:17:50', '2023-07-15 14:17:50'),
(351, 490, 4, '', '0', '', NULL, 'Completed', '2023-07-16', '2024-07-15', 1, '2023-07-17 00:56:39', '2023-07-17 00:56:39'),
(352, 497, 1, '', '0', '', NULL, 'Completed', '2023-07-16', '2024-07-15', 1, '2023-07-17 02:04:00', '2023-07-17 02:04:00'),
(353, 496, 1, '', '0', '', NULL, 'Completed', '2023-07-16', '2024-07-15', 1, '2023-07-17 02:11:20', '2023-07-17 02:11:20'),
(354, 498, 4, '', '0', '', NULL, 'Completed', '2023-07-17', '2024-07-16', 1, '2023-07-17 09:07:16', '2023-07-17 09:07:16'),
(355, 499, 1, '', '0', '', NULL, 'Completed', '2023-07-17', '2024-07-16', 1, '2023-07-17 09:26:08', '2023-07-17 09:26:08'),
(356, 500, 4, '', '0', '', NULL, 'Completed', '2023-07-17', '2024-07-16', 0, '2023-07-17 11:41:54', '2023-07-17 11:42:07'),
(357, 500, 4, '', '0', '', NULL, 'Completed', '2023-07-17', '2024-07-16', 1, '2023-07-17 11:42:07', '2023-07-17 11:42:07'),
(358, 422, 1, '', '0', '', NULL, 'Completed', '2023-07-17', '2024-07-16', 0, '2023-07-17 13:16:53', '2023-07-17 13:18:02'),
(359, 422, 1, '', '0', '', NULL, 'Completed', '2023-07-17', '2024-07-16', 0, '2023-07-17 13:17:36', '2023-07-17 13:18:02'),
(360, 422, 1, '', '0', '', NULL, 'Completed', '2023-07-17', '2024-07-16', 0, '2023-07-17 13:17:54', '2023-07-17 13:18:02'),
(361, 422, 1, '', '0', '', NULL, 'Completed', '2023-07-17', '2024-07-16', 1, '2023-07-17 13:18:02', '2023-07-17 13:18:02'),
(362, 501, 1, '', '0', '', NULL, 'Completed', '2023-07-17', '2024-07-16', 1, '2023-07-17 16:48:07', '2023-07-17 16:48:07'),
(363, 503, 1, '', '0', '', NULL, 'Completed', '2023-07-24', '2024-07-23', 1, '2023-07-25 00:50:12', '2023-07-25 00:50:12'),
(364, 505, 1, '', '0', '', NULL, 'Completed', '2023-07-25', '2024-07-24', 1, '2023-07-25 20:27:17', '2023-07-25 20:27:17'),
(365, 506, 1, '', '0', '', NULL, 'Completed', '2023-08-01', '2024-07-31', 0, '2023-08-02 02:45:45', '2023-08-02 02:46:24'),
(366, 506, 1, '', '0', '', NULL, 'Completed', '2023-08-01', '2024-07-31', 1, '2023-08-02 02:46:24', '2023-08-02 02:46:24'),
(367, 465, 1, '', '0', '', NULL, 'Completed', '2023-08-03', '2024-08-02', 0, '2023-08-03 23:34:19', '2023-08-03 23:35:00'),
(368, 465, 2, '', '0', '', NULL, 'Completed', '2023-08-03', '2024-08-02', 0, '2023-08-03 23:34:39', '2023-08-03 23:35:00'),
(369, 465, 1, '', '0', '', NULL, 'Completed', '2023-08-03', '2024-08-02', 1, '2023-08-03 23:35:00', '2023-08-03 23:35:00'),
(370, 507, 1, '', '0', '', NULL, 'Completed', '2023-08-04', '2024-08-03', 1, '2023-08-04 18:41:54', '2023-08-04 18:41:54'),
(371, 508, 1, '', '0', '', NULL, 'Completed', '2023-08-13', '2024-08-12', 1, '2023-08-13 23:35:26', '2023-08-13 23:35:26'),
(372, 512, 1, '', '0', '', NULL, 'Completed', '2023-10-08', '2024-10-07', 0, '2023-10-08 14:43:37', '2023-10-08 14:44:29'),
(373, 512, 2, '', '0', '', NULL, 'Completed', '2023-10-08', '2024-10-07', 0, '2023-10-08 14:44:02', '2023-10-08 14:44:29'),
(374, 512, 4, '', '0', '', NULL, 'Completed', '2023-10-08', '2024-10-07', 1, '2023-10-08 14:44:29', '2023-10-08 14:44:29'),
(375, 510, 1, '', '0', '', NULL, 'Completed', '2023-10-09', '2024-10-08', 1, '2023-10-09 10:39:14', '2023-10-09 10:39:14'),
(376, 513, 2, '', '0', '', NULL, 'Completed', '2023-10-09', '2024-10-08', 1, '2023-10-10 02:53:36', '2023-10-10 02:53:36'),
(377, 515, 1, '', '0', '', NULL, 'Completed', '2023-11-18', '2024-11-17', 1, '2023-11-19 02:09:58', '2023-11-19 02:09:58'),
(378, 517, 1, '', '0', '', NULL, 'Completed', '2023-11-19', '2024-11-18', 1, '2023-11-19 14:44:55', '2023-11-19 14:44:55'),
(379, 518, 1, '', '0', '', NULL, 'Completed', '2023-11-19', '2024-11-18', 1, '2023-11-19 14:48:44', '2023-11-19 14:48:44'),
(380, 519, 1, '', '0', '', NULL, 'Completed', '2023-11-20', '2024-11-19', 1, '2023-11-20 18:07:30', '2023-11-20 18:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `page_about_items`
--

CREATE TABLE `page_about_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `detail` text DEFAULT NULL,
  `status` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_about_items`
--

INSERT INTO `page_about_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '<h2 style=\"font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; color: rgb(77, 77, 77);\">Shaping the Future of Business</h2><p style=\"color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"> 9JAJOB.COM INT’L SERVICES&nbsp;<span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto; font-family: &quot;DM Sans&quot;, sans-serif; font-size: 15px;\">registered with Nigerian Corporate Affairs Commission &nbsp;</span><span style=\"-webkit-tap-highlight-color: transparent; caret-color: rgb(51, 51, 51); -webkit-text-size-adjust: 100%;\">is &nbsp;your number one source for all things. We\'re dedicated to giving you the very best of business/services information within and outside your environs in Nigeria.</span></p><p style=\"color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">We are committed to nurturing a neutral platform and&nbsp; helping business establishments maintain high standards by connecting business and service providers to their prospective clients and customers.&nbsp;</span></p><p style=\"color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"><span style=\"-webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">9JAJOB has come a long way from its beginnings. When first started out, our passion for business growth drove us that we now serve customers all over Nigeria and beyond. We are thrilled that we\'re able to turn our passion into our own platform .</span><br></p><p style=\"color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">We hope you enjoy our products as much as we enjoy offering them to you. If you have any questions or comments, please don\'t hesitate to contact us.</p><p style=\"color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"><span style=\"font-size: 2rem; -webkit-tap-highlight-color: transparent; -webkit-text-size-adjust: 100%;\">Our Values</span><br></p><p style=\"font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; color: rgb(77, 77, 77);\"><span style=\"font-family: Arial;\">﻿<b>Resilience</b>&nbsp;</span><br></p><p style=\"color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">We push ourselves beyond our abilities when faced with tough times. When we foresee uncertainty, we address it only with flexibility.</p><p style=\"color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"><b>Acceptance</b></p><p style=\"color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">Feedback is never taken personally, we break it into positive pieces and strive to work on each and every element even more effectively.</p><p style=\"color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"><b>Humility</b>&nbsp;</p><p style=\"color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">It’s always ‘us’ over ‘me’. We don’t lose ourselves in pride or confidence during individual successes but focus on being our simple selves in every which way.</p><p style=\"color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"><b>Spark</b></p><p style=\"color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">We believe in, stand for, and are evangelists of our culture - both, within Nigeria and externally with all our stakeholders.</p><p style=\"color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"><b>Judgement</b></p><p style=\"color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">It’s not our abilities that show who we truly are - it’s our choices. We aim to get these rights, at least in the majority of the cases.</p><p style=\"color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"><b>Vission&nbsp;</b></p><p style=\"color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">It is our top priority to raise the standard of business services in Nigeria and it is our vission to make all business/service accessibility very easy and simple. With this we urge all to assist us in this journey of making our world a better place.&nbsp;</p><p style=\"text-align: justify;\"><br></p>', 'Show', 'About Us', 'About Us Meta Description', NULL, '2023-02-01 23:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `page_blog_items`
--

CREATE TABLE `page_blog_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `detail` text DEFAULT NULL,
  `status` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_blog_items`
--

INSERT INTO `page_blog_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Adverts', NULL, 'Show', 'Blog', 'Blog Meta Description', NULL, '2022-11-26 15:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `page_contact_items`
--

CREATE TABLE `page_contact_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `detail` text DEFAULT NULL,
  `status` text NOT NULL,
  `contact_address` text DEFAULT NULL,
  `contact_email` text DEFAULT NULL,
  `contact_phone` text DEFAULT NULL,
  `contact_map` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_contact_items`
--

INSERT INTO `page_contact_items` (`id`, `name`, `detail`, `status`, `contact_address`, `contact_email`, `contact_phone`, `contact_map`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Contact Us', '<p>our support team is always available to see to all your needs&nbsp;</p><p>kindly reach out to us !</p>', 'Show', 'Ikeja\r\nLagos Nigeria', 'info@9jajob.com\r\n9jajobconnect@gmail.com', '+234 915 198 7637', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d253682.63269197324!2d3.143870793081468!3d6.548035697609178!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x103b8b2ae68280c1%3A0xdc9e87a367c3d9cb!2sLagos%2C%20Nigeria!5e0!3m2!1sen!2sde!4v1669639907133!5m2!1sen!2sde\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Contact Us', 'Contact Us Meta Description', NULL, '2023-02-01 23:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `page_faq_items`
--

CREATE TABLE `page_faq_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `detail` text DEFAULT NULL,
  `status` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_faq_items`
--

INSERT INTO `page_faq_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'FAQ', '<h3 class=\"nomargin_top\" style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 0px; margin-bottom: 10px; font-size: 22px; -webkit-font-smoothing: antialiased;\"><br></h3><table class=\"table table-bordered\"><tbody><tr><td><div id=\"collapseOne_about\" class=\"panel-collapse collapse in\" style=\"display: block;\"><div class=\"panel-body\" style=\"padding: 30px; border-top: 1px solid rgb(221, 221, 221); line-height: 1.6 !important;\"><div class=\"panel-group\" id=\"registrationss\" style=\"margin-bottom: 20px; font-family: Arial, sans-serif; font-size: 13px; background-color: rgba(231, 237, 243, 0.5);\"><div class=\"panel panel-default\" style=\"margin-bottom: 0px; background-color: rgb(255, 255, 255); border: 1px solid rgb(221, 221, 221); border-radius: 3px; box-shadow: none; overflow: hidden;\"><div id=\"collapseOne_registrationss\" class=\"panel-collapse collapse in\" aria-expanded=\"true\" style=\"display: block;\"><div class=\"panel-body\" style=\"padding: 30px; border-top: 1px solid rgb(221, 221, 221); line-height: 1.6 !important;\"><p><br></p></div></div></div></div></div></div></td></tr></tbody></table>', 'Show', 'FAQ', 'FAQ Meta Description', NULL, '2022-11-26 20:08:37');

-- --------------------------------------------------------

--
-- Table structure for table `page_home_items`
--

CREATE TABLE `page_home_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `search_heading` text NOT NULL,
  `search_text` text NOT NULL,
  `search_background` text NOT NULL,
  `category_heading` text NOT NULL,
  `category_subheading` text NOT NULL,
  `category_total` int(11) NOT NULL,
  `category_status` text NOT NULL,
  `listing_heading` text NOT NULL,
  `listing_subheading` text NOT NULL,
  `listing_status` text NOT NULL,
  `location_heading` text NOT NULL,
  `location_subheading` text NOT NULL,
  `location_total` int(11) NOT NULL,
  `location_status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_home_items`
--

INSERT INTO `page_home_items` (`id`, `seo_title`, `seo_meta_description`, `search_heading`, `search_text`, `search_background`, `category_heading`, `category_subheading`, `category_total`, `category_status`, `listing_heading`, `listing_subheading`, `listing_status`, `location_heading`, `location_subheading`, `location_total`, `location_status`, `created_at`, `updated_at`) VALUES
(1, 'Nigerian best business listing platform .', 'Make your Nigerian based business visible online to attract more customers within and outside your location in Nigeria.', 'Find the best services in town', 'You can get your desired awesome Nigerian businesses near you  here by name, category or location.', '442ef4f690ab9805f1d50978ab1e9db6.jpg', 'Categories', 'Please see all the business categories from here', 6, 'Show', 'Featured businesses', 'See all the popular businesses from below', 'Show', 'Locations', 'Please see all the businesses locations from here', 6, 'Show', NULL, '2023-01-30 14:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `page_listing_category_items`
--

CREATE TABLE `page_listing_category_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `detail` text DEFAULT NULL,
  `status` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_listing_category_items`
--

INSERT INTO `page_listing_category_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Business Category', NULL, 'Show', 'Business Category', NULL, NULL, '2022-11-27 12:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `page_listing_items`
--

CREATE TABLE `page_listing_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `detail` text DEFAULT NULL,
  `status` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_listing_items`
--

INSERT INTO `page_listing_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Businesses/Services', NULL, 'Show', 'Businesses/Services', NULL, NULL, '2022-11-27 12:09:56');

-- --------------------------------------------------------

--
-- Table structure for table `page_listing_location_items`
--

CREATE TABLE `page_listing_location_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `detail` text DEFAULT NULL,
  `status` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_listing_location_items`
--

INSERT INTO `page_listing_location_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Business Locations', NULL, 'Show', 'Business Locations', NULL, NULL, '2022-11-27 12:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `page_other_items`
--

CREATE TABLE `page_other_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login_page_seo_title` text NOT NULL,
  `login_page_seo_meta_description` text DEFAULT NULL,
  `registration_page_seo_title` text DEFAULT NULL,
  `registration_page_seo_meta_description` text DEFAULT NULL,
  `forget_password_page_seo_title` text DEFAULT NULL,
  `forget_password_page_seo_meta_description` text DEFAULT NULL,
  `customer_panel_page_seo_title` text DEFAULT NULL,
  `customer_panel_page_seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_other_items`
--

INSERT INTO `page_other_items` (`id`, `login_page_seo_title`, `login_page_seo_meta_description`, `registration_page_seo_title`, `registration_page_seo_meta_description`, `forget_password_page_seo_title`, `forget_password_page_seo_meta_description`, `customer_panel_page_seo_title`, `customer_panel_page_seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Login', NULL, 'Registration', NULL, 'Forget Password', NULL, 'Customer Panel', NULL, NULL, '2021-07-18 11:37:33');

-- --------------------------------------------------------

--
-- Table structure for table `page_pricing_items`
--

CREATE TABLE `page_pricing_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `detail` text DEFAULT NULL,
  `status` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_pricing_items`
--

INSERT INTO `page_pricing_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Pricing', NULL, 'Hide', 'Pricing', NULL, NULL, '2023-02-01 01:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `page_privacy_items`
--

CREATE TABLE `page_privacy_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `detail` text DEFAULT NULL,
  `status` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_privacy_items`
--

INSERT INTO `page_privacy_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', '<p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">This privacy policy &nbsp;will help you understand how 9JAJOB team uses and protects the data you provide to us when you visit and use 9jajob platform.</p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">We reserve the right to change this policy at any given time, of which you will be promptly updated. If you want to make sure that you are up to date with the latest changes, we advise you to frequently visit this page.</p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\"><b>What User Data We Collect</b></p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">When you visit the website, we may collect the following data:</p><ul style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\"><li>Your IP address.</li><li>Your contact information and email address.</li><li>Other information such as interests and preferences.</li><li>Data profile regarding your online behavior on our website.</li></ul><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\"><b>Why We Collect Your Data</b></p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">We are collecting your data for several reasons:</p><ul style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\"><li>To better understand your needs.</li><li>To improve our services and products.</li><li>To send you promotional emails containing the information we think you will find interesting.</li><li>To contact you to fill out surveys and participate in other types of market research.</li><li>To customize our website according to your online behavior and personal preferences.</li></ul><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\"><b>Safeguarding and Securing the Data</b></p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">9JAJOB team is committed to securing your data and keeping it confidential. 9jajob team has done all in its power to prevent data theft, unauthorized access, and disclosure by implementing the latest technologies and software, which help us safeguard all the information we collect online.</p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\"><b>Our Cookie Policy</b></p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">Once you agree to allow our website to use cookies, you also agree to use the data it collects regarding your online behavior (analyze web traffic, web pages you spend the most time on, and websites you visit).</p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">The data we collect by using cookies is used to customize our website to your needs. After we use the data for statistical analysis, the data is completely removed from our systems.</p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">Please note that cookies don\'t allow us to gain control of your computer in any way. They are strictly used to monitor which pages you find useful and which you do not so that we can provide a better experience for you.</p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">If you want to disable cookies, you can do it by accessing the settings of your internet browser. (Provide links for cookie settings for major internet browsers).</p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\"><span style=\"font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 1rem;\"><b>Links to Other Websites</b></span></p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">Our website contains links that lead to other websites. If you click on these links 9JAJOB is not held responsible for your data and privacy protection. Visiting those websites is not governed by this privacy policy agreement. Make sure to read the privacy policy documentation of the website you go to from our website.</p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\"><b>Restricting the Collection of your Personal Data</b></p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">At some point, you might wish to restrict the use and collection of your personal data. You can achieve this by doing the following:</p><ul style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\"><li>When you are filling the forms on the website, make sure to check if there is a box which you can leave unchecked, if you don\'t want to disclose your personal information.</li><li>If you have already agreed to share your information with us, feel free to contact us via email and we will be more than happy to change this for you.</li></ul><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">9JAJOB will not lease, sell or distribute your personal information to any third parties, unless we have your permission. We might do so if the law forces us. Your personal information will be used when we need to send you promotional materials if you agree to this privacy policy.</p>', 'Show', 'Privacy Policy', 'Privacy Policy Meta Description', NULL, '2022-11-28 14:13:09');

-- --------------------------------------------------------

--
-- Table structure for table `page_refund_items`
--

CREATE TABLE `page_refund_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `detail` text DEFAULT NULL,
  `status` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_refund_items`
--

INSERT INTO `page_refund_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Refund Policy', '<p>Lorem ipsum dolor sit amet, id saperet suavitate signiferumque sea. Eu tantas invenire signiferumque per, at affert eloquentiam eos, duo no sale utroque. His ad homero verterem, ut paulo neglegentur contentiones per. Ex cum unum vocent commodo. Ut ridens principes rationibus ius, ex mea saepe docendi, cu eum unum assum accumsan.</p><p>Ne quo possim consectetuer, splendide voluptatibus ut mea. Summo mucius regione qui et, sea soleat everti indoctum no. Brute postea ut vel, oblique propriae pertinacia et sed. No nominati adipiscing nam, accusata interpretaris no est, no tota conceptam nam. Id posidonium dissentiunt mea, an nibh menandri eum. Meis nominati cum cu.</p><p>Eum ad delicatissimi signiferumque, mea causae delenit perfecto et. Sit primis nostrum id, an postea numquam per, id quo diceret deleniti consectetuer. Eum eu salutatus mediocritatem. Blandit ocurreret dissentiet ne quo, ex mazim numquam delenit his.</p><p>Ea mel elit placerat. Ius nobis delicata gloriatur at. Nam fabulas salutandi at, in per officiis omittantur contentiones, omnes insolens suscipiantur sed cu. Ei modus persequeris vix. Persius legimus has an, mea dicit maiestatis adipiscing eu.</p>', 'Show', 'Refund Policy', 'Refund Policy Meta Description', NULL, '2021-06-17 20:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `page_term_items`
--

CREATE TABLE `page_term_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `detail` text DEFAULT NULL,
  `status` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_term_items`
--

INSERT INTO `page_term_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Terms of service', '<p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">Please read these terms of service carefully before using 9JAJOB website operated by 9JAJOB team &nbsp;</p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\"><b>Conditions of Use</b></p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">The services we provide to you, are subject to the conditions stated below in this document. Every time you visit this website, use its services or make a purchase, you accept the following conditions. This is why we urge you to carefully read through this document&nbsp;</p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\"><b>Privacy Policy</b></p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">Before you continue using 9jajob platform we advise you to read our <a href=\"https://www.9jajob.com/privacy-policy\" target=\"_blank\">privacy policy&nbsp;</a>&nbsp;regarding our user data collection. It will help you better understand of our practices.</p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\"><b>Copyright</b></p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">Content published on this website (digital downloads, images, texts, graphics, logos) is the property of 9jajob team &nbsp;and/or its content creators and protected by international copyright laws. The entire compilation of the content found on this website is the exclusive property of 9jajob team with copyright authorship for this compilation by [name].</p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\"><b>Communications</b></p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">The entire communication with us is electronic. Every time you send us an email or visit our website, you are going to be communicating with us. You hereby consent to receive communications from us. If you subscribe to the news on our website, you are going to receive regular emails from us. We will continue to communicate with you by posting news and notices on our website and by sending you emails. You also agree that all notices, disclosures, agreements and other communications we provide to you electronically meet the legal requirements that such communications be in writing.</p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\"><b>Applicable Law</b></p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">By visiting this website, you agree that the laws of the Nigeria without regard to principles of conflict laws, will govern these terms of service, or any dispute of any sort that might come between 9jajob team &nbsp;and you, or its business partners and associates.</p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\"><b>Disputes</b><br></p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">Any dispute related in any way to your visit to this website or to products you purchase from us shall be arbitrated by state or federal court Nigeria&nbsp;<span style=\"-webkit-tap-highlight-color: transparent;\">&nbsp;and you consent to exclusive jurisdiction and venue of such courts.</span></p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\"><span style=\"font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 1rem;\"><b>Comments, Reviews, and Emails</b></span><br></p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">Visitors may post content as long as it is not obscene, illegal, defamatory, threatening, infringing of intellectual property rights, invasive of privacy or injurious in any other way to third parties. Content has to be free of software viruses, political campaign, and commercial solicitation.</p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">We reserve all rights (but not the obligation) to remove and/or edit such content. When you post your content, you grant 9jajob team &nbsp;non-exclusive, royalty-free and irrevocable right to use, reproduce, publish, modify such content throughout the world in any media.</p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\"><b>License and Site Access</b></p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">We grant you a limited license to access and make personal use of this website. You are not allowed to download or modify it. This may be done only with written consent from us.</p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\"><b>User Account</b></p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">If you are an owner of an account on this website, you are solely responsible for maintaining the confidentiality of your private user details (username and password). You are responsible for all activities that occur under your account or password.</p><p style=\"font-size: 16px; caret-color: rgb(77, 77, 77); color: rgb(77, 77, 77); font-family: &quot;Nanum Gothic&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; -webkit-text-size-adjust: 100%;\">We reserve all rights to terminate accounts, edit or remove content and cancel orders in their sole discretion.</p>', 'Show', 'Terms of service', 'Terms and Conditions Meta Description', NULL, '2022-11-28 14:04:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('arefin2k@gmail.com', '$2y$10$n.b82lZQRLiL4WIgRsgpeu8UpfQMmx9M1FdiQQ18rjK38i9yGD6kG', '2020-11-23 19:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `agent_type` text NOT NULL,
  `rating` int(11) NOT NULL,
  `review` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `listing_id`, `agent_id`, `agent_type`, `rating`, `review`, `created_at`, `updated_at`) VALUES
(2, 3, 3, 'Customer', 4, 'I visited to their place. This is just awesome.', '2021-07-11 12:42:25', '2021-07-11 12:42:25'),
(3, 7, 3, 'Customer', 5, 'This is a very nice and well furnished gym and fitness lab in the city. I highly recommend him. The trainer is very friendly and co-operative.', '2021-07-22 07:35:29', '2021-07-22 07:35:29'),
(4, 6, 3, 'Customer', 1, 'The antique found here are very overpriced. So I do not like the high price.', '2021-07-22 08:21:04', '2021-07-22 08:21:04'),
(6, 3, 6, 'Customer', 3, 'Nice place, but risky of local people.', '2021-07-22 17:43:38', '2021-07-22 17:43:38'),
(8, 5, 1, 'Admin', 4, 'Awesome place. I recommend always!', '2021-07-22 22:16:53', '2021-07-22 22:39:02'),
(11, 6, 1, 'Admin', 5, 'Collections are huge. I like it.', '2021-07-22 22:44:16', '2021-07-22 22:44:16'),
(12, 5, 6, 'Customer', 5, 'I visited this resort last year. It is a very charming place.', '2021-07-23 00:24:27', '2021-07-23 00:24:27'),
(13, 182, 490, 'Customer', 5, 'He\'s a trustworthy person and always strive hard to bring people close to my their Creator (Allah)', '2023-07-19 00:38:58', '2023-07-19 00:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `social_media_items`
--

CREATE TABLE `social_media_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `social_url` text NOT NULL,
  `social_icon` text NOT NULL,
  `social_order` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media_items`
--

INSERT INTO `social_media_items` (`id`, `social_url`, `social_icon`, `social_order`, `created_at`, `updated_at`) VALUES
(2, 'https://twitter.com/9jajob_Ng?t=v0TjaThUKc7qS0uP7wW3Lw&s=09', 'fab fa-twitter', 2, '2020-11-24 12:54:56', '2022-11-28 05:12:34'),
(4, 'https://www.facebook.com/profile.php?id=100085699670382&mibextid=LQQJ4d', 'fab fa-facebook-f', 1, '2020-11-24 12:56:23', '2022-11-28 05:11:05'),
(7, 'https://www.instagram.com/invites/contact/?i=11ndwwn4rz9kv&utm_content=peisbru', 'fab fa-instagram', 3, '2021-07-05 09:41:50', '2022-12-24 01:16:15'),
(8, 'https://wa.me/message/3DHUJQ2Z7MBSC1', 'fab fa-whatsapp', 4, '2021-07-05 09:42:37', '2022-12-24 02:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `zip` text DEFAULT NULL,
  `website` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `linkedin` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `pinterest` text DEFAULT NULL,
  `youtube` text DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `password` text NOT NULL,
  `token` text NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `country`, `address`, `state`, `city`, `zip`, `website`, `facebook`, `twitter`, `linkedin`, `instagram`, `pinterest`, `youtube`, `photo`, `banner`, `password`, `token`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Peter Smith', 'customer@gmail.com', '111-222-4569', 'USA', '23, PK Road, NYC 45', 'CA', 'NYC', '12982', 'https://www.testwebsite.com', 'https://www.facebook.com/sabbir', 'https://www.twitter.com/sabbir', NULL, NULL, NULL, NULL, '39953cc10c2b3ca7b26a64a3d53a3527.jpg', '6b9fa0d0e92e180718c4e4264e6a1767.jpg', '$2y$10$u4qe8OUXllX2wZmPmwTdNuDXvi//RywL3Prhc07G8f.sH3VxQVJDy', '', 'Active', '2021-07-10 02:24:24', '2022-12-24 21:50:36'),
(4, 'James Hendershot', 'james@gmail.com', '662-908-3879', 'United States', '1240 Tanglewood Road,', 'MS', 'Luka', '38852', 'https://www.areavoip.com', '#', '#', '#', '#', '#', '#', '', '', '$2y$10$jS2sgKkluo1AZR73RPltluFnY3aQF7yxp6INXhfmOn7VrpTEWGp76', '', 'Active', '2021-07-11 20:41:06', '2022-12-24 21:50:36'),
(6, 'Samin Shikder', 'samin@gmail.com', '662-746-8568', 'USA', '2642 Rafe Lane', 'MS', 'Yazoo City', '39194', 'http://www.samin00.com', '#', '#', '#', '#', NULL, NULL, NULL, NULL, '$2y$10$51K8otGh6RH1CLbwW2YgK.TK0BzI1dJKGdySUA53i2gvDDcMeGruq', 'dd46d3a124a85f2f910008ce2c906face1e79a2db1d446bfa8db4843a91f89f5', 'Active', '2021-07-17 00:33:56', '2022-12-24 21:50:36'),
(7, 'Sammy', '9jajobconnect@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YRAt5pJ1SirYbe/zJa1kQu4ZEw3xkCgKdTaPbRfdExyhp.KtwgcpG', 'd48765de73df6659c099b8b3ade926b4ab95f280839034fd13953892c2fdd93a', 'Active', '2022-11-14 04:58:19', '2022-11-20 14:54:37'),
(8, 'Sammy', 'sammyoge111@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ppJVlffeTcLe6V2Egr9n.ejnk5rpHUYs/hsSUdNQlX43w1YF0US/.', '6e499ff8a5a9a7eb8376c09256524fd41b6b65fa7e602d5235608115d3ba1b79', 'Active', '2022-11-14 04:59:20', '2022-11-20 14:54:40'),
(9, 'Habakkuk', 'o.ugwuoke2891@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$u6Vrh.1RoGZvyLyy6fP04.F83d8Y0zpdX.a73hjK8oGJaYL25pj46', 'fabd158b20056ec41642f73a4e1a6ee0e6aeaecd4e0eeb4d4033d8c7308eb039', 'Active', '2022-11-15 17:18:30', '2023-01-13 18:08:47'),
(10, 'Sammy', 'Samuelonah0@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$KDbByxK..eMm5e2FmLtcj.Bp6Ff3pId3VQylBRKkpjA17fHTAUBBO', '6e78a180dbff9baaaa358c531516ad51b4ecaa63f300718963fb8b4721c36f95', 'Active', '2022-11-16 03:34:57', '2022-11-20 14:55:12'),
(11, 'Arefin', 'phpscriptpoint@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$CyueUYHzOn4lH5xAjyypQux/qkHW6BS0Gw4p7ejI4Q4.FdezJQnle', '860acb2c676c0969838e9eb86143fb960fb11dcf744ecd1f8329a7f77c014305', 'Pending', '2022-11-18 20:55:52', '2022-11-18 20:55:52'),
(12, 'Godson', 'Charlottebrian602@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Nm9I6j27ps3ByR5/k5UZsOYbNogyQLvFsTSlC3LAKtRhENMtM5L7O', '3d96b9b88ec8ecbe14af57ba54fdd2960fd56aa17e8c98ba04ad1563149d7ab3', 'Active', '2022-11-20 15:54:32', '2023-01-13 18:08:58'),
(13, 'Beauty', 'beuty36@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$K94Y.1t13AcTlBVndg9IZ.EIzqb/jtW8s9MCKwlFROgDy69FjU8Va', 'dde77acebde162473bbc2e324c7e3c5f9e2edd1d3b830582ba114d8507ab1c9e', 'Active', '2022-11-21 00:40:29', '2023-01-09 13:33:56'),
(14, 'South Habakkuk', 'chiobinna91@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4bojzsKP359zMyYav2rjZ.cY4K5rJr3DntvP8qfn92BaSjNRILBuG', '87cdd864e0506025c8f4e6cba0adcce80165b09b4e600cdabaf61794f154a7e3', 'Active', '2022-11-21 00:42:23', '2023-01-13 18:09:28'),
(15, 'Mister Arefin', 'arefin2k@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ze7Yty8UAltdn/a.LWrJN.cV3L7BLv14mNHEaj6QnkK4uXeBGNABu', '', 'Active', '2022-11-26 12:19:32', '2022-11-26 12:19:48'),
(16, 'Sammy', 'beauty@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xxNu5Zk5WmWCo5bSegZ6MOvEQkR8h027IPSS1BZoIN9gP8ERBE2bW', 'ff2d9405ae37f5a7aaae69ffb350911a768412a8cf0472ce804901efc04d27d0', 'Active', '2022-11-26 13:15:04', '2023-01-13 18:09:22'),
(17, 'Emmanuel Nwachukwu', 'ceoconcept500@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$yBAcr/D7OndGNEOVoAVe1uovaZECrRXZM/m/e7rndK9IcULAM2P.m', '', 'Active', '2022-12-24 00:43:31', '2022-12-24 01:04:00'),
(18, 'Arinze Miracle Nsude', 'arinzemiracle200@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pnQARN/WM6eWlPdNB/pNUOvyc6WjsQ0/Mm64kiqcAKlf8kpIs0Kda', 'bfadff67601a1a70a374e57b57dfdef4465b5eb7e56b4e7024145ffa064b1605', 'Active', '2022-12-24 00:51:26', '2023-01-13 18:09:14'),
(19, 'Beauty Derah', 'beauty.eliad@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd6b743957054b6a70203549eb9b024b3.jpg', NULL, '$2y$10$XIEinzlPYXqqhHJR7mednOrAT7UwHn08zlPgLiUfsPjWjMwYg4Lf6', '', 'Active', '2023-01-09 12:28:52', '2023-01-09 15:05:51'),
(21, 'Eduard', 'nctest@namecheap.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$q4WO7EbnexpdeO6DRIxXeOS7uowoYhfQqDFsrbRfhZ18jG1e3TXL6', 'e0438d7b6c797274e03e0d31796320413660f172c0d77a2b0c3619cdf78a7ddf', 'Pending', '2023-01-19 18:32:06', '2023-01-19 18:32:06'),
(22, 'ThankGod', 'thankgodogbaomi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$sc3nDgefwKC/BcHdV90epuHC2VaIgpo3CT0Wxd0GpGFZG6WbcJHca', 'ba5ea08f95fde80df7335bb034834373ef9ceeec4c532765c79059f7b44b9b56', 'Pending', '2023-01-19 18:45:25', '2023-01-19 18:45:25'),
(23, 'test', 'nccsteam@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$aokFKfVHsa8ls7VIl5LNgOCa67FfI38XWnLLkFRSEk55Ebleje3WC', 'e7f97cd917f7006ed90a944e39268721787b1ce200d3e650794106d97f45ace7', 'Pending', '2023-01-19 18:55:16', '2023-01-19 18:55:16'),
(24, 'Benjamin Chinemerem', 'bensinoking@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ad5d13feebfcafa99da91b4d20d8f2ca.jpg', '8ac9267096f7443c933daedf307d1058.jpg', '$2y$10$juOsJta.7020YeeKgrgdkOQiEOJAd2pcvzpDXCINXQlzdLmLqWU6W', '', 'Active', '2023-01-23 20:15:31', '2023-01-23 21:32:34'),
(25, 'Morshedul Arefin', 'arefindev@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xsvU4WMdSd6nUQp4MfEyJO8CX2NHH5jZK9ljXChADSg6pw6q29PgS', '', 'Active', '2023-01-23 23:53:03', '2023-01-23 23:53:18'),
(26, 'BNK ENTERPRISE', 'arinzemiracle20@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$saMV5iV6zzWdklmFBVLfM.GuUwMbqtM5q87Aaa7I4FjZMlbjiNPsm', '', 'Active', '2023-01-24 13:58:18', '2023-01-24 13:59:29'),
(27, 'Sinoking empire', 'bennycrypotoking@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uZul2nBzrsV6lAoAVDdSpuW4x5eqBPMsc5mseIjSfGRQgvVFMNsZK', '6215877944875c251bf88463f55a5cd222f4dc1c036900f855b590e5256dda32', 'Active', '2023-01-25 00:33:13', '2023-01-25 00:49:10'),
(28, 'Sinoking empire world', 'benchinemerem10@gmail.com', '09068719924', 'Nigeria', 'No 10 agbani road', 'Enugu', 'Enugu', '410010', NULL, 'https://www.facebook.com/benjamin.chinemerem.58?mibextid=LQQJ4d', NULL, NULL, NULL, NULL, NULL, '75d54bddc2ab9c3bdcc486a7a08216a8.jpg', 'c42bcc814cc67223f5987025a698077c.jpg', '$2y$10$5oT3CeLuW8l090JNJDCKmu5IuFt9NYMY0SddIgHcydDhs6423D4G.', '', 'Active', '2023-01-25 00:34:56', '2023-01-25 01:21:16'),
(29, 'Benny empire', 'sammysinochuka@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jp93puXVTBmh7CtOpthtk.5eQBQvyCP6tVIdQ3yAPuisLDpRG0L1q', '7f33e76bf87f33b398f2cbb4df8050749e6a7279ad2ff9b050181b09189c1a02', 'Active', '2023-01-25 00:37:35', '2023-01-25 00:48:54'),
(30, 'manimani', 'mariamadanivelli@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$CkvKg2n4zvxcoXTJFB22Ku9ucmw5AsRi1G8C5d/yPhRWfH6dzhRSq', '', 'Active', '2023-01-30 00:46:26', '2023-01-30 00:50:59'),
(31, 'Benny Empire world', 'benjaminclox55@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$UAH8MnVUA3JgvVUyIJUQI.L6o4A6spipAgSDNudw0z40s377rKGhG', '', 'Active', '2023-02-01 01:17:47', '2023-02-01 01:28:45'),
(32, 'DJ ILLTUNES', 'blakesvictor@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TKNnIlSfH.BRZpRQWsdfqOyUtzDfthu9BVxKMI8dBNif3MT4gPPt2', '', 'Active', '2023-02-02 01:18:24', '2023-02-02 01:25:05'),
(33, 'Eucharia', 'ezeafunanyae@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3tO9tBvJGptVihmUKSewBO4F/efvJgIYTwJWSJ3.Ck1c4skgRJFYq', 'd57906f069175e6dadd213a24918870d9040162e3a209c284201a40f3f8a30bd', 'Pending', '2023-02-02 02:11:33', '2023-02-02 02:11:33'),
(34, 'Chidex stitches', 'mchidera662@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$dK9REcW6KMTtr/UO0S1CX.JhSmPhw13NBgG7K2TS1fOBq1vFAkKgq', '6d14c0ccc7c9f7eec4a3ccdd67235d9e36986e809c56cfc903a339aa3567b262', 'Active', '2023-02-02 02:30:49', '2023-02-02 03:06:35'),
(35, 'KONNECT', 'itzkonnect@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Sci8Yyujdrd1FXCu.q8C0uWIjnWXL/tkMr9xJeYuKOljYAmoRbkXq', '', 'Active', '2023-02-02 11:25:37', '2023-02-02 11:27:24'),
(36, 'Michael', 'bobbyfuneral763@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '528f8f948eea7c1788b54200142053b0.jpg', NULL, '$2y$10$tUj9Xghbq1dH6WkTItguyuuvRzr/x.TtlGUpPnA5IYXnzctbGUR32', '', 'Active', '2023-02-02 11:42:50', '2023-02-06 22:39:58'),
(37, 'Chukwuemeka samuel', 'samuelchukwuemeka003@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FJpxiGgY4/siXZK9qRBaC.MdS9qPWXLVzSwQGgudfoJGpTVfoxjoC', '9dee98dc05abecbdf7bb1ec3ac3ea26df5e91ef319dd82cbe67079d73e95f4a4', 'Pending', '2023-02-02 11:52:58', '2023-02-02 11:52:58'),
(38, 'Chukwuemeka samuel', 'chukwuemekasamuel819@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tBU3wlUWYtcVe/tfjH4n.OEjdNQdBKvnGeIjfaDMPyJCv1EPwoSPW', '6606900bf91a8ec4d58acb8de0e55524a3b615e79663b2ea44caa7a1886043a6', 'Pending', '2023-02-02 11:55:45', '2023-02-02 11:55:45'),
(39, 'Stella Nnenna', 'stellannenna721@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZPg2XXAcIz0Nb6LvZGj5r.t1AFY3.1ReDoJpk4QovIjxsvFy9ZkKG', 'a94aecfe3d2c562e6dfb70853d78fb0734165f55293ca1a8f8e013898ffbc69b', 'Pending', '2023-02-02 13:03:16', '2023-02-02 13:03:16'),
(40, 'Stella Nnenna', 'stellannenna01@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gaxAF8oq9.QAEXjnIiK9WOeQp4SeJF91/MTEqPGXcDlfa89HFMAru', '59e9938d0a0d96f77763e0c26cc022001cb4c2584651fac82b896bd173b2b3f4', 'Pending', '2023-02-02 13:04:21', '2023-02-02 13:04:21'),
(41, 'Lily’s_skincare/spa', 'lilianokafor881@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TXzSkXjV5zjy9OakkQMsJeVySMOeGHsSOa/h.k.PmhAF3OCXe0liu', 'e5f76ce9eac14193121d66f294c0dedf6794c0dd0ac5d4de52e60923df541650', 'Pending', '2023-02-02 17:24:16', '2023-02-02 17:24:16'),
(42, 'Bensinoking Store', 'criasmabredab@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3pzRBSxFvNS3KwvRtHWgzeMKJDShU/EnEpl1lVEZE.ORNZTLytwoe', '', 'Active', '2023-02-02 18:27:19', '2023-02-02 18:34:44'),
(43, 'Lily’s_skincare/spa', 'svernlaura285@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xIkqySL74Qp/nnkSFcL7AeSFKBl4iGUJvYQDkuhzrMbijcvhEKXsq', 'c66d75099695cf1680409f68f368b457555e652b27f50a27810b90f3fec8b869', 'Active', '2023-02-02 18:27:25', '2023-02-18 00:00:24'),
(44, 'Kingsley Chinakwaeze', 'gcode120@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ooyoPbZ0ydgmz5o3jlbSmutnA0jDoNXpTCNTGbh4GHmH5lPWXFSzy', '29fcb411efeb4d2c758876d8648b1127e1081c78525278590f8e61693e39ccbe', 'Pending', '2023-02-02 18:34:56', '2023-02-02 18:34:56'),
(45, 'Marvel Store', 'kevinsoninvest@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SYWVSJgqKk2fvs1nNyGavOH3mpwzznl5HzG2AIlDiZa4TqmPRJymG', '', 'Active', '2023-02-02 18:37:11', '2023-02-02 18:42:01'),
(46, 'Ikechukwu kelvin onu', 'noblekelly207@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$aFharWcNLO.BgMeX3/FZ/.Lry8ExjRwLaLeUFJZVgvLwAlcLRtk/C', '17fa9d381a75e9b08215f2d6a6086f4e7102dd41f05e7eabdd08551fee53415e', 'Pending', '2023-02-02 23:45:24', '2023-02-02 23:45:24'),
(47, 'Nenny\'s Stitches', 'ghjddf118@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$A7Y4q8CwKYomh22l2aVUAuJC34pzP.PPVmMTbm6..sIF9RdPnAiom', '', 'Active', '2023-02-03 03:30:55', '2023-02-03 11:30:33'),
(48, 'Stanley mark', 'aguonyestanley16@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bqPRN7K2ip7.hSiyNr9Rv.UDELhSlvIqtW71xx/hUlA7r8lPo.7ga', '928b3f43a826110ae7379348f3516e20142dd2a0b8fb434785f9294475a96c2b', 'Pending', '2023-02-03 12:55:50', '2023-02-03 12:55:50'),
(49, 'Frank', 'obmnemefrank@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Gc3zGms5rH4dfRCkRlHqQ.bpSv36/GVo5v62Z7zEwPewdakWxtPAa', '', 'Active', '2023-02-05 20:39:55', '2023-02-05 20:40:20'),
(50, 'AMAKA favour', 'Amakafevour@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03f9fda0fdb77048e68e967872c463f7.jpg', NULL, '$2y$10$M1JhzyfgGEv9zxMoBkFNeup1HlFcmLfVd2RFWxD89w9kMV8Q6gQNi', '', 'Active', '2023-02-06 16:17:54', '2023-02-28 15:10:37'),
(53, 'Solomon Chinedu', 'Idokosolomonchinedu@gmail.com', '09029281851', 'Nigeria', 'Unn', 'Enugu', 'Enugu', '40001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.b8M.Z3F4Yo6rzyn7BWR/eDxpHErTnXBBNghzuM7JatGBKxiSzWkK', '', 'Active', '2023-02-07 01:54:47', '2023-02-07 07:14:58'),
(54, 'Jany', 'janiferg2002@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2CiqY7L/Wf18sP4DlfEoVucRVCerfV/47h7gAaH8qx9MRseBy69e2', '', 'Active', '2023-02-07 03:24:39', '2023-02-07 03:39:35'),
(55, 'Dikas', 'jonasodinaka@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$R37WHKzeCx9scmo01/XZfuqPHJxMOv04ovaMWWQSJU9Kda6jwLSUW', '', 'Active', '2023-02-08 03:57:55', '2023-02-08 16:42:42'),
(56, 'Esther Amaka', 'idokoestheru@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hRmTgqoky8N/pPxbffVifuU3enLW4mDE6ejRpcsXhRsK8SZKb7wWK', '', 'Active', '2023-02-08 14:06:41', '2023-02-09 00:02:41'),
(57, 'Engr. Eric Praise', 'engrericpraise@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$P81Qs6KfuKPY.278KTry2OmFurAUYxtpGQebQ.H7JXKSsAZ.ESwfy', '3542832c79ead3ecbd555215c75c53fbbe75a5661535e3f855ddadb2f647ce76', 'Pending', '2023-02-08 14:19:39', '2023-02-08 14:19:39'),
(58, 'Jay', 'nnabugwujustice@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$RSwkXJF4zttLbocpzokLeuGmpTmKZYc5QIO0Ecz5gE7EVJckaPlde', '', 'Active', '2023-02-08 15:42:19', '2023-02-08 15:43:50'),
(59, 'Festus Umukoro', 'lakedotengineering@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Rz.QNemSSeK.BPVsX0KAiuQkhcGjo9UOJcOft/Qh4Y3utElekTCAe', '39a923a9d6507467cda45720bb64a7ec28c9df0165a0b7587616da5c96551e3c', 'Pending', '2023-02-09 16:55:42', '2023-02-09 16:55:42'),
(60, 'Stanly', 'Agbohycinth@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1fd24a6b282c14d68a6df9089992ef8a.jpg', NULL, '$2y$10$5T/TGZVGabLmfVx1k3K8oeGg9xEDYuasAuElpMhzULO.I/M.GYAi6', '', 'Active', '2023-02-11 14:56:19', '2023-02-11 15:14:30'),
(61, 'Cynthia Esther', 'cynthiaesther95@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0947700545584d005643caf38b0ca2f6.jpg', NULL, '$2y$10$eeVf7fJRHkpVDrGE.HPkGOIAGtw9FSgwOldKZBoMuK1wrunjjWHXm', '', 'Active', '2023-02-12 00:23:35', '2023-02-12 00:35:54'),
(62, 'Olauniquebase', 'olasunquiebase@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NQCPUO.s3sQSLfZvRSj8bupDzDVA8miooxB0zyjoud6QrJx/U8/Ve', '04ccc698f9c26be1285011f70bfd04b6ac55343620fe1f98178220c7c1b11e4b', 'Pending', '2023-02-13 17:33:37', '2023-02-13 17:33:37'),
(63, 'Olauniquebase', 'olauniquebase5@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$dloWTWThGq.5wPKoK9KgOeOyHimfpxfAq0AIqHGqLVtlJ2lTV8dwG', 'ccddfa469f699ac55bfe52ff781e680f629b036da667b293c9be584045e86a54', 'Active', '2023-02-13 17:57:06', '2023-02-13 19:01:05'),
(64, 'Ezugwu Kingsley Tochukwu', 'ezugwukingsleytochukwu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$XhRv2CyQWJIhabQtoWj1u.wbMSiKTaHxoMBhAVJhxLKzSH9xWOBdm', '', 'Active', '2023-02-14 00:07:53', '2023-02-14 00:12:21'),
(65, 'Kassy\'s Kitchen', 'kassyskitchen01@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ijFguEJaAXvhxc/i2occCO6fnDgSGPOdzKlS74YXSbx6TbfJzrExy', '', 'Active', '2023-02-14 01:30:11', '2023-02-14 01:36:40'),
(66, 'Smart  Gregory', 'Smarteventsservices186@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$auHyJ5oQvuDXVh1ai3gNF.Z1frqXPkx4y4w/X5nsakk74lGvzV/Nq', '', 'Active', '2023-02-14 23:00:29', '2023-02-14 23:05:35'),
(67, 'Madueke chisom Adaeze', 'chisom.madueke@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ndb20gQR7dLGP1/QipJ4euucNzJwpnTk4cXIQ3fmXdhdnYFIB3g4S', 'eb416ebadf3221b536078daeb84228b37e75c4776275c198def29170a0f2dc54', 'Pending', '2023-02-14 23:43:40', '2023-02-14 23:43:40'),
(68, 'emris kingsley', 'emriskingsley3@gmail.com', '08054088564', 'Nigeria', 'Chief bus stop Ngwo', 'Enugu', 'Enugu', '400104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17aad90f9c77bcf9d9e50bb5b4af3c72.jpg', NULL, '$2y$10$fSsToZfdafRHfaOilSIubego4ploiqc31OKNp5Pqg3TVqwHc4SGmC', '', 'Active', '2023-02-15 02:07:44', '2023-02-15 02:37:36'),
(69, 'Sparkles Accessories', 'chukaamoke@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$RMSYaa4rwijjW2ZargDI3eQAgx7Bq9mafLpgwew1itRotW4rjtwvy', '', 'Active', '2023-02-16 12:52:42', '2023-02-16 13:12:03'),
(70, 'Sparkles Accessories', 'luckychuks22@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gh0ZgGe0Pg7nh5IpHRY.LuaXYK.OITtUBEsz9KN4BpEW3QXdmZeOK', '', 'Active', '2023-02-16 12:53:49', '2023-02-16 14:12:06'),
(71, 'Erikigwe Jonathan', 'jozystar17@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wJUMkCaOg7QUhyhnVZa3c.MD41RhvvcQW9XuWz9wuHzazlYn4I5XS', '049d055b979ad0c61d70da167c4b8bb40005893fe504cb8a181a07e66e118509', 'Active', '2023-02-16 13:39:02', '2023-02-20 18:33:02'),
(72, 'Bkleen Laundry', 'bkleenlaundry@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1lhKUSTyEwQFqaj5dZ687uQRc1xqSO1Rq/kRzNQOPQF0qcKXyGab6', '351c002cf371ce571a1857e5e90cc8a9cd8bbaf7baef57ca618beda977188481', 'Active', '2023-02-18 02:28:46', '2023-02-20 18:32:45'),
(73, 'TOP NOTCH AUTOS LMT', 'ugwubrendanc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$MkmxbDmzblcpZgwZZY8GeeRPgGs4cKFXkBFh.COPOPom2rZEClQ1W', '0a699b460c09cc72e4ecf0a9c2d3f71d4125f7a8c66551a2c99b05f54deaf2e5', 'Active', '2023-02-20 15:17:59', '2023-02-20 18:32:34'),
(74, 'Chiamaka Rita', 'amiskynuela@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wxbRMvKQnX.GvWZ0ps26Ju1okHSCXmJEDzh6JS8SQolGQiUI6RcH.', '', 'Active', '2023-02-20 18:18:44', '2023-02-20 18:23:14'),
(75, 'Chinenye Ugwu', 'Chinenyefaith6767@gmil.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$orgDfRwUatFTJQiVs/rngeoYOI/5nYHqCIgv5OduDUSEFidTih8gm', '70f36ba7c2921940dac048cf2bb1e40e5469f319370cc6ec3c876fbebc6ab88a', 'Pending', '2023-02-23 19:53:49', '2023-02-23 19:53:49'),
(76, 'APEX OPTICAL LTD', 'apexopticalltd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JPCAjbpFY6QZfd2i3LM6Q..D95DmSLf2q4JxiF30yRn6O6eYK.0cC', '', 'Active', '2023-02-23 20:58:42', '2023-02-23 21:03:12'),
(77, 'Jude Ifeanyi Okpe', 'judeifydon@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ugDKflaH4Xearq4jyf0vfeMESbJfTEDhryBNQR9EFV3wq2FlDRM7y', '', 'Active', '2023-02-25 04:03:46', '2023-02-25 04:30:14'),
(78, 'Chidera Onyeka', 'onyekachidera63@gmail.com', '08165076750', 'Nigeria', 'Chinda', 'Rivers', 'Port Harcourt', NULL, NULL, 'Chidera Onyeka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Sc7gDzA1OdRGDpR.er282ueINVG0XdxarozVOfOj9bFNG6GEOdh3K', '', 'Active', '2023-03-02 02:06:29', '2023-03-02 02:44:45'),
(79, 'Ugwu Chinenye', 'Chinenyefaith6767@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f07c9d4cbbf88ea0f0cc0d2924fe7100.jpg', NULL, '$2y$10$o9QOD72mq2bodb6zo4IDmOOEIngHDLSgQGntxJAf15gWW1UtVFtpu', '', 'Active', '2023-03-02 18:22:02', '2023-03-03 10:47:04'),
(80, 'AMAKA favour', 'lexiclaire28@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58e1b0e1ffdbc73901df60f4625c0907.jpg', NULL, '$2y$10$ZMSKA5kqjZZIdvRt/7wXgeF1TSwWpQWMfwNWF.gRp1InIjCZtzii2', '', 'Active', '2023-03-04 11:18:36', '2023-03-04 11:36:42'),
(81, 'Edozie', 'okekechidozie10@gmail.com', '+2348131546735', 'Nigeria', 'Chisco Park, Amichi Nnewi-South LGA', 'Anambra', 'Nnewi', NULL, NULL, NULL, '@edozie91', NULL, NULL, NULL, NULL, NULL, '4cc537eb649a065ca099d2cd192db994.jpg', '$2y$10$spXTCvsKBJ1/4bAne9wREu6LqHTfrNbzACv6svVmnr4ILeh816vAC', '', 'Active', '2023-03-04 14:04:12', '2023-03-04 14:10:14'),
(82, 'Precious', 'preciousadaora49@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c059e89f7d2a3ffca39b33bb4ce8368f.jpg', NULL, '$2y$10$iQAFYYxpIU2JhAggpjY8keRVzIFCRllPtTol3nI4Hga3DF.pIq9vq', '', 'Active', '2023-03-05 11:23:10', '2023-03-05 16:19:26'),
(83, 'inyiekwe Precious Adaora', '2.preciousadaora49@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$VlpkPn8Ae1C19qiv4xgXauBWdHv1Mf48dWqcxmZ6JeuTx2vW.JgUa', 'cd64127bfe33e705b41857d3a121b1af18ed3fe8b57cb86a16ce88f891642527', 'Pending', '2023-03-05 11:57:19', '2023-03-05 11:57:19'),
(84, 'Tochukwu', 'nadisapple1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'b8cf8fad0e56b0ef0a1f4a5a7d622cb8.jpg', NULL, '$2y$10$HD5lK8KVYYU4enWl7s3B5eR7WqP.irtUDSWqYur7iSqY1jwbluGHm', '', 'Active', '2023-03-05 11:59:16', '2023-03-05 12:59:54'),
(85, 'inyiekwe Precious Adaora', 'preciousadaora49@yahoo.comre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$U24RK9TD16EEkMMaH9ony..tcURvOOmLfCVxGit8kSeoc.JYpF3fi', '1f73cd632c871e4505530136b6d7225694c0471cb1336899b45f8aa71cbe00d5', 'Pending', '2023-03-05 12:18:32', '2023-03-05 12:18:32'),
(86, 'ozioma amarachi', 'oziomaamarachi100@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zP0kTSP4w/zmdn46i4ea5uC2LlHezepdpQ6ZOB9IJ4g6BclEQ7Y1a', '5d7d968c33c3483b657321c7371e6c505717004cb55d52393506c102f61ed2ac', 'Pending', '2023-03-05 13:18:39', '2023-03-05 13:18:39'),
(87, 'ILOH chidera Cynthia', 'ilohchideracynthia3@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$RgreScxRFZAjmvEozad9vOX0XgF2v9zdrBI1y8JI9kRHDvMPFw06i', '088313df220bbb6a5227a58f6b8aa267bd6db33006b7ea879d44783e362300b0', 'Pending', '2023-03-05 13:40:03', '2023-03-05 13:40:03'),
(88, 'Asogwa Valentine nnabuike', 'stylistplushinteriors@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7fba95d9222e10535f917dc622a59828.jpg', NULL, '$2y$10$76FuT.b3eQ781ogJTcViN.oX/bQV6ekvxCJtuOJ7xIODtbCCblCB2', '', 'Active', '2023-03-05 13:43:59', '2023-03-05 13:56:33'),
(89, 'Ekwunze chidera John', 'ekwunzechidera@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ea97b7653713bc3fdd75fc376c86f958.jpg', NULL, '$2y$10$f46NMfBmFxfX.IgWKLuqhuBvWew3c10JUyQLfOfHvLXDMH4gWKLYS', '', 'Active', '2023-03-05 15:17:36', '2023-03-06 06:35:38'),
(90, 'Aham-Ebube Amblessed .O.', 'ebubeamblessed74@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1067817119a1a9932d55a35f12108d70.jpg', NULL, '$2y$10$eiftRqD62nq8H1onHCi/LuA665sA3o9LzVl7le5GSYgN6pZvcCM0K', '', 'Active', '2023-03-05 15:23:27', '2023-03-05 15:45:11'),
(91, 'Somtochukwu Nwobodo', 'greatvegas7@gmail.com', '08165795439', 'Nigeria', '78 College Road', 'Enugu', 'Enugu', '400010', NULL, 'https://www.facebook.com/Somhie12', NULL, NULL, 'https://instagram.com/sovan_designs?igshid=NmQ2ZmYxZjA=', NULL, NULL, '9d24588eb380029ccdbdeae04bd5e141.png', NULL, '$2y$10$/vzVr49QGFZf.dEyML19YuQZD9idovVq65G7hQQDQj6RuPIBxhuY6', '84ac12f9293dfba432241fc224e71a0e5d71cb5fd884869ce1549e41042bd410', 'Active', '2023-03-05 17:31:59', '2023-03-05 18:12:09'),
(92, 'Nwobodo Somtochukwu', 'nwobodos98@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$H8yXPEualf1EP7KBhCHRp.0Xbb8vdmyVWyCWZXmhl5.CK.kjHXwZy', '4bada323fe1273b6995e9d30b4680f0280d3d754b5dde9174115a9172fc35448', 'Pending', '2023-03-05 17:33:14', '2023-03-05 17:33:14'),
(93, 'Chidera Celestina', 'anikechidera9@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ej5.BjlVSy2WmO879M3lCOcho6s3MeBAvmyg/glj4hJg5Tp9eKquK', '', 'Active', '2023-03-05 18:57:49', '2023-03-05 19:09:58'),
(94, 'Chidera celestina', 'deeflorastore@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ugbVydfVUu5hd6s/o3TyDeRwKfHjx4J2ZjJv1Ja2fMZzh9mpjJRaK', '', 'Active', '2023-03-05 19:09:24', '2023-03-05 19:13:56'),
(95, 'Ifunanya', 'ifunanyaokonkwo69@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.6l/uW1CeZPdBxNvAeDiZu6D8ZjM.k3fXRJf.GrDqVIANUYJ1VFj2', '', 'Active', '2023-03-06 04:25:02', '2023-03-06 04:25:24'),
(96, 'Ifeanyi Celestine', 'webbconnectt@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9vhxMk3MH1dk9FAp6o8/9OwvTvprcXPKXXGdfGIcMl1QxSMa5P2ru', '8444656434c6d46a1ba3304f197e7990aaa5e2c0bfc4ac27fc973e5a39f468f0', 'Active', '2023-03-06 14:39:20', '2023-03-06 14:47:07'),
(97, 'Thomas Chinecherem Asogwa', 'sagethomas4@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$r6IVoX0w6xFy55DFEp/B1OmIAnL6BFF8gxEem8pFEEAYkyM2CzAEG', '0a01944ab00ce9cafb32205b08077b7d1934b807756f41fde08a45c5f4042f10', 'Active', '2023-03-06 15:49:33', '2023-03-06 15:50:29'),
(98, 'Kennnedy Kosisochukwu precious', 'Preciouskennendy042@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$83ZH11Ihyp9Z5XXXSHxtB.EprbeF.LYQcUR9q4JtTtjqGd1GZS.RW', 'a1f9e97933c8fff2cb77813266bde9b1c509c6f34e7ceec57cc7e9c57682125f', 'Active', '2023-03-06 16:43:52', '2023-03-06 16:44:49'),
(99, 'Emerald', 'Emeraldsbodypriority@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd2573063987730781d8a9c2d997f6841.jpg', NULL, '$2y$10$wcROvP.s8GUoiz291lUrY.aNrt37ayxXnLnunNj9cgVaLNSQhKfT.', 'fbd14519477830f40237b9491f8aa0d02485e2cf9607f626183723270939a075', 'Active', '2023-03-06 17:00:33', '2023-03-06 17:02:46'),
(100, 'Akor Abel Nosike', 'goldencoin247@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76b92ad5f128bd381f9b4c060889b04b.jpg', NULL, '$2y$10$rOST5DLbH75gRAr7Z5zm6eo/vg5p0IgL299X5tYv4TT.rzPXwwW3i', '43001f61ece14d7a00579e7fecc4b825399cc75cce4dd637bdb501fcdbf8bd3e', 'Active', '2023-03-06 17:08:04', '2023-03-06 17:10:22'),
(101, 'Chizoba Perpetual Imo', 'chizzyugwup@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xdJNc7z.SKq0C.6vGFEj4.n9DI7GUQbAIeKGcvEVfVRVfVXHagLBK', '', 'Active', '2023-03-08 22:55:47', '2023-03-08 22:56:24'),
(102, 'Sunday ifeanyichukwu', 'expert.sunnywhyte@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HKBBYgn3tHgyol3rF54cXODuKeWHbILja88txbTy/KFmGEQi3hm.y', '', 'Active', '2023-03-10 02:13:08', '2023-03-10 04:10:47'),
(103, 'Annabelle', 'Beautyannabel@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd39ae20409880a989aae50210cf7d0c0.jpg', '07c140717ba420485747d6b01fe085f6.jpg', '$2y$10$v7u71dQwQ6c/VJ8P7zmuWu1k6iSKjIlitlzTXxrtVwBRPpLc9RIKG', '598e59f70d299803ac02f78b0df503daa2b85168b6acd516484cb18032884f41', 'Active', '2023-03-10 18:53:07', '2023-03-10 19:13:03'),
(104, 'Godwill', 'igwechika4343@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$AlFiDB5jSaC74p90TkJw3e7OBKjeV/qCvdxwqTpsTkSCX.o76f.kW', '', 'Active', '2023-03-11 01:25:52', '2023-03-11 17:37:19'),
(105, 'Godwill', 'igwegodwill4343@gmail.com', '08100595104', 'Nigeria', 'Gwagwalada express way', 'Abuja', 'Abuja', '2224', NULL, 'Lord Kelly', NULL, NULL, NULL, NULL, NULL, '50b76e6e0c7bea2a38aeb8fdf524d4de.jpg', 'd6acb3fa630f3bb1586ffb712d7bc7c4.jpg', '$2y$10$gZ2hwptwMlBz.YoRhJQ6PeO7MymPhmHfWTpxQOT/1YGX7vfjUkP4u', '', 'Active', '2023-03-11 01:27:42', '2023-03-11 01:59:33'),
(106, 'Emediong Andem', 'emeandy868@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$515PitW/10G9j2AxfVppmO5WP103HHov473y6ztl2TtQdgyjbNsbC', '', 'Active', '2023-03-19 20:00:40', '2023-03-22 00:29:44'),
(107, 'Victor Okon Bassey', 'victorbassey2021@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$da4lj3/8O6qKAbpjhIMjMuJrp/oNCqR9qtuy1.2qhy18ijS1E3LYC', '', 'Active', '2023-03-19 20:41:53', '2023-03-19 20:42:46'),
(108, 'Twin Max Global Venture', 'tmgboss17@gmail.com', '08050999092', 'Nigerian', 'No1 magistrate court Evbuoriaria Sapele Rd', 'Edo', 'Benin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'e192162919c744f69c5ddd3671519d03.jpg', NULL, '$2y$10$4nS2qTuBIX8t0/6cMuW1eOzoL5EkKYlpVxItkHnudByriyqtJm66G', '', 'Active', '2023-03-19 21:19:14', '2023-03-19 21:31:23'),
(109, 'Gabest Creative leathers', 'gabestleathers2018@gmail.com', '08178330208', 'Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$33q0c8JDehaHDokvkq55yu5VrGVXzqCRensI9aW4REWjdYflPItMS', '', 'Active', '2023-03-20 01:55:03', '2023-03-22 18:02:33'),
(110, 'Dr Ahmadu Abu', 'leedmanagers@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$th/1JqOOPKV7dzioOEVmw.IgvyotKyMrtuCXpUFGOGXOhNOrB7JUq', '', 'Active', '2023-03-21 00:48:36', '2023-03-21 03:29:06'),
(111, 'Paragon Prodi', 'divparagon@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '46ad935a63a541aff8bfef90d7d31500.jpg', NULL, '$2y$10$aKx2cAyEz8vkcSKV.X0zI.eks5xnL48csHaRx5dKJGl2fFCp06w3y', 'f7bfcd3d9b2eb04e851791bda6bcd4890f3c852139053e093730640c83160256', 'Active', '2023-03-21 00:56:28', '2023-09-21 19:02:27'),
(112, 'Aloh Chinemerem Precious', '2.alohprecious4u@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'e82e3acb32158a345cba59cd97362399.jpg', NULL, '$2y$10$6qAm.4egs6weNWrnTCvp5ufdGa3zytgahNbSeWYDO8YSpV4.nbOLq', '1834686fbc3b9837c3955d50b3dc44ecd38f3239ee94135739cc2576fc93eebb', 'Active', '2023-03-21 11:54:10', '2023-03-21 12:06:43'),
(113, 'Aisha Folakemi Babatunde', 'folakemibabs123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$b704G.E9K.oo6deDravUduBDkmeKGeknvSgPoQvtnOh1UVNpFM/mq', '', 'Active', '2023-03-21 21:04:05', '2023-03-21 21:12:35'),
(114, 'Victor Samuel', 'Okon27922@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$XueghqP1IQPpzrwOp.Gv2.pjyvxYRyoWz2vW0Oz28EAVpTWGKp82W', '', 'Active', '2023-03-21 21:35:27', '2023-03-21 21:36:18'),
(115, 'Kasali', 'wkasali475@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vL7cFw43.qgkNMvT/evROO5DeIJ1MEW9fRag66cYKM2yLDdS/W/4i', '', 'Active', '2023-03-21 22:41:58', '2023-03-21 22:48:32'),
(116, 'Glot', 'saintucheteam@gmail.com', '08167530825', 'Nigeria', 'Lekki-Epe express way', 'Lagos', 'Lekki', NULL, 'websitebuilder.com.ng', 'facebook.com/glotafrica', 'twitter.com/saintucheteam', 'https://www.linkedin.com/in/glot', 'instagram.com/saintuche1', NULL, 'https://youtube.com/@glot547', '4c6029cb90335c3b92bcd43624553c92.png', '9453c7f63085d92ae1f450316bf64016.png', '$2y$10$tRNAwTJsHw3Yh0TX.qdUXuGqAql2puWfG63zus37AWrbTxMSqh74i', '60919ec207ee14db920520cd531b7c9a2d3214f2a5c0f07b6e3c43fff46a0a11', 'Active', '2023-03-22 05:28:14', '2023-03-22 15:28:28'),
(117, 'Bartholomew miracle Chukwuebuka', 'bukasman01@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WRgsfVWwncVoaiGmtJN/JuuKN1cY34CCL80w6pzsjfLFciuz9QI9W', '', 'Active', '2023-03-22 23:20:35', '2023-03-22 23:31:07'),
(118, 'Abdulmalik usman', 'abdulmalikusmankankia@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ILUcgpZk30d4nKfMYdmoUeVepcynOxp4HsnbNhoBE5F1uMZI.QU1.', '091daa8ef74da1b0ec167e54530b294b0f35109ffcef79318e51d2b5a2ef306d', 'Active', '2023-03-22 23:46:29', '2023-03-22 23:47:46'),
(119, 'Alhaji Tijjani Leko Dandango', 'alhajitijjanilekodandago@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '98f66ab92b21e8fea93d129e0f94acf9.jpg', 'ef29d24499f26184d97e90e212aa0138.jpg', '$2y$10$P9a..efQQRp0.bXpzO5sPOfwmCGOGfPq5CSQVs5Dv2z08iZMUKSMO', 'cddf488d3f8edc533826b4ab75e13815ecbdb46e8599e795096c16b0e9d43481', 'Active', '2023-03-23 13:33:41', '2023-03-23 13:49:24'),
(120, 'Bongo', 'emekabongo121@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YGssB8urWLXQgAkYDj82UuNhG64N18vwV0gxpGq.HAbbWq52MEuJK', 'bf7cb74fe5636a39c7d39a8452bb24571168226c2619c16558633646c48aa7f2', 'Pending', '2023-03-23 16:04:08', '2023-03-23 16:04:08'),
(121, 'Raphael Ugwu', 'ifeanyiugwu256@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Em8..BRc79ln0jaQFh0o5.4ZrKrsAV9goliGgiqhxGPYKjHffCDga', '', 'Active', '2023-03-23 17:38:31', '2023-03-23 17:40:53'),
(122, 'Abdullahi', 'jaafarabdullahi14@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kiTa27FrCF15q0ptz325KejPXkL3VTAySdajlQM7CSqTCXKcn2TQy', '383efd1f3d2afe76ef554436344fd8d48c8cf7173044230b5759de1b3f521e2b', 'Pending', '2023-03-23 17:48:49', '2023-03-23 17:48:49'),
(123, 'Sylvester jimmy', 'iyaksylvester@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3xFNoJE/mfT2jKz.Wru.A.1.XDmZhXbrIO5uRqyk0G6g81nrv/koy', '3f4f7aa69b99dda1ea4e6a596bb5771ff39c2caf4b1460b3e3bf107decd9b6a9', 'Pending', '2023-03-23 21:07:25', '2023-03-23 21:07:25'),
(124, 'Nathan', 'nathansilas2014@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qy8EpdKPIhyugBN4c4/NDOCN4jefTDmAHkb2hy4CyoRVGX.5bGOcq', '', 'Active', '2023-03-24 01:58:50', '2023-03-24 02:32:33'),
(125, 'Samuel Peter', 'daddydiamond1992@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5845870b29c759c233027b570ae7c720.jpg', '05527b13dfbff9365362fd40050f7b14.jpg', '$2y$10$kZw.QzzQaeiTZI5/b2FxjehhiFucCq4bVMZf/FXW67O.dI9cHmKOu', '9b393ab9996313a68b5c8791e255405926047ea234d855970517371a3a83fbf3', 'Active', '2023-03-24 12:49:07', '2023-03-24 13:00:20'),
(126, 'chimaobi obioma şamuel', 'obiomachimaobi270@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$f34xLogJkvh9qnB6mm9WK.xVpiQ0Amrsx6CDPoBN4SpwHcU89swHq', 'f32b3daff71514bd0c9382bf8af6cf73e9107e537213f38a0335d09c60a1e412', 'Pending', '2023-03-24 15:15:50', '2023-03-24 15:15:50'),
(127, 'Dixon Precious Ifeoluwa', 'preshp445@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$EgXqj5L.uetQAn5qbPB6deqhQ1PmSj/DL1Tqa91UN.j0KXlL0skqC', '191087febb9f9f0dda370de664bb412826726aeeb6f69359099489da32ff75f6', 'Active', '2023-03-24 15:23:45', '2023-03-24 15:56:08'),
(128, 'Jeff odigie', 'Springlifefellowship7@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TfMXCtK0iF03VAEKm3pKquy22quZ4DRtc8nXG9xy1E.GY1Xma40PK', '3bbe018dbe0220a457bacdb345ab558cc0d2ad5e2b75a70106771679c131a5f8', 'Active', '2023-03-24 16:31:20', '2023-03-24 16:31:54'),
(129, 'Abraham Joel', 'abrahamjoel612@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Sjd9uNSV60jq.o7Y0FkyZ.gEqGZ4F83IQe0TlRHOrsF3yJSSg/fZq', '', 'Active', '2023-03-24 17:04:13', '2023-03-24 17:09:45'),
(130, 'Oyinade Unique Concepts', 'aderounmumaryam2019@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$w7Ovoaayj2TDFpWb.VIpJuKfiYSY7i4hdLt/LQ54SxioIscGFsuMq', '', 'Active', '2023-03-24 18:42:38', '2023-03-24 19:44:10'),
(131, 'Adohi Daniel', 'adohi.da@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kqF79HpkWC47Jgn89JDoIuzN4TPJilpmpZNrQaWnq2iZmio5GEuzy', '', 'Active', '2023-03-24 21:26:59', '2023-03-24 23:34:04'),
(132, 'Toheeb', 'tadeboye14@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$iZtRjzQYf0K70jzmcYbpoeSzF7l.HO8C.gNYcTfc5D3SJH/NlKG0S', '6940b0344fcb190eee6ac316898b6fb253a1fd7c14677ba78e4aa25080edb04e', 'Active', '2023-03-24 21:50:28', '2023-03-24 23:48:52'),
(133, 'Emmanuel Pius', 'Emmydiamond910@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hFADbnqrSzEqaS4Pa2AlC.1qtyQu7I.wJ3HqRyzsFdgX81MKHWT/e', 'cdfd455fc7ac9b699674d8c1ac2d3b8b19825dc139752b0c5aa9b09742fb504a', 'Active', '2023-03-24 23:46:13', '2023-03-24 23:48:51'),
(134, 'Promise Idongesit Hanson', 'promisehanson5@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$15w5dfDaHjZrkQFN47WZcOMsoVGKgWkbQTsJqFz26fHMu4HcQwavC', '', 'Active', '2023-03-25 00:08:39', '2023-03-25 00:20:20'),
(135, 'MAKINSON VTU/DATS', 'MAKINDEKABIRTECH1@GMAIL.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$p40WJjqrcJD77GW.Q5.17.64Gyl8ZZzK/ZLte/ahbLYXnlnO.skqi', '', 'Active', '2023-03-25 19:28:42', '2023-03-25 19:37:49'),
(136, 'Victor ken', 'victorchisomugbo@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pthP/KY8Glki1.jjzDRrB.inKhtuMraZzWVZvJmAWtian59/m2GWi', 'fd35489daf1f71fc7e993e036fad105163109aa4625bb495bcd047a9a64584cd', 'Pending', '2023-03-25 21:21:42', '2023-03-25 21:21:42'),
(137, 'Oyedare Testimony', 'oyedaretestimony@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HJ1SHgOYY6FIQ9u47SrzIOZS3mEnEukNDZsFKOsxxcKFdY1mgKcK2', 'ffcabb6de82bfee17fbd07f26745bc4d3393ef0e881257bfd933a0fcd3136eb7', 'Pending', '2023-03-26 00:07:41', '2023-03-26 03:04:01'),
(138, 'Ridwanullah Tajudeen', 'Tridwanullah@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YtISWK1RWjI7sx1aD3hIMeANTR6fJ77HFhCK3ubnuubpc5NXFG/4G', '', 'Active', '2023-03-26 01:00:00', '2023-03-26 01:05:07'),
(139, 'Adebayo Misqiyat', 'adebayoadenike2009@gnail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6E1zwZ4H0H9nCi4Kn15jKugQFi89lJwg/Gc.JOM/uY/frCr0eBZ3K', '1ceb5c2eb7fea212dbab7a2aff8e95b30fb3a2178018582eb893524f75b7ed25', 'Pending', '2023-03-26 01:13:16', '2023-03-26 03:04:00'),
(140, 'Daniel Onyebuchi', 'danielcharles66300@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$O.pJofigq2w8kNjutEOqteEEVp./cdIsr7/oBr24YYgSmy83fWLRG', 'a76c313a55ef44d93f4a8064a712a5f75637998c4076b5608168a36ccc1b6d50', 'Active', '2023-03-26 02:55:55', '2023-03-26 03:03:53'),
(141, 'Chiomzy', 'Chiomziest@gmail.com', '08065717301', 'Nigeria', 'Federal housing Lugbe opposite Kilimanjaro', 'Abuja', 'Fct', '+234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fff185cf98c4cc22c8e501ed65597dec.jpg', NULL, '$2y$10$moC8EnxSbM/lpk377kINYujGR9RsbjOFhQW0rVjjtLeS9T4bG5Edm', '5068a9b70255f6d3023ba60dc1ae035f326f80e2ea47c2d33551505eeaa99a6b', 'Active', '2023-03-26 14:07:44', '2023-03-30 02:27:41'),
(142, 'Osmons Ekpi', 'oseyomonekpi@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cab5018d893aec6911289e4053c71154.jpg', NULL, '$2y$10$5K1gGz.t9xxHsWN93f7i2uBLhYj/g3gHiFvfAKu0Y202b3BQmMBxq', 'be15c8588660d39a431b78514a30fc80e1f2656b2dcc0ce8ff9e72128177570f', 'Active', '2023-03-27 16:35:15', '2023-03-27 16:37:17'),
(143, 'Denike’s-touch', 'adebayoadenike2009@gmail.com', '08023698756', 'Nigeria', NULL, 'Nigeria', 'Lagos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$e4DiQg96TMt6c5YAIsPjjOuzXaUQFPRMFuk/BAbS/Vlsnw4Ipnkr2', '', 'Active', '2023-03-27 20:12:42', '2023-03-29 15:09:05'),
(144, 'Toheeb', 'Toheebadeboye50@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Cl8ZpheqgqP5qH5cRLJCRu9Ri2PfqSwVoHxC9XPaytNK11ekri1Sm', 'a32875241ff478850c9d053a4ec759415daa87285fd7abc954c6af5ca4672206', 'Pending', '2023-03-29 01:15:26', '2023-03-29 01:15:26'),
(145, 'KUSTON UKENI AKAA', 'Sonofthesoil001@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gmM1v8JFPAINACqxDMrSku7oHh.8Q3SslmLKIkOYz5o9YNZyIubGu', 'aa51136f8cdde81e6c4b413353e79ecfe09b62f73e9cdad668846088101bb1e0', 'Active', '2023-03-29 12:55:56', '2023-03-29 12:56:52'),
(146, 'K fatai', 'abdulfataiyusufolatunji@gmail.com', '08036291228', 'Nigeria', '33 shettima A Mungono Crescent, Utako, Abuja', 'Abuja', 'Abuja', '900108', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$m7h5jc.BNHogHqqbIq/s4.GeQS1oDzdfDnBxq1oL9UClNwe9UUg2m', '', 'Active', '2023-03-29 16:39:35', '2023-03-29 16:54:52'),
(147, 'Fatai karim', 'yoabdul01@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Mso/NEvxaiG9RHUV1BQ52OeDA88LIiWp7XE/YlqBB/foD6YcZCp0G', '8d9b3c9cc9ccc5b94308d17e04348cb55dec5b1521cf070f1db3e695803d4d50', 'Pending', '2023-03-29 16:49:02', '2023-03-29 16:49:02'),
(148, 'Sukari Mohammed Alhaji', 'sukarialhaji17478@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '43a5b1f44dad5353d1cb09844ed10c3e.jpg', 'ebcfe2123e5bf0404fdfdf777f04cc7b.jpg', '$2y$10$5ZHtDKHBnv7s/tafTkOhSeNfBbwB9IKtcIVIJ6.sm6HqV8yqg58Mm', '', 'Active', '2023-03-29 17:21:03', '2023-03-29 17:48:19'),
(149, 'Moses Asuquo', 'emotionsunwritten@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6gC4fuvVMV6J2txzC21V/.5T9hO5y8pr6IMXsX.3xAIcELyiZZEOS', '', 'Active', '2023-03-29 19:04:49', '2023-04-03 06:34:53'),
(150, 'Chiomziest place', 'greatchioma@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$l5P.Mg45brNF7ldZaMSTlecKUWa9k0tRk.r2erldL4c6aE6RyPuFi', 'd5a2caf684dd00953b181fe246b57a436a54a543b6c8c5aecc6b080942b81309', 'Pending', '2023-03-30 02:06:09', '2023-03-30 02:06:09'),
(151, 'Michael Raymond iyanuoluwa', 'raymondiyanuoluwa264@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6lhb/s6tX3YneOe9TlDOn.q2K/WdS5FWDXwV4IZ91aF1NGNjP0Rpa', '', 'Active', '2023-03-30 03:12:50', '2023-03-30 03:16:03'),
(152, 'Dorcas Ishioma', 'Dorcasishioma@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a41d801ca41a3eb02f657c5fac9e6486.jpg', NULL, '$2y$10$0WkfUg54NoMX7ryrB0UuzuDmpy0.EwZD/WGKG4l4dWfEq1VBTj7DW', '', 'Active', '2023-03-30 16:40:39', '2023-04-05 11:13:56'),
(153, 'adeleke mimoladejesu', 'lade2isl.clients@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7eXk6Ul9FyiP0Fl2n149qeNfCXHBgfgjmxgWVNjNhst08aIw1QaCy', '7dd2eda0b47c8889ba95d383c31a0936c84b8fe8952cf3ecf93cf2d4eb05ebd9', 'Active', '2023-03-30 18:50:51', '2023-03-31 12:26:27'),
(154, 'Anyanwu Francis', 'Softmedia127@gmail.com', '08105527227', 'Nigeria', 'Giri, Gwagwalada', 'FCT', 'Abuja', NULL, NULL, NULL, NULL, NULL, 'https://instagram.com/soft27media?igshid=ZDdkNTZiNTM=', NULL, NULL, '6b5078a61f89cb990b2e542b470edd11.jpg', '46a87b63d78a496e6e4a023fa6909a80.jpg', '$2y$10$p4GrXQtqM7BNoLZVCio9Ce8VISUkkpHjHBGw9HRVf1yf.UhrONoz.', '9dbf95f82a1758eda792d1bdad25feb1c8e19067623029f1d2e56abeb4b17982', 'Active', '2023-03-31 12:24:55', '2023-03-31 13:51:25'),
(155, 'Matilda', 'tildatc211@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8BSOxEuMblfmXL2cnp384u1VKc2hcD1Id3ppX.FeD7GyI0Xf3gGeG', '', 'Active', '2023-04-05 19:26:48', '2023-04-05 19:28:40'),
(156, 'Bassbi Interiors NG', 'bassbiinterior@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$k0iwMptcHtp46lbm1Xgmt.RLLhSl7oO9/iXJn.MWW64CmR/gXnIGK', '648e0a6e71b50a1f51e7ad506fecca761d2a5a061717dc8b79ea4d2ac135f314', 'Pending', '2023-04-06 03:14:50', '2023-04-06 03:14:50'),
(157, 'Shukurat', 'haneeskiddies@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YLNlF6o7S6L3Bk6zZeai7.bwRKRt1.jWHB3LfmMDEGKduo9C8znpC', '', 'Active', '2023-04-06 09:29:50', '2023-04-06 09:32:55'),
(158, 'Shehu Ahmad Danmato', 'danmatoahmad@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$P0PgBi81u2sB.lQ4au6GD.ufduQ0qqCUxtW6HrUmOSaumw1QeuqWO', 'a67d09a956ae637a1aa14a73f891413fa213848fe934a47be676f0a15ee82859', 'Pending', '2023-04-06 10:54:47', '2023-04-06 10:54:47'),
(159, 'JOPAG', 'meetjopaggroup@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YkFF.dc/2pw3Y2YwbaqeEONeLw6jl5b8O6MJh3HxHVChS0RwGQuS2', '6704f29afa26d4fe38931e6433ad3f2b9abb40d400d51ce53774a65e8a6555a8', 'Pending', '2023-04-06 11:35:01', '2023-04-06 11:35:01'),
(160, 'Emmanuel John', 'emmanueljohn461@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DeVZDO9gy1pqCRA/7Z7xkOEq6fqEg8i2zK8WyAnrK9x.31mqhhg9S', 'f632ef056e1257427a647ba1f465ad5e17b6c78d84c17fe2d2e1cc657381aaf0', 'Pending', '2023-04-06 13:05:27', '2023-04-06 13:05:27'),
(161, 'Barssey', 'barsseyapparel@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0BhXxExtBHv0SuWawRYir.O4pUGeH3CuANS7K6JaEdaowdt2H8dwe', '8cad2575216323764ae12e7c0346edf573abdc1e6a24159f40925e9cb4fcf55c', 'Pending', '2023-04-06 15:37:19', '2023-04-06 15:37:19'),
(162, '1️⃣Auwalu jibrin Muhammad', 'legendauwal@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/j4bMbHgyGg5pZ1JHSG7d.l60R/aXQQeGaQSaVDyFDShegpww9TI.', '', 'Active', '2023-04-06 16:03:22', '2023-04-06 20:11:04'),
(163, 'Ayodele monijesu precious', 'Monijesuayodele@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JeYiC4sGuaiRK7ou.MJdb.mBirXTFXdO0FsCiGIDxqWXwoQwxRbeK', '', 'Active', '2023-04-06 16:19:11', '2023-04-06 16:29:45'),
(164, 'Paul Benjamin', 'paul.benjamin999@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$PLk3bMWdCRIW5dW3jnvmxefIFiB.Sgz16WTya8QQ6hjRQk3gioEZ6', 'cb2e2fa4a078b5833506477be9bd8fc838697756d0472fee87ca48d9e36018ee', 'Active', '2023-04-07 19:00:34', '2023-04-07 19:02:30');
INSERT INTO `users` (`id`, `name`, `email`, `phone`, `country`, `address`, `state`, `city`, `zip`, `website`, `facebook`, `twitter`, `linkedin`, `instagram`, `pinterest`, `youtube`, `photo`, `banner`, `password`, `token`, `status`, `created_at`, `updated_at`) VALUES
(165, 'Obalola David', 'jnrolamilekandavid@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Gtxcc8bEPdWkHBxMmQlw3e6gTDHc8IsmJ50mjgf28txfzDTwy6KRi', 'c50072cfa945098f11a71d7dbe94ae30d2757247cd5609f2d2f6125d353e40d3', 'Active', '2023-04-08 00:09:22', '2023-04-08 00:10:20'),
(166, 'Onyinye', 'onyinyenwakoby@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$KFXG17d.BR8uN6XpJYIvW.toBow33zWQibe/0PBn2fauSl/hqpG3S', '', 'Active', '2023-04-09 17:17:40', '2023-04-09 17:19:03'),
(167, 'Qelifox Unatarmit Service', 'qelifoxunatarmitservice@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vDaKZUQYKOBMcrcXl/p5neZn/MGG5sY8Xh2lZ4WyUSxBdm73/0BNm', '', 'Active', '2023-04-09 17:52:48', '2023-04-09 18:47:43'),
(168, 'Amika Emmanuel Edet', 'emmanuel.amika@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HIrZL5Xr/tujpv9GzpV7TeZmmk6z5xducYnJOWUlm5/esX1hedDAu', '0e9bd4aa04ed4d0927d4abfd0cf984d2a0981c88b0fc4388890535b9fec4626d', 'Active', '2023-04-10 14:16:04', '2023-04-10 14:17:08'),
(169, 'Kayode Oyetola', 'kayodeoyetola@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wZCnfVZKHLxAVMHGgnZyUe1UOLwaFRdbSbvi72CiqiAd98W1dQYd2', '', 'Active', '2023-04-10 14:17:24', '2023-04-10 15:48:05'),
(170, 'Ejiro Joan', 'jokpeyiboejiroghene@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$v96pxWtOCGlsGnLZ0cMnwuN6OjttSQoIUPTIY7TdMyq3EhvTs0z0m', '', 'Active', '2023-04-10 17:08:36', '2023-04-11 01:01:36'),
(171, 'Mr B Barbing saloon', 'ibiyomi71@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$AkVWzaaa5dxH1ib2QgVdc.iaguU2jwN2u20YritnQ5rnkq47.JqCq', '', 'Active', '2023-04-10 19:47:56', '2023-04-10 19:54:26'),
(172, 'KINGSLEY NNABUIHE', 'kingsleynnabuihe46@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TdQsHf5ksSYia3WVXXDL7umTU8wYxk95Vb7089v2RD7Cy818lqNiO', '', 'Active', '2023-04-11 01:38:31', '2023-04-11 01:40:04'),
(173, 'Emeka', 'ezeemeka047@gmail.com', '08066319056', 'Nigeria', 'Nyanya abuja', 'Fct abuja', 'Nyanya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NNCjtzj0SHEEeZGi0Lw84ONpukX3Hiy7N7EYfniRrgcQv3fQbvHLm', '', 'Active', '2023-04-11 13:22:00', '2023-04-11 14:43:58'),
(174, 'Henry Monday Samson', 'samsonhenry109@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$f860IHbMdoHAXxgM/jHB0ekD/tU.cmmu5gFWmq1jrD1ulAUtnh9cG', '', 'Active', '2023-04-11 13:31:18', '2023-04-11 13:32:16'),
(175, 'Kennedy', 'Bamilyon@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wzZTiut2VvToRdCtkWnp5OgMyqqcit9AR7YSieXWLjYn/jqRO5opi', '', 'Active', '2023-04-11 14:46:12', '2023-04-11 14:46:33'),
(176, 'Jastem roll enterprises', 'omotoshoomolayo035@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$X8B2u97oxppvztaoCmCVyOb5MZoLXM9kgPxFRF6b/fhMQTiWtkGzu', '', 'Active', '2023-04-11 18:32:38', '2023-04-11 20:42:42'),
(177, 'Peter Yohanna', 'officialpeteryohanna@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$sSL6Lv8OQ2W6JLptOKEIzesLAVQpzoT2EciTMQRczFVSM4I91W8ES', '', 'Active', '2023-04-11 21:10:03', '2023-04-11 21:10:34'),
(178, 'Rokeeb Ahmed', 'ahmedolamilekan04@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Gzd2rnE06EJnf.Rqpd06QuSn1ZybuQocjFv3AF92hTg59y0HGnHHy', '2509be7cc696d9cef1be2ae7c1595f074a7c1f29275756851e0ea80bf00bb183', 'Pending', '2023-04-12 04:13:53', '2023-04-12 04:13:53'),
(179, 'Hope Paradise', 'dmuniquefictions@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YFeOS2R7YI2GqhLo8YCJ8OShatkCbbhcz3XHpKYwVBcAgAch98rYi', 'dfcaef13d212d2b457a00b5427770891842288bdf1c48b96dc4e22a31ee114f0', 'Active', '2023-04-12 11:13:52', '2023-04-12 11:19:40'),
(180, 'Beeptelecoms', 'beeptelecoms@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$EqkHBr1i59emd3x7AvGv8ecNnuoJGgXms6yQVrMJjZ66pQYRmDgHW', '', 'Active', '2023-04-12 15:33:08', '2023-04-12 16:16:57'),
(181, 'Emmanuel Cozy', 'austinemmanuel721@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zZqNirNMoSFIKdT3BJoKD.iFzc2eCCTzOyYDOVed3GnMuxeeJIB2y', '', 'Active', '2023-04-12 16:10:25', '2023-04-12 16:15:58'),
(182, 'Victoria Joel Gideon', 'victoriaofonime1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9789776714ba2cb0eadea134f702cdf1.jpg', NULL, '$2y$10$lpxh0lYSaAg7ZbQuyUfUj.UM.ptdJiQ22guhIcgb6UIfIb3xjqF4W', '', 'Active', '2023-04-12 18:23:25', '2023-04-16 18:03:13'),
(183, 'Adedotun Abayomi', 'adepojuabayomi63@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fecb0c207dbadbd89f68d2f9faa2626c.jpg', NULL, '$2y$10$Cmuu9QsQIQFDPfOjgiiLXeKNtr28Ur45jPkKO.Nd7ue4MJE2cohCS', 'd9f8a90925891498e7d84828006fe95c52e78a45f9e111685696fad11e14c28a', 'Active', '2023-04-12 20:12:07', '2023-04-12 20:28:02'),
(184, 'Jide’s kitchen', 'annaeze12345@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$60th0QNcS15ti5gOWi4/Ieat5BoqPabMVlpqbsV2hQGXKeFjlfPn.', '42153d12c66558b8c1735e17f24a1bc1a2151195b32b0846bd8e73c30f0a28df', 'Active', '2023-04-12 20:29:57', '2023-04-12 20:30:17'),
(185, 'Premium wine house', 'premiumwinehouse@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HXo7LfGvvcyLzxj66UAgYuE2HkFhrflqzv2NMuhqEQpI0h.UqTOPi', '', 'Active', '2023-04-12 21:57:33', '2023-04-12 22:04:16'),
(186, 'Dr. Amaka Ezeanwu', 'beleks20012001@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7P4iw42d9AkCuh3hpPTpGOavM5Rif/J3BiIV7AIQ1qtslqq1PrqRi', '3283ae1c337e85fe7a46356554d337dd443a6b83db5d74c29e79f448375593ea', 'Active', '2023-04-12 22:08:32', '2023-04-12 22:09:28'),
(187, 'Eze Chibuike Kingsley', 'Chibuikekingsley1000@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pT.hoACo6t.IBh8CYfKy8eWYDIFqp1K1fbElLeE8gCaznPA8AaRkq', '9dccbca142f22e5a1a6f71f69ecf8792c321038886749c8326986cd7a7685092', 'Pending', '2023-04-13 13:48:46', '2023-04-13 13:48:46'),
(188, 'Eze Chibuike Kingsley', 'Chibuikeeze419@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a7cdee6fa308dba880f4be9caf9d96fb.jpg', '34f8f04e28a95e6ee9843a8019a4bd36.jpg', '$2y$10$wCzJlOyIKLJm9jk1fbQG5ukcNDmNWG9qQuIRLNJQEaIcfn8MPJ4Mm', '', 'Active', '2023-04-13 13:50:42', '2023-04-13 14:15:12'),
(189, 'MIRRORSIG TECHNOLOGY', 'mirrorsigtechnology@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$BS5qZaKEWF97yGVUq/2C5.bVw0XvrWvobDpQV1BxO7Y1UuRE3DD.e', '', 'Active', '2023-04-13 14:05:34', '2023-04-13 14:06:02'),
(190, 'Favor Agbo', 'iammiraclefavour@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NhKQYVh1Ral2xN0KKutdD.rwaNIFDun8fXfSvbifl8c9GhCAkocK6', '5f6e9f3fb0d0263105648df6d841459564952877f6f2995e73c4f18a1d689401', 'Pending', '2023-04-13 16:11:04', '2023-04-13 16:11:04'),
(191, 'Ugwu Esther', 'ugwujuliana2002@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6Z679xEdlkqEg/7nENkcUeJpHUhNsnKS/5CzweYKpDJ9tFnQuqsHq', '', 'Active', '2023-04-13 20:22:57', '2023-04-13 20:28:58'),
(192, 'Oguejiofor Precious', 'oguejioforprecious35@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$fuNGdOBgZhCAejQDAc68kuKBJrwNCYtITU520zdptG7KpoyGJvL1O', '', 'Active', '2023-04-13 23:27:39', '2023-04-13 23:34:07'),
(193, 'Odewale odesanmi david', 'Odetechndavid@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pr7pRkM84XJXhD9cHaEEr.pc0vcpVVZQU9kXYZmkLDV6v6ZrnE29C', '967811ba6dcb0b96313bb023f3461918628227e81d72df62502d4ce94313d915', 'Active', '2023-04-14 13:07:44', '2023-04-14 13:15:36'),
(194, 'Adekusibe Fateye', 'fajaoprojects@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wchREBWSeQ2m2FjOLRyKae9h8EUDe25pY7nZMXHVhlxxo9Jg35Kay', '', 'Active', '2023-04-14 13:14:39', '2023-04-14 14:10:58'),
(195, 'Okechukwu Chisom', 'joelchisom31@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$oqS4/2zFehtSIqCAs7BHA.yBsN22T2BPOB9hx.q6K8WokrjFCT73i', '376ec9b7098ef2473e836328911c847738187a10269735a2f3141175ba5cb1ea', 'Active', '2023-04-14 13:36:26', '2023-04-14 13:40:30'),
(196, 'saanmoyol kane', 'kanesaanmoyol@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$dgiX42te1f5W1F/5kLi/ce4AVdO6DaiXCciiqbRwKF6sR6W9Jd3Mq', '', 'Active', '2023-04-14 14:18:25', '2023-04-14 15:33:43'),
(197, 'Ojo Toluwase', 'toluwase2025@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7cdce382ec2af1dd30229d24d053af4c.png', '$2y$10$aeOOwSZylCDs1dWGh9AN9.Mye8qWdicZkeFTTbBsS2wiXAZZTWQxW', '', 'Active', '2023-04-14 14:34:48', '2023-04-14 15:10:14'),
(198, 'odewale,odesanmi david,', 'davidsanmi@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a2d7cb41774b5d808ce0e0fb07c3ebd6.jpg', NULL, '$2y$10$PR5tHzpUzgW4VxhR0jRfA.IIYrKWFFRNRjsA5lGG1Ns/srm2NpY.a', '4f75ab81878d87e7de15843faf0444910d35ab64ffca9d31524a42e7d80a2551', 'Active', '2023-04-14 16:14:15', '2023-04-14 16:28:07'),
(199, 'Eniola Olawale', 'ennyonline2003@yahoo.com', '08095790897', 'Nigeria', '4, Olalekan street, bakery bus stop egbeda akowonjo Lagos', 'Lagos', 'Egbeda', '100001', NULL, 'Quest home tutors', NULL, NULL, NULL, NULL, NULL, 'bd811d69fc8ba0e615579afac614aba1.jpg', '3e8cfb2e09d8e3c4f0276aad3c424c3b.jpg', '$2y$10$nOyKKjk1tFkGfO8NSdE14eDObQTMYR8qENloFZ2t4iGqbLXMNRe4.', '', 'Active', '2023-04-14 16:26:11', '2023-04-14 16:44:30'),
(200, 'Water Treatment', 'onyeka310@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8H3a30/8LxFV1Y0h5C/E1.GU1pKpxoCBexXaEZ9B9g231y8TpVur2', '', 'Active', '2023-04-14 18:37:52', '2023-04-14 18:38:27'),
(201, 'Noblesdigital', 'noblesdigital@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NMKT7FO5dHKE3zR.yHveu.xGPsYk9Jc1j/AhOg6m9MbueOAJz.iba', '', 'Active', '2023-04-14 22:58:23', '2023-04-14 23:31:08'),
(202, 'Hope Musa Danjuma', 'damiscollection247@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f31258b6e9d6a9f615f690bc574525a9.jpg', '25fcaa4f7f58c1b1a9d4ebec4de8901b.jpg', '$2y$10$6oUcN5ProXRVKD8Zt8gDOeJxCwQt2CchTDtmy4.urA18Z2cqKnYkW', '', 'Active', '2023-04-15 10:10:57', '2023-04-15 11:53:07'),
(203, 'Alex Maxwell', 'flaybeey80@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$w/bmA5llG9e2HtiDHhx0Y.UW0vPNMfwrYgOpud.M2adK1IhkjfYIC', '', 'Active', '2023-04-15 10:29:48', '2023-04-15 10:30:14'),
(204, 'Akingbade oluwasegun oluwaseun', 'oluwasegunakingbade31@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$H6p7aqL3EcpxjHq.EkIz2ODcA5HYokKCaxFm07FT6knqxbK9DIaY6', '', 'Active', '2023-04-15 10:38:01', '2023-04-15 10:43:59'),
(205, 'Itunuoluwa fashion accessories', 'ayodeleitunu18@gmail.com', '08152764641', 'Nigeria', '23 sunshine estate', 'Ogun', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6l5wrsFHmMS7RnBffgvF6uXXDmqdtuQzxPWE9VOZiuRW7ww7VSapC', '', 'Active', '2023-04-15 14:26:31', '2023-04-15 14:33:09'),
(206, 'Michael fikayomi oyebanji', 'michaeloyebanji180@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8tnW0MARNye.fu6k236sTOxW.6wlA8MRGMcOfTAn99zaYXy7TDG3G', '', 'Active', '2023-04-15 21:31:47', '2023-04-15 21:35:00'),
(207, 'David Olufeagba', 'debrilleducationalconcept@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qjSJGxjyPa07EnzNHAon2uNRZLgoYl3DP5EMu2qKeyZ9NL/6vFUVa', '', 'Active', '2023-04-16 02:22:43', '2023-04-16 02:23:12'),
(208, 'Ugwuanyi Chijioke', 'jchijiokeugwuanyi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$IHriKrEwjFeXGMpvJL54YeEx74chy8.AGaggfovahxsoYUw72rH4S', '', 'Active', '2023-04-16 20:29:02', '2023-04-16 20:32:53'),
(209, 'Ugwuanyi Chijioke', 'cjrapf@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$VR09fZaN4wh0ejoKFAhM1u7UyYcLV7p1cTMbRZBBGPkZa9bjKBYpK', '3e84fd869c7c0df02ffc281fa071cc7909b4256af646e792e12d3c5e72332976', 'Pending', '2023-04-16 20:29:46', '2023-04-16 20:29:46'),
(210, 'Abigirl James', 'abbyjames262@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4d51419c61ec7c5c1cf4d3248515ad1a.jpg', NULL, '$2y$10$iHrO1ahQOMvvluymjWr1n./A5yObGFcTGnvVgQzwuEgKE68I7Epdm', '1a4273d964ae2682bf4f2fe648ebf40e7c95d9db8b42660c1d0d85a9b232aa05', 'Active', '2023-04-17 11:58:45', '2023-04-17 12:10:14'),
(211, 'Ezenekwe Jennifer Obianuju', 'jennyuju2019@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pxKsaE4DDIF.Uj9GlHpYjuXecKx7eEdVeVVCnXGSh0BHLC6Y3kOdm', '4fcfa3067f9aa1c5b3230df7b9cf20ec4810f85f254e07a29f1024c600480fce', 'Pending', '2023-04-17 12:23:08', '2023-04-17 12:23:08'),
(212, 'Vida', 'adaugoivy246@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$fUqGvBnKMEGZXOPEOjS0we225BPAmV3JfmN2ArRA7Q1e3QP4dvfAK', '', 'Active', '2023-04-17 12:23:10', '2023-04-17 12:38:43'),
(213, 'Kim', 'asaduamara9@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kn.AjGbMUTHK7mbOxpZ5beHvCjrkwI7dUm/q.XaG33Z8w44Eu2aM2', '', 'Active', '2023-04-17 12:23:48', '2023-04-17 12:24:28'),
(214, 'Peters Maryann', 'petersmaryann955@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1rV7xNYliJwj1827KWT5Tu/Ys/7.73xX4xlNHR7RxDnJ/rsKinRS6', '4d5eb5bd421b7032c2a805ce36f81a1ddf846795efbadcb8faf2587393b6dcab', 'Pending', '2023-04-17 12:30:21', '2023-04-17 12:30:21'),
(215, 'Eze Ebube promise', 'promiseebube180@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$j3Hp5FdPvYzsSuL294FZB.ZiP8tJh8uPEfJGhELdeLYG3ARebzIXS', '', 'Active', '2023-04-17 12:48:28', '2023-04-17 12:49:40'),
(216, 'Chidinma Alisa Okonkwo', 'decenteconomistalisa@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$viugdj/OYrUx1CE3wlBJEe8tY0Cnze20DF1QltLqjr/Dy5kNxcf.y', '', 'Active', '2023-04-17 13:24:20', '2023-04-17 13:25:29'),
(217, 'Okafor Unoma Oluchi', 'omachilyn@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$U2E2VNP8yeYdgwkqJE6F5O7fPmytBXLsoGWYdNr6np8yykAr14Bt6', '', 'Active', '2023-04-17 14:53:12', '2023-04-17 14:54:29'),
(218, 'Ifeoma', 'ifeomagrace472@gmail.com', '09134556009', 'Nigeria', 'Mary Slessor hall, UNN, Nsukka', 'Enugu', 'NSUKKA', NULL, NULL, NULL, NULL, NULL, '@pr3tty._ifeoma', NULL, NULL, NULL, NULL, '$2y$10$606TLar/Azwzamhb/5iLV.k6x9qUOGv4JddOwH1kH5YfGoRDUhLFe', '', 'Active', '2023-04-17 15:35:56', '2023-04-17 16:04:28'),
(219, 'Bright Ohas', 'ohasbright@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6rUz7LFY78kDp5gquGwzd.r3nPRv35IgeVby9kTQaCeHXnwH.VxUK', 'b7ef5ebea989ffcc49147bd588b890fe30efa1d9d7146d8d7d86138804e45bc3', 'Active', '2023-04-18 12:31:53', '2023-04-18 12:32:54'),
(220, 'Natural herbal plus', 'oyebodetaiwo6841@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GLGrs6rf/I3W.C0GS8hDjuml40CKXp4ewfbojoUJEfMcGhpnqn5fi', '', 'Active', '2023-04-18 13:45:35', '2023-04-18 13:47:35'),
(221, 'Johnson Onijingin', 'emenryjo@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$j1E7biaElyGxxJjlIYCGtepFnkn2Y8T.ta4oZ/2xEDYNubnqjbq2S', '', 'Active', '2023-04-18 13:53:42', '2023-04-18 13:57:37'),
(222, 'Joseph', 'seyejoseph@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$d216.iHSbVJebAvi1DY8uuvc3G/.m.MuZmg1gRPPLsyZbilWFy5zi', '', 'Active', '2023-04-18 18:56:11', '2023-04-19 11:26:46'),
(223, 'Abimbola olushola', 'adesojioluwafunsho2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JW5o8XV3u0cF.q/iz/oSGODuwF/pPuNWjnXKuLmsDXkHcxES/OXii', '3c4287043327b026e79b12a49298c866b9b9e864e1301d792e478c446942d38d', 'Pending', '2023-04-18 19:32:45', '2023-04-18 19:32:45'),
(224, 'Adesoji abimbola', 'adesojioluwafunsho22@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zG1tx2e2UPNbnnZub6M9IOh/0UU5j/OHmtqtA4Ek/1mlWGG3Q4Ddy', 'c1d8f488a65155bc128a4762289c7e2d8e5dcf2ebcdb5871a784b3449fc89f72', 'Active', '2023-04-18 19:36:32', '2023-04-18 19:53:11'),
(225, 'Adesola Adeniyi', 'sholaadeniyi985@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$T42P2tuResdUyD7qtY9SkekDnTXNPrCfjvwBXBsDLQf9Hc/Q8fSuK', 'f572e9c150310c80af7dd494565fc7f00263028cb9f22eeb587b7e6c5ad74f00', 'Active', '2023-04-18 19:56:33', '2023-04-18 19:56:56'),
(226, '1- Enabulele Ojo Godspower', 'godspowerenabulele5@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '329ec486435794f3f86c494c8830e4be.jpg', NULL, '$2y$10$qpwLq5Apf.QWe52yWpuHHeJKcGa1T5b4FWiddQEZgppv3dR/aiOlS', '40c1d40ccaa63b0eb4c2c8e7e913f19d382150ac49fbfb1a0a2a002ea46efd3c', 'Active', '2023-04-18 21:34:00', '2023-04-18 21:40:57'),
(227, 'Adesoji Abimbola', 'adesojiaolushola23@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$R3wgBqjRIo9OqJxN/L7mG.phjHsvyr/gk7CU5ykHDJyWG/IpbJcUe', 'fced5b6d2e5d374ded206717055c1bc50e568c068fe54013c0bcb7f099e05abc', 'Active', '2023-04-18 21:42:52', '2023-04-18 21:43:24'),
(228, 'Martins Cruise', 'redizee001@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5lty7ybeN8hgo7KPhh4exOwzfud0DF461lRwZB2umCmIWEbyFuyli', '', 'Active', '2023-04-18 21:56:16', '2023-04-18 21:56:50'),
(229, 'Esther Richard', 'esther84imoh@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1/uVmFZgjegWyig2PLaz6.eW..tYt7H36BCENSXe72yFXxzy..JsG', 'c8dc09b3caa0af11051d6afb7fa9741ec0dd32962db2f0a5958bbdf5b5555a20', 'Pending', '2023-04-19 01:12:37', '2023-04-19 01:12:37'),
(230, 'Ogunshola Lawrence', 'dlaw3535@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qQLwQnxVS3tWmXpXQ8xsGeosS9ERUtJ08h571JTbyzQIAMizEcpq6', '', 'Active', '2023-04-19 06:15:15', '2023-04-19 06:21:36'),
(231, 'FilipsMP', 'filipsmultipurpose@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NwAAj5XdYCRibNRcjxji8eW65FyM1Vpv4Zm7GkvG5VQGfSre5SyAK', '', 'Active', '2023-04-19 14:26:31', '2023-04-19 14:52:38'),
(233, 'Ilelaboye Olayemi', 'ilelaboyeolayemi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$sVB/Ez2cghruJkPoKvKPWucSSj6K5LXn8CMCnxqW3SGeyz1yXuqC6', 'e237a433532d420946c8adf4d72ff84f28e7bc8420ce4b8532694f957dc89506', 'Active', '2023-04-19 17:58:02', '2023-04-19 17:58:34'),
(234, 'Obalola', 'alicia.enya99@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jM4VaOqLen/m0krC1hR/SeOCoBZJuwdUnUvw76taLo0d.LBU0piqq', '', 'Active', '2023-04-19 20:53:40', '2023-04-19 20:58:38'),
(235, 'Olaniyan', 'olaniyanzeenatshalewa@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$sVXPiizGTPm1Jz/T0UZtVOr8SVArxO8ffwLm.LJjnoxfpdvR54M4y', '', 'Active', '2023-04-20 00:12:14', '2023-04-20 00:12:44'),
(236, 'Eze Makuochukwu', 'accuratedesigns01@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Z.i3Uo1/floebqTzySrD6uQYfCUFpZR3FoeLzghicSg5t4yvsSlP2', '', 'Active', '2023-04-20 00:38:26', '2023-04-20 00:43:30'),
(237, 'Akinlabi Taiwo', 'taiwoakinlabi918@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$k1vUozdQ7ybnnaGIbvcMi.xd3bzPAgDq.YlurVvQn99qthn.psNAG', '694a58d49536a5faf81e7dc751552299fa66db16d15c61a10e10bf9f93d5596b', 'Pending', '2023-04-20 00:58:35', '2023-04-20 00:58:35'),
(238, 'Emmanuel Atoyebi', 'emmanuelatoyebi19@yahoo.com', '08100443470', 'Nigeria', '2b olaleye close ahmadiyya Lagos', 'Lagos', 'Lagos', '+234', NULL, 'Emmanuel Atoyebi', NULL, NULL, 'Emmy_atoyebi', NULL, NULL, NULL, NULL, '$2y$10$heSK7w7NgkTfFWcsBbqHQe/t3cxlob5ZpojSeBkXvZNXTueTr7vFK', '', 'Active', '2023-04-20 10:03:45', '2023-05-02 23:28:56'),
(239, 'Aliyu Cisse Abdulrazaq', 'haidarcisse32@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TAbJiUIKt0NP5Ft1BTS6MOD1uUW1mM0xRUTG6UA0HOU0stQWdh2pi', 'b647cdc449a0e730cf629525e3ae3264dcd0004cdb4f74036a1dbc49f9dfbe15', 'Active', '2023-04-20 17:02:55', '2023-04-20 17:03:24'),
(240, 'Subuloye Faith Anuoluwapo', 'faithsubuloye@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8ef5WKyjQz452.yeO1e9iuEmAvgndlCdz2Ku6hG1roL95Ob66wRim', '', 'Active', '2023-04-20 17:08:55', '2023-04-20 17:09:40'),
(241, 'Ahmad Ishaq Buhari', 'khaliphaexcellency@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f011799c0f5b44cb933b85d451e27c5b.jpg', NULL, '$2y$10$ganucv6LSCubJiiP9cTL6ud6hZe231WuYNdtUw5hAYEfJhuQh5gHC', '', 'Active', '2023-04-21 05:35:26', '2023-04-21 05:44:44'),
(242, 'Popnwin Fredrick', 'barikereop1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$iY.joCpU52xhr7yGqHVYruozppC3GWn4gSNo.e3sGB3OLB.kAfR/q', '', 'Active', '2023-04-21 09:40:00', '2023-04-21 09:43:11'),
(243, 'Divine victory', 'divinevictory775@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YWkWqLO72o0gVT9go6QoZOkLECT0yWz9IbSVliDLh8P7gm0PXKLU2', '', 'Active', '2023-04-21 16:59:45', '2023-04-21 17:00:37'),
(244, 'Glory Joel', 'joelglory21@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$BnTjTlbtC2HYJH/riWYnjuhZ8GM9cqNOe4uTNdOhh0Xi6wzlBVMja', '', 'Active', '2023-04-21 20:17:05', '2023-04-21 20:19:58'),
(245, 'ATADOGA JAMES', 'jamesatadogau@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$o/t2QkA.IOKbEAdgYF.YuOOEh9C7c7W/RYB02vJmGyWtXc3FVuSj6', '', 'Active', '2023-04-21 23:14:14', '2023-04-21 23:14:54'),
(246, 'Divine Nancy', 'dvnancy4luv@gmail.com', '09030328424', 'Nigeria', 'Ajah Lagos Nigeria', 'Lagos', 'Lagos', NULL, NULL, 'https://www.facebook.com/profile.php?id=100091167473757&mibextid=ZbWKwL', NULL, NULL, NULL, NULL, NULL, 'bba8898d114d8cfd597c55f514e93072.jpg', '78ea25cc604177679ce630908011a8a1.jpg', '$2y$10$rONWAP6ZV80bOaJoSkBdF.iPh/7wW5BzTcNDkVt2oAN.5ZKg52b9W', '', 'Active', '2023-04-22 02:44:55', '2023-04-22 03:39:58'),
(247, 'Kelvin Eze', 'creativityishabitual@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SJlQtB.dBYzJrdd7IXb4heje6nD14LPp2VIip5HZTNpzUtm0FGwCq', '', 'Active', '2023-04-22 02:45:32', '2023-04-22 02:46:23'),
(248, 'Ajayi Christopher Olumide', 'Ajayiolumide06@gmail.com', '08143365772', 'Nigeria', 'No 5 Ogbetedo Street Ijanikin Lagos', 'Lagos', 'Ojo', '102101', NULL, 'Chris Sms', NULL, 'https://www.linkedin.com/in/ajayi-olumide-585462101', NULL, NULL, NULL, NULL, NULL, '$2y$10$WohY5F5FoibJWpUuE41VP.KlSCmPGuyyuhmKsZllFSy.HIDTuy1Yi', '', 'Active', '2023-04-22 10:56:08', '2023-04-22 11:01:57'),
(249, 'Akinlabi Taiwo', 'akinlabiruth780@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wzws58/BZxAP1iYF4LWGJe5S.7O.m3fKu4XJidgqF7RKidoEfpp3W', '', 'Active', '2023-04-22 13:53:35', '2023-04-30 09:26:32'),
(250, 'GM Concepts', 'okeleyeanuoluwapo103@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wO5HuZOFe/G/YrVubu1MmelVF24bu0agGBWLaceQY.tN3WuykN7UG', '', 'Active', '2023-04-23 02:56:39', '2023-04-23 02:57:39'),
(251, 'Vicmak visuals', 'vicmakvisuals@gmail.com', '08140224232', 'Nigeria', 'Aregbe area, beside union bank osogbo', 'Osun', 'Osogbo', NULL, 'www.vicmakvisuals.com.ng', NULL, NULL, NULL, 'Vicmak_visuals', NULL, NULL, NULL, NULL, '$2y$10$Jrrta43EbLoJd9dyAGnwm.ICiHuk/zTKwBdL7xHqAkJpBpROuMg4q', '', 'Active', '2023-04-23 10:39:30', '2023-04-23 10:43:00'),
(252, 'Humphrey Isaiah Ossai', 'humbospen972@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$RcXbGM3sJ3jV549J55do6.AemXp/JqiztR7c7MxFvuK.bIq8HHyke', '', 'Active', '2023-04-23 15:38:49', '2023-04-23 15:40:35'),
(253, 'Deborah', 'iyayiosahon2019@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZE.XUaZtUx6GmwKeeo0bBenUJWeGGbMDYo5frlXOryJ1Y4My9FZ/K', '', 'Active', '2023-04-23 15:51:22', '2023-04-23 15:52:02'),
(254, 'Glory Okon', 'gaogees25@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$rx.dL7D7/GCkEH2Rhpi6Eek8TuY7QOxh8za4VOu80t9dQm2J5uJXi', '', 'Active', '2023-04-23 23:54:24', '2023-04-23 23:55:07'),
(255, 'Wilfred Yakubu', 'wilfredyakubu17@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$OU0K2LQd0I4h0WCPlMh.1uKIMCrbxok6s14g3yCZvmq29o903LGgm', 'c3d9c3cb47a6f02ffb7bc481e801f851388dafb0ceafc59847a1360d50f35bcb', 'Active', '2023-04-24 01:28:23', '2023-04-24 03:18:17'),
(256, 'Adekunle Abiodun Ezekiel', 'iamgbemi01@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$aLUEArwD/NEqzkIueiuXXumuCHliBqA8EgwMpKadkXo3D5T4jCTFq', '', 'Active', '2023-04-24 03:30:21', '2023-04-24 03:32:01'),
(257, 'Rukaino', 'alfrednielson7@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1DoOFuSqIz4cKKum81JZDuuUicYW654mcmmoWxLar77OJ6n7ixff.', '', 'Active', '2023-04-24 11:50:10', '2023-04-24 11:51:06'),
(258, 'Abdullahi Saleh Umar', 'Abdullahisalehumar2022@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xRwLughXnOQDgV1poXKRtuYzba4y3k5a4i315KBWUQEToq5nAE8bS', 'dda3fe7ae99dfd44dfd642ece2f52abdd82db7fc39bd24764b1edf31002a26cf', 'Active', '2023-04-24 12:51:14', '2023-04-24 12:55:24'),
(259, 'Adeniyi Daniel Adewunmi', 'adeniyidanieladewunmi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f2014fea3c669383d0d5fe5a3613fdfd.jpg', NULL, '$2y$10$pCQhMLmoeFv/EdwbIF2Ek.bDwNmkKwbfBjhG4p0pVW4V7I50aCy/K', '5a63a995807a225c5aeec92e7728ca63dee8343123c8e68f00e60208cae06ed2', 'Active', '2023-04-24 13:04:56', '2023-04-24 13:12:16'),
(260, 'Citywide cyber cafe', 'citywidecybercafe@gmail.co.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Zxf1KALbDLCGtdUIgINwt.jgCId.LpTgD0mwyaN34YTI87LMPUvJy', '94be7f9acb8708bd1c0cf1890b73a7b04ee6f128e9c7f30b08efd103ab4690f3', 'Pending', '2023-04-24 14:12:06', '2023-04-24 14:12:06'),
(261, 'Ojo Oluwole Emmanuel', 'Whorlexy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HqjQRqkoMobKNcMTRDY8O.v3A2y5V3BfuL.LbPD7UqnGZzacExOY.', '', 'Active', '2023-04-24 16:09:21', '2023-04-24 16:10:55'),
(262, 'olorunfemi abigeal', 'olorunfemiabigeal50@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$OXXdi.g3ZrTqhs/Q2cB7IevCfKPawrlrpLKsTwfPsIe/ejhWXIrS.', '', 'Active', '2023-04-24 17:55:45', '2023-04-24 17:56:10'),
(263, 'Dada Olumuyiwa Oyediran', 'oyedirandadaolumuyiwa@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2d9YX6JM.aQyG1ubs/QdxOl1k07a7y/RvOtW2HB1FS5eHBwfFvKxe', '', 'Active', '2023-04-24 19:30:03', '2023-04-24 19:30:44'),
(264, 'Chioma Ikechukwu', 'debbyceeklassik@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$KVwmtlU3VhOkqBan1c28tOgyJWT8FbIt.wSlBWx74u8CjL3zVA5zi', '', 'Active', '2023-04-24 22:55:04', '2023-04-24 22:55:36'),
(265, 'Micheal', 'adejokunmicheal@gmail.comad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kflZ2AX2KhZlVoLTCmg/ruIBgPv3GKfB4r5847RZ7DoVTyC3x2aC2', '136a0d981a59503cc301602ed9610442ea7502a148c03e0beb843142d65cc5c0', 'Pending', '2023-04-25 01:08:16', '2023-04-25 01:08:16'),
(266, 'Micheal', 'adejokunmicheal@gmail.com', '09017453822', 'Nigeria', NULL, 'Lagos', 'Lagos', '+234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uSq/dp2JzuxI/oykhK0Fouci.qOEGjBP.AOeY0WkbVJ/fVgngZiWi', '', 'Active', '2023-04-25 01:08:56', '2023-04-25 01:28:28'),
(267, 'Adebusoye Adedayo', 'danieladedayo3@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$XEziQUphegs68fMGFPwlauZVQYHFXizXINFyYb.gpDKLRPsuGIBOK', '', 'Active', '2023-04-25 01:45:13', '2023-04-25 01:46:26'),
(268, 'Miracle Tochukwu Mgbe', 'miraclemgbe@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HUU0owx.OmlTGS31Vv3ssOZcY8YUiwrJR6l1aPpDiQ0F6QXbRyh16', '', 'Active', '2023-04-25 04:04:25', '2023-04-25 04:05:37'),
(269, 'Onifade Olajumoke Adeola', 'onifadeolajumokeadeola@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1acc/kiNcmMEf9msW411CumwOtTa66SSlEj.9aqpYjKn2tKdV0KHO', '', 'Active', '2023-04-25 07:12:24', '2023-04-25 07:12:57'),
(270, 'Amusa Fun I', 'ahmedfunmi1991@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Ox6LygrzoTpi3EErgUbyoeL0Wp/J/fah7LIFT193VEEVt7u2UB60S', '', 'Active', '2023-04-25 13:12:40', '2023-04-25 13:13:18'),
(271, 'Azeez Omobolanle yetunde', 'omobolanleazeez016@gmail.com', '08173089915', 'Nigeria', 'No 24 kazeem street Alapere ketu Lagos', 'Lagos', 'Lagos', '234', NULL, 'Omolare Azeez Ajayi', NULL, NULL, 'Omobella', NULL, NULL, NULL, NULL, '$2y$10$EL0NW0Le7/6JbzM8a9Tcdu6gQVZQk2icDeRlzLv.C3R2ZFWHPzTMG', '', 'Active', '2023-04-25 13:29:07', '2023-04-29 16:27:16'),
(272, 'Tessy cakes and pastries', 'oluebubetesi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xSxSlFnSM15u7AarWtqIQex/kNzQIRg/6Mm3KcB9JWpplC7GV2ZoK', '', 'Active', '2023-04-25 13:34:02', '2023-04-25 13:34:53'),
(273, 'Anuabert', 'Www.anuabert3180001129@ecobank.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0PMXu/KCNTthTLO3Qv5r4.dE.dMkEpiUyDJJPwA17P7NdDYUECU0.', '00c70a9e5350e7d684e6d9ec44f77f434fb70604e8301fa9544fd42c7066c13a', 'Active', '2023-04-25 14:35:05', '2023-04-25 19:24:37'),
(274, 'VC INTERIOTINTERIORS', 'Vcinteriorss@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$De77qcT4qTZkOAP6FPzb4OUegYMcS.RHXb8pmsTwUMF8z74eHnS82', '940b3fa0584b4321a71886afa14e142ecf83c3cf123fdc2a99ab56394864b607', 'Active', '2023-04-25 19:23:33', '2023-04-25 19:24:37'),
(275, 'BEATRICE OSIGBEMEH', 'blackgurlscosmetics@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$mbZ4/vv0ef7REcA9Uyx7suuHuKH4Djv73Y4tQ.GWk54PbaVxeUcda', '6ba7bdb20abee00fbd5c7d4216fd027cdc668ae66e40928bc56cdde514c08c4f', 'Pending', '2023-04-25 20:03:58', '2023-04-25 20:03:58'),
(276, 'Victor Elijah', 'victorelijah223@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$VKM/D703Pc0QgKc7EHEyl.IZ2lr6VlbNL6zQP523HyqCdE6tAXQFq', '90467d55ae28296a55175c5665c5526c5bda858589f95468149b6b31e554e2b0', 'Pending', '2023-04-25 21:50:11', '2023-04-25 21:50:11'),
(277, 'Preklu Hair Mart', 'kaluprecious476@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$mgucKr.ttBUXRCGWoa9fXOrvfvBZViGIjRHXuUyMJD5XUYsd6laIG', '96293b4dd6ba11b938639335b7137b10138bade97f5b8164441e914403d1d7b4', 'Active', '2023-04-26 17:25:44', '2023-04-26 18:56:41'),
(278, 'Diepreye Randy Bruce', 'randybrucediepreye@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$cjH1H1BTdUX8wtesDOyzn.OGNtFxfCjLUb3m3AZfUDZW0.vQhCs26', 'cb05bf3d7fc2711c2cba793b401fa1c648bfb876433ef2373b5cd2bd91d1bec0', 'Active', '2023-04-26 19:02:54', '2023-04-26 19:10:32'),
(279, 'Oderinde Bisi', 'bisioderinde48@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$VPnh/Jqwlle.PIoOXmQWfO7jqkZdOHdkIWOhicG3Amuv4iRpOA71a', '', 'Active', '2023-04-27 15:36:20', '2023-04-27 15:38:44'),
(280, 'Israel Ige', 'orinayomie@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7u24Xvxu.ipkysHUe2.0EevSOrjRCXB3CixwR2hGbyzsydOsZvSti', '', 'Active', '2023-04-28 14:23:17', '2023-04-28 14:24:14'),
(281, 'Festus Blessing', 'festusblessing327@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Ec7ZgzXIFH7k1id34SNFyORYrBX4Gcc6h8HM9uRlkt2x.K7g9CYcG', 'f805ee63de8ec886b2b1dc11a2286764c9cfe87788d0ae8406ea127c16bee4d3', 'Pending', '2023-04-28 15:48:14', '2023-04-28 15:48:14'),
(282, 'Izuchukwu Okpala', 'izuchukwuokpala10@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$lyFUCCvk7ZRmFwV1b2s7P.Rx2bkp6yDsT4g9X8dp/iJCb6pIajZYO', '', 'Active', '2023-04-28 17:00:53', '2023-04-28 17:01:29'),
(283, 'Olonomoyo Divine Favour', 'Olonimoyodivine@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$lVtRb9pMZ05B0Qq2qid3COefG3SQAhkFFov9OzGawTGaXwMewRBzS', '7c5e987da3753662e87b93f40ff6bdf5ac3cc6febfc70ac91deb896fdfe2181d', 'Active', '2023-05-01 16:05:54', '2023-05-01 16:07:02'),
(284, 'AKIAPELE BETHEL OJVEWE', 'beucasenterprise@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '49715f866faee90adba512f0a16c48b0.jpg', NULL, '$2y$10$IRY5TwP3wssFQ9RB2Up72.jLZ9ZiXU3Fa6RdBeA9rrTWwLjWqoZdC', '', 'Active', '2023-05-01 18:56:33', '2023-05-01 19:03:15'),
(285, 'Adebola Baoku', 'baokuadebola@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$P.ROBg/.nCt0pnfcE1AKMuy.jbHR7OEa9Xeqi8vsVeroeT9fR6pxe', '', 'Active', '2023-05-02 12:31:09', '2023-05-02 12:32:33'),
(286, 'Adegboro Tosin Micheal', 'holluwartomisinmicheal@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YLJ28yjGqfkd5GW.O.RKHOi/qxmPsVqwcWVDgjVEJlmmqcHxG/5HC', '', 'Active', '2023-05-02 13:21:36', '2023-05-02 13:23:40'),
(287, 'Favour chukwudorue', 'chukwudoruef@gmail.com', '09122520902', 'Nigeria', 'Awka anambra', 'Anambra', 'Awka', '420007', NULL, '@chukwudorue favour', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Fqd9VNMxP1BTGRRNCMLy2OlGalj6pbmr9GKbaFHemZAnL3J3QVN4u', '', 'Active', '2023-05-02 16:54:57', '2023-05-02 17:08:19'),
(288, 'Abiodun oluwatosin', 'adegbayi2004@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$P07L5ywjHG1qUsp0AZrVAulN3zoN2X2mcVUhfxzrLSIpd.pCKvn9O', '', 'Active', '2023-05-02 17:50:44', '2023-05-02 17:51:43'),
(289, 'Abdulganiy Yusuf', 'info.explicitconsultpb@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hdjGeE48DQeZwoithij2meb5OFTnGFRWhdyibjvK9uc9aVKxzkFHW', '', 'Active', '2023-05-02 19:50:11', '2023-05-02 19:52:12'),
(290, 'Oguamalam chinedu', 'snowmanic4@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GhiHlls2NvQsiUR3W1JhQuNkZSXQt2yf8C/c6I8zicR4CJKQgWx4W', '', 'Active', '2023-05-02 22:22:44', '2023-05-04 10:08:44'),
(291, 'Abraham', 'christopherabraham99@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$rdXCO/bgReCSjHTdb5tQyufmfyoY4q.zzjwlzj0EELtd8Ri87KsbG', '', 'Active', '2023-05-02 23:04:26', '2023-05-02 23:05:42'),
(292, 'Anuoluwa ogabi', 'aakintoye41@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5TPK5q8Ldg8vbnE6yppXCujs72M4b2tOBtx4fYHcnfCl/UE0uQR2i', '', 'Active', '2023-05-03 00:45:16', '2023-05-03 00:46:38'),
(293, 'Victor Adiele', 'adielevictor1206@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7jAWDZY8PJdSTNaL8hkRk.TNA9waTv3fq2JV2CDoh.dCBRCmnEe0K', '', 'Active', '2023-05-03 16:21:26', '2023-05-03 16:21:58'),
(294, 'Tejumola Elizabeth', 'tejumolaelizabeth10@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$lwxstt.1jrTL2JJFW9TO.Ok6JqEliUx/lLoVABUvQgFRXNd8eYC7q', '', 'Active', '2023-05-03 20:39:56', '2023-05-03 21:44:17'),
(295, 'Elizabeth Tejumola', 'eboluwatife64@gmail.com', '07011624824', 'Nigeria', 'Road 2,ojojo,Akinjagunla ondo ,Nigeria', 'Please select...Ondo', 'Ondo', '351101', NULL, 'Tejumola Elizabeth', NULL, NULL, NULL, NULL, NULL, '516c3141fe95b6ae2a0788b3580dc23c.png', NULL, '$2y$10$PxhIud5mI7xn3sr5D1P6QeLBqf.Zirro7hp5Y2Vq91NvKfJM0rPVK', '', 'Active', '2023-05-03 21:45:46', '2023-05-08 13:59:46'),
(296, 'Shogbola Temitope Olubusoyami', 'shogbolatemitope23@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HV35Uh7IPwy44N1Q5w9kdOnQT.2OlZwj4yJPiSTluxIyn80AW52Qu', '', 'Active', '2023-05-03 22:10:10', '2023-05-03 23:20:39'),
(297, 'Shogbola Temitope Olubusoyami', 'shogbolatemitope23@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gXdFdnz853NVFXpz.JODi.SwLNyQMD1d3raxAfuWbuet339keQnLe', '', 'Active', '2023-05-03 22:10:10', '2023-05-03 23:20:39'),
(298, 'Kamsiriyochukwu Ukachukwu', 'kallykam119@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vEOKLgj7OOwh4Et9EL.yq.mw5KuPtH56lecTsI2LtzKg7nlXXLhmC', '', 'Active', '2023-05-03 22:30:29', '2023-05-03 22:31:39'),
(299, 'Aluko Lateefat', 'lateefataluko1994@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$BRxKYm.4c7oxtiWto6J.H.xtW8Y2xt8FPuNOAsZ/csxJgbPyXC.hy', '8c0d6ffb966ec4e3a9fe0f8dabe7106b72831bd9e5279485cdac62f2a1f8c07d', 'Pending', '2023-05-03 22:31:46', '2023-05-03 22:31:46'),
(300, 'Olutunde Timileyin Miracle', 'olutundemiracle47@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QZJeOdr9O3CN1UR4ZIttDOiApm2AjHcnHvpL58rsPvBdc02D/xChG', '', 'Active', '2023-05-04 02:06:46', '2023-05-04 02:12:05'),
(301, 'Bassey', 'superlink80@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$mGrutujkn9B9E62vomz0oerOjUuvXcUjBOqEyJoyWFpeEfVVa0EU6', '', 'Active', '2023-05-04 19:08:28', '2023-05-08 12:32:33'),
(302, 'Idowu Ahmed', 'idstar55@gmail.com', '07044351083', 'Nigeria', 'Alakia Ibadan Oyo state', 'Oyo', 'Ibadan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SFHzMYpmEdGPtZ/R48LRD./van9BE63o.QuunHhSaYfGYPNXUPEDm', '', 'Active', '2023-05-04 20:11:42', '2023-05-05 17:04:25'),
(303, 'Olabode Matthew', 'olabodeojo15@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$O4oaFX19eLmpwWcJfFDbEupx7CENswgTcc41P7ZTH/xNZ/cel2IIS', 'b218b2582c521e9d93d0892827c1366ae794a3ea4669c057285fc32cb7a70df9', 'Pending', '2023-05-04 23:52:27', '2023-05-04 23:52:27'),
(304, 'Salt', 'dorinasalt@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$sjDoTKNtdPngAi59ogo3eeWmDII0Phi47SVRTiwP3BzrHuX//au1q', 'ae086d2a46e8d8e050bb83967548ca137c268cad1f76d8d2686921e37150a3f6', 'Pending', '2023-05-05 02:53:00', '2023-05-05 02:53:00'),
(305, 'RHEMA NATURAL CLINIC', 'rhemaclinic2020@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3a7be9386d93980bef75222fbb2ef6f0.jpg', '4532f10969a97f1b334046e36936b3da.jpg', '$2y$10$9pVZ1ZaYcC0R3ld7gRnYyuCMMtdmNplZ8qzl9hWI2q1qjl/CoyM.2', '', 'Active', '2023-05-05 14:38:04', '2023-05-06 02:32:48'),
(306, 'Augustine Ekenechi', 'Augustinejunior094@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$OajKqPniIxm1TpSUomSa7.xQksaVasHuKLz7RDx4Kc9zVdzEcgab.', '', 'Active', '2023-05-05 19:55:54', '2023-05-05 20:07:00'),
(307, 'Yehuza Muhammad Abubakar', 'yehuzaabubakar0@gmail.com', '09112139917', 'Nigeria', 'Kurudu police housing estate Abuja', 'Federal capital territory Abuja', 'Abuja', '100901', NULL, 'https://www.facebook.com/profile.php?id=100055658360141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$oWDoKGbbst1.jyYNbeYUl.oIEnT1wDhqYxy6bcQak26FeoUqjoXp2', '', 'Active', '2023-05-05 21:13:34', '2023-05-05 21:28:31'),
(308, 'Ninobrown henry', 'princehenry932@gmail.com', '08086878791', 'Nigeria', '56 Adegboyega', 'Lagos', 'Lagos', '100001', 'Non', 'Henry onyekachi', 'Non', 'Non', 'Non', 'Non', 'Non', '64892f8a939a4d0ed67e87cd7c5fb3b1.jpg', NULL, '$2y$10$Z0zEKL2LMPxDhGyDGYVBz.GL./V6vPVh6TILIgFkTVddLwz3uYhSG', 'a34641535b2af82366ef79a24067e6808c0a458cc28d5da82f6a4c0f5302ef37', 'Active', '2023-05-06 11:16:50', '2023-05-06 17:39:22'),
(309, 'Kingsley', 'excelarinze7@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$EnKxBID9Map1VYm8xd/Y6.XQEu98146y/g5p185GshJsnbCrx8IN2', '', 'Active', '2023-05-06 12:31:27', '2023-05-06 12:31:58'),
(310, 'GODWIN WEALTH', 'adebayogodwin928@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YDOu.v/cF7ndk5VT.nU/yebeAGHnHupacrhO6OVN4IgTw7C6ihnOK', 'a8c16828b5c577f65de57c3a12a527e531f9387445a4cbc3972bde20bebbd3f6', 'Active', '2023-05-06 18:18:06', '2023-05-06 21:48:45'),
(311, 'Oyeleke haleemah damilola', '2.oyelekedamilola15@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ct.w3gHWbCnygQdjembwrelsuYghYLejOMfE0Em.jASiIKS9avgSS', 'bb50af9a8a27f011af7dcbf936100aed0c4362ee592dc25f96432c87f41e4b15', 'Active', '2023-05-06 21:47:57', '2023-05-06 21:48:47'),
(312, 'Oluwatobi Samson', 'oluwadamilaresamson470@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '104bfaa4336417741be8af41631dd53c.jpg', NULL, '$2y$10$ilVpm10R7pCUI69HCHRr/.pBWTrfoQ4.aKtgTfPMcvSt32eSIEIQi', '', 'Active', '2023-05-06 21:56:05', '2023-05-07 11:56:43'),
(313, 'Morrison Oghenevwegba Egbonodje', 'mtopventures@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.y1UAlhJ8CT7p8JrR61K..37bQj110VQUHA7G2I76ZEtUcz9/DqG6', '907efb59a9111167fe524e0cc3e9b9a3f20dac548906aefe9f1437c49f8a8edd', 'Active', '2023-05-07 04:31:43', '2023-05-07 11:32:12'),
(314, 'Olatunde Olatunbosun', 'olatunbosunlukmanolatunde@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dc306ab93554e6efaa479a98dc79d286.jpg', NULL, '$2y$10$6.Sf1j/zcDOyXzutPclnpe2YDbFYFBWR5e5RDlIYMP4.r5SSfx5Qe', '', 'Active', '2023-05-07 11:29:05', '2023-05-07 11:38:15'),
(315, 'Praise Jarlath', 'aise15728@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7b8297c01194e411ba1affde5ab4dc55.jpg', NULL, '$2y$10$IenWqrgMFVIx2bo09hWbYOVy.j2zbgohgiMMIHMuMnD0Dq1536hcG', '4a4a56e925d51873889ac64b1dc322a58aca688c8bd515cd8c65a2a2c7ebabf4', 'Active', '2023-05-07 15:59:20', '2023-05-07 16:38:53'),
(316, 'Angelodata', 'ebelejosephine2018@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SAR..fd635ayuzEl/owTRuu5IJvDlqXCATCGRQZIyd7X/DTAsvb1S', 'c50ed96f99f71e81fc89aa0226c8ef3c90233e8a75f838481b43715d36707afd', 'Pending', '2023-05-07 22:14:41', '2023-05-07 22:14:41'),
(317, 'Emmanuel Osasere', 'emmanuelking962@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vQz6Nk9fheJhai4OHUeWqe23w51c28ehR926SCgXfZdKpskxYNui.', '', 'Active', '2023-05-07 23:50:35', '2023-05-07 23:52:24'),
(318, 'Eunice Oluwadara', 'nicedar7@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/2KAXFlC/xg7qEbpZRkqIuElxrztQfutuL2dAOFiRn0r1SDnZWwpu', '', 'Active', '2023-05-08 00:50:29', '2023-05-08 00:55:11'),
(319, 'Vjayhairlines', 'vjayhairline@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Ndj2nzq7WDOzLCodEPKyWezL9Q9o2U9tEaK.tF1i377s6EL9yShyG', '', 'Active', '2023-05-08 01:05:06', '2023-05-08 18:58:25'),
(320, 'Micheal Jonathan', 'adjarhojonathan7@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1yHGbSIVE8xTHy3H5FSm7.NsM7gpcrKfBrPK4e82HM5zI8ED23Lc6', '2288abda2b5d8bce5be75cce85888c0575290b17c242756124d6bb075d0ce535', 'Active', '2023-05-10 16:20:15', '2023-05-10 16:21:44'),
(321, 'Ugwu chinonso miracle', 'ugwuchinonsomiracle@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'b6353cb19c46946b1e71bf6949a159d9.jpg', NULL, '$2y$10$NmUqPoNR4g8OZt4iDMtRGejgsZ5ymVwceENMRgIf8DPta1xbRIkC6', 'a4927f5b76518654b4480c475ff75e264ff2d191e6d2711da851d7b7f48d8fc8', 'Active', '2023-05-12 01:28:34', '2023-05-12 01:38:22'),
(322, 'Ejiakaonye Daberechi J', 'ejiakaonyejoy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uZxc.ptsJaul4o/lXwXR/OajlnrpDpduRr3khs/7Xobi9xS6QUgxG', '25f46bf6bbdd89d5fb1972a87dcd40f11c10fa0c5c16a3d17ca3b46f9ff38f8d', 'Active', '2023-05-12 02:34:05', '2023-05-12 02:36:49'),
(323, 'Edward Thomas Ekpoyi', 'edwardekpoyi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Ce6ZQu1lXn2riwnBbLJDhudMvAOL0ILS0F6Q1/BhUVGV3um1mlBkO', '', 'Active', '2023-05-12 15:12:34', '2023-05-12 15:13:23'),
(324, 'ROYAL OXYGEN', 'royaloxygen5@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$O7Vv4ZSWZrZUYU6aW8r/zutLB8sQe.DJ3tPCuZ3Jz5g92m7Zhgunu', '527e2c814eca2957062d83a827439b7f6573e551834ec83a21377f91b7338678', 'Pending', '2023-05-12 23:00:53', '2023-05-12 23:00:53'),
(325, 'Akpoguma Matthew', 'mattoghene@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$eESw0mwz0t0XOKGIKYPpZu1viMFU/VVyaMk720yXs.AHWZ8kUEU8.', '', 'Active', '2023-05-13 17:25:29', '2023-05-13 17:27:35'),
(326, 'Kathy Store', 'vincentkate7@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$neb1SoDE/IPaBhUxJtX7IeNS9A0v7Wy3yldAM/u.vQ9i5s16wo7A2', '', 'Active', '2023-05-13 20:45:56', '2023-05-13 20:47:25'),
(327, 'Toluwalase Rowland Inwang', 'djnorkia@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0U4NvAsNUpNQcz8hc0Mvpe6CLBjDvrz.NC/nnH.5.qsNuwhBBEq.S', '41cb56db9fa9e7161570b205d61f818af2e25781302aff39f6b44a77a6fe484f', 'Active', '2023-05-14 02:38:03', '2023-05-14 02:39:07'),
(328, 'Ike Emmanuel Ejike', 'Ikeejike200@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$rREhoQt3clHMg.VqUCiC..tXv4C3.SSZMkJaDN96ri6evkEi0fPCm', '3bd3276eb5d5aea6951294deb50ade7b9de12f3261816f9d91e9dfb87c5aa9f8', 'Active', '2023-05-14 03:00:22', '2023-05-14 03:02:52'),
(329, 'Mike', 'echomike400@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$L58Tzn2w1DJG6kSTgZduq.wlyDFjNH/Jxx4BfxVSQI3IR/LJmJq1y', '323d7f4e9183bc873f9063bd73867709fbeca2fe7d757d4213b13b2d3e4088c1', 'Active', '2023-05-14 03:18:00', '2023-05-14 03:18:24'),
(330, 'Adedeji Ayomide', 'adedejiayomide902@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hhTFc6XiRQXDzu8QPFIkKuafMObq2YdAdXkpBkvR8FJ3yph7v8Oii', '', 'Active', '2023-05-14 03:25:12', '2023-05-17 15:35:27');
INSERT INTO `users` (`id`, `name`, `email`, `phone`, `country`, `address`, `state`, `city`, `zip`, `website`, `facebook`, `twitter`, `linkedin`, `instagram`, `pinterest`, `youtube`, `photo`, `banner`, `password`, `token`, `status`, `created_at`, `updated_at`) VALUES
(331, 'Prime Telecom Services', 'primetelecomservicesonline@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HIiFbr4t8Ec3Jn7TDyzObOYyZJ/4azo8kkZ916WJhBqM5.Di8.xqi', '', 'Active', '2023-05-14 12:11:47', '2023-05-14 13:02:57'),
(332, 'Quars Garments', 'quarsgarments@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wXfSkipIQ7P8o9iA/dEbF.M0q/Urz5nBCtXBgAVqqrWBlJMrWYMeu', '', 'Active', '2023-05-14 13:38:26', '2023-05-14 13:39:57'),
(333, 'Daniel', 'samueldhennie@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$I93/9wNKgVysvDts3lVtSeVb3G9vLEmVGXodBYIOLah3DsJS0cQRW', '', 'Active', '2023-05-14 14:57:46', '2023-05-14 14:59:00'),
(334, 'Okere chimex', 'okerechimex42@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kUyihjeVagI0jF2CU6I4YOwJgo88Y53XeYXe6wj7fQfmY6UWrpEC2', '', 'Active', '2023-05-14 23:18:32', '2023-05-14 23:19:57'),
(335, 'Dera\'s Event and Suprises', 'pchidera@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FTgxF5Hp17sgVx2kX.PHO.VE9yLkb7ORoCyAxD57Z/I97vm8p.c2y', 'ca409433cdaa4d9e09333563b108640cccc6cc1ec9bcf70d667dcafb350268b8', 'Pending', '2023-05-15 01:04:29', '2023-05-15 01:04:29'),
(336, 'Dera\'s Event and Suprises', 'pchidera045@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$RkuJjDWzkCByPTXW/j3MOuzeC9HwQl/RZv/GSBN21RUpg2Oep59R6', '', 'Active', '2023-05-15 01:10:35', '2023-05-15 01:11:01'),
(337, 'Benjamin Nelson', 'nelbenjamin1@gmail.com', '+2347031482418', 'Nigeria', '3, Vincent Amaefula Close Off Water-intake Rd Margero Kaduna-Nigeria.', 'Kaduna', 'Chikun', '800220', 'https://wa.me/+2347031482418', 'Benjamin Nelson', 'Blessed Ben', 'Benjamin Nelson', 'Successful ness', 'Bendben', 'https://www.youtube.com/@dbenscommunications6033', NULL, NULL, '$2y$10$5.ld2XvvxLbvKDSsbuTG9OSxpDMgDQ7APoNS71msA354IW8ZFCAiu', '', 'Active', '2023-05-15 12:15:17', '2023-05-15 12:21:16'),
(338, 'Solomon Oluwatomiwa', 'Abeokutasexstore@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a373bf684821b47709c10515477019f6.jpg', NULL, '$2y$10$Cgc7OvQdsRTiVm4OjSVc7.BUtAV1vhyQZzteWbT1VUKPoNspuPBOa', '', 'Active', '2023-05-15 12:58:21', '2023-05-15 13:20:21'),
(339, 'Zubby Dominion', 'zubbydominion906@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Au4mAqRRWu7ax4hCin5wc.fcY0xqisbbViAGIcBO4CD3WFoHE1d5S', '', 'Active', '2023-05-15 14:22:58', '2023-05-15 14:26:42'),
(340, 'Nwani Perpetua Oluchi', 'liviapetua@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$g0A22c0uJFQp8Nv4dbriruGdOE2NEvMmTYO8u70hIyAd3NvV.mdFm', '', 'Active', '2023-05-15 16:45:28', '2023-05-15 19:34:40'),
(341, 'Olajumoke Adeoye', 'totalconsultintegrated@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hqcKXz4Za5gFm/rolluCguiSOL8obiHMTo6MM43bzuGmUTMN6kMti', '', 'Active', '2023-05-15 19:08:03', '2023-05-15 19:09:38'),
(342, 'Ajispecial', 'ajiboye1$@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7Q6kgjVtG5vjZ77lz8fyCOX7tXqaa9U5Fb20vxvfworQMKfE.PZiu', '593106ce918b30b4a684f2eb784847dfda86734646538bc42f5ce79680c785cb', 'Pending', '2023-05-15 21:59:35', '2023-05-15 21:59:35'),
(343, 'Ajispecial', 'Ajispecial7@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ieYwcxpnkW1dAAB0uusA5OzU8ClXXdbwqQUUOs4fjwC4Y92tiMBi2', '2d746a71d3501cb7ceba9aa8d43a75f084227b2f990d21c618c17664cc8e44fa', 'Pending', '2023-05-15 22:01:54', '2023-05-15 22:01:54'),
(344, 'Ajispecial', 'ajiboyeemmanuel2017@gmail.com', '08092267446', 'Nigeria', 'No 5 Al Ameen street Coker aguda surulere', 'Lagos', 'Lagos', '101322', NULL, 'Emmanuel Ajiboye', NULL, NULL, NULL, NULL, NULL, '87528efca4f706d631a0f741ca222ea6.jpg', '12c6220a6ca3c8e50370eb487051d2ba.png', '$2y$10$hCV7nRdDkROOvdEg/7/sf.63wOve3.J1qWyy3WwXc8CiaQ1MrspuG', '', 'Active', '2023-05-15 22:06:21', '2023-05-15 22:11:38'),
(345, 'nora Wilson', 'wilsonademide2000@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$k.FAdqLWhvgCLCwbYbaXB.w7GVNF/2UKtXDHO4t2m/xg9jai44AVW', '', 'Active', '2023-05-15 23:54:01', '2023-05-16 00:19:03'),
(346, 'noraWilson', 'wilsonnorae2000@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ldt.hTH.KXoels6HnnjZ3.een1w4E3auqZa9e7FqyQ2RpNjny/8d.', '8cddec1942c91319a6e76a3dc4f03e8f9574fcb26129c5753d29064897bcdb38', 'Active', '2023-05-15 23:55:15', '2023-05-16 02:58:15'),
(347, 'Okoye Wendy', 'Okoyewendy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bc0540710888df1e12cf62ebf72d1c01.jpg', NULL, '$2y$10$sZpzLntrkQgY5GzA4hW8huVP2wVL2AtrHL5LmdeE9Fm0vXRbT0s6.', '4185480b1d2b7fb306bed8231ff5d306b324f87dacc4b434f017e15c4aebae22', 'Active', '2023-05-16 02:57:46', '2023-05-16 03:04:16'),
(348, 'JC COUTURE', 'ljane0934@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$X1t092rsSV21yzLRKoOVQeh6xIMiNuagV4ZaCIBasW/3yLHaq0RhG', '40399e25e1e5e0b7bcab57be79f6ea5fc568e1a07a1480c8325140c76445ace5', 'Pending', '2023-05-16 10:54:10', '2023-05-16 10:54:10'),
(349, 'Adeshina Kayode', 'graceajayi531@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FLanABpDsLZBS/OX7Ilz2ez5OnltuRCMuLVN2AcGeVJUvhUFue0Ue', '', 'Active', '2023-05-16 11:49:56', '2023-05-16 11:56:39'),
(350, 'Prince Anthony', 'princeanthony9211@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hm3XOfVD00PSA5/7mKSKF.jcVJKrrkeENdlvbHSmHo7/u6U5PLSBi', '', 'Active', '2023-05-16 15:25:23', '2023-05-16 15:30:56'),
(351, 'Castle Homes and properties', 'ibepeter02@gmail.com', '08133557408', 'Nigeria', 'Jakande Estate, Jakande Lekki peninsula II', 'Lagos', 'Lekki', '106104', 'http://castle-homes-and-properties.realtornigeria.com', 'Castle Homes and properties', NULL, NULL, NULL, NULL, NULL, 'bdedb4ea62b6e45e17c84e49f08c4389.jpg', NULL, '$2y$10$s72ZBF9WTVyKTgv6NeGyk.H55r.kgQFVxg4buWk.Jk/Qu36N0OTtq', '', 'Active', '2023-05-16 17:16:41', '2023-05-17 03:08:52'),
(352, 'Esther Chidinma', 'echidinma539@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '950f60b3b095f3ba296a6a876a8abf35.jpg', NULL, '$2y$10$XGMTtEhjDW9yn.rpZQvjRub6xsGbWsDuY5oPbyWRwLRn0wg67Zjuy', '3268945802ef0f237c93a3ef6a491e0c7480277f2be566af82e25fe0d6b24e5f', 'Active', '2023-05-16 18:26:23', '2023-05-16 18:34:41'),
(353, 'Sido Chemicals Nigeria Enterprises', 'doublerich777@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.YD779IdnWBKXr/bP/vyFuXwusQNTi0XmCF.WDbMHnWD.ImkGkerS', '', 'Active', '2023-05-16 22:58:20', '2023-05-16 23:02:32'),
(354, 'Chukwuemeka Jeremiah Daniel', 'chukwuemekajeremiah8@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Bk4ug2AaOjllGbM6xU5uFOwSRgwZ713NHmTiY79MUWQihmA7ugUBm', 'da2ae426f2ba617ee2dcc80d004c7a38ede534c8fa0d84f7d7b4db2211bda831', 'Pending', '2023-05-16 23:28:40', '2023-05-16 23:28:40'),
(355, 'Udoka', 'Uduzoma1@gmal.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$XJaVWfmtuO/yrH31/N9nHe4DLNFeodj5Y/aCBE9l/fGJPU4SW/Gpy', '8dfe9e0dfacd62b4c65eb5ecb0baf4896652e0c11bc8f20758369a6a5dd5a74e', 'Pending', '2023-05-17 11:21:52', '2023-05-17 11:21:52'),
(356, 'Ibe Sammie', 'ibesammie10@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '87576802b0035d19d051a19c03836ad7.jpg', NULL, '$2y$10$DCwWdzQzRZjoNleXePWWDe/q4aiRrMGa16cp/3OqGWyrn6QwUlt1u', '5d0e082b9f4e282301516ac0dbee886c8e56250a5e55403be7ec584a3255b4f9', 'Active', '2023-05-17 13:26:24', '2023-05-17 13:58:51'),
(357, 'Godwin Nse', 'pestrid11@gmail.com', '+2348169092943', 'Nigeria', 'No 1 Campground Anthony village Lagos state', 'Lagos State', 'Lagos', '100001', NULL, 'https://www.facebook.com/TheG0al', NULL, NULL, NULL, NULL, NULL, 'b46a9f336dbe34700717bd85aea33e5a.jpg', 'd4874fa238f8d6147f100a6f8770dee9.jpg', '$2y$10$SjS.//Wi8SCVzahF/u0qnOQvRTuglAEJOEnIARcpBty3zcYbEG9Rm', '', 'Active', '2023-05-17 13:49:12', '2023-05-17 14:20:31'),
(358, 'Ekaragha Taiwo', 'Taiwoanna8@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$IL86YFevU/eMsTj3DYjTo.VtL/sbUK03JHUyCxCl8KvMrNlN3TxbG', '4f22fb270779b66de6e174806912d36ce0472405f7a804dcc3d0335cda12c12c', 'Active', '2023-05-17 15:03:31', '2023-05-18 11:00:47'),
(359, 'Rebrand sleek', 'info.rebrandstudio@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$EGB3PuQ2m.XjWn4qialLRunjK5h81a621KQVcNZICAhiAM36a5ctG', '', 'Active', '2023-05-17 16:43:15', '2023-05-19 11:48:32'),
(360, 'Daniel iyasara Ijomah', 'officiallydannysweet@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$yfcNhKlNnunjVBCy55CRo.gDbPpqSwRB1bGCj8GPfIgkS5JfTx3CK', '', 'Active', '2023-05-18 00:38:11', '2023-05-18 02:45:01'),
(361, 'Impeccable concept', 'dnaduku@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ek.XHdT.oOmaQSv62RX4y.sZkO5PDc9bsWZMTIb7P48G9KQ.9Afl.', '', 'Active', '2023-05-18 12:34:41', '2023-05-18 12:41:53'),
(362, 'Ajulo Abayomi Vincent', 'ajulotechnologycompany@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$fhijxlTHh6Q7WwWiCmuSW.xGOiCxRlegBPwWNKyCXo.R78iusbOYm', '', 'Active', '2023-05-18 12:52:21', '2023-05-18 12:55:14'),
(363, 'Tim Jennifer', 'timjennifer6@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Mt2Lfc3ZkktMpu4/eupzCOEYh75djsvl4Ret1QRvHIkKkesBKctSS', '', 'Active', '2023-05-18 16:28:14', '2023-05-18 16:28:40'),
(364, 'BlessD telecom service', 'martinblessing18@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$yTpz1wep9thiphI.uXryoO8gss0oAqmX7CJqgOhQG/FBlLOX5q79e', 'd3ae366fc48e60885ffddee340f747ebc576b7952819f44556b091ef38fad55a', 'Active', '2023-05-18 17:50:41', '2023-05-18 21:19:46'),
(365, 'BlessD telecom service', 'dammy1stgeology@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$omOB8bukLlbM6GGs9snIN.BuKXRZ/C5S7wSAQ4vCbs/WTtacSnDk2', 'cc3357d1dea83ac97121181d6bf013d5e7a16f73b504ad46ed39b36fd5a36964', 'Pending', '2023-05-18 17:51:45', '2023-05-18 17:51:45'),
(366, 'Michael james Effiong', 'jamesmichael595963@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$112RFf9ri.HiJbwrlpvTe.HuEHy8xv.qd9CYGymEAaoYPLSyY9lmO', 'ead63adc44e761fba9f6916238b164d69652a7d489dcf004bcb8068110dcc923', 'Active', '2023-05-18 17:55:07', '2023-05-18 21:19:50'),
(367, 'Adisa Precious Esther', 'adisaprecious2001@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ce0defa0be49a03f0ebbd835502e4c90.jpg', NULL, '$2y$10$jgsAgcDgknoPRPo1XaMK.ujoNY1I.xGS/dbXzf3mBNCwdS6RVb9p.', 'ee3765478730bb5e4cc8ddd38c0265d7aafaa888d734243a13b7b4eb94ce7506', 'Active', '2023-05-18 21:17:56', '2023-05-18 21:25:15'),
(368, 'Adesina Tunde', 'adesinablog@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$iy7lLniGom5TYF2sHzvqse1dQut94wB7bDpAPDhdK.fQAebzmvCsq', '', 'Active', '2023-05-19 01:12:03', '2023-05-19 01:13:24'),
(369, 'Prem groceries empire', 'lucasleonardos224@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$t0qyrDOMGak/BsLq8fVBSuUm0GrH2ChdDlg5XFKgNbVM5zW3K5yA2', '', 'Active', '2023-05-19 16:06:40', '2023-05-19 16:11:37'),
(370, 'Dominic Isaac Ubong', 'isaacdominic135@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08377b8271f2f87e2df6cc1007c149de.jpg', NULL, '$2y$10$0rvu.hqV14idLiUsFxe.SeOPPdqSvuq0HiOBx2NVCIzkg8b7Q0FN.', '1de3abddcd0e9a14cac90e7b1ecc7929f96856c3eb3fb3f30a0eedd0ea6f6680', 'Active', '2023-05-20 11:20:06', '2023-05-20 11:27:20'),
(371, 'Jude Nwabianeze', 'stjudenwabianeze@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZQqJ5N/xXbjdvxs0/0qshej9aVX7F4UeniqvUbXPs1SREdLylP/3u', 'b517a53f98cd1d15d1cbdddebc93bd6af41ab107aaaac1e5cbc539f674ef4f15', 'Active', '2023-05-20 11:28:46', '2023-05-20 11:59:04'),
(372, 'Racheal Afolabi', 'rachealameh182@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$F3mP.kllEjJIn3QkKBNjzeVSj1L6ZBd8TzLfoc2dPlocMdLCQIx5O', '', 'Active', '2023-05-20 17:32:51', '2023-05-20 17:33:54'),
(373, 'Samuelc', 'collinsjoseph004@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8Wb8Cx1LEIS.wcjUMatnNuYy/twfqMVritIWglBZOBBgcYstP/huy', '', 'Active', '2023-05-21 14:12:18', '2023-05-21 14:15:07'),
(374, 'Peace sound', 'soundpeace7@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NpIamMOvhz0XnPCiaO91OuyAZphst7dQ7ThYX1hiUtMTw6QXplzNW', '', 'Active', '2023-05-21 20:16:15', '2023-05-21 20:19:26'),
(375, 'Ajayi dayo kunle', 'oladayo717@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$lUYuHUNPYFOwEdjCB3361OPGCOJpQ5ZAAfDDRY0h3F.vQdyD8xmiO', '', 'Active', '2023-05-22 10:19:53', '2023-05-22 10:21:38'),
(376, 'Shyna', 'meemeeanny01@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pxX4IvJfj192hjgbr5bJ2eWJrL3iuoYixaHEr5ZcD9wXKyEvIfP52', '04337c4c1d9fe27746b76a2e7d5a7a970096faa87097476fe071ffd3d7751918', 'Pending', '2023-05-22 15:02:21', '2023-05-22 15:02:21'),
(377, 'Shyna', 'meemeeanny@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$OD46AbUaHRvAgbrA1XuqZOhRuMN3u.1GIUBqVHwMsfjVGnLzOou7u', '', 'Active', '2023-05-22 15:06:52', '2023-05-22 15:09:28'),
(378, 'Oluwaseyifunmi Taiwo', 'oluwaseyifunmi1456@gmail.com', '08144054101', 'Nigeria', 'No 36, Ajibade Mokola Ibadan', 'Oyo State', 'Ibadan', NULL, NULL, 'Oluwaseyifunmi Adunola Taiwo', NULL, 'Oluwatimileyin Bolarinwa', '@tims_ongraphics', '@oluwaseyifunmi1456', 'Oluwaseyifunmi Taiwo', NULL, NULL, '$2y$10$EHAmwm0.ytkHuU0fxPggSOjvZb/Xodd4uGBGTLufwVFo8YmGEMV9q', '', 'Active', '2023-05-22 16:04:07', '2023-05-22 16:18:33'),
(379, 'Miracle Mgbe', 'citywidecybercafe@gmail.com', '09166597202', 'Nigeria', 'Along Agyaragu Tofa Road Lafia Nasarawa State.', 'Nasarawa', 'Lafia', '950101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xt9pdaN0Exikj0IoBrpinu3oTxjhmglFTRqx13/GOhiww7c3fBifW', '', 'Active', '2023-05-22 16:12:15', '2023-05-22 16:15:04'),
(380, 'Jennifer', 'mizjenny123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$16.8XvYqrod6H4woHOgeu.Qsc4k1WW2AvJ1Gqt.RxQARkS2nemc8O', '2d94f3f8fc10cd5737d9320eab03b0a7f070b9f7a4e1d8d0e38e2161f46a8c49', 'Pending', '2023-05-22 20:08:43', '2023-05-22 20:08:43'),
(381, 'LICCiOUS Foods', 'tolulopeolatunji527@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Kcnb6YRUj4cMkHs3TOoPVOLcB4aMcwQZpd9N9L.qGZJ95p16dbi.G', '', 'Active', '2023-05-22 20:09:28', '2023-05-22 20:11:10'),
(382, 'Jennifer', 'samueloziegbe154@gmail.com', '09154882231', 'Nigeria', NULL, 'Ogun', 'Sango ota', NULL, NULL, 'Marvel marvel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4zY0/YFrrijyg8PHuy9Ap.MlKRgzZHn6Ot24GJs.CkrG05Bn/mu0a', '', 'Active', '2023-05-22 20:13:09', '2023-05-23 05:14:52'),
(383, 'Irimiya James asseh', 'bozzapaczy@gmail.com', '07066920088', 'Nigeria', 'Wukari-Numan Road', 'Nigeria', 'Wukari', '8080', 'Hustleniaja.blogspot.com', 'Irimiya James asseh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0qzPv2FSNkkbpPD1CHcr4ea9EmboBL62T1hhUjDZUI6Wbx5PwWxia', '', 'Active', '2023-05-22 20:57:08', '2023-05-22 20:59:36'),
(384, 'Moses omowunmi', 'mosesomowunmi419@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$46WgXctR5KoNYARwd89a.eWJ9TkEbzjW1L2QhGWI8WVpu34TTHtPO', '', 'Active', '2023-05-23 12:32:54', '2023-05-23 12:35:57'),
(385, 'Midefm', 'midefmgeorge@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TQfZoEls0c1UW9jPkk/aHu/.3/MWqt2VeBd9v2AoC0BmZYCSbU/Zy', '', 'Active', '2023-05-23 15:28:49', '2023-05-23 15:35:14'),
(386, 'BRIGHT', 'brightdaycleanersventnig99@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DrH3pCAutezYyPtfZwDxb.gXf5rs4.CStXNRnUu4hJa.Fcqvvy39e', '8810b3e30713f6d0210f77f327a33673b1cbe57dcd2c10f400429807063f3986', 'Pending', '2023-05-23 19:29:00', '2023-05-23 19:29:00'),
(387, 'Romanus Benjamin', 'romanusbenjamin2019@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$z.sCYNE2GkyOihIxQW4TjencFnjRnBRcNXNyueAB8doH9zWHV7MnW', '', 'Active', '2023-05-23 20:35:05', '2023-05-23 20:36:17'),
(388, 'Skye Tech', 'skyeking008@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jemeU6foE8iRw4IDuwm6VO8Td6unTKHgWvBjnqZbfErsUVbtrDVKG', '', 'Active', '2023-05-27 16:03:44', '2023-05-27 16:04:29'),
(389, 'Silverglam Collections', 'sglamour303@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$F7qDM.R3R3DexSMEXVkY7e50YMhqvqdOjIVlVusXAikaG67Y4NqSS', '', 'Active', '2023-05-29 11:55:56', '2023-05-29 12:02:22'),
(390, 'DaviesNg', 'daviesngtech@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jQIaLMh8GtdpH3fr/vDuE.PJCpIKrqT7UT413XO25/Cj3xtbrpUmO', '08a93fcd181d1253529bde5fa97c3f357d849837b3ee003922b01baa1706c6d9', 'Pending', '2023-06-04 14:53:01', '2023-06-04 14:53:01'),
(391, 'Justus Joseph', 'jumbojustus@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1Vuu1.fy.vkOoPd9Vx2UteHWbrLDww54o6RDunz3vTah0W7fYUm6O', '', 'Active', '2023-06-05 22:06:10', '2023-06-05 22:10:48'),
(392, 'Teddy Anurukem', 'anurukemteddy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$035fRJ9vdWzlIxlC73pMo.vAQXVCAR6r/dyEZvG.ApqVr0uKPTWZG', 'cc5a1f5f3c1fda4a91500a86c93ff55b83ee44eba366bd5ba5d07c1c357ce5ae', 'Pending', '2023-06-08 17:50:59', '2023-06-08 17:50:59'),
(393, 'Oladejo John', 'ayobamijohnsamuel@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$AvNvQRMCOx1GEaw7YINAk.ytFgaXMUuDur5g2uR.DNOo/rGiymuf2', '92026fe28b924190fd66ec01781f8f8852c5a97ad1fa9a6273a447b6cf4f5dd2', 'Pending', '2023-06-08 22:50:12', '2023-06-08 22:50:12'),
(394, 'Oladejo John', 'samfrodo338@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$y9rjA.JT7x0SNFpOrm2ImOv6CIjatfpZViF11bP7Hxm3JSwBX6h82', '13fbdba4154b9a718599958b878f72fb3c454a298a05bb15c013d9442519f066', 'Pending', '2023-06-08 22:55:34', '2023-06-08 22:55:34'),
(395, 'Moshood Ibrahim', 'moshoodakanni6@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9aii/UhUb1v3G4fI3yjdT.2c45nNpWkiAjHbFsXeMqVMD0yff4xEq', '', 'Active', '2023-06-08 23:29:19', '2023-06-08 23:30:39'),
(396, 'Abdullahi', 'abdullahmufutau36@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tBx4My4NivfVCs3C5HxASO6a4IPHPC0zmFpEMe1.wEPETCBjrFYtu', '9993d8967b8a8d98b2c208ba39de82765f3c0422d9fcc43055dbdbde3ad2dcc8', 'Pending', '2023-06-09 02:32:59', '2023-06-09 02:32:59'),
(397, 'Chukwu Amos', 'chukwuamos152@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vdQS.A4sd3WrUzOAqYoRouV3ZkDOIngdDBPxbdATJIsZ/kZ1y0jOS', '6c40cd111d4efa1ed61087379907827b6658886b2696f4e804e57058c3a29187', 'Pending', '2023-06-09 02:59:02', '2023-06-09 02:59:02'),
(398, 'Igbe Francis', 'francisigbe40@gmail.com', '09029570482', 'Nigeria', 'FHA-Lugbe', 'FCT', 'Lugbe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$AHzVT8ndvOXnIaIHiIn/1eN4/Ij8q5GFZQkf0gglODTQHhnucNNy2', '', 'Active', '2023-06-09 11:13:12', '2023-06-09 11:21:30'),
(399, 'OGBEBOR FESTUS', 'ogbeborfestus8@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HRagMBC7P3y4QH/1QXNub.Vfqt0bDyeseYTNxvU2nEP34nHf.scte', '59bf6cacaa31e371d31a22f482fa19dde989e3b21986101c20db5206898f3082', 'Pending', '2023-06-09 13:06:48', '2023-06-09 13:06:48'),
(400, 'Kelly utsu', 'kellyevans290@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'b09c5d4f47027c69ac77d91249ec4bfa.jpg', '$2y$10$MIqRQeyp79H8PMKd7YZlPO28mZo6jp6FJlSxN4wqLPyOGRCS12XQe', '', 'Active', '2023-06-09 15:13:26', '2023-06-09 15:22:18'),
(401, 'Kenneth mark', 'kemengram@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$S4VH/ycWIi.amkLeBrAMteM6.ATGimv4WEQsJtuhYCOhZByUBZI3G', '', 'Active', '2023-06-09 15:50:48', '2023-06-09 16:02:52'),
(402, 'Favour Iyanuoluwa', 'fasuyifavour731@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vBy19jtjeHnU8IOfxHSIQ.uOdzpba9opSNNB2SZ4vdqIBLziYdSvO', '1111fe1e9f9fdab5b56c54b639ed5ec73e5b3246fc2cb29a644de357a6e211fa', 'Active', '2023-06-10 00:08:54', '2023-06-10 14:42:12'),
(403, 'Edema John', 'travelmania36@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$sOD1c3BT2aQUZiTjjEGgleQfd63a4Y1kPobsUQQP7hNdyrhfoNv2.', '', 'Active', '2023-06-10 09:07:00', '2023-06-10 09:11:28'),
(404, 'Victor Allwell', 'einestienfrank@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '73b80219888230d6907c4bbb44eb54cf.jpg', NULL, '$2y$10$8gXRyoNh5FSg.ZCeqIqcMuWVwswc2iIvEcfRP5Fk1iK8jYtJCncX2', '', 'Active', '2023-06-10 09:41:24', '2023-06-10 10:06:45'),
(405, 'Iyanuoluwa', 'iyanuoluwafasuyi819@gmail.com', '08066316381', 'Nigeria', 'Ilorin', 'Kwara', 'Ilorin', NULL, NULL, 'Iyanuoluwa Oluwagbemileke', NULL, NULL, 'Iyanuoluwa Oluwagbemileke', NULL, NULL, NULL, NULL, '$2y$10$javCVRKWe6ef46O3EfZkpu3QebfB8jDHfi1qIBRUn0J9.GacUmJsa', '', 'Active', '2023-06-10 13:49:53', '2023-06-10 14:40:00'),
(406, 'Oche Michael Sunday', 'ochewap@gmail.com', '09021464538', 'Nigeria', '68, Sharp Corner, Mararaba, Karu L.G.A Nasarawa', 'Nasarawa', 'Karu', '234', NULL, 'https://web.facebook.com/ochefizzy', NULL, NULL, NULL, NULL, NULL, '2596163f17408f4ec5761be5c38eb778.jpg', 'e65b15811c10008e5a67b414ede7e4cd.jpg', '$2y$10$Tg8JP70GDTVQPbQAOqyuie621ksfaaW4PEHLIB4IommvJbbwxYFBu', '', 'Active', '2023-06-10 14:05:28', '2023-06-12 20:33:05'),
(407, 'FISAYOMI FERANMI', 'fisayomiferanmi544@gmail.com', '09155009773', 'Nigeria', '3 idowu dele street', 'Ogun state', 'Sango ota', NULL, NULL, 'Fisayomi feranmi damilare', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$PxSNUIKPkkgEp0U6snTIg.QNwkPG88hQ/392TYcf.nyWrV4/AXRiG', '', 'Active', '2023-06-10 14:13:25', '2023-06-10 14:51:19'),
(408, 'Elizabeth', 'hirey.mhidey1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vv6B5ZE/nqeuHPYBq/HrG.hfw9R.8ffFs3DfcUwXTIEIq5RhiR5wm', '', 'Active', '2023-06-10 15:53:38', '2023-06-10 15:58:03'),
(409, 'Joshua David', 'nkemakolamjoshua92@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ELVT/xj5yEuKUQynMyMfCuxa/RDH0vI5vRgSj8MWfPJwxMEXaFPKG', '', 'Active', '2023-06-10 16:23:35', '2023-06-10 17:25:10'),
(410, 'Adeniyi yahya adebori', 'Adeniyiyahya7@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YMc5vI/9.b/g9sAuLbWFJueEt9bXL5u6qHhpnuq1Nr0iv7Wchl7ru', '7825a3e2e1d242f6021c85aebc431c5f8dbbc7baf9f0090a581f49d29a459ade', 'Pending', '2023-06-10 20:45:40', '2023-06-10 20:45:40'),
(411, 'CAZAAR TRAVELS', 'cazaartravelsandtours@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ME89oUk15gP5TZ1EWQ1JOu78CovPC27g9fOhtr0SC3YLcog.B3YuK', '652322fb8dea1c62bc281aa972387b8c2f72b25ff44adf5b928b3f6cf42b2f1f', 'Pending', '2023-06-10 20:49:00', '2023-06-10 20:49:00'),
(412, 'Bassey Ekanem', 'basseyukeme22@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DNsGtLrAVud/Y98LVBoJt.kvIiuAg/j9fHrTX6ZIZ/.0om3LmFy/a', '', 'Active', '2023-06-11 01:47:04', '2023-06-11 02:35:57'),
(413, 'Bassey Ekanem', 'basseyukeme@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4HhD1Z/rFhC10i9GSjRE8euHazxPUpETHLXurJByP2LuNSXXC42tu', '71d45dc7ea320a351ac38c941e0c65f78d977b43d47fc0e2a0956d0eeea6b3b8', 'Pending', '2023-06-11 01:49:22', '2023-06-11 01:49:22'),
(414, 'Desmond Gabriel', 'denimbrown41@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4a103b453c29cc30523b582c51aaa568.jpg', NULL, '$2y$10$y7YB2TJghPevuCD9X8GxReNZGBA76w4yRdxQn7UjHeL1KyDllY2jy', '', 'Active', '2023-06-11 04:02:20', '2023-06-11 04:25:49'),
(415, 'Adedire Oluwaseun', 'oluwaseunfunmi4@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6w7NIBdYLkcWntUJBAmen.fDKtmeP0Go9.6dlrmTxf/XOEaS.eoc6', '7b1a9760954069880792a2fb29b7eb07b4f3753770a22148f83d2ad9635e85c6', 'Pending', '2023-06-11 13:08:55', '2023-06-11 13:08:55'),
(416, 'Nafiu salihu', 'manlikenafeeu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WXCDvQr/PBWoWKBg1sBsyOSfe3ytwQ0I1baVvebefGDFPWoEf7knS', '631e6bcf302224024c0eb1062374cb295ca013c93a6c62b8750ad9044fa1e662', 'Pending', '2023-06-11 14:25:56', '2023-06-11 14:25:56'),
(417, 'Esther Aniefiok Ukim', 'ukimesther@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xkr4KwvInAHijaFhMM7daOBjON.0ouApjMPBPEE2A2w3u19YBQguu', '8b20d054b477e0a03b288c03e11e353c98b08fd35f8d8d71a449579598bc553c', 'Pending', '2023-06-11 19:50:16', '2023-06-11 19:50:16'),
(418, 'Ovadje oghenekparobo', 'kparoboova98@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$OS3e0ZtlvU15NHIXEl4yd.FA5vm3akwBtjTTeyMxtBzi8xq3MADNS', '407adde1aa3783878050a42e8beeb26dbe3106137b4ba416b216e361abf8d707', 'Active', '2023-06-11 22:40:59', '2023-06-11 22:54:54'),
(419, 'Samuel', 'samemma9666@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0PpePQEO7RJb29SmYq7aB.h1d69h6H4B7lomcn9XoQF3hrpT6jluS', 'a63731045b443a73c11c7c6e0a4579a05c4ff427d3a75f079a8b95fa12f52605', 'Pending', '2023-06-12 01:33:12', '2023-06-12 01:33:12'),
(420, 'Zee ventures', 'ayindeadeola23@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9t7BDX9MKghbT8X8bu809eNNKwtsTMiB0iOUBxhTczAiVWPPfeMri', '', 'Active', '2023-06-12 01:49:54', '2023-06-15 17:38:31'),
(421, 'Akande adebayo', 'akandeadebayomicheal43@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.f3jwNnOYxjdjgH/5G50P.YOcoEjGXOMUSSGDiifsT80WTrT15otO', '', 'Active', '2023-06-12 11:28:48', '2023-06-12 11:33:19'),
(422, 'Nworah Jude Chukwuma', 'chuknorah@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.CvChrH9ZpMoyhBCJDnyW.Hw2iAmFo0e5DvA10w6RslhPHwp5ESJa', '', 'Active', '2023-06-12 12:17:00', '2023-06-12 12:22:53'),
(423, 'Marvelous', 'marvellousezeh3@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$M3jqOjp0g61KG9VxKudO.u/lesPn8CyYf3TKs3qTu4JZ8pyfZ8Lfa', '1455ef07c18bca1ef3dad4aa5d63e3fc592dabbe40a9ce3f9a8ee463812d5af2', 'Active', '2023-06-12 12:38:27', '2023-06-12 12:42:46'),
(424, 'Adeyemi Abdulsomod', 'abdulsomodadeyemi53@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6OgIK4oFx.owfiPGuXHxlOym72QmUT8fLwJIeXd00eaeRFfnUxGsK', '3dc8ffa6072d8176cd5a29c21cd2b90cfcbf9f52e9f844d0200e73e28bff1a00', 'Pending', '2023-06-12 14:33:05', '2023-06-12 14:33:05'),
(425, 'Abubarkar Yahaya Abdulnafiu', 'abubarkarayonimisi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kCY5DU4TLJMsBUPp00n38.0OmenX1aKUVAoZBc0DkyLKqYaTfYSse', '', 'Active', '2023-06-12 18:37:00', '2023-06-12 18:38:20'),
(426, 'Olagoke Elizabeth', 'omogoke4real@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.Bxc11Y9NqeTe/8Kt3bYs.ukQ4RuW9dPnB3svAKRs.u/oL1NeWdDi', 'a0b6f53bdb2fd810cee05348e82dbabc08952d85a6856cfe0affd08c4ca495d9', 'Pending', '2023-06-12 19:53:36', '2023-06-12 19:53:36'),
(427, 'Beulah nnurum', 'bnnurum@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$XugOeATIKo8N4uGeQzuBwe7/Jk8baE.paYMvGGNYhIdmzqFDOiXC2', '', 'Active', '2023-06-12 20:39:46', '2023-06-13 15:37:12'),
(428, 'Charles Brown', 'cbventures75@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$v43qJonuuWH0G72pM3iO7eB7VBAXYrvWnfq9wXm5HMF.aIfRmdYty', '', 'Active', '2023-06-12 23:38:11', '2023-06-13 11:20:23'),
(429, 'AMOS Dodo', 'amos4jose@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kdotVosOrFmSSVvw0lPSvOdI2MYIy81ZyJeIb50ep6/AmFoNgvONi', '', 'Active', '2023-06-13 00:03:56', '2023-06-13 00:04:34'),
(430, 'Iyalla williams', 'followiyalla@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jGbDAQjAGwbYicI4V8h6BO6HodQBqhjxV3JGidzrToBA0v4RM1ZXu', '', 'Active', '2023-06-13 00:08:46', '2023-06-13 00:18:19'),
(431, 'Akinwande Kehinde Ebenezer', 'akinwandekehinde15@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1bTLlgqiGPlh.Ol7.84EeOq9zFxuETpJaE.dnJ1MR4akjlKg.nsKS', '', 'Active', '2023-06-13 00:48:57', '2023-06-13 00:49:42'),
(432, 'MAJOR DECENT LAUNDRY', 'badmuso023@gmail.com', '08035398978', 'Nigeria', 'Lane 2 igbaroola close ogo oluwa osogbo', 'Osun', 'Osogbo', '234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HVTeoMLV2v4tTYuCr1t4EOIzhyi1r8rLhyTdjodH/oQv0zVbkRz76', '', 'Active', '2023-06-13 02:15:06', '2023-06-13 02:49:00'),
(433, 'OGUNBIYIMOSES', 'mastergold2444861@gmail.com', '08083122955', 'Nigeria', 'Irojo Arojo Palace ILESHA', 'Osun', 'ILESHA', '233285', 'www.shopneolife.com/ogunbiyimoses', 'Irebami ogunbiyi', NULL, NULL, NULL, 'OGUNBIYIMOSES', NULL, NULL, NULL, '$2y$10$nZ6rjXi7pbHhgK3RQJf9a.UmvqxIf9mmsONRpMg3AFWCeeCT8liAS', '', 'Active', '2023-06-13 11:51:18', '2023-06-13 12:01:39'),
(434, 'Mayana', '01mayana47@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$x.z4qNO7J4jzyqm1xcOmIO33p/qAH97CM.p8GACtLcNbobw3DIa4i', 'e216f9d865514d3b4061a4c496668b673da21fc6b78f8c4fd7794c6f3048a014', 'Pending', '2023-06-13 12:05:35', '2023-06-13 12:05:35'),
(435, 'Mayana', 'horlerwaheed@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2QgSsAs3oBAx82.g0mWqBORSM7y3nC5l6bgBbQpfROZm6gzC7wjoW', '', 'Active', '2023-06-13 12:08:12', '2023-06-13 12:17:37'),
(436, 'Paragon hairline', 'hopebenevolent26@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Aglzk5CrJqEqN3EIwZcawOqwHTN/E05c0b99hu4hDgCWC0qijCapC', '', 'Active', '2023-06-13 14:51:14', '2023-06-13 14:59:29'),
(437, 'Amarachi', 'amarita0069@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$E8xHI1KQjaFEPbeikv5Fsu92adK0sf6aSBpnbwye0x5Wk.D3RIqNi', 'ea7394927287dc1c5708a3a962000eaf917716151074f4c19315732b5647901a', 'Pending', '2023-06-13 16:49:41', '2023-06-13 16:49:41'),
(438, 'Perky', 'perkyuzoukwu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$raiILiu2FSHv46oT/pHezulCU8K0L99uswz59KmrbNUDZVvTd3Ud.', '908c06b5f9a50faf815d5b8184696d70b12ad792ad2b01b2ad71cc377b728061', 'Pending', '2023-06-13 18:41:33', '2023-06-13 18:41:33'),
(439, 'Chidi Osuoha', 'chidexplus@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.sBzyku2jxbGpXJmsO2P3OdHtvCd9JMvNtoQTrr.CQRUHS42my8bK', '', 'Active', '2023-06-13 22:07:04', '2023-06-13 22:17:00'),
(440, 'Nwidag bariluyegia miracle', 'bariluyegia3@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$CpytHch4dLmO0pfTpwSkzeVRDW67VY9KpCG2JrHSvtKZkmQbtaeia', '', 'Active', '2023-06-13 23:11:27', '2023-06-13 23:18:50'),
(441, 'Olayemi Olalere', 'lillyfoodsnmore@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8h/E5s/iUTLhdGBZ3eKg7u.FCAR4jgD8mevKEAXE5LefoPOm/z6sS', '', 'Active', '2023-06-19 16:32:56', '2023-06-19 16:33:34'),
(442, 'Sassybrand Closet', 'deborahifeoluwa10@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$D02Wj7GrNGwgHBA9e4Plqej.bJgURjv2sxHJ0/LXhXnlYB/BXeoS6', 'a1352070fe537d00cef6a78d14f25f80ac021d43bb7b11408b6e6bb83ab07657', 'Pending', '2023-06-19 23:57:37', '2023-06-19 23:57:37'),
(443, 'Usman Emmanuel', 'usmanugbedeemmanuel@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5pl9jfi2thywSDtif8NgOeuRTOIY8XeQnqq39vDWYExHJd3qFtNeK', '', 'Active', '2023-06-20 13:40:14', '2023-06-20 13:40:39'),
(444, 'Dozzy Praize', 'kingsleynnadozie28@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$yl7aikS7KAHOjENqVhREZuPL6S53cqQ9bOYK2uIVckjzsUnuMXXUu', '', 'Active', '2023-07-07 19:31:15', '2023-07-07 19:41:00'),
(445, 'Trendnotch Media', 'trendnotchng@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$v7OIjFoRgFSEuXrwGvEM2eN73yrjQ1FXAw2cunkODP3BpDeTEx19u', '', 'Active', '2023-07-09 23:04:34', '2023-07-09 23:09:02'),
(446, 'Uthman Oladepo', 'oladepouthman3@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TwuLcVUGlrH.swFJNrUmXew3Eg1tgO.ieYbLCdxxjp.R9igstED8O', '', 'Active', '2023-07-10 18:56:29', '2023-07-10 19:01:07'),
(447, 'Oluwafeyinti Stephen oluwasesan', 'oluwafeyintikesh@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5q7vDHP0IxJBxO1WGZ06oe0GnY2JHC3/B9G0O/QGr5ZPYaB1A2HSS', '', 'Active', '2023-07-10 21:08:16', '2023-07-10 21:10:36'),
(448, 'Divine Blessing', 'Divineakele0@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$INaYHuaroYB7iOtKawbLO.dFNizJnbnl/bbjpscBTQtBYPWTgX9cG', '', 'Active', '2023-07-10 23:56:31', '2023-07-11 00:02:10'),
(449, 'Airat Olowa', 'folowa11@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hoDPm.ncncxwYwK0dwyJ2ealXU/SLekeKwC7K.LgDFo9dDA/8pae2', '', 'Active', '2023-07-11 00:53:53', '2023-07-11 00:54:48'),
(450, 'Akpobasaa', 'atubiuvie@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$o5zKq/8A48xddGsTCrQOY.67BWMsJM0d/QYDqIzjTMBJeLdUH3wKm', '', 'Active', '2023-07-11 09:58:16', '2023-07-11 10:04:36'),
(451, 'Akintoye oluwakunle Ezekiel', 'ezechiel303@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$eLXZ.4fUI2NrpsPh85bnc.9rIl9Ck3q2kOWB6PYa3Lr9eqXHQ2P3G', '', 'Active', '2023-07-11 11:29:16', '2023-07-11 11:30:03'),
(452, 'Victoria', 'vikky12349@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6J38RGZz/MoXIAT9nFVMJ.Oq0KBpHV9G7vC1nZ2lreRFJbYfOB6zW', '', 'Active', '2023-07-11 14:14:41', '2023-07-12 10:15:42'),
(453, 'Nctest', 'nccsteam@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xgL89Acdbgnbpfkxf.3gHuAc2HX1ejdrZG1zClTUB.GYrzRmZ/B2q', '172540aabc67bc2a64e9e24c5e2fc556e80b3922b05719fd17122131eba13b4f', 'Active', '2023-07-11 15:20:19', '2023-07-11 15:29:33'),
(454, 'Olayiwola owolabi', 'olayiwolaowolabi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4..pB8ZdsTDl6q0OGALHlOrpV5r5u3B2Mx5/Be66HYdVpFV0bT68m', 'f1299547c6a150125456d3e7f93eb343a57ac98695222159dae809eb83132a14', 'Pending', '2023-07-11 16:18:42', '2023-07-11 16:18:42'),
(455, 'Mandy Barnny', 'mandybarnnyfoods@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ebNnelwNWttoHYg6Ob.Ws.2MAbOk8eyPXljbL4HVdXwkzqccqNfKG', '', 'Active', '2023-07-11 16:36:45', '2023-07-11 16:37:53'),
(456, 'Evelyn', 'komelove1234@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Dx0YOK/dm6iKuQM2dsNYMu9SorQToeqhTTzqEQUbP3ju0HS.gxKpC', '', 'Active', '2023-07-11 18:05:48', '2023-07-11 18:44:18'),
(457, 'mary ada', 'maryada@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zJq37SOOJB9hmCR7WLIpeee/.wXzVyelvj1nrRoafa0THs1gu7a06', 'a6dfde41e152b0d35998ade02fab5789269a60585a8267c8b8bc1fd866197ee3', 'Pending', '2023-07-11 18:11:01', '2023-07-11 18:11:01'),
(458, 'Gabriel', 'obianyorgabriel@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7U/owZxmOIDpB1jSIw179.nQbQA1S9dV.AbrSKisvoo.im6ybE0C.', 'fd7666da9eb2fa6aee126752bdc4eb2b8bcc9dfb2ea7760393b6cc5ffc59d41a', 'Active', '2023-07-11 18:12:50', '2023-07-11 18:57:23'),
(459, 'Miracle John', 'miraclejohn619@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$MoVEg9E3GgSUOpnnKJLrkO8faRAWidvYda6aYSr3RGsljOVeC4F..', '', 'Active', '2023-07-11 18:33:50', '2023-07-11 18:35:47'),
(460, 'Mary', 'mary.matthew25@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bqkrseOcWVU2AaY.yeRNfOTyRFf7ATqOOv3FuVvkUWpnQTixAdEJq', '241653de4de61bd11bba56040259774d2a9406cb0206b96f9ff8a940ddd68c77', 'Pending', '2023-07-11 18:41:03', '2023-07-11 18:41:03'),
(461, 'Adeyemi Timileyin', 'imisioluwablessing7@gmail.com', '09034350665', 'Nigeria', 'No 14 iperin street, 215', 'Lagos', 'Ora Igbomina', '23235', NULL, 'https://www.facebook.com/profile.php?id=100090163597203&mibextid=ZbWKwL', NULL, NULL, NULL, NULL, NULL, 'adafa9671ff6698f6d9e2e4a88427daa.jpg', NULL, '$2y$10$J1lELmxuFe4tqvpXimqGWuwMzJvz9ahw.rkujCR1EdlEIxRTXUIf.', '', 'Active', '2023-07-11 19:27:26', '2023-07-11 19:37:16'),
(462, 'Olayiwola owolabi', 'olayiwolaowolabi337@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$W2HScOjPbGGraOUxJ54Q0OPUvxOwuddEKaervfNbh0/yEzaaN.COi', '', 'Active', '2023-07-11 19:37:58', '2023-07-11 19:48:40'),
(463, 'Olanrewaju yomi', 'yommitelarry1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$sk7nFJ5RySls2i.fi2qiCO1g5BgRPxSd7YsTO75HxBy1HOVJAztjW', '', 'Active', '2023-07-11 21:25:14', '2023-07-11 23:07:10'),
(464, 'Sunday agi', 'klassiqfurniture4433@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$islcLtv0jTW0m05EpP0lkeF8pbnhkpAYY9S62eU8GDuvcnoTp9UHu', 'f5122d26884ad53519fafebae2c77526c130c32649d65a29752ced2587d9bc70', 'Pending', '2023-07-11 22:54:07', '2023-07-11 22:54:07'),
(465, 'Adesola Ifeoluwa', 'regnantprints@gmail.com', '09161883871', 'Nigeria', NULL, 'Ogun', 'Abeokuta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$60IJSxDdLughX69j5EpfduVHYYrBMsVVGqXpurkOBB7p8tJkFEt6K', '', 'Active', '2023-07-12 00:13:28', '2023-08-03 23:41:34'),
(466, 'Saviour emmaunel', 'otuodungs@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DVtoDzFaRLdGuYuRYcTnzOlpxGBRXpxh/U1.JohSCnE/VXxcyavOO', 'c64c9d2888aaecb0f0195faea31bf82033a3d7f0060e6e805876479f84876f4c', 'Pending', '2023-07-12 01:39:25', '2023-07-12 01:39:25'),
(467, 'Saviour emmaunel', 'saviourotuodung123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$V3WHW.JNEac/fXCy.SgbWOjoAG3cC4BJatNAD0Yj8jefcCNp/rXJi', 'b791315bae5e25275b699e55dae8ec01ae56a494fa05f82b05466436ecb7908c', 'Pending', '2023-07-12 01:42:07', '2023-07-12 01:42:07'),
(468, 'Saviour emmaunel', 'emmaunelsaviour771@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YxQr6DYjQrn004AglhyyNuf96m/dQmtG91MCoa0Lpz6X4q8WEmUui', '56b337bd8f89e36dc8db2e00c11dbc4bc5cc9ca97333e98a15b126aed14342fb', 'Pending', '2023-07-12 01:46:46', '2023-07-12 01:46:46'),
(469, 'Samuel oluwajuwon faseyi', 'samuelfaseyi0@gmail.com', '07048130975', 'Nigeria', 'Number 39 shittu street okeoniti osogbo', 'Osun state', 'Osogbo', '23021', 'TikTok @samuelfaseyi232', 'Samuel oluwajuwon faseyi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$IGdOQOLpv5jBI1Di3zXh0uzhybzO5q0AZ3j/L1bywGUo76ZqKrv92', '', 'Active', '2023-07-12 01:51:31', '2023-07-12 01:59:20'),
(470, 'Tunde Aina', 'gbainatechnicalservices@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$PuhULyPbW9coSEeOauDYbeAHVQzWe7GttNC08Hsve2DXVbdTDsljS', '', 'Active', '2023-07-12 13:38:21', '2023-07-12 13:46:23'),
(471, 'Grace', 'graceclement619@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GS7l2F9OkVhxQJ/plvXzhO2h/J4ZCvipL2SiKwzAA1g8UmpyN3gpm', '', 'Active', '2023-07-12 15:06:27', '2023-07-12 15:11:23'),
(472, 'Blessing Gabriel', 'jasminegabriel54@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TRnEI/ElSk7.H0UULPcFkeMwVVgppatRGfdFkfssk1DXQKnpbgiSW', '', 'Active', '2023-07-12 16:56:10', '2023-07-12 16:59:42'),
(473, 'Oluwaseyi Chioma Alebiosu', 'seyichioma@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zpb3rRozwVMPcB9yK8uvcu2od.zhKOOkGTWWtqxgTdC23xB.OOAX.', '', 'Active', '2023-07-12 17:09:08', '2023-07-12 18:38:26'),
(474, 'Chimeremeze Akwarandu', 'chimeremezeakwarandu145@gmail.com', '08147442592', 'Nigeria', 'Km 7 new Umuahia', 'Abia', 'Aba', 'obingwa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NjAOM8d8GqQfWRnnVYd28eIOKNPiOQZJCO7uiNnnrHSVz9W1ALL7m', '', 'Active', '2023-07-12 18:05:03', '2023-07-12 18:16:07'),
(475, 'BECKKY Joe', 'bosegold20@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$mhvrzeRvQUcMSQtSaaCUEudDU5k28uL7ojXRzHy555s9Nfc36oAZO', '', 'Active', '2023-07-12 18:22:29', '2023-07-12 18:29:07'),
(476, 'Oloyede olawale  adeshina', 'oloyedewale1970@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pw8aFwmy1lErvu.K0W6Vp.h8taknYQa6.LSACFKymd5M01sh13IQi', '', 'Active', '2023-07-12 19:14:00', '2023-07-12 19:40:57'),
(477, 'Kasali Wale', 'florencejack103@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tne/EYT8/W2d06MJnSBUyuPoM1uaemvU5uDmVvFpYq9LOF38Scami', '4c2e2e58e2a563f204985eeef90d4cc0e15d02ca3ac6eb01814f81b347faa448', 'Pending', '2023-07-12 20:29:49', '2023-07-12 20:29:49'),
(478, 'Adeleke adebayo', 'adelekepukka3310@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9RsA92tms0FwRXCje2NY2uuQOgqvzCeE1OTc0MDpjRbyx2ZXxcKii', '', 'Active', '2023-07-13 03:31:36', '2023-07-13 03:39:00'),
(479, 'Gbenga Ajala', 'ajalapassion1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$beQgb/fv.4EHsDU7jHBdCuuJT73jbZdFiHsqQEqFhAPQnwpA6fncK', '', 'Active', '2023-07-13 11:49:03', '2023-07-13 12:18:01'),
(480, 'George', 'udofiajoshua88@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$XvAcUlviRqtCR.4h9iLWqOIg8YOlo9HbmQGN8old.wNk9GyRbuO9C', 'd875ac37b9a663f45189a2941f76fc7ef77c11c35bc9f0897f3e7de55cd87e97', 'Pending', '2023-07-13 13:25:57', '2023-07-13 13:25:57'),
(481, 'Akomolafe Adegboyega Ola', 'gboyegacompany@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$RHHwqQhWWVQ.jgdXDJzeT.yKTASGrmXM95ddmhkLw6mU1xy5xQulm', '', 'Active', '2023-07-13 13:26:47', '2023-07-13 13:36:22'),
(482, 'George', 'jacksonstrom9@gmail.com', NULL, 'Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$82MhTIJeuw2oPfJVnzDeR.YURudgte7QDZjIaQekV4PK790Bhf.tS', '', 'Active', '2023-07-13 13:28:24', '2023-07-14 01:55:33'),
(483, 'jimoh lateef', 'jlateef2017@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GqUw8dGwVc5o4EVUfWr3..OaAtIM3yEUGwyw2tO48hDExvUeTjVMq', '', 'Active', '2023-07-13 13:36:02', '2023-07-13 13:42:26'),
(484, 'Olajumoke', 'mammiepearl758@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.5AdgNQpNf/kkUqMZ0w4OuOvNYuyic1WJwKLrsbVc0.mAXX4MeYdS', '', 'Active', '2023-07-13 14:03:52', '2023-07-13 14:09:28'),
(485, 'Temitope oyindamola', 'Toyindamola@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qTAhZABsFkU/0ZrYxL2wu.LuJ9gaKdfxkEi8NO0sPN2/IRXZiemTS', 'cae6be7893c1ead374bc4b1da1bccde6365123f9e0c269163419501abf5f4154', 'Pending', '2023-07-13 14:57:46', '2023-07-13 14:57:46'),
(486, 'SIMEON pundi', 'akepundi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$rZIdINsaqvTo55zzM7NYZOHHHjAQbZDRYOM3XIRuZlV0Ya35gFU7i', '2340ed492f65d4922e2c764cc0f0a981f6c2429f6a4a485609400b03ddf1c52c', 'Pending', '2023-07-13 15:25:09', '2023-07-13 15:25:09'),
(487, 'Vivian chiamaka', 'vchiamaka134@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$mwWlOjHN.jRAUEfqk2fZGOabv80Vi.Cm24UA0mxBC85hxFABdm3YC', '', 'Active', '2023-07-13 22:07:59', '2023-07-13 22:08:29'),
(488, 'Emmanuel', 'onyeaguprince@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zDJsrGdWuurYgtY4Fd33k.9NGNJ7RerHXPJK0yJ/OCL8v2y4AiYna', '766f3ffc356b1db5a1f1e3d002437e9b3405e4c0d80b3ed1207b5f5118939a4c', 'Active', '2023-07-13 22:26:00', '2023-07-14 01:24:03'),
(489, 'Cynthia oluchi odoemelam', 'odoemelamc8@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$h0QwcLZJlJmSkJIKBYg1xu5CyWo8n4PQ4eOPHxlrfTkDTGy1RhDNa', '', 'Active', '2023-07-13 22:33:14', '2023-07-13 22:40:39'),
(490, 'Healing Soul Furniture', 'healingsoulfurniture@gmail.com', '08164643438', 'Nigeria', '7a Majiyagbe road Church B/stop Ipaja Lagos', 'Lagos', 'Ipaja', '100006', NULL, 'https://www.facebook.com/abiola.loyal', NULL, NULL, 'https://instagram.com/shobayoabdul?igshid=NGExMmI2YTkyZg==', NULL, NULL, 'dcf7f6e98058c0e73e3e8419103ab012.jpg', '7f551a113954a36c88d905ec2df4ef9b.jpg', '$2y$10$dqnutPPV/ELqrTshMAjuY.0Ry/XhDbJAn0X.YRrMf7r.zpZeOdhzO', '', 'Active', '2023-07-14 01:49:21', '2023-07-17 01:53:06'),
(491, 'Skyline Print', 'skylineprint247@gmail.com', '07039359543', 'Nigeria', NULL, 'rivers', 'port harcort', '500272', NULL, 'Skyline Print', '@skyline_print', NULL, '@skylineprint', NULL, NULL, '4b1ebb001abee22f04cab70b741608ae.jpg', NULL, '$2y$10$lTWWr2mQzwwz2TuGo8qHuOVdIQP5oviW3sVa06GDBreI.W6oN4poq', '', 'Active', '2023-07-14 03:26:16', '2023-07-14 03:37:37'),
(492, 'Ariwoola Oyewole', 'ariwoolaoyewole@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$c32teQo1o0uHagWxf6JwzOQhMl9yM/xQ9FC7j3C.qdyYJVH16Eq/6', '', 'Active', '2023-07-14 06:28:01', '2023-07-14 13:03:48'),
(493, 'Adegoroye itunu', 'nkechicomfort23@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/Vle1nWcPAkffLGpbRJOcegNgh.ZC.MTmBz5mLJBr9qdqbT6v5PKe', '', 'Active', '2023-07-14 22:07:42', '2023-07-14 23:54:29'),
(494, 'Pade Blessing', 'blessingpade@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/Gjg7Bn5op6eQZ0kiPOTueiSl7so0nWAOECw3NK6qyd3gigZhlRKC', '', 'Active', '2023-07-15 14:12:02', '2023-07-15 14:16:29');
INSERT INTO `users` (`id`, `name`, `email`, `phone`, `country`, `address`, `state`, `city`, `zip`, `website`, `facebook`, `twitter`, `linkedin`, `instagram`, `pinterest`, `youtube`, `photo`, `banner`, `password`, `token`, `status`, `created_at`, `updated_at`) VALUES
(495, 'Ariyo', 'ariyo208@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9pbBdEBIDdHUuOwqqTBhg.4otb0pGLEgXS33cq66UYxbxy3C0Ulyq', '', 'Active', '2023-07-17 01:52:51', '2023-07-17 02:03:41'),
(496, 'Odeeka neebeeh Christian', 'thechriz4net@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$nAT4UddWaUu4C1ASHLJEG.47nbISkjkgkM/ixIICx558jOtMiUiqa', '', 'Active', '2023-07-17 01:55:54', '2023-07-17 02:09:46'),
(497, 'Soaga olakunle moshood', 'kunleshog79@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Q6lCGMFH5/G9DIeDBdF0PesiTHj791LPBFm7kv3BCb/SK61VuPWie', '', 'Active', '2023-07-17 01:56:47', '2023-07-17 02:02:49'),
(498, 'Zeezix Solar Consult', 'zeezixconsult@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$y86BAkfXbHNSDJPUiurgJeb.LkmrXgiJWinVWODHn7xTHASwU21F6', '', 'Active', '2023-07-17 09:05:30', '2023-07-17 09:06:10'),
(499, 'Oseni ibraheem Ajibola', 'ibraheemoseni07@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$rri5MCoU7AO0YlouKKdk6e6vq82jGJE9YV9sSV3MijTbCBOCzSYTu', '', 'Active', '2023-07-17 09:24:32', '2023-07-17 09:25:00'),
(500, 'Ukaline_IUJ global enterprises limited', 'igweukamaka654@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$B/hpPWJZCPLE6XeIWkHwZe4xFvBOMvZvATIEvYKSUYc6FjHMgPwbO', '', 'Active', '2023-07-17 11:12:48', '2023-07-17 11:35:59'),
(501, 'Ibrahim Murtala', 'mrtl_ibrahim@yahoo.com', '08036414586', 'Nigeria', 'No Z 5 Jos Road by Abeokuta Street', 'Kaduna', 'Kaduna', NULL, NULL, 'www.facebook.com/ibrahimmst', 'www.twitter.com/Murtala4', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$T.5Nzw2Xvg9lZFODPhQ1Q.M6dM6FkXLcpMKngKDPJ0jNz2WVWH2Li', '', 'Active', '2023-07-17 16:20:54', '2023-07-17 16:47:09'),
(502, 'Inaboya comfort', 'inaboyacomfort@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$XhgvPowSvYDJTaKsk.qR6ur0n/CCiXUekd.gP3j65Q0dQh0.1YBy2', 'e3ce8f5928b918ac6a8ae81cf833c0ae0c1170148bf03e49c33a01ec82983882', 'Pending', '2023-07-19 23:46:36', '2023-07-19 23:46:36'),
(503, 'Peter', 'Peteresan2012@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gShyPmZX5HO5arm0EqNKhu3LaXkCnzen4pMt.hGyI6xwPCX800qBS', '', 'Active', '2023-07-25 00:47:30', '2023-07-25 00:48:16'),
(504, 'Benard', 'decoflex21@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0dnFyw3Ap2EjJBP5xmEMKeUrVolH92O8F5.5M2Rp2VOFykaCUAOTy', 'fb93ad8f76ab7342a02362dc233889fd5d4865c5c8ee8fd200f8d21700ea84b6', 'Pending', '2023-07-25 20:17:58', '2023-07-25 20:17:58'),
(505, 'Benard', 'giftmanidada@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Q09vCQkBuA549JI1w36d.uOg7SgAEwJdw7lCkz3eb3dO/1qDeYTDC', '', 'Active', '2023-07-25 20:19:04', '2023-07-25 20:20:55'),
(506, 'Akinsanya Shittu', 'akinsanyashittu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4caAZGtQaRXW9KmA2MupV.PL5Z2YICACEFDlFvRjkLpxkbVXH0I86', '', 'Active', '2023-08-02 02:28:05', '2023-08-02 02:30:52'),
(507, 'Emmanuel', 'emmanuelmarketing536@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Vm4v9t2tSBDz3fZ0sWzzb.R2fey1Ff5//ZRoyjoF8J.p1dtEJYYrO', '', 'Active', '2023-08-04 17:46:06', '2023-08-04 17:47:00'),
(508, 'ITORO EMMANUEL PHIILIP', 'itorophilip1998@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$V56T.N.z5xgqVfgfn8jwpu7uUPCAelcbC/2kDHePGVpqXxDqAwpg6', '', 'Active', '2023-08-13 23:34:12', '2023-08-13 23:34:31'),
(509, 'Micky poly', 'Mickybrown62@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$W8dc3CIbdytuKi1TAc.7m.HzFIqXm4tfLlIr4w9Pt9QJoFZtdE5sC', '1be48ca962f470a6a1389e20b86f36b12ff31ddb6262a9c3e5c9ffd7aa3a522f', 'Active', '2023-09-18 15:02:47', '2023-09-18 17:11:44'),
(510, 'Joshua George', 'Jomecjoshuag100@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4bg3xsnA3lBngkxxc/x1z.zC6.ryCQDudP0ZV3f1fqw90Fm/EOsQa', '', 'Active', '2023-09-29 10:45:29', '2023-09-29 10:47:56'),
(511, 'Bassbi Interiors NG', 'lilusjhnbassbi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$dvnAqh2i8.SDqoJX2AHzDuflN6ZsbahK1EBqxMNnOFA.KX6QELB/C', 'cd367918d0d15c85f98152fba519ddc9fc1e7ef31f881b6b4db204a21038e5b9', 'Pending', '2023-09-30 20:44:15', '2023-09-30 20:44:15'),
(512, 'Chijioke Onwuchekwa Daniel', 'markchristian816@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$U1lTUSiQH0lLwerIiSPlCetciR8.ripF1zO.3C82zBttnEm7XN/wm', '', 'Active', '2023-10-08 14:41:16', '2023-10-08 14:41:52'),
(513, 'Ifeanyi', 'ifeanyiokafor19@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GLn/TqtPG00.pbS531ManO5fKjTOdEn0lutJ8nk6JOaof7EE27RIG', '', 'Active', '2023-10-10 02:51:12', '2023-10-10 02:51:38'),
(514, 'Ogbonna Emmanuel chikwado', 'Emmanuelchikwado08@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8w8ubYKrx/wqGqGJPj7P9OEAFh2H8V3BoZJP6YHhrip2Ydxl.56SG', 'b5d99bb15c9838f984af76a749665683027bd38b67d3a3f2c3dba4ca41cece5d', 'Pending', '2023-11-15 14:37:58', '2023-11-15 14:37:58'),
(515, 'Raphael Anthony', 'ciscomahlee@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QYnp6jBRU5HWfI23dkXtgusnr0dtjvN6fpwVmk8/FZvH7YOZiY8xS', '', 'Active', '2023-11-19 02:08:02', '2023-11-19 02:08:59'),
(516, 'usama umair', 'mianusamamianumair87@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1552c85d968aaed7981b7ae2dab836b2.jpg', NULL, '$2y$10$H4NHStt.vda1Oiv4aYhq0O88KEjof4.w4BiZiaVyJWIP1YBxgG/1S', '', 'Active', '2023-11-19 12:27:31', '2023-11-19 12:35:18'),
(517, 'Ani Daniel Chidera', 'anidanielchidera@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'https://chidanipay.com.ng', 'https://www.facebook.com/profile.php?id=100082917185596', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hIroKwG0LivAp4kn5ZQCPOzllyh7aYManIaaOixlrBlDcdQ/gRLBm', '', 'Active', '2023-11-19 14:39:56', '2023-11-19 15:29:33'),
(518, 'PRECIOUS ANI', 'mattywinky11@gmail.com', '+2348162643138', 'Nigeria', 'Agbama', 'Abia', 'Umuahia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '218b0b50125a9380bbb498bab3566a1d.png', '$2y$10$EHiPvNLLgx1QJUl4RjFlqeeT3z6NW0EakHFEqO0/lwWp9BTD.a9DW', '', 'Active', '2023-11-19 14:45:10', '2023-11-19 14:48:07'),
(519, 'Precious', 'preciousizuotunne2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$aYHEk0Olv2Ic1CbN.M53j.o6mNDFDrXI.CfG6XkwtG1t7f/OT/Tsi', '', 'Active', '2023-11-20 18:03:19', '2023-11-20 18:03:42'),
(520, 'Stephine Okafor', 'stephineokafor03@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$EqMSnnQ8C8hAg8uAtdQlLuVdgbPBLy3AmgHiR0p4DLdSUgMi3m4gy', '', 'Active', '2023-11-20 23:21:07', '2023-11-20 23:35:01');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `listing_id`, `created_at`, `updated_at`) VALUES
(4, 6, 3, '2021-07-23 05:03:13', '2021-07-23 05:03:13'),
(5, 6, 5, '2021-07-23 05:03:58', '2021-07-23 05:03:58'),
(7, 3, 8, '2021-07-23 05:06:29', '2021-07-23 05:06:29'),
(8, 3, 7, '2021-07-23 05:06:34', '2021-07-23 05:06:34'),
(9, 10, 17, '2023-01-24 01:06:59', '2023-01-24 01:06:59'),
(10, 53, 20, '2023-02-07 02:40:47', '2023-02-07 02:40:47'),
(11, 68, 30, '2023-02-15 02:40:31', '2023-02-15 02:40:31'),
(12, 111, 50, '2023-03-21 12:53:18', '2023-03-21 12:53:18'),
(13, 131, 24, '2023-03-24 23:40:45', '2023-03-24 23:40:45'),
(14, 134, 64, '2023-03-25 22:39:27', '2023-03-25 22:39:27'),
(15, 368, 149, '2023-05-19 01:22:46', '2023-05-19 01:22:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_pages`
--
ALTER TABLE `dynamic_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_admin_panel_texts`
--
ALTER TABLE `language_admin_panel_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_menu_texts`
--
ALTER TABLE `language_menu_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_notification_texts`
--
ALTER TABLE `language_notification_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_website_texts`
--
ALTER TABLE `language_website_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_additional_features`
--
ALTER TABLE `listing_additional_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_amenities`
--
ALTER TABLE `listing_amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_categories`
--
ALTER TABLE `listing_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_locations`
--
ALTER TABLE `listing_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_photos`
--
ALTER TABLE `listing_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_social_items`
--
ALTER TABLE `listing_social_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_videos`
--
ALTER TABLE `listing_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_purchases`
--
ALTER TABLE `package_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_about_items`
--
ALTER TABLE `page_about_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_blog_items`
--
ALTER TABLE `page_blog_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_contact_items`
--
ALTER TABLE `page_contact_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_faq_items`
--
ALTER TABLE `page_faq_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_home_items`
--
ALTER TABLE `page_home_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_listing_category_items`
--
ALTER TABLE `page_listing_category_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_listing_items`
--
ALTER TABLE `page_listing_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_listing_location_items`
--
ALTER TABLE `page_listing_location_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_other_items`
--
ALTER TABLE `page_other_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_pricing_items`
--
ALTER TABLE `page_pricing_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_privacy_items`
--
ALTER TABLE `page_privacy_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_refund_items`
--
ALTER TABLE `page_refund_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_term_items`
--
ALTER TABLE `page_term_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media_items`
--
ALTER TABLE `social_media_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dynamic_pages`
--
ALTER TABLE `dynamic_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `language_admin_panel_texts`
--
ALTER TABLE `language_admin_panel_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `language_menu_texts`
--
ALTER TABLE `language_menu_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `language_notification_texts`
--
ALTER TABLE `language_notification_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `language_website_texts`
--
ALTER TABLE `language_website_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `listing_additional_features`
--
ALTER TABLE `listing_additional_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `listing_amenities`
--
ALTER TABLE `listing_amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=479;

--
-- AUTO_INCREMENT for table `listing_categories`
--
ALTER TABLE `listing_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `listing_locations`
--
ALTER TABLE `listing_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `listing_photos`
--
ALTER TABLE `listing_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=675;

--
-- AUTO_INCREMENT for table `listing_social_items`
--
ALTER TABLE `listing_social_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `listing_videos`
--
ALTER TABLE `listing_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `package_purchases`
--
ALTER TABLE `package_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT for table `page_about_items`
--
ALTER TABLE `page_about_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_blog_items`
--
ALTER TABLE `page_blog_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_contact_items`
--
ALTER TABLE `page_contact_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_faq_items`
--
ALTER TABLE `page_faq_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_home_items`
--
ALTER TABLE `page_home_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_listing_category_items`
--
ALTER TABLE `page_listing_category_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_listing_items`
--
ALTER TABLE `page_listing_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_listing_location_items`
--
ALTER TABLE `page_listing_location_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_other_items`
--
ALTER TABLE `page_other_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_pricing_items`
--
ALTER TABLE `page_pricing_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_privacy_items`
--
ALTER TABLE `page_privacy_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_refund_items`
--
ALTER TABLE `page_refund_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_term_items`
--
ALTER TABLE `page_term_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `social_media_items`
--
ALTER TABLE `social_media_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
