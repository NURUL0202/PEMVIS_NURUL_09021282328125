-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2025 at 08:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4_project_db`
--

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` enum('income','expense') NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `date`, `category`, `description`, `type`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-01-01', 'Gaji', 'Gaji Bulan Ini', 'income', 30000000.00, '2025-12-03 04:54:46', '2025-12-03 08:46:36'),
(3, 1, '2025-01-02', 'Belanja', 'Belanja Bulanan', 'expense', 6000000.00, '2025-12-03 09:18:53', '2025-12-03 10:22:14'),
(4, 1, '2025-02-01', 'Gaji ', 'Gaji Bulan Ini', 'income', 30000000.00, '2025-12-03 10:11:31', '2025-12-03 10:11:31'),
(5, 1, '2025-02-02', 'Birthday', 'Acara perayaan ulang tahun', 'expense', 7000000.00, '2025-12-03 10:13:14', '2025-12-03 10:13:14'),
(6, 1, '2025-03-01', 'Gaji', 'Gaji Bulan Ini', 'income', 30000000.00, '2025-12-03 10:43:07', '2025-12-03 10:43:07'),
(7, 1, '2025-03-10', 'Gaji 2', 'Gaji Kerja sampingan', 'income', 8000000.00, '2025-12-03 10:44:16', '2025-12-03 10:44:16'),
(8, 1, '2025-03-02', 'Belanja', 'Belanja Bulanan', 'expense', 7000000.00, '2025-12-03 10:45:12', '2025-12-03 10:45:12'),
(9, 1, '2025-03-12', 'Belanja Pakaian', 'Reward Hasil Kerja part time', 'expense', 3000000.00, '2025-12-03 10:46:10', '2025-12-03 10:46:10'),
(10, 1, '2025-02-05', 'Belanja', 'Belanja Bulanan', 'expense', 7000000.00, '2025-12-03 10:47:23', '2025-12-03 10:47:23'),
(12, 3, '2025-01-01', 'Gaji', 'Gaji Bulan Ini', 'income', 100000000.00, '2025-12-03 21:39:04', '2025-12-03 21:39:04'),
(13, 3, '2025-01-02', 'Belanja ', 'Belanja Bulan Ini', 'expense', 55000000.00, '2025-12-03 21:39:54', '2025-12-03 21:39:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'abel', 'abel@gmail.com', '$2y$10$YQDSVpWxMVFOxyP/jpuTh.860Avm/BBfbODwENGC5gFugxoP4B9CC', '2025-10-22 06:48:29'),
(2, 'Nurul', 'nurul@gmail.com', '$2y$10$xf14FjLlN/LzAIYrIPVNyOf4GF4FFb2ZuCVZaiQ71dxSOYUDRVNZO', '2025-12-03 01:39:58'),
(3, 'Githa', 'ghita@gmail.com', '$2y$10$OjtVc6PDrjOyQFH7uB3C5uHU5VedOyBxefJjwsgjH0r2kv1RGoG4i', '2025-12-04 04:37:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
