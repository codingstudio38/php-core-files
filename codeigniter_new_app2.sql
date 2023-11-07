-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2023 at 08:47 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigniter_new_app2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `id` int(11) NOT NULL,
  `picture` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `isloggedin` varchar(1) DEFAULT NULL,
  `access` varchar(100) DEFAULT NULL,
  `user_agent` varchar(400) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(6, '2022-04-12-130822', 'App\\Database\\Migrations\\Usertbl', 'default', 'App', 1650036712, 1),
(7, '2022-04-13-021113', 'App\\Database\\Migrations\\Admintbl', 'default', 'App', 1650036712, 1),
(8, '2022-04-15-151607', 'App\\Database\\Migrations\\Userlogindetails', 'default', 'App', 1650036712, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `id` int(11) NOT NULL,
  `picture` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `email_verified` varchar(1) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `postoffice` varchar(250) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `state` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `address` varchar(350) DEFAULT NULL,
  `isloggedin` varchar(1) DEFAULT NULL,
  `access` varchar(100) DEFAULT NULL,
  `user_agent` varchar(400) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`id`, `picture`, `name`, `email`, `email_verified`, `phone`, `password`, `dob`, `gender`, `pincode`, `postoffice`, `district`, `state`, `country`, `address`, `isloggedin`, `access`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, '20230330202701-87.png', 'Vidyut Mandal', 'vidyut.star006@gmail.com', '1', '2147483647', '$2y$10$dzMs6/gjoP5JHVmvTWIpiuYBbIXfAJGo5o5iVlz0K1RW2Mbq66/0e', '2022-04-15', 'Male', 751013, 'Regional Research Laboratory', 'Khorda', 'Odisha', 'India', 'jaydev vihar,b-2 first floor, oom graden', '0', 'approved', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '2022-04-14 18:30:00', '2023-03-30 14:57:01'),
(24, '20230326100244-54.gif', 'Bidyut Polosoft', 'administrator@gmail.com', NULL, '1234567890', '$2y$10$aCo7xRnOi/QgFa1.WuN5bOCXu6ZU2wCBDCOL5EIFq9NjXoKeIUb2C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 01:46:28', NULL),
(26, '20230326100310-49.jpg', 'Bidyut', 'administrator12@gmail.com', NULL, '1234567891', '$2y$10$aCo7xRnOi/QgFa1.WuN5bOCXu6ZU2wCBDCOL5EIFq9NjXoKeIUb2C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 01:46:28', NULL),
(32, '20230330202655-51.png', 'bhola', 'administrator15@gmail.com', NULL, '1234567833', '$2y$10$7KNk9ekbesJIn4O7f3woFeG5QkL5ODHDRG71fjOcDQGvzndFE4sk.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-28 02:04:57', '2023-03-30 14:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `user_login_details`
--

CREATE TABLE `user_login_details` (
  `id` int(11) NOT NULL,
  `login_id` int(10) DEFAULT NULL,
  `logintime` varchar(250) DEFAULT NULL,
  `logouttime` varchar(250) DEFAULT NULL,
  `system` varchar(350) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_login_details`
--

INSERT INTO `user_login_details` (`id`, `login_id`, `logintime`, `logouttime`, `system`, `created_at`) VALUES
(1, 1, '2022-04-15 21:10:14', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '2022-04-15 15:40:14'),
(2, 1, '2022-04-15 21:13:23', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '2022-04-15 15:43:23'),
(3, 1, '2022-04-15 21:13:56', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '2022-04-15 15:43:56'),
(4, 1, '2022-04-15 21:14:19', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '2022-04-15 15:44:19'),
(5, 1, '2022-04-16 09:15:39', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-16 03:45:39'),
(6, 1, '2022-04-16 09:24:47', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-16 03:54:47'),
(7, 1, '2022-04-16 09:30:40', '2022-04-16 09:50:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-16 04:20:30'),
(8, 1, '2022-04-16 20:43:33', '2022-04-16 20:53:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-16 15:23:59'),
(9, 1, '2022-04-16 20:54:16', '2022-04-16 20:55:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-16 15:25:22'),
(10, 1, '2022-04-16 20:59:05', '2022-04-16 21:07:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-16 15:37:51'),
(11, 1, '2022-04-16 21:08:01', '2022-04-16 21:08:06', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-16 15:38:06'),
(12, 1, '2022-04-17 12:32:26', '2022-04-17 14:32:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-17 09:02:09'),
(13, 1, '2022-04-17 14:32:15', '2022-04-17 14:33:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-17 09:03:22'),
(14, 1, '2022-04-17 14:33:35', '2022-04-17 14:33:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-17 09:03:42'),
(15, 1, '2022-04-17 14:33:45', '2022-04-17 14:33:48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-17 09:03:48'),
(16, 1, '2022-04-17 14:34:06', '2022-04-17 14:39:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-17 09:09:16'),
(17, 1, '2022-06-15 16:16:51', '2022-06-15 16:17:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.115 Safari/537.36', '2022-06-15 10:47:16'),
(18, 1, '2023-04-05 07:38:29', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-04-05 01:59:38'),
(19, 1, '2023-04-06 06:47:56', '2023-04-06 07:52:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-04-06 01:31:52'),
(20, 1, '2023-04-06 07:06:02', '2023-04-06 07:16:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-04-06 02:02:16'),
(21, 1, '2023-04-06 20:47:25', '2023-04-06 21:47:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '2023-04-06 15:33:47'),
(22, 1, '2023-04-06 21:50:03', '2023-04-06 21:55:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '2023-04-06 15:33:55'),
(23, 1, '2023-04-06 21:58:03', '2023-04-06 21:28:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '2023-04-06 15:34:28'),
(24, 1, '2023-04-07 06:36:45', '2023-04-07 06:18:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '2023-04-07 01:26:18'),
(25, 1, '2023-04-07 06:21:56', '2023-04-07 06:35:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '2023-04-07 01:28:35'),
(26, 1, '2023-04-07 06:38:58', '2023-04-07 07:01:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '2023-04-07 01:31:00'),
(27, 1, '2023-04-07 07:01:03', '2023-04-07 07:01:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '2023-04-07 01:31:13'),
(28, 1, '2023-04-07 07:01:16', '2023-04-07 07:33:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '2023-04-07 02:03:18'),
(29, 1, '2023-04-07 19:59:55', '2023-04-07 20:02:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '2023-04-07 14:32:40'),
(30, 1, '2023-05-03 06:46:25', '2023-05-03 06:47:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '2023-05-03 01:17:47'),
(31, 1, '2023-05-03 07:19:35', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '2023-05-03 01:49:35'),
(32, 1, '2023-05-04 07:14:34', '2023-05-04 07:30:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '2023-05-04 02:00:49'),
(33, 1, '2023-05-06 14:18:02', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-06 08:48:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login_details`
--
ALTER TABLE `user_login_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user_login_details`
--
ALTER TABLE `user_login_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
