-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2022 at 01:40 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rekamedis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokter`
--

CREATE TABLE `tb_dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama_dokter` text NOT NULL,
  `jenis_kelamin` text NOT NULL,
  `tempat_lahir` text NOT NULL,
  `alamat` text NOT NULL,
  `tgl_lahir` text NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `no_hp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_dokter`
--

INSERT INTO `tb_dokter` (`id_dokter`, `nama_dokter`, `jenis_kelamin`, `tempat_lahir`, `alamat`, `tgl_lahir`, `id_pengguna`, `no_hp`) VALUES
(2, 'udin', 'on', 'd', 'wewew', '2022-02-22', 103, '1111');

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

CREATE TABLE `tb_obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` text NOT NULL,
  `jenis_obat` text NOT NULL,
  `harga` text NOT NULL,
  `exp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`id_obat`, `nama_obat`, `jenis_obat`, `harga`, `exp`) VALUES
(1, 'Bodrex', 'Pasaran', '2000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat_rekam_medis`
--

CREATE TABLE `tb_obat_rekam_medis` (
  `id_obat_rekam_medis` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_obat_rekam_medis`
--

INSERT INTO `tb_obat_rekam_medis` (`id_obat_rekam_medis`, `id_obat`, `id_pasien`, `id_dokter`) VALUES
(4, 1, 2, 1),
(5, 1, 2, 1),
(6, 1, 2, 1),
(7, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama_pasien` text NOT NULL,
  `jenis_kelamin` text NOT NULL,
  `no_hp` text NOT NULL,
  `tempat_lahir` text NOT NULL,
  `tanggal_lahir` text NOT NULL,
  `alamat` text NOT NULL,
  `id_pengguna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id_pasien`, `nama_pasien`, `jenis_kelamin`, `no_hp`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `id_pengguna`) VALUES
(1, '1', '1', '1', '1', '1', '1', 0),
(2, '1', '1', '1', '1', '1', '1', 1),
(3, 'udin', 'on', '11112', 'ds', '2022-02-22', 's', 103),
(4, '', '', '', '', '', '', 0),
(5, '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `lvl` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `username`, `password`, `email`, `lvl`) VALUES
(100, 'admin', 'admin', 'admin', 'administrator'),
(102, '1', '1', '1', '1'),
(103, 'bbabolinia69', '1', 'bbabolinia69@gmail.com', 'dokter');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rekam_medis`
--

CREATE TABLE `tb_rekam_medis` (
  `id_rekam_medis` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `keluhan` text NOT NULL,
  `tanggal` text NOT NULL,
  `pengobatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_rekam_medis`
--

INSERT INTO `tb_rekam_medis` (`id_rekam_medis`, `id_pasien`, `id_dokter`, `keluhan`, `tanggal`, `pengobatan`) VALUES
(27, 1, 2, 'waluh', '07-02-2022', ''),
(28, 1, 2, '2223', '07-02-2022', ''),
(29, 1, 2, '2223', '07-02-2022', ''),
(30, 1, 2, '2223', '07-02-2022', ''),
(31, 1, 2, '2223', '07-02-2022', ''),
(32, 1, 2, '111', '07-02-2022', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `tb_obat_rekam_medis`
--
ALTER TABLE `tb_obat_rekam_medis`
  ADD PRIMARY KEY (`id_obat_rekam_medis`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `tb_rekam_medis`
--
ALTER TABLE `tb_rekam_medis`
  ADD PRIMARY KEY (`id_rekam_medis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_obat`
--
ALTER TABLE `tb_obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_obat_rekam_medis`
--
ALTER TABLE `tb_obat_rekam_medis`
  MODIFY `id_obat_rekam_medis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `tb_rekam_medis`
--
ALTER TABLE `tb_rekam_medis`
  MODIFY `id_rekam_medis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
