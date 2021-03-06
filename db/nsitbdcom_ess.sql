-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 30, 2018 at 05:29 PM
-- Server version: 10.0.34-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nsitbdcom_ess`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigns`
--

CREATE TABLE `assigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_request_id` int(10) UNSIGNED NOT NULL,
  `AssignTo` int(11) NOT NULL,
  `TechnicalInput` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AssignedBy` int(11) NOT NULL,
  `AssignDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigns`
--

INSERT INTO `assigns` (`id`, `job_request_id`, `AssignTo`, `TechnicalInput`, `AssignedBy`, `AssignDate`) VALUES
(1, 1, 1, 'gdfgdfbdfbd', 2, '2018-04-19 00:00:00'),
(2, 1, 3, 'uuuuuu', 4, '2018-04-19 00:00:00'),
(4, 3, 3, 'yhty yt', 4, '2018-04-28 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `Name`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', NULL, NULL),
(2, 'LG', NULL, NULL),
(3, 'Sony', NULL, NULL),
(4, 'Siemens', NULL, NULL),
(5, 'Toshiba', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `Name`, `Phone`, `Group`, `EID`, `NID`, `created_at`, `updated_at`) VALUES
(1, 'Safi 1', '02563215', 'Admin', '011', '3256485612330', NULL, NULL),
(2, 'Munir', '65962', 'HR', '64646464', '5421511643195', NULL, NULL),
(3, 'Mr X', '98659', 'Admin', '987987', '365412365', NULL, NULL),
(4, 'Mr. y', '4562', 'Accounts', '54545454', '3642578952', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_requests`
--

