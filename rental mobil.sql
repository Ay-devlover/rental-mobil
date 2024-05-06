-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for rentalmobil
CREATE DATABASE IF NOT EXISTS `rentalmobil` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rentalmobil`;

-- Dumping structure for table rentalmobil.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table rentalmobil.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table rentalmobil.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table rentalmobil.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2024_05_06_062416_create_mobils_table', 1),
	(6, '2024_05_06_062426_create_peminjamans_table', 1),
	(7, '2024_05_06_062435_create_pengembalians_table', 1);

-- Dumping structure for table rentalmobil.mobils
CREATE TABLE IF NOT EXISTS `mobils` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `merek` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noplat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobils_noplat_unique` (`noplat`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table rentalmobil.mobils: ~0 rows (approximately)
INSERT INTO `mobils` (`id`, `merek`, `model`, `noplat`, `deskripsi`, `harga`, `foto`, `created_at`, `updated_at`) VALUES
	(1, 'toyota', 'type r', '1234', 'mobil', '100000', '1714979415_Black White Simple Monochrome Initial Name Logo.png', '2024-05-06 00:05:34', '2024-05-06 00:10:15'),
	(2, 'toyota', 'type z', '12345', 'mobil terbaru', '500000', '1714985289_Capture.PNG', '2024-05-06 01:48:10', '2024-05-06 01:48:10');

-- Dumping structure for table rentalmobil.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table rentalmobil.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table rentalmobil.peminjamans
CREATE TABLE IF NOT EXISTS `peminjamans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `total_harga` decimal(15,6) NOT NULL,
  `mobil_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `status_kembali` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `peminjamans_mobil_id_foreign` (`mobil_id`),
  KEY `peminjamans_user_id_foreign` (`user_id`),
  CONSTRAINT `peminjamans_mobil_id_foreign` FOREIGN KEY (`mobil_id`) REFERENCES `mobils` (`id`) ON DELETE SET DEFAULT,
  CONSTRAINT `peminjamans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET DEFAULT
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table rentalmobil.peminjamans: ~0 rows (approximately)
INSERT INTO `peminjamans` (`id`, `tgl_mulai`, `tgl_akhir`, `total_harga`, `mobil_id`, `user_id`, `status_kembali`, `created_at`, `updated_at`) VALUES
	(1, '2024-05-04', '2024-05-06', 300000.000000, 1, 2, 1, '2024-05-06 00:08:41', '2024-05-06 00:12:05'),
	(2, '2024-05-07', '2024-05-09', 200000.000000, 1, 2, 1, '2024-05-06 01:42:28', '2024-05-06 01:45:14'),
	(3, '2024-05-10', '2024-05-25', 1500000.000000, 1, 2, 1, '2024-05-06 01:45:54', '2024-05-06 01:46:03'),
	(4, '2024-05-07', '2024-05-08', 500000.000000, 2, 2, 1, '2024-05-06 01:48:53', '2024-05-06 02:15:46'),
	(5, '2024-05-08', '2024-05-09', 100000.000000, 1, 2, 1, '2024-05-06 02:14:55', '2024-05-06 02:15:50'),
	(6, '2024-05-18', '2024-05-23', 2500000.000000, 2, 2, 1, '2024-05-06 02:15:36', '2024-05-06 02:15:54');

-- Dumping structure for table rentalmobil.pengembalians
CREATE TABLE IF NOT EXISTS `pengembalians` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tgl_kembali` date NOT NULL,
  `peminjaman_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pengembalians_peminjaman_id_foreign` (`peminjaman_id`),
  CONSTRAINT `pengembalians_peminjaman_id_foreign` FOREIGN KEY (`peminjaman_id`) REFERENCES `peminjamans` (`id`) ON DELETE SET DEFAULT
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table rentalmobil.pengembalians: ~0 rows (approximately)
INSERT INTO `pengembalians` (`id`, `tgl_kembali`, `peminjaman_id`, `created_at`, `updated_at`) VALUES
	(1, '2024-05-06', 1, '2024-05-06 00:12:05', '2024-05-06 00:12:05'),
	(2, '2024-05-06', 2, '2024-05-06 01:45:14', '2024-05-06 01:45:14'),
	(3, '2024-05-06', 3, '2024-05-06 01:46:03', '2024-05-06 01:46:03'),
	(4, '2024-05-06', 4, '2024-05-06 02:15:46', '2024-05-06 02:15:46'),
	(5, '2024-05-06', 5, '2024-05-06 02:15:50', '2024-05-06 02:15:50'),
	(6, '2024-05-06', 6, '2024-05-06 02:15:54', '2024-05-06 02:15:54');

-- Dumping structure for table rentalmobil.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table rentalmobil.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table rentalmobil.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nosim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Admin','User') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'User',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_nosim_unique` (`nosim`),
  UNIQUE KEY `users_nohp_unique` (`nohp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table rentalmobil.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `nama`, `alamat`, `nosim`, `nohp`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'Padang', '01234567', '081218173646', '$2y$12$NbsaVaTSAjMtdsRztp8Ag.crdiZdClMQNexuxcyFvakBNu7YJSDFe', 'Admin', NULL, '2024-05-05 23:30:15', '2024-05-05 23:30:15'),
	(2, 'User', 'Bandung', '0123456789', '081213141516', '$2y$12$ZNhWE5A2Tema8FTMungm2eHWwwO2CphiHu4KUUAinRHi2hq7gvvIu', 'User', NULL, '2024-05-05 23:30:15', '2024-05-05 23:30:15'),
	(3, 'Muhammad sifa', 'pemalang', '001112', '086969', '$2y$12$r5zhKzBbaz.rerCkQ6siGusEqhUZqfXZe/rNdebUgjVXw2CVbepNS', 'User', NULL, '2024-05-06 00:04:44', '2024-05-06 00:04:44');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
