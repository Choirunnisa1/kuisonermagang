-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01 Nov 2018 pada 10.40
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuisoner_magang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_responden`
--

CREATE TABLE `data_responden` (
  `id_responden` int(5) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `produk_beli` varchar(50) NOT NULL,
  `type` varchar(6) NOT NULL,
  `alamat_kerja` varchar(255) NOT NULL,
  `alamat_tinggal` varchar(255) NOT NULL,
  `jekel` enum('Perempuan','Laki-laki') NOT NULL,
  `umur` varchar(10) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `pendidikan terakhir` varchar(5) NOT NULL,
  `status` varchar(50) NOT NULL,
  `penghasilan` int(50) NOT NULL,
  `sumber_penghasilan` varchar(100) NOT NULL,
  `tujuan_beli` varchar(100) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_responden`
--

INSERT INTO `data_responden` (`id_responden`, `nama`, `produk_beli`, `type`, `alamat_kerja`, `alamat_tinggal`, `jekel`, `umur`, `pekerjaan`, `pendidikan terakhir`, `status`, `penghasilan`, `sumber_penghasilan`, `tujuan_beli`, `tanggal`) VALUES
(1, 'aris', 'q', 'q', 'q', 'q', 'Perempuan', '11', '', '', '', 0, '', '', '2018-11-01 07:32:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kelamin`
--

CREATE TABLE `jenis_kelamin` (
  `id` int(11) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_kelamin`
--

INSERT INTO `jenis_kelamin` (`id`, `jenis_kelamin`) VALUES
(1, 'Laki-laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id` int(11) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pekerjaan`
--

INSERT INTO `pekerjaan` (`id`, `pekerjaan`) VALUES
(1, 'PNS'),
(2, 'Swasta'),
(3, 'Wiraswasta'),
(4, 'Lainnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` int(11) NOT NULL,
  `pendidikan` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `pendidikan`) VALUES
(1, 'SLTA'),
(2, 'D3'),
(3, 'S1'),
(4, 'S2-S2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penghasilan`
--

CREATE TABLE `penghasilan` (
  `id` int(11) NOT NULL,
  `penghasilan` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penghasilan`
--

INSERT INTO `penghasilan` (`id`, `penghasilan`) VALUES
(1, '<4 Jt'),
(2, '4-8 Jt'),
(3, '>8 Jt');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id`, `status`) VALUES
(1, 'Menikah'),
(2, 'Belum Menikah'),
(3, 'Lainnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sumber_penghasilan`
--

CREATE TABLE `sumber_penghasilan` (
  `id` int(5) NOT NULL,
  `sumber_hasil` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sumber_penghasilan`
--

INSERT INTO `sumber_penghasilan` (`id`, `sumber_hasil`) VALUES
(1, 'Gaji'),
(2, 'Hasil Usaha'),
(3, 'Tabung'),
(4, 'Warisan/hibah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `no` int(11) NOT NULL,
  `id_responden` int(5) NOT NULL,
  `id_soal` int(2) NOT NULL,
  `id_opsi` int(5) NOT NULL,
  `jawaban` text NOT NULL,
  `t_opsi` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_hasil`
--

INSERT INTO `tb_hasil` (`no`, `id_responden`, `id_soal`, `id_opsi`, `jawaban`, `t_opsi`, `detail`, `tgl`) VALUES
(3, 1, 0, 0, '', '{\"jws1\":\"1\",\"jws2\":\"1\",\"jws3\":\"\",\"jws4\":\"\",\"jws5\":\"\",\"jws6\":\"\",\"jws7\":\"\",\"jws8\":\"1\",\"jws9\":\"\",\"jws10\":\"\",\"jws11\":\"\",\"jws12\":\"\",\"jws13\":\"\",\"jws14\":\"\",\"jws15\":\"\",\"jws16\":\"\",\"jws17\":\"\",\"jws18\":\"\",\"jws19\":\"\",\"jws20\":\"\",\"jws21\":\"\",\"jws23\":\"\",\"jws24\":\"\",\"jws25\"', '{\"dtl1\":\"\",\"dtl2\":\"b\",\"dtl3\":\"\",\"dtl4\":\"\",\"dtl5\":\"\",\"dtl6\":\"\",\"dtl7\":\"\",\"dtl8\":\"\",\"dtl9\":\"\",\"dtl10\":\"\",\"dtl11\":\"\",\"dtl12\":\"\",\"dtl13\":\"\",\"dtl14\":\"\",\"dtl15\":\"\",\"dtl16\":\"\",\"dtl17\":\"\",\"dtl18\":\"\",\"dtl19\":\"\",\"dtl20\":\"\",\"dtl21\":\"\",\"dtl23\":\"\",\"dtl24\":\"\",\"dtl25\":\"\",\"dtl26\":\"\",\"dtl27\":\"\",\"dtl28\":\"\",\"dtl29\":\"\",\"dtl30\":\"\",\"dtl31\":\"\",\"dtl32\":\"\",\"dtl33\":\"\",\"dtl34\":\"\",\"dtl35\":\"\",\"dtl36\":\"\",\"dtl37\":\"\",\"dtl38\":\"\",\"dtl39\":\"\",\"dtl40\":\"\",\"dtl41\":\"\",\"dtl42\":\"\",\"dtl43\":\"\",\"dtl44\":\"\",\"dtl45\":\"\",\"dtl46\":\"\",\"dtl47\":\"\",\"dtl48\":\"\",\"dtl49\":\"\",\"dtl50\":\"\",\"dtl51\":\"\",\"dtl52\":\"\",\"dtl53\":\"\",\"dtl54\":\"\",\"dtl55\":\"\",\"dtl56\":\"\",\"dtl57\":\"\",\"dtl58\":\"\",\"dtl59\":\"\",\"dtl60\":\"\",\"dtl61\":\"\",\"dtl62\":\"\",\"dtl63\":\"\",\"dtl64\":\"\",\"dtl65\":\"\",\"dtl66\":\"\",\"dtl67\":\"\",\"dtl68\":\"\",\"dtl69\":\"\",\"dtl72\":\"q\"}', '2018-11-01 07:39:44'),
(4, 1, 0, 0, '', '{\"jws1\":\"1\",\"jws2\":\"1\",\"jws3\":\"\",\"jws4\":\"\",\"jws5\":\"\",\"jws6\":\"\",\"jws7\":\"\",\"jws8\":\"1\",\"jws9\":\"\",\"jws10\":\"\",\"jws11\":\"\",\"jws12\":\"\",\"jws13\":\"\",\"jws14\":\"\",\"jws15\":\"\",\"jws16\":\"\",\"jws17\":\"\",\"jws18\":\"\",\"jws19\":\"\",\"jws20\":\"\",\"jws21\":\"\",\"jws23\":\"\",\"jws24\":\"\",\"jws25\"', '{\"dtl1\":\"\",\"dtl2\":\"b\",\"dtl3\":\"\",\"dtl4\":\"\",\"dtl5\":\"\",\"dtl6\":\"\",\"dtl7\":\"\",\"dtl8\":\"\",\"dtl9\":\"\",\"dtl10\":\"\",\"dtl11\":\"\",\"dtl12\":\"\",\"dtl13\":\"\",\"dtl14\":\"\",\"dtl15\":\"\",\"dtl16\":\"\",\"dtl17\":\"\",\"dtl18\":\"\",\"dtl19\":\"\",\"dtl20\":\"\",\"dtl21\":\"\",\"dtl23\":\"\",\"dtl24\":\"\",\"dtl25\":\"\",\"dtl26\":\"\",\"dtl27\":\"\",\"dtl28\":\"\",\"dtl29\":\"\",\"dtl30\":\"\",\"dtl31\":\"\",\"dtl32\":\"\",\"dtl33\":\"\",\"dtl34\":\"\",\"dtl35\":\"\",\"dtl36\":\"\",\"dtl37\":\"\",\"dtl38\":\"\",\"dtl39\":\"\",\"dtl40\":\"\",\"dtl41\":\"\",\"dtl42\":\"\",\"dtl43\":\"\",\"dtl44\":\"\",\"dtl45\":\"\",\"dtl46\":\"\",\"dtl47\":\"\",\"dtl48\":\"\",\"dtl49\":\"\",\"dtl50\":\"\",\"dtl51\":\"\",\"dtl52\":\"\",\"dtl53\":\"\",\"dtl54\":\"\",\"dtl55\":\"\",\"dtl56\":\"\",\"dtl57\":\"\",\"dtl58\":\"\",\"dtl59\":\"\",\"dtl60\":\"\",\"dtl61\":\"\",\"dtl62\":\"\",\"dtl63\":\"\",\"dtl64\":\"\",\"dtl65\":\"\",\"dtl66\":\"\",\"dtl67\":\"\",\"dtl68\":\"\",\"dtl69\":\"\",\"dtl72\":\"q\"}', '2018-11-01 07:40:29'),
(5, 1, 0, 0, '', '{\"jws1\":\"1\",\"jws2\":\"1\",\"jws3\":\"\",\"jws4\":\"\",\"jws5\":\"\",\"jws6\":\"\",\"jws7\":\"\",\"jws8\":\"1\",\"jws9\":\"\",\"jws10\":\"\",\"jws11\":\"\",\"jws12\":\"\",\"jws13\":\"\",\"jws14\":\"\",\"jws15\":\"\",\"jws16\":\"\",\"jws17\":\"\",\"jws18\":\"\",\"jws19\":\"\",\"jws20\":\"\",\"jws21\":\"\",\"jws23\":\"\",\"jws24\":\"\",\"jws25\"', '{\"dtl1\":\"\",\"dtl2\":\"b\",\"dtl3\":\"\",\"dtl4\":\"\",\"dtl5\":\"\",\"dtl6\":\"\",\"dtl7\":\"\",\"dtl8\":\"\",\"dtl9\":\"\",\"dtl10\":\"\",\"dtl11\":\"\",\"dtl12\":\"\",\"dtl13\":\"\",\"dtl14\":\"\",\"dtl15\":\"\",\"dtl16\":\"\",\"dtl17\":\"\",\"dtl18\":\"\",\"dtl19\":\"\",\"dtl20\":\"\",\"dtl21\":\"\",\"dtl23\":\"\",\"dtl24\":\"\",\"dtl25\":\"\",\"dtl26\":\"\",\"dtl27\":\"\",\"dtl28\":\"\",\"dtl29\":\"\",\"dtl30\":\"\",\"dtl31\":\"\",\"dtl32\":\"\",\"dtl33\":\"\",\"dtl34\":\"\",\"dtl35\":\"\",\"dtl36\":\"\",\"dtl37\":\"\",\"dtl38\":\"\",\"dtl39\":\"\",\"dtl40\":\"\",\"dtl41\":\"\",\"dtl42\":\"\",\"dtl43\":\"\",\"dtl44\":\"\",\"dtl45\":\"\",\"dtl46\":\"\",\"dtl47\":\"\",\"dtl48\":\"\",\"dtl49\":\"\",\"dtl50\":\"\",\"dtl51\":\"\",\"dtl52\":\"\",\"dtl53\":\"\",\"dtl54\":\"\",\"dtl55\":\"\",\"dtl56\":\"\",\"dtl57\":\"\",\"dtl58\":\"\",\"dtl59\":\"\",\"dtl60\":\"\",\"dtl61\":\"\",\"dtl62\":\"\",\"dtl63\":\"\",\"dtl64\":\"\",\"dtl65\":\"\",\"dtl66\":\"\",\"dtl67\":\"\",\"dtl68\":\"\",\"dtl69\":\"\",\"dtl72\":\"q\"}', '2018-11-01 07:40:31'),
(6, 1, 0, 0, '', '{\"jws1\":\"\",\"jws2\":\"1\",\"jws3\":\"\",\"jws4\":\"\",\"jws5\":\"\",\"jws6\":\"1\",\"jws7\":\"\",\"jws8\":\"\",\"jws9\":\"1\",\"jws10\":\"1\",\"jws11\":\"\",\"jws12\":\"\",\"jws13\":\"\",\"jws14\":\"\",\"jws15\":\"\",\"jws16\":\"\",\"jws17\":\"\",\"jws18\":\"\",\"jws19\":\"\",\"jws20\":\"\",\"jws21\":\"\",\"jws23\":\"\",\"jws24\":\"\",\"jws25', '{\"dtl1\":\"\",\"dtl2\":\"b\",\"dtl3\":\"\",\"dtl4\":\"\",\"dtl5\":\"\",\"dtl6\":\"\",\"dtl7\":\"\",\"dtl8\":\"\",\"dtl9\":\"\",\"dtl10\":\"\",\"dtl11\":\"\",\"dtl12\":\"\",\"dtl13\":\"\",\"dtl14\":\"\",\"dtl15\":\"\",\"dtl16\":\"\",\"dtl17\":\"\",\"dtl18\":\"\",\"dtl19\":\"\",\"dtl20\":\"\",\"dtl21\":\"\",\"dtl23\":\"\",\"dtl24\":\"\",\"dtl25\":\"\",\"dtl26\":\"\",\"dtl27\":\"\",\"dtl28\":\"\",\"dtl29\":\"\",\"dtl30\":\"\",\"dtl31\":\"\",\"dtl32\":\"\",\"dtl33\":\"\",\"dtl34\":\"\",\"dtl35\":\"\",\"dtl36\":\"\",\"dtl37\":\"\",\"dtl38\":\"\",\"dtl39\":\"\",\"dtl40\":\"\",\"dtl41\":\"\",\"dtl42\":\"\",\"dtl43\":\"\",\"dtl44\":\"\",\"dtl45\":\"\",\"dtl46\":\"\",\"dtl47\":\"\",\"dtl48\":\"\",\"dtl49\":\"\",\"dtl50\":\"\",\"dtl51\":\"\",\"dtl52\":\"\",\"dtl53\":\"\",\"dtl54\":\"\",\"dtl55\":\"\",\"dtl56\":\"\",\"dtl57\":\"\",\"dtl58\":\"\",\"dtl59\":\"\",\"dtl60\":\"\",\"dtl61\":\"\",\"dtl62\":\"\",\"dtl63\":\"\",\"dtl64\":\"\",\"dtl65\":\"\",\"dtl66\":\"\",\"dtl67\":\"\",\"dtl68\":\"\",\"dtl69\":\"\",\"dtl72\":\"q\"}', '2018-11-01 07:42:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jawaban`
--

CREATE TABLE `tb_jawaban` (
  `id_jawaban` int(5) NOT NULL,
  `id_soal` int(2) NOT NULL,
  `opsi` varchar(255) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `detail` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jawaban`
--

INSERT INTO `tb_jawaban` (`id_jawaban`, `id_soal`, `opsi`, `aktif`, `detail`) VALUES
(1, 0, 'IKlan elektronik & cetak di..', 'Y', 'Y'),
(2, 0, 'Spanduk/umbul-umbul lokasi di', 'Y', 'Y'),
(3, 0, 'Billboard di', 'Y', 'Y'),
(4, 0, 'Pameran/event lokasi di', 'Y', 'Y'),
(5, 0, 'Brosurnya di ', 'Y', 'Y'),
(6, 0, 'Website', 'Y', 'Y'),
(7, 0, 'Info dari Teman', 'Y', 'Y'),
(8, 0, 'Kunjungan lokasi', 'Y', 'Y'),
(9, 0, 'Harga', 'Y', 'Y'),
(10, 0, 'Lokasi', 'Y', 'Y'),
(11, 0, 'Kemudahan angkutan', 'Y', 'Y'),
(12, 0, 'Spesifikasi/kualitas bangunan', 'Y', 'Y'),
(13, 0, 'Nama pengembang', 'Y', 'Y'),
(14, 0, 'Fasilitas', 'Y', 'Y'),
(15, 0, 'Desain/Layout/Model Rumah', 'Y', 'Y'),
(16, 0, 'Fitness center', 'Y', 'Y'),
(17, 0, 'Cafe/Resto', 'Y', 'Y'),
(18, 0, 'Kolam Renang', 'Y', 'Y'),
(19, 0, 'Tempat Olahraga', 'Y', 'Y'),
(20, 0, 'Tempat Ibadah', 'Y', 'Y'),
(21, 0, 'Lainnya', 'Y', 'Y'),
(22, 0, 'Tipe 36', 'Y', 'Y'),
(23, 0, 'Tipe 56', 'Y', 'Y'),
(24, 0, 'Tipe 90', 'Y', 'Y'),
(25, 0, 'Tipe 45', 'Y', 'Y'),
(26, 0, 'Tipe 70', 'Y', 'Y'),
(27, 0, 'Tipe>90', 'Y', 'Y'),
(28, 0, 'Tampak/bentuk', 'Y', 'Y'),
(29, 0, 'Interior/desain', 'Y', 'Y'),
(30, 0, 'Spesifikasi bangunan', 'Y', 'Y'),
(31, 0, 'Informatif dan desain menarik', 'Y', 'Y'),
(32, 0, 'Kurang informatif, desain menarik', 'Y', 'Y'),
(33, 0, 'Informatif, dan desain kurang menarik', 'Y', 'Y'),
(34, 0, 'Kurang informatif dan desain kurang menarik', 'Y', 'Y'),
(35, 0, 'AC', 'Y', 'Y'),
(36, 0, 'Smartphone', 'Y', 'Y'),
(37, 0, 'LED TV', 'Y', 'Y'),
(38, 0, 'Cashback', 'Y', 'Y'),
(39, 0, 'Voucher belanja', 'Y', 'Y'),
(40, 0, 'Lainnya', 'Y', 'Y'),
(41, 0, 'Mall Ciputra', 'Y', 'Y'),
(42, 0, 'DP Mall', 'Y', 'Y'),
(43, 0, 'Java Mall', 'Y', 'Y'),
(44, 0, 'ADA Swalayan Setia Budi', 'Y', 'Y'),
(45, 0, 'ADA Swalayan Majapahit', 'Y', 'Y'),
(46, 0, 'ADA Fatmawati', 'Y', 'Y'),
(47, 0, 'Lotte/Makro', 'Y', 'Y'),
(48, 0, 'Carrefour', 'Y', 'Y'),
(49, 0, 'Srondol Paragon', 'Y', 'Y'),
(50, 0, 'Cafe di', 'Y', 'Y'),
(51, 0, 'Restaurant di', 'Y', 'Y'),
(52, 0, 'PKL di', 'Y', 'Y'),
(53, 0, 'Suara Merdeka', 'Y', 'Y'),
(54, 0, 'Kompas', 'Y', 'Y'),
(55, 0, 'Koran Sindo', 'Y', 'Y'),
(56, 0, 'Radar Semarang', 'Y', 'Y'),
(57, 0, 'Tribun Semarang', 'Y', 'Y'),
(58, 0, 'Jawa Pos', 'Y', 'Y'),
(59, 0, 'Simpati', 'Y', 'Y'),
(60, 0, 'AS', 'Y', 'Y'),
(61, 0, 'Halo', 'Y', 'Y'),
(62, 0, 'IM3', 'Y', 'Y'),
(63, 0, 'Mentari', 'Y', 'Y'),
(64, 0, 'XL', 'Y', 'Y'),
(65, 0, 'Axis', 'Y', 'Y'),
(66, 0, 'Smartfren', 'Y', 'Y'),
(67, 0, 'Facebook', 'Y', 'Y'),
(68, 0, 'Twitter', 'Y', 'Y'),
(69, 0, 'Instagram', 'Y', 'Y'),
(70, 0, 'Path', 'Y', 'Y'),
(71, 0, 'Lainnya', 'Y', 'Y'),
(72, 0, 'hk', 'N', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_opsi`
--

CREATE TABLE `tb_opsi` (
  `id_opsi` int(2) NOT NULL,
  `id_soal` int(2) NOT NULL,
  `opsi` varchar(255) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `detail` enum('Y','N') NOT NULL,
  `jml` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_opsi`
--

INSERT INTO `tb_opsi` (`id_opsi`, `id_soal`, `opsi`, `aktif`, `detail`, `jml`) VALUES
(1, 1, 'Iklan elektronik & cetak di mana', 'Y', 'N', 21),
(2, 1, 'Spanduk atau umbul-umbul lokasi di ', 'Y', 'Y', 40),
(3, 1, 'Billboard di', 'Y', 'N', 0),
(4, 1, 'Pameran/event lokasi di', 'Y', 'N', 0),
(5, 1, 'Brosur/flyer di', 'Y', 'N', 0),
(6, 1, 'Website', 'Y', 'N', 1),
(7, 1, 'Info dari teman', 'Y', 'N', 0),
(8, 1, 'Kunjungan lokasi', 'Y', 'N', 12),
(9, 2, 'Harga', 'Y', 'N', 1),
(10, 2, 'Lokasi', 'Y', 'N', 1),
(11, 2, 'Kemudahan angkutan', 'Y', 'N', 0),
(12, 2, 'Nama Pengembang', 'Y', 'N', 0),
(13, 2, 'Spesifikasi/kualitas bangunan', 'Y', 'N', 0),
(14, 2, 'Fasilitas', 'Y', 'N', 0),
(15, 2, 'Desain/layout/model rumah', 'Y', 'N', 0),
(16, 3, 'Fitness center', 'Y', 'N', 0),
(17, 3, 'Cafe/resto', 'Y', 'N', 0),
(18, 3, 'Kolam renang', 'Y', 'N', 0),
(19, 3, 'Tempat olahraga', 'Y', 'N', 0),
(20, 3, 'Tempat Ibadah', 'Y', 'N', 0),
(21, 3, 'Lainnya', 'Y', 'N', 0),
(23, 4, 'Tipe 36', 'Y', 'N', 0),
(24, 4, 'Tipe 56', 'Y', 'N', 0),
(25, 4, 'Tipe 90', 'Y', 'N', 0),
(26, 4, 'Tipe 45', 'Y', 'N', 0),
(27, 4, 'Tipe >90', 'Y', 'N', 0),
(28, 5, 'Tampak/bentuk', 'Y', 'N', 0),
(29, 5, 'Interior/denah', 'Y', 'N', 0),
(30, 5, 'Spesifikasi bangunan', 'Y', 'N', 0),
(31, 6, 'Informatif dan desain menarik', 'Y', 'N', 0),
(32, 6, 'Kurang informatif, desain menarik', 'Y', 'N', 0),
(33, 6, 'Informatif, desain kurang menarik', 'Y', 'N', 0),
(34, 6, 'Kurang informatif dan desain kurang menarik', 'Y', 'N', 0),
(35, 7, 'AC', 'Y', 'N', 0),
(36, 7, 'Smartphone', 'Y', 'N', 0),
(37, 7, 'LED TV', 'Y', 'N', 0),
(38, 7, 'Cashback', 'Y', 'N', 0),
(39, 7, 'Voucher', 'Y', 'N', 0),
(40, 7, 'Lainnya', 'Y', 'N', 0),
(41, 8, 'Mall Ciputra', 'Y', 'N', 0),
(42, 8, 'Java Mall', 'Y', 'N', 0),
(43, 8, 'DP Mall', 'Y', 'N', 0),
(44, 8, 'ADA Swalayan Setia Budi', 'Y', 'N', 0),
(45, 8, 'ADA Swalayan Majapahit', 'Y', 'N', 0),
(46, 8, 'ADA Fatmawati', 'Y', 'N', 0),
(47, 8, 'Lotte/Makro', 'Y', 'N', 0),
(48, 8, 'Carrefour', 'Y', 'N', 0),
(49, 8, 'Srondol Paragon', 'Y', 'N', 0),
(50, 9, 'Cafe di', 'Y', 'N', 0),
(51, 9, 'Restaurant di', 'Y', 'N', 0),
(52, 9, 'PKL di', 'Y', 'N', 0),
(53, 10, 'Suara Merdeka', 'Y', 'N', 0),
(54, 10, 'Kompas', 'Y', 'N', 0),
(55, 10, 'Koran Sindo', 'Y', 'N', 0),
(56, 10, 'Radar Semarang', 'Y', 'N', 0),
(57, 10, 'Tribun Jateng', 'Y', 'N', 0),
(58, 10, 'Jawa Pos', 'Y', 'N', 0),
(59, 11, 'Simpati', 'Y', 'N', 0),
(60, 11, 'AS', 'Y', 'N', 0),
(61, 11, 'Halo', 'Y', 'N', 0),
(62, 11, 'Mentari', 'Y', 'N', 0),
(63, 11, 'XL', 'Y', 'N', 0),
(64, 11, 'AXIS', 'Y', 'N', 0),
(65, 11, 'Smartfren', 'Y', 'N', 0),
(66, 12, 'Facebook', 'Y', 'N', 2),
(67, 12, 'Twitter', 'Y', 'N', 0),
(68, 12, 'Instagram', 'Y', 'N', 0),
(69, 12, 'Path', 'Y', 'N', 0),
(72, 4, 'Tipe 70', 'Y', 'Y', 4),
(73, 3, 'iki', 'Y', 'Y', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pertanyaan`
--

CREATE TABLE `tb_pertanyaan` (
  `kode_pertanyaan` int(2) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pertanyaan`
--

INSERT INTO `tb_pertanyaan` (`kode_pertanyaan`, `pertanyaan`, `aktif`) VALUES
(1, 'Mengetahui informasi tentang perumahan Jaya Metro (Pilih dan isi tanda kurung di bawah)', 'Y'),
(2, 'Yang menarik dari perumahan Jaya Metro', 'Y'),
(3, 'Fasilitas yang diharapkan dari perumahan Jaya Metro', 'Y'),
(4, 'Tipe rumah yang ideal menurut Anda', 'Y'),
(5, 'Hal yang pertama dilihat dari sebuah rumah', 'Y'),
(6, 'Menurut Anda, bagaimana tampilan flyer/brosur/katalog kami :', 'Y'),
(7, 'Menurut Anda, gimmick apa yang menarik sebagai hadiah?', 'Y'),
(8, 'Mall yang sering Anda kunjungi:', 'Y'),
(9, 'Tempat makan yang paling sering dikunjungi (Pilih dan isi tanda kurung di bawah ini)', 'Y'),
(10, 'Koran yang paling sering dibaca', 'Y'),
(11, 'Provider yang digunakan', 'Y'),
(12, 'Akun Sosial Media yang sering digunakan :', 'Y'),
(13, 'Situs Online yang paling sering dibuka (Sebutkan) :', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id` int(3) NOT NULL,
  `produk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_produk`
--

INSERT INTO `tb_produk` (`id`, `produk`) VALUES
(1, 'Pandanaran Village'),
(2, 'Pandanaran Height'),
(3, 'Pandanaran Terrace'),
(4, 'Siranda Hills'),
(5, 'Ruko Pandanaran Hills'),
(6, 'Ruko Violan Jaya'),
(7, 'Ruko Mutiara Jaya'),
(8, 'Ruko Bukit Kencana Jaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(50) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('admin','user','pimpinan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `username`, `password`, `level`) VALUES
('e53389b4-ac2b-11e8-8c95-089e01a4eac6', 'Ahmad Roni', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe_rumah`
--

CREATE TABLE `tipe_rumah` (
  `id` int(11) NOT NULL,
  `tipe` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tipe_rumah`
--

INSERT INTO `tipe_rumah` (`id`, `tipe`) VALUES
(1, 'Tipe 36'),
(2, 'Tipe 56'),
(3, 'Tipe 90'),
(4, 'Tipe 45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tujuan_pembelian`
--

CREATE TABLE `tujuan_pembelian` (
  `id` int(11) NOT NULL,
  `tujuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tujuan_pembelian`
--

INSERT INTO `tujuan_pembelian` (`id`, `tujuan`) VALUES
(1, 'Tempat Tinggal'),
(2, 'Investasi'),
(3, 'Usaha/hibah'),
(4, 'Hadiah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usia`
--

CREATE TABLE `usia` (
  `id` int(11) NOT NULL,
  `usia` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `usia`
--

INSERT INTO `usia` (`id`, `usia`) VALUES
(1, '21-30'),
(2, '31-40'),
(3, '41-50'),
(4, '>51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_responden`
--
ALTER TABLE `data_responden`
  ADD PRIMARY KEY (`id_responden`);

--
-- Indexes for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penghasilan`
--
ALTER TABLE `penghasilan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sumber_penghasilan`
--
ALTER TABLE `sumber_penghasilan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD PRIMARY KEY (`no`),
  ADD KEY `id_responden` (`id_responden`);

--
-- Indexes for table `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  ADD PRIMARY KEY (`id_jawaban`),
  ADD KEY `kode_pertanyaan` (`id_soal`);

--
-- Indexes for table `tb_opsi`
--
ALTER TABLE `tb_opsi`
  ADD PRIMARY KEY (`id_opsi`),
  ADD KEY `id_soal` (`id_soal`);

--
-- Indexes for table `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  ADD PRIMARY KEY (`kode_pertanyaan`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tipe_rumah`
--
ALTER TABLE `tipe_rumah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tujuan_pembelian`
--
ALTER TABLE `tujuan_pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usia`
--
ALTER TABLE `usia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_responden`
--
ALTER TABLE `data_responden`
  MODIFY `id_responden` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penghasilan`
--
ALTER TABLE `penghasilan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sumber_penghasilan`
--
ALTER TABLE `sumber_penghasilan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  MODIFY `id_jawaban` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tb_opsi`
--
ALTER TABLE `tb_opsi`
  MODIFY `id_opsi` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  MODIFY `kode_pertanyaan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tipe_rumah`
--
ALTER TABLE `tipe_rumah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tujuan_pembelian`
--
ALTER TABLE `tujuan_pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usia`
--
ALTER TABLE `usia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD CONSTRAINT `tb_hasil_ibfk_1` FOREIGN KEY (`id_responden`) REFERENCES `data_responden` (`id_responden`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_opsi`
--
ALTER TABLE `tb_opsi`
  ADD CONSTRAINT `tb_opsi_ibfk_1` FOREIGN KEY (`id_soal`) REFERENCES `tb_pertanyaan` (`kode_pertanyaan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
