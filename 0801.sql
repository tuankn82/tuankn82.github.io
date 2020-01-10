-- phpMyAdmin SQL Dump
-- version 4.4.13.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 08, 2020 at 04:41 PM
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
-- Table structure for table `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) NOT NULL,
  `title_mn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_big` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_mn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title_mn`, `title_big`, `content_mn`, `pic`, `button_name`) VALUES
(1, 'Suối điện HQH', 'Sino - Beluca', 'Bác sĩ Trần Văn Phúc, Bệnh viện Xanh Pôn, Hà Nội, cho biết rượu hoặc bia đóng chai trên thị trường đều có ghi nồng độ cồn tính theo đơn vị phần trăm cụ thể. Song, để định lượng chính xác nồng độ cồn trong máu, bạn phải thực hiện ở các cơ sở xét nghiệm như trong bệnh viện, bằng cách lấy máu tĩnh mạch, rồi định lượng Ethanol theo phương pháp sắc ký, hoặc phương pháp đo quang phổ Enzyme phân hủy rượu Alcohol Dehydrogenase.', 'http://127.0.0.1:4001/Beluca1/Frontend/images/our-story-01.jpg', 'Click Details');

-- --------------------------------------------------------

--
-- Table structure for table `bgr01`
--

CREATE TABLE IF NOT EXISTS `bgr01` (
  `id` int(11) NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_mn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
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
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_mn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_sl_mn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sl_mn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
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
-- Table structure for table `bgr03`
--

CREATE TABLE IF NOT EXISTS `bgr03` (
  `id` int(11) NOT NULL,
  `title_vd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_mn_vd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_vd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bg_vd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bgr03`
--

INSERT INTO `bgr03` (`id`, `title_vd`, `title_mn_vd`, `link_vd`, `bg_vd`) VALUES
(1, 'Beluca Studio', 'Beluca Studio Review', '<iframe width="907" height="380" src="https://www.youtube.com/embed/Lz8nvVp3MNE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 'http://127.0.0.1:4001/Beluca1/Frontend//images/bg-cover-video-02.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category_pic_c4`
--

CREATE TABLE IF NOT EXISTS `category_pic_c4` (
  `id` int(11) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `button_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_pic_c4`
--

INSERT INTO `category_pic_c4` (`id`, `pic`, `button_name`) VALUES
(1, 'http://127.0.0.1:4001/Beluca1/Frontend/images/our-menu-08.jpg', 'Night'),
(2, 'http://127.0.0.1:4001/Beluca1/Frontend/images/our-menu-10.jpg', 'Morning'),
(3, 'http://127.0.0.1:4001/Beluca1/Frontend/images/our-menu-16.jpg', 'Wonderful'),
(4, 'http://127.0.0.1:4001/Beluca1/Frontend/images/our-menu-22.jpg', 'Beautiful');

-- --------------------------------------------------------

--
-- Table structure for table `category_pic_c6`
--

CREATE TABLE IF NOT EXISTS `category_pic_c6` (
  `id` int(11) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `button_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_pic_c6`
--

INSERT INTO `category_pic_c6` (`id`, `pic`, `button_name`) VALUES
(1, 'http://127.0.0.1:4001/Beluca1/Frontend/images/our-menu-01.jpg', 'Great'),
(2, 'http://127.0.0.1:4001/Beluca1/Frontend/images/our-menu-02.jpg', 'Like'),
(3, 'http://127.0.0.1:4001/Beluca1/Frontend/images/our-menu-77.jpg', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `category_pic_c12`
--

CREATE TABLE IF NOT EXISTS `category_pic_c12` (
  `id` int(11) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `button_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_pic_c12`
--

INSERT INTO `category_pic_c12` (`id`, `pic`, `button_name`) VALUES
(1, 'http://127.0.0.1:4001/Beluca1/Frontend/images/our-menu-13.jpg', 'View Details'),
(2, 'http://127.0.0.1:4001/Beluca1/Frontend/images/our-menu-21.jpg', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `category_title`
--

CREATE TABLE IF NOT EXISTS `category_title` (
  `id` int(11) NOT NULL,
  `sologan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_title`
--

INSERT INTO `category_title` (`id`, `sologan`, `title`) VALUES
(1, 'Khám phá ngay', 'Category Beluca'),
(2, 'Đẳng cấp đến từ chất lượng', 'Category Sino - Vanlock');

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
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `createdate` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Triggers `news`
--
DELIMITER $$
CREATE TRIGGER `tu dong them ngay khi tao bai viet` BEFORE INSERT ON `news`
 FOR EACH ROW BEGIN	
	SET NEW.createdate = UNIX_TIMESTAMP();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `news_home`
--

CREATE TABLE IF NOT EXISTS `news_home` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_home`
--

INSERT INTO `news_home` (`id`, `title`, `title_page`) VALUES
(1, 'Tin tức mới nhất', 'Thông tin về các loại đèn led trên thị trường');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_mn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic_mn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic_big` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `content_mn`, `pic_mn`, `content`, `pic_big`, `button_name`) VALUES
(1, 'Led siêu sáng', 'Khi được hỏi có muốn thấy Paul Pogba khoác áo Man Utd trong mùa 2020-2021, Ryan Giggs đáp: "Không". Huyền thoại Man Utd lý giải:', 'http://127.0.0.1:4001/Beluca1/Frontend/images/intro-01.jpg', 'Mùa này, Pogba mới đá chính sáu trận cho Man Utd, chưa ghi bàn nào, và mới có hai kiến tạo. Cầu thủ đắt giá nhất lịch sử "Quỷ Đỏ" lên bàn mổ hồi đầu tháng 10/2019 để chữa dứt điểm chấn thương mắt cá. Anh vừa trở lại cuối tháng 12, nhưng tiếp tục viện cớ bị đau để ngồi ngoài trong chuyến làm khách của Arsenal hôm 1/1.\r\n\r\nNgười đại diện của Pogba, Mino Raiola liên tục bóng gió về khả năng trở lại Juventus của thân chủ. Ngày cuối năm 2019, siêu cò người Hà Lan bình luận: "Diego Maradona và Pele cũng bị thui chột tài năng nếu ở Man Utd lúc này".\r\n\r\nThái độ của Pogba khiến Giggs chán ngán. Ông nói tiếp: "Tôi thấy tiếc vì Solskjaer liên tục phải trả lời các câu hỏi về Pogba. Liên tục bị chất vấn về một cầu thủ bị đồn ra đi, bị chấn thương, hoặc thảnh thơi đâu đó bên ngoài sân tập của CLB sẽ khiến ông ấy nản lòng. Thực tế là suốt thời gian qua, Solskjaer đã phải xoay trở giữa bão chấn thương để chọn ra những cầu thủ phù hợp".\r\n\r\nKhông hài lòng với Pogba nhưng HLV tuyển Xứ Wales vẫn thừa nhận tài năng của nhà vô địch World Cup 2018. "Đội hình hiện tại của Man Utd không thể thiếu Pogba, nếu cậu ấy khỏe mạnh, bởi không ai trong đội có chất lượng tương xứng cậu ấy. Cần phải làm thế nào để Pogba chứng tỏ điều ấy trên sân, dù rất khó biết cậu ta có vui vẻ và muốn ở lại đội bóng lúc này hay không".', 'http://127.0.0.1:4001/Beluca1/Frontend/images/intro-01-big.jpg', 'View'),
(2, 'Led trang trí cao cấp', 'Ban thường vụ Thành uỷ Hà Giang (tỉnh Hà Giang) khiển trách 13 cán bộ, đảng viên vì có con, người thân được nâng điểm tại kỳ thi THPT quốc gia 2018.', 'http://127.0.0.1:4001/Beluca1/Frontend/images/intro-02.jpg', 'Theo thông báo của Ban thường vụ Thành uỷ Hà Giang ngày 3/1, trong số những phụ huynh bị kỷ luật, có nhiều người đang công tác tại các sở ngành như ông Trần Đình Thinh (Giám đốc Công ty cổ phần cấp thoát nước Hà Giang); bà Phùng Thị Chiến (Phòng Tài chính, kế hoạch và thống kê thành phố Hà Giang); bà Hoàng Thị Xu (Bảo hiểm xã hội thành phố). \r\n\r\nBốn đảng viên bị kỷ luật là giáo viên gồm ông Hoàng Tiến Sơn (trường Dân tộc nội trú - THPT tỉnh); bà Vũ Thị Oanh (trường tiểu học Ngọc Đường); bà Trần Thị Nhung (trường tiểu học Trần Phú); bà Nguyễn Thị Yến Nga (trường THCS Yên Biên); bà Phạm Thị Thu Hằng (trường THCS Minh Khai). \r\n\r\nNgoài ra còn có 5 người thuộc đảng bộ các phường của thành phố Hà Giang là bà Nguyễn Thị Mai, Kiều Thị Là, Phùng Thị Tới, Nguyễn Xuân Trường, Hoàng Thị Mai Chi. \r\n\r\nLiên quan đến những vi phạm tại kỳ thi THPT quốc gia 2018, đến nay thành phố Hà Giang đã kỷ luật 26 đảng viên. Hồi đầu tháng 12, Ủy ban Kiểm tra Trung ương khiển trách ông Nguyễn Văn Sơn (Chủ tịch UBND tỉnh Hà Giang) và đề nghị Bộ Chính trị xem xét, thi hành kỷ luật đối với ông Triệu Tài Vinh.', 'http://127.0.0.1:4001/Beluca1/Frontend/images/intro-02-big.jpg', 'Đọc tiếp'),
(3, 'Led nhà xưởng', 'Uống nước trà gừng, nước chanh, ép cà chua, đậu xanh, ăn hoa quả như quýt, cam, bưởi... sau khi uống rượu bia có tác dụng giải cơn say nhan', 'http://127.0.0.1:4001/Beluca1/Frontend/images/intro-03.jpg', 'Phó giáo sư Nguyễn Duy Thịnh, Viện Công nghệ Sinh học và Thực phẩm, cho biết thời gian để hồi phục sức khỏe cho người say rượu phụ thuộc vào thể trạng từng người, tùy vào lượng rượu nạp vào cơ thể. Dân gian có những mẹo để đẩy nhanh quá trình đào thải rượu ra khỏi cơ thể, người say có thể áp dụng để hồi phục sức khỏe. Cách quan trọng nhất là bổ sung thêm nước để làm loãng nồng độ cồn trong máu.\r\n\r\nNgoài uống nhiều nước lọc, bí quyết giải rượu được mọi người áp dụng là uống trà gừng. Gừng có vị cay tính ấm, tác dụng tán hàn, giải độc, điều tiết nhiệt độ cơ thể, làm cho các mạch máu lưu thông, từ đó hóa giải nhanh chất cồn trong cơ thể. Pha nước trà gừng bằng cách: thái một củ gừng tươi thành từng lát mỏng, sau đó đem sắc nước uống, có thể cho thêm mật ong để cơ thể hấp thụ nhanh.\r\n\r\nNhiều người dùng nước chanh giải rượu. Trong quả chanh có vitamin C, các thành phần axit hữu cơ sẽ kết hợp với ethanol trong rượu để tạo ra este, giúp thoát khỏi cảm giác nôn nao, khó chịu do bia rượu, giảm tình trạng mất nước do chất cồn gây ra. Tuy nhiên, những người có bệnh lý dạ dày, tá tràng nên lưu ý khi uống nước chanh bởi sẽ gây tổn thương dạ dày.\r\n\r\nNgoài chanh, nhiều loại hoa quả chứa axit hữu cơ như quýt, cam, bưởi tác dụng giải rượu tốt, có thể ăn trực tiếp hoặc làm nước ép, mang lại cảm giác ngon miệng. Những loại trái cây này khá tiện dụng, có sẵn, nên đây là cách giải rượu hữu hiệu, nhanh chóng.', 'http://127.0.0.1:4001/Beluca1/Frontend/images/intro-03-big.jpg', 'Click'),
(4, 'Led giao thông', 'Không nên uống các loại nước có ga, sữa và các sản phẩm từ sữa, bánh kẹo. Không dùng sữa chua để giải rượu vì dễ gây kích ứng dạ dày, dẫn đến tiêu chảy.', 'http://127.0.0.1:4001/Beluca1/Frontend/images/intro-04.jpg', 'Phó giáo sư Thịnh nhấn mạnh: "Những mẹo giải rượu bia dân gian không thể làm hết hoàn toàn nồng độ cồn trong cơ thể. Người uống rượu cần có thời gian nghỉ ngơi, bình phục và tuyệt đối không được lái xe. Đây là cách tốt nhất đảm bảo an toàn cho chính mình và người thân". \r\n\r\nÔng khuyến cáo, muốn hết say cần có thời gian nghỉ ngơi, phục hồi. Thời gian phục hồi tùy vào thể trạng mỗi người. Mỗi người nên tự biết "tửu lượng" của mình và uống rượu ở một chừng mực nhất định, không nên để say. Kể cả những người tửu lượng tốt cũng không được chủ quan.\r\n\r\nTheo phó giáo sư Thịnh, những loại trà hay nước trái cây trên thích hợp áp dụng ngay sau khi vừa uống rượu say. Sau quá trình này, người say rượu cần bổ sung thêm nhiều nước lọc, được nằm nghỉ ngơi. Tỉnh dậy, nên ăn một bát cháo nóng loãng, súp nóng để bổ sung nước, bồi bổ cơ thể.\r\n\r\nĐặc biệt dịp Tết, nên nấu một nồi cháo trắng, ăn càng nóng càng tốt. Cháo giúp người say tỉnh táo và lấy lại sức nhanh.', 'http://127.0.0.1:4001/Beluca1/Frontend/images/intro-04-big.jpg', 'Tiếp tục');

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
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `bgr03`
--
ALTER TABLE `bgr03`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_pic_c4`
--
ALTER TABLE `category_pic_c4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_pic_c6`
--
ALTER TABLE `category_pic_c6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_pic_c12`
--
ALTER TABLE `category_pic_c12`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_title`
--
ALTER TABLE `category_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo_top`
--
ALTER TABLE `logo_top`
  ADD PRIMARY KEY (`ìd`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_home`
--
ALTER TABLE `news_home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide_top`
--
ALTER TABLE `slide_top`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
-- AUTO_INCREMENT for table `bgr03`
--
ALTER TABLE `bgr03`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category_pic_c4`
--
ALTER TABLE `category_pic_c4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `category_pic_c6`
--
ALTER TABLE `category_pic_c6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `category_pic_c12`
--
ALTER TABLE `category_pic_c12`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category_title`
--
ALTER TABLE `category_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `logo_top`
--
ALTER TABLE `logo_top`
  MODIFY `ìd` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news_home`
--
ALTER TABLE `news_home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `slide_top`
--
ALTER TABLE `slide_top`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
