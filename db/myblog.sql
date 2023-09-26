-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2023 at 10:01 AM
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
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id`, `judul`, `isi`, `created_at`, `updated_at`) VALUES
(4, 'Muhamad Nabil Syihab', '<div><b><span style=\"mso-spacerun:\'yes\';font-size:11.1132pt;font-family:NunitoExtraLight-Regular;color:rgb(33,33,33);\">Saya adalah mahasiswa yang terlatih menggunakan microsoft office dan pengembangan website dengan&nbsp;</span><span style=\"color: rgb(33, 33, 33); font-family: NunitoExtraLight-Regular; font-size: 11.1132pt; text-align: var(--bs-body-text-align);\">beberapa bahasa pemrograman. Saya memiliki kemampuan yang baik dalam manajemen waktu, komunikasi,&nbsp;</span><span style=\"color: rgb(33, 33, 33); font-family: NunitoExtraLight-Regular; font-size: 11.1132pt; text-align: var(--bs-body-text-align);\">dan kerja sama. Selain itu, saya memiliki ketelitian dan detail orientasi yang sangat baik untuk bekerja dalam tim&nbsp;</span><span style=\"color: rgb(33, 33, 33); font-family: NunitoExtraLight-Regular; font-size: 11.1132pt; text-align: var(--bs-body-text-align);\">maupun individu dengan rasa inisiatif yang tinggi. Dipengalaman sebelumnya, saya berhasil menyelesaikan&nbsp;</span><span style=\"color: rgb(33, 33, 33); font-family: NunitoExtraLight-Regular; font-size: 11.1132pt; text-align: var(--bs-body-text-align);\">program dengan tingkat kontribusi yang baik bersama team. Semua itu menjadi keunggulan yang dapat saya&nbsp;</span><span style=\"color: rgb(33, 33, 33); font-family: NunitoExtraLight-Regular; font-size: 11.1132pt; text-align: var(--bs-body-text-align);\">kontribusikan untuk perusahaan anda.&nbsp;</span></b></div>', '2023-07-12 09:02:24', '2023-07-13 03:08:36'),
(6, 'Awards', '<ul><li>CISCO certification</li></ul>', '2023-07-12 15:17:58', '2023-07-13 04:39:45'),
(7, 'Interest', '<p>I am interested and challenged in trying new things, learning various programming languages, working under pressure, and being active in group and individual work, driven by a high sense of initiative.</p>', '2023-07-12 15:18:14', '2023-07-13 03:36:08');

-- --------------------------------------------------------

--
-- Table structure for table `metadata`
--

CREATE TABLE `metadata` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metadata`
--

