-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2023 at 12:23 PM
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
-- Database: `db_tempest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(10, 'admin', '$2y$10$8u5r/aJundMiolM5NUpvcubV7vQCOSxFGrIGbJQ6xpyxI7U.fTDOm');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `no_wa` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `no_wa`, `email`, `password`) VALUES
(9, 'user', '086681928172', 'user@gmail.com', '$2y$10$oMx9dlc3y9iSgK9mo8IdF.rDs6ybV3LILt2pelox/0Ziq2/8abA5K'),
(10, 'mpti', '08382312321', 'mpti@gmail.com', '$2y$10$m4kPI8ce03tytErFphL0FesbpymD4vJcnxatjx6vmCuHPHqhYmXqq');

-- --------------------------------------------------------

--
-- Table structure for table `user_order`
--

CREATE TABLE `user_order` (
  `id` int(11) NOT NULL,
  `id_tiket` varchar(15) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `catatan` varchar(200) NOT NULL,
  `haripendakian` date NOT NULL,
  `jlrturun` varchar(200) NOT NULL,
  `usia` int(11) NOT NULL,
  `bb` int(11) NOT NULL,
  `tb` int(11) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `rek_pengirim` varchar(50) NOT NULL,
  `namarek_pengirim` varchar(100) NOT NULL,
  `bank_pengirim` varchar(20) NOT NULL,
  `jenis_pesanan` varchar(100) NOT NULL,
  `bank_penerima` varchar(150) NOT NULL,
  `total_pembayaran` varchar(50) NOT NULL,
  `waktu_pesanan` varchar(50) NOT NULL,
  `bukti_pembayaran` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `link_status` varchar(50) NOT NULL,
  `warna_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_order`
--

INSERT INTO `user_order` (`id`, `id_tiket`, `order_id`, `email`, `catatan`, `haripendakian`, `jlrturun`, `usia`, `bb`, `tb`, `alamat`, `rek_pengirim`, `namarek_pengirim`, `bank_pengirim`, `jenis_pesanan`, `bank_penerima`, `total_pembayaran`, `waktu_pesanan`, `bukti_pembayaran`, `status`, `link_status`, `warna_status`) VALUES
(31, 'user|66262', 'user', '086681928172 / user@gmail.com', '123123', '2023-07-03', 'asdsa', 2, 2, 2, 'a', '2', '2', 'BNI', 'jalurpatakbanteng', 'BRI 891101012333 A/N RAHMA AULIA', '100000', 'Monday, 10-07-2023 | 11:57:45 am', '64abd62e5da79.jpg', 'Cetak Tiket', 'cetaktiket.php', 'success');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_order`
--
ALTER TABLE `user_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_order`
--
ALTER TABLE `user_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
