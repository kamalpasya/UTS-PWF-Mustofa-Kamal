-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2019 at 10:22 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nim` varchar(20) NOT NULL COMMENT 'primary key',
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `alamat` varchar(200) NOT NULL COMMENT 'primary key'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nim`, `nama`, `jenis_kelamin`, `telp`, `alamat`) VALUES
('161240000458', 'Muh Cahyo Saputra', 'Laki-laki', '0821234378680', 'Bulungan'),
('161240000484', 'Mustofa kamal', 'Laki-laki', '08971234567', 'mindahan'),
('161240000485', 'Muhammad Khairul faqih', 'Laki-laki', '082214605647', 'semat'),
('161240000560', 'Ari Teguh Pujianto', 'Laki-laki', '08123456124', 'Semat'),
('161240000875', 'Muhammad Shihab', 'Laki-laki', '082346521435', 'bulungan');

--
-- Triggers `siswa`
--
DELIMITER $$
CREATE TRIGGER `ganti_nomor` AFTER UPDATE ON `siswa` FOR EACH ROW begin
insert into ganti_1 set
nim = OLD.nim,
telp_lama = old.telp,
telp_baru = new.telp,
waktu = now();
end
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nim`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