CREATE TABLE `job_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `ServiceItem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RequestType` int(11) DEFAULT NULL,
  `ProblemDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Brand` int(11) DEFAULT NULL,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` text COLLATE utf8mb4_unicode_ci,
  `ExpectedDate` datetime DEFAULT NULL,
  `DeviceQty` int(11) DEFAULT NULL,
  `ProbableCompletionDate` datetime DEFAULT NULL,
  `ReqCreatedBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RequestNote` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_requests`
--

INSERT INTO `job_requests` (`id`, `ServiceItem`, `RequestType`, `ProblemDescription`, `Brand`, `Phone`, `Address`, `ExpectedDate`, `DeviceQty`, `ProbableCompletionDate`, `ReqCreatedBy`, `RequestNote`, `created_at`, `updated_at`) VALUES
(1, 'TV', 1, 'NNN', 3, NULL, NULL, '2018-04-18 07:32:20', 1, '2018-04-27 00:00:00', 'admin', 'SSSSS', NULL, NULL),
(3, 'Freeze', 1, 'gtgtgtgt', 5, NULL, NULL, '2018-04-19 00:00:00', 5, '2018-04-13 00:00:00', 'HR', 'nothings', NULL, NULL),
(4, 'TVYYYY', NULL, 'Remote not working', 2, NULL, NULL, NULL, 10, NULL, NULL, NULL, '2018-04-26 05:15:40', '2018-04-26 05:15:40'),
(5, 'Hoooo', NULL, 'miarala', 2, '0876543', 'google', NULL, 15, NULL, NULL, NULL, '2018-04-26 05:17:07', '2018-04-26 05:17:07'),
(6, 'Hoooo', NULL, 'miarala', 2, '0876543', 'google', NULL, 15, NULL, NULL, NULL, '2018-04-26 05:19:40', '2018-04-26 05:19:40'),
(7, 'Hoooo', NULL, 'miarala', 2, '0876543', 'google', NULL, 15, NULL, NULL, NULL, '2018-04-26 06:54:45', '2018-04-26 06:54:45'),
(8, 'Laptop', NULL, 'Hoye ja bhai', 2, '09098765', 'dhaka', NULL, 22, NULL, NULL, NULL, '2018-04-26 06:57:28', '2018-04-26 06:57:28'),
(9, 'Laptop', NULL, 'Hoye ja bhai', 2, '09098765', 'dhaka', NULL, 22, NULL, NULL, NULL, '2018-04-26 06:59:32', '2018-04-26 06:59:32'),
(10, 'Laptop', NULL, 'Hoye ja bhai', 2, '09098765', 'dhaka', NULL, 22, NULL, NULL, NULL, '2018-04-26 07:01:14', '2018-04-26 07:01:14'),
(11, 'Laptop', NULL, 'Hoye ja bhai', 2, '09098765', 'dhaka', NULL, 22, NULL, NULL, NULL, '2018-04-26 07:02:32', '2018-04-26 07:02:32'),
(12, 'Laptop', NULL, 'Hoye ja bhai', 2, '09098765', 'dhaka', NULL, 22, NULL, NULL, NULL, '2018-04-26 07:08:38', '2018-04-26 07:08:38'),
(13, 'Laptop', NULL, 'Hoye ja bhai', 2, '09098765', 'dhaka', NULL, 22, NULL, NULL, NULL, '2018-04-26 07:10:45', '2018-04-26 07:10:45'),
(14, 'Laptop', NULL, 'Hoye ja bhai', 2, '09098765', 'dhaka', NULL, 22, NULL, NULL, NULL, '2018-04-26 07:16:00', '2018-04-26 07:16:00'),
(15, 'Laptop', NULL, 'Hoye ja bhai', 2, '09098765', 'dhaka', NULL, 22, NULL, NULL, NULL, '2018-04-26 07:17:33', '2018-04-26 07:17:33'),
(16, 'Laptop last pcs', NULL, 'Hoye ja bhai', 2, '09098765', 'dhaka', NULL, 22, NULL, NULL, NULL, '2018-04-26 07:25:32', '2018-04-26 07:25:32'),
(17, 'Laptop last pcs', NULL, 'Hoye ja bhai', 2, '09098765', 'dhaka', NULL, 22, NULL, NULL, NULL, '2018-04-26 17:04:52', '2018-04-26 17:04:52'),
(18, 'Laptop last pcs', NULL, 'Hoye ja bhai', 2, '09098765', 'dhaka', NULL, 22, NULL, NULL, NULL, '2018-04-30 11:08:09', '2018-04-30 11:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_04_02_130535_create_request_statuses_table', 1),
(6, '2018_04_21_101600_create_employees_table', 1),
(10, '2016_06_01_000001_create_oauth_auth_codes_table', 5),
(11, '2016_06_01_000002_create_oauth_access_tokens_table', 5),
(12, '2016_06_01_000003_create_oauth_refresh_tokens_table', 5),
(13, '2016_06_01_000004_create_oauth_clients_table', 5),
(14, '2016_06_01_000005_create_oauth_personal_access_clients_table', 5),
(19, '2018_04_26_062308_create_brands_table', 8),
(20, '2018_04_22_230908_create_job_requests_table', 9),
(21, '2018_04_21_100351_create_assigns_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('14a7b64fbff3011a5cac16a99b1f530a37ceecf51300ddcbc6415e37a70c6f3ebf2e1efa0288ae44', 1, 2, NULL, '[]', 0, '2018-04-26 16:54:33', '2018-04-26 16:54:33', '2019-04-26 22:54:33'),
('2167cde61e22f6e7a42e18689317f9166b5ef0a4665b23fa4dd267f07f62274941474a7a69986d64', 1, 2, NULL, '[]', 0, '2018-04-30 09:09:13', '2018-04-30 09:09:13', '2019-04-30 15:09:13'),
('6a4d9e6661802043bca9b35ad8eb5e0ca5f290c34b3c0543a529420561c9914cb3ca4d17e887008e', 1, 2, NULL, '[]', 0, '2018-04-25 00:15:22', '2018-04-25 00:15:22', '2019-04-25 06:15:22'),
('72c19d5f6e15b7b3dcd8663bba446263947cae97200c146093dfdd7efa228cf452465ccc84d4c58d', 1, 2, NULL, '[]', 0, '2018-04-26 16:53:03', '2018-04-26 16:53:03', '2019-04-26 22:53:03'),
('73495213d5f2f5f92cdac899cd2164cc1d6d7861ef88ec85f315e26ab854600a2c4c43f066dd0e99', 1, 2, NULL, '[]', 0, '2018-04-26 16:58:48', '2018-04-26 16:58:48', '2019-04-26 22:58:48'),
('894486f5f8a1bc8a4e3755be529171f462bf9c6024af3119e83abf156c8905512515e0dab83a2257', 1, 2, NULL, '[]', 0, '2018-04-26 06:58:38', '2018-04-26 06:58:38', '2019-04-26 12:58:38'),
('9df4ae9ec4fbc60202787696c22c91d06d76e727938da4f040827148990d423adf0428537471ce83', 1, 2, NULL, '[]', 0, '2018-04-30 07:20:26', '2018-04-30 07:20:26', '2019-04-30 13:20:26'),
('ad72a4a9f192ad77a6a4fb6fd1258660cd97cf7c75c74369e11930f2ef55ea83c5330076888b89f7', 1, 2, NULL, '[]', 0, '2018-04-26 16:59:37', '2018-04-26 16:59:37', '2019-04-26 22:59:37'),
('ad7b1bd7864f50326c27e5bc2a4b9493df9c5df8f64e82fc016dce158561a9027e16fc262578645e', 1, 2, NULL, '[]', 0, '2018-04-25 00:22:20', '2018-04-25 00:22:20', '2019-04-25 06:22:20'),
('b113e12487dc455758a198f2211f532538f0f131a5361faee48e0e0aba3dd9d56907e5ee07355ff5', 1, 2, NULL, '[]', 0, '2018-04-26 16:57:02', '2018-04-26 16:57:02', '2019-04-26 22:57:02'),
('b2d8472a9220b9c727d8ec705995bba38dd86e5ce7954d1ce83e9f9dca09afefaf2663c2272ec9ec', 1, 2, NULL, '[]', 0, '2018-04-26 00:19:03', '2018-04-26 00:19:03', '2019-04-26 06:19:03'),
('c6f4f835523d3a6c885e1609d2097b88f07bccbc503583849c53c0b69549f712328817fd3c5e31e7', 1, 2, NULL, '[\"*\"]', 0, '2018-04-30 09:54:13', '2018-04-30 09:54:13', '2019-04-30 15:54:13'),
('d7d8bd282e7a26a39480cf6ab1bc2e61a208d81e55ee10be193dae62945ca129e22b37042a335219', 1, 2, NULL, '[]', 0, '2018-04-25 00:18:13', '2018-04-25 00:18:13', '2019-04-25 06:18:13'),
('d8215c190873f6fe54c6dd1146aa1412861d75bf6a7038a35c4dbdb3452a901718adddee3a8959aa', 1, 2, NULL, '[]', 0, '2018-04-30 09:49:07', '2018-04-30 09:49:07', '2019-04-30 15:49:07'),
('dfef1da2649bfa9f85e0a0f5e1b3b956716236b81d8c0b526ef9d427fbab39797007fda42f3589bc', 1, 2, NULL, '[]', 0, '2018-04-30 11:08:06', '2018-04-30 11:08:06', '2019-04-30 17:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'XPwihTx1mrKVKH1mwvFSgGS7zkBdCP7oRHEKoinv', 'http://localhost', 1, 0, 0, '2018-04-24 23:57:09', '2018-04-24 23:57:09'),
(2, 1, 'Laravel Password Grant Client', 'tHCzyYG6Iv67kVW4mJObOWuKCO0KqfhxzFYEe5DC', 'http://localhost', 0, 1, 0, '2018-04-24 23:57:09', '2018-04-24 23:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-04-24 23:57:09', '2018-04-24 23:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('2de447dd908d84250298298631ce4be9ee12453d0b92dca9df231f2e0bcea4af94e675355a20785d', 'd7d8bd282e7a26a39480cf6ab1bc2e61a208d81e55ee10be193dae62945ca129e22b37042a335219', 0, '2019-04-25 06:18:14'),
('422628bc8f89eb8e3e86b52a629387dc7e5c893b35ea44fc3c845e6166c12d950cb2247d812a84d8', '9df4ae9ec4fbc60202787696c22c91d06d76e727938da4f040827148990d423adf0428537471ce83', 0, '2019-04-30 13:20:26'),
('45a5a1d12dc013d2923a0b3faa5c6ca041a3df1b2fda8c66583e0eeb998beea0f2375a8c0481a2d4', '2167cde61e22f6e7a42e18689317f9166b5ef0a4665b23fa4dd267f07f62274941474a7a69986d64', 0, '2019-04-30 15:09:13'),
('4b5739782cc5408ab6015fe604a7e78c53d9391e1933a4e46a2df9b168dda278ea5e37e765aec962', 'd8215c190873f6fe54c6dd1146aa1412861d75bf6a7038a35c4dbdb3452a901718adddee3a8959aa', 0, '2019-04-30 15:49:07'),
('502b30369f1839f6a7388c659a5e6ab1b6997a26c2f185bb9e8258e708f7aba170393ffb7bfb5b34', '894486f5f8a1bc8a4e3755be529171f462bf9c6024af3119e83abf156c8905512515e0dab83a2257', 0, '2019-04-26 12:58:38'),
('59e31e3288b4e1c8ed489342dcd28a4041bd4e134b3178315adafd0cb624779e0165919c359b9411', 'b2d8472a9220b9c727d8ec705995bba38dd86e5ce7954d1ce83e9f9dca09afefaf2663c2272ec9ec', 0, '2019-04-26 06:19:03'),
('747c9d5a184ef5e492d0b1ee18ed157631650e00d30e4e68edbb8639eba4ea12fc22bd645a9f81d6', '14a7b64fbff3011a5cac16a99b1f530a37ceecf51300ddcbc6415e37a70c6f3ebf2e1efa0288ae44', 0, '2019-04-26 22:54:33'),
('8439b54dd2e65333edb88bdaf41738f5c242c23e5f23a705d1c1a10492ed08feb5332a8f4d943635', '73495213d5f2f5f92cdac899cd2164cc1d6d7861ef88ec85f315e26ab854600a2c4c43f066dd0e99', 0, '2019-04-26 22:58:48'),
('a38905cd891f4e0ef44b08ed028f3afdbc52d8dec9d3e86211a4007c86c61d933b42927313f01a1e', 'c6f4f835523d3a6c885e1609d2097b88f07bccbc503583849c53c0b69549f712328817fd3c5e31e7', 0, '2019-04-30 15:54:13'),
('a59d86ff06c15a39ccbe19b7cc24a005ae593bb423e517d99bb3788c0e4aa57ad14bc87b210d05db', 'dfef1da2649bfa9f85e0a0f5e1b3b956716236b81d8c0b526ef9d427fbab39797007fda42f3589bc', 0, '2019-04-30 17:08:06'),
('b1c12eaef8070b335c3b5e2e7c9050cbed297ae9858446f5280bcd997163b98e74f93de683278a35', '6a4d9e6661802043bca9b35ad8eb5e0ca5f290c34b3c0543a529420561c9914cb3ca4d17e887008e', 0, '2019-04-25 06:15:22'),
('b3b5ff52d02599c42392f532a6316b806357bd285ba30022ea3ab920b9a91698f56fbdc057814700', 'ad7b1bd7864f50326c27e5bc2a4b9493df9c5df8f64e82fc016dce158561a9027e16fc262578645e', 0, '2019-04-25 06:22:21'),
('c215db20bab0cfc23486189c21e1cf04caf086d520d60d30d497d2aac651e5e7ad9e1243d67eeac6', 'ad72a4a9f192ad77a6a4fb6fd1258660cd97cf7c75c74369e11930f2ef55ea83c5330076888b89f7', 0, '2019-04-26 22:59:37'),
('e17ce8d1871b89ded35418548200a032c021c88b7af5e1b392ef3e796b4d625a080d5dbc21eb6502', '72c19d5f6e15b7b3dcd8663bba446263947cae97200c146093dfdd7efa228cf452465ccc84d4c58d', 0, '2019-04-26 22:53:03'),
('f6096cf5bcecd148cbff232e651b853cfab18eb79bd9189cda4d0fda7dae0d341e2f947e58f4479d', 'b113e12487dc455758a198f2211f532538f0f131a5361faee48e0e0aba3dd9d56907e5ee07355ff5', 0, '2019-04-26 22:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_statuses`
--

