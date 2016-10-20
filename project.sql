-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14-Jul-2016 às 19:43
-- Versão do servidor: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `responsible` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `obs` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `clients`
--

INSERT INTO `clients` (`id`, `name`, `responsible`, `email`, `phone`, `address`, `obs`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Paul Legrossas', 'Orin Flatley Sr.s', 'Kunde.Colby@gmail.com', '1-405-412-7712x352', '225 Hettinger Ford\nNorth Chasity, WI 62380-0241', 'Ratione nesciunt quidem et voluptatem.', '2016-05-03 00:12:49', '2016-06-28 22:13:26'),
(2, 'Miss Naomi Harvey', 'Ms. Dora Monahan', 'Huels.Jovanny@yahoo.com', '(056)221-2088x734', '6456 Jennifer Rue Apt. 438\nPort Emanuel, AR 69284', 'Molestiae consequatur est voluptas sapiente recusandae molestias.', '2016-05-03 00:12:49', '2016-05-03 00:12:49'),
(3, 'Mrs. Myrtice Pollich Vs', 'Caleigh McCullough', 'Cecelia06@OHara.com', '(912)895-0085', '8043 Evie Cliffs\nEast Kanemouth, MD 43573-5243', 'Ea quod aperiam voluptatibus culpa nisi non eveniet.', '2016-05-03 00:12:49', '2016-06-10 00:22:56'),
(4, 'Osvaldo Hagenes DVM', 'Ardith Lehner', 'Leannon.Wilma@Robel.com', '1-706-726-0384x4842', '053 Julia Prairie Apt. 408\nPort Adele, PA 45442', 'Culpa eaque officia sed aut ut.', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(5, 'Christy Mertz', 'Gonzalo Shields V', 'Silas81@Gulgowski.com', '121-688-6898', '29192 Abbott Squares\nVandervortville, CO 51930', 'Quasi qui ad et consequatur enim nihil.', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(6, 'Kobe Orn', 'Prof. Jacinto Quitzon', 'tJacobi@yahoo.com', '05460056658', '618 Breitenberg Bypass Apt. 704\nLake Camronbury, NV 76675', 'Voluptatum nihil sit enim occaecati non.', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(7, 'Orpha Pouros', 'Laurence Okuneva', 'Nat.Reichel@hotmail.com', '(941)082-6660', '3364 Yundt Crest Apt. 502\nWest Glenda, VT 95529', 'Voluptatem voluptas asperiores tempore laudantium numquam aut.', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(8, 'Loyce Block', 'Monroe Anderson', 'wDietrich@gmail.com', '126.142.9857', '6728 Davis Square Apt. 788\nPort Madysonview, PA 28704-9192', 'Ut blanditiis temporibus qui.', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(9, 'Mr. Brendon Kuphal II', 'Furman Oberbrunner', 'Joanny.Lakin@Kshlerin.biz', '459.077.9433x10867', '085 Dooley Mews\nNorth Caramouth, LA 83745', 'Dolorem non sed sed nobis est voluptatibus blanditiis.', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(10, 'Phoebe Kuhic', 'Dolores Barton', 'yLebsack@Fritsch.net', '1-572-810-0658x709', '945 O''Conner Ports\nLindsaytown, DC 59789', 'Magnam tenetur beatae voluptate soluta dolorem.', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(12, 'aaa', 'aa', 'contato@agencias3.com.br', '5130123222', 'Rua Alberto Pasqualini', 'sssssssss', '2016-06-09 01:46:18', '2016-07-13 20:08:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_04_25_220233_create_clients_table', 1),
('2016_05_02_202126_create_project_tables', 1),
('2016_05_02_205528_create_project_notes_table', 1),
('2014_04_24_110151_create_oauth_scopes_table', 2),
('2014_04_24_110304_create_oauth_grants_table', 2),
('2014_04_24_110403_create_oauth_grant_scopes_table', 2),
('2014_04_24_110459_create_oauth_clients_table', 2),
('2014_04_24_110557_create_oauth_client_endpoints_table', 2),
('2014_04_24_110705_create_oauth_client_scopes_table', 2),
('2014_04_24_110817_create_oauth_client_grants_table', 2),
('2014_04_24_111002_create_oauth_sessions_table', 2),
('2014_04_24_111109_create_oauth_session_scopes_table', 2),
('2014_04_24_111254_create_oauth_auth_codes_table', 2),
('2014_04_24_111403_create_oauth_auth_code_scopes_table', 2),
('2014_04_24_111518_create_oauth_access_tokens_table', 2),
('2014_04_24_111657_create_oauth_access_token_scopes_table', 2),
('2014_04_24_111810_create_oauth_refresh_tokens_table', 2),
('2016_05_09_212745_create_table_project_member', 3),
('2016_05_16_153658_create_table_project_files', 4),
('2016_05_16_162750_add_project_id_ind_project_files', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `expire_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `session_id`, `expire_time`, `created_at`, `updated_at`) VALUES
('0Bg0oosk9VgLTU5MFIViEoYOPMkmQopuBkw6HD9H', 47, 1467847857, '2016-07-07 01:30:58', '2016-07-07 01:30:58'),
('1HBFaCEE4BFqOMItMNatR3kzEN7U1gKk60VoTS4p', 39, 1467844492, '2016-07-07 00:34:52', '2016-07-07 00:34:52'),
('22IqBoXcW0rjm7YSUbtNnt6qRBPhm93b2HQRqQc1', 10, 1465426194, '2016-06-09 00:49:54', '2016-06-09 00:49:54'),
('26xrRp8vmHkM2dcsT3ksrgOOlycqR8cAIOhnJRku', 48, 1468013522, '2016-07-08 23:32:02', '2016-07-08 23:32:02'),
('3pauR0sDpnnqCYXKjzkOOIUA2ZumNYHmK8faYEpn', 42, 1467844864, '2016-07-07 00:41:04', '2016-07-07 00:41:04'),
('4U6YhIId9JKpT0aTtE5GMikrgiirwWA3cRA6f8b2', 33, 1467844085, '2016-07-07 00:28:05', '2016-07-07 00:28:05'),
('6LWwxcLQIoILFb5CuOtdIvx0Oc4WTp7AqVueWC67', 17, 1467135091, '2016-06-28 19:31:31', '2016-06-28 19:31:31'),
('8ud9s3m8fz4fgQyDnvlE6oagpHpRxTTL0Jbbaido', 1, 1462482421, '2016-05-05 23:07:01', '2016-05-05 23:07:01'),
('bXrfQ7L3nX9bVqesqP6uEAOuvG8pJGkt6Jm3dcNc', 7, 1463417616, '2016-05-16 18:53:37', '2016-05-16 18:53:37'),
('C4D5qd9p3LaMmoNGBc6FE5lPlUUwOIzubpvGGXm9', 19, 1467142759, '2016-06-28 21:39:19', '2016-06-28 21:39:19'),
('D8tFrzDgQe9RCJo4xQPu35J3ka2hLdcVx1rjwslt', 41, 1467844794, '2016-07-07 00:39:54', '2016-07-07 00:39:54'),
('dJL3XZL0AwaFbzGsGkfR5NPN60v3NW3k5m2Iyvoi', 43, 1467844927, '2016-07-07 00:42:07', '2016-07-07 00:42:07'),
('E5NgLS0FPutXe7NMnYVe5A4TgC8A3ynViaLUdDRl', 40, 1467844731, '2016-07-07 00:38:51', '2016-07-07 00:38:51'),
('e6gXz5baxalKXcitdOUIyVYa9yY9Lf5kV37IfGXM', 52, 1468429424, '2016-07-13 19:03:44', '2016-07-13 19:03:44'),
('F7KqYajkz6dsgsaubDLQWn3zwdNorlM60X7thS9C', 4, 1462485135, '2016-05-05 23:52:15', '2016-05-05 23:52:15'),
('FH7iahNwkVblRFss1fmDBgVMBGy2eR3ZqXJ4Q8g8', 24, 1467149975, '2016-06-28 23:39:35', '2016-06-28 23:39:35'),
('gDOgyGyb8JLahCuJ7fDrAqTr5E5IhAjlgwNOADRM', 53, 1468430749, '2016-07-13 19:25:49', '2016-07-13 19:25:49'),
('GIiTisqrKQQsUHQspYhbLUslaNx2p2WLSoEXLUmG', 21, 1467147121, '2016-06-28 22:52:01', '2016-06-28 22:52:01'),
('gPUBXAvrzBnB4NkiRXhEQQeUzroLc4dOgrKxVRNS', 30, 1467151136, '2016-06-28 23:58:56', '2016-06-28 23:58:56'),
('gvabXWFYiV87tIhkUuqBq219TgqFeXWMTPFbs0DT', 34, 1467844101, '2016-07-07 00:28:21', '2016-07-07 00:28:21'),
('hbdeyNMHvgv2u8U5Hyox5QGxZ3DpcgLjAr8Fdjyb', 38, 1467844400, '2016-07-07 00:33:20', '2016-07-07 00:33:20'),
('Hjday9CKfI9HtIsm4vO97IbQUIMuMwe4lSCuilv5', 2, 1462483003, '2016-05-05 23:16:43', '2016-05-05 23:16:43'),
('ILK2tvKpuhbGmfh6ZhsO4OTfEsrT4Sktsjj953H5', 23, 1467149581, '2016-06-28 23:33:01', '2016-06-28 23:33:01'),
('iPSqm5W8kbhF2x4kxZvMtWJuxlG9h1fXbzGRy67C', 31, 1467844076, '2016-07-07 00:27:56', '2016-07-07 00:27:56'),
('IyqdfUinZwS9UGqGpWYOUoHZlsS7udNg74l863EO', 25, 1467150048, '2016-06-28 23:40:48', '2016-06-28 23:40:48'),
('jdBZSD4R6xMD9TnNwVBv6JcWEJok4PN6TcFaQR8R', 18, 1467136796, '2016-06-28 19:59:56', '2016-06-28 19:59:56'),
('JRgMZJJGwqCAClGirC5Sq7mg7hZDwEjvSM7pZB2O', 28, 1467150593, '2016-06-28 23:49:53', '2016-06-28 23:49:53'),
('kerW9VxQI4azGCN6z2ur1W4TQuuYxTONwcaipZTG', 13, 1465429159, '2016-06-09 01:39:19', '2016-06-09 01:39:19'),
('kf3UPfVIWJ43W5F0ghcJe61rC9RVmEVevJT1K05l', 9, 1465426014, '2016-06-09 00:46:54', '2016-06-09 00:46:54'),
('MHUdJlhR6ut17cUSuIOvi8iwCqIBPaeJVkFP5vgo', 37, 1467844376, '2016-07-07 00:32:56', '2016-07-07 00:32:56'),
('MRnmtzmpnSqKKRxSeuJhJKoVDepN3cRWvnAGa6k6', 50, 1468426544, '2016-07-13 18:15:45', '2016-07-13 18:15:45'),
('NeG7del60PjrTiAmuHWEakhIDaqAtMWR3GLyFARS', 32, 1467844076, '2016-07-07 00:27:56', '2016-07-07 00:27:56'),
('Np9QlTHUiVIhl8yJjSPcdV6faKmfVNsjhnQzpMYq', 46, 1467845640, '2016-07-07 00:54:00', '2016-07-07 00:54:00'),
('o8lxix0NztrgPNFxYhjvAQSc0DtVndpT8MMRaqKU', 20, 1467144699, '2016-06-28 22:11:39', '2016-06-28 22:11:39'),
('OmqUsFBUMzLUzCZGLolcd8dlDoT7SIG07tB44A1I', 45, 1467845640, '2016-07-07 00:54:00', '2016-07-07 00:54:00'),
('OrPsVDW8Xo64cl3C8vifZIpJiI90HZ45Z5cIReFU', 44, 1467844999, '2016-07-07 00:43:19', '2016-07-07 00:43:19'),
('oVpFZUjhiYzFxUti91Dfeu27Hw83Ix99xuxYOus6', 16, 1467131244, '2016-06-28 18:27:24', '2016-06-28 18:27:24'),
('p3s5DAUonYKk1Z1bsyXKrLI3SN0fUA6h4F3zGvJ0', 14, 1465510409, '2016-06-10 00:13:29', '2016-06-10 00:13:29'),
('QqH2seA0xIrpxL63fpe3H1dd740NimnV8JUMKGUK', 12, 1465428736, '2016-06-09 01:32:16', '2016-06-09 01:32:16'),
('rby3nWN4DsfacLG1UzbsdGWZCg23VkGCG6n70hTa', 15, 1465514869, '2016-06-10 01:27:49', '2016-06-10 01:27:49'),
('rGEVThEBgSKPABWjpQzMT2XPpLbhMVYYbx3DncT1', 22, 1467149534, '2016-06-28 23:32:14', '2016-06-28 23:32:14'),
('rkwvXsqm5Tnh5l5xxdsrxCw1zdc4P3pf9YTF4Llt', 3, 1462484271, '2016-05-05 23:37:52', '2016-05-05 23:37:52'),
('RPtA8KVFBg1lAJhDe343ViZ8yRTHM9S9v6jAtfwF', 5, 1462832453, '2016-05-10 00:20:53', '2016-05-10 00:20:53'),
('S2YZvDnZwuyfsB7Plyvl6qMuojUHIgl9QFNiOU4x', 55, 1468520989, '2016-07-14 20:29:49', '2016-07-14 20:29:49'),
('TbSwfYCGvmyA4HvJr51cfWa6FHaCfxRsrwJ4xgE4', 51, 1468426544, '2016-07-13 18:15:45', '2016-07-13 18:15:45'),
('UKvbCuAbyvO9YqdAg00PiGZJuHEcItN1VxQwEIIN', 26, 1467150273, '2016-06-28 23:44:33', '2016-06-28 23:44:33'),
('VccTF8cHlIleZb9HLQmXnhClHQS0L06UMg0fyKob', 8, 1465425628, '2016-06-09 00:40:28', '2016-06-09 00:40:28'),
('VDyTFCPGZs32VTx27UEfTihk1pK7BEP9jFUENxjK', 36, 1467844207, '2016-07-07 00:30:07', '2016-07-07 00:30:07'),
('vEikamuS8YJgqzrqNH8Govr9mezsP0BJzV8ryxaA', 35, 1467844183, '2016-07-07 00:29:43', '2016-07-07 00:29:43'),
('vnVfF3DFW2djBMLAkSt6y3KM47uYXRvBRzdydogI', 27, 1467150397, '2016-06-28 23:46:37', '2016-06-28 23:46:37'),
('xdYLZWGRDu8zIYKjSYMaz6ujFK75GF1XBSpV0BiY', 49, 1468013523, '2016-07-08 23:32:03', '2016-07-08 23:32:03'),
('XhKNeB3DpINXfz31ZisBCaTcYoMrEiwku3Oxha22', 54, 1468512967, '2016-07-14 18:16:07', '2016-07-14 18:16:07'),
('z2Be8bIzsNfzkquv5vGwOTegIFGmyjgsfF9EhTW7', 11, 1465426997, '2016-06-09 01:03:17', '2016-06-09 01:03:17'),
('zBtsxyTWtQ9dNdeEV44zBfHcB7HIOxks1arhVUCs', 29, 1467150746, '2016-06-28 23:52:26', '2016-06-28 23:52:26'),
('ZezSE6gQcj2PJPntCnXERVHZjZFNCU6MBsj2hVCx', 6, 1462836760, '2016-05-10 01:32:40', '2016-05-10 01:32:40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_access_token_scopes`
--

CREATE TABLE `oauth_access_token_scopes` (
  `id` int(10) UNSIGNED NOT NULL,
  `access_token_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `redirect_uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expire_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_auth_code_scopes`
--

CREATE TABLE `oauth_auth_code_scopes` (
  `id` int(10) UNSIGNED NOT NULL,
  `auth_code_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `secret`, `name`, `created_at`, `updated_at`) VALUES
('appid1', 'secret', 'angular-app', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_client_endpoints`
--

CREATE TABLE `oauth_client_endpoints` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_client_grants`
--

CREATE TABLE `oauth_client_grants` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `grant_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_client_scopes`
--

CREATE TABLE `oauth_client_scopes` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_grants`
--

CREATE TABLE `oauth_grants` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_grant_scopes`
--

CREATE TABLE `oauth_grant_scopes` (
  `id` int(10) UNSIGNED NOT NULL,
  `grant_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `expire_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `expire_time`, `created_at`, `updated_at`) VALUES
('LmBfl9eGpFC2p0k5GM7Qllf9RdPQp2slwrbKkVAt', '0Bg0oosk9VgLTU5MFIViEoYOPMkmQopuBkw6HD9H', 1467880257, '2016-07-07 01:30:58', '2016-07-07 01:30:58'),
('2ZBCMpHgN8fZQkaANTblM5hN3EqyiNXjJL9Wrwsl', '1HBFaCEE4BFqOMItMNatR3kzEN7U1gKk60VoTS4p', 1467876892, '2016-07-07 00:34:52', '2016-07-07 00:34:52'),
('WKppm77OVN3OVaezAFcOLwmNRLM0FWTfub9gOFiX', '22IqBoXcW0rjm7YSUbtNnt6qRBPhm93b2HQRqQc1', 1465458594, '2016-06-09 00:49:54', '2016-06-09 00:49:54'),
('3X6zfczlGKuROF5aE0KGgJMbZ7SQ27x51YhOp4FT', '26xrRp8vmHkM2dcsT3ksrgOOlycqR8cAIOhnJRku', 1468045922, '2016-07-08 23:32:03', '2016-07-08 23:32:03'),
('EwpR737R5d5UshatGsFILFlhRUKvJDW1aFxSg09E', '3pauR0sDpnnqCYXKjzkOOIUA2ZumNYHmK8faYEpn', 1467877264, '2016-07-07 00:41:04', '2016-07-07 00:41:04'),
('FN2QWrD1rvXFbv5t2TbzfXFntwdB09a2teGLLrwS', '4U6YhIId9JKpT0aTtE5GMikrgiirwWA3cRA6f8b2', 1467876485, '2016-07-07 00:28:05', '2016-07-07 00:28:05'),
('0ukmiJCYp3C5PWY9XqceuDxpDjeyILGlnjuIatfS', '6LWwxcLQIoILFb5CuOtdIvx0Oc4WTp7AqVueWC67', 1467167491, '2016-06-28 19:31:31', '2016-06-28 19:31:31'),
('HcnlRLVj0C58B43eIM6PBD7CkVMjuyNKUi9rsFrz', 'bXrfQ7L3nX9bVqesqP6uEAOuvG8pJGkt6Jm3dcNc', 1463450016, '2016-05-16 18:53:37', '2016-05-16 18:53:37'),
('mgZAUXaDjXbvszDG70q4bs2ksZffmyZjoKKe9xUv', 'C4D5qd9p3LaMmoNGBc6FE5lPlUUwOIzubpvGGXm9', 1467175159, '2016-06-28 21:39:19', '2016-06-28 21:39:19'),
('zNKmchcQ0dmc14GFxyYNU55HG4h8zGKk0Bp4jBgK', 'D8tFrzDgQe9RCJo4xQPu35J3ka2hLdcVx1rjwslt', 1467877194, '2016-07-07 00:39:54', '2016-07-07 00:39:54'),
('Y05IAudwlU9vwIJdzbXQ6XNLnaFBAvupeq4mW1cY', 'dJL3XZL0AwaFbzGsGkfR5NPN60v3NW3k5m2Iyvoi', 1467877327, '2016-07-07 00:42:07', '2016-07-07 00:42:07'),
('cBJUlvINjMeqXhtSFqwXM9vfs24chSk2wZo0uycw', 'E5NgLS0FPutXe7NMnYVe5A4TgC8A3ynViaLUdDRl', 1467877131, '2016-07-07 00:38:51', '2016-07-07 00:38:51'),
('nTgIc1u2nFqVLBWkVXvNVLQKJuYwlnNYGT0dqoeb', 'e6gXz5baxalKXcitdOUIyVYa9yY9Lf5kV37IfGXM', 1468461824, '2016-07-13 19:03:44', '2016-07-13 19:03:44'),
('KszVOkhrifDNX6ZEAB16dA2QKEOeLsyzKuE8qLKJ', 'F7KqYajkz6dsgsaubDLQWn3zwdNorlM60X7thS9C', 1462517535, '2016-05-05 23:52:15', '2016-05-05 23:52:15'),
('reiIB8Tl80sZxG25AuMeFYz2y190N2ZR0NaEtVEh', 'FH7iahNwkVblRFss1fmDBgVMBGy2eR3ZqXJ4Q8g8', 1467182375, '2016-06-28 23:39:35', '2016-06-28 23:39:35'),
('XDoNdFkPdyFuMz8n0YbqT1sjXwXXBUXtLRaP2lLC', 'gDOgyGyb8JLahCuJ7fDrAqTr5E5IhAjlgwNOADRM', 1468463149, '2016-07-13 19:25:49', '2016-07-13 19:25:49'),
('rpV63JbZsyPGFN7Ny9N3b2QPbzR6rhH3NrFnyAmT', 'GIiTisqrKQQsUHQspYhbLUslaNx2p2WLSoEXLUmG', 1467179521, '2016-06-28 22:52:01', '2016-06-28 22:52:01'),
('qpQJiok9nj7VS8GS7KuVw1AFmn2Uqsp1TH2Iw5vx', 'gPUBXAvrzBnB4NkiRXhEQQeUzroLc4dOgrKxVRNS', 1467183536, '2016-06-28 23:58:56', '2016-06-28 23:58:56'),
('RWDzGn4nQ2ZiKdfhKJMZ65QuFTmks4sPPcj2wQ91', 'gvabXWFYiV87tIhkUuqBq219TgqFeXWMTPFbs0DT', 1467876501, '2016-07-07 00:28:21', '2016-07-07 00:28:21'),
('vDH2o4kmKRpgIvGbjoy0GlNwfUkPdqdgJfsyZubw', 'hbdeyNMHvgv2u8U5Hyox5QGxZ3DpcgLjAr8Fdjyb', 1467876800, '2016-07-07 00:33:20', '2016-07-07 00:33:20'),
('ZVZyG9qzeq0azVaGxudsXPpjDRWybARpa1Af530K', 'Hjday9CKfI9HtIsm4vO97IbQUIMuMwe4lSCuilv5', 1462515403, '2016-05-05 23:16:43', '2016-05-05 23:16:43'),
('z5AwpBPLwEdHF4kq16Ms15sgfrk1OTAjgcRvLEqi', 'ILK2tvKpuhbGmfh6ZhsO4OTfEsrT4Sktsjj953H5', 1467181981, '2016-06-28 23:33:01', '2016-06-28 23:33:01'),
('LjCwU686WODZYuLlUdxeCNFWl2Hz1pqdE0OCERyi', 'iPSqm5W8kbhF2x4kxZvMtWJuxlG9h1fXbzGRy67C', 1467876476, '2016-07-07 00:27:56', '2016-07-07 00:27:56'),
('jtgCRXmYZhxwAgVRhDpPBtKv6OpLoI9wF8gvX1Ey', 'IyqdfUinZwS9UGqGpWYOUoHZlsS7udNg74l863EO', 1467182448, '2016-06-28 23:40:48', '2016-06-28 23:40:48'),
('wqXk3L8zZe0D4eAHGKRojsGJZVT9GpVn8nXOd4Sn', 'jdBZSD4R6xMD9TnNwVBv6JcWEJok4PN6TcFaQR8R', 1467169196, '2016-06-28 19:59:56', '2016-06-28 19:59:56'),
('hVuUGekCiYC5i842dzcfapkVybkNJLWwfziCsFjz', 'JRgMZJJGwqCAClGirC5Sq7mg7hZDwEjvSM7pZB2O', 1467182993, '2016-06-28 23:49:53', '2016-06-28 23:49:53'),
('oUDp1gTTxx1mkkaACyigL1Uk3tGpiiGx6eNifrIn', 'kerW9VxQI4azGCN6z2ur1W4TQuuYxTONwcaipZTG', 1465461559, '2016-06-09 01:39:19', '2016-06-09 01:39:19'),
('9htUKyXzCsLOp5f1A9UrANWfPYQgYnGXyQvZG5Lk', 'kf3UPfVIWJ43W5F0ghcJe61rC9RVmEVevJT1K05l', 1465458414, '2016-06-09 00:46:55', '2016-06-09 00:46:55'),
('MSfRMcpsYmskOC2o6wGw3T57Y2qHo84jKHJKsyGA', 'MHUdJlhR6ut17cUSuIOvi8iwCqIBPaeJVkFP5vgo', 1467876776, '2016-07-07 00:32:56', '2016-07-07 00:32:56'),
('6jAWZ2gN80I9kqGY3DN8ePdUvqAbdteUA3bTWDmX', 'MRnmtzmpnSqKKRxSeuJhJKoVDepN3cRWvnAGa6k6', 1468458944, '2016-07-13 18:15:45', '2016-07-13 18:15:45'),
('GEafKMKbd7HcIPIDp1GaFhKwamm4ZlO70Ukwouav', 'NeG7del60PjrTiAmuHWEakhIDaqAtMWR3GLyFARS', 1467876476, '2016-07-07 00:27:56', '2016-07-07 00:27:56'),
('DrxmSsw5fAiuJwPNXqxMBV3wwXMePCTyB30nqPSX', 'Np9QlTHUiVIhl8yJjSPcdV6faKmfVNsjhnQzpMYq', 1467878040, '2016-07-07 00:54:00', '2016-07-07 00:54:00'),
('EBmbNn1w2XR9DkOzf578Brwt6ZsHXawtXfylDNb0', 'o8lxix0NztrgPNFxYhjvAQSc0DtVndpT8MMRaqKU', 1467177099, '2016-06-28 22:11:39', '2016-06-28 22:11:39'),
('W7bLMD9sI2Pgoprc3mRQxQ2E5Ej1AkLXfXmu8xGj', 'OmqUsFBUMzLUzCZGLolcd8dlDoT7SIG07tB44A1I', 1467878040, '2016-07-07 00:54:00', '2016-07-07 00:54:00'),
('Xiq5hvMdvrDZMXej6Xsd8e4u4pr4VfiMTxGu8SFp', 'OrPsVDW8Xo64cl3C8vifZIpJiI90HZ45Z5cIReFU', 1467877399, '2016-07-07 00:43:19', '2016-07-07 00:43:19'),
('rC0VVJeloF7v7Wrv2jJm57PbJvEXiEvSSzN9wZnw', 'oVpFZUjhiYzFxUti91Dfeu27Hw83Ix99xuxYOus6', 1467163644, '2016-06-28 18:27:24', '2016-06-28 18:27:24'),
('OOfXymL9EpUe1eu6zr9tMMJRssp6QfOvu6cxGnNv', 'p3s5DAUonYKk1Z1bsyXKrLI3SN0fUA6h4F3zGvJ0', 1465542809, '2016-06-10 00:13:29', '2016-06-10 00:13:29'),
('GCVayW0Ztq9IMcmeaIfdYNrmjP9Ebu5fFOMdGVPj', 'QqH2seA0xIrpxL63fpe3H1dd740NimnV8JUMKGUK', 1465461136, '2016-06-09 01:32:16', '2016-06-09 01:32:16'),
('sStCSlJlu68SUzxioioM3uD6xkBgrlmSl6BSbCa3', 'rby3nWN4DsfacLG1UzbsdGWZCg23VkGCG6n70hTa', 1465547269, '2016-06-10 01:27:49', '2016-06-10 01:27:49'),
('FDrUvexwZpkIYJiUkTtZYxxbK5KGfY837zfnSuww', 'rGEVThEBgSKPABWjpQzMT2XPpLbhMVYYbx3DncT1', 1467181934, '2016-06-28 23:32:14', '2016-06-28 23:32:14'),
('Ms7Hgfjj9HudMQFlNvq46MwXZJ4Nwfri0iMPGnFx', 'rkwvXsqm5Tnh5l5xxdsrxCw1zdc4P3pf9YTF4Llt', 1462516671, '2016-05-05 23:37:52', '2016-05-05 23:37:52'),
('P5IYQ8ZtHYzuQtLX6xZgLbRlez8Di7hCcmCGK9Xy', 'RPtA8KVFBg1lAJhDe343ViZ8yRTHM9S9v6jAtfwF', 1462864853, '2016-05-10 00:20:53', '2016-05-10 00:20:53'),
('CfH4eLUBy2e6togSR3DEHF7rCHt1kbmmVv9p547I', 'S2YZvDnZwuyfsB7Plyvl6qMuojUHIgl9QFNiOU4x', 1468553389, '2016-07-14 20:29:49', '2016-07-14 20:29:49'),
('RGokthtE1cQYm4tWUWAssbZmdQBJQakzhqzMWP4q', 'TbSwfYCGvmyA4HvJr51cfWa6FHaCfxRsrwJ4xgE4', 1468458944, '2016-07-13 18:15:45', '2016-07-13 18:15:45'),
('GMIE3ZLpCqrZNhXoxGMHn34vmlynMNTMUGmTnGhI', 'UKvbCuAbyvO9YqdAg00PiGZJuHEcItN1VxQwEIIN', 1467182673, '2016-06-28 23:44:33', '2016-06-28 23:44:33'),
('ZrisOXyHGVnGnWg6rJmVzRZ8a9IYGNycuKLhTxk5', 'VccTF8cHlIleZb9HLQmXnhClHQS0L06UMg0fyKob', 1465458028, '2016-06-09 00:40:28', '2016-06-09 00:40:28'),
('nZJrp72eVbkOWCDY9KG9jXo0biCC4Qq3BDYbd7r5', 'VDyTFCPGZs32VTx27UEfTihk1pK7BEP9jFUENxjK', 1467876607, '2016-07-07 00:30:07', '2016-07-07 00:30:07'),
('QPkhSBEAzsBKTPBtr1VCnlusvV1YvTC0JOqoE3Ag', 'vEikamuS8YJgqzrqNH8Govr9mezsP0BJzV8ryxaA', 1467876583, '2016-07-07 00:29:43', '2016-07-07 00:29:43'),
('IrAQLjxZ8unKizvy35mJJvGqzLP7xTkOvVylAhMe', 'vnVfF3DFW2djBMLAkSt6y3KM47uYXRvBRzdydogI', 1467182797, '2016-06-28 23:46:37', '2016-06-28 23:46:37'),
('Iv3R66t1XevzKrjbqeKbwJYNg9jHYjcrRgFA3wlj', 'xdYLZWGRDu8zIYKjSYMaz6ujFK75GF1XBSpV0BiY', 1468045923, '2016-07-08 23:32:03', '2016-07-08 23:32:03'),
('1rAULmf28qIDp6unIUr2VmfRgRnawX2CP68ZbJY0', 'XhKNeB3DpINXfz31ZisBCaTcYoMrEiwku3Oxha22', 1468545367, '2016-07-14 18:16:07', '2016-07-14 18:16:07'),
('43h5ehdmqOtwoPIvW4E1uKWMA51ky8LBqoA8zHBk', 'z2Be8bIzsNfzkquv5vGwOTegIFGmyjgsfF9EhTW7', 1465459397, '2016-06-09 01:03:17', '2016-06-09 01:03:17'),
('Gc7fWvDOdHrB3FOUr80HnvYqDqpc8CJVRxLmoDzd', 'zBtsxyTWtQ9dNdeEV44zBfHcB7HIOxks1arhVUCs', 1467183146, '2016-06-28 23:52:26', '2016-06-28 23:52:26'),
('i8zQHIgnxXObH7BrSPrpcYYciLlc61AgDdXwV8fG', 'ZezSE6gQcj2PJPntCnXERVHZjZFNCU6MBsj2hVCx', 1462869160, '2016-05-10 01:32:40', '2016-05-10 01:32:40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_scopes`
--

CREATE TABLE `oauth_scopes` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_sessions`
--

CREATE TABLE `oauth_sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `owner_type` enum('client','user') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `owner_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_redirect_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `oauth_sessions`
--

INSERT INTO `oauth_sessions` (`id`, `client_id`, `owner_type`, `owner_id`, `client_redirect_uri`, `created_at`, `updated_at`) VALUES
(1, 'appid1', 'user', '11', NULL, '2016-05-05 23:07:01', '2016-05-05 23:07:01'),
(2, 'appid1', 'user', '11', NULL, '2016-05-05 23:15:47', '2016-05-05 23:15:47'),
(3, 'appid1', 'user', '11', NULL, '2016-05-05 23:37:51', '2016-05-05 23:37:51'),
(4, 'appid1', 'user', '11', NULL, '2016-05-05 23:52:15', '2016-05-05 23:52:15'),
(5, 'appid1', 'user', '11', NULL, '2016-05-10 00:20:53', '2016-05-10 00:20:53'),
(6, 'appid1', 'user', '11', NULL, '2016-05-10 01:32:40', '2016-05-10 01:32:40'),
(7, 'appid1', 'user', '11', NULL, '2016-05-16 18:53:36', '2016-05-16 18:53:36'),
(8, 'appid1', 'user', '11', NULL, '2016-06-09 00:40:28', '2016-06-09 00:40:28'),
(9, 'appid1', 'user', '11', NULL, '2016-06-09 00:46:54', '2016-06-09 00:46:54'),
(10, 'appid1', 'user', '11', NULL, '2016-06-09 00:49:54', '2016-06-09 00:49:54'),
(11, 'appid1', 'user', '11', NULL, '2016-06-09 01:03:17', '2016-06-09 01:03:17'),
(12, 'appid1', 'user', '11', NULL, '2016-06-09 01:32:16', '2016-06-09 01:32:16'),
(13, 'appid1', 'user', '11', NULL, '2016-06-09 01:39:19', '2016-06-09 01:39:19'),
(14, 'appid1', 'user', '11', NULL, '2016-06-10 00:13:29', '2016-06-10 00:13:29'),
(15, 'appid1', 'user', '11', NULL, '2016-06-10 01:27:49', '2016-06-10 01:27:49'),
(16, 'appid1', 'user', '11', NULL, '2016-06-28 18:27:24', '2016-06-28 18:27:24'),
(17, 'appid1', 'user', '11', NULL, '2016-06-28 19:31:31', '2016-06-28 19:31:31'),
(18, 'appid1', 'user', '11', NULL, '2016-06-28 19:59:56', '2016-06-28 19:59:56'),
(19, 'appid1', 'user', '11', NULL, '2016-06-28 21:39:19', '2016-06-28 21:39:19'),
(20, 'appid1', 'user', '11', NULL, '2016-06-28 22:11:39', '2016-06-28 22:11:39'),
(21, 'appid1', 'user', '11', NULL, '2016-06-28 22:52:01', '2016-06-28 22:52:01'),
(22, 'appid1', 'user', '11', NULL, '2016-06-28 23:32:14', '2016-06-28 23:32:14'),
(23, 'appid1', 'user', '11', NULL, '2016-06-28 23:33:01', '2016-06-28 23:33:01'),
(24, 'appid1', 'user', '11', NULL, '2016-06-28 23:39:35', '2016-06-28 23:39:35'),
(25, 'appid1', 'user', '11', NULL, '2016-06-28 23:40:48', '2016-06-28 23:40:48'),
(26, 'appid1', 'user', '11', NULL, '2016-06-28 23:44:33', '2016-06-28 23:44:33'),
(27, 'appid1', 'user', '11', NULL, '2016-06-28 23:46:37', '2016-06-28 23:46:37'),
(28, 'appid1', 'user', '11', NULL, '2016-06-28 23:49:53', '2016-06-28 23:49:53'),
(29, 'appid1', 'user', '11', NULL, '2016-06-28 23:52:26', '2016-06-28 23:52:26'),
(30, 'appid1', 'user', '11', NULL, '2016-06-28 23:58:56', '2016-06-28 23:58:56'),
(31, 'appid1', 'user', '11', NULL, '2016-07-07 00:27:56', '2016-07-07 00:27:56'),
(32, 'appid1', 'user', '11', NULL, '2016-07-07 00:27:56', '2016-07-07 00:27:56'),
(33, 'appid1', 'user', '11', NULL, '2016-07-07 00:28:05', '2016-07-07 00:28:05'),
(34, 'appid1', 'user', '11', NULL, '2016-07-07 00:28:21', '2016-07-07 00:28:21'),
(35, 'appid1', 'user', '11', NULL, '2016-07-07 00:29:43', '2016-07-07 00:29:43'),
(36, 'appid1', 'user', '11', NULL, '2016-07-07 00:30:07', '2016-07-07 00:30:07'),
(37, 'appid1', 'user', '11', NULL, '2016-07-07 00:32:56', '2016-07-07 00:32:56'),
(38, 'appid1', 'user', '11', NULL, '2016-07-07 00:33:20', '2016-07-07 00:33:20'),
(39, 'appid1', 'user', '11', NULL, '2016-07-07 00:34:52', '2016-07-07 00:34:52'),
(40, 'appid1', 'user', '11', NULL, '2016-07-07 00:38:51', '2016-07-07 00:38:51'),
(41, 'appid1', 'user', '11', NULL, '2016-07-07 00:39:54', '2016-07-07 00:39:54'),
(42, 'appid1', 'user', '11', NULL, '2016-07-07 00:41:04', '2016-07-07 00:41:04'),
(43, 'appid1', 'user', '11', NULL, '2016-07-07 00:42:07', '2016-07-07 00:42:07'),
(44, 'appid1', 'user', '11', NULL, '2016-07-07 00:43:19', '2016-07-07 00:43:19'),
(45, 'appid1', 'user', '11', NULL, '2016-07-07 00:54:00', '2016-07-07 00:54:00'),
(46, 'appid1', 'user', '11', NULL, '2016-07-07 00:54:00', '2016-07-07 00:54:00'),
(47, 'appid1', 'user', '11', NULL, '2016-07-07 01:30:57', '2016-07-07 01:30:57'),
(48, 'appid1', 'user', '11', NULL, '2016-07-08 23:32:02', '2016-07-08 23:32:02'),
(49, 'appid1', 'user', '11', NULL, '2016-07-08 23:32:03', '2016-07-08 23:32:03'),
(50, 'appid1', 'user', '11', NULL, '2016-07-13 18:15:44', '2016-07-13 18:15:44'),
(51, 'appid1', 'user', '11', NULL, '2016-07-13 18:15:44', '2016-07-13 18:15:44'),
(52, 'appid1', 'user', '11', NULL, '2016-07-13 19:03:44', '2016-07-13 19:03:44'),
(53, 'appid1', 'user', '11', NULL, '2016-07-13 19:25:49', '2016-07-13 19:25:49'),
(54, 'appid1', 'user', '11', NULL, '2016-07-14 18:16:07', '2016-07-14 18:16:07'),
(55, 'appid1', 'user', '11', NULL, '2016-07-14 20:29:49', '2016-07-14 20:29:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_session_scopes`
--

CREATE TABLE `oauth_session_scopes` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `progress` smallint(5) UNSIGNED NOT NULL,
  `status` smallint(5) UNSIGNED NOT NULL,
  `due_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `projects`
--

INSERT INTO `projects` (`id`, `owner_id`, `client_id`, `name`, `description`, `progress`, `status`, `due_date`, `created_at`, `updated_at`) VALUES
(1, 4, 9, 'quia', 'Dolorem et et unde ut reprehenderit sit.', 70, 1, '2001-10-29', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(2, 3, 4, 'id', 'Qui doloremque vitae ut nulla modi sed.', 10, 3, '2003-05-31', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(3, 7, 3, 'distinctio', 'Laudantium minima qui nesciunt sint veritatis.', 81, 2, '1996-04-03', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(4, 1, 4, 'beatae', 'Placeat error ea eligendi eligendi.', 2, 3, '1980-01-15', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(5, 5, 6, 'quia', 'Perferendis voluptate exercitationem consequatur quaerat sequi reiciendis non.', 47, 3, '2002-12-06', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(6, 2, 8, 'earum', 'Enim molestiae modi sequi corrupti voluptatum cupiditate.', 37, 3, '2009-06-16', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(7, 3, 7, 'hic', 'Illum omnis nihil aut et.', 44, 2, '1984-11-29', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(8, 3, 4, 'est', 'Consequatur quidem est quos totam consequatur inventore quae.', 90, 2, '1998-04-11', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(9, 1, 4, 'ea', 'Odit eos quos sed placeat qui id.', 46, 1, '2009-01-20', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(10, 11, 8, 'enim', 'Nihil perspiciatis nobis harum sed.', 35, 2, '1980-02-28', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(11, 11, 12, 'aaa123', '1231', 98, 2, '2016-07-10', '2016-07-07 02:05:31', '2016-07-13 19:48:21'),
(12, 11, 1, '11', 'aa', 14, 1, '2016-07-14', '2016-07-14 20:38:00', '2016-07-14 20:38:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_files`
--

CREATE TABLE `project_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `project_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `project_files`
--

INSERT INTO `project_files` (`id`, `name`, `description`, `extension`, `created_at`, `updated_at`, `project_id`) VALUES
(1, 'nome arquivo', 'teste description', 'gif', '2016-05-16 19:32:01', '2016-05-16 19:32:01', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_members`
--

CREATE TABLE `project_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `project_members`
--

INSERT INTO `project_members` (`id`, `project_id`, `member_id`, `created_at`, `updated_at`) VALUES
(1, 10, 1, '2016-05-10 00:32:50', '2016-05-10 00:32:50'),
(2, 10, 2, '2016-05-10 00:32:58', '2016-05-10 00:32:58'),
(3, 10, 3, '2016-05-10 00:36:52', '2016-05-10 00:36:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_notes`
--

CREATE TABLE `project_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `project_notes`
--

INSERT INTO `project_notes` (`id`, `project_id`, `title`, `note`, `created_at`, `updated_at`) VALUES
(1, 4, 'quod', 'Quaerat porro suscipit et. Nobis molestiae blanditiis id iure aut. Accusamus pariatur minus molestias dicta laudantium magni.', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(2, 3, 'quod', 'Quo ea ex perspiciatis. Beatae quia autem incidunt quia a aut. At iure sapiente eaque eaque.', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(3, 3, 'voluptas', 'Facere sint temporibus hic iure ea eum. Occaecati magni ad non. Facilis labore et autem cum. Magni quo harum fugiat aut voluptatibus ut minus recusandae.', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(4, 6, 'esse', 'Laudantium natus rerum eum blanditiis ut nemo aut. Explicabo est ut velit quas. Non dignissimos voluptatibus dolorem est fugiat vero. Quia qui aliquid sint ducimus quae repudiandae totam.', '2016-05-03 00:12:50', '2016-05-03 00:12:50'),
(5, 4, 'similique', 'At et sapiente dolorum quidem maiores voluptatem fugiat fuga. Tenetur minima aliquid natus cum. Accusantium ea quod possimus consequatur libero voluptas vel dolorum. Perferendis voluptatem animi quia sit repellat molestiae.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(6, 9, 'eius', 'Deserunt necessitatibus velit dolorem eius explicabo nam ipsa. Accusantium iusto sint explicabo voluptas sint nihil. Quia rerum qui rem porro. Recusandae doloremque debitis doloribus dolorem nihil rerum. Et sint nesciunt esse deserunt.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(7, 5, 'earum', 'Consequatur corporis odio quia delectus. Aut qui et velit necessitatibus. Illo blanditiis deleniti illo rerum veniam vitae odit id.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(8, 5, 'aut', 'Esse quo necessitatibus in accusantium vitae aspernatur. Error pariatur qui molestiae dolorem sapiente officia. Quos fugit qui iure nemo.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(9, 1, 'id', 'Atque qui voluptatem consequatur ut. Quia odio veritatis id nemo aut quaerat vero. Aliquam cupiditate cum doloribus pariatur repellat earum laborum.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(10, 3, 'aut', 'Recusandae qui dicta ipsam doloremque. Ducimus ducimus eius eligendi qui. Ea aliquam et accusantium nihil nostrum porro.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(11, 7, 'dicta', 'Dicta voluptatum dignissimos doloribus et similique est. Omnis et amet voluptas. Ratione et magni libero corrupti maiores. Unde est blanditiis nemo iusto.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(12, 4, 'dignissimos', 'Eligendi ad eum dolores architecto dolores. Et autem et eligendi id. Odio error quidem facilis consequatur placeat quaerat occaecati. Neque temporibus veritatis quibusdam ipsa sunt.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(13, 10, 'rerum', 'Animi placeat quia velit eaque aliquid neque. Sed sunt voluptatum eveniet sed ab deleniti commodi. Eum non assumenda ut ut. Voluptas nemo distinctio ipsa.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(14, 4, 'dolor', 'Assumenda voluptates quia recusandae id. Quia modi sunt dolores aut et.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(15, 1, 'laudantium', 'In veritatis maiores nulla neque iure laboriosam est. Maiores consequuntur amet consequatur dignissimos.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(16, 3, 'voluptas', 'Voluptatum optio rem quod facilis explicabo sed ad quidem. A modi quisquam non at dolorem ullam est. Aut officiis similique sapiente similique odio ipsam. Nihil explicabo aut inventore est commodi cumque.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(17, 9, 'molestias', 'Et a iure occaecati quibusdam in perspiciatis inventore. Aut maxime neque sint. Tenetur est aperiam eaque ut optio et aut nostrum. Quia rerum ea reprehenderit mollitia.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(18, 10, 'vel', 'Fugit fugiat rerum repudiandae cum aut praesentium molestias non. Vel veritatis possimus voluptas exercitationem dolore. Quasi aut natus et voluptas optio ipsam reprehenderit amet.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(19, 4, 'quidem', 'Molestiae amet et sit architecto incidunt. Adipisci doloremque beatae ea nostrum repudiandae illo. Quasi tempore nulla ducimus eaque.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(20, 4, 'autem', 'Aut commodi autem et autem quia eum modi. Numquam exercitationem ut assumenda quos dolor ut. Qui nemo provident tenetur nihil. Quo iusto voluptatem dolorem.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(21, 5, 'iusto', 'Et rerum voluptatem itaque sapiente rem id praesentium qui. Nulla alias voluptas nemo asperiores id aliquid et. Omnis aliquid ex accusamus vel aut qui ducimus.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(22, 1, 'minus', 'Nisi aut veritatis earum atque reprehenderit nam suscipit reiciendis. Vitae non sed et et quia numquam. Sit sint et est non architecto non.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(23, 8, 'est', 'Enim unde deleniti veniam vitae cumque dolorum. Atque voluptas ea qui qui inventore doloremque. Facilis ipsam voluptatem aliquid amet voluptas aut qui. Ut qui voluptatum amet.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(24, 7, 'ab', 'Voluptate aut minus voluptatibus rerum. Quas eos sit et ut excepturi ut. Dicta quo iste autem distinctio.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(25, 6, 'itaque', 'Sapiente vel sapiente expedita nulla mollitia dolores. Officiis sint vel corporis deserunt. Culpa amet magni voluptate voluptatem laudantium. Commodi corrupti modi excepturi asperiores illum delectus aut. Tempora sequi doloribus repellendus sit occaecati ', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(26, 3, 'amet', 'Sapiente accusantium aut tempora vel aut omnis. Incidunt sit omnis dolores enim voluptas dolorum quae ut.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(28, 4, 'fugit', 'Et iusto amet repellat ut. Assumenda ut et laborum tempora nostrum veniam ut.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(29, 8, 'cupiditate', 'Dicta ex quia rerum deleniti fugiat. Sapiente et officia excepturi qui. Ut tenetur inventore eum ut at. Ipsa ut autem consequatur quia vel.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(30, 6, 'officia', 'Architecto est voluptatem ut aliquid minus aut nisi. Amet at alias in qui. Autem molestias commodi officia deleniti incidunt enim est dolores.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(31, 5, 'quam', 'Sunt nobis natus ut minima ipsa iure. Aspernatur voluptatem ut unde reiciendis. Similique impedit error dolore eum nisi. Quis fugiat sint voluptatem dolor consequatur maxime.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(32, 5, 'a', 'Laudantium est dolores excepturi earum et atque. Id nostrum sit aut alias tempora ab. Omnis odit eos totam asperiores voluptatem dolor.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(33, 9, 'asperiores', 'Veritatis sed rem adipisci sapiente repudiandae quasi doloremque. Nostrum sit sunt sint velit. Quas tenetur quo autem et incidunt inventore repellat.', '2016-05-03 00:12:51', '2016-05-03 00:12:51'),
(34, 8, 'ut', 'Ut illum magni reiciendis atque consequatur. Rem reiciendis mollitia vitae qui qui. Ea eum enim sit magni.', '2016-05-03 00:12:52', '2016-05-03 00:12:52'),
(35, 7, 'libero', 'Error repudiandae occaecati architecto non rerum. Consequuntur consequatur sapiente ipsum eos dolorum ut. Aut qui excepturi itaque fugiat.', '2016-05-03 00:12:52', '2016-05-03 00:12:52'),
(36, 2, 'quia', 'Mollitia architecto assumenda pariatur nisi rerum distinctio. Minima eius aliquid architecto corporis nobis blanditiis. Quia praesentium a aut quas iusto optio dolorem. Nostrum est nemo quis eligendi. Eum eos vel aperiam dolorem tenetur.', '2016-05-03 00:12:52', '2016-05-03 00:12:52'),
(37, 5, 'non', 'Autem corporis tenetur reiciendis expedita sit. Iste iste facilis et. Autem distinctio ratione sit quos ut possimus nostrum. Consequatur laboriosam id sit tempora.', '2016-05-03 00:12:52', '2016-05-03 00:12:52'),
(38, 8, 'nulla', 'Rerum aut vitae iure quam aut fuga quae. Illo quisquam et dolores iste quia. Quibusdam aspernatur assumenda saepe libero. Accusantium non quo laborum facere minus iusto.', '2016-05-03 00:12:52', '2016-05-03 00:12:52'),
(39, 9, 'ex', 'Ab quia id eum ut voluptatem mollitia id. Ipsum aut numquam nam. Dolores deserunt et praesentium veritatis tenetur.', '2016-05-03 00:12:52', '2016-05-03 00:12:52'),
(40, 3, 'impedit', 'Voluptas saepe quia ut. Non sit accusantium ratione eum dicta hic est. Qui facere et qui ut commodi commodi.', '2016-05-03 00:12:52', '2016-05-03 00:12:52'),
(41, 6, 'corporis', 'Qui aut at placeat atque tenetur itaque at. Quaerat repudiandae et eum est ut. Sint velit sint sed omnis quia totam animi. Omnis incidunt dolor fugit consectetur repellat sapiente.', '2016-05-03 00:12:52', '2016-05-03 00:12:52'),
(42, 3, 'vero', 'Nam dolores voluptas architecto est rerum vitae. Mollitia molestias ipsam quo aliquid aut. Fugit dolorem dignissimos eum natus.', '2016-05-03 00:12:52', '2016-05-03 00:12:52'),
(43, 8, 'ut', 'Laudantium qui officiis fugit aut. Necessitatibus non necessitatibus voluptatem alias ut. Qui molestiae ea et quo ut debitis est. Et perspiciatis incidunt voluptatibus unde.', '2016-05-03 00:12:52', '2016-05-03 00:12:52'),
(44, 3, 'natus', 'Unde omnis natus recusandae aliquid asperiores. Labore est dolore non. Laudantium temporibus ex praesentium nam tempora. Quasi alias vel sit accusamus autem cupiditate.', '2016-05-03 00:12:52', '2016-05-03 00:12:52'),
(45, 6, 'beatae', 'Enim est quod et facere. Quia repudiandae excepturi quasi. Qui aut nam qui labore asperiores architecto aspernatur.', '2016-05-03 00:12:52', '2016-05-03 00:12:52'),
(46, 4, 'nihil', 'Enim consectetur et sit non odit doloremque. Earum consectetur labore ut veritatis quod. Similique voluptatem aut assumenda et quod facere illum. Ut eos dolore illum ullam.', '2016-05-03 00:12:52', '2016-05-03 00:12:52'),
(47, 7, 'aut', 'Voluptatum autem minima aut aut numquam aperiam sit. Et ducimus harum deleniti deserunt. Perferendis pariatur harum magni ut dolorum eaque laborum.', '2016-05-03 00:12:52', '2016-05-03 00:12:52'),
(48, 10, 'molestiae', 'Ut optio itaque voluptatem consequatur sed consequatur et eius. Impedit nihil sequi quo. Tempora doloribus quibusdam nihil inventore deserunt.', '2016-05-03 00:12:52', '2016-05-03 00:12:52'),
(49, 4, 'soluta', 'Tenetur consectetur et explicabo et sint cum. Repellendus quaerat quia asperiores aliquid omnis eos exercitationem. Nemo voluptatem sapiente voluptate. Quos ab earum expedita labore commodi voluptatem architecto vitae. Aut in non nihil sit provident nostr', '2016-05-03 00:12:52', '2016-05-03 00:12:52'),
(50, 6, 'vitae', 'Quaerat doloribus nam incidunt quam. Et voluptatem blanditiis labore nihil illo. Nihil aut sunt vero vitae ea dolor illum.', '2016-05-03 00:12:52', '2016-05-03 00:12:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Desmond Tillman', 'Fay.Kattie@example.org', '$2y$10$pbP75sYwOmFMXA4ezYg8yuqsVxpfqeqtLlySIaJhx5IxLI3aUb63e', 'zU9JlrIqfF', '2016-05-03 00:12:49', '2016-05-03 00:12:49'),
(2, 'Dr. Jody Williamson', 'fThompson@example.com', '$2y$10$LZT9TUZLPjX./wAUo6.eUO4k/zE8OtAKaE1sQ8oWTiKmOOsQyxA7.', 'gFRnqU40Rn', '2016-05-03 00:12:49', '2016-05-03 00:12:49'),
(3, 'Dr. Mozell King', 'Mohamed.Hauck@example.net', '$2y$10$7Y7z8l1g6PGOwbmerO7HMuLmqkc/mPyHDFsfvQRMo2OLX2wXPhoUi', 'IdnaeaOI9u', '2016-05-03 00:12:49', '2016-05-03 00:12:49'),
(4, 'Harmon Larkin', 'Ciara42@example.org', '$2y$10$7t.yUDHOPDroooQndZxUWel71eiMrYvrY4i1oC7Tg7k1UbY2KjfZi', '2HyARHaOYF', '2016-05-03 00:12:49', '2016-05-03 00:12:49'),
(5, 'Daisha O''Connell', 'Arjun.Okuneva@example.net', '$2y$10$P6ZA5leTAOCdRFv0S0AbB.Sm4WRhLNIqAOgU7yFpnQHrNqlMBY2fK', 'QRNmqopBCQ', '2016-05-03 00:12:49', '2016-05-03 00:12:49'),
(6, 'Mr. Winfield Prohaska', 'Neva.Lesch@example.org', '$2y$10$PUkPSWs9S20doKiT1ECx0OS2AdoOdB1NXUcH4QhrRyeM1RUvxUxlW', 'PLb9RMbx54', '2016-05-03 00:12:49', '2016-05-03 00:12:49'),
(7, 'Daija Grimes', 'kHagenes@example.net', '$2y$10$D0SXsKuozIbUtUiRcxCVbec.FLrjU.bfDA6Eq5.6tBq.8FuPC5p2K', 'AdhGTaxrEd', '2016-05-03 00:12:49', '2016-05-03 00:12:49'),
(8, 'Ms. Liliana Simonis Jr.', 'Smith.Norwood@example.org', '$2y$10$o6FFHfZpG3snRqeLv7xojeAkThoZqCaSpJaIWd6J2ah9Q/KyK0u.m', 'DdKGcjxY5u', '2016-05-03 00:12:49', '2016-05-03 00:12:49'),
(9, 'Kaia McLaughlin', 'zMills@example.net', '$2y$10$jqQ0WrclNdAo72rpsXBGruGZcFWUGEgx0W0ezEbPxGcCljQasv.N2', '8nIeqnThF5', '2016-05-03 00:12:49', '2016-05-03 00:12:49'),
(10, 'Miss Malinda Pouros IV', 'Juliana44@example.net', '$2y$10$JquKmPaz1E7BhH/WDIU1I.vKQRCYsGvCbXZLZbr0aDL2VP5cQc.sS', '3Zo5t1l8KJ', '2016-05-03 00:12:49', '2016-05-03 00:12:49'),
(11, 'juliano', 'juliano@agencias3.com.br', '$2y$10$wiIdXltPbfkXTeSHS.mEF.v0kvRGvASo1oGZYUoLT.RbaDzcaImXK', 'xN1IDl94eD', '2016-05-04 00:51:12', '2016-05-04 00:51:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `oauth_access_tokens_id_session_id_unique` (`id`,`session_id`),
  ADD KEY `oauth_access_tokens_session_id_index` (`session_id`);

--
-- Indexes for table `oauth_access_token_scopes`
--
ALTER TABLE `oauth_access_token_scopes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_token_scopes_access_token_id_index` (`access_token_id`),
  ADD KEY `oauth_access_token_scopes_scope_id_index` (`scope_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_session_id_index` (`session_id`);

--
-- Indexes for table `oauth_auth_code_scopes`
--
ALTER TABLE `oauth_auth_code_scopes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_code_scopes_auth_code_id_index` (`auth_code_id`),
  ADD KEY `oauth_auth_code_scopes_scope_id_index` (`scope_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `oauth_clients_id_secret_unique` (`id`,`secret`);

--
-- Indexes for table `oauth_client_endpoints`
--
ALTER TABLE `oauth_client_endpoints`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `oauth_client_endpoints_client_id_redirect_uri_unique` (`client_id`,`redirect_uri`);

--
-- Indexes for table `oauth_client_grants`
--
ALTER TABLE `oauth_client_grants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_client_grants_client_id_index` (`client_id`),
  ADD KEY `oauth_client_grants_grant_id_index` (`grant_id`);

--
-- Indexes for table `oauth_client_scopes`
--
ALTER TABLE `oauth_client_scopes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_client_scopes_client_id_index` (`client_id`),
  ADD KEY `oauth_client_scopes_scope_id_index` (`scope_id`);

--
-- Indexes for table `oauth_grants`
--
ALTER TABLE `oauth_grants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_grant_scopes`
--
ALTER TABLE `oauth_grant_scopes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_grant_scopes_grant_id_index` (`grant_id`),
  ADD KEY `oauth_grant_scopes_scope_id_index` (`scope_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`access_token_id`),
  ADD UNIQUE KEY `oauth_refresh_tokens_id_unique` (`id`);

--
-- Indexes for table `oauth_scopes`
--
ALTER TABLE `oauth_scopes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_sessions`
--
ALTER TABLE `oauth_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_sessions_client_id_owner_type_owner_id_index` (`client_id`,`owner_type`,`owner_id`);

--
-- Indexes for table `oauth_session_scopes`
--
ALTER TABLE `oauth_session_scopes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_session_scopes_session_id_index` (`session_id`),
  ADD KEY `oauth_session_scopes_scope_id_index` (`scope_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_owner_id_foreign` (`owner_id`),
  ADD KEY `projects_client_id_foreign` (`client_id`);

--
-- Indexes for table `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_files_project_id_foreign` (`project_id`);

--
-- Indexes for table `project_members`
--
ALTER TABLE `project_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_members_project_id_foreign` (`project_id`),
  ADD KEY `project_members_member_id_foreign` (`member_id`);

--
-- Indexes for table `project_notes`
--
ALTER TABLE `project_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_notes_project_id_foreign` (`project_id`);

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
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oauth_access_token_scopes`
--
ALTER TABLE `oauth_access_token_scopes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_auth_code_scopes`
--
ALTER TABLE `oauth_auth_code_scopes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_client_endpoints`
--
ALTER TABLE `oauth_client_endpoints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_client_grants`
--
ALTER TABLE `oauth_client_grants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_client_scopes`
--
ALTER TABLE `oauth_client_scopes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_grant_scopes`
--
ALTER TABLE `oauth_grant_scopes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_sessions`
--
ALTER TABLE `oauth_sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `oauth_session_scopes`
--
ALTER TABLE `oauth_session_scopes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `project_files`
--
ALTER TABLE `project_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `project_members`
--
ALTER TABLE `project_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `project_notes`
--
ALTER TABLE `project_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD CONSTRAINT `oauth_access_tokens_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `oauth_access_token_scopes`
--
ALTER TABLE `oauth_access_token_scopes`
  ADD CONSTRAINT `oauth_access_token_scopes_access_token_id_foreign` FOREIGN KEY (`access_token_id`) REFERENCES `oauth_access_tokens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_access_token_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD CONSTRAINT `oauth_auth_codes_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `oauth_auth_code_scopes`
--
ALTER TABLE `oauth_auth_code_scopes`
  ADD CONSTRAINT `oauth_auth_code_scopes_auth_code_id_foreign` FOREIGN KEY (`auth_code_id`) REFERENCES `oauth_auth_codes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_auth_code_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `oauth_client_endpoints`
--
ALTER TABLE `oauth_client_endpoints`
  ADD CONSTRAINT `oauth_client_endpoints_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `oauth_client_grants`
--
ALTER TABLE `oauth_client_grants`
  ADD CONSTRAINT `oauth_client_grants_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `oauth_client_grants_grant_id_foreign` FOREIGN KEY (`grant_id`) REFERENCES `oauth_grants` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `oauth_client_scopes`
--
ALTER TABLE `oauth_client_scopes`
  ADD CONSTRAINT `oauth_client_scopes_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_client_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `oauth_grant_scopes`
--
ALTER TABLE `oauth_grant_scopes`
  ADD CONSTRAINT `oauth_grant_scopes_grant_id_foreign` FOREIGN KEY (`grant_id`) REFERENCES `oauth_grants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_grant_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD CONSTRAINT `oauth_refresh_tokens_access_token_id_foreign` FOREIGN KEY (`access_token_id`) REFERENCES `oauth_access_tokens` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `oauth_sessions`
--
ALTER TABLE `oauth_sessions`
  ADD CONSTRAINT `oauth_sessions_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `oauth_session_scopes`
--
ALTER TABLE `oauth_session_scopes`
  ADD CONSTRAINT `oauth_session_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_session_scopes_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `projects_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `project_files`
--
ALTER TABLE `project_files`
  ADD CONSTRAINT `project_files_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

--
-- Limitadores para a tabela `project_members`
--
ALTER TABLE `project_members`
  ADD CONSTRAINT `project_members_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `project_members_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

--
-- Limitadores para a tabela `project_notes`
--
ALTER TABLE `project_notes`
  ADD CONSTRAINT `project_notes_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
