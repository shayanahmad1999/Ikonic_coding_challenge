-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2023 at 12:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ikonic_coding_challenge`
--

-- --------------------------------------------------------

--
-- Table structure for table `connections`
--

CREATE TABLE `connections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user1_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user2_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `connections`
--

INSERT INTO `connections` (`id`, `user1_id`, `user2_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 8, '2023-12-19 05:12:16', '2023-12-19 05:02:43', '2023-12-19 05:12:16'),
(2, 1, 14, '2023-12-19 05:13:09', '2023-12-19 05:02:56', '2023-12-19 05:13:09'),
(3, 1, 12, '2023-12-19 05:14:08', '2023-12-19 05:14:00', '2023-12-19 05:14:08'),
(4, 1, 11, '2023-12-19 05:16:01', '2023-12-19 05:15:50', '2023-12-19 05:16:01'),
(5, 1, 15, '2023-12-19 05:52:52', '2023-12-19 05:19:05', '2023-12-19 05:52:52'),
(6, 1, 6, NULL, '2023-12-19 05:34:30', '2023-12-19 05:34:30'),
(7, 1, 21, NULL, '2023-12-19 05:40:24', '2023-12-19 05:40:24'),
(8, 1, 18, NULL, '2023-12-19 05:40:27', '2023-12-19 05:40:27'),
(9, 1, 19, NULL, '2023-12-19 05:40:30', '2023-12-19 05:40:30'),
(10, 1, 53, NULL, '2023-12-19 05:40:34', '2023-12-19 05:40:34'),
(11, 1, 9, NULL, '2023-12-19 05:53:04', '2023-12-19 05:53:04'),
(12, 1, 20, NULL, '2023-12-19 06:14:44', '2023-12-19 06:14:44'),
(13, 1, 16, NULL, '2023-12-19 06:16:04', '2023-12-19 06:16:04'),
(14, 1, 25, NULL, '2023-12-19 06:17:30', '2023-12-19 06:17:30'),
(15, 1, 29, NULL, '2023-12-19 06:18:48', '2023-12-19 06:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `connection_in_commoms`
--

CREATE TABLE `connection_in_commoms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user1_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user2_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `connection_in_commoms`
--

INSERT INTO `connection_in_commoms` (`id`, `user1_id`, `user2_id`, `created_at`, `updated_at`) VALUES
(1, 15, 34, '2023-12-19 05:25:43', '2023-12-19 05:25:43'),
(2, 22, 13, '2023-12-19 05:25:43', '2023-12-19 05:25:43'),
(3, 32, 12, '2023-12-19 05:25:43', '2023-12-19 05:25:43'),
(4, 58, 22, '2023-12-19 05:25:43', '2023-12-19 05:25:43'),
(5, 4, 41, '2023-12-19 05:25:43', '2023-12-19 05:25:43'),
(6, 21, 11, '2023-12-19 05:25:43', '2023-12-19 05:25:43'),
(7, 14, 32, '2023-12-19 05:25:43', '2023-12-19 05:25:43'),
(8, 47, 47, '2023-12-19 05:25:43', '2023-12-19 05:25:43'),
(9, 12, 58, '2023-12-19 05:25:43', '2023-12-19 05:25:43'),
(10, 41, 3, '2023-12-19 05:25:43', '2023-12-19 05:25:43'),
(11, 37, 49, '2023-12-19 05:25:43', '2023-12-19 05:25:43'),
(12, 44, 50, '2023-12-19 05:25:43', '2023-12-19 05:25:43'),
(13, 26, 15, '2023-12-19 05:25:43', '2023-12-19 05:25:43'),
(14, 21, 44, '2023-12-19 05:25:43', '2023-12-19 05:25:43'),
(15, 56, 52, '2023-12-19 05:25:43', '2023-12-19 05:25:43'),
(16, 23, 15, '2023-12-19 05:25:43', '2023-12-19 05:25:43'),
(17, 47, 33, '2023-12-19 05:25:43', '2023-12-19 05:25:43'),
(18, 54, 54, '2023-12-19 05:25:43', '2023-12-19 05:25:43'),
(19, 14, 53, '2023-12-19 05:25:44', '2023-12-19 05:25:44'),
(20, 7, 29, '2023-12-19 05:25:44', '2023-12-19 05:25:44'),
(21, 41, 29, '2023-12-19 05:25:45', '2023-12-19 05:25:45'),
(22, 5, 25, '2023-12-19 05:25:45', '2023-12-19 05:25:45'),
(23, 13, 52, '2023-12-19 05:25:46', '2023-12-19 05:25:46'),
(24, 16, 51, '2023-12-19 05:25:46', '2023-12-19 05:25:46'),
(25, 42, 41, '2023-12-19 05:25:46', '2023-12-19 05:25:46'),
(26, 9, 34, '2023-12-19 05:25:46', '2023-12-19 05:25:46'),
(27, 28, 38, '2023-12-19 05:25:46', '2023-12-19 05:25:46'),
(28, 53, 39, '2023-12-19 05:25:46', '2023-12-19 05:25:46'),
(29, 15, 36, '2023-12-19 05:25:46', '2023-12-19 05:25:46'),
(30, 24, 40, '2023-12-19 05:25:46', '2023-12-19 05:25:46'),
(31, 58, 58, '2023-12-19 05:25:46', '2023-12-19 05:25:46'),
(32, 51, 26, '2023-12-19 05:25:46', '2023-12-19 05:25:46'),
(33, 10, 28, '2023-12-19 05:25:46', '2023-12-19 05:25:46'),
(34, 43, 34, '2023-12-19 05:25:46', '2023-12-19 05:25:46'),
(35, 35, 52, '2023-12-19 05:25:46', '2023-12-19 05:25:46'),
(36, 28, 53, '2023-12-19 05:25:46', '2023-12-19 05:25:46'),
(37, 22, 31, '2023-12-19 05:25:46', '2023-12-19 05:25:46'),
(38, 49, 15, '2023-12-19 05:25:46', '2023-12-19 05:25:46'),
(39, 23, 58, '2023-12-19 05:25:46', '2023-12-19 05:25:46'),
(40, 10, 6, '2023-12-19 05:25:46', '2023-12-19 05:25:46'),
(41, 5, 36, '2023-12-19 05:25:47', '2023-12-19 05:25:47'),
(42, 55, 30, '2023-12-19 05:25:47', '2023-12-19 05:25:47'),
(43, 37, 9, '2023-12-19 05:25:47', '2023-12-19 05:25:47'),
(44, 57, 51, '2023-12-19 05:25:47', '2023-12-19 05:25:47'),
(45, 25, 18, '2023-12-19 05:25:48', '2023-12-19 05:25:48'),
(46, 44, 44, '2023-12-19 05:25:48', '2023-12-19 05:25:48'),
(47, 30, 41, '2023-12-19 05:25:48', '2023-12-19 05:25:48'),
(48, 16, 24, '2023-12-19 05:25:48', '2023-12-19 05:25:48'),
(49, 50, 14, '2023-12-19 05:25:48', '2023-12-19 05:25:48'),
(50, 44, 43, '2023-12-19 05:25:48', '2023-12-19 05:25:48'),
(51, 47, 27, '2023-12-19 05:25:48', '2023-12-19 05:25:48'),
(52, 42, 48, '2023-12-19 05:25:48', '2023-12-19 05:25:48'),
(53, 52, 47, '2023-12-19 05:25:48', '2023-12-19 05:25:48'),
(54, 21, 19, '2023-12-19 05:25:48', '2023-12-19 05:25:48'),
(55, 39, 5, '2023-12-19 05:25:48', '2023-12-19 05:25:48'),
(56, 54, 23, '2023-12-19 05:25:48', '2023-12-19 05:25:48'),
(57, 8, 49, '2023-12-19 05:25:48', '2023-12-19 05:25:48'),
(58, 32, 42, '2023-12-19 05:25:48', '2023-12-19 05:25:48'),
(59, 43, 4, '2023-12-19 05:25:48', '2023-12-19 05:25:48'),
(60, 50, 55, '2023-12-19 05:25:48', '2023-12-19 05:25:48'),
(61, 6, 46, '2023-12-19 05:25:49', '2023-12-19 05:25:49'),
(62, 50, 18, '2023-12-19 05:25:49', '2023-12-19 05:25:49'),
(63, 51, 15, '2023-12-19 05:25:49', '2023-12-19 05:25:49'),
(64, 23, 15, '2023-12-19 05:25:49', '2023-12-19 05:25:49'),
(65, 5, 40, '2023-12-19 05:25:50', '2023-12-19 05:25:50'),
(66, 58, 47, '2023-12-19 05:25:50', '2023-12-19 05:25:50'),
(67, 51, 16, '2023-12-19 05:25:50', '2023-12-19 05:25:50'),
(68, 4, 3, '2023-12-19 05:25:50', '2023-12-19 05:25:50'),
(69, 1, 1, '2023-12-19 05:25:50', '2023-12-19 05:25:50'),
(70, 46, 56, '2023-12-19 05:25:50', '2023-12-19 05:25:50'),
(71, 54, 10, '2023-12-19 05:25:50', '2023-12-19 05:25:50'),
(72, 47, 5, '2023-12-19 05:25:50', '2023-12-19 05:25:50'),
(73, 34, 53, '2023-12-19 05:25:50', '2023-12-19 05:25:50'),
(74, 53, 8, '2023-12-19 05:25:50', '2023-12-19 05:25:50'),
(75, 51, 19, '2023-12-19 05:25:50', '2023-12-19 05:25:50'),
(76, 37, 51, '2023-12-19 05:25:50', '2023-12-19 05:25:50'),
(77, 16, 2, '2023-12-19 05:25:50', '2023-12-19 05:25:50'),
(78, 43, 1, '2023-12-19 05:25:50', '2023-12-19 05:25:50'),
(79, 28, 39, '2023-12-19 05:25:50', '2023-12-19 05:25:50'),
(80, 34, 53, '2023-12-19 05:25:50', '2023-12-19 05:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2023_12_19_064511_create_send_requests_table', 1),
(15, '2023_12_19_064806_create_recieved_requests_table', 1),
(16, '2023_12_19_064901_create_connections_table', 1),
(17, '2023_12_19_102158_create_connection_in_commoms_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recieved_requests`
--

CREATE TABLE `recieved_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user1_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user2_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recieved_requests`
--

INSERT INTO `recieved_requests` (`id`, `user1_id`, `user2_id`, `created_at`, `updated_at`) VALUES
(2, 18, 7, '2023-12-19 04:44:38', '2023-12-19 04:44:38'),
(3, 11, 17, '2023-12-19 04:44:38', '2023-12-19 04:44:38'),
(5, 9, 11, '2023-12-19 04:44:39', '2023-12-19 04:44:39'),
(6, 10, 2, '2023-12-19 04:44:39', '2023-12-19 04:44:39'),
(7, 6, 17, '2023-12-19 04:44:39', '2023-12-19 04:44:39'),
(8, 7, 10, '2023-12-19 04:44:39', '2023-12-19 04:44:39'),
(9, 8, 4, '2023-12-19 04:44:39', '2023-12-19 04:44:39'),
(11, 13, 5, '2023-12-19 04:44:39', '2023-12-19 04:44:39'),
(13, 3, 16, '2023-12-19 04:44:39', '2023-12-19 04:44:39'),
(14, 11, 4, '2023-12-19 04:44:39', '2023-12-19 04:44:39'),
(15, 15, 13, '2023-12-19 04:44:39', '2023-12-19 04:44:39'),
(16, 8, 15, '2023-12-19 04:44:39', '2023-12-19 04:44:39'),
(18, 18, 2, '2023-12-19 04:44:39', '2023-12-19 04:44:39'),
(19, 13, 21, '2023-12-19 04:44:39', '2023-12-19 04:44:39'),
(20, 11, 19, '2023-12-19 04:44:39', '2023-12-19 04:44:39'),
(22, 13, 13, '2023-12-19 04:46:19', '2023-12-19 04:46:19'),
(23, 11, 19, '2023-12-19 04:46:19', '2023-12-19 04:46:19'),
(25, 3, 3, '2023-12-19 04:46:19', '2023-12-19 04:46:19'),
(27, 6, 8, '2023-12-19 04:46:19', '2023-12-19 04:46:19'),
(28, 11, 17, '2023-12-19 04:46:19', '2023-12-19 04:46:19'),
(30, 19, 18, '2023-12-19 04:46:20', '2023-12-19 04:46:20'),
(31, 21, 7, '2023-12-19 04:46:20', '2023-12-19 04:46:20'),
(32, 16, 3, '2023-12-19 04:46:20', '2023-12-19 04:46:20'),
(33, 11, 10, '2023-12-19 04:46:20', '2023-12-19 04:46:20'),
(34, 10, 16, '2023-12-19 04:46:20', '2023-12-19 04:46:20'),
(35, 7, 7, '2023-12-19 04:46:20', '2023-12-19 04:46:20'),
(36, 17, 17, '2023-12-19 04:46:20', '2023-12-19 04:46:20'),
(37, 15, 8, '2023-12-19 04:46:20', '2023-12-19 04:46:20'),
(38, 21, 11, '2023-12-19 04:46:20', '2023-12-19 04:46:20'),
(39, 8, 13, '2023-12-19 04:46:20', '2023-12-19 04:46:20'),
(40, 13, 4, '2023-12-19 04:46:20', '2023-12-19 04:46:20'),
(41, 20, 5, '2023-12-19 04:46:28', '2023-12-19 04:46:28'),
(43, 15, 3, '2023-12-19 04:46:28', '2023-12-19 04:46:28'),
(44, 4, 14, '2023-12-19 04:46:28', '2023-12-19 04:46:28'),
(45, 13, 10, '2023-12-19 04:46:28', '2023-12-19 04:46:28'),
(46, 21, 2, '2023-12-19 04:46:28', '2023-12-19 04:46:28'),
(47, 10, 4, '2023-12-19 04:46:28', '2023-12-19 04:46:28'),
(49, 8, 16, '2023-12-19 04:46:28', '2023-12-19 04:46:28'),
(50, 9, 11, '2023-12-19 04:46:28', '2023-12-19 04:46:28'),
(52, 10, 19, '2023-12-19 04:46:28', '2023-12-19 04:46:28'),
(53, 6, 4, '2023-12-19 04:46:29', '2023-12-19 04:46:29'),
(54, 18, 17, '2023-12-19 04:46:29', '2023-12-19 04:46:29'),
(55, 2, 16, '2023-12-19 04:46:29', '2023-12-19 04:46:29'),
(56, 11, 16, '2023-12-19 04:46:29', '2023-12-19 04:46:29'),
(57, 7, 4, '2023-12-19 04:46:29', '2023-12-19 04:46:29'),
(58, 1, 7, '2023-12-19 04:46:29', '2023-12-19 04:46:29'),
(60, 9, 20, '2023-12-19 04:46:29', '2023-12-19 04:46:29'),
(61, 25, 25, '2023-12-19 04:47:16', '2023-12-19 04:47:16'),
(62, 14, 28, '2023-12-19 04:47:16', '2023-12-19 04:47:16'),
(64, 35, 35, '2023-12-19 04:47:16', '2023-12-19 04:47:16'),
(65, 29, 31, '2023-12-19 04:47:16', '2023-12-19 04:47:16'),
(66, 12, 8, '2023-12-19 04:47:17', '2023-12-19 04:47:17'),
(67, 22, 25, '2023-12-19 04:47:17', '2023-12-19 04:47:17'),
(68, 35, 24, '2023-12-19 04:47:17', '2023-12-19 04:47:17'),
(69, 38, 17, '2023-12-19 04:47:17', '2023-12-19 04:47:17'),
(70, 38, 33, '2023-12-19 04:47:17', '2023-12-19 04:47:17'),
(72, 1, 19, '2023-12-19 04:47:17', '2023-12-19 04:47:17'),
(73, 25, 30, '2023-12-19 04:47:17', '2023-12-19 04:47:17'),
(75, 7, 23, '2023-12-19 04:47:17', '2023-12-19 04:47:17'),
(76, 34, 24, '2023-12-19 04:47:17', '2023-12-19 04:47:17'),
(77, 32, 13, '2023-12-19 04:47:17', '2023-12-19 04:47:17'),
(79, 26, 32, '2023-12-19 04:47:17', '2023-12-19 04:47:17'),
(80, 19, 28, '2023-12-19 04:47:17', '2023-12-19 04:47:17'),
(81, 51, 30, '2023-12-19 04:47:30', '2023-12-19 04:47:30'),
(82, 7, 29, '2023-12-19 04:47:30', '2023-12-19 04:47:30'),
(83, 31, 37, '2023-12-19 04:47:30', '2023-12-19 04:47:30'),
(84, 45, 39, '2023-12-19 04:47:30', '2023-12-19 04:47:30'),
(85, 51, 56, '2023-12-19 04:47:30', '2023-12-19 04:47:30'),
(86, 59, 1, '2023-12-19 04:47:30', '2023-12-19 04:47:30'),
(87, 44, 1, '2023-12-19 04:47:30', '2023-12-19 04:47:30'),
(88, 7, 43, '2023-12-19 04:47:30', '2023-12-19 04:47:30'),
(89, 9, 33, '2023-12-19 04:47:30', '2023-12-19 04:47:30'),
(90, 44, 44, '2023-12-19 04:47:30', '2023-12-19 04:47:30'),
(91, 18, 37, '2023-12-19 04:47:30', '2023-12-19 04:47:30'),
(92, 55, 2, '2023-12-19 04:47:31', '2023-12-19 04:47:31'),
(93, 8, 36, '2023-12-19 04:47:31', '2023-12-19 04:47:31'),
(94, 5, 58, '2023-12-19 04:47:31', '2023-12-19 04:47:31'),
(95, 35, 22, '2023-12-19 04:47:31', '2023-12-19 04:47:31'),
(96, 51, 41, '2023-12-19 04:47:31', '2023-12-19 04:47:31'),
(98, 11, 19, '2023-12-19 04:47:31', '2023-12-19 04:47:31'),
(99, 20, 61, '2023-12-19 04:47:31', '2023-12-19 04:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `send_requests`
--

CREATE TABLE `send_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user1_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user2_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `send_requests`
--

INSERT INTO `send_requests` (`id`, `user1_id`, `user2_id`, `created_at`, `updated_at`) VALUES
(10, 1, 57, '2023-12-19 05:05:23', '2023-12-19 05:05:23'),
(11, 1, 3, '2023-12-19 05:52:03', '2023-12-19 05:52:03'),
(13, 1, 27, '2023-12-19 06:21:17', '2023-12-19 06:21:17'),
(14, 1, 2, '2023-12-19 06:22:16', '2023-12-19 06:22:16'),
(15, 1, 6, '2023-12-19 06:23:02', '2023-12-19 06:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shayan Ahmad', 'shayan@gmail.com', NULL, '$2y$10$qXV1.YJdssufwefntb0Mm.ODotzBAWSv9tWX7OdqAVZ0ufBTu/VDm', NULL, NULL, NULL, NULL, '2023-12-19 04:44:05', '2023-12-19 04:44:05'),
(2, 'Dr. Marc Bauch PhD', 'ukshlerin@example.org', NULL, '$2y$10$U8A1.7qPJNLYZ0qeeB7fee4fOkK5w9FAJdFbxGbiHIuU5eunAIbOC', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Javier Murazik Jr.', 'fheaney@example.com', NULL, '$2y$10$8DglVZY596/4fPbki7inmugGP00azEtMg8pVubdKMyqNSo9NbWYxi', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Tiara O\'Kon', 'belle76@example.com', NULL, '$2y$10$5.LHb4ceJ50BgJ9oEE9GQ.Ms0uMb1etiM0mULgrekfVSA4IZpMBTG', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Lily Dibbert', 'mcdermott.damien@example.com', NULL, '$2y$10$HmaBc6Z0oan7sf20exbFW.pDuP3y/Tu3JHCyTKb20RqYilwxd0jZC', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Prof. Aylin Lemke DDS', 'dmitchell@example.net', NULL, '$2y$10$kaXU4SGO3F7dq77tG1Zz5.gNimHw4Y.TXylb2bQw58KGh5ZV5VESO', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Will Yost', 'carol57@example.org', NULL, '$2y$10$mZZ0dM.jYCLfscUnFD2QmuEHpAAB0UPD9lQ6px4Y7Up3H0EWF3r76', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Sammy Balistreri', 'daniella51@example.net', NULL, '$2y$10$5GDJ9ao4EJLv/o5EfJu0neoc.CTlRLC5ewbXC5CBUHVPIhAmNvRgG', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Rasheed Rolfson', 'ross03@example.org', NULL, '$2y$10$beG0eJyGb1xHGsYOkgIsgOcd5IZBO8GSDjf/QRvwFIUcneY/xwqr6', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Mr. Hipolito Hackett', 'mfadel@example.org', NULL, '$2y$10$LqbP1fr0oiBPgAvFZZIPjOc4AnWGfLyLSPQVRpMxMH2nUat7ej7OO', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Doug Buckridge', 'stark.coty@example.org', NULL, '$2y$10$Wnbc8rHQj80isGw4txX4TO8fwtMBLJpoK4.15VA/UstKZmc3uaH9i', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Jimmy Kulas DDS', 'keebler.ronny@example.org', NULL, '$2y$10$pwiaSG45/3KKVYNazyt8s.TmQtL0Id/LvCJy7PUq69Kwexac9XnRq', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Mariano Streich', 'kaya.bednar@example.org', NULL, '$2y$10$vy/eaGnpxOIrRqbVv95hUuFZFX111s0cWU7cBQIDAhBf7ixQ5kzFq', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Chauncey Quitzon', 'carley06@example.com', NULL, '$2y$10$kVIxHEBssfEPjx.NatRbwejJA5BwV7jMezBdRTUDqpPFaI56AG26G', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Miss Cynthia Quigley I', 'humberto37@example.net', NULL, '$2y$10$CvNsYsYvhAYgubtEYn3F7OBqIpS.ghk9/.kIq1xcd8bF3yQggYHEW', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Mr. Alexandre Ziemann', 'coy93@example.org', NULL, '$2y$10$.KHTtRO7vUGuBToIiClpV.ABO9IfINvhCAbzBNJTS0oE3q8HwbNMi', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Devante Moen', 'dking@example.net', NULL, '$2y$10$VNR1pxgJCfI.pNV5OkXJNuqTI8dzc0xsegva6K1IATXyflbcAZsyG', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Stefan Fay', 'ondricka.muriel@example.net', NULL, '$2y$10$WzS4IVB7/KRjttowg5hdVu8KAByhnotvRIWDFMQbU6/6XFNXzuSgK', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Madalyn Corwin III', 'hester.cronin@example.org', NULL, '$2y$10$2vWWWn5UHlDh5ZGR6ttaW.xmCXlPMTci3ojDuf.xMzYXjrP16vSZG', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Estella Jones', 'paris.cole@example.org', NULL, '$2y$10$SjOtvK3sU6UFkagb2QGjbOW9cE2GRCItFRsrUyg6RiYEY/5CHRtwq', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Prof. Maud Donnelly Sr.', 'anita.brekke@example.net', NULL, '$2y$10$ZfHRq8FYubHrLrTQOzYKieqTaY7/s30Iif5EeThyd1xMRkKIY5UCa', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Caitlyn Considine', 'greenfelder.willow@example.net', NULL, '$2y$10$7xQMKqonJanLtvPs6EKDkOTsKHKjZmOBKSuVhDwm3eNU/zWaDSFcS', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Daphney Oberbrunner', 'eldon45@example.org', NULL, '$2y$10$PxwfxE5Qq38a0omprszh0O9VFszos6bbA1LPhVBXpZaTwLrWJl5Au', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Prof. Yasmine Kub I', 'watsica.leatha@example.org', NULL, '$2y$10$aawsgoMy91afz3nlKs/3b.PQVpK48sK8knrG.kWtLySLNCb678QC2', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Monserrate Mills V', 'feil.carmine@example.org', NULL, '$2y$10$ADKGwdiV9EhDIj15DssW7elzwX4r.LTSiBIjBw3SFi0zzmGCA2oE6', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Terry Gusikowski', 'boehm.stevie@example.com', NULL, '$2y$10$DV2PMtXNClTCtbA4rFMAy.JrE4Ktz0LCghMjirObbkNvqoZu0wqqW', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Onie Harber', 'zora.wuckert@example.net', NULL, '$2y$10$BdTdy65fYvQRX70QS8Fefe6An0kK98sdgBRdCYn.2bOpzZj4KqAMi', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Chanelle Jacobs', 'iparker@example.com', NULL, '$2y$10$53p9CZbSD/ZwLScwplRKe.dmlV02Uh3.TvYDSuDcQL33/jXHZxXQm', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Stella Lowe', 'price.denis@example.net', NULL, '$2y$10$WFfiE87Qop6DYL12cF/2s.9aZVkGXck5xDZTm/ukhjBFbXvrPE7Iu', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Prof. Mariano Torphy', 'yost.alia@example.com', NULL, '$2y$10$b9SUz.MjcSDEEN5.9KiMdua9TCHq1q4TrZ.Ah7Jbwt.z3YV0h67Pe', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Assunta Graham', 'wgraham@example.org', NULL, '$2y$10$ZNDXAVma7g3jXYFyj.4dNuTgTEMye8m2l2F6P7zuncf5hK7wxPeh6', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Dr. Geoffrey Reichert', 'curtis.stracke@example.net', NULL, '$2y$10$JjQo5zwKRqGCGTEprzprNuoyHiGlYcqMGMFYgTiK88AOhxiqsxw4.', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Myrtle Yundt', 'turner.maye@example.net', NULL, '$2y$10$EoPqUJsyMjuKt.0T/inYe.tWPE3nUIJJ2WJFkzIFvUHAm/GcYagoG', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Skyla Cassin', 'carroll.earlene@example.org', NULL, '$2y$10$Hcm6q4qaF2BdPk1xVoIrQuNC..Pi1czpJk.xsrs2pykQ1/4DR.KMm', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Dr. Mallory Murazik', 'beatty.patrick@example.com', NULL, '$2y$10$yBsXKwdkPrf2Ken8Ct/4DeZYa.ZN6Jrw8HOKQFbswV3oMxJx1SgQ2', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Prof. Kayleigh Runolfsdottir', 'white.candice@example.com', NULL, '$2y$10$IeFHeYuAfaDD0JKidhV3MuShSyb3UQXfl05B359i0f8MofwAKJSnC', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Destini Abshire', 'gberge@example.net', NULL, '$2y$10$M5goAX1VzAINYso6JaF/g.3GOI6F5/px9eeXxD4lBSwtfRnJrHAzK', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Frida Larson', 'meredith.okeefe@example.com', NULL, '$2y$10$VdClQus0hTuMoFqQlCGLhuOeFM6N1V4sYIjIE47OO64jVvUAWecTy', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Cloyd Kuvalis', 'dino40@example.com', NULL, '$2y$10$G3ACk34ev1c/tK6kiZPyweMaRiGZgW8EnDO/jeMZDPtDiGeOXoH6e', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Angelina Ebert', 'jaron.johnston@example.net', NULL, '$2y$10$nDHcWEe.dmQy22b1Fk3vxO9aJrXCdCMdHqAZW/KuQs1jYM9xoIXVK', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Prof. Beryl Schaden', 'jerome20@example.org', NULL, '$2y$10$P0OiFcnuGMCGXq5nSXSn4uE84y4siJVLfiH/tbqmmMG07oAiNnWKO', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Emie Kihn', 'dereck.carter@example.com', NULL, '$2y$10$VZ/9psg6fULDAA2yS1plEu6jWUC82HcPE/FuIeIc/K/d/FgOZv2X.', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Cleve Konopelski IV', 'osatterfield@example.com', NULL, '$2y$10$a0wyfPwkBLXRQW4YZflHSe2hjMLEc9rTKE1abV/PUcbGU257VMjeW', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'Fleta Ondricka', 'itzel60@example.com', NULL, '$2y$10$/GEO99EEm2S.29RiPOdwcubqhHZS9NrjOtHylAuc6ML1IA14xs./W', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Breanna Quitzon IV', 'dallas.windler@example.org', NULL, '$2y$10$zdi6FImteLkFxHL/ZfXH9utcrjl8dPFrpu1KxP29AVYvCxyreSOh2', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Fannie Lockman', 'carter.champlin@example.net', NULL, '$2y$10$hSP6go3V7/usgWNA/cOLw.HR/ne63XiKs4qAacGN6HlFtlREaP2CC', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Alexys Reynolds', 'jaylin.crist@example.org', NULL, '$2y$10$ip2mGd2qLvIMvzA6yDKeP.mywS5tq0Xpuxx6hMjQQ8s5bF5ATx4gC', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Mrs. Alyce Hintz', 'rocio.leannon@example.org', NULL, '$2y$10$kf5YcH1MaqBNBCKYRy7ExOj7AyZz6RDikIvzytxSSbdM/F1NLdm1i', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Stephany Cole I', 'lehner.arlo@example.com', NULL, '$2y$10$dypQbtsnz/rJICd20s9B..nUd477ilu3RUBwwFqaOZ6aQ6WQrEah.', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Dr. Gonzalo Marvin I', 'jaskolski.sim@example.com', NULL, '$2y$10$YVH3KpQWOw5CahYgjUG6F.VwmwY7YCGp6E8CERc.o6aON/efKIjvu', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Miss Marisol Schroeder', 'nick97@example.org', NULL, '$2y$10$Ra9.rrs9J/oW9odfc13If..I4e2UTSY1NJh2zVdTxAQx64lEk2ofy', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Madelyn Runte', 'fausto.gutkowski@example.com', NULL, '$2y$10$15yDtRKli4b8H6BWDAv6Nufzbww15cxYasRQCU0gGriEimRKa.42C', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Ransom Dickens', 'qmante@example.net', NULL, '$2y$10$g3X3L8lmLIG3DI.ZferA9.7DaUQJceazUIKPwtO5D2U8.Hyypgoau', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Mrs. Myrtle Mertz II', 'leffler.dahlia@example.com', NULL, '$2y$10$otOGg.uE9LKcf/TLi/.9ieRqiltUXXIBrfZDt.i/LRcDJdwj5uqFq', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'Scotty Stehr', 'tito.nolan@example.com', NULL, '$2y$10$epM9wSFYCbyA6jFN69L8KOWXxk75y9JUErrCEQOybBXE1ROG9Lk9e', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Bernita Kerluke', 'ghaley@example.com', NULL, '$2y$10$xmqScHen5tfvPdkGtwbnYu4Y.WZk3.Tj8PEKMbwJerDfvLk7yQLne', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Dr. Sadye Murphy Sr.', 'iupton@example.net', NULL, '$2y$10$pGhRN2RHY.9S5kSd7B3xnO.NIrhjP2QMyfqjhGVQc.QBCcIjmptmK', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Henriette Leuschke', 'bruen.warren@example.com', NULL, '$2y$10$9T2CLALZUEfuMA5lPgH4TuQv6WzFtAEWmAWM6kyrOFXIlJSS8PUCe', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'Joelle Osinski DDS', 'tremblay.dixie@example.net', NULL, '$2y$10$Gq/zfyBXhs/LM5k94ZBDHe7ccTxJzfKy.ssC7tVR/bZRjnnwYuJMO', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'Aurelie Weissnat', 'elvis99@example.net', NULL, '$2y$10$RZuNM98XaRWFSeA4JfWsTOH4m.ycmldo8k.HFM6fQH6o6i5rQ8aXe', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Zita Haag', 'jsteuber@example.org', NULL, '$2y$10$skLxbgkOuPSFTroPbr01UeNuzAlbEiVy1QH/5LKuDH9isj.cdVzye', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `connection_in_commoms`
--
ALTER TABLE `connection_in_commoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `recieved_requests`
--
ALTER TABLE `recieved_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_requests`
--
ALTER TABLE `send_requests`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `connections`
--
ALTER TABLE `connections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `connection_in_commoms`
--
ALTER TABLE `connection_in_commoms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recieved_requests`
--
ALTER TABLE `recieved_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `send_requests`
--
ALTER TABLE `send_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
