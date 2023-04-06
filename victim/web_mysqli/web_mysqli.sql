-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 21, 2022 lúc 06:04 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mysqli`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'webmysqli', '25f9e794323b453885f5181f1b624d0b', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(1, 'Alo bài viết mới ', '<p>Tin covid h&ocirc;m nay được cập nhật hằng ng&agrave;y với số ca nhiễm giảm dần tại tphcm v&agrave; c&aacute;c tỉnh th&agrave;nh l&acirc;n cận...</p>\r\n', '<p>dsadasdasdasdas</p>\r\n', 5, 1, '1633760717_dong-nguoi-bo-pho-ve-que-va-nhu-cau-quan-tri-cac-van-de-xa-hoi.gif'),
(2, 'Alo bài viết mới 123', '<p>dsad</p>\r\n', '<p>asdasd</p>\r\n', 4, 1, '1633760708_dong-nguoi-bo-pho-ve-que-va-nhu-cau-quan-tri-cac-van-de-xa-hoi.gif'),
(4, 'Alo bài viết mới bóng đá', '<p>fsdfsdf</p>\r\n', '<p>fdsfsdfsdf</p>\r\n', 2, 1, '1633760703_dong-nguoi-bo-pho-ve-que-va-nhu-cau-quan-tri-cac-van-de-xa-hoi.gif'),
(5, 'Tin covid hôm nay', '<p>Tin covid h&ocirc;m nay được cập nhật hằng ng&agrave;y với số ca nhiễm giảm dần tại tphcm v&agrave; c&aacute;c tỉnh th&agrave;nh l&acirc;n cận...</p>\r\n', '<p>T&iacute;nh từ đầu th&aacute;ng 7 đến nay, th&agrave;nh phố đ&atilde; th&agrave;nh lập 16 bệnh viện d&atilde; chiến với quy m&ocirc; khoảng 37.000 giường, nhiệm vụ ch&iacute;nh l&agrave; tiếp nhận, điều trị F0 kh&ocirc;ng c&oacute; triệu chứng hoặc c&oacute; biểu hiện nhẹ. T&iacute;nh đến ng&agrave;y 8/10, th&agrave;nh phố ghi nhận 9.443 F0 đang điều trị tại c&aacute;c cơ sở n&agrave;y.</p>\r\n\r\n<p>Sở Y tế TP.HCM cho biết c&aacute;c bệnh viện d&atilde; chiến được trưng dụng từ khu nh&agrave; t&aacute;i định cư, k&yacute; t&uacute;c x&aacute; của trường đại học, cao đẳng n&ecirc;n kh&ocirc;ng thể sử dụng l&acirc;u d&agrave;i. Nhất l&agrave; trong bối cảnh dịch bệnh cơ bản được kiểm so&aacute;t, học sinh, sinh vi&ecirc;n bắt đầu trở lại học tập.</p>\r\n\r\n<p>Bệnh viện d&atilde; chiến số 5 (đặt tại Thuận Kiều Plaza, quận 5) l&agrave; một trong 4 bệnh viện d&atilde; chiến ngừng hoạt động sau c&ugrave;ng. Ảnh: Phạm Ng&ocirc;n.</p>\r\n\r\n<p><img alt=\"Benh vien da chien o TP.HCM anh 1\" src=\"https://znews-photo.zadn.vn/w1920/Uploaded/yfsgs/2021_07_14/covid_zing.jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<p><br />\r\nNguy&ecirc;n nh&acirc;n l&agrave; những bệnh viện n&agrave;y đ&atilde; được đầu tư hệ thống oxy lỏng, giường hồi sức để tiếp nhận F0 nặng.Dự kiến, c&aacute;c bệnh viện d&atilde; chiến th&agrave;nh phố lần lượt sẽ ngừng hoạt động v&agrave;o cuối th&aacute;ng 10, th&aacute;ng 11 v&agrave; th&aacute;ng 12 năm nay. Ri&ecirc;ng Bệnh viện d&atilde; chiến số 3, số 6, số 8 ở khu t&aacute;i định cư Thủ Thi&ecirc;m (An Kh&aacute;nh, TP Thủ Đức) sẽ l&agrave; những cơ sở ngừng hoạt động cuối c&ugrave;ng, dự kiến v&agrave;o cuối th&aacute;ng 12.</p>\r\n\r\n<p>Ngo&agrave;i ra, Bệnh viện d&atilde; chiến số 5 (đặt tại Thuận Kiều Plaza, quận 5) cũng trong danh s&aacute;ch cơ sở d&atilde; chiến ngừng hoạt động sau c&ugrave;ng. Bệnh viện n&agrave;y phụ tr&aacute;ch tiếp nhận c&aacute;c trường hợp F0 mức độ nhẹ v&agrave; trung b&igrave;nh từ c&aacute;c bệnh viện trong khu vực trung t&acirc;m th&agrave;nh phố (Bệnh viện Nguyễn Tr&atilde;i, Nguyễn Tri Phương, An B&igrave;nh).</p>\r\n', 5, 1, '1633760748_dong-nguoi-bo-pho-ve-que-va-nhu-cau-quan-tri-cac-van-de-xa-hoi.gif');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` varchar(50) NOT NULL,
  `cart_payment` varchar(11) NOT NULL,
  `cart_shipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_date`, `cart_payment`, `cart_shipping`) VALUES
