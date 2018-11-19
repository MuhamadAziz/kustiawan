-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2017 at 06:49 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_tukang_cukur`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `qw_epen`
--
CREATE TABLE IF NOT EXISTS `qw_epen` (
`id_event` int(11)
,`judul` varchar(50)
,`username` varchar(50)
,`nama` varchar(50)
,`tanggal` date
,`gambar` varchar(70)
,`isi` text
,`preview` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qw_pembelian_pomade`
--
CREATE TABLE IF NOT EXISTS `qw_pembelian_pomade` (
`id_pembelian` int(11)
,`id_pomade` int(11)
,`nama_pomade` varchar(40)
,`nama_merek` varchar(40)
,`harga` int(6)
,`jumlah_beli` int(3)
,`tanggal_beli` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qw_penjualan_pomade`
--
CREATE TABLE IF NOT EXISTS `qw_penjualan_pomade` (
`id_penjualan` int(11)
,`id_pomade` int(11)
,`nama_pomade` varchar(40)
,`nama_merek` varchar(40)
,`harga_pomade` int(6)
,`id_member` varchar(7)
,`nama_member` varchar(50)
,`tanggal` date
,`jumlah_jual` int(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qw_pomade`
--
CREATE TABLE IF NOT EXISTS `qw_pomade` (
`id_pomade` int(11)
,`id_merek` int(11)
,`nama_merek` varchar(40)
,`nama_pomade` varchar(40)
,`harga` int(6)
,`stok` int(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qw_transaksi_cukur`
--
CREATE TABLE IF NOT EXISTS `qw_transaksi_cukur` (
`id_cukur` int(11)
,`id_member` varchar(7)
,`nama_member` varchar(50)
,`status` enum('member','nonMember')
,`point` int(3)
,`id_pelayanan` int(11)
,`nama_pelayanan` varchar(30)
,`harga` int(6)
,`tanggal` date
);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

CREATE TABLE IF NOT EXISTS `tbl_event` (
  `id_event` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `gambar` varchar(70) NOT NULL,
  `isi` text NOT NULL,
  `preview` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_event`
--

INSERT INTO `tbl_event` (`id_event`, `judul`, `username`, `tanggal`, `gambar`, `isi`, `preview`) VALUES
(2, 'Bulan ramadhan bisa dapet diskon 50%', 'icuy', '2017-06-10', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore voluptas saepe impedit excepturi recusandae dicta tenetur labore, ex blanditiis incidunt, fugiat, placeat voluptates libero ea reprehenderit nam ullam ipsam quisquam voluptatibus! Eum eaque soluta debitis quasi aut, pariatur laudantium aperiam ducimus quae, nulla cumque, aliquid illum velit voluptatem ipsam numquam quam dicta!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore voluptas saepe impedit excepturi recusandae dicta tenetur labore, ex blanditiis incidunt, fugiat, placeat voluptates libero ea reprehenderit nam ullam ipsam quisquam voluptatibus! Eum eaque soluta debitis quasi aut, pariatur laudantium aperiam ducimus quae, nulla cumque, aliquid illum velit voluptatem ipsam numquam quam dicta!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore voluptas saepe impedit excepturi recusandae dicta tenetur labore, ex blanditiis incidunt, fugiat, placeat voluptates libero ea reprehenderit nam ullam ipsam quisquam voluptatibus! Eum eaque soluta debitis quasi aut, pariatur laudantium aperiam ducimus quae, nulla cumque, aliquid illum velit voluptatem ipsam numquam quam dicta!</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore voluptas saepe impedit excepturi recusandae dicta tenetur labore, ex blanditiis incidunt, fugiat, placeat voluptates libero ea reprehenderit nam ullam ipsam quisquam voluptatibus! Eum eaque soluta debitis quasi aut, pariatur laudantium aperiam ducimus quae, nulla cumque, aliquid illum velit voluptatem ipsam numquam quam dicta!'),
(3, 'Tukar 5 point untuk dapat pomade 1', 'icuy', '2017-06-10', 'price.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam suscipit eos nesciunt, laboriosam necessitatibus vel dicta expedita odio! Tempora, illum rerum, sequi iure doloribus expedita dolor quae culpa deleniti repellat eos esse delectus. Odit repellat, cum, quas autem veritatis optio non ullam porro temporibus, similique debitis quaerat quibusdam pariatur possimus enim, voluptates error quis dignissimos omnis reiciendis? Ipsa, sint, suscipit, iusto, asperiores praesentium nemo blanditiis atque beatae rerum perferendis doloribus impedit reiciendis obcaecati fugit. Fugiat tenetur, necessitatibus nam commodi, ex aspernatur quo neque quae vero alias. Neque earum animi vel, quibusdam at, illum? Inventore esse, aspernatur velit pariatur nesciunt repudiandae.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam suscipit eos nesciunt, laboriosam necessitatibus vel dicta expedita odio! Tempora, illum rerum, sequi iure doloribus expedita dolor quae culpa deleniti repellat eos esse delectus. Odit repellat, cum, quas autem veritatis optio non ullam porro temporibus, similique debitis quaerat quibusdam pariatur possimus enim, voluptates error quis dignissimos omnis reiciendis? Ipsa, sint, suscipit, iusto, asperiores praesentium nemo blanditiis atque beatae rerum perferendis doloribus impedit reiciendis obcaecati fugit. Fugiat tenetur, necessitatibus nam commodi, ex aspernatur quo neque quae vero alias. Neque earum animi vel, quibusdam at, illum? Inventore esse, aspernatur velit pariatur nesciunt repudiandae.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam suscipit eos nesciunt, laboriosam necessitatibus vel dicta expedita odio! Tempora, illum rerum, sequi iure doloribus expedita dolor quae culpa deleniti repellat eos esse delectus. Odit repellat, cum, quas autem veritatis optio non ullam porro temporibus, similique debitis quaerat qui'),
(4, 'boaedan', 'icuy', '2017-06-12', '12819061_1119159094781532_1761686499_n.jpg', '<p>alksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd i</p>\r\n', 'alksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkasj dlajwd ialksdjal jaskdj aiwjdnlkas');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE IF NOT EXISTS `tbl_member` (
  `id_member` varchar(7) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_member` varchar(50) NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  `status` enum('member','nonMember') NOT NULL,
  `point` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id_member`, `password`, `nama_member`, `no_telepon`, `status`, `point`) VALUES
('m000001', 'icuyEuy2901', 'Muhammad rizki wahyudi', '08159521317', 'member', 1),
('m000002', 'm000002', 'cuy', '0815151515', 'member', 1),
('m000003', 'm000003', 'iki', '08738232', 'member', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_merek_pomade`
--

CREATE TABLE IF NOT EXISTS `tbl_merek_pomade` (
  `id_merek` int(11) NOT NULL,
  `nama_merek` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_merek_pomade`
--

INSERT INTO `tbl_merek_pomade` (`id_merek`, `nama_merek`) VALUES
(1, 'Gesbi'),
(2, 'abal abal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelayanan`
--

CREATE TABLE IF NOT EXISTS `tbl_pelayanan` (
  `id_pelayanan` int(11) NOT NULL,
  `nama_pelayanan` varchar(30) NOT NULL,
  `keterangan` text NOT NULL,
  `harga` int(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pelayanan`
--

INSERT INTO `tbl_pelayanan` (`id_pelayanan`, `nama_pelayanan`, `keterangan`, `harga`) VALUES
(1, 'Grooming', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit assumenda enim doloremque possimus animi aut suscipit incidunt temporibus repudiandae! Consectetur quod beatae in numquam voluptatum ducimus tenetur itaque, doloribus impedit quasi sint praesentium expedita natus amet repellat molestiae enim nobis.', 20000),
(2, 'Cukur kumis', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit assumenda enim doloremque possimus animi aut suscipit incidunt temporibus repudiandae! Consectetur quod beatae in numquam voluptatum ducimus tenetur itaque, doloribus impedit quasi sint praesentium expedita natus amet repellat molestiae enim nobis.', 7000),
(3, 'Cukur jenggot', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit assumenda enim doloremque possimus animi aut suscipit incidunt temporibus repudiandae! Consectetur quod beatae in numquam voluptatum ducimus tenetur itaque, doloribus impedit quasi sint praesentium expedita natus amet repellat molestiae enim nobis.', 8000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembelian_pomade`
--

CREATE TABLE IF NOT EXISTS `tbl_pembelian_pomade` (
  `id_pembelian` int(11) NOT NULL,
  `id_pomade` int(11) NOT NULL,
  `jumlah_beli` int(3) NOT NULL,
  `tanggal_beli` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pembelian_pomade`
--

INSERT INTO `tbl_pembelian_pomade` (`id_pembelian`, `id_pomade`, `jumlah_beli`, `tanggal_beli`) VALUES
(3, 1, 120, '2017-06-16');

--
-- Triggers `tbl_pembelian_pomade`
--
DELIMITER $$
CREATE TRIGGER `batal_beli_pomade` AFTER DELETE ON `tbl_pembelian_pomade`
 FOR EACH ROW update tbl_pomade set stok=stok - OLD.jumlah_beli
where id_pomade = OLD.id_pomade
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `beli_pomade` AFTER INSERT ON `tbl_pembelian_pomade`
 FOR EACH ROW update tbl_pomade set stok=stok + NEW.jumlah_beli
where id_pomade = NEW.id_pomade
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penjualan_pomade`
--

CREATE TABLE IF NOT EXISTS `tbl_penjualan_pomade` (
  `id_penjualan` int(11) NOT NULL,
  `id_pomade` int(11) NOT NULL,
  `id_member` varchar(7) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah_jual` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_penjualan_pomade`
--

INSERT INTO `tbl_penjualan_pomade` (`id_penjualan`, `id_pomade`, `id_member`, `tanggal`, `jumlah_jual`) VALUES
(9, 1, 'm000001', '2017-06-16', 20),
(10, 1, 'm000001', '2017-06-19', 10);

--
-- Triggers `tbl_penjualan_pomade`
--
DELIMITER $$
CREATE TRIGGER `batal_jual_pomade` AFTER DELETE ON `tbl_penjualan_pomade`
 FOR EACH ROW update tbl_pomade set stok = stok + OLD.jumlah_jual
where id_pomade = OLD.id_pomade
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `jual_pomade` AFTER INSERT ON `tbl_penjualan_pomade`
 FOR EACH ROW update tbl_pomade set stok = stok - NEW.jumlah_jual
where id_pomade = NEW.id_pomade
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pomade`
--

CREATE TABLE IF NOT EXISTS `tbl_pomade` (
  `id_pomade` int(11) NOT NULL,
  `id_merek` int(11) NOT NULL,
  `nama_pomade` varchar(40) NOT NULL,
  `harga` int(6) NOT NULL,
  `stok` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pomade`
--

INSERT INTO `tbl_pomade` (`id_pomade`, `id_merek`, `nama_pomade`, `harga`, `stok`) VALUES
(1, 2, 'Pomade Gesbi warna berem1', 30001, 134);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tampilan`
--

CREATE TABLE IF NOT EXISTS `tbl_tampilan` (
  `id_tampilan` int(11) NOT NULL,
  `bagian` enum('banner','home','gallery') NOT NULL,
  `gambar` varchar(70) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tampilan`
--

INSERT INTO `tbl_tampilan` (`id_tampilan`, `bagian`, `gambar`, `text`) VALUES
(1, 'home', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad nisi vitae cupiditate tempore similique laboriosam sapiente, at tempora animi deleniti.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi_cukur`
--

CREATE TABLE IF NOT EXISTS `tbl_transaksi_cukur` (
  `id_cukur` int(11) NOT NULL,
  `id_member` varchar(7) NOT NULL,
  `id_pelayanan` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi_cukur`
--

INSERT INTO `tbl_transaksi_cukur` (`id_cukur`, `id_member`, `id_pelayanan`, `tanggal`) VALUES
(2, 'm000002', 2, '2017-06-17'),
(5, 'm000002', 2, '2017-06-17'),
(6, 'm000001', 3, '2017-06-16'),
(7, 'm000001', 2, '2017-06-16'),
(8, 'm000001', 1, '2017-06-17'),
(10, 'm000002', 2, '2017-06-17'),
(11, 'm000003', 2, '2017-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `hak_akses` enum('admin','staf','owner') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `password`, `nama`, `hak_akses`) VALUES
('danang', 'danangwe', 'Danang luar biasa', 'staf'),
('hasan', 'hasan123', 'Muhammad indra hasan', 'admin'),
('icuy', 'icuy', 'icuy euy', 'admin'),
('wp', 'wandari', 'Risma Wandari Putri', 'owner');

-- --------------------------------------------------------

--
-- Structure for view `qw_epen`
--
DROP TABLE IF EXISTS `qw_epen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qw_epen` AS select `tbl_event`.`id_event` AS `id_event`,`tbl_event`.`judul` AS `judul`,`tbl_event`.`username` AS `username`,`tbl_user`.`nama` AS `nama`,`tbl_event`.`tanggal` AS `tanggal`,`tbl_event`.`gambar` AS `gambar`,`tbl_event`.`isi` AS `isi`,`tbl_event`.`preview` AS `preview` from (`tbl_event` join `tbl_user` on((`tbl_user`.`username` = `tbl_event`.`username`)));

-- --------------------------------------------------------

--
-- Structure for view `qw_pembelian_pomade`
--
DROP TABLE IF EXISTS `qw_pembelian_pomade`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qw_pembelian_pomade` AS select `tbl_pembelian_pomade`.`id_pembelian` AS `id_pembelian`,`tbl_pembelian_pomade`.`id_pomade` AS `id_pomade`,`tbl_pomade`.`nama_pomade` AS `nama_pomade`,`tbl_merek_pomade`.`nama_merek` AS `nama_merek`,`tbl_pomade`.`harga` AS `harga`,`tbl_pembelian_pomade`.`jumlah_beli` AS `jumlah_beli`,`tbl_pembelian_pomade`.`tanggal_beli` AS `tanggal_beli` from ((`tbl_pembelian_pomade` join `tbl_pomade` on((`tbl_pomade`.`id_pomade` = `tbl_pembelian_pomade`.`id_pomade`))) join `tbl_merek_pomade` on((`tbl_merek_pomade`.`id_merek` = `tbl_pomade`.`id_merek`)));

-- --------------------------------------------------------

--
-- Structure for view `qw_penjualan_pomade`
--
DROP TABLE IF EXISTS `qw_penjualan_pomade`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qw_penjualan_pomade` AS select `tbl_penjualan_pomade`.`id_penjualan` AS `id_penjualan`,`tbl_penjualan_pomade`.`id_pomade` AS `id_pomade`,`tbl_pomade`.`nama_pomade` AS `nama_pomade`,`tbl_merek_pomade`.`nama_merek` AS `nama_merek`,`tbl_pomade`.`harga` AS `harga_pomade`,`tbl_penjualan_pomade`.`id_member` AS `id_member`,`tbl_member`.`nama_member` AS `nama_member`,`tbl_penjualan_pomade`.`tanggal` AS `tanggal`,`tbl_penjualan_pomade`.`jumlah_jual` AS `jumlah_jual` from (((`tbl_penjualan_pomade` join `tbl_pomade` on((`tbl_pomade`.`id_pomade` = `tbl_penjualan_pomade`.`id_pomade`))) join `tbl_merek_pomade` on((`tbl_merek_pomade`.`id_merek` = `tbl_pomade`.`id_merek`))) join `tbl_member` on((`tbl_member`.`id_member` = `tbl_penjualan_pomade`.`id_member`)));

-- --------------------------------------------------------

--
-- Structure for view `qw_pomade`
--
DROP TABLE IF EXISTS `qw_pomade`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qw_pomade` AS select `tbl_pomade`.`id_pomade` AS `id_pomade`,`tbl_pomade`.`id_merek` AS `id_merek`,`tbl_merek_pomade`.`nama_merek` AS `nama_merek`,`tbl_pomade`.`nama_pomade` AS `nama_pomade`,`tbl_pomade`.`harga` AS `harga`,`tbl_pomade`.`stok` AS `stok` from (`tbl_pomade` join `tbl_merek_pomade` on((`tbl_merek_pomade`.`id_merek` = `tbl_pomade`.`id_merek`)));

-- --------------------------------------------------------

--
-- Structure for view `qw_transaksi_cukur`
--
DROP TABLE IF EXISTS `qw_transaksi_cukur`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qw_transaksi_cukur` AS select `tbl_transaksi_cukur`.`id_cukur` AS `id_cukur`,`tbl_member`.`id_member` AS `id_member`,`tbl_member`.`nama_member` AS `nama_member`,`tbl_member`.`status` AS `status`,`tbl_member`.`point` AS `point`,`tbl_transaksi_cukur`.`id_pelayanan` AS `id_pelayanan`,`tbl_pelayanan`.`nama_pelayanan` AS `nama_pelayanan`,`tbl_pelayanan`.`harga` AS `harga`,`tbl_transaksi_cukur`.`tanggal` AS `tanggal` from ((`tbl_transaksi_cukur` join `tbl_member` on((`tbl_member`.`id_member` = `tbl_transaksi_cukur`.`id_member`))) join `tbl_pelayanan` on((`tbl_pelayanan`.`id_pelayanan` = `tbl_transaksi_cukur`.`id_pelayanan`)));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`id_event`), ADD KEY `username` (`username`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `tbl_merek_pomade`
--
ALTER TABLE `tbl_merek_pomade`
  ADD PRIMARY KEY (`id_merek`);

--
-- Indexes for table `tbl_pelayanan`
--
ALTER TABLE `tbl_pelayanan`
  ADD PRIMARY KEY (`id_pelayanan`);

--
-- Indexes for table `tbl_pembelian_pomade`
--
ALTER TABLE `tbl_pembelian_pomade`
  ADD PRIMARY KEY (`id_pembelian`), ADD KEY `id_pomade` (`id_pomade`);

--
-- Indexes for table `tbl_penjualan_pomade`
--
ALTER TABLE `tbl_penjualan_pomade`
  ADD PRIMARY KEY (`id_penjualan`), ADD KEY `id_pomade` (`id_pomade`,`id_member`), ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_pomade`
--
ALTER TABLE `tbl_pomade`
  ADD PRIMARY KEY (`id_pomade`), ADD KEY `id_merek` (`id_merek`);

--
-- Indexes for table `tbl_tampilan`
--
ALTER TABLE `tbl_tampilan`
  ADD PRIMARY KEY (`id_tampilan`);

--
-- Indexes for table `tbl_transaksi_cukur`
--
ALTER TABLE `tbl_transaksi_cukur`
  ADD PRIMARY KEY (`id_cukur`), ADD KEY `id_member` (`id_member`,`id_pelayanan`), ADD KEY `id_member_2` (`id_member`,`id_pelayanan`), ADD KEY `id_pelayanan` (`id_pelayanan`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_merek_pomade`
--
ALTER TABLE `tbl_merek_pomade`
  MODIFY `id_merek` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_pelayanan`
--
ALTER TABLE `tbl_pelayanan`
  MODIFY `id_pelayanan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_pembelian_pomade`
--
ALTER TABLE `tbl_pembelian_pomade`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_penjualan_pomade`
--
ALTER TABLE `tbl_penjualan_pomade`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_pomade`
--
ALTER TABLE `tbl_pomade`
  MODIFY `id_pomade` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_tampilan`
--
ALTER TABLE `tbl_tampilan`
  MODIFY `id_tampilan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_transaksi_cukur`
--
ALTER TABLE `tbl_transaksi_cukur`
  MODIFY `id_cukur` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_event`
--
ALTER TABLE `tbl_event`
ADD CONSTRAINT `tbl_event_ibfk_1` FOREIGN KEY (`username`) REFERENCES `tbl_user` (`username`);

--
-- Constraints for table `tbl_pembelian_pomade`
--
ALTER TABLE `tbl_pembelian_pomade`
ADD CONSTRAINT `tbl_pembelian_pomade_ibfk_1` FOREIGN KEY (`id_pomade`) REFERENCES `tbl_pomade` (`id_pomade`);

--
-- Constraints for table `tbl_penjualan_pomade`
--
ALTER TABLE `tbl_penjualan_pomade`
ADD CONSTRAINT `tbl_penjualan_pomade_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `tbl_member` (`id_member`),
ADD CONSTRAINT `tbl_penjualan_pomade_ibfk_3` FOREIGN KEY (`id_pomade`) REFERENCES `tbl_pomade` (`id_pomade`);

--
-- Constraints for table `tbl_pomade`
--
ALTER TABLE `tbl_pomade`
ADD CONSTRAINT `tbl_pomade_ibfk_1` FOREIGN KEY (`id_merek`) REFERENCES `tbl_merek_pomade` (`id_merek`);

--
-- Constraints for table `tbl_transaksi_cukur`
--
ALTER TABLE `tbl_transaksi_cukur`
ADD CONSTRAINT `tbl_transaksi_cukur_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_member` (`id_member`),
ADD CONSTRAINT `tbl_transaksi_cukur_ibfk_2` FOREIGN KEY (`id_pelayanan`) REFERENCES `tbl_pelayanan` (`id_pelayanan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
