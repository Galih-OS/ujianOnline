-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2018 at 04:23 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beesmartv3`
--

-- --------------------------------------------------------

--
-- Table structure for table `cbt_admin`
--

CREATE TABLE `cbt_admin` (
  `Urut` int(11) NOT NULL,
  `XSekolah` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XTingkat` varchar(3) COLLATE latin1_general_ci NOT NULL,
  `XIp` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `XAlamat` text COLLATE latin1_general_ci NOT NULL,
  `XTelp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XFax` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XEmail` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XWeb` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `XLogo` text COLLATE latin1_general_ci NOT NULL,
  `XBanner` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XKepSek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `XAdmin` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `XPicAdmin` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XWarna` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XStatus` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XNIPKepsek` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XNIPAdmin` varchar(30) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cbt_admin`
--

INSERT INTO `cbt_admin` (`Urut`, `XSekolah`, `XTingkat`, `XIp`, `XAlamat`, `XTelp`, `XFax`, `XEmail`, `XWeb`, `XLogo`, `XBanner`, `XKepSek`, `XAdmin`, `XPicAdmin`, `XWarna`, `XStatus`, `XKodeSekolah`, `XNIPKepsek`, `XNIPAdmin`) VALUES
(2, 'SMK IPIEMS SURABAYA', 'SMK', '127.0.0.1', 'Jl. Menur 1 Surabaya', '0313787678', '0313787678', 'smk@ipiems.edi', 'ipiems.sch.id', 'lsekolah.jpg', '1.png', 'Sigit Hariono', 'Anonim', 'avatar.gif', 'cccccc', '1', 'P9999991', '13410100068', '13410100068');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_audio`
--

