-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 22, 2024 alle 16:11
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login2_laravel`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `failed_jobs`
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
-- Struttura della tabella `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_17_124217_create_products_table', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `photo` varchar(300) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `photo`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'dolore2', 'Facilis quisquam et distinctio ut pariatur.', 377.25, 'photos/product5.jpg', 2, '2024-05-21 15:27:51', '2024-05-22 10:59:44'),
(6, 'libero', 'Et amet omnis laborum voluptate aliquam consectetur ad.', 211.47, 'photos/product6.jpg', 2, '2024-05-21 15:27:51', '2024-05-21 15:27:51'),
(7, 'sunt', 'Recusandae totam in in quaerat dolore omnis.', 183.66, 'photos/product7.jpg', 2, '2024-05-21 15:27:51', '2024-05-21 15:27:51'),
(8, 'id', 'Cumque pariatur doloremque aspernatur cumque.', 360.30, 'photos/product8.jpg', 2, '2024-05-21 15:27:51', '2024-05-21 15:27:51'),
(9, 'alias', 'Voluptatem expedita fugiat atque consequuntur et ad neque.', 86.90, 'photos/product9.jpg', 2, '2024-05-21 15:27:51', '2024-05-21 15:27:51'),
(10, 'voluptas', 'Facilis sapiente odio quia dolor omnis.', 11.31, 'photos/product10.jpg', 2, '2024-05-21 15:27:51', '2024-05-21 15:27:51'),
(11, 'prova', 'prova', 20.00, NULL, 2, '2024-05-21 19:42:58', '2024-05-21 19:42:58'),
(12, 'sara', 'prova', 20.00, NULL, 4, '2024-05-21 19:59:25', '2024-05-21 19:59:25'),
(13, 'ifoa', 'ifoa', 20.00, NULL, 2, '2024-05-21 20:08:35', '2024-05-21 20:08:35'),
(14, 'prova', 'prova', 20.00, NULL, 2, '2024-05-22 10:24:07', '2024-05-22 10:24:07'),
(15, 'prova', 'prova', 20.00, NULL, 9, '2024-05-22 11:27:31', '2024-05-22 11:27:31'),
(16, 'p', 'p', 20.00, NULL, 9, '2024-05-22 11:33:41', '2024-05-22 11:33:41');

-- --------------------------------------------------------

--
-- Struttura della tabella `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('tnHoPO6ADhPmgOlruUpfIPgRjL68Gn2bjfIel71X', 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTzJIbWZHZGh4OWlSZk8zNmZraEFMb1NsY0c3QzU2Y2pmaHhJYmJyRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cz9wYWdlPTMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo5O30=', 1716384826);

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2024-05-21 15:27:51', '$2y$12$pqtmxcoHzeTdJGRd9F5L3.5Soc/Zbu2SwADhYDQi50dIQ9tSDQXb.', 'HXjwlH8ZoD', '2024-05-21 15:27:51', '2024-05-21 15:27:51'),
(2, 'sara', 'sara.ferrantini@gmail.com', NULL, '$2y$12$d/gL3CWwl6SIsbuA5yBCZeDeLqiv87t4xgMdWloxnNpBQnCz1hhYa', 'HueytayWfFTj0Qiq7mnKWoAYZeVsngJaXGNGOWM5jX6OFaOMY2RVYOVxjGue', '2024-05-21 19:41:46', '2024-05-21 19:41:46'),
(3, 'sara', 'sara.ferrante@gmail.com', NULL, '$2y$12$X1pP1iRozlnL6odAPsZV.OkoxpwPKuhuRY8XS8ifCiOku8dF7Pa0O', NULL, '2024-05-21 19:48:05', '2024-05-21 19:48:05'),
(4, 'brienne', 'bri@gmail.com', NULL, '$2y$12$qGxgTrGR.zRMWEXcRPHPle5rp7cstHojp5klKrBL0B78mWw/cT.fu', NULL, '2024-05-21 19:59:03', '2024-05-21 19:59:03'),
(5, 'pino', 'pino@gmail.com', NULL, '$2y$12$RWrzkWetrOmsnuS.jY2V9.nKX5BUKiVZ.4jJcKNop/Lo.uM.ZWpO6', NULL, '2024-05-21 20:10:21', '2024-05-21 20:10:21'),
(6, 'riccardo', 'riccardo@adorni.com', NULL, '$2y$12$PqeCX8Q8h1fWW2vbDogi4.SNzQHmiY./yLrYSJO/.O0PL/LFApUcK', NULL, '2024-05-22 07:43:44', '2024-05-22 07:43:44'),
(7, 'prova', 'prova@gmail.com', NULL, '$2y$12$U9oLQBumlh2W.f9J0DSoDOObkIMerByCbVI7FLvX8HyZCUJKZyywW', NULL, '2024-05-22 10:25:37', '2024-05-22 10:25:37'),
(8, 'serena', 'serena.siliberti@gmail.com', NULL, '$2y$12$TSRoBJqtqDeiozwyKSc2MulG7y6KNMblyXtIjzWkO6yOjGjHMqBJ6', NULL, '2024-05-22 11:00:50', '2024-05-22 11:00:50'),
(9, 'ifoa', 'ifoa@gmail.com', NULL, '$2y$12$YFCo3lL853TGEmxGMT85AuFwUtSAIYE9ESiw9V9x5KMrety2OxnXi', NULL, '2024-05-22 11:27:08', '2024-05-22 11:27:08');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indici per le tabelle `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indici per le tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indici per le tabelle `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indici per le tabelle `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indici per le tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
