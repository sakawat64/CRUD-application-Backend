-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2021 at 01:06 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_01_060430_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Dolore autem odit quidem unde aut odit.', 'Quaerat in reiciendis veritatis non vitae consectetur accusantium laudantium. Ut voluptates error itaque occaecati ullam dolore illo. Quos sint aut laudantium reiciendis nulla. Quidem accusantium eum suscipit. Expedita et maxime enim atque.', 791, 'https://via.placeholder.com/640x480.png/005544?text=ut', '2021-03-02 22:53:40', '2021-03-02 22:53:40'),
(2, 'Sapiente consequatur velit exercitationem recusandae maiores.', 'Nemo et adipisci voluptas ea ea. Amet et et aut ut cum magnam consequuntur. Maiores eos et vero ipsum totam. Voluptatem qui commodi ex assumenda.', 970, 'https://via.placeholder.com/640x480.png/00ee55?text=facilis', '2021-03-02 22:53:40', '2021-03-02 22:53:40'),
(3, 'In quo perspiciatis numquam vel temporibus ratione doloremque.', 'Facere et aut harum voluptas velit. Necessitatibus aperiam veniam occaecati blanditiis. Voluptate amet nihil architecto sed quibusdam impedit.', 621, 'https://via.placeholder.com/640x480.png/0033ee?text=voluptas', '2021-03-02 22:53:40', '2021-03-02 22:53:40'),
(4, 'Natus quo inventore libero vero magni.', 'Molestiae ipsa quia non neque vel. Est minus quidem in quo et quia ut dolor.', 873, 'https://via.placeholder.com/640x480.png/00dd77?text=rerum', '2021-03-02 22:53:40', '2021-03-02 22:53:40'),
(5, 'Doloribus molestias reprehenderit eos.', 'Ea eaque exercitationem qui iure. Odio soluta sapiente similique perspiciatis animi qui. Deleniti et atque nobis. Illum culpa qui voluptatem et mollitia non quo vitae.', 921, 'https://via.placeholder.com/640x480.png/000011?text=enim', '2021-03-02 22:53:40', '2021-03-02 22:53:40'),
(6, 'Dolores omnis quas ut quia placeat est consequuntur.', 'Voluptatem praesentium sequi quidem quod at sit voluptas quis. Quia tenetur deserunt assumenda non dolores officiis. Quis eligendi dolor aut illum magni quam vero.', 929, 'https://via.placeholder.com/640x480.png/0000ee?text=omnis', '2021-03-02 22:53:40', '2021-03-02 22:53:40'),
(7, 'Deserunt quis a dolores dolores qui veritatis labore.', 'Iure laborum consequatur quas ea et possimus animi. Magnam consequuntur vitae voluptatem ea ut rerum expedita. Assumenda aut officiis qui. Nostrum aut nostrum perspiciatis omnis.', 803, 'https://via.placeholder.com/640x480.png/00bbdd?text=nihil', '2021-03-02 22:53:40', '2021-03-02 22:53:40'),
(8, 'Dolores voluptates consectetur velit eveniet nam.', 'Facere omnis numquam nisi harum. Porro illo dolore ut debitis sint. Dolores vel qui nisi doloribus deserunt.', 534, 'https://via.placeholder.com/640x480.png/00ffaa?text=perferendis', '2021-03-02 22:53:40', '2021-03-02 22:53:40'),
(9, 'Et laboriosam praesentium reiciendis voluptate.', 'Iste tempore harum ea veritatis ipsum. Quis harum quo saepe nostrum non nobis sit.', 51, 'https://via.placeholder.com/640x480.png/0000bb?text=impedit', '2021-03-02 22:53:40', '2021-03-02 23:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Sanford Kautzer', 'hills.dora@example.com', '2021-03-02 22:53:55', '$2y$10$14AcW3KnT3cuUQE1ObgAReuFRMMZ8EuB.GaXfl0/VsF0VnKpdLQ2a', 'UH6NJLgXVS', '2021-03-02 22:53:56', '2021-03-02 22:53:56'),
(2, 'Alta Farrell', 'nlind@example.org', '2021-03-02 22:53:56', '$2y$10$fZ/GNcwSCwk.lY13iSToFuoEzq.Tlpj64oreFG0jkqavlHZZO7mEq', 'GqIfZlGlvE', '2021-03-02 22:53:56', '2021-03-02 22:53:56'),
(3, 'Sakawat Hossain Rony', 'shrony06@gmail.com', NULL, '$2y$10$cd1yY8FoNpbl8Z96CQj9RuPkOwTnpBmLoAoM5l9K8fzfHnkeKH9GC', NULL, '2021-03-02 23:19:09', '2021-03-02 23:19:09');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
