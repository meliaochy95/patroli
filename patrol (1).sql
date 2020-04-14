-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2020 at 05:36 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patrol`
--

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(255) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `tanggal`, `nama_kegiatan`, `keterangan`, `foto`) VALUES
(5, '2019-12-02', 'FC Koordinasi dengan Ka.Satpam', 'Koordinasi mengenai Kelengkapan administrasi diri anggota', 'image/kegiatan/20191218100752,jpeg'),
(6, '2019-11-25', 'Meeting Bulanan November 2019', 'Kegiatan meeting bulanan preode November 2019 security dengan managemant.', 'image/kegiatan/20191218101306,jpeg'),
(7, '2019-11-21', 'HRD GA Bp.Edy Haryadi', 'Kunjungan HRD GA giat menanyakan perlengkapan kelengkapan inventaris', 'image/kegiatan/20191218101604,jpeg'),
(8, '2019-11-14', 'Atisipasi Demo kunjungan SECOM', 'Kunjungnan secom antisipasi demo dari serikat', 'image/kegiatan/20191218102048,jpeg'),
(9, '2019-10-29', 'Kunjungan SIGAP', 'Kunjungan sigap giat memperkenalkan ketua baru dari sigap ke management', 'image/kegiatan/20191218102728,jpeg'),
(10, '2019-05-30', 'Jarmat penyambutan tamu VVIP', 'Kegiatan Jarmat anggota dalam penyambutan tamu VVIP Direktur PT.Ajnomoto Grup Indonesia', 'image/kegiatan/20191218103354,jpeg'),
(11, '2019-04-17', 'Latihan Gabungan Secom', 'Pelatihan gabungan dari seluruh anggota Secom kawasan KIIC', 'image/kegiatan/20191218103501,jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1555677493),
('m190419_113918_create_user_table', 1555677498);

-- --------------------------------------------------------

--
-- Table structure for table `patroli`
--

CREATE TABLE `patroli` (
  `id` int(11) NOT NULL,
  `petugas` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `waktu_patrol` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kondisi` varchar(20) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patroli`
--

INSERT INTO `patroli` (`id`, `petugas`, `area`, `waktu_patrol`, `kondisi`, `keterangan`) VALUES
(1, 'melia', 'Masako', '2020-01-01 04:01:30', 'ok', 'situasi aman'),
(2, 'melia', 'Sajiku', '2020-01-01 06:50:20', 'ok', 'situasi aman terkendali, hal-hal yang mencurigakan nihil'),
(3, 'melia', 'Saori', '2020-01-01 07:20:30', 'ok', 'situasi aman terkendali'),
(4, 'melia', 'KDC', '2020-01-01 07:40:10', 'ok', 'situasi aman terkendali'),
(5, 'melia', 'AVC', '2020-01-01 07:55:40', 'ok', 'situasi aman terkendali'),
(6, 'melia', 'POSKO', '2020-01-01 08:30:59', 'ok', 'situasi aman terkendali'),
(7, 'melia', 'Pos 1', '2020-01-01 08:50:29', 'Not ok', 'gerbang pos 1 kondisi rusak belum diperbaiki'),
(8, 'melia', 'Pos 5', '2020-01-01 09:10:20', 'ok', 'situasi aman terkendali'),
(9, 'melia', 'Pos 3', '2020-01-01 09:35:05', 'ok', 'situasi aman terkendali'),
(10, 'melia', 'Pos 4', '2020-01-01 09:50:40', 'ok', 'situasi aman terkendali');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sasmitoh', 'tBfN32Jn9bQ95lpaQ9H3hndkz7JpOM2K', '$2y$13$nmj2jENOjd0wQeNqWh93H.mzC4SAjEPjaAU93WbXUJbe2VEiEJKN6', NULL, 'sasmitohrr@gmail.com', 10, 1555735231, 1555735231),
(2, 'melia', 'O55FDRca4GodEhgtXu8oNbgHaEQHTkjA', '$2y$13$hyl9mELy4PUN3Sn8HGoseuF0s1vDD5QIGJWnrGs8Z8VGvWc9DJWMq', NULL, 'meliaiko55@gmail.com', 10, 1575419614, 1575419614),
(3, 'meliaiko', 'aC7ujHg-09O-okRTTX1S3fGYJ-hdulqK', '$2y$13$BH8hsbzNCRMfahil.5zA/OfQ78KTzfluaYoKRp8cdHZBURSDRR0W2', NULL, 'meliaiko@gmail.com', 10, 1578630576, 1578630576);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `patroli`
--
ALTER TABLE `patroli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `patroli`
--
ALTER TABLE `patroli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
