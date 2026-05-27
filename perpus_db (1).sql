-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2026 at 05:28 PM
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
-- Database: `perpus_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_admin` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username_admin` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password_admin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `akses_level` enum('1','2','3') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_delete_admin` enum('0','1') NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_admin`, `username_admin`, `password_admin`, `akses_level`, `is_delete_admin`, `created_at`, `update_at`) VALUES
('', 'developer', 'developer', '$2y$10$BtHHWFXmLuhnP79ievN58O8EivCDmojcmNDivaVhmIlBQNSiqr9Ku', '1', '0', '2026-05-05 04:38:01', '2026-05-05 04:38:01'),
('000001', 'Administrator', 'admin', '$2y$10$FFUBbTOoIwWGQxS/YSmxoul7tSdxTr0Ga4lM2xlXtkn3FNrdBXAW6', '1', '0', '2026-05-05 03:08:03', '2026-05-05 03:08:03'),
('ADM006', 'kael', 'kaelX1', '$2y$10$ivbHVMCN2KJHUSv45PSSn.REZzh9SugCg0JjegUubsX2u5/A6fAjq', '2', '0', '2026-05-27 08:26:30', '2026-05-27 08:26:30'),
('ADM007', 'cian', 'cian1', '$2y$10$OcBBuSWjx0KUR/1JqlMmBezhpjECibFjM1CANLGfjCbbs2puJ4fLi', '3', '0', '2026-05-27 08:26:53', '2026-05-27 08:26:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_anggota`
--

CREATE TABLE `tbl_anggota` (
  `id_anggota` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_anggota` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis_kelamin` enum('L','P') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_telp` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password_anggota` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_delete_anggota` enum('0','1') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_anggota`
--

INSERT INTO `tbl_anggota` (`id_anggota`, `nama_anggota`, `jenis_kelamin`, `no_telp`, `alamat`, `email`, `password_anggota`, `is_delete_anggota`, `created_at`, `updated_at`) VALUES
('AGT003', 'supa', 'L', '0895371899', 'JL. Raya Bogor No. 10A', 'supasupa@gmail.com', '$2y$10$NcI/ZWB9nPfr/N1zHjOATeFJ34eDXCTanp3QSeZDVBI75nMccSFzm', '0', '2026-05-27 08:25:42', '2026-05-27 08:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id_buku` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `judul_buku` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pengarang` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `penerbit` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tahun` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah_eksemplar` int(3) NOT NULL,
  `id_kategori` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_rak` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cover_buku` varchar(30) NOT NULL,
  `e_book` varchar(30) NOT NULL,
  `is_delete_buku` enum('0','1') NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_buku`
--

INSERT INTO `tbl_buku` (`id_buku`, `judul_buku`, `pengarang`, `penerbit`, `tahun`, `jumlah_eksemplar`, `id_kategori`, `keterangan`, `id_rak`, `cover_buku`, `e_book`, `is_delete_buku`, `created_at`, `deleted_at`) VALUES
('BKU003', 'Sketches Of Travel In Normandy And Mainel', 'Edward A. Freeman', 'O\'Reilly Media', '2008', 1, 'KTG003', 'Sketches of Travel in Normandy and Maine', 'RAK003', 'Cover-Buku-260527085021.jpg', 'E-Book-260527085021.pdf', '0', '2026-05-27 08:50:21', '2026-05-27 12:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_peminjaman`
--

CREATE TABLE `tbl_detail_peminjaman` (
  `no_peminjaman` varchar(12) NOT NULL,
  `id_buku` varchar(6) NOT NULL,
  `status_pinjam` enum('Sedang Dipinjam','Sudah Dikembalikan') NOT NULL,
  `perpanjangan` int(1) NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` varchar(6) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `id_delete_kategori` enum('0','1') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`, `id_delete_kategori`, `created_at`, `updated_at`) VALUES
('KTG003', 'slice of life', '0', '2026-05-27 08:27:25', '2026-05-27 08:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peminjaman`
--

CREATE TABLE `tbl_peminjaman` (
  `no_peminjaman` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_anggota` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `total_pinjam` int(3) NOT NULL,
  `id_admin` varchar(6) NOT NULL,
  `status_transaksi` enum('Selesai','Berjalan') NOT NULL,
  `status_ambil_buku` enum('Belum Diambil','Sudah Diambil') NOT NULL,
  `qr_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengembalian`
--

CREATE TABLE `tbl_pengembalian` (
  `no_pengembalian` varchar(12) NOT NULL,
  `no_peminjaman` varchar(12) NOT NULL,
  `id_buku` varchar(6) NOT NULL,
  `denda` double NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `id_admin` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rak`
--

CREATE TABLE `tbl_rak` (
  `id_rak` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_rak` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_delete_rak` enum('0','1') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rak`
--

INSERT INTO `tbl_rak` (`id_rak`, `nama_rak`, `is_delete_rak`, `created_at`, `updated_at`) VALUES
('RAK003', '1b1', '0', '2026-05-27 08:27:53', '2026-05-27 08:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_peminjaman`
--

CREATE TABLE `tbl_temp_peminjaman` (
  `id_anggota` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_buku` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah_temp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_anggota`
--
ALTER TABLE `tbl_anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_rak` (`id_rak`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_peminjaman`
--
ALTER TABLE `tbl_peminjaman`
  ADD PRIMARY KEY (`no_peminjaman`);

--
-- Indexes for table `tbl_pengembalian`
--
ALTER TABLE `tbl_pengembalian`
  ADD PRIMARY KEY (`no_pengembalian`);

--
-- Indexes for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  ADD PRIMARY KEY (`id_rak`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
