-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2020 at 05:57 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website-sma-laravel`
--

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
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `kode` varchar(191) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `kode`, `nama`, `semester`, `created_at`, `updated_at`) VALUES
(1, 'M-001', 'Matematika Wajib', 'Ganjil', '2020-10-29 22:43:20', '0000-00-00 00:00:00'),
(2, 'B-001', 'Bahasa Indonesia', 'Ganjil', '2020-10-29 22:43:20', '0000-00-00 00:00:00'),
(3, 'E-001', 'Bahasa Inggris', 'Ganjil', '2020-10-30 09:03:11', '0000-00-00 00:00:00'),
(4, 'K-001', 'Bahasa Korea', 'Ganjil', '2020-10-30 09:03:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mapel_siswa`
--

CREATE TABLE `mapel_siswa` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel_siswa`
--

INSERT INTO `mapel_siswa` (`id`, `siswa_id`, `mapel_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 100, '2020-10-29 22:44:41', '0000-00-00 00:00:00'),
(2, 2, 2, 98, '2020-10-29 22:44:41', '0000-00-00 00:00:00'),
(3, 1, 1, 87, '2020-10-29 22:48:51', '0000-00-00 00:00:00'),
(4, 15, 1, 95, '2020-10-29 20:50:17', '2020-10-30 03:50:17'),
(5, 15, 2, 100, '2020-10-29 20:50:27', '2020-10-30 03:50:27'),
(6, 2, 3, 97, '2020-10-30 09:09:38', '0000-00-00 00:00:00'),
(7, 2, 4, 92, '2020-10-30 09:09:38', '2020-10-30 10:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_27_102542_create_siswa_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_depan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_belakang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `user_id`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `agama`, `alamat`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 0, 'Budi', 'Suteja', 'L', 'Islam', 'Jl. Merapi No. 99', NULL, NULL, '2020-10-28 09:14:06'),
(2, 0, 'Rachel', 'Indira', 'P', 'Islam', 'Jl. Pakubuwono XII No. 13B', 'rachel.jpg', NULL, '2020-10-29 07:11:29'),
(3, 0, 'I', 'Ketut Puja Anjasmara', 'L', 'Hindu', 'Jl. Giro No. 11', NULL, NULL, NULL),
(4, 0, 'Darrel', 'Stephenson', 'L', 'Kristen', 'Jl. Ir. Soekarno No. 49', NULL, NULL, NULL),
(5, 0, 'Ling', 'Xiaoyu', 'P', 'Konghuchu', 'Jl. Pegangsaan Timur No. 1', NULL, NULL, '2020-10-27 06:07:40'),
(6, 0, 'Patricia', 'Eleanoir', 'P', 'Katolik', 'Jl. Boulevard Timur Blok D10', 'default.jpg', '2020-10-27 06:10:31', '2020-10-29 17:33:16'),
(7, 0, 'Reihan', 'Nanda Ramadhan', 'L', 'Islam', 'Jl. Taska No. 9', 'regal.jpg', '2020-10-27 08:12:36', '2020-10-30 08:24:24'),
(9, 0, 'Ari', 'Kurniawan', 'L', 'Islam', 'Jl. Kemunir 93/D', NULL, '2020-10-29 07:50:15', '2020-10-29 07:50:15'),
(10, 5, 'Reyna', 'Dirgantara Mulyani', 'P', 'Islam', 'Jl. Ceri Blok D/30', NULL, '2020-10-29 08:15:05', '2020-10-29 08:15:05'),
(11, 7, 'Gio', 'Arthadinata', 'L', 'Islam', 'Jl. Veteran Barat No.233', 'gio.jpg', '2020-10-29 16:39:04', '2020-10-29 16:40:22'),
(12, 8, 'Regal', 'Antasena', 'L', 'Islam', 'Jl. Medan Merdeka Timur No.10', 'regal.jpg', '2020-10-29 16:56:33', '2020-10-29 16:56:44'),
(13, 10, 'Shuhua', 'Yeh', 'P', 'Islam', 'Jl. Bursa No.10', 'shuhua.jpg', '2020-10-29 19:10:06', '2020-10-29 19:10:35'),
(16, 16, 'Jono', NULL, NULL, NULL, NULL, NULL, '2020-10-30 07:27:41', '2020-10-30 07:27:41'),
(18, 18, 'Ubiana', 'Minatozaki', 'P', 'Kristen', 'Jl. Merapi Utara No. 299', 'ubi.jpg', '2020-10-30 07:52:06', '2020-10-30 08:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'siswa', 'Rachel', 'rachel@gmail.com', NULL, '$2y$10$pAwa4M30KqDJ8XqzHKIp7OVJId87kQ8SK.SlgA4eZhp2V7erhsmVa', 'KsjAcihMXFiQNU5FLfrtvcCHnpgVPEe02H4HVS9Y1GAEq9wx7ROkVd15HEfy', '2020-10-29 03:10:16', '2020-10-29 03:10:16'),
(2, 'admin', 'Reihan', 'reihan@gmail.com', NULL, '$2y$10$qa67NaLAW.LddM7wjfYBm.l.ozcg0fW.DTBbIp8K538trmJhdkvNO', 'HyzKXjq96Hpp1YuPszECBbWvGhDILxmKBL2VUI1QXpeYql2jyelfAHqv7fIU', '2020-10-29 07:34:35', '2020-10-29 07:34:35'),
(3, 'siswa', 'Reyna', 'reyna.dm@gmail.com', NULL, '$2y$10$4Fm/6wgUBCra0ZpspB8TeeqVTw8WHKwHOPewk6l/wBMC9PemRctgC', 'bxVvy1h37DoUE8onwnZQtP7PgcVi3M572G3dnQIXbUmEpse6h4aNsl05iLJ4', '2020-10-29 08:15:05', '2020-10-29 08:15:05'),
(4, 'siswa', 'Gio', 'gio@gmail.com', NULL, '$2y$10$SX5SspWGzB4R8/A55EWNLe/Kdplf5abqPsBL9TAQ/P3pXeJ8Jj4Vq', 'TyvCmNoTDuQ9PAc7SvwxkwKCwl0jjEjyqgF2mDRuGqC3gYodnqQUBQthhDin', '2020-10-29 16:39:04', '2020-10-29 16:39:04'),
(8, 'siswa', 'Regal', 'rg.sena@gmail.com', NULL, '$2y$10$5V8c.AteNneLjkAYw88M.uMJPo61c32KJPZRinUQXAS7BPpH3k7RO', '02t2szjO4lXDDLQ21uawEc3JCPfmTltbOKW0losqiw7ushw33xSWVdlRkhMJ', '2020-10-29 16:56:32', '2020-10-29 16:56:32'),
(10, 'siswa', 'Yeh', 'y.shuhua@gmail.com', NULL, '$2y$10$NRZyz3Q.i8UYV0ZqPzAcUOKWWP5NHAbWbRlKR1P.JmxwcI3dQSeWq', 'A1IOee9pFLWRopm3GGxUGefOIeY9sNnyOxagwgCPRb7oFQskmgKU22G93hsI', '2020-10-29 19:10:06', '2020-10-29 19:10:06'),
(16, 'siswa', 'Jono', 'jono@gmail.com', NULL, '$2y$10$l8wZFp/6jQJT6.yPUwxureXjG/L4oxehbj91WVMhMqK1I4o3SnlKa', '4ztPv54b3apU07UjxLdzj3OFrDrfFiDqPbcDswapy5I4fsLCswSGBsYfEGLh', '2020-10-30 07:27:41', '2020-10-30 07:27:41'),
(18, 'siswa', 'Ubiana', 'ubiana@gmail.com', NULL, '$2y$10$BzoflFgzt2gpEdQXUqnDi.7LAzxRUVkFzaCuNtE/M9Llh5Od6LnyK', 'yVQ14tziCmdbXEw16YuUJnS3JkmnRjGhQZDKjIwfViJ1XuRCV7Mm65FTxCER', '2020-10-30 07:52:05', '2020-10-30 07:52:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
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
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
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
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
