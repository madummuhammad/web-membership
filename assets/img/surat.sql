-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 02:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `surat`
--

-- --------------------------------------------------------

--
-- Table structure for table `catin_laki_laki`
--

CREATE TABLE `catin_laki_laki` (
  `nik` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bin_binti` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `warga_negara` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `status_perkawinan` enum('Kawin','Belum Kawin','Cerai') NOT NULL DEFAULT 'Belum Kawin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catin_laki_laki`
--

INSERT INTO `catin_laki_laki` (`nik`, `nama`, `bin_binti`, `alamat`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `warga_negara`, `agama`, `pekerjaan`, `status_perkawinan`, `created_at`, `updated_at`, `deleted_at`) VALUES
('Laki-laki', 'Laki-laki', 'Laki-laki', 'Laki-laki', 'Laki-laki', '2023-12-03', 'Laki-laki', 'Laki-laki', 'Islam', 'Laki-laki', 'Kawin', '2023-12-03 02:34:24', '2023-12-03 03:03:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catin_perempuan`
--

CREATE TABLE `catin_perempuan` (
  `nik` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bin_binti` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `warga_negara` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `status_perkawinan` enum('Kawin','Belum Kawin','Cerai') NOT NULL DEFAULT 'Belum Kawin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catin_perempuan`
--

INSERT INTO `catin_perempuan` (`nik`, `nama`, `bin_binti`, `alamat`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `warga_negara`, `agama`, `pekerjaan`, `status_perkawinan`, `created_at`, `updated_at`, `deleted_at`) VALUES
('Perempuan', 'Perempuan', 'Perempuan', 'Perempuan', 'Perempuan', '2023-12-03', 'Perempuan', 'Perempuan', 'Islam', 'Perempuan', 'Kawin', '2023-12-03 02:34:24', '2023-12-03 03:03:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `disposisi`
--

CREATE TABLE `disposisi` (
  `id` int(11) NOT NULL,
  `no_disposisi` varchar(255) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `isi_disposisi` text NOT NULL,
  `file_disposisi` varchar(255) NOT NULL,
  `tgl_keluar` date NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disposisi`
--

INSERT INTO `disposisi` (`id`, `no_disposisi`, `id_petugas`, `isi_disposisi`, `file_disposisi`, `tgl_keluar`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'ddd', 5, 'asdfsadf', 'assets/file-disposisi/bsHoUfSALUldYLN5r6UJqcjBY8KpPBJkDcK9WDC8.pdf', '2023-10-27', 1, '2023-10-26 21:17:43', '2023-10-26 21:18:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `istri`
--

CREATE TABLE `istri` (
  `nik` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `istri`
--

INSERT INTO `istri` (`nik`, `nama`, `alamat`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `pekerjaan`, `created_at`, `updated_at`, `deleted_at`) VALUES
('Suami', 'Suami', 'Suami', 'Suami', '2023-12-04', 'Laki-laki', 'Suami', '2023-12-03 10:46:38', '2023-12-03 11:08:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nik` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nik`, `nama`, `alamat`, `jabatan`, `foto`, `agama`, `jenis_kelamin`, `created_at`, `updated_at`) VALUES
('aasdfasdf', 'KUAasdf', 'asdfasdf', 'Kepala KUA', 'assets/foto/4eNc0A9sQbDCdDzQv71RecIw1ZP31wodon3WVfjY.png', 'Islam', 'Laki-laki', '2023-12-03 00:13:34', '2023-12-03 00:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `permohonan`
--

CREATE TABLE `permohonan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `file_permohonan` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permohonan`
--

INSERT INTO `permohonan` (`id`, `id_user`, `nama`, `alamat`, `jenis_kelamin`, `file_permohonan`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 'sfdas', 'dfasdf', 'Laki-laki', 'assets/file-permohonan/QkMU82QVKHBYbNoxguBNCsLCjOmH5Ef5YnniXo4n.pdf', NULL, '2023-10-26 23:31:30', '2023-10-29 23:48:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suami`
--

CREATE TABLE `suami` (
  `nik` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suami`
--

INSERT INTO `suami` (`nik`, `nama`, `alamat`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `pekerjaan`, `created_at`, `updated_at`, `deleted_at`) VALUES
('Suami', 'Suami', 'Suami', 'Suami', '2023-12-04', 'Laki-laki', 'Suami', '2023-12-03 10:46:38', '2023-12-03 11:08:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `surat_buku_nikah_akta_nikah`
--

CREATE TABLE `surat_buku_nikah_akta_nikah` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `isi_surat` text NOT NULL,
  `file_surat` varchar(255) NOT NULL,
  `tgl_keluar` date NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `surat_buku_nikah_akta_nikah`
--

INSERT INTO `surat_buku_nikah_akta_nikah` (`id`, `no_surat`, `id_petugas`, `isi_surat`, `file_surat`, `tgl_keluar`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'coba', 5, 'asdf', 'assets/file-surat/EymGNsdRcG4UhhBoOH4hsUvmv9xtDI3R4XytAPkR.pdf', '2023-10-27', 1, '2023-10-26 21:15:12', '2023-10-26 21:16:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `surat_keterangan_nikah_tidak_tercatat`
--

CREATE TABLE `surat_keterangan_nikah_tidak_tercatat` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `nik_suami` varchar(255) NOT NULL,
  `nik_istri` varchar(255) NOT NULL,
  `nik_pegawai` varchar(255) NOT NULL,
  `created_at` tinytext DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `surat_keterangan_nikah_tidak_tercatat`
--

INSERT INTO `surat_keterangan_nikah_tidak_tercatat` (`id`, `no_surat`, `status`, `nik_suami`, `nik_istri`, `nik_pegawai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'SKNTC/12/1/2023', NULL, 'Suami', 'Suami', 'aasdfasdf', '2023-12-03 17:46:38', '2023-12-03 11:08:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `surat_pemberitahuan_kekurangan_syarat_perkawinan`
--

CREATE TABLE `surat_pemberitahuan_kekurangan_syarat_perkawinan` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `isi_surat` text NOT NULL,
  `file_surat` varchar(255) NOT NULL,
  `tgl_keluar` date NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `surat_pemberitahuan_kekurangan_syarat_perkawinan`
--

INSERT INTO `surat_pemberitahuan_kekurangan_syarat_perkawinan` (`id`, `no_surat`, `id_petugas`, `isi_surat`, `file_surat`, `tgl_keluar`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'asdfasdfasfd', 3, 'asdf', 'assets/file-surat/GYLmJHEpscfN0p1zsRF4PNR6j3weaSCZJJ26vGEG.pdf', '2023-10-26', 0, '2023-10-26 06:15:38', '2023-10-26 06:15:38', NULL),
(3, 'addddd', 3, 'asdf', 'assets/file-surat/dl8KXoMhd8b1tLHQVnfTnNNGcl8mw0is39vQl5CZ.pdf', '2023-10-26', 1, '2023-10-26 06:16:25', '2023-10-26 21:14:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `surat_rekomendasi_nikah`
--

CREATE TABLE `surat_rekomendasi_nikah` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `nik_pegawai` varchar(255) NOT NULL,
  `nik_catin_laki_laki` varchar(255) NOT NULL,
  `nik_catin_perempuan` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `surat_rekomendasi_nikah`
--

INSERT INTO `surat_rekomendasi_nikah` (`id`, `no_surat`, `nik_pegawai`, `nik_catin_laki_laki`, `nik_catin_perempuan`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'SRN/12/1/2023', 'aasdfasdf', 'Laki-laki', 'Perempuan', 1, '2023-12-03 02:34:24', '2023-12-03 04:18:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `undangan`
--

CREATE TABLE `undangan` (
  `id` int(11) NOT NULL,
  `no_undangan` varchar(255) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sifat` varchar(255) NOT NULL,
  `lampiran` varchar(255) NOT NULL,
  `kepada` varchar(255) NOT NULL,
  `nik_pegawai` varchar(255) NOT NULL,
  `pada` varchar(255) NOT NULL,
  `waktu` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `acara` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `undangan`
--

INSERT INTO `undangan` (`id`, `no_undangan`, `perihal`, `status`, `sifat`, `lampiran`, `kepada`, `nik_pegawai`, `pada`, `waktu`, `tempat`, `acara`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'asdf', 'Surat Permintaan Buku Nikah dan Akta Nikah', 1, 'asdfasd', 'fasdf', 'asdfasdf', 'aasdfasdf', 'Minggu, 03 Desember 2023', 'asdfasd', 'fasd', 'fasdf', '2023-12-03 06:54:51', '2023-12-03 09:51:03', NULL),
(3, 'ads', 'Surat Permintaan Buku Nikah dan Akta Nikah', NULL, 'fasdf', 'asdf', 'asdf', 'aasdfasdf', 'Minggu, 03 Desember 2023', 'asdf', 'asdf', 'asdf', '2023-12-03 09:50:30', '2023-12-03 09:50:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `jabatan` enum('Petugas','Penghulu','Kepala KUA','Admin','Masyarakat') NOT NULL DEFAULT 'Masyarakat',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `jenis_kelamin`, `jabatan`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '$2a$12$2iANB1DtqcNo5Eu0nO/JZubqTY2jG2lZRdetUGHESYHZo.cinxoSm', 'Laki-laki', 'Admin', '2023-10-23 06:14:24', NULL),
(3, 'Petugas', 'Petugas', '$2y$10$EmHp9gfzCcujAzdmdXFNAu0yPMGbBgRmz9Pc0e7iwVnSRiJQCtvWO', 'Laki-laki', 'Petugas', '2023-10-23 22:56:24', '2023-10-23 22:56:24'),
(4, 'Kepala KUA', 'Kepala KUA', '$2y$10$xKXc.jKp2Wp34j/A.03zMOYbfoQ.mduhN9lWCtSfJO5wYdngNG/o2', 'Laki-laki', 'Kepala KUA', '2023-10-26 09:34:40', '2023-10-26 09:34:40'),
(5, 'Penghulu', 'Penghulu', '$2y$10$.i7aQCs0OOY1XEr7QDBeSO40TNHDFv2qfY/wdeKVqURcpkCx7H/Fy', 'Laki-laki', 'Penghulu', '2023-10-26 20:44:03', '2023-10-26 20:44:03'),
(6, 'Masyarakat', 'Masyarakat', '$2y$10$B5DF22zDObALeANFT7hl2eo3BrC5yQJEI.LIqDvtvZEsS1QYOwVMq', 'Laki-laki', 'Masyarakat', '2023-10-26 23:17:47', '2023-10-26 23:17:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catin_laki_laki`
--
ALTER TABLE `catin_laki_laki`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `catin_perempuan`
--
ALTER TABLE `catin_perempuan`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `disposisi`
--
ALTER TABLE `disposisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `istri`
--
ALTER TABLE `istri`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `permohonan`
--
ALTER TABLE `permohonan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suami`
--
ALTER TABLE `suami`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `surat_buku_nikah_akta_nikah`
--
ALTER TABLE `surat_buku_nikah_akta_nikah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat_keterangan_nikah_tidak_tercatat`
--
ALTER TABLE `surat_keterangan_nikah_tidak_tercatat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat_pemberitahuan_kekurangan_syarat_perkawinan`
--
ALTER TABLE `surat_pemberitahuan_kekurangan_syarat_perkawinan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat_rekomendasi_nikah`
--
ALTER TABLE `surat_rekomendasi_nikah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `undangan`
--
ALTER TABLE `undangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disposisi`
--
ALTER TABLE `disposisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permohonan`
--
ALTER TABLE `permohonan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `surat_buku_nikah_akta_nikah`
--
ALTER TABLE `surat_buku_nikah_akta_nikah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `surat_keterangan_nikah_tidak_tercatat`
--
ALTER TABLE `surat_keterangan_nikah_tidak_tercatat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `surat_pemberitahuan_kekurangan_syarat_perkawinan`
--
ALTER TABLE `surat_pemberitahuan_kekurangan_syarat_perkawinan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `surat_rekomendasi_nikah`
--
ALTER TABLE `surat_rekomendasi_nikah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `undangan`
--
ALTER TABLE `undangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
