-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2025 at 04:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpdasar`
--

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tmpt_Lahir` varchar(50) NOT NULL,
  `tgl_Lahir` date NOT NULL,
  `jekel` enum('Laki - Laki','Perempuan') NOT NULL,
  `jurusan` enum('Teknik Jaringan Akses','Teknik Komputer dan Jaringan','Multimedia','Rekayasa Perangkat Lunak','Teknik Informatika','Teknik Industri','Manajemen','Akuntansi') NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `tmpt_Lahir`, `tgl_Lahir`, `jekel`, `jurusan`, `email`, `gambar`, `alamat`) VALUES
('312110216', 'Yuyun Fatimah', 'Kawarang', '2002-08-17', 'Perempuan', 'Manajemen', 'Yuyunfatimah1@gmail.com', '6867effa78875.png', 'Karawang Barat'),
('312110445', 'Alisya Azqiah', 'Bandung', '2003-05-16', 'Perempuan', 'Manajemen', 'Alisya123@gmail.com', '6867f03b8e7ee.png', 'Karawang Timur'),
('312310084', 'Muhammad Rafliyanto', 'Purworejo', '2002-10-07', 'Laki - Laki', 'Teknik Industri', 'Rafliyanto12@gmail.com', '6867f086743df.png', 'CKM'),
('312310123', 'M Taufik Ramadhan', 'Bandung', '2000-07-21', 'Laki - Laki', 'Teknik Industri', 'Mtaufik123@gmail.com', '6867fb39a5e92.png', 'Sirnabaya'),
('312310685', 'Adil Adha', 'Cikarang', '2000-06-28', 'Laki - Laki', 'Teknik Informatika', 'Adilmadha@gmail.com', '6867f0cce3771.png', 'Cikarang'),
('312310702', 'Erlangga Mulya', 'karawang', '1999-10-20', 'Laki - Laki', 'Teknik Industri', 'erlangga22@gmail.com', '6867f128715c8.png', 'Telukjambe Timur'),
('312310705', 'Sultan Albani', 'Pemalang', '2001-11-24', 'Laki - Laki', 'Teknik Informatika', 'sultanalbani@gmail.com', '6867f16a6cc3d.png', 'Adiarsa'),
('312310747', 'Budi Adi', 'Cikarang', '1997-03-30', 'Laki - Laki', 'Teknik Industri', 'budiadis@gmail.com', '6867f1a2055ea.png', 'CKM'),
('312310797', 'Iis Supriyati', 'Jakarta', '1999-04-19', 'Perempuan', 'Manajemen', 'iissupriyati@gmail.com', '6867f1d729ef1.png', 'CKM'),
('312310801', 'Sarah Sitynuraeny', 'karawang', '2003-09-23', 'Perempuan', 'Akuntansi', 'sarah99@gmail.com', '6867f8aabf104.png', 'Niaga');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
