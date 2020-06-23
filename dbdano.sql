-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 16, 2020 lúc 08:10 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dbdano`
--
CREATE DATABASE IF NOT EXISTS `dbdano` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dbdano`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalog`
--

CREATE TABLE `catalog` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(20) NOT NULL,
  `sort_order` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `parent_id`, `sort_order`) VALUES
(1, 'Đồng Hồ Nam', 1, 1),
(2, 'Đồng Hồ Nữ', 1, 1),
(3, 'Đồng Hồ Đôi', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_order`
--

CREATE TABLE `detail_order` (
  `transaction_id` int(255) NOT NULL,
  `id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `qty` int(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `data` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `detail_order`
--

INSERT INTO `detail_order` (`transaction_id`, `id`, `product_id`, `product_name`, `qty`, `amount`, `data`, `status`, `user_id`) VALUES
(2, 1, 37, '123', 2, 100000, '123', 1, 0),
(19, 20, 5, 'ĐỒNG HỒ TISSOT T063.907.11.058.00 NAM TỰ ĐỘNG DÂY ', 1, 21940000, '', 1, 1),
(19, 21, 15, 'ĐỒNG HỒ CASIO GA-100DE-2ADR NỮ PIN DÂY NHỰA', 1, 4393000, '', 1, 1),
(20, 22, 4, 'ĐỒNG HỒ CITIZEN AU1080-20A NAM ECO-DRIVE DÂY VẢI', 1, 5040000, '', 2, 8),
(21, 23, 4, 'ĐỒNG HỒ CITIZEN AU1080-20A NAM ECO-DRIVE DÂY VẢI', 1, 5040000, '', 1, 9),
(22, 24, 3, 'ĐỒNG HỒ LOUIS ERARD 13900AA05.BDC102 NAM PIN DÂY D', 1, 18195300, '', 1, 9),
(23, 25, 4, 'ĐỒNG HỒ CITIZEN AU1080-20A NAM ECO-DRIVE DÂY VẢI', 1, 5040000, NULL, 3, 3),
(24, 26, 4, 'ĐỒNG HỒ CITIZEN AU1080-20A NAM ECO-DRIVE DÂY VẢI', 1, 5040000, NULL, 3, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `rate` int(20) NOT NULL,
  `date_created` date NOT NULL,
  `hide` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `user_name`, `product_id`, `product_name`, `content`, `rate`, `date_created`, `hide`, `status`) VALUES
(1, 9, '', 6, '', '123123', 3, '2020-06-16', 0, 1),
(2, 9, '', 3, '', 'qưeqweqwe', 1, '2020-06-16', 0, 1),
(5, 3, '', 14, '', '123', 0, '2020-06-16', 0, 0),
(6, 3, '', 14, '', '123', 3, '2020-06-16', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member`
--

CREATE TABLE `member` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roleuser` int(20) NOT NULL,
  `created` date NOT NULL,
  `lockuser` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `member`
--

INSERT INTO `member` (`id`, `name`, `email`, `phone`, `address`, `username`, `password`, `roleuser`, `created`, `lockuser`) VALUES
(1, '123', '323@hh', '1231231231', '123', 'user1', 'e10adc3949ba59abbe56e057f20f883e', 0, '0000-00-00', 0),
(2, 'hai', 'jhjh@kjdkj', '0888777666', '', 'hai', 'db63417384095d63d569ef69c6c8371d', 0, '0000-00-00', 0),
(3, 'mai', 'hueueu@uuuuu', '0876655555', 'sdsd', 'user2', 'e10adc3949ba59abbe56e057f20f883e', 2, '0000-00-00', 0),
(5, 'Thiên Phú', 'thien21061999@gmail.com', '0995888223', 'ihksdkdkd', 'Thiên', 'd2f9aed6add0816d8c6f4a55c186ae91', 2, '0000-00-00', 0),
(6, 'Ngọc Phạm', 'danhngocphh@gmail.com', '', '', 'Ngọc', 'c8772a6d45610948b9e292d6c145705d', 2, '0000-00-00', 0),
(7, 'ADMIN', 'admin@dano.com', '0923033199', '39 hiệp nhất, phường 14, quận tân bình', 'admin', 'cfe12acbe9b769ef2e669140140eedcc', 0, '0000-00-00', 0),
(8, 'Nam Do', 'anhnam9a4@gmail.com', '1231123123', '123123', 'Nam', 'b4a8148a0957a540d37418ace10b4e6d', 2, '0000-00-00', 0),
(9, '123', '123@gmail.com', '1231231233', 'dưqdqw', 'dano123123', '96e79218965eb72c92a549dd5a330112', 2, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `catalog_id` int(50) NOT NULL,
  `trademark` varchar(50) NOT NULL,
  `trademark_id` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  `discount` int(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `image_list` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `total` int(255) NOT NULL,
  `hide` int(5) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `ennergy` varchar(50) NOT NULL,
  `strap_material` varchar(50) NOT NULL,
  `glass_material` varchar(50) NOT NULL,
  `face_shape` varchar(50) NOT NULL,
  `size_face` varchar(50) NOT NULL,
  `color_face` varchar(50) NOT NULL,
  `waterproof` varchar(50) NOT NULL,
  `origin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `catalog_id`, `trademark`, `trademark_id`, `price`, `discount`, `image`, `image_list`, `created`, `total`, `hide`, `description`, `ennergy`, `strap_material`, `glass_material`, `face_shape`, `size_face`, `color_face`, `waterproof`, `origin`) VALUES