INSERT INTO `metadata` (`id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, '_language', 'mysql, microsoftsqlserver, php, javascript, bootstrap, html5, dot-net, ruby', '2023-05-24 02:39:43', '2023-07-14 02:39:28'),
(2, '_workflow', '<ul><li>GITLAB</li><li>GITHUB</li></ul>', '2023-05-24 02:39:43', '2023-05-24 03:07:34'),
(3, '_foto', '230530114211.jpg', '2023-05-30 04:06:12', '2023-05-30 04:42:11'),
(4, '_email', 'nmuhamad388@gmail.com', '2023-05-30 04:06:12', '2023-05-30 04:28:01'),
(5, '_kota', 'Kota Jakarta Timur', '2023-07-12 07:23:34', '2023-07-12 07:23:34'),
(6, '_provinsi', 'DKI Jakarta', '2023-07-12 07:23:34', '2023-07-12 07:23:34'),
(7, '_NoHp', '0895383184400', '2023-07-12 07:23:34', '2023-07-12 07:23:34'),
(8, '_Fcbk', 'muh.na', '2023-07-12 07:23:34', '2023-07-12 07:23:34'),
(9, '_Twitt', 'muh.na', '2023-07-12 07:23:34', '2023-07-12 07:23:34'),
(10, '_Linkedin', 'https://www.linkedin.com/in/muhamadnabils', '2023-07-12 07:23:34', '2023-07-13 02:27:04'),
(11, '_Github', 'https://github.com/muhna88', '2023-07-12 07:23:34', '2023-07-13 02:26:19'),
(12, '_halaman_about', '4', '2023-07-12 09:04:58', '2023-07-12 09:08:47'),
(13, '_halaman_interest', '7', '2023-07-12 09:04:58', '2023-07-12 15:18:21'),
(14, '_halaman_award', '6', '2023-07-12 09:04:58', '2023-07-12 15:18:21'),
(15, '_Ig', 'https://www.instagram.com/muh.na_', '2023-07-13 03:07:32', '2023-07-13 03:07:32');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2023_05_04_084133_table_users_add_column_google_id', 2),
(3, '2023_05_04_144644_users_set_default_password', 3),
(4, '2023_05_16_035040_user_add_column_avatar', 4),
(5, '2023_05_16_041315_create_halamen_table', 5),
(6, '2023_05_19_074818_create_riwayats_table', 6),
(7, '2023_05_23_140204_riwayat_set_default_isi', 7),
(8, '2023_05_23_153138_create_metadata_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tipe` enum('experience','education') NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id`, `judul`, `tipe`, `tgl_mulai`, `tgl_akhir`, `info1`, `info2`, `info3`, `isi`, `created_at`, `updated_at`) VALUES
(4, '.NET Developer', 'experience', '2023-03-01', '2023-07-12', 'PT. Pertamina EP Cepu', NULL, NULL, '<p>Mendevelope aplikasi inventoris pertamina ep cepu berbasis web menggunakan bahasa pemrograman .NET dan database SQL Server 2014</p>', '2023-05-23 04:27:28', '2023-07-12 15:10:03'),
(5, 'IT SUPPORT', 'experience', '2023-05-02', NULL, 'PT. PLN Enjiniring', NULL, NULL, '<ul><li><span style=\"mso-spacerun:\'yes\';font-size:11.1132pt;font-family:NunitoExtraLight-Regular;color:rgb(33,33,33);\">develope CSIRT PLNE menggunakan bahasa pemrograman jekyll </span></li><li><span style=\"mso-spacerun:\'yes\';font-size:11.1132pt;font-family:NunitoExtraLight-Regular;color:rgb(33,33,33);\">develope PORTAL GUEST WIFI PLNE menggunakan bahasa pemrograman php </span></li><li><span style=\"mso-spacerun:\'yes\';font-size:11.1132pt;font-family:NunitoExtraLight-Regular;color:rgb(33,33,33);\">develope APP LINKTREE PLNE menggunakan bahasa pemrograman php, html, css </span></li><li><span style=\"mso-spacerun:\'yes\';font-size:11.1132pt;font-family:NunitoExtraLight-Regular;color:rgb(33,33,33);\">maintenance beberapa aplikasi plne berbasis web </span></li><li><span style=\"mso-spacerun:\'yes\';font-size:11.1132pt;font-family:NunitoExtraLight-Regular;color:rgb(33,33,33);\">berpatisipasi dalam tim untuk menyelesaikan project nyata&nbsp;</span></li></ul>', '2023-05-23 04:28:28', '2023-07-12 15:13:17'),
(8, 'Web Developer', 'experience', '2022-10-01', '2022-12-23', 'Universitas Brawijaya', NULL, NULL, '<ul><li><span style=\"mso-spacerun:\'yes\';font-size:11.1132pt;font-family:NunitoExtraLight-Regular;color:rgb(33,33,33);\">Mendesain dan mengembangkan aplikasi web MyNews, termasuk konten yang dapat diperbarui secara&nbsp;</span><span style=\"color: rgb(33, 33, 33); font-family: NunitoExtraLight-Regular; font-size: 11.1132pt; text-align: var(--bs-body-text-align);\">berkala</span></li><li><span style=\"mso-spacerun:\'yes\';font-size:11.1132pt;font-family:NunitoExtraLight-Regular;color:rgb(33,33,33);\">Mengembangkan situs web dan aplikasi internet yang memenuhi standar, kebijakan, dan prosedur&nbsp;</span><span style=\"color: rgb(33, 33, 33); font-family: NunitoExtraLight-Regular; font-size: 11.1132pt; text-align: var(--bs-body-text-align);\">aksesibilitas</span></li><li><span style=\"mso-spacerun:\'yes\';font-size:11.1132pt;font-family:NunitoExtraLight-Regular;color:rgb(33,33,33);\">error handling supaya website berjalan sempurna&nbsp;</span></li></ul>', '2023-07-13 04:31:20', '2023-07-13 04:31:50'),
(9, 'SMA ISLAM ASSYAFIIYAH 01 JAKARTA', 'education', '2018-07-09', '2021-05-05', 'MIPA', 'Mathematics and natural sciences', '87.76', NULL, '2023-07-13 04:37:31', '2023-07-13 04:37:31'),
(10, 'UNIVERSITAS BRAWIJAYA', 'education', '2021-08-16', NULL, 'VOKASI', 'Teknologi Informasi', '3.78', NULL, '2023-07-13 04:38:11', '2023-07-13 04:38:11'),
(11, 'IT Programmer', 'experience', '2023-08-14', NULL, 'Sekretariat Jendral DPR RI', NULL, NULL, '<ul><li><b>Sekretari</b><b style=\"font-size: 0.875rem; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">s Divisi IT Programmer&nbsp;</b></li></ul>', '2023-08-31 04:37:35', '2023-08-31 04:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` text NOT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `google_id`, `avatar`) VALUES
(1, 'Muhamad Nabil', 'nmuhamad388@gmail.com', NULL, NULL, NULL, '2023-05-04 07:58:40', '2023-05-15 21:05:31', '104935184350412601493', '104935184350412601493.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
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
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `metadata`
--
ALTER TABLE `metadata`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