CREATE TABLE `cbt_audio` (
  `Urut` int(11) NOT NULL,
  `XMulai` float NOT NULL,
  `XPutar` int(11) NOT NULL,
  `XUserJawab` varchar(50) NOT NULL,
  `XTokenUjian` varchar(10) NOT NULL,
  `XKodeSoal` varchar(50) NOT NULL,
  `XNomerSoal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_jawaban`
--

CREATE TABLE `cbt_jawaban` (
  `Urutan` int(11) NOT NULL,
  `Urut` int(11) NOT NULL,
  `XNomerSoal` int(11) NOT NULL,
  `XKodeUjian` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XJenisSoal` int(11) NOT NULL,
  `XTokenUjian` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `XA` int(11) NOT NULL,
  `XB` int(11) NOT NULL,
  `XC` int(11) NOT NULL,
  `XD` int(11) NOT NULL,
  `XE` int(11) NOT NULL,
  `XJawaban` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XTemp` text COLLATE latin1_general_ci NOT NULL,
  `XJawabanEsai` text COLLATE latin1_general_ci NOT NULL,
  `XKodeJawab` varchar(2) COLLATE latin1_general_ci NOT NULL,
  `XNilaiJawab` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XNilai` int(11) NOT NULL,
  `XNilaiEsai` float NOT NULL,
  `XRagu` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XMulai` float NOT NULL,
  `XPutar` int(11) NOT NULL,
  `XMulaiV` float NOT NULL,
  `XPutarV` int(11) NOT NULL,
  `XTglJawab` date NOT NULL,
  `XJamJawab` time NOT NULL,
  `XKunciJawaban` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XUserJawab` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `Campur` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSemester` int(1) NOT NULL,
  `XUserPeriksa` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `XTglPeriksa` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XJamPeriksa` varchar(8) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cbt_jawaban`
--

INSERT INTO `cbt_jawaban` (`Urutan`, `Urut`, `XNomerSoal`, `XKodeUjian`, `XKodeKelas`, `XKodeJurusan`, `XKodeMapel`, `XKodeSoal`, `XJenisSoal`, `XTokenUjian`, `XA`, `XB`, `XC`, `XD`, `XE`, `XJawaban`, `XTemp`, `XJawabanEsai`, `XKodeJawab`, `XNilaiJawab`, `XNilai`, `XNilaiEsai`, `XRagu`, `XMulai`, `XPutar`, `XMulaiV`, `XPutarV`, `XTglJawab`, `XJamJawab`, `XKunciJawaban`, `XUserJawab`, `Campur`, `XSetId`, `XSemester`, `XUserPeriksa`, `XTglPeriksa`, `XJamPeriksa`) VALUES
(402, 3, 3, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'IJDES', 1, 2, 3, 4, 5, 'B', '', '', 'XB', '2', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '22:25:27', '3', 'U002', 'IJDES', '2016/2017', 1, '', '', ''),
(401, 2, 1, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'IJDES', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '22:25:24', '1', 'U002', 'IJDES', '2016/2017', 1, '', '', ''),
(400, 1, 2, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'IJDES', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '22:25:22', '1', 'U002', 'IJDES', '2016/2017', 1, '', '', ''),
(396, 2, 3, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'IJDES', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '22:24:55', '3', 'U001', 'IJDES', '2016/2017', 1, '', '', ''),
(397, 3, 1, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'IJDES', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '22:24:56', '1', 'U001', 'IJDES', '2016/2017', 1, '', '', ''),
(398, 4, 5, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'IJDES', 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '00:00:00', '', 'U001', '', '2016/2017', 1, '', '', ''),
(399, 5, 4, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'IJDES', 0, 0, 0, 0, 0, '', '5', 'indonesia', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '22:25:08', '', 'U001', '', '2016/2017', 1, '', '', ''),
(391, 2, 2, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OQSKS', 1, 2, 3, 4, 5, 'C', '', '', 'XC', '3', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '21:55:14', '1', 'U005', 'OQSKS', '2016/2017', 1, '', '', ''),
(392, 3, 3, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OQSKS', 1, 2, 3, 4, 5, 'D', '', '', 'XD', '4', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '21:55:17', '3', 'U005', 'OQSKS', '2016/2017', 1, '', '', ''),
(393, 4, 5, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'OQSKS', 0, 0, 0, 0, 0, '', '4', 'solo', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '21:55:27', '', 'U005', '', '2016/2017', 1, '', '', ''),
(394, 5, 4, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'OQSKS', 0, 0, 0, 0, 0, '', '5', 'amerika', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '21:55:40', '', 'U005', '', '2016/2017', 1, '', '', ''),
(395, 1, 2, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'IJDES', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '22:24:51', '1', 'U001', 'IJDES', '2016/2017', 1, '', '', ''),
(389, 5, 5, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'OQSKS', 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '00:00:00', '', 'U004', '', '2016/2017', 1, '', '', ''),
(390, 1, 1, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OQSKS', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '21:55:12', '1', 'U005', 'OQSKS', '2016/2017', 1, '', '', ''),
(383, 4, 5, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'OQSKS', 0, 0, 0, 0, 0, '', '4', 'bengawan solo', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '21:54:02', '', 'U003', '', '2016/2017', 1, '', '', ''),
(384, 5, 4, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'OQSKS', 0, 0, 0, 0, 0, '', '5', 'india', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '21:54:13', '', 'U003', '', '2016/2017', 1, '', '', ''),
(385, 1, 1, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OQSKS', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '21:54:28', '1', 'U004', 'OQSKS', '2016/2017', 1, '', '', ''),
(386, 2, 3, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OQSKS', 1, 2, 3, 4, 5, 'C', '', '', 'XC', '3', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '21:54:33', '3', 'U004', 'OQSKS', '2016/2017', 1, '', '', ''),
(387, 3, 2, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OQSKS', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '21:54:35', '1', 'U004', 'OQSKS', '2016/2017', 1, '', '', ''),
(388, 4, 4, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'OQSKS', 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '00:00:00', '', 'U004', '', '2016/2017', 1, '', '', ''),
(382, 3, 3, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OQSKS', 1, 2, 3, 4, 5, 'C', '', '', 'XC', '3', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '21:53:46', '3', 'U003', 'OQSKS', '2016/2017', 1, '', '', ''),
(381, 2, 2, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OQSKS', 1, 2, 3, 4, 5, 'E', '', '', 'XE', '5', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '21:53:40', '1', 'U003', 'OQSKS', '2016/2017', 1, '', '', ''),
(380, 1, 1, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OQSKS', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '21:53:35', '1', 'U003', 'OQSKS', '2016/2017', 1, '', '', ''),
(379, 5, 4, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'OQSKS', 0, 0, 0, 0, 0, '', '5', 'maroko', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '21:53:21', '', 'U002', '', '2016/2017', 1, '', '', ''),
(378, 4, 5, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'OQSKS', 0, 0, 0, 0, 0, '', '4', 'nil', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '21:53:16', '', 'U002', '', '2016/2017', 1, '', '', ''),
(377, 3, 1, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OQSKS', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '21:53:10', '1', 'U002', 'OQSKS', '2016/2017', 1, '', '', ''),
(376, 2, 2, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OQSKS', 1, 2, 3, 4, 5, 'B', '', '', 'XB', '2', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '21:53:07', '1', 'U002', 'OQSKS', '2016/2017', 1, '', '', ''),
(372, 3, 3, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OQSKS', 1, 2, 3, 4, 5, 'C', '', '', 'XC', '3', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '21:52:30', '3', 'U001', 'OQSKS', '2016/2017', 1, '', '', ''),
(373, 4, 5, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'OQSKS', 0, 0, 0, 0, 0, '', '4', 'maroko', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '21:52:38', '', 'U001', '', '2016/2017', 1, '', '', ''),
(374, 5, 4, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'OQSKS', 0, 0, 0, 0, 0, '', '5', 'indonesia', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '21:52:47', '', 'U001', '', '2016/2017', 1, '', '', ''),
(375, 1, 3, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OQSKS', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '21:53:05', '3', 'U002', 'OQSKS', '2016/2017', 1, '', '', ''),
(371, 2, 2, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OQSKS', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '21:52:29', '1', 'U001', 'OQSKS', '2016/2017', 1, '', '', ''),
(370, 1, 1, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OQSKS', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '21:52:24', '1', 'U001', 'OQSKS', '2016/2017', 1, '', '', ''),
(369, 5, 4, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'TAPLF', 0, 0, 0, 0, 0, '', '5', 'banda aceh', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '00:28:32', '', 'U005', '', '2016/2017', 1, '', '', ''),
(364, 5, 4, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'TAPLF', 0, 0, 0, 0, 0, '', '5', 'india', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '00:27:52', '', 'U004', '', '2016/2017', 1, '', '', ''),
(365, 1, 1, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'TAPLF', 1, 2, 3, 4, 5, 'B', '', '', 'XB', '2', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '00:28:09', '1', 'U005', 'TAPLF', '2016/2017', 1, '', '', ''),
(366, 2, 3, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'TAPLF', 1, 2, 3, 4, 5, 'B', '', '', 'XB', '2', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '00:28:11', '3', 'U005', 'TAPLF', '2016/2017', 1, '', '', ''),
(367, 3, 2, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'TAPLF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '00:28:16', '1', 'U005', 'TAPLF', '2016/2017', 1, '', '', ''),
(368, 4, 5, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'TAPLF', 0, 0, 0, 0, 0, '', '4', 'nil', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '00:28:20', '', 'U005', '', '2016/2017', 1, '', '', ''),
(363, 4, 5, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'TAPLF', 0, 0, 0, 0, 0, '', '4', 'nil', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '00:27:43', '', 'U004', '', '2016/2017', 1, '', '', ''),
(346, 2, 3, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'TAPLF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '00:26:02', '3', 'U001', 'TAPLF', '2016/2017', 1, '', '', ''),
(362, 3, 1, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'TAPLF', 1, 2, 3, 4, 5, 'E', '', '', 'XE', '5', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '00:27:38', '1', 'U004', 'TAPLF', '2016/2017', 1, '', '', ''),
(361, 2, 3, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'TAPLF', 1, 2, 3, 4, 5, 'D', '', '', 'XD', '4', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '00:27:35', '3', 'U004', 'TAPLF', '2016/2017', 1, '', '', ''),
(360, 1, 2, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'TAPLF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '00:27:31', '1', 'U004', 'TAPLF', '2016/2017', 1, '', '', ''),
(359, 5, 4, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'TAPLF', 0, 0, 0, 0, 0, '', '5', 'indonesia', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '00:27:17', '', 'U003', '', '2016/2017', 1, '', '', ''),
(358, 4, 5, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'TAPLF', 0, 0, 0, 0, 0, '', '4', 'nil', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '00:27:11', '', 'U003', '', '2016/2017', 1, '', '', ''),
(357, 3, 1, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'TAPLF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '00:27:05', '1', 'U003', 'TAPLF', '2016/2017', 1, '', '', ''),
(356, 2, 3, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'TAPLF', 1, 2, 3, 4, 5, 'C', '', '', 'XC', '3', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '00:27:03', '3', 'U003', 'TAPLF', '2016/2017', 1, '', '', ''),
(355, 1, 2, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'TAPLF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '00:26:59', '1', 'U003', 'TAPLF', '2016/2017', 1, '', '', ''),
(354, 5, 4, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'TAPLF', 0, 0, 0, 0, 0, '', '5', 'sumatra', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '00:26:47', '', 'U002', '', '2016/2017', 1, '', '', ''),
(353, 4, 5, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'TAPLF', 0, 0, 0, 0, 0, '', '4', 'nil', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '00:26:40', '', 'U002', '', '2016/2017', 1, '', '', ''),
(352, 3, 1, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'TAPLF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '00:26:36', '1', 'U002', 'TAPLF', '2016/2017', 1, '', '', ''),
(351, 2, 2, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'TAPLF', 1, 2, 3, 4, 5, 'B', '', '', 'XB', '2', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '00:26:33', '1', 'U002', 'TAPLF', '2016/2017', 1, '', '', ''),
(350, 1, 3, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'TAPLF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '00:26:30', '3', 'U002', 'TAPLF', '2016/2017', 1, '', '', ''),
(349, 5, 5, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'TAPLF', 0, 0, 0, 0, 0, '', '5', 'nil', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '00:26:16', '', 'U001', '', '2016/2017', 1, '', '', ''),
(348, 4, 4, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'TAPLF', 0, 0, 0, 0, 0, '', '4', 'indonesia\n', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '00:26:12', '', 'U001', '', '2016/2017', 1, '', '', ''),
(347, 3, 1, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'TAPLF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '00:26:03', '1', 'U001', 'TAPLF', '2016/2017', 1, '', '', ''),
(345, 1, 2, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'TAPLF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '00:25:57', '1', 'U001', 'TAPLF', '2016/2017', 1, '', '', ''),
(403, 4, 5, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'IJDES', 0, 0, 0, 0, 0, '', '4', 'nil', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '22:25:31', '', 'U002', '', '2016/2017', 1, '', '', ''),
(404, 5, 4, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'IJDES', 0, 0, 0, 0, 0, '', '5', 'maroko', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '22:25:36', '', 'U002', '', '2016/2017', 1, '', '', ''),
(405, 1, 1, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'AMQTY', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '22:45:18', '1', 'U001', 'AMQTY', '2016/2017', 2, '', '', ''),
(406, 2, 3, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'AMQTY', 1, 2, 3, 4, 5, 'C', '', '', 'XC', '3', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '22:45:22', '3', 'U001', 'AMQTY', '2016/2017', 2, '', '', ''),
(407, 3, 2, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'AMQTY', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '22:45:25', '1', 'U001', 'AMQTY', '2016/2017', 2, '', '', ''),
(408, 4, 4, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'AMQTY', 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '00:00:00', '', 'U001', '', '2016/2017', 2, '', '', ''),
(409, 5, 5, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'AMQTY', 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '00:00:00', '', 'U001', '', '2016/2017', 2, '', '', ''),
(410, 1, 3, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'AMQTY', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '22:52:45', '3', 'U002', 'AMQTY', '2016/2017', 2, '', '', ''),
(411, 2, 2, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'AMQTY', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '22:52:47', '1', 'U002', 'AMQTY', '2016/2017', 2, '', '', ''),
(412, 3, 1, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'AMQTY', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '22:52:50', '1', 'U002', 'AMQTY', '2016/2017', 2, '', '', ''),
(413, 4, 5, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'AMQTY', 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '00:00:00', '', 'U002', '', '2016/2017', 2, '', '', ''),
(414, 5, 4, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'AMQTY', 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '00:00:00', '', 'U002', '', '2016/2017', 2, '', '', ''),
(415, 1, 2, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'GEFZT', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '22:56:05', '1', 'U001', 'GEFZT', '2016/2017', 2, '', '', ''),
(416, 2, 1, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'GEFZT', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '22:56:07', '1', 'U001', 'GEFZT', '2016/2017', 2, '', '', ''),
(417, 3, 3, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'GEFZT', 1, 2, 3, 4, 5, 'C', '', '', 'XC', '3', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '22:56:10', '3', 'U001', 'GEFZT', '2016/2017', 2, '', '', ''),
(418, 4, 4, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'GEFZT', 0, 0, 0, 0, 0, '', '4', 'indonesia', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '22:56:16', '', 'U001', '', '2016/2017', 2, '', '', ''),
(419, 5, 5, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'GEFZT', 0, 0, 0, 0, 0, '', '5', 'sungai nil', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '22:56:22', '', 'U001', '', '2016/2017', 2, '', '', ''),
(420, 1, 1, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'GEFZT', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '22:58:39', '1', 'U002', 'GEFZT', '2016/2017', 2, '', '', ''),
(421, 2, 2, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'GEFZT', 1, 2, 3, 4, 5, 'B', '', '', 'XB', '2', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '22:58:44', '1', 'U002', 'GEFZT', '2016/2017', 2, '', '', ''),
(422, 3, 3, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'GEFZT', 1, 2, 3, 4, 5, 'C', '', '', 'XC', '3', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '22:58:46', '3', 'U002', 'GEFZT', '2016/2017', 2, '', '', ''),
(423, 4, 5, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'GEFZT', 0, 0, 0, 0, 0, '', '4', 'nil', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '22:58:50', '', 'U002', '', '2016/2017', 2, '', '', ''),
(424, 5, 4, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'GEFZT', 0, 0, 0, 0, 0, '', '5', 'maroko', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '22:58:54', '', 'U002', '', '2016/2017', 2, '', '', ''),
(425, 1, 2, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OROEF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '23:04:38', '1', 'U001', 'OROEF', '2016/2017', 2, '', '', ''),
(426, 2, 3, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OROEF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '23:04:44', '3', 'U001', 'OROEF', '2016/2017', 2, '', '', ''),
(427, 3, 1, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OROEF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '23:04:47', '1', 'U001', 'OROEF', '2016/2017', 2, '', '', ''),
(428, 4, 4, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'OROEF', 0, 0, 0, 0, 0, '', '4', 'maroko', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '23:04:52', '', 'U001', '', '2016/2017', 2, '', '', ''),
(429, 5, 5, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'OROEF', 0, 0, 0, 0, 0, '', '5', 'nil', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '23:04:55', '', 'U001', '', '2016/2017', 2, '', '', ''),
(430, 1, 1, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OROEF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '23:05:14', '1', 'U002', 'OROEF', '2016/2017', 2, '', '', ''),
(431, 2, 2, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OROEF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '23:05:15', '1', 'U002', 'OROEF', '2016/2017', 2, '', '', ''),
(432, 3, 3, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OROEF', 1, 2, 3, 4, 5, 'C', '', '', 'XC', '3', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '23:05:18', '3', 'U002', 'OROEF', '2016/2017', 2, '', '', ''),
(433, 4, 4, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'OROEF', 0, 0, 0, 0, 0, '', '4', 'indonesia', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '23:05:34', '', 'U002', '', '2016/2017', 2, '', '', ''),
(434, 5, 5, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'OROEF', 0, 0, 0, 0, 0, '', '5', 'sungai nil', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '23:05:51', '', 'U002', '', '2016/2017', 2, '', '', ''),
(435, 1, 1, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OROEF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '23:06:10', '1', 'U004', 'OROEF', '2016/2017', 2, '', '', ''),
(436, 2, 2, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OROEF', 1, 2, 3, 4, 5, 'C', '', '', 'XC', '3', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '23:06:11', '1', 'U004', 'OROEF', '2016/2017', 2, '', '', ''),
(437, 3, 3, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OROEF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '23:06:13', '3', 'U004', 'OROEF', '2016/2017', 2, '', '', ''),
(438, 4, 4, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'OROEF', 0, 0, 0, 0, 0, '', '4', 'indonesia', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '23:06:20', '', 'U004', '', '2016/2017', 2, '', '', ''),
(439, 5, 5, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'OROEF', 0, 0, 0, 0, 0, '', '5', 'sulawesi', '', '', 0, 0, '', 0, 0, 0, 0, '2018-01-17', '23:06:30', '', 'U004', '', '2016/2017', 2, '', '', ''),
(440, 1, 1, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OROEF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '23:06:45', '1', 'U005', 'OROEF', '2016/2017', 2, '', '', ''),
(441, 2, 2, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OROEF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '23:06:47', '1', 'U005', 'OROEF', '2016/2017', 2, '', '', ''),
(442, 3, 3, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'OROEF', 1, 2, 3, 4, 5, 'C', '', '', 'XC', '3', 1, 0, '', 0, 0, 0, 0, '2018-01-17', '23:06:50', '3', 'U005', 'OROEF', '2016/2017', 2, '', '', ''),
(443, 4, 5, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'OROEF', 0, 0, 0, 0, 0, '', '4', 'nil', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '23:06:56', '', 'U005', '', '2016/2017', 2, '', '', ''),
(444, 5, 4, 'UTS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'OROEF', 0, 0, 0, 0, 0, '', '5', 'indonesia', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-17', '23:07:01', '', 'U005', '', '2016/2017', 2, '', '', ''),
(445, 1, 2, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'MICQF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-18', '07:41:59', '1', 'U001', 'MICQF', '2016/2017', 2, '', '', ''),
(446, 2, 3, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'MICQF', 1, 2, 3, 4, 5, 'C', '', '', 'XC', '3', 1, 0, '', 0, 0, 0, 0, '2018-01-18', '07:42:02', '3', 'U001', 'MICQF', '2016/2017', 2, '', '', ''),
(447, 3, 1, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 1, 'MICQF', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 1, 0, '', 0, 0, 0, 0, '2018-01-18', '07:42:05', '1', 'U001', 'MICQF', '2016/2017', 2, '', '', ''),
(448, 4, 5, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'MICQF', 0, 0, 0, 0, 0, '', '4', 'nil', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-18', '07:42:10', '', 'U001', '', '2016/2017', 2, '', '', ''),
(449, 5, 4, 'UAS', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', 2, 'MICQF', 0, 0, 0, 0, 0, '', '5', 'indonesia', '', '', 0, 50, '', 0, 0, 0, 0, '2018-01-18', '07:42:17', '', 'U001', '', '2016/2017', 2, '', '', ''),
(450, 1, 4, 'UTS', 'X-DKV-1', 'DKV', 'Bing', 'BH_ING_DK_1', 1, 'HURRU', 2, 3, 4, 1, 5, 'C', '', '', 'XC', '4', 0, 0, '', 10.6967, 0, 0, 0, '2018-01-18', '08:28:56', '5', 'U001', 'HURRU', '2016/2017', 1, '', '', ''),
(451, 2, 3, 'UTS', 'X-DKV-1', 'DKV', 'Bing', 'BH_ING_DK_1', 1, 'HURRU', 5, 1, 2, 4, 3, 'D', '', '', 'XD', '4', 0, 0, '', 0, 0, 0, 0, '2018-01-18', '08:29:10', '3', 'U001', 'HURRU', '2016/2017', 1, '', '', ''),
(452, 3, 1, 'UTS', 'X-DKV-1', 'DKV', 'Bing', 'BH_ING_DK_1', 1, 'HURRU', 1, 3, 4, 5, 2, 'C', '', '', 'XC', '4', 1, 0, '', 0, 0, 0, 0, '2018-01-18', '08:29:12', '4', 'U001', 'HURRU', '2016/2017', 1, '', '', ''),
(453, 4, 2, 'UTS', 'X-DKV-1', 'DKV', 'Bing', 'BH_ING_DK_1', 1, 'HURRU', 4, 5, 3, 2, 1, 'B', '', '', 'XB', '5', 0, 0, '', 0, 0, 0, 0, '2018-01-18', '08:29:15', '3', 'U001', 'HURRU', '2016/2017', 1, '', '', ''),
(454, 5, 5, 'UTS', 'X-DKV-1', 'DKV', 'Bing', 'BH_ING_DK_1', 1, 'HURRU', 5, 2, 1, 4, 3, 'A', '', '', 'XA', '5', 0, 0, '', 0, 0, 0, 0, '2018-01-18', '08:29:19', '4', 'U001', 'HURRU', '2016/2017', 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_kelas`
--

CREATE TABLE `cbt_kelas` (
  `Urut` int(11) NOT NULL,
  `XKodeLevel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XNamaKelas` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XStatusKelas` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cbt_kelas`
--

INSERT INTO `cbt_kelas` (`Urut`, `XKodeLevel`, `XNamaKelas`, `XKodeJurusan`, `XKodeKelas`, `XStatusKelas`, `XKodeSekolah`) VALUES
(1, 'X-DKV', 'X-DKV-1', 'DKV', 'X-DKV-1', '1', ''),
(2, 'X-MM', 'X-MM-1', 'MM', 'X-MM-1', '1', ''),
(3, 'X-MM', 'X-MM-2', 'MM', 'X-MM-2', '1', ''),
(4, 'X-MM', 'X-MM-3', 'MM', 'X-MM-3', '1', ''),
(5, 'X-MM', 'X-MM-4', 'MM', 'X-MM-4', '1', ''),
(6, 'XI-DKV', 'XI-DKV-1', 'DKV', 'XI-DKV-1', '1', ''),
(7, 'XI-MM', 'XI-MM-1', 'MM', 'XI-MM-1', '1', ''),
(8, 'XI-MM', 'XI-MM-2', 'MM', 'XI-MM-2', '1', ''),
(9, 'XI-MM', 'XI-MM-3', 'MM', 'XI-MM-3', '1', ''),
(10, 'XI-MM', 'XI-MM-4', 'MM', 'XI-MM-4', '1', ''),
(11, 'XII-DKV', 'XII-DKV-1', 'DKV', 'XII-DKV-1', '1', ''),
(12, 'XII-DKV', 'XII-DKV-2', 'DKV', 'XII-DKV-2', '1', ''),
(13, 'XII-MM', 'XII-MM-1', 'MM', 'XII-MM-1', '1', ''),
(14, 'XII-MM', 'XII-MM-2', 'MM', 'XII-MM-2', '1', ''),
(15, 'XII-MM', 'XII-MM-3', 'MM', 'XII-MM-3', '1', ''),
(16, 'XII-MM', 'XII-MM-4', 'MM', 'XII-MM-4', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_mapel`
--

CREATE TABLE `cbt_mapel` (
  `Urut` int(11) NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XNamaMapel` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XTglBuat` date NOT NULL,
  `XPersenUH` int(11) NOT NULL,
  `XPersenUTS` int(11) NOT NULL,
  `XPersenUAS` int(11) NOT NULL,
  `XKKM` float NOT NULL,
  `XMapelAgama` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cbt_mapel`
--

INSERT INTO `cbt_mapel` (`Urut`, `XKodeKelas`, `XKodeMapel`, `XNamaMapel`, `XTglBuat`, `XPersenUH`, `XPersenUTS`, `XPersenUAS`, `XKKM`, `XMapelAgama`, `XKodeSekolah`) VALUES
(1, '', 'Pislam', 'Pendidikan Agama Islam', '0000-00-00', 0, 50, 50, 70, 'A', ''),
(2, '', 'Pkristen', 'Pendidikan Agama Kristen Prote', '0000-00-00', 0, 50, 50, 70, 'A', ''),
(3, '', 'Pkatolik', 'Pendidikan Agama Katolik', '0000-00-00', 0, 50, 50, 70, 'A', ''),
(4, '', 'Phindu', 'Pendidikan Agama Hindu', '0000-00-00', 0, 50, 50, 70, 'A', ''),
(5, '', 'Pbudha', 'Pendidikan Agama Budha', '0000-00-00', 0, 50, 50, 70, 'A', ''),
(6, '', 'Pkonghucu', 'Pendidikan Agama Kong Hu Cu', '0000-00-00', 0, 50, 50, 70, 'A', ''),
(7, '', 'Pkn', 'Pendidikan Kewarganegaraan', '0000-00-00', 0, 50, 50, 70, 'N', ''),
(8, '', 'Bi', 'Bahasa Indonesia', '0000-00-00', 0, 50, 50, 70, 'N', ''),
(9, '', 'Penjas', 'Penjaskes', '0000-00-00', 0, 50, 50, 70, 'N', ''),
(10, '', 'Mtk', 'Matematika', '0000-00-00', 0, 40, 60, 65, 'N', ''),
(11, '', 'Bing', 'Bahasa Inggris', '0000-00-00', 0, 50, 50, 65, 'N', ''),
(12, '', 'IPA', 'IPA', '0000-00-00', 0, 50, 50, 70, 'N', ''),
(13, '', 'Fisika', 'Fisika', '0000-00-00', 0, 40, 60, 65, 'N', ''),
(14, '', 'Kimia', 'Kimia', '0000-00-00', 0, 40, 60, 65, 'N', ''),
(15, '', 'IPS', 'IPS', '0000-00-00', 0, 50, 50, 70, 'N', '');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_nilai`
--

CREATE TABLE `cbt_nilai` (
  `Urut` int(11) NOT NULL,
  `XNomerUjian` varchar(20) NOT NULL,
  `XNIK` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XKodeUjian` varchar(10) NOT NULL,
  `XTokenUjian` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XTgl` date NOT NULL,
  `XJumSoal` int(11) NOT NULL,
  `XBenar` int(11) NOT NULL,
  `XSalah` int(11) NOT NULL,
  `XNilai` int(11) NOT NULL,
  `XPersenPil` float NOT NULL,
  `XPersenEsai` float NOT NULL,
  `XEsai` float NOT NULL,
  `XTotalNilai` float NOT NULL,
  `XKodeMapel` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) NOT NULL,
  `XKodeSoal` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) NOT NULL,
  `XSemester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_nilai`
--

INSERT INTO `cbt_nilai` (`Urut`, `XNomerUjian`, `XNIK`, `XKodeUjian`, `XTokenUjian`, `XTgl`, `XJumSoal`, `XBenar`, `XSalah`, `XNilai`, `XPersenPil`, `XPersenEsai`, `XEsai`, `XTotalNilai`, `XKodeMapel`, `XKodeKelas`, `XKodeSoal`, `XSetId`, `XSemester`) VALUES
(13, 'U001', '1199/250/084', 'UTS', 'TAPLF', '2018-01-17', 5, 2, 1, 67, 70, 30, 100, 76.9, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 1),
(14, 'U002', '1199/250/085', 'UTS', 'TAPLF', '2018-01-17', 5, 1, 2, 33, 70, 30, 50, 38.1, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 1),
(15, 'U003', '1199/250/086', 'UTS', 'TAPLF', '2018-01-17', 5, 3, 0, 100, 70, 30, 100, 100, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 1),
(16, 'U004', '1199/250/087', 'UTS', 'TAPLF', '2018-01-17', 5, 1, 2, 33, 70, 30, 50, 38.1, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 1),
(17, 'U005', '1199/250/088', 'UTS', 'TAPLF', '2018-01-17', 5, 1, 2, 33, 70, 30, 50, 38.1, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 1),
(18, 'U001', '1199/250/084', 'UAS', 'OQSKS', '2018-01-17', 5, 3, 0, 100, 70, 30, 50, 85, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 1),
(19, 'U002', '1199/250/085', 'UAS', 'OQSKS', '2018-01-17', 5, 1, 2, 33, 70, 30, 50, 38.1, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 1),
(20, 'U003', '1199/250/086', 'UAS', 'OQSKS', '2018-01-17', 5, 2, 1, 67, 70, 30, 0, 46.9, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 1),
(21, 'U004', '1199/250/087', 'UAS', 'OQSKS', '2018-01-17', 5, 3, 0, 100, 70, 30, 0, 70, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 1),
(22, 'U005', '1199/250/088', 'UAS', 'OQSKS', '2018-01-17', 5, 1, 2, 33, 70, 30, 0, 23.1, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 1),
(29, 'U001', '1199/250/084', 'UTS', 'OROEF', '2018-01-17', 5, 2, 1, 67, 70, 30, 50, 61.9, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 2),
(30, 'U002', '1199/250/085', 'UTS', 'OROEF', '2018-01-17', 5, 3, 0, 100, 70, 30, 100, 100, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 2),
(31, 'U004', '1199/250/087', 'UTS', 'OROEF', '2018-01-17', 5, 1, 2, 33, 70, 30, 50, 38.1, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 2),
(32, 'U005', '1199/250/088', 'UTS', 'OROEF', '2018-01-17', 5, 3, 0, 100, 70, 30, 100, 100, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 2),
(33, 'U003', '1199/250/086', 'UTS', 'OROEF', '2018-01-17', 5, 2, 1, 67, 70, 30, 0, 46.9, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 2),
(34, 'U001', '1199/250/084', 'UAS', 'MICQF', '2018-01-18', 5, 3, 0, 100, 70, 30, 100, 100, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 2),
(39, 'U002', '1199/250/085', 'UAS', 'MICQF', '2018-01-18', 5, 3, 0, 100, 70, 30, 100, 100, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 2),
(40, 'U003', '1199/250/086', 'UAS', 'MICQF', '2018-01-18', 5, 3, 0, 100, 70, 30, 100, 100, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 2),
(41, 'U004', '1199/250/087', 'UAS', 'MICQF', '2018-01-18', 5, 3, 0, 100, 70, 30, 100, 100, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 2),
(42, 'U005', '1199/250/088', 'UAS', 'MICQF', '2018-01-18', 5, 3, 0, 100, 70, 30, 100, 100, 'IPA', 'X-DKV-1', 'IPA-DKV-1', '2017/2018', 2),
(43, 'U001', '1199/250/084', 'UTS', 'HURRU', '2018-01-18', 5, 1, 4, 20, 100, 0, 0, 20, 'Bing', 'X-DKV-1', 'BH_ING_DK_1', '2017/2018', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_paketsoal`
--

CREATE TABLE `cbt_paketsoal` (
  `Urut` int(11) NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XLevel` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XPaketSoal` text COLLATE latin1_general_ci NOT NULL,
  `XSesi` int(11) NOT NULL DEFAULT '1',
  `XJenisSoal` int(11) NOT NULL,
  `XPilGanda` int(11) NOT NULL,
  `XEsai` int(11) NOT NULL,
  `XPersenPil` int(11) NOT NULL,
  `XPersenEsai` int(11) NOT NULL,
  `XKodeSoal` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XJumPilihan` int(11) NOT NULL DEFAULT '5',
  `XJumSoal` int(11) NOT NULL,
  `JumUjian` int(11) NOT NULL,
  `XAcakSoal` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `XGuru` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSemua` enum('Y','T') COLLATE latin1_general_ci NOT NULL DEFAULT 'T',
  `XStatusSoal` varchar(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `XTglBuat` date NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cbt_paketsoal`
--

INSERT INTO `cbt_paketsoal` (`Urut`, `XKodeKelas`, `XLevel`, `XKodeJurusan`, `XKodeMapel`, `XPaketSoal`, `XSesi`, `XJenisSoal`, `XPilGanda`, `XEsai`, `XPersenPil`, `XPersenEsai`, `XKodeSoal`, `XJumPilihan`, `XJumSoal`, `JumUjian`, `XAcakSoal`, `XGuru`, `XSetId`, `XSemua`, `XStatusSoal`, `XTglBuat`, `XKodeSekolah`) VALUES
(43, 'X-DKV-1', 'SMK', 'DKV', 'IPA', '', 0, 0, 3, 2, 70, 30, 'IPA-DKV-1', 5, 5, 0, '', 'guru1', '', 'T', 'N', '2018-01-17', ''),
(45, 'X-DKV-1', 'SMK', 'DKV', 'Bing', '', 0, 0, 5, 0, 100, 0, 'BH_ING_DK_1', 5, 5, 0, '', 'guru1', '', 'T', 'N', '2018-01-18', '');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_setid`
--

CREATE TABLE `cbt_setid` (
  `Urut` int(11) NOT NULL,
  `XKodeAY` varchar(10) NOT NULL,
  `XNamaAY` varchar(100) NOT NULL,
  `XStatus` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_setid`
--

INSERT INTO `cbt_setid` (`Urut`, `XKodeAY`, `XNamaAY`, `XStatus`) VALUES
(4, '2017/2018', 'Tahun Ajaran 2017/2018', '1'),
(14, '2019/2020', 'Tahun Ajaran 2019/2020', '0');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_siswa`
--

CREATE TABLE `cbt_siswa` (
  `Urut` int(11) NOT NULL,
  `XNomerUjian` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XNIK` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XNamaSiswa` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeLevel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XJenisKelamin` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XPassword` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `XFoto` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XAgama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSesi` int(11) NOT NULL,
  `XRuang` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XPilihan` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cbt_siswa`
--

INSERT INTO `cbt_siswa` (`Urut`, `XNomerUjian`, `XNIK`, `XKodeJurusan`, `XNamaSiswa`, `XKodeKelas`, `XKodeLevel`, `XJenisKelamin`, `XPassword`, `XFoto`, `XAgama`, `XSetId`, `XSesi`, `XRuang`, `XKodeSekolah`, `XPilihan`) VALUES
(390, 'U035', '1151/929.073', 'MM', 'ACHMAD FAUZI', 'X-MM-2', 'X-MM', 'L', 'A34', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(391, 'U036', '1151/929.074', 'MM', 'ADIMAS TEGAR PUTRA SUMITRA', 'X-MM-2', 'X-MM', 'L', 'A35', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(392, 'U037', '1151/929.075', 'MM', 'AGENG SAVIRGO KARYATIO', 'X-MM-2', 'X-MM', 'L', 'A36', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(393, 'U038', '1151/929.076', 'MM', 'AMELIA EL FATHUL SYAFITRI', 'X-MM-2', 'X-MM', 'P', 'A37', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(394, 'U039', '1151/929.077', 'MM', 'ANNISA RUSMIATI', 'X-MM-2', 'X-MM', 'P', 'A38', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(395, 'U040', '1151/929.078', 'MM', 'ARIF MA`RUF HIDAYAH', 'X-MM-2', 'X-MM', 'L', 'A39', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(396, 'U041', '1151/929.079', 'MM', 'ARIO MAULANA', 'X-MM-2', 'X-MM', 'L', 'A40', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(397, 'U042', '1151/929.080', 'MM', 'BIMA PERSADA ARIES FIANTONO', 'X-MM-2', 'X-MM', 'L', 'A41', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(398, 'U043', '1151/929.081', 'MM', 'BIMASAKTI ASNAWAN PUTRA', 'X-MM-2', 'X-MM', 'L', 'A42', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(399, 'U044', '1151/929.082', 'MM', 'CELVIN ADITYA', 'X-MM-2', 'X-MM', 'L', 'A43', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(400, 'U045', '1151/929.083', 'MM', 'Daffa Imana Indrastadika', 'X-MM-2', 'X-MM', 'L', 'A44', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(401, 'U046', '1151/929.084', 'MM', 'DICKY SETIAWAN', 'X-MM-2', 'X-MM', 'L', 'A45', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(402, 'U047', '1151/929.085', 'MM', 'DIMAS RENDI ADI SUSANTO', 'X-MM-2', 'X-MM', 'L', 'A46', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(403, 'U048', '1151/929.086', 'MM', 'DWI ANANDA PRIHARYANTO', 'X-MM-2', 'X-MM', 'L', 'A47', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(404, 'U049', '1151/929.087', 'MM', 'FARID JULIAN ANUGRAH', 'X-MM-2', 'X-MM', 'L', 'A48', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(405, 'U050', '1151/929.088', 'MM', 'HANIS RAMADHAN', 'X-MM-2', 'X-MM', 'L', 'A49', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(406, 'U051', '1151/929.089', 'MM', 'HANNA MACHFIROH', 'X-MM-2', 'X-MM', 'P', 'A50', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(407, 'U052', '1151/929.090', 'MM', 'Helmi Fauzan Rahadi', 'X-MM-2', 'X-MM', 'L', 'A51', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(408, 'U053', '1151/929.091', 'MM', 'IRICO FEBRIANSAH', 'X-MM-2', 'X-MM', 'L', 'A52', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(409, 'U054', '1151/929.092', 'MM', 'KEMAL PASHA FADILLA UMAR', 'X-MM-2', 'X-MM', 'L', 'A53', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(410, 'U055', '1151/929.093', 'MM', 'MUH. YUNUS ARDIANSYAH', 'X-MM-2', 'X-MM', 'L', 'A54', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(411, 'U056', '1151/929.094', 'MM', 'MUHAMMAD BENY AFDILLAH', 'X-MM-2', 'X-MM', 'L', 'A55', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(412, 'U057', '1151/929.095', 'MM', 'NAVITA PUTRI AGUSTIN', 'X-MM-2', 'X-MM', 'P', 'A56', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(413, 'U058', '1151/929.096', 'MM', 'NOVA DWI MAHENDRA', 'X-MM-2', 'X-MM', 'L', 'A57', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(414, 'U059', '1151/929.097', 'MM', 'NUR BAETI', 'X-MM-2', 'X-MM', 'P', 'A58', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(415, 'U060', '1151/929.098', 'MM', 'RAJENDRA AIRLIAN ARIPUTRA', 'X-MM-2', 'X-MM', 'L', 'A59', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(416, 'U061', '1151/929.099', 'MM', 'RAYHANSYAH MAULANA RIZKIAWAN', 'X-MM-2', 'X-MM', 'L', 'A60', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(417, 'U062', '1151/929.100', 'MM', 'RENDI FEBIO PUTRA', 'X-MM-2', 'X-MM', 'L', 'A61', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(418, 'U063', '1151/929.101', 'MM', 'RIZAL ABIDIN', 'X-MM-2', 'X-MM', 'L', 'A62', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(419, 'U064', '1151/929.102', 'MM', 'ROBBIL GEO SANDY', 'X-MM-2', 'X-MM', 'L', 'A63', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(420, 'U065', '1151/929.103', 'MM', 'RYAN AJI SAPUTRA', 'X-MM-2', 'X-MM', 'L', 'A64', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(421, 'U066', '1151/929.104', 'MM', 'SEPTIANI TRI ANJARWATI', 'X-MM-2', 'X-MM', 'P', 'A65', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(422, 'U067', '1151/929.105', 'MM', 'TRI PURNAMA EKA PUTRA', 'X-MM-2', 'X-MM', 'L', 'A66', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(423, 'U068', '1151/929.106', 'MM', 'VONNY IFTITAH PUTRI', 'X-MM-2', 'X-MM', 'P', 'A67', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(424, 'U069', '1151/929.107', 'MM', 'WILDA SARI BASRI', 'X-MM-2', 'X-MM', 'P', 'A68', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(425, 'U070', '1151/929.108', 'MM', 'YESI QUR`NIASARI', 'X-MM-2', 'X-MM', 'P', 'A69', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(426, 'U071', '1151/929.109', 'MM', 'ZAKARIA', 'X-MM-2', 'X-MM', 'L', 'A70', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(357, 'U002', '1199/250/085', 'DKV', 'ADE SAFRIL WAHYU PRADHANA', 'X-DKV-1', 'X-DKV', 'L', 'A2', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(358, 'U003', '1199/250/086', 'DKV', 'ADINDA THALIA SARI', 'X-DKV-1', 'X-DKV', 'P', 'A3', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(359, 'U004', '1199/250/087', 'DKV', 'ADITYA WISNU PRATAM', 'X-DKV-1', 'X-DKV', 'L', 'A4', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(360, 'U005', '1199/250/088', 'DKV', 'ADREAYAN CANDANI PUTRA', 'X-DKV-1', 'X-DKV', 'L', 'A5', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(361, 'U006', '1199/250/089', 'DKV', 'ALAMSYAH ABDILAH', 'X-DKV-1', 'X-DKV', 'L', 'A6', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(362, 'U007', '1199/250/090', 'DKV', 'ALDY NOVI ANSYAH', 'X-DKV-1', 'X-DKV', 'L', 'A7', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(363, 'U008', '1199/250/091', 'DKV', 'ALDY RISTIOVAN', 'X-DKV-1', 'X-DKV', 'L', 'A8', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(364, 'U009', '1199/250/092', 'DKV', 'ANGELIA SHAVIRA PUTRI SOPHITA', 'X-DKV-1', 'X-DKV', 'P', 'A9', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(365, 'U010', '1199/250/093', 'DKV', 'ARYO PHRAMUDHITO', 'X-DKV-1', 'X-DKV', 'L', 'A10', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(366, 'U011', '1199/250/094', 'DKV', 'AZIZAH YASMIN', 'X-DKV-1', 'X-DKV', 'P', 'A11', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(367, 'U012', '1199/250/095', 'DKV', 'BAGAS FITRA WARDANIANSYAG', 'X-DKV-1', 'X-DKV', 'L', 'A12', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(368, 'U013', '1199/250/096', 'DKV', 'CITRA AYU DAMAYANTI KUSWOYO', 'X-DKV-1', 'X-DKV', 'P', 'A13', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(369, 'U014', '1199/250/097', 'DKV', 'DANDY FAJAR PRIAMBODO', 'X-DKV-1', 'X-DKV', 'L', 'A14', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(370, 'U015', '1199/250/098', 'DKV', 'HARYO YUDO SENO', 'X-DKV-1', 'X-DKV', 'L', 'A15', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(371, 'U016', '1199/250/099', 'DKV', 'JEREMY ADRIEL OENTORO', 'X-DKV-1', 'X-DKV', 'L', 'A16', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(372, 'U017', '1199/250/100', 'DKV', 'MOCH. FIQRI IVANSYAH', 'X-DKV-1', 'X-DKV', 'L', 'A17', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(373, 'U018', '1199/250/101', 'DKV', 'MUHAMMAD ANDHIKA ARYA PUTRA', 'X-DKV-1', 'X-DKV', 'L', 'A18', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(374, 'U019', '1199/250/102', 'DKV', 'MUHAMMAD RIZKY ARYANTO', 'X-DKV-1', 'X-DKV', 'L', 'A19', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(375, 'U020', '1199/250/103', 'DKV', 'NADYA AUDI AMARTHA', 'X-DKV-1', 'X-DKV', 'P', 'A20', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(376, 'U021', '1199/250/104', 'DKV', 'NINDA IKA MARET NAWATI', 'X-DKV-1', 'X-DKV', 'P', 'A21', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(377, 'U022', '1199/250/105', 'DKV', 'ODIEK DARMAWAN', 'X-DKV-1', 'X-DKV', 'L', 'A22', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(378, 'U023', '1199/250/106', 'DKV', 'OTRI FATHIN NAUFAL WIDJANARKO', 'X-DKV-1', 'X-DKV', 'L', 'A23', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(379, 'U024', '1199/250/107', 'DKV', 'QIMAS GUSTI PRAYOGO', 'X-DKV-1', 'X-DKV', 'L', 'A24', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(380, 'U025', '1199/250/108', 'DKV', 'RACHMAD RIZKY SEPTIAWAN', 'X-DKV-1', 'X-DKV', 'L', 'A25', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(381, 'U026', '1199/250/109', 'DKV', 'REZTA AULIA AZMI', 'X-DKV-1', 'X-DKV', 'P', 'A26', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(382, 'U027', '1199/250/110', 'DKV', 'RINDI ANTIKA', 'X-DKV-1', 'X-DKV', 'P', 'A27', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(383, 'U028', '1199/250/111', 'DKV', 'RISKA MARDYA PUTRI', 'X-DKV-1', 'X-DKV', 'P', 'A28', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(384, 'U029', '1199/250/112', 'DKV', 'SHEKINAH GLORIA PANGALILA', 'X-DKV-1', 'X-DKV', 'P', 'A29', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(385, 'U030', '1199/250/113', 'DKV', 'SISKA NUR CAHYANI', 'X-DKV-1', 'X-DKV', 'P', 'A30', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(386, 'U031', '1199/250/114', 'DKV', 'SITI NUR`AINI', 'X-DKV-1', 'X-DKV', 'P', 'A31', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(387, 'U032', '1199/250/115', 'DKV', 'YUNITA NOVIYATU SUGIANTO PUTRI', 'X-DKV-1', 'X-DKV', 'P', 'A32', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(388, 'U033', '1199/250/116', 'DKV', 'YURI ZAIDAN KHAIRULLAH', 'X-DKV-1', 'X-DKV', 'L', 'A33', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(389, 'U034', '1151/929.072', 'MM', 'RIZQI NAUFAL HARIANTO', 'X-MM-2', 'X-MM', 'L', 'A33', '', '', '2016/2017', 2, 'LABKOM-C', 'P9999991', ''),
(356, 'U001', '1199/250/084', 'DKV', 'PAUNDRA UGRASHENA', 'X-DKV-1', 'X-DKV', 'L', 'A1', '', '', '2016/2017', 1, 'LABKOM-A', 'P9999991', ''),
(427, 'U001', '1199/250/084', 'DKV', 'PAUNDRA UGRASHENA', 'X-DKV-1', 'X-DKV', 'L', 'A1', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(428, 'U002', '1199/250/085', 'DKV', 'ADE SAFRIL WAHYU PRADHANA', 'X-DKV-1', 'X-DKV', 'L', 'A2', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(429, 'U003', '1199/250/086', 'DKV', 'ADINDA THALIA SARI', 'X-DKV-1', 'X-DKV', 'P', 'A3', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(430, 'U004', '1199/250/087', 'DKV', 'ADITYA WISNU PRATAM', 'X-DKV-1', 'X-DKV', 'L', 'A4', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(431, 'U005', '1199/250/088', 'DKV', 'ADREAYAN CANDANI PUTRA', 'X-DKV-1', 'X-DKV', 'L', 'A5', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(432, 'U006', '1199/250/089', 'DKV', 'ALAMSYAH ABDILAH', 'X-DKV-1', 'X-DKV', 'L', 'A6', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(433, 'U007', '1199/250/090', 'DKV', 'ALDY NOVI ANSYAH', 'X-DKV-1', 'X-DKV', 'L', 'A7', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(434, 'U008', '1199/250/091', 'DKV', 'ALDY RISTIOVAN', 'X-DKV-1', 'X-DKV', 'L', 'A8', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(435, 'U009', '1199/250/092', 'DKV', 'ANGELIA SHAVIRA PUTRI SOPHITA', 'X-DKV-1', 'X-DKV', 'P', 'A9', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(436, 'U010', '1199/250/093', 'DKV', 'ARYO PHRAMUDHITO', 'X-DKV-1', 'X-DKV', 'L', 'A10', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(437, 'U011', '1199/250/094', 'DKV', 'AZIZAH YASMIN', 'X-DKV-1', 'X-DKV', 'P', 'A11', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(438, 'U012', '1199/250/095', 'DKV', 'BAGAS FITRA WARDANIANSYAG', 'X-DKV-1', 'X-DKV', 'L', 'A12', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(439, 'U013', '1199/250/096', 'DKV', 'CITRA AYU DAMAYANTI KUSWOYO', 'X-DKV-1', 'X-DKV', 'P', 'A13', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(440, 'U014', '1199/250/097', 'DKV', 'DANDY FAJAR PRIAMBODO', 'X-DKV-1', 'X-DKV', 'L', 'A14', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(441, 'U015', '1199/250/098', 'DKV', 'HARYO YUDO SENO', 'X-DKV-1', 'X-DKV', 'L', 'A15', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(442, 'U016', '1199/250/099', 'DKV', 'JEREMY ADRIEL OENTORO', 'X-DKV-1', 'X-DKV', 'L', 'A16', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(443, 'U017', '1199/250/100', 'DKV', 'MOCH. FIQRI IVANSYAH', 'X-DKV-1', 'X-DKV', 'L', 'A17', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(444, 'U018', '1199/250/101', 'DKV', 'MUHAMMAD ANDHIKA ARYA PUTRA', 'X-DKV-1', 'X-DKV', 'L', 'A18', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(445, 'U019', '1199/250/102', 'DKV', 'MUHAMMAD RIZKY ARYANTO', 'X-DKV-1', 'X-DKV', 'L', 'A19', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(446, 'U020', '1199/250/103', 'DKV', 'NADYA AUDI AMARTHA', 'X-DKV-1', 'X-DKV', 'P', 'A20', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(447, 'U021', '1199/250/104', 'DKV', 'NINDA IKA MARET NAWATI', 'X-DKV-1', 'X-DKV', 'P', 'A21', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(448, 'U022', '1199/250/105', 'DKV', 'ODIEK DARMAWAN', 'X-DKV-1', 'X-DKV', 'L', 'A22', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(449, 'U023', '1199/250/106', 'DKV', 'OTRI FATHIN NAUFAL WIDJANARKO', 'X-DKV-1', 'X-DKV', 'L', 'A23', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(450, 'U024', '1199/250/107', 'DKV', 'QIMAS GUSTI PRAYOGO', 'X-DKV-1', 'X-DKV', 'L', 'A24', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(451, 'U025', '1199/250/108', 'DKV', 'RACHMAD RIZKY SEPTIAWAN', 'X-DKV-1', 'X-DKV', 'L', 'A25', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(452, 'U026', '1199/250/109', 'DKV', 'REZTA AULIA AZMI', 'X-DKV-1', 'X-DKV', 'P', 'A26', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(453, 'U027', '1199/250/110', 'DKV', 'RINDI ANTIKA', 'X-DKV-1', 'X-DKV', 'P', 'A27', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(454, 'U028', '1199/250/111', 'DKV', 'RISKA MARDYA PUTRI', 'X-DKV-1', 'X-DKV', 'P', 'A28', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(455, 'U029', '1199/250/112', 'DKV', 'SHEKINAH GLORIA PANGALILA', 'X-DKV-1', 'X-DKV', 'P', 'A29', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(456, 'U030', '1199/250/113', 'DKV', 'SISKA NUR CAHYANI', 'X-DKV-1', 'X-DKV', 'P', 'A30', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(457, 'U031', '1199/250/114', 'DKV', 'SITI NUR`AINI', 'X-DKV-1', 'X-DKV', 'P', 'A31', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(458, 'U032', '1199/250/115', 'DKV', 'YUNITA NOVIYATU SUGIANTO PUTRI', 'X-DKV-1', 'X-DKV', 'P', 'A32', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', ''),
(459, 'U033', '1199/250/116', 'DKV', 'YURI ZAIDAN KHAIRULLAH', 'X-DKV-1', 'X-DKV', 'L', 'A33', '', '', '2017/2018', 1, 'LABKOM-A', 'P9999991', '');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_siswa_ujian`
--

CREATE TABLE `cbt_siswa_ujian` (
  `Urut` int(11) NOT NULL,
  `XNomerUjian` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `XNISN` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XPilGanda` int(11) NOT NULL,
  `XEsai` int(11) NOT NULL,
  `XJumSoal` int(11) NOT NULL,
  `XTglUjian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `XJamUjian` time NOT NULL,
  `XMulaiUjian` time NOT NULL,
  `XLastUpdate` time NOT NULL,
  `XSisaWaktu` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XLamaUjian` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XTargetUjian` time NOT NULL,
  `XTokenUjian` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `XSelesaiUjian` time NOT NULL,
  `XSetId` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeUjian` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSesi` int(11) NOT NULL,
  `XStatusUjian` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XGetIP` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cbt_siswa_ujian`
--

INSERT INTO `cbt_siswa_ujian` (`Urut`, `XNomerUjian`, `XNISN`, `XKodeKelas`, `XKodeMapel`, `XKodeSoal`, `XPilGanda`, `XEsai`, `XJumSoal`, `XTglUjian`, `XJamUjian`, `XMulaiUjian`, `XLastUpdate`, `XSisaWaktu`, `XLamaUjian`, `XTargetUjian`, `XTokenUjian`, `XSelesaiUjian`, `XSetId`, `XKodeUjian`, `XSesi`, `XStatusUjian`, `XKodeSekolah`, `XGetIP`) VALUES
(82, 'U001', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-17 15:25:11', '22:24:00', '22:24:50', '22:25:08', '', '01:59:10', '00:00:00', 'IJDES', '00:00:00', '', '', 1, '9', '', '::1'),
(81, 'U005', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-17 14:55:43', '21:51:00', '21:55:10', '21:55:40', '', '02:00:00', '00:00:00', 'OQSKS', '00:00:00', '', '', 1, '9', '', '::1'),
(80, 'U004', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-17 14:54:53', '21:51:00', '21:54:26', '21:54:46', '', '02:00:00', '00:00:00', 'OQSKS', '00:00:00', '', '', 1, '9', '', '::1'),
(79, 'U003', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-17 14:54:16', '21:51:00', '21:53:34', '21:54:13', '', '02:00:00', '00:00:00', 'OQSKS', '00:00:00', '', '', 1, '9', '', '::1'),
(78, 'U002', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-17 14:53:23', '21:51:00', '21:53:03', '21:53:21', '', '02:00:00', '00:00:00', 'OQSKS', '00:00:00', '', '', 1, '9', '', '::1'),
(75, 'U004', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-16 17:27:54', '00:25:00', '00:27:29', '00:27:52', '', '01:57:31', '00:00:00', 'TAPLF', '00:00:00', '', '', 1, '9', '', '::1'),
(76, 'U005', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-16 17:28:35', '00:25:00', '00:28:05', '00:28:32', '', '01:56:55', '00:00:00', 'TAPLF', '00:00:00', '', '', 1, '9', '', '::1'),
(77, 'U001', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-17 14:52:49', '21:51:00', '21:52:20', '21:52:47', '', '02:00:00', '00:00:00', 'OQSKS', '00:00:00', '', '', 1, '9', '', '::1'),
(74, 'U003', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-16 17:27:20', '00:25:00', '00:26:58', '00:27:17', '', '01:58:2', '00:00:00', 'TAPLF', '00:00:00', '', '', 1, '9', '', '::1'),
(73, 'U002', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-16 17:26:50', '00:25:00', '00:26:28', '00:26:47', '', '01:58:32', '00:00:00', 'TAPLF', '00:00:00', '', '', 1, '9', '', '::1'),
(72, 'U001', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-16 17:26:18', '00:25:00', '00:25:55', '00:26:16', '', '01:59:5', '00:00:00', 'TAPLF', '00:00:00', '', '', 1, '9', '', '::1'),
(83, 'U002', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-17 15:25:38', '22:24:00', '22:25:20', '22:25:36', '', '01:58:40', '00:00:00', 'IJDES', '00:00:00', '', '', 1, '9', '', '::1'),
(84, 'U001', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-17 15:45:39', '22:44:00', '22:45:12', '22:45:30', '', '01:58:48', '00:00:00', 'AMQTY', '00:00:00', '', '', 1, '9', '', '::1'),
(85, 'U002', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-17 15:52:57', '22:44:00', '22:52:41', '22:52:53', '', '01:51:19', '00:00:00', 'AMQTY', '00:00:00', '', '', 1, '9', '', '::1'),
(86, 'U001', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-17 15:56:25', '22:55:00', '22:56:04', '22:56:22', '', '01:58:56', '00:00:00', 'GEFZT', '00:00:00', '', '', 1, '9', '', '::1'),
(87, 'U002', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-17 15:58:56', '22:55:00', '22:58:37', '22:58:54', '', '01:56:23', '00:00:00', 'GEFZT', '00:00:00', '', '', 1, '9', '', '::1'),
(88, 'U001', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-17 16:04:58', '23:04:00', '23:04:37', '23:04:55', '', '01:59:23', '00:00:00', 'OROEF', '00:00:00', '', '', 1, '9', '', '::1'),
(89, 'U002', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-17 16:05:54', '23:04:00', '23:05:10', '23:05:51', '', '01:58:50', '00:00:00', 'OROEF', '00:00:00', '', '', 1, '9', '', '::1'),
(90, 'U004', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-17 16:06:32', '23:04:00', '23:06:08', '23:06:30', '', '01:57:52', '00:00:00', 'OROEF', '00:00:00', '', '', 1, '9', '', '::1'),
(91, 'U005', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-17 16:07:03', '23:04:00', '23:06:43', '23:07:01', '', '01:57:17', '00:00:00', 'OROEF', '00:00:00', '', '', 1, '9', '', '::1'),
(92, 'U001', '', 'X-DKV-1', 'IPA', 'IPA-DKV-1', 3, 2, 5, '2018-01-18 00:42:19', '07:41:00', '07:41:56', '07:42:17', '', '01:59:4', '00:00:00', 'MICQF', '00:00:00', '', '', 1, '9', '', '::1'),
(93, 'U001', '', 'X-DKV-1', 'Bing', 'BH_ING_DK_1', 5, 0, 5, '2018-01-18 01:29:25', '08:27:00', '08:28:25', '08:29:19', '', '01:58:35', '00:00:00', 'HURRU', '00:00:00', '', '', 1, '9', '', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_soal`
--

CREATE TABLE `cbt_soal` (
  `Urut` int(11) NOT NULL,
  `XKodeMapel` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XKodeSoal` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XJenisSoal` int(11) NOT NULL DEFAULT '1',
  `XKodeKelas` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XLevel` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XNomerSoal` int(11) NOT NULL,
  `XRagu` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XTanya` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XAudioTanya` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XVideoTanya` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarTanya` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab1` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab2` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab3` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab4` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab5` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XKunciJawaban` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XKategori` int(11) NOT NULL DEFAULT '1',
  `XAcakSoal` enum('A','T') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `XAcakOpsi` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XAgama` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cbt_soal`
--

INSERT INTO `cbt_soal` (`Urut`, `XKodeMapel`, `XKodeSoal`, `XJenisSoal`, `XKodeKelas`, `XLevel`, `XNomerSoal`, `XRagu`, `XTanya`, `XAudioTanya`, `XVideoTanya`, `XGambarTanya`, `XJawab1`, `XJawab2`, `XJawab3`, `XJawab4`, `XJawab5`, `XGambarJawab1`, `XGambarJawab2`, `XGambarJawab3`, `XGambarJawab4`, `XGambarJawab5`, `XKunciJawaban`, `XKategori`, `XAcakSoal`, `XAcakOpsi`, `XAgama`, `XKodeSekolah`) VALUES
(279, 'Bing', 'BH_ING_DK_1', 1, '', '', 4, '', '', '2inggris.mp3', '', '', '', '', '', '', '', '1ing.jpg', '2ing.jpg', '3ing.jpg', '4ing.jpg', '5ing.jpg', '5', 1, 'A', 'Y', '', ''),
(280, 'Bing', 'BH_ING_DK_1', 1, '', '', 5, '', '<div class="MsoNormal" style="margin: 0px 0px 0.0001pt; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: #ececec; color: #333333; font-family: Arial, Calibri, Myriad, Helvetica; font-size: 17px; text-align: justify;"><span style="background-color: #ffffff;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;">Part V: Incomplete Sentences</strong></span></div>\n<div class="MsoNormal" style="margin: 0px 0px 0.0001pt; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: #ececec; color: #333333; font-family: Arial, Calibri, Myriad, Helvetica; font-size: 17px; text-align: justify;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: #ffffff; font-family: inherit;">Part V marks the beginning of the reading skills section. In this section you will read a sentence that has one blank spot. There will be four choices of words or phrases to choose from. You will have to choose the one that you think completes the sentence. When the sentence is complete it must be grammatically correct.</span></div>\n<div class="MsoNormal" style="margin: 0px 0px 0.0001pt; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: #ececec; color: #333333; font-family: Arial, Calibri, Myriad, Helvetica; font-size: 17px; text-align: justify;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: #ffffff; font-family: inherit;"><br /></span></div>\n<div class="MsoNormal" style="margin: 0px 0px 0.0001pt; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: #ececec; color: #333333; font-family: Arial, Calibri, Myriad, Helvetica; font-size: 17px; text-align: justify;">\n<div class="MsoNormal" style="margin: 0px 0px 0.0001pt; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: #ececec;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: inherit;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;">Example 1</strong></span></div>\n<div class="MsoNormal" style="margin: 0px 0px 0.0001pt; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: #ececec;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: inherit;">First you will read a sentence with a blank.</span></div>\n<div class="MsoNormal" style="margin: 0px 0px 0.0001pt; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: #ececec;">&nbsp;</div>\n<div class="MsoNormal" style="margin: 0px 0px 0.0001pt; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: #ececec;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: inherit;">Despite having four years of experience in software programming, Mr. Jones hadn`t used a word processing program __________.</span></div>\n<div class="MsoNormal" style="margin: 0px 0px 0.0001pt; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: #ececec;">&nbsp;</div>\n<div class="MsoNormal" style="margin: 0px 0px 0.0001pt; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: #ececec;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-family: inherit;">Next you will read four choices. Choose the word or phrase that best fits into the blank.</span></div>\n</div>', '', '', '', '<p><span style="color: #333333; font-family: Arial, Calibri, Myriad, Helvetica; font-size: 17px; text-align: justify; background-color: #ececec;">prior</span></p>', '<p><span style="color: #333333; font-family: Arial, Calibri, Myriad, Helvetica; font-size: 17px; text-align: justify; background-color: #ececec;">advanced</span></p>', '<p><span style="color: #333333; font-family: Arial, Calibri, Myriad, Helvetica; font-size: 17px; text-align: justify; background-color: #ececec;">previous</span></p>', '<p><span style="color: #333333; font-family: Arial, Calibri, Myriad, Helvetica; font-size: 17px; text-align: justify; background-color: #ececec;">before</span></p>', '<p>next</p>', '', '', '', '', '', '4', 1, 'A', 'Y', '', ''),
(278, 'Bing', 'BH_ING_DK_1', 1, '', '', 3, '', '<p><span style="color: #0c0c0c; font-family: Arial, Helvetica, sans-serif; text-align: justify; text-indent: -36px;">The professor praised him for his ______ the class when she was sick.</span></p>', '', '', '', '<p><span style="color: #0c0c0c; font-family: Arial, Helvetica, sans-serif; text-align: justify; text-indent: -24px;">Assist</span></p>', '<p><span style="color: #0c0c0c; font-family: Arial, Helvetica, sans-serif; text-align: justify; text-indent: -24px;">to assist&nbsp;</span></p>', '<p>assisting</p>', '<p>assisted</p>', '<p>assistensy</p>', '', '', '', '', '', '3', 1, 'A', 'Y', '', ''),
(277, 'Bing', 'BH_ING_DK_1', 1, '', '', 2, '', '<p><span style="color: #333333; font-family: Arial, Calibri, Myriad, Helvetica; font-size: 17px; text-align: justify; background-color: #ececec;">__________ it was a holiday, the doctor performed the emergency surgery on the heart patient.</span></p>', '', '', '', '<p><span style="color: #333333; font-family: Arial, Calibri, Myriad, Helvetica; font-size: 17px; text-align: justify; background-color: #ececec;">During</span></p>', '<p><span style="color: #333333; font-family: Arial, Calibri, Myriad, Helvetica; font-size: 17px; text-align: justify; background-color: #ececec;">Even</span></p>', '<p><span style="color: #333333; font-family: Arial, Calibri, Myriad, Helvetica; font-size: 17px; text-align: justify; background-color: #ececec;">Although</span></p>', '<p><span style="color: #333333; font-family: Arial, Calibri, Myriad, Helvetica; font-size: 17px; text-align: justify; background-color: #ececec;">So</span></p>', '<p>Soo</p>', '', '', '', '', '', '3', 1, 'A', 'Y', '', ''),
(266, 'IPA', 'IPA-DKV-1', 1, '', '', 1, '', 'NAMA PRESIDEN RI. 1 ADALAH ?', '', '', '1.jpg', 'IR. SOEKARNO', 'HATTA', 'PRABOWO', 'SUSILO', 'MEGAWATI', '', '', '', '', '', '1', 1, 'A', 'A', '', ''),
(267, 'IPA', 'IPA-DKV-1', 1, '', '', 2, '', 'NAMA PRESIDEN KE 2', '', '', '2.jpg', 'HABIBIE', 'HATTA', 'PRABOWO', 'SUSILO', 'KARTINI', '', '', '', '', '', '1', 2, 'A', 'A', '', ''),
(268, 'IPA', 'IPA-DKV-1', 1, '', '', 3, '', 'PERSATUAN INDONESIA, ADALAH PANCA SILA KE ?', '', '', '3.png', 'SATU', 'DUA', 'TIGA', 'EMPAT', 'LIMA', '', '', '', '', '', '3', 3, 'A', 'A', '', ''),
(269, 'IPA', 'IPA-DKV-1', 2, '', '', 4, '', 'PULAU TERBANYAK TERLETAK DI NEGARA ?', '', '', '', '', '', '', '', '', '', '', '', '', '', 'INDONESIA', 3, 'A', 'A', '', ''),
(270, 'IPA', 'IPA-DKV-1', 2, '', '', 5, '', 'SUNGAI TERPANJANG DI DUNIA ?', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SUNGAI NIL', 3, 'A', 'A', '', ''),
(276, 'Bing', 'BH_ING_DK_1', 1, '', '', 1, '', '<p><span style="color: #333333; font-family: Arial, Calibri, Myriad, Helvetica; font-size: 17px; text-align: justify; background-color: #ececec;">The person who is taking the minutes will be seated __________ the chairman.</span></p>', '', '', '', '<p><span style="color: #333333; font-family: Arial, Calibri, Myriad, Helvetica; font-size: 17px; text-align: justify; background-color: #ececec;">from</span></p>', '<p><span style="color: #333333; font-family: Arial, Calibri, Myriad, Helvetica; font-size: 17px; text-align: justify; background-color: #ececec;">to</span></p>', '<p><span style="color: #333333; font-family: Arial, Calibri, Myriad, Helvetica; font-size: 17px; text-align: justify; background-color: #ececec;">next</span></p>', '<p><span style="color: #333333; font-family: Arial, Calibri, Myriad, Helvetica; font-size: 17px; text-align: justify; background-color: #ececec;">by</span></p>', '<p>go</p>', '', '', '', '', '', '4', 1, 'A', 'Y', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes`
--

CREATE TABLE `cbt_tes` (
  `Urut` int(11) NOT NULL,
  `XKodeUjian` varchar(5) NOT NULL,
  `XNamaUjian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_tes`
--

INSERT INTO `cbt_tes` (`Urut`, `XKodeUjian`, `XNamaUjian`) VALUES
(2, 'UTS', 'Ujian Tengah Semester'),
(3, 'UAS', 'Ujian Akhir Semester');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tugas`
--

CREATE TABLE `cbt_tugas` (
  `Urut` int(11) NOT NULL,
  `XLevel` varchar(10) NOT NULL,
  `XNIK` varchar(10) NOT NULL,
  `XKodeMapel` varchar(10) NOT NULL,
  `XKodeKelas` varchar(10) NOT NULL,
  `XKodeJurusan` varchar(10) NOT NULL,
  `XSemester` int(11) NOT NULL,
  `XSetId` varchar(10) NOT NULL,
  `XNilaiTugas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_ujian`
--

CREATE TABLE `cbt_ujian` (
  `Urut` int(11) NOT NULL,
  `XKodeUjian` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSemester` int(11) NOT NULL,
  `XLevel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XLambat` enum('0','1') COLLATE latin1_general_ci NOT NULL,
  `XJumPilihan` int(11) NOT NULL,
  `XJumSoal` int(11) NOT NULL,
  `XPilGanda` int(11) NOT NULL,
  `XEsai` int(11) NOT NULL,
  `XAcakSoal` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XTglUjian` date NOT NULL,
  `XJamUjian` time NOT NULL,
  `XBatasMasuk` time NOT NULL,
  `XSisaWaktu` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XLamaUjian` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XIdleTime` int(11) NOT NULL,
  `XTokenUjian` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `XGuru` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XTglBuat` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XStatusUjian` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XPengawas` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `XNIPPengawas` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XSesi` int(11) NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cbt_ujian`
--

INSERT INTO `cbt_ujian` (`Urut`, `XKodeUjian`, `XSemester`, `XLevel`, `XKodeKelas`, `XKodeJurusan`, `XKodeMapel`, `XKodeSoal`, `XLambat`, `XJumPilihan`, `XJumSoal`, `XPilGanda`, `XEsai`, `XAcakSoal`, `XTglUjian`, `XJamUjian`, `XBatasMasuk`, `XSisaWaktu`, `XLamaUjian`, `XIdleTime`, `XTokenUjian`, `XGuru`, `XTglBuat`, `XSetId`, `XStatusUjian`, `XPengawas`, `XNIPPengawas`, `XSesi`, `XKodeSekolah`) VALUES
(73, 'UTS', 2, '', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', '1', 5, 5, 3, 2, '', '2018-01-17', '22:55:00', '23:05:00', '', '02:00:00', 0, 'GEFZT', 'guru1', '', '2017/2018', '9', '', '', 1, ''),
(72, 'UTS', 2, '', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', '1', 5, 5, 3, 2, '', '2018-01-17', '22:44:00', '22:54:00', '', '02:00:00', 0, 'AMQTY', 'guru1', '', '2017/2018', '9', '', '', 1, ''),
(71, 'UTS', 1, '', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', '1', 5, 5, 3, 2, '', '2018-01-17', '22:24:00', '22:34:00', '', '02:00:00', 0, 'IJDES', 'guru1', '', '2017/2018', '9', '', '', 1, ''),
(70, 'UTS', 2, '', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', '0', 5, 5, 3, 2, '', '2018-01-17', '22:24:00', '00:24:00', '', '02:00:00', 0, 'ETIDQ', 'guru1', '', '2017/2018', '9', '', '', 1, ''),
(68, 'UAS', 1, '', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', '0', 5, 5, 3, 2, '', '2018-01-17', '21:51:00', '23:51:00', '', '02:00:00', 0, 'OQSKS', 'guru1', '', '2017/2018', '9', '', '', 1, ''),
(69, 'UTS', 2, '', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', '0', 5, 5, 3, 2, '', '2018-01-17', '22:22:00', '00:22:00', '', '02:00:00', 0, 'CMWGM', 'guru1', '', '2017/2018', '9', '', '', 1, ''),
(67, 'UTS', 1, '', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', '1', 5, 5, 3, 2, '', '2018-01-17', '00:25:00', '02:25:00', '', '02:00:00', 0, 'TAPLF', 'guru1', '', '2017/2018', '9', '', '', 1, ''),
(74, 'UTS', 2, '', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', '1', 5, 5, 3, 2, '', '2018-01-17', '23:04:00', '23:14:00', '', '02:00:00', 0, 'OROEF', 'guru1', '', '2017/2018', '9', '', '', 1, ''),
(75, 'UAS', 2, '', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', '1', 5, 5, 3, 2, '', '2018-01-17', '23:19:00', '23:29:00', '', '02:00:00', 0, 'KJCEF', 'guru1', '', '2017/2018', '9', '', '', 1, ''),
(76, 'UAS', 2, '', 'X-DKV-1', 'DKV', 'IPA', 'IPA-DKV-1', '1', 5, 5, 3, 2, '', '2018-01-18', '07:41:00', '07:51:00', '', '02:00:00', 0, 'MICQF', 'guru1', '', '2017/2018', '9', '', '', 1, ''),
(77, 'UTS', 1, '', 'X-DKV-1', 'DKV', 'Bing', 'BH_ING_DK_1', '1', 5, 5, 5, 0, '', '2018-01-18', '08:27:00', '08:37:00', '', '02:00:00', 0, 'HURRU', 'guru1', '', '2017/2018', '9', '', '', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_upload_file`
--

CREATE TABLE `cbt_upload_file` (
  `Urut` int(11) NOT NULL,
  `XNamaFile` varchar(250) NOT NULL,
  `XFolder` varchar(250) NOT NULL,
  `XKeterangan` varchar(255) NOT NULL,
  `XCreated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_upload_file`
--

INSERT INTO `cbt_upload_file` (`Urut`, `XNamaFile`, `XFolder`, `XKeterangan`, `XCreated`) VALUES
(1, 'Audio-1.wav', 'audio', 'Listening Bahasa Inggris', '2017-11-14'),
(2, 'Document-1.doc', 'document', 'Soal UTS Bahasa Indonesia Semester Ganjil 2017/2018', '2017-11-14'),
(3, 'Video-1.mp4', 'video', 'Debat Gubernur dan Calon Gubernur Tahun 2017', '2017-11-14'),
(4, 'Document-2.doc', 'document', 'Soal UTS Matematika Semester Ganjil 2017/2018', '2017-11-14'),
(6, 'IMG_20171113_085404.jpg', 'document', '2017-11-14', '2017-11-14'),
(7, 'IMG_20171113_085424.jpg', 'document', '2017-11-15', '2017-11-14'),
(8, 'IMG_20171113_085221.jpg', 'video', 'Soal UTS IPA 2017', '2017-11-14'),
(9, 'IMG_20171113_085804.jpg', 'video', 'Soal UTS IPA 2016', '2017-11-14'),
(10, 'jadwal ujian.htm', 'document', 'Jadwal Ujian', '2017-11-14'),
(11, 'HasilUjian.zip', 'document', 'Zip', '2017-11-23'),
(14, '1.jpg', 'pictures', '', '0000-00-00'),
(15, '2.jpg', 'pictures', '', '0000-00-00'),
(16, '3.png', 'pictures', '', '0000-00-00'),
(17, 'jadwal ujian.xlsx', 'jadwal-tes', 'Jadwal Ujian 2018', '2017-12-14'),
(18, 'IPA-IPA.pdf', 'document', 'IPA - IPA', '2017-12-14'),
(167, 'IPA1712141256-IPA.pdf', 'document', 'IPA1712141256 - IPA', '2017-12-14'),
(168, 'IPA-IPA.pdf', 'document', 'IPA - IPA', '2017-12-14'),
(169, 'IPA-DKV-1-IPA.pdf', 'document', 'IPA-DKV-1 - IPA', '2018-01-18');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_user`
--

CREATE TABLE `cbt_user` (
  `Urut` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `NIP` varchar(30) NOT NULL,
  `Nama` varchar(200) NOT NULL,
  `role` varchar(10) NOT NULL,
  `HP` varchar(20) NOT NULL,
  `FacebookID` varchar(100) NOT NULL,
  `login` int(11) NOT NULL,
  `Status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_user`
--

INSERT INTO `cbt_user` (`Urut`, `Username`, `Password`, `NIP`, `Nama`, `role`, `HP`, `FacebookID`, `login`, `Status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '', 'admin', '', '', 1, '1'),
(15, 'kepsek', '8561863b55faf85b9ad67c52b3b851ac', '13410100068', 'Andi, S.Pd', 'kepsek', '089677853639', 'andi@gmail.com', 0, '1'),
(17, 'wakel1', '0d42ab4bd6a30299f63a0b87198d6d5c', '13410100070', 'Yoga, S.Pd', 'wakel', '089788987675', 'yoga@gmail.com', 0, '1'),
(18, 'wakel2', 'f462fc0a9ade38584f0ba6a3de6e887a', '13410100071', 'Prayitno, S.Pd', 'wakel', '089788765653', 'prayitno@gmail.com', 0, '1'),
(19, 'guru1', '92afb435ceb16630e9827f54330c59c9', '13410100072', 'deri, S.Pd', 'guru', '089777898909', 'deri@gmail.com', 0, '1'),
(20, 'guru2', '440a21bd2b3a7c686cf3238883dd34e9', '13410100073', 'fatimah, S.Pd', 'guru', '089777777777', 'fatimah@gmail.com', 0, '1'),
(23, 'waka', '7187f8a707b74d0aceeff15769393052', '13410100001', 'Edi Kusnandan, S.Pd', 'waka', '031', 'waka@ipiems.com', 1, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cbt_admin`
--
ALTER TABLE `cbt_admin`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_audio`
--
ALTER TABLE `cbt_audio`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  ADD PRIMARY KEY (`Urutan`);

--
-- Indexes for table `cbt_kelas`
--
ALTER TABLE `cbt_kelas`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_mapel`
--
ALTER TABLE `cbt_mapel`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_nilai`
--
ALTER TABLE `cbt_nilai`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_paketsoal`
--
ALTER TABLE `cbt_paketsoal`
  ADD PRIMARY KEY (`Urut`),
  ADD KEY `Urut` (`Urut`);

--
-- Indexes for table `cbt_setid`
--
ALTER TABLE `cbt_setid`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_siswa`
--
ALTER TABLE `cbt_siswa`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_siswa_ujian`
--
ALTER TABLE `cbt_siswa_ujian`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_tes`
--
ALTER TABLE `cbt_tes`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_tugas`
--
ALTER TABLE `cbt_tugas`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_ujian`
--
ALTER TABLE `cbt_ujian`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_upload_file`
--
ALTER TABLE `cbt_upload_file`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_user`
--
ALTER TABLE `cbt_user`
  ADD PRIMARY KEY (`Urut`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cbt_admin`
--
ALTER TABLE `cbt_admin`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cbt_audio`
--
ALTER TABLE `cbt_audio`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  MODIFY `Urutan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=455;
--
-- AUTO_INCREMENT for table `cbt_kelas`
--
ALTER TABLE `cbt_kelas`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `cbt_mapel`
--
ALTER TABLE `cbt_mapel`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `cbt_nilai`
--
ALTER TABLE `cbt_nilai`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `cbt_paketsoal`
--
ALTER TABLE `cbt_paketsoal`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `cbt_setid`
--
ALTER TABLE `cbt_setid`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `cbt_siswa`
--
ALTER TABLE `cbt_siswa`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=460;
--
-- AUTO_INCREMENT for table `cbt_siswa_ujian`
--
ALTER TABLE `cbt_siswa_ujian`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;
--
-- AUTO_INCREMENT for table `cbt_tes`
--
ALTER TABLE `cbt_tes`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cbt_tugas`
--
ALTER TABLE `cbt_tugas`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cbt_ujian`
--
ALTER TABLE `cbt_ujian`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `cbt_upload_file`
--
ALTER TABLE `cbt_upload_file`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
--
-- AUTO_INCREMENT for table `cbt_user`
--
ALTER TABLE `cbt_user`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
