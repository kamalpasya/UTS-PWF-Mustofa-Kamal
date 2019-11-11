-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11 Nov 2019 pada 09.32
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kml_mhs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) DEFAULT NULL,
  `nim` int(11) DEFAULT NULL,
  `no_hp_lama` varchar(15) DEFAULT NULL,
  `no_hp_baru` varchar(15) DEFAULT NULL,
  `tgl_diubah` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`id`, `nim`, `no_hp_lama`, `no_hp_baru`, `tgl_diubah`) VALUES
(3, 2147483647, '2147483647', '2147483647', '2019-10-29 15:01:45'),
(2, 2147483647, '2147483647', '2147483647', '2019-10-29 15:10:17'),
(1, 2147483647, '089653630715', '0895326526080', '2019-11-11 07:03:50'),
(6, 2147483647, '087765654543', '087765654543', '2019-11-11 07:17:56'),
(4, 2147483647, '087775554443', '087775554443', '2019-11-11 15:29:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `id` int(11) DEFAULT NULL,
  `nim` varchar(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenkel` varchar(2) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `jenkel`, `alamat`, `no_hp`) VALUES
(1, '161240000484', 'Mustofa Kamal Fasha', 'L', 'Mindahan Batealit', '0895326526080'),
(2, '161240000508', 'Galang Noviando Aryadita', 'L', 'Perum Kuwasharjo Jepara', '0895326526080'),
(3, '161240000554', 'Retno Nur Cahyanti', 'P', 'Demaan Jepara', '081234345456'),
(4, '161240000482', 'Ahmad Fery Setyawan', 'L', 'Konohagakure No Sato', '089653630715'),
(5, '161240000485', 'M. Khoirul Faqih', 'L', 'Semat Tahunan', '087775554443'),
(6, '161240000499', 'Shihab Kafibaih', 'L', 'Buungan Jepara', '085554443332');

--
-- Trigger `mahasiswa`
--
DELIMITER //
CREATE TRIGGER `update_nomor` AFTER UPDATE ON `mahasiswa`
 FOR EACH ROW BEGIN
INSERT INTO log
set id = old.id,
nim = old.nim,
no_hp_lama=old.no_hp,
no_hp_baru=new.no_hp,
tgl_diubah = NOW();
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `tampilkan_data`
--
CREATE TABLE IF NOT EXISTS `tampilkan_data` (
`id` int(11)
,`nim` varchar(12)
,`nama` varchar(50)
,`jenkel` varchar(2)
,`alamat` varchar(200)
,`no_hp` varchar(15)
);
-- --------------------------------------------------------

--
-- Struktur untuk view `tampilkan_data`
--
DROP TABLE IF EXISTS `tampilkan_data`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tampilkan_data` AS select `mahasiswa`.`id` AS `id`,`mahasiswa`.`nim` AS `nim`,`mahasiswa`.`nama` AS `nama`,`mahasiswa`.`jenkel` AS `jenkel`,`mahasiswa`.`alamat` AS `alamat`,`mahasiswa`.`no_hp` AS `no_hp` from `mahasiswa`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
