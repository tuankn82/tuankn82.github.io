-- phpMyAdmin SQL Dump
-- version 4.4.13.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 02, 2020 at 05:41 PM
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
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_mn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bgr01`
--

INSERT INTO `bgr01` (`id`, `pic`, `title_mn`, `title`) VALUES
(1, 'http://127.0.0.1:4001/beluca1/Frontend/images/bg-intro-01.jpg', 'Khám phá ngay', 'Showroom Beluca');

-- --------------------------------------------------------

--
-- Table structure for table `bgr02`
--

CREATE TABLE IF NOT EXISTS `bgr02` (
  `id` int(11) NOT NULL,
  `bg_event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic_sl_mn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_mn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_sl_mn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sl_mn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bgr02`
--

INSERT INTO `bgr02` (`id`, `bg_event`, `pic_sl_mn`, `title`, `title_mn`, `title_sl_mn`, `content_sl_mn`, `button_name`) VALUES
(1, 'http://127.0.0.1:4001/Beluca1/Frontend//images/bg-event-01.jpg', 'http://127.0.0.1:4001/Beluca1/Frontend/images/event-01.jpg', 'Đón chào', 'Sự kiện sắp diễn ra', 'Đèn led công nghệ mới', 'Phan Văn Anh Vũ (Vũ "Nhôm") lợi dụng danh nghĩa tình báo công an, "đi đêm" với doanh nghiệp để thâu tóm 21 lô đất công sản, gây thiệt hại cho Nhà nước 22.000 tỷ đồng.', 'Chi tiết'),
(2, 'http://127.0.0.1:4001/Beluca1/Frontend//images/bg-event-02.jpg', 'http://127.0.0.1:4001/Beluca1/Frontend//images/event-02.jpg', 'Sắp diễn ra', 'Chờ đợi một sự kiện lớn', 'Công nghệ Led điện từ', 'Cuối năm 2008, UBND thành phố Đà Nẵng có quyết định thu hồi, quản lý toàn bộ nhà, đất 90 m2 tại số 100 Bạch Đằng (quận Hải Châu) đang do Công ty cổ phần Du lịch Đà Nẵng sử dụng để giao cho Công ty Quản lý nhà Đà Nẵng quản lý.', 'Xem thêm'),
(3, 'http://127.0.0.1:4001/Beluca1/Frontend//images/bg-event-03.jpg', 'http://127.0.0.1:4001/Beluca1/Frontend//images/event-03.jpg', 'Đêm hội Led', 'Ánh sáng giải ngân hà', 'Công nghệ chưa từng có trên thế giới', 'Trong lúc này, Vũ chủ động gặp ông Thạch và nói Công ty cổ phần Du lịch Đà Nẵng không thể có cơ hội mua được nhà, đất số 100 Bạch Đằng. Nếu công ty đứng ra làm thủ tục xin mua nhà, đất trên,', 'Click me');

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
  `button_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
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
-- Indexes for table `bgr02`
--
ALTER TABLE `bgr02`
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
-- AUTO_INCREMENT for table `bgr02`
--
ALTER TABLE `bgr02`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