CREATE TABLE `request_statuses` (
  `ID` int(10) UNSIGNED NOT NULL,
  `AssignID` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `Remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_statuses`
--

INSERT INTO `request_statuses` (`ID`, `AssignID`, `Status`, `Remarks`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'dvsds', NULL, NULL),
(2, 2, 3, 'vsdsdvsd', NULL, NULL),
(3, 3, 1, 'hhhhhh', '2018-04-25 18:00:00', '2018-04-29 18:00:00'),
(4, 4, 2, 'kokoko', '2018-04-16 18:00:00', '2018-04-25 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shofin', 'shofin.cse@gmail.com', '$2y$10$f4z3rT6cm.YtNTXHB7tF8efchfk.iazhfjLDI4rN9mMki0CMY1KS2', '5RoSTCttbaQaY9It7RMUTbXxn1pRYbkk316Hg5Z0RWSsG5mtsjMyq7ET1ABm', '2018-04-21 08:00:26', '2018-04-21 08:00:26'),
(2, 'safiul', 'safi.cse13@gmail.com', '$2y$10$iatCgXpZzk4uB0Nuk5Y7Me2dmjktmpg0/OaxXG6Nm31eKGDssazU6', 'F8KsgytoVjuUhw1x2szHblZeV8V5elvEzMF4p0VYdX480bcd1OvYl0QB3b0l', '2018-04-29 08:04:09', '2018-04-29 08:04:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigns`
--
ALTER TABLE `assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigns_job_request_id_index` (`job_request_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_requests`
--
ALTER TABLE `job_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `request_statuses`
--
ALTER TABLE `request_statuses`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigns`
--
ALTER TABLE `assigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_requests`
--
ALTER TABLE `job_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `request_statuses`
--
ALTER TABLE `request_statuses`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigns`
--
ALTER TABLE `assigns`
  ADD CONSTRAINT `assigns_job_request_id_foreign` FOREIGN KEY (`job_request_id`) REFERENCES `job_requests` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