(39, 11, '1048', 1, '2022-02-06 11:53:02', 'tienmat', 2),
(40, 11, '6315', 1, '2022-02-06 11:53:14', 'chuyenkhoan', 2),
(41, 11, '4559', 1, '2022-02-06 11:53:35', 'paypal', 2),
(42, 11, '9554', 1, '2022-02-06 11:54:52', 'momo', 2),
(43, 11, '2844', 1, '2022-02-06 11:55:05', 'vnpay', 2),
(44, 11, '9487', 1, '2022-02-06 12:47:17', 'tienmat', 2),
(45, 11, '3066', 1, '2022-02-06 12:47:20', 'chuyenkhoan', 2),
(46, 11, '6962', 1, '2022-02-06 12:47:46', 'paypal', 2),
(47, 11, '6140', 1, '2022-02-06 12:48:05', 'vnpay', 2),
(48, 11, '3872', 1, '2022-02-06 12:50:35', 'momo', 2),
(49, 11, '1161', 1, '2022-02-16 16:48:43', 'momo', 2),
(50, 11, '1323', 1, '2022-02-18 14:08:51', 'vnpay', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(54, '1048', 12, 1),
(55, '6315', 12, 1),
(56, '4559', 12, 1),
(57, '9554', 12, 1),
(58, '2844', 12, 1),
(59, '9487', 12, 1),
(60, '3066', 12, 1),
(61, '6962', 12, 1),
(62, '6140', 12, 1),
(63, '3872', 12, 1),
(64, '1161', 7, 1),
(65, '1323', 8, 2),
(66, '1323', 6, 3),
(67, '1323', 11, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(1, 'Hiếu Trương', 'truongngoctanhieu2018@gmail.com', 'Dương Quãng Hàm 12 ', '25f9e794323b453885f5181f1b624d0b', '0932023992 '),
(8, 'Hiếu Trương', 'maxime80@example.net', 'Dương Quãng Hàm 12  giao hang', '25f9e794323b453885f5181f1b624d0b', '0932023992'),
(9, 'Hiếu Trương', 'truongngoctanhieu2018@gmail.com', 'Dương Quãng Hàm 12  giao hang', '25f9e794323b453885f5181f1b624d0b', '0932023992'),
(10, 'Hiếu Trương', 'truongngoctanhieu2018@gmail.com', 'Dương Quãng Hàm 12  giao hang', '25f9e794323b453885f5181f1b624d0b', '0932023992'),
(11, 'Hiếu Trương 123', 'truongngoctanhieu2018@gmail.com', 'Dương Quãng Hàm 12  giao hang', 'e10adc3949ba59abbe56e057f20f883e', '0932023992'),
(12, 'Hiếu Trương 123', 'truongngoctanhieu2018@gmail.com', 'Dương Quãng Hàm 12  giao hang', 'e10adc3949ba59abbe56e057f20f883e', '0932023992');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(1, 'Ốp lưng đẹp', 1),
(2, 'Màn hình điện thoại ', 3),
(4, 'Kính cường lực', 4),
(5, 'Phụ kiện trang trí', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_baiviet`, `tendanhmuc_baiviet`, `thutu`) VALUES
(2, 'tin bóng đá', 2),
(4, 'tin game', 2),
(5, 'tin kinh tế', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, '<ol>\r\n	<li>\r\n	<h3>Số điện thoại :<strong> </strong>0932023992 Anh hiếu</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Zalo : 0932023992 HieuTanTutorial</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Fb :<a href=\"http://facebook.com/hieutan94\"> facebook.com/hieutan94</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3>Instagram : <a href=\"http://instagram.com/hieutan94\">/hieutan94</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3>Youtube : <a href=\"https://www.youtube.com/channel/UCnfVQy051QFO-Ns8El1zL4w\" target=\"_blank\">youtube.com/HieuTutorialwithliveproject</a></h3>\r\n	</li>\r\n</ol>\r\n\r\n<h3><strong>Chuy&ecirc;n cung cấp c&aacute;c kh&oacute;a học online miễn ph&iacute; tr&ecirc;n youtube,nhằm gi&uacute;p cho c&aacute;c bạn hiểu 1 phần n&agrave;o đ&oacute; về lập tr&igrave;nh n&oacute;i chung v&agrave; lập tr&igrave;nh web n&oacute;i ri&ecirc;ng ,cảm ơn c&aacute;c bạn đ&atilde; ủng hộ v&agrave; donate momo cho m&igrave;nh. &lt;3 &lt;3 &lt;3 &lt;3 &lt;3&nbsp;😘 😗 😙 😚 😋 😛 😝 😜</strong>💁&zwj;♀️ 💁 💁&zwj;♂️ 🙅&zwj;♀️ 🙅 🙅&zwj;♂️ 🙆&zwj;♀️ 🙆</h3>\r\n\r\n<p><img alt=\"\" src=\"https://s3.amazonaws.com/websitebeaver/blog/php-pdo-vs-mysqli/main.jpg\" style=\"height:204px; width:400px\" /><img alt=\"Hình ảnh sinh hoạt công ty,hình ảnh đồ án khóa mấy,khoa nào\" src=\"https://i1.rgstatic.net/publication/333455314_PHP_MySQLI_PDO_x_MySQLi/links/5ceea072299bf1fb18492649/largepreview.png\" style=\"height:225px; width:400px\" /><img alt=\"\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8ipuq-Ye7bK36QKeYFtKsNRVhAt4DYyZtLyu3GzUizyCjNHaTrlwrmBesTZVKYzo8Tmw&amp;usqp=CAU\" style=\"height:363px; width:400px\" /></p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>&nbsp;</h3>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_momo`
--

CREATE TABLE `tbl_momo` (
  `id_momo` int(11) NOT NULL,
  `partner_code` varchar(50) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `order_info` varchar(50) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `trans_id` varchar(50) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `code_cart` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_momo`
--

INSERT INTO `tbl_momo` (`id_momo`, `partner_code`, `order_id`, `amount`, `order_info`, `order_type`, `trans_id`, `pay_type`, `code_cart`) VALUES
(3, 'MOMOBKUN20180529', '1644123235', '250000', 'Thanh toán qua ATM', 'momo_wallet', '2642535948', 'napas', '9554'),
(4, 'MOMOBKUN20180529', '1644126570', '250000', 'Thanh toán qua ATM', 'momo_wallet', '2642536202', 'napas', '3872'),
(5, 'MOMOBKUN20180529', '1645004827', '350000', 'Thanh toán qua ATM', 'momo_wallet', '2644029861', 'napas', '1161');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(6, 'ốp lung 1', '001', '250000', 3, '1610014603_tainghe1.jpg', 'dasdas', 'dsadadasdas', 1, 2),
(7, 'tai nghe 2', '002', '350000', 10, '1610014618_tainghe2.png', 'dasdasdas', 'dasdadasdas', 1, 4),
(8, 'Kính cường lực', '003', '750000', 10, '1610014323_tainghe2.png', 'dasd', 'asdsadasdas', 1, 4),
(9, 'kính 1', '004', '250000', 3, '1610015477_tainghe2.png', 'dsad', 'asdasdasdas', 1, 4),
(10, 'Dây ngọc 1', '005', '99000', 10, '1610015549_dayngoc.jpg', 'fsdfs', 'fsdfdsfsdf', 1, 5),
(11, 'ốp lung 1', '001', '250000', 3, '1610016262_tainghe2.png', 'dsdad', 'sadsadasd', 1, 1),
(12, 'ốp lung 1', '001', '250000', 3, '1633710055_dayngoc.jpg', '<ul>\r\n	<li>C&aacute;c t&iacute;nh năng:</li>\r\n	<li>100% Nguy&ecirc;n Bản mới chất lượng cao.</li>\r\n	<li>Thiết kế s&aacute;ng tạo để bảo vệ ho&agrave;n hảo m&aacute;y ảnh của điện thoại.</li>\r\n	<li>Vỏ bảo vệ chất lượng cao, thời trang v&agrave; chất lượng cao.</li>\r\n	<li>Bảo vệ điện thoại chống m&agrave;i m&ograve;n v&agrave; che c&aacute;c vết trầy xước, bụi, dấu v&acirc;n tay</li>\r\n	<li>Dễ d&agrave;ng c&agrave;i đặt v&agrave; gỡ bỏ</li>\r\n	<li>Cho ph&eacute;p truy cập v&agrave;o tất cả c&aacute;c cổng, cảm biến v&agrave; đầu v&agrave;o</li>\r\n	<li>Ho&agrave;n hảo để sử dụng trong mọi hoạt động ngo&agrave;i trời hoặc du lịch để bảo vệ điện thoại của bạn</li>\r\n	<li>Dễ d&agrave;ng c&agrave;i đặt</li>\r\n	<li>Ho&agrave;n to&agrave;n ph&ugrave; hợp cho điện thoại của bạn.</li>\r\n</ul>\r\n', '<p><strong>M&ocirc; tả sản phẩm:</strong><br />\r\n100% mới v&agrave; chưa sử dụng<br />\r\nThiết kế cạnh vu&ocirc;ng cổ điển như Iphone 12 trong tương lai.<br />\r\nDễ th&aacute;o lắp.<br />\r\nCấp thực phẩm silicon, an to&agrave;n v&agrave; cảm gi&aacute;c tay tốt nhất.<br />\r\nThiết kế thời trang gi&uacute;p điện thoại của bạn trở n&ecirc;n độc đ&aacute;o.<br />\r\nĐược l&agrave;m bằng vật liệu chống sốc v&agrave; chống trầy xước.<br />\r\nD&acirc;y buộc miễn ph&iacute; để bảo vệ chống lại những giọt v&ocirc; t&igrave;nh.<br />\r\nTất cả c&aacute;c n&uacute;t chức năng hoạt động ngay khi điện thoại của bạn trong trường hợp n&agrave;y.<br />\r\n<br />\r\n<strong>T&iacute;nh năng:</strong><br />\r\nChất liệu: được l&agrave;m bằng Silicone lỏng mềm chất lượng cao.<br />\r\n<br />\r\n<strong>Nội dung đ&oacute;ng g&oacute;i:</strong><br />\r\n1 x Ốp silicon họa tiết viền<br />\r\n&nbsp;</p>\r\n\r\n<p><img src=\"https://my-live-05.slatic.net/p/78a3b632eb7f92e8b80bd063124e464f.jpg_2200x2200q80.jpg_.webp\" style=\"height:600px; width:600px\" /><br />\r\n<br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n', 1, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `address`, `note`, `id_dangky`) VALUES
(1, 'Hiếu Programming Đẹp Giai', '0932023992', 'Số 1 Lê Duẩn, Bến Nghé, Quận 1, Hiệp Thành,Quận 12', 'adasdas', 1),
(2, 'Hiếu Programming Đẹp Giai', '0932023992', 'Số 1 Lê Duẩn, Bến Nghé, Quận 1, Hiệp Thành,Quận 12', 'Giao nhanh nhé', 11),
(3, 'Hiếu Programming Đẹp Giai', '0932023992', 'Số 1 Lê Duẩn, Bến Nghé, Quận 1, Hiệp Thành,Quận 12', 'dasdsa', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `soluongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(1, '2021-10-23', 50, '15500000', 25),
(2, '2021-10-22', 55, '25500000', 25),
(3, '2021-10-21', 50, '15600000', 30),
(4, '2021-10-24', 10, '36500000', 30),
(5, '2021-10-25', 2, '5600000', 10),
(6, '2021-10-26', 8, '6500000', 9),
(7, '2021-10-28', 2, '600000', 10),
(8, '2021-10-29', 8, '500000', 9),
(9, '2021-10-31', 8, '500000', 9),
(10, '2021-10-01', 8, '500000', 9),
(11, '2021-08-01', 8, '700000', 9),
(12, '2021-10-03', 8, '700000', 9),
(14, '2021-10-30', 3, '1500000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_vnpay`
--

CREATE TABLE `tbl_vnpay` (
  `id_vnpay` int(11) NOT NULL,
  `vnp_amount` varchar(50) NOT NULL,
  `vnp_bankCode` varchar(50) NOT NULL,
  `vnp_banktranno` varchar(50) NOT NULL,
  `vnp_cardtype` varchar(50) NOT NULL,
  `vnp_orderinfo` varchar(100) NOT NULL,
  `vnp_paydate` varchar(50) NOT NULL,
  `vnp_tmncode` varchar(50) NOT NULL,
  `vnp_transactionno` varchar(50) NOT NULL,
  `code_cart` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_vnpay`
--

INSERT INTO `tbl_vnpay` (`id_vnpay`, `vnp_amount`, `vnp_bankCode`, `vnp_banktranno`, `vnp_cardtype`, `vnp_orderinfo`, `vnp_paydate`, `vnp_tmncode`, `vnp_transactionno`, `code_cart`) VALUES
(4, '25000000', 'NCB', '20220206115602', 'ATM', 'Thanh toán đơn hàng đặt tại web', '20220206115533', 'UD2KZW06', '13682669', '2844'),
(5, '25000000', 'NCB', '20220206124857', 'ATM', 'Thanh toán đơn hàng đặt tại web', '20220206124854', 'UD2KZW06', '13682671', '6140');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_momo`
--
ALTER TABLE `tbl_momo`
  ADD PRIMARY KEY (`id_momo`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- Chỉ mục cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_vnpay`
--
ALTER TABLE `tbl_vnpay`
  ADD PRIMARY KEY (`id_vnpay`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_momo`
--
ALTER TABLE `tbl_momo`
  MODIFY `id_momo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_vnpay`
--
ALTER TABLE `tbl_vnpay`
  MODIFY `id_vnpay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