(3, 'ĐỒNG HỒ LOUIS ERARD 13900AA05.BDC102 NAM PIN DÂY D', 1, 'Louis', 2, 18195300, 30, 'nam1.jpg', 'hinh1.jpg,hinh1.jpg', '2020-06-10', 99, 1, 'Đây là dòng sản phẩm tuyệt vời cho những người đang tìm kiếm chiếc đồng hồ được thiết kế riêng mang đầy đủ sự “chất” Vintage cho đến hiện nay, đó là “chất cổ điển” và chỉ là “cổ điển” tinh khiết.', 'Pin', 'Dây Da', 'Mặt kính khoáng', 'Tròn', '40 – 43 mm', 'Xanh', 'Đi Tắm (5 ATM)', 'Thụy Sĩ'),
(4, 'ĐỒNG HỒ CITIZEN AU1080-20A NAM ECO-DRIVE DÂY VẢI', 1, 'Citizen', 3, 5040000, 80, 'nam2.jpg', 'nam2.jpg', '2020-06-17', 85, 0, 'Đồng hồ nam Citizen AU1080-20A nổi bật Pin sử dụng công nghệ hiện đại Eco-Drive (Năng Lượng Ánh Sáng), với thiết kế theo phong cách thời trang với dây đeo chất liệu bằng vải tông màu kem trẻ trung.', 'Năng Lượng Ánh Sáng', 'Dây Vải', 'Kính Sapphire', 'Tròn', '40 – 43 mm', 'Trắng', 'Đi Mưa Nhỏ (3 ATM)', ' Nhật Bản'),
(5, 'ĐỒNG HỒ TISSOT T063.907.11.058.00 NAM TỰ ĐỘNG DÂY ', 1, 'Tissot', 4, 21940000, 80, 'nam3.jpg', 'nam3.jpg', '2020-06-20', 79, 0, 'Giản dị và thanh lịch đến từ mẫu đồng hồ Tissot T063.907.11.058.00, được gia công tạo hình với kiểu dáng mỏng tạo nên vẻ tinh tế đầy sang trọng cùng chi tiết kim chỉ vạch số được bao phủ vàng hồng.', 'Kinetic (Vừa Pin – Vừa Tự Động)', 'Dây Kim Loại', 'Kính Sapphire', 'Tròn', '40 – 43 mm', 'Đen', 'none', 'Thụy Sĩ'),
(6, 'ĐỒNG HỒ SEIKO SGEG99P1 NAM PIN DÂY DA', 1, 'Seiko', 5, 3684000, 80, 'nam4.jpg', 'nam4.jpg', '2020-06-20', 80, 0, 'Đồng hồ Seiko SGEG99P1 dành cho nam, mặt đồng hồ màu đen, chữ số La Mã lớn màu trắng, vỏ thép không gỉ, dây da màu đen, mặt kính Sapphire chịu lực chống trầy, 1 ô lịch hiển thị ngày.', 'Pin (Quartz)', 'Dây Da', 'Kính Sapphire', 'Tròn', '40 – 43 mm', 'Đen', 'Đi Bơi (10 ATM)', 'Nhật Bản'),
(7, 'ĐỒNG HỒ ORIENT FSTAA002W0 NAM PIN DÂY DA', 1, 'Orient', 6, 2737000, 10, 'nam5.jpg', 'nam5.jpg', '2020-06-20', 30, 0, 'Đồng hồ Orient FSTAA002W0 có vỏ kim loại phủ màu vàng sang trọng, kim chỉ và vạch số thanh mãnh nổi bật trên nền số, ô lịch ngày vị trí 3h tinh tế, dây đeo bằng chất liệu da cao cấp màu nâu đem lại phong cách lịch lãm, sang trọng cho phái mạnh', 'Pin (Quartz)', 'Dây Da', 'Kính Cứng', 'Chữ nhật', '35 – 39 mm', 'Trắng, Vàng', 'Đi Tắm (5 ATM)', 'Nhật Bản'),
(8, 'ĐỒNG HỒ OLYM PIANUS OP99141-71AGSK TRẮNG NAM TỰ ĐỘ', 1, 'Olym Pianus', 7, 6912000, 10, 'nam6.jpg', 'nam6.jpg', '2020-06-20', 10, 0, 'Mẫu đồng hồ Olym Pianus OP99141-71AGSK vẻ ngoài tinh tế sang trọng ấn tượng với kiểu thiết kế độc đáo đến từ ô chân kính phô diễn ra 1 phần trải nghiệm hoạt động của bộ máy cơ đầy nam tính.', 'Kinetic (Vừa Pin – Vừa Tự Động)', 'Dây Kim Loại', 'Kính Sapphire', 'Tròn', '40 – 43 mm', 'Bạc, Vàng', 'Đi Mưa Nhỏ (3 ATM)', 'Nhật Bản'),
(9, 'ĐỒNG HỒ CASIO GA-110GB-1ADR NAM PIN DÂY NHỰA', 1, 'Casio', 1, 4264000, 30, 'nam7.jpg', 'nam7.jpg', '2020-06-20', 15, 0, 'Đồng hồ nam CASIO GA-110GB-1AVDF có thiết kế mới sử dụng kim loại màu vàng làm vạch số và kim nổi bật, sang trọng hơn so với thiết kế cũ nên mẫu GA-110GB-1AVDF rất được lòng giới trẻ hiện nay.', 'Pin (Quartz)', 'Dây Nhựa / Cao Su', 'Kính Cứng', 'Tròn', '30 – 34 mm', 'Đen, Vàng', 'Đi Tắm (5 ATM)', 'Nhật Bản'),
(10, 'ĐỒNG HỒ CASIO MTP-1374L-1AVDF NAM PIN DÂY DA', 1, 'Casio', 1, 1677000, 25, 'nam8.jpg', 'nam8.jpg', '2020-06-20', 13, 0, 'Đồng hồ nam CASIO MTP-1374L-1AVDF thay cho thiết kế cửa sổ lich cổ điển là thiết kế mới lịch ngày và thứ đều sử dụng đồng hồ kim mang tính hiện đại, trẻ trung. Nổi bật trên nền mặt số đen là thiết kế phá cách kim giây đỏ làm điểm nhấn nổi bật. Dây đeo bằng da tạo vân cá sấu nổi bật với hai đường chỉ may trắng tinh xảo.', 'Pin (Quartz)', 'Dây Da', 'Kính Cứng', 'Tròn', ' > 44 mm', 'Đen', 'Đi Mưa Nhỏ (3 ATM)', 'Nhật Bản'),
(11, 'ĐỒNG HỒ CASIO MTP-1374L-1AVDF NAM PIN DÂY DA', 1, 'Casio', 1, 1677000, 25, 'nam8.jpg', 'nam8.jpg', '2020-06-20', 13, 0, 'Đồng hồ nam CASIO MTP-1374L-1AVDF thay cho thiết kế cửa sổ lich cổ điển là thiết kế mới lịch ngày và thứ đều sử dụng đồng hồ kim mang tính hiện đại, trẻ trung. Nổi bật trên nền mặt số đen là thiết kế phá cách kim giây đỏ làm điểm nhấn nổi bật. Dây đeo bằng da tạo vân cá sấu nổi bật với hai đường chỉ may trắng tinh xảo.', 'Pin (Quartz)', 'Dây Da', 'Kính Cứng', 'Tròn', ' > 44 mm', 'Đen', 'Đi Mưa Nhỏ (3 ATM)', 'Nhật Bản'),
(14, 'ĐỒNG HỒ CANDINO C4433/3 NỮ PIN DÂY INOX', 2, 'Candino', 8, 3996000, 0, 'nu1.jpg', 'nu1.jpg', '2020-06-20', 15, 0, 'Đồng hồ dây da thời trang nữ Candino C4433/3, với mặt đồng hồ sang trọng nền trắng có ánh xà cừ có đính hạt pha lê viền xung quang, kính Sapphire, chữ số lớn dễ đọc, 3 kim chỉ màu bạc.', 'Pin (Quartz)', 'Dây Kim Loại', 'Kính Sapphire', 'Chữ nhật', ' < 29 mm', 'Đen', 'Đi Mưa Nhỏ (3 ATM)', 'Thụy Sĩ'),
(15, 'ĐỒNG HỒ CASIO GA-100DE-2ADR NỮ PIN DÂY NHỰA', 2, 'Casio', 1, 4393000, 15, 'nu2.jpg', 'nu2.jpg', '2020-06-20', 14, 0, 'Mẫu G-Shock GA-100DE-2ADR với vẻ ngoài cá tính thích hợp cho những bạn trẻ năng động, phù hợp cho những chuyến đi phượt ấn tượng với khả năng chịu nước lên đến 20ATM, với đồng hồ điện tử hiện thị đa chức năng tiện ích.', 'Pin (Quartz)', 'Dây Nhựa / Cao Su', 'Kính Cứng', 'Tròn', '> 44 mm', ' Xanh', 'Lặn Biển (20 ATM)', 'Nhật Bản'),
(16, 'ĐỒNG HỒ CASIO LA670WL-1BDF NỮ PIN DÂY DA', 2, 'Casio', 1, 766000, 20, 'nu3.jpg', 'nu3.jpg', '2020-06-20', 80, 0, 'Mẫu đồng hồ Casio LA670WL-1BDF  với thiết kế bộ máy nhỏ gọn tạo nên vẻ ngoài thanh mảnh nữ tính, vỏ máy tông màu vàng phối cùng mẫu dây đeo kim loại đen tăng thêm vẻ đẹp thời trang.', 'Pin (Quartz)', 'Dây Da', 'Kính nhựa', 'Vuông', '< 29 mm', 'Bạc, Đen', 'Đi Mưa Nhỏ (3 ATM)', 'Nhật Bản'),
(17, 'ĐỒNG HỒ CITIZEN EX1410-88A NỮ ECO-DRIVE DÂY INOX', 2, 'Citizen', 3, 6120000, 0, 'nu4.jpg', 'nu4.jpg', '2020-06-20', 50, 0, 'Đồng hồ Citizen EX1410-88A có mặt số hình chữ nhật bầu tinh tế, kim chỉ và vạch số thanh mãnh nổi bật trên nền số màu trắng trang nhã, phần quai được đính pha lê Swarovski sang trọng mang đến vẻ thanh lịch, duyên dáng dành cho phái nữ.', '	 Năng Lượng Ánh Sáng', 'Dây Kim Loại, Dây TiTanium', 'Kính Cứng', 'Đặc biệt', '< 29 mm', 'Bạc', 'Đi Mưa Nhỏ (3 ATM)', 'Nhật Bản'),
(18, 'ĐỒNG HỒ DANIEL WELLINGTON DW00500001 NỮ PIN DÂY IN', 2, 'Daniel Wellington (DW)', 9, 4230000, 0, 'nu5.jpg', 'nu5.jpg', '2020-06-13', 20, 0, 'Mẫu đồng hồ nữ Daniel Wellington DW00500001 với nét đặc trưng giản dị đến từ thương hiệu Daniel Wellington với thiết kế bộ máy nhỏ gọn thanh mảnh kết hợp cùng mẫu dây đeo chất liệu vải mang phong cách trẻ trung.', 'Pin (Quartz)', 'Dây Kim Loại', 'Kính Cứng', 'Tròn', '30 – 34 mm', 'Đen', 'Đi Mưa Nhỏ (3 ATM)', 'Thụy Điển'),
(19, 'ĐỒNG HỒ OGIVAL OG385-032LW-T NỮ PIN DÂY INOX', 2, 'Ogival', 10, 9384000, 0, 'nu6.jpg', 'nu6.jpg', '2020-06-20', 15, 0, 'Vẻ ngoài trẻ trung với phần mặt số được phối tông nền trắng có họa tiết thời trang nam tính với vỏ máy dày dặn chứa đựng một trải nghiệm nam tính từ bộ may cơ là yếu tố tạo nên mẫu đồng hồ nam Ogival.', 'Pin (Quartz)', 'Dây Kim Loại', 'Kính Sapphire', 'Tròn', '35 – 39 mm', 'Tròn', 'Đi Mưa Nhỏ (3 ATM)', 'Thụy Sĩ'),
(20, 'ĐỒNG HỒ SKAGEN 885SSLB NỮ PIN DÂY DA', 2, 'Skagen', 11, 5900000, 0, 'nu7.jpg', 'nu7.jpg', '2020-06-05', 20, 0, 'Đồng hồ độc đáo dành cho nữ giới Skagen 885SSLB, với vỏ đồng hồ là thép không gỉ, kiểu dáng xoáy, mặt đồng hồ có trắng, dây da màu đen cao cấp, còn có 2 kim chỉ tinh tế.', 'Pin (Quartz)', 'Dây Da', 'Kính Cứng', 'Đặc biệt', '< 29 mm', 'Trắng', 'Đi Mưa Nhỏ (3 ATM)', 'Đan Mạch'),
(21, 'ĐỒNG HỒ TISSOT T41.1.183.34 NỮ TỰ ĐỘNG DÂY INOX', 2, 'Tissot', 4, 17640000, 40, 'nu8.jpg', 'nu8.jpg', '2020-06-13', 30, 0, 'Mẫu Tissot T41.1.183.34 vẻ ngoài giản dị của chiếc đồng hồ 3 kim nhưng lại khoác lên sự trang nhã với nền mặt số được phối tông màu trắng trước bề mặt kính Sapphire kết hợp cùng tổng thể chiếc đồng hồ kim loại màu bạc đầy sang trọng.', 'Cơ (Automatic)', 'Dây Kim Loại', 'Kính Sapphire', 'Tròn', '< 29 mm', 'Trắng', 'Đi Mưa Nhỏ (3 ATM)', 'Thụy Sĩ'),
(30, 'ĐỒNG HỒ ĐÔI ALEXANDRE CHRISTIE AC8C26-1LK TRẮNG ', 3, 'Alexandre Christie', 12, 6080000, 10, 'doi1.jpg', 'doi1.jpg', '2020-06-13', 20, 0, 'ALEXANDRE CHRISTIE là thương hiệu đồng hồ chính hãng nổi tiếng của Nhật Bản với những thiết kế cầu kỳ và vô cùng tinh tế. Ngay từ khi ra đời mẫu đồng hồ đeo tay này đã nhanh chóng được mọi người yêu thích vì chất lượng tốt động cơ bền bỉ vô cùng sang trọng.', 'Pin (Quartz)', 'Dây Kim Loại', 'Kính Sapphire', 'Tròn', '35 – 39 mm', 'Vàng', 'Đi Mưa Nhỏ (3 ATM)', 'Thụy Sĩ'),
(32, 'ĐỒNG HỒ ĐÔI CASIO MTP-E312D-7BVDF – LTP-E312D-4BVD', 3, 'Casio', 1, 4320000, 30, 'doi2.jpg', 'doi2.jpg', '2020-06-13', 30, 0, 'Đồng hồ đôi Casio với phong cách trẻ trung, vạch số được thiết kế mỏng tinh tế kèm theo 3 ô phụ với 3 chức năng tiện ích, vỏ máy cùng với dây đeo kim loại đem lại vẻ chắc chắn bền vững cho cặp đôi.', 'Pin (Quartz)', 'Dây Kim Loại', 'Kính Cứng', 'Tròn', '30 – 34 mm, 40 – 43 mm', 'Hồng, Xám', 'Đi Tắm (5 ATM)', 'Nhật Bản'),
(33, 'ĐỒNG HỒ ĐÔI CITIZEN BD0030-00A – ER0190-00A PIN DÂ', 3, 'Citizen', 3, 5140000, 10, 'doi3.jpg', 'doi3.jpg', '2020-06-20', 30, 0, 'Đồng hồ đôi Citizen dây da với mặt đồng hồ chữ nhật lớn có nền trắng có nền trắng, dây da cao cấp màu đen có vân, và 3 kim chỉ cao cấp.', 'Pin (Quartz)', 'Dây Da', 'Kính Cứng', 'Chữ nhật', '30 – 34 mm', 'Bạc', 'Đi Mưa Nhỏ (3 ATM)', 'Nhật Bản'),
(34, 'ĐỒNG HỒ ĐÔI CITIZEN BD0030-00A – ER0190-00A PIN DÂ', 3, 'Citizen', 3, 5140000, 10, 'doi3.jpg', 'doi3.jpg', '2020-06-20', 30, 0, 'Đồng hồ đôi Citizen dây da với mặt đồng hồ chữ nhật lớn có nền trắng có nền trắng, dây da cao cấp màu đen có vân, và 3 kim chỉ cao cấp.', 'Pin (Quartz)', 'Dây Da', 'Kính Cứng', 'Chữ nhật', '30 – 34 mm', 'Bạc', 'Đi Mưa Nhỏ (3 ATM)', 'Nhật Bản'),
(35, 'ĐỒNG HỒ ĐÔI OLYMPIA STAR OPA58012-07MSK TRẮNG – OP', 3, '	 Olym Pianus – Olympia Star', 7, 6955000, 15, 'doi4.jpg', 'doi4.jpg', '2020-06-10', 15, 0, 'Đồng hồ đôi Olym Pianus (Olympia Star) mặt đồng hồ vàng sang trọng với chất liệu thép không gỉ, dây đeo đờ mi cao cấp, còn có 3 kim chỉ và 1 lịch ngày.', 'Pin (Quartz)', 'Kính Sapphire', 'Dây Kim Loại', 'Tròn', '30 – 34 mm', 'Trắng', 'Đi Mưa Nhỏ (3 ATM)', 'Thụy Sĩ'),
(36, 'ĐỒNG HỒ ĐÔI OLYMPIA STAR OPA58012-07MSK TRẮNG – OP', 3, '	 Olym Pianus – Olympia Star', 7, 6955000, 15, 'doi4.jpg', 'doi4.jpg', '2020-06-10', 15, 0, 'Đồng hồ đôi Olym Pianus (Olympia Star) mặt đồng hồ vàng sang trọng với chất liệu thép không gỉ, dây đeo đờ mi cao cấp, còn có 3 kim chỉ và 1 lịch ngày.', 'Pin (Quartz)', 'Kính Sapphire', 'Dây Kim Loại', 'Tròn', '30 – 34 mm', 'Trắng', 'Đi Mưa Nhỏ (3 ATM)', 'Thụy Sĩ'),
(37, 'CASIO12', 1, 'casio', 1, 19000000, 50, 'nam2.jpg', '', '0000-00-00', 232, 0, '123', '1', '1', '1', '1', '11', '1', '1', '1'),
(38, 'CASIO12', 1, 'ADMIN', 13, 10000000, 20, 'nam2.jpg', '', '0000-00-00', 56, 0, '123', '1', '1', '1', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reply_feedback`
--

CREATE TABLE `reply_feedback` (
  `id` int(11) NOT NULL,
  `feedback_id` int(11) NOT NULL,
  `content` text COLLATE utf32_unicode_ci NOT NULL,
  `created` date NOT NULL,
  `member_id` int(11) NOT NULL,
  `member_name` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `hide` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reply_feedback`
--

INSERT INTO `reply_feedback` (`id`, `feedback_id`, `content`, `created`, `member_id`, `member_name`, `hide`) VALUES
(1, 2, 'Thanks for your feedback, 123. thanks', '2020-06-16', 7, 'ADMIN', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trademark`
--

CREATE TABLE `trademark` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hide` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `trademark`
--

INSERT INTO `trademark` (`id`, `name`, `hide`) VALUES
(1, 'Casio', 0),
(2, 'Louis', 0),
(3, 'Citizen', 0),
(4, 'Tissot', 0),
(5, 'Seiko', 0),
(6, 'Orient', 0),
(7, 'Olym Pianus', 0),
(8, 'Candino', 0),
(9, 'Daniel Wellington', 0),
(10, 'Ogival', 0),
(11, 'Skagen', 0),
(12, 'Alexandre Christie', 0),
(13, 'ADMIN', 1),
(14, 'Apple', 1),
(15, '123123', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` int(20) NOT NULL,
  `status` tinyint(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_phone` varchar(50) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `payment_info` text NOT NULL,
  `message` varchar(255) NOT NULL,
  `sercurity` varchar(16) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `amount`, `payment`, `payment_info`, `message`, `sercurity`, `created`) VALUES
(2, 1, 7, '123', '123', '0923033199', '100000.00', '123', '123', '123', '1', '2020-06-15'),
(19, 1, 1, '123', '323@hh', '1231231231', '26333000.00', 'Tiền mặt', '', '', '', '2020-06-16'),
(20, 0, 8, 'Nam Do', 'anhnam9a4@gmail.com', '1231123123', '5040000.00', 'Trực tuyến', '', '1233', '', '2020-06-16'),
(21, 1, 9, '123', '123@gmail.com', '1231231233', '5040000.00', 'Tiền mặt', '', 'ewqeqweqw', '', '2020-06-16'),
(22, 1, 9, '123', '123@gmail.com', '1231231233', '18195300.00', 'Tiền mặt', '', '', '', '2020-06-16'),
(23, 0, 3, 'mai', 'hueueu@uuuuu', '0876655555', '5040000.00', 'Tiền mặt', '', '', '', '2020-06-16'),
(24, 0, 3, 'mai', 'hueueu@uuuuu', '0876655555', '5040000.00', 'Tiền mặt', '', '', '', '2020-06-16');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detail_order`
--
ALTER TABLE `detail_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK` (`product_id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_id` (`catalog_id`),
  ADD KEY `trademark_id` (`trademark_id`);

--
-- Chỉ mục cho bảng `reply_feedback`
--
ALTER TABLE `reply_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_id` (`feedback_id`);

--
-- Chỉ mục cho bảng `trademark`
--
ALTER TABLE `trademark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `detail_order`
--
ALTER TABLE `detail_order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `member`
--
ALTER TABLE `member`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `reply_feedback`
--
ALTER TABLE `reply_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `trademark`
--
ALTER TABLE `trademark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `detail_order`
--
ALTER TABLE `detail_order`
  ADD CONSTRAINT `FF` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_product_catalog` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `reply_feedback`
--
ALTER TABLE `reply_feedback`
  ADD CONSTRAINT `reply_feedback_ibfk_1` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
--
-- Cơ sở dữ liệu: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Đang đổ dữ liệu cho bảng `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Đang đổ dữ liệu cho bảng `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'dbdano', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"dbdano\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Cấu trúc của bảng @TABLE@\",\"latex_structure_continued_caption\":\"Cấu trúc của bảng @TABLE@ (còn nữa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Nội dung của bảng @TABLE@\",\"latex_data_continued_caption\":\"Nội dung của bảng @TABLE@ (còn nữa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('dbdano', 1, 'dbdano');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Đang đổ dữ liệu cho bảng `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"dbdano\",\"table\":\"feedback\"},{\"db\":\"dbdano\",\"table\":\"member\"},{\"db\":\"dbdano\",\"table\":\"detail_order\"},{\"db\":\"dbdano\",\"table\":\"transaction\"},{\"db\":\"dbdano\",\"table\":\"trademark\"},{\"db\":\"dbdano\",\"table\":\"product\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Đang đổ dữ liệu cho bảng `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('dbdano', 'catalog', 1, 745, 307),
('dbdano', 'detail_order', 1, 744, 12),
('dbdano', 'feedback', 1, 145, 475),
('dbdano', 'member', 1, 152, 10),
('dbdano', 'product', 1, 464, 314),
('dbdano', 'reply_feedback', 1, 141, 283),
('dbdano', 'transaction', 1, 467, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('dbdano', 'product', 'name');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Đang đổ dữ liệu cho bảng `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'dbdano', 'product', '{\"sorted_col\":\"`trademark_id`  DESC\"}', '2020-06-16 02:37:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-06-16 06:10:15', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"vi\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Chỉ mục cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Chỉ mục cho bảng `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Chỉ mục cho bảng `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Chỉ mục cho bảng `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Chỉ mục cho bảng `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Chỉ mục cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Chỉ mục cho bảng `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Chỉ mục cho bảng `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Chỉ mục cho bảng `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Chỉ mục cho bảng `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Cơ sở dữ liệu: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
