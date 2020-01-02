-- phpMyAdmin SQL Dump
-- version 4.4.13.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 02, 2020 at 10:47 AM
-- Server version: 5.6.25
-- PHP Version: 5.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beluca_frontend`
--

-- --------------------------------------------------------

--
-- Table structure for table `bgr01`
--

CREATE TABLE IF NOT EXISTS `bgr01` (
  `id` int(11) NOT NULL,
  `pic` text NOT NULL,
  `title_mn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bgr01`
--

INSERT INTO `bgr01` (`id`, `pic`, `title_mn`, `title`) VALUES
(1, 'http://127.0.0.1:4001/Beluca1/Frontend//images/bg-intro-01.jpg', 'Khám phá ngay', 'Showroom Beluca');

-- --------------------------------------------------------

--
-- Table structure for table `logo_top`
--

CREATE TABLE IF NOT EXISTS `logo_top` (
  `ìd` int(11) NOT NULL,
  `logo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slide_top`
--

CREATE TABLE IF NOT EXISTS `slide_top` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic` text NOT NULL,
  `title_sc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_link` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_top`
--

INSERT INTO `slide_top` (`id`, `title`, `pic`, `title_sc`, `button_name`, `button_link`) VALUES
(1, 'Led siêu sáng', 'http://127.0.0.1:4001/Beluca1/Frontend/images/slide1-01.jpg', 'Beluca', 'Chi tiết', 'http://kenh14.vn/'),
(2, 'Đèn trang trí 2020', 'http://127.0.0.1:4001/Beluca1/Frontend/images/slide1-02.jpg', 'Làm bạn với ánh sáng rực rỡ', 'Xem thêm', 'https://docbao.vn/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bgr01`
--
ALTER TABLE `bgr01`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo_top`
--
ALTER TABLE `logo_top`
  ADD PRIMARY KEY (`ìd`);

--
-- Indexes for table `slide_top`
--
ALTER TABLE `slide_top`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bgr01`
--
ALTER TABLE `bgr01`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `logo_top`
--
ALTER TABLE `logo_top`
  MODIFY `ìd` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `slide_top`
--
ALTER TABLE `slide_top`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
