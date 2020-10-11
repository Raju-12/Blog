-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2020 at 01:41 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `superblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `created_at`, `updated_at`) VALUES
(1, 'Virgie Franecki IV', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(2, 'Kian Tremblay MD', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(3, 'Earnestine Altenwerth', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(4, 'Godfrey Padberg', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(5, 'Dr. Roderick Fritsch', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(6, 'Ladarius Cassin', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(7, 'Nova Veum', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(8, 'Meaghan Stamm Sr.', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(9, 'Emmy Murazik MD', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(10, 'Alberto Rau', '2020-10-03 08:12:33', '2020-10-03 08:12:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_10_03_135717_create_categories_table', 1),
(4, '2020_10_03_140008_create_posts_table', 1),
(5, '2020_10_03_140045_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(10) UNSIGNED DEFAULT NULL,
  `comment_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `comment_id`, `user_id`, `title`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 6, 4, 7, 'Sed dolore ipsa et dolorem sint quaerat commodi expedita.', 'Qui voluptatem et unde commodi. Rerum accusamus culpa dolorem. Ut assumenda et ab beatae. Quae amet quis autem.', 'https://lorempixel.com/640/480/?95041', '2020-10-03 08:12:32', '2020-10-03 08:12:32'),
(5, 3, 3, 9, 'Voluptate officia et impedit.', 'Ut ut laboriosam qui nisi cupiditate nam sed. Sapiente magnam dolorum numquam pariatur est dolor consectetur. Aperiam libero laudantium enim ut officia a.', 'https://lorempixel.com/640/480/?12102', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(6, 7, 3, 8, 'Et occaecati corrupti dolores aliquam veritatis nemo omnis deleniti.', 'Debitis fugit fuga expedita sunt aut iure. Voluptatum consectetur alias impedit omnis sit.', 'https://lorempixel.com/640/480/?65074', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(7, 3, 3, 5, 'Culpa et in sed.', 'Enim rerum iure quidem doloribus repellendus omnis in. Rerum et vel est dolores molestias. Sapiente non consequatur odio ex doloremque et.', 'https://lorempixel.com/640/480/?40180', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(8, 4, 5, 2, 'Facere numquam repellat eum.', 'Similique ut qui labore soluta dolorum doloribus autem. Quia et et minus voluptas amet nisi et rerum. Voluptas quam nam enim saepe corrupti alias ratione.', 'https://lorempixel.com/640/480/?20185', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(9, 10, 5, 1, 'Doloremque maiores in eum quasi numquam.', 'Nulla maiores dolorem voluptatem eum ipsam voluptate dolorem. Veritatis quibusdam consectetur atque explicabo. Quam commodi maxime debitis est voluptatem a facere. Voluptas consequatur saepe molestiae qui et animi.', 'https://lorempixel.com/640/480/?36272', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(11, 2, NULL, 11, 'ww', 'ss', '1601735975.jpeg', '2020-10-03 08:39:36', '2020-10-03 08:39:36'),
(12, 4, NULL, 11, 'q', 'bb', '1601736128.jpeg', '2020-10-03 08:42:08', '2020-10-03 08:42:08'),
(13, 9, NULL, 11, 'lorem', 'lorem lorem', '1601736165.jpeg', '2020-10-03 08:42:45', '2020-10-03 08:42:45'),
(14, 6, NULL, 11, 'Ecommerce', 'Qui voluptatem et unde commodi. Rerum accusamus culpa dolorem. Ut assumenda et ab beatae. Quae amet quis autem.Qui voluptatem et unde commodi. Rerum accusamus culpa dolorem. Ut assumenda et ab beatae. Quae amet quis autem.', '1601736272.jpeg', '2020-10-03 08:44:32', '2020-10-03 08:44:32'),
(15, 2, NULL, 11, 'LOrem ipsum', 'Qui voluptatem et unde commodi. Rerum accusamus culpa dolorem. Ut assumenda et ab beatae. Quae amet quis autem.', '1601736323.jpeg', '2020-10-03 08:45:23', '2020-10-03 08:45:23'),
(16, 2, NULL, 11, 'LOrem ipsum dolor', 'Qui voluptatem et unde commodi. Rerum accusamus culpa dolorem. Ut assumenda et ab beatae. Quae amet quis autem.Qui voluptatem et unde commodi. Rerum accusamus culpa dolorem. Ut assumenda et ab beatae. Quae amet quis autem.Qui voluptatem et unde commodi. Rerum accusamus culpa dolorem. Ut assumenda et ab beatae. Quae amet quis autem.', '1601736367.jpeg', '2020-10-03 08:46:07', '2020-10-03 08:46:07'),
(17, 1, NULL, 11, 'LOrem ipsum dolor', 'Qui voluptatem et unde commodi. Rerum accusamus culpa dolorem. Ut assumenda et ab beatae. Quae amet quis autem.', '1601736522.jpeg', '2020-10-03 08:48:42', '2020-10-03 08:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Elisabeth Feil', 'haskell.king@example.net', '2020-10-03 08:12:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q89mqrHJn1', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(2, 'Desmond Schmeler', 'deontae.trantow@example.com', '2020-10-03 08:12:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FVWNlhGd2F', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(3, 'Mr. Rowland Fadel', 'macey.kuhn@example.com', '2020-10-03 08:12:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ypdgNDEIU4', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(4, 'Luciano Koss', 'warren34@example.com', '2020-10-03 08:12:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0biMOVuD6Q', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(5, 'Earnestine Lowe III', 'kuhic.pedro@example.com', '2020-10-03 08:12:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nvJfun3nUf', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(6, 'Murl Quitzon V', 'enrico.beier@example.org', '2020-10-03 08:12:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'giBCQgWqHu', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(7, 'Letha Wiza', 'trempel@example.net', '2020-10-03 08:12:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KoDYnKpMc4', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(8, 'Prof. Carlos Kris DDS', 'schuster.weston@example.net', '2020-10-03 08:12:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5HSUm37m66', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(9, 'Mr. Fausto Hoppe', 'jessy15@example.org', '2020-10-03 08:12:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lYIi8ydr9c', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(10, 'Althea Carroll', 'kirlin.rusty@example.org', '2020-10-03 08:12:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lDs2toAbYm', '2020-10-03 08:12:33', '2020-10-03 08:12:33'),
(11, 'rr', 'abc@gmail.com', NULL, '$2y$10$Y2em/ywiNKK6hvZqsvDjxewVSaDmplgcmQqcwvdIcSuoF9ZSaxQga', NULL, '2020-10-03 08:37:22', '2020-10-03 08:37:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
