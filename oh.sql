-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 24, 2017 at 11:24 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oh`
--

-- --------------------------------------------------------

--
-- Table structure for table `golongans`
--

CREATE TABLE `golongans` (
  `id` int(10) UNSIGNED NOT NULL,
  `Kode_golongan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nama_golongan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Besaran_uang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `golongans`
--

INSERT INTO `golongans` (`id`, `Kode_golongan`, `Nama_golongan`, `Besaran_uang`, `created_at`, `updated_at`) VALUES
(1, 'A-1', 'D-01', 100000, '2017-02-22 05:27:24', '2017-02-22 05:27:24'),
(2, 'B-CB', 'M-01', 50000, '2017-02-22 19:47:17', '2017-02-23 23:36:31'),
(4, 'C-01', 'S-01', 30000, '2017-02-24 00:26:10', '2017-02-24 00:26:10'),
(6, 'A-02', 'D-02', 10000, '2017-02-24 02:44:09', '2017-02-24 02:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `jabatans`
--

CREATE TABLE `jabatans` (
  `id` int(10) UNSIGNED NOT NULL,
  `Kode_jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nama_jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Besaran_uang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jabatans`
--

INSERT INTO `jabatans` (`id`, `Kode_jabatan`, `Nama_jabatan`, `Besaran_uang`, `created_at`, `updated_at`) VALUES
(1, 'A-02', 'Direktur Utama', 5000000, '2017-02-22 05:26:57', '2017-02-22 05:26:57'),
(2, 'B-01', 'Manager', 4000000, '2017-02-22 19:46:48', '2017-02-23 23:35:57'),
(3, 'C-01', 'OB', 10000, '2017-02-22 20:14:41', '2017-02-22 20:14:41'),
(4, 'D-01', 'Sekertaris', 3000000, '2017-02-23 23:47:55', '2017-02-23 23:51:19'),
(5, 'D-01', 'Direktur Utama', 10000, '2017-02-24 02:43:20', '2017-02-24 02:43:20');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_lemburs`
--

CREATE TABLE `kategori_lemburs` (
  `id` int(10) UNSIGNED NOT NULL,
  `Kode_lembur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan_id` int(10) UNSIGNED NOT NULL,
  `golongan_id` int(10) UNSIGNED NOT NULL,
  `Besaran_uang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_lemburs`
--

INSERT INTO `kategori_lemburs` (`id`, `Kode_lembur`, `jabatan_id`, `golongan_id`, `Besaran_uang`, `created_at`, `updated_at`) VALUES
(1, '001', 1, 1, 100000, '2017-02-22 05:27:35', '2017-02-22 05:27:35'),
(4, '002', 2, 2, 50000, '2017-02-23 23:16:10', '2017-02-23 23:37:31'),
(6, '098', 4, 4, 30000, '2017-02-24 00:26:43', '2017-02-24 00:26:43'),
(8, '334', 1, 6, 10000, '2017-02-24 02:44:28', '2017-02-24 02:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `lembur_pegawais`
--

CREATE TABLE `lembur_pegawais` (
  `id` int(10) UNSIGNED NOT NULL,
  `Kode_lembur_id` int(10) UNSIGNED NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `Jumlah_jam` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lembur_pegawais`
--

INSERT INTO `lembur_pegawais` (`id`, `Kode_lembur_id`, `pegawai_id`, `Jumlah_jam`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '2017-02-22 05:29:02', '2017-02-22 05:29:02'),
(5, 4, 5, 3, '2017-02-23 23:18:03', '2017-02-23 23:18:03'),
(7, 6, 7, 4, '2017-02-24 00:27:51', '2017-02-24 00:27:51'),
(9, 8, 9, 3, '2017-02-24 02:45:32', '2017-02-24 02:45:32');

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
(3, '2017_02_02_035644_create_jabatans_table', 1),
(4, '2017_02_02_040044_create_golongans_table', 1),
(5, '2017_02_02_041541_create_kategori_lemburs_table', 1),
(6, '2017_02_02_042402_create_pegawais_table', 1),
(7, '2017_02_02_043203_create_lembur_pegawais_table', 1),
(8, '2017_02_02_043214_create_tunjangans_table', 1),
(9, '2017_02_02_043225_create_tunjangan_pegawais_table', 1),
(10, '2017_02_02_043244_create_penggajians_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawais`
--

CREATE TABLE `pegawais` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `jabatan_id` int(10) UNSIGNED NOT NULL,
  `golongan_id` int(10) UNSIGNED NOT NULL,
  `Photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawais`
--

INSERT INTO `pegawais` (`id`, `Nip`, `user_id`, `jabatan_id`, `golongan_id`, `Photo`, `created_at`, `updated_at`) VALUES
(1, '0017256', 2, 1, 1, '0d2f1531eb7e3e650c7cb38d30c19e60.png', '2017-02-22 05:28:52', '2017-02-22 05:28:52'),
(5, '160716', 9, 2, 2, '0c57614d7257d7ea2eb41e2bc9145382.png', '2017-02-23 23:17:48', '2017-02-23 23:17:48'),
(7, '09765', 11, 4, 4, '86bb884dbff20c46f4b13beea00c81bc.jpg', '2017-02-24 00:27:29', '2017-02-24 00:27:29'),
(9, '06789', 13, 1, 6, '17efc9990692b1eb9ffe26a459807224.jpg', '2017-02-24 02:45:11', '2017-02-24 02:45:11');

-- --------------------------------------------------------

--
-- Table structure for table `penggajians`
--

CREATE TABLE `penggajians` (
  `id` int(10) UNSIGNED NOT NULL,
  `tunjangan_pegawai_id` int(10) UNSIGNED NOT NULL,
  `Jumlah_jam_lembur` int(11) NOT NULL,
  `Jumlah_uang_lembur` int(11) NOT NULL,
  `Gaji_pokok` int(11) NOT NULL,
  `Total_gaji` int(11) NOT NULL,
  `Tanggal_pengambilan` date NOT NULL,
  `Status_pengambilan` tinyint(4) NOT NULL,
  `Petugas_penerima` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penggajians`
--

INSERT INTO `penggajians` (`id`, `tunjangan_pegawai_id`, `Jumlah_jam_lembur`, `Jumlah_uang_lembur`, `Gaji_pokok`, `Total_gaji`, `Tanggal_pengambilan`, `Status_pengambilan`, `Petugas_penerima`, `created_at`, `updated_at`) VALUES
(3, 3, 3, 30000, 5000, 35000, '2024-02-17', 0, 'susi', '2017-02-23 23:18:55', '2017-02-23 23:18:55'),
(7, 5, 4, 120000, 3030000, 3150000, '2024-02-17', 0, 'susi', '2017-02-24 00:29:02', '2017-02-24 00:29:02'),
(9, 7, 3, 30000, 5010000, 5050000, '2024-02-17', 0, 'susi', '2017-02-24 02:46:31', '2017-02-24 02:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `tunjangans`
--

CREATE TABLE `tunjangans` (
  `id` int(10) UNSIGNED NOT NULL,
  `Kode_tunjangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan_id` int(10) UNSIGNED NOT NULL,
  `golongan_id` int(10) UNSIGNED NOT NULL,
  `Status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Jumlah_anak` int(11) NOT NULL,
  `Besaran_uang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tunjangans`
--

INSERT INTO `tunjangans` (`id`, `Kode_tunjangan`, `jabatan_id`, `golongan_id`, `Status`, `Jumlah_anak`, `Besaran_uang`, `created_at`, `updated_at`) VALUES
(1, '078', 1, 1, 'Belum Nikah', 3, 100000, '2017-02-22 05:29:14', '2017-02-22 07:00:01'),
(7, '1606', 2, 2, 'Belum Nikah', 0, 100000, '2017-02-23 23:18:35', '2017-02-23 23:18:35'),
(9, '999', 4, 4, 'Belum Nikah', 0, 1000000, '2017-02-24 00:28:34', '2017-02-24 00:28:34'),
(11, '987', 1, 6, 'Janda', 1, 10000, '2017-02-24 02:46:06', '2017-02-24 02:46:06');

-- --------------------------------------------------------

--
-- Table structure for table `tunjangan_pegawais`
--

CREATE TABLE `tunjangan_pegawais` (
  `id` int(10) UNSIGNED NOT NULL,
  `Kode_tunjangan_id` int(10) UNSIGNED NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tunjangan_pegawais`
--

INSERT INTO `tunjangan_pegawais` (`id`, `Kode_tunjangan_id`, `pegawai_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2017-02-22 05:29:20', '2017-02-22 05:29:20'),
(3, 7, 5, '2017-02-23 23:18:45', '2017-02-23 23:18:45'),
(5, 9, 7, '2017-02-24 00:28:48', '2017-02-24 00:28:48'),
(7, 11, 9, '2017-02-24 02:46:17', '2017-02-24 02:46:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `permission`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'susi', 'susi@gmail.com', '$2y$10$5nSjUCuwA0XHFGtFuCuk3emxCtnBcb5Gd.vhm9pG3IBLtEJo5NGQm', 'Admin', 'C9LvBvwq3sNERqAQGwzCY9j4w1ztSze9a1tREZrBmTwgFDJbyOBwoGf8xRBq', '2017-02-22 05:21:38', '2017-02-22 05:21:38'),
(2, 'susi', 'susii@gmail.com', '$2y$10$mSERUmHx4lHgV25sNMnrsOqHPThwoiEoeZwKzZAmUbQ8Be9dvrQny', 'Admin', NULL, '2017-02-22 05:28:52', '2017-02-22 05:28:52'),
(3, 'Budiarto', 'Budii@gmail.com', '$2y$10$MPKYYmFTF256Aq/FrtOS..8A3cCvXwlgwam4Z2T8yuSx83Zv76s0.', 'Admin', NULL, '2017-02-22 19:48:20', '2017-02-22 19:48:20'),
(4, 'Ufi', 'ufi@gmail.com', '$2y$10$scpigGNlEoE29TpPQ.2d3ufijKSdsJc6lsRpcd5AshbQ30Tr94/fu', 'HRD', 'iMHZocRsE09cGhMfSp6n0VYBkC5diNM15dpbibIcTwDk85DGQfVLNMebDMf5', '2017-02-22 20:02:03', '2017-02-22 20:02:03'),
(5, 'Almira', 'almira@gmail.com', '$2y$10$KO/SjeVsflTsNZQpN9TqAu0.5dx3F4VeMhfLrVKV9AfFDh.CjZOju', 'Bendahara', 'YJAlshF7DWK9gpP8j83uGqDurwBOlklCI4OzZR2GwjFaLuvYfxtyrwfQdymg', '2017-02-22 20:04:13', '2017-02-22 20:04:13'),
(6, 'Intiya', 'intiya@gmail.com', '$2y$10$dO1JWSRMzpuRg07iF5Wk2u0qY5xdm7mcBeGdR9gtDuqrLUDnHlEKO', 'Pegawai', 'MGqKsNWayFOo4TacQ6SwJOYk1VfFhor9PhrwLceaYurqCCLp37s2Xp4z2wDH', '2017-02-22 20:05:15', '2017-02-22 20:05:15'),
(7, 'Marlina', 'lina@gmail.com', '$2y$10$.I/ES/oROYBjf9jUvuc0uujzmbRcULbLciQpwV3K.qjmLqRRkA5/C', 'Admin', NULL, '2017-02-23 19:02:53', '2017-02-23 19:02:53'),
(8, 'vina', 'vina@gmail.com', '$2y$10$YkkxU2sLrWImc8X0dWRYPORci50TRDu0VnJi0QbjaA1CmY/SpOF/m', 'Admin', NULL, '2017-02-23 19:04:57', '2017-02-23 19:04:57'),
(9, 'Lutfi', 'fi@gmail.com', '$2y$10$COSlP8yg7vxMvtHrkB0YIeTzhrPCdGBgG6yik3HJXF.eClAZMzBaK', 'Admin', NULL, '2017-02-23 23:17:48', '2017-02-23 23:17:48'),
(10, 'Almira', 'mira@gmail.com', '$2y$10$T2pbwFGE7IFMYnBnkJon..xHdPVMkfpt11weQiDXVovKQpUmzcu0e', 'Admin', NULL, '2017-02-23 23:52:52', '2017-02-23 23:52:52'),
(11, 'Almira', 'ami@gmail.com', '$2y$10$ZCkv4hNBtMOhZ6bpcyYWH.28B1XBP.Py/zsI3.VHq0EAnWIejpKBm', 'Admin', NULL, '2017-02-24 00:27:29', '2017-02-24 00:27:29'),
(12, 'Aqila', 'qila@gmail.com', '$2y$10$RLRjwl3.c1bRTfIWmarcku5RjmhSZjpmdXZY2M5VaRkxA0XjrsiJC', 'Admin', NULL, '2017-02-24 00:40:14', '2017-02-24 00:40:14'),
(13, 'Sifa', 'sifa@gmail.com', '$2y$10$035H.0sQNgNcvmOlvcnG2O/XCHU1cxpXgxPiarVPMPd9ZCJIZ7LwK', 'Admin', NULL, '2017-02-24 02:45:11', '2017-02-24 02:45:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `golongans`
--
ALTER TABLE `golongans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_lemburs`
--
ALTER TABLE `kategori_lemburs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_lemburs_jabatan_id_foreign` (`jabatan_id`),
  ADD KEY `kategori_lemburs_golongan_id_foreign` (`golongan_id`);

--
-- Indexes for table `lembur_pegawais`
--
ALTER TABLE `lembur_pegawais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lembur_pegawais_kode_lembur_id_foreign` (`Kode_lembur_id`),
  ADD KEY `lembur_pegawais_pegawai_id_foreign` (`pegawai_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pegawais_user_id_foreign` (`user_id`),
  ADD KEY `pegawais_jabatan_id_foreign` (`jabatan_id`),
  ADD KEY `pegawais_golongan_id_foreign` (`golongan_id`);

--
-- Indexes for table `penggajians`
--
ALTER TABLE `penggajians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penggajians_tunjangan_pegawai_id_foreign` (`tunjangan_pegawai_id`);

--
-- Indexes for table `tunjangans`
--
ALTER TABLE `tunjangans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tunjangans_jabatan_id_foreign` (`jabatan_id`),
  ADD KEY `tunjangans_golongan_id_foreign` (`golongan_id`);

--
-- Indexes for table `tunjangan_pegawais`
--
ALTER TABLE `tunjangan_pegawais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tunjangan_pegawais_kode_tunjangan_id_foreign` (`Kode_tunjangan_id`),
  ADD KEY `tunjangan_pegawais_pegawai_id_foreign` (`pegawai_id`);

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
-- AUTO_INCREMENT for table `golongans`
--
ALTER TABLE `golongans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `kategori_lemburs`
--
ALTER TABLE `kategori_lemburs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lembur_pegawais`
--
ALTER TABLE `lembur_pegawais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `penggajians`
--
ALTER TABLE `penggajians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tunjangans`
--
ALTER TABLE `tunjangans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tunjangan_pegawais`
--
ALTER TABLE `tunjangan_pegawais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `kategori_lemburs`
--
ALTER TABLE `kategori_lemburs`
  ADD CONSTRAINT `kategori_lemburs_golongan_id_foreign` FOREIGN KEY (`golongan_id`) REFERENCES `golongans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kategori_lemburs_jabatan_id_foreign` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lembur_pegawais`
--
ALTER TABLE `lembur_pegawais`
  ADD CONSTRAINT `lembur_pegawais_kode_lembur_id_foreign` FOREIGN KEY (`Kode_lembur_id`) REFERENCES `kategori_lemburs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lembur_pegawais_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD CONSTRAINT `pegawais_golongan_id_foreign` FOREIGN KEY (`golongan_id`) REFERENCES `golongans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawais_jabatan_id_foreign` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawais_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penggajians`
--
ALTER TABLE `penggajians`
  ADD CONSTRAINT `penggajians_tunjangan_pegawai_id_foreign` FOREIGN KEY (`tunjangan_pegawai_id`) REFERENCES `tunjangan_pegawais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tunjangans`
--
ALTER TABLE `tunjangans`
  ADD CONSTRAINT `tunjangans_golongan_id_foreign` FOREIGN KEY (`golongan_id`) REFERENCES `golongans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tunjangans_jabatan_id_foreign` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tunjangan_pegawais`
--
ALTER TABLE `tunjangan_pegawais`
  ADD CONSTRAINT `tunjangan_pegawais_kode_tunjangan_id_foreign` FOREIGN KEY (`Kode_tunjangan_id`) REFERENCES `tunjangans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tunjangan_pegawais_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
