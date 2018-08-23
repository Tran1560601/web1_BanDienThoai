-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2017 at 12:52 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bandienthoai`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CatID` int(11) UNSIGNED NOT NULL,
  `CatName` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CatID`, `CatName`) VALUES
(1, 'APPLE'),
(2, 'SAMSUNG'),
(3, 'SONY'),
(4, 'OPPO'),
(5, 'NOKIA');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `ID` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`ID`, `name`, `email`, `password`, `dob`) VALUES
(1, 'Trần Văn Chinh', 'trandinhchinh1995@gmail.com', 'abcabc', '1995-12-25'),
(2, 'Lê Nam Hữu Phong', 'phong123@gmail.com', '111111', '1990-10-10'),
(4, 'Nguyễn Thị Mai Phương', 'phuong123@gmail.com', 'abcabc', '2016-01-17'),
(9, 'Nguyễn Phương anh', 'abc@gmail.com', '$2y$10$x6dZbcCnKgxh58UPeqN2Y.WfgP4q6Ari6nF948.17VwJwUyGf8mI6', '1990-11-11'),
(10, 'Trần Thị Kim', 'kidtran457@gmail.com', '$2y$10$4eFgqouR/Dk5LNm18L3a6ugJHGg66082mZRNqe9oR/GUbmEQHkOqS', '1990-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `ID` int(11) UNSIGNED NOT NULL,
  `OrderID` int(11) NOT NULL,
  `ProID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` bigint(20) NOT NULL,
  `Amount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`ID`, `OrderID`, `ProID`, `Quantity`, `Price`, `Amount`) VALUES
(69, 1, 1, 1, 29990000, 29990000),
(73, 2, 2, 1, 34790000, 34790000),
(74, 2, 1, 10, 29990000, 299900000),
(75, 1, 2, 3, 34790000, 104370000),
(76, 2, 3, 2, 28790000, 57580000),
(77, 1, 3, 1, 28790000, 28790000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) UNSIGNED NOT NULL,
  `OrderDate` datetime NOT NULL,
  `UserID` int(11) NOT NULL,
  `Total` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `OrderDate`, `UserID`, `Total`) VALUES
(39, '2017-12-26 19:35:00', 1, 134360000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProID` int(11) UNSIGNED NOT NULL,
  `ProName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TinyDes` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `FullDes` text COLLATE utf8_unicode_ci NOT NULL,
  `Price` int(11) UNSIGNED NOT NULL,
  `CatID` int(11) UNSIGNED NOT NULL,
  `Quantity` int(11) UNSIGNED NOT NULL,
  `ProDate` date NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `TypeID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `Camera` int(1) NOT NULL,
  `CountView` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProID`, `ProName`, `TinyDes`, `FullDes`, `Price`, `CatID`, `Quantity`, `ProDate`, `img`, `mota`, `TypeID`, `updated_at`, `created_at`, `Camera`, `CountView`) VALUES
(1, 'iPhone X 64GB', 'APPLE', '<ul>\r\n            \r\n                <li>\r\n                    <label>So CPU :</label>\r\n                    <span>Hexa-core (2x Monsoon + 4x Mistral)</span>\r\n\r\n                </li>\r\n                <li>\r\n                    <label>Màn hình :</label>\r\n                    <span>5.8 inchs(2436 x 1125 pixel) Super Retina HD</span>\r\n\r\n                </li>\r\n                <li>\r\n                    <label>Camera :</label>\r\n                    <span>7.0 MP/ Dual 12.0 MP</span>\r\n\r\n                </li>\r\n                <li>\r\n                    <label>RAM :</label>\r\n                    <span>	3 GB</span>\r\n\r\n                </li>\r\n                <li>\r\n                    <label>Bộ nhớ trong :</label>\r\n                    <span>64 GB</span>\r\n\r\n                </li>\r\n                <li>\r\n                    <label>Hệ điều hành :</label>\r\n                    <span>iOS 11</span>\r\n\r\n                </li>\r\n                <li>\r\n                    <label>Chipset :</label>\r\n                    <span>Apple A11 Bionic</span>\r\n\r\n                </li>\r\n                <li>\r\n                    <label>CPU :</label>\r\n                    <span>Hexa-core (2x Monsoon + 4x Mistral)</span>\r\n\r\n                </li>\r\n                <li>\r\n                    <label>GPU :</label>\r\n                    <span>Apple GPU (three-core graphics)</span>\r\n\r\n                </li>\r\n                \r\n        </ul>', 29990000, 1, 1, '2017-12-14', 'img/1.jpg', 'Công nghệ bảo mật mới', '3', NULL, NULL, 2, 40),
(2, 'iPhone X 256GB', 'APPLE', '<ul>\r\n            <li>Thông số cơ bản</li>\r\n                <li>\r\n                    <label>So CPU :</label>\r\n                    <span>Hexa-core (2x Monsoon + 4x Mistral)</span>\r\n\r\n                </li>\r\n                <li>\r\n                    <label>Màn hình :</label>\r\n                    <span>5.8 inchs(2436 x 1125 pixel) Super Retina HD</span>\r\n\r\n                </li>\r\n                <li>\r\n                    <label>Camera :</label>\r\n                    <span>7.0 MP/ Dual 12.0 MP</span>\r\n\r\n                </li>\r\n                <li>\r\n                    <label>RAM :</label>\r\n                    <span>  3 GB</span>\r\n\r\n                </li>\r\n                <li>\r\n                    <label>Bộ nhớ trong :</label>\r\n                    <span>256 GB</span>\r\n\r\n                </li>\r\n                <li>\r\n                    <label>Hệ điều hành :</label>\r\n                    <span>iOS 11</span>\r\n\r\n                </li>\r\n                <li>\r\n                    <label>Chipset :</label>\r\n                    <span>Apple A11 Bionic</span>\r\n\r\n                </li>\r\n                <li>\r\n                    <label>CPU :</label>\r\n                    <span>Hexa-core (2x Monsoon + 4x Mistral)</span>\r\n\r\n                </li>\r\n                <li>\r\n                    <label>GPU :</label>\r\n                    <span>Apple GPU (three-core graphics)</span>\r\n\r\n                </li>\r\n                \r\n        </ul>', 34790000, 1, 13, '2017-12-14', 'img/2.jpg', '\r\nSản phẩm với thiết kế đột phá và liều lĩnh', '3', NULL, NULL, 2, 18),
(3, 'iPhone 8 Plus 256GB', 'APPLE', '<ul>\r\n    <li><label>Màn Hình: 5.5 inchs&nbsp;</label>HD Retina</li>\r\n    <li><label>Camera: 7.0 MP/ Dual 12.0 MP</label></li>\r\n    <li><label>Pin: 2675 mAh</label></li>\r\n    <li><label>Ram: 3 GB</label></li>\r\n    <li><label>CPU :&nbsp;</label>Apple A11 Bionic</li>\r\n    <li>Hệ điều hành: iOS 11</li>\r\n</ul>', 28790000, 1, 9, '2017-12-14', 'img/3.jpg', ' Có thiết kế sang trọng', '3', NULL, NULL, 2, 13),
(4, 'iPhone 7 Plus 256GB', 'APPLE', '<ul>\r\n    <li><label>Màn Hình:</label> <span>5.5 inch (1920 x 1080 pixels)</span></li>\r\n    <li><label>Camera:</label> <span>Chính: Dual 12.0 MP, Phụ: 7.0 MP</span></li>\r\n    <li><label>Pin:</label> <span> Li-Ion 11.1 Wh (2900 mAh)</span></li>\r\n    <li><label>Ram:</label> <span>3 GB</span></li>\r\n    <li><label>CPU :</label><span> Apple A10, 4 Nhân, Quad-core 2.3 GHz</span></li>\r\n    <li><label>HĐH:</label> <span>iOS 10</span></li>\r\n</ul>', 23999000, 1, 11, '2017-12-14', 'img/4.jpg', 'Thiết kế hoàn thiện, sắc màu nổi bật', '3', NULL, NULL, 2, 0),
(5, 'iPhone 8 Plus 64GB', 'APPLE', '<ul>\r\n    <li><label>Màn Hình: 5.5 inchs&nbsp;</label>HD Retina</li>\r\n    <li><label>Camera: 7.0 MP/ Dual 12.0 MP</label></li>\r\n    <li><label>Pin: 2675 mAh</label></li>\r\n    <li><label>Ram: 3 GB</label></li>\r\n    <li><label>CPU :&nbsp;</label>Apple A11 Bionic</li>\r\n    <li>Hệ điều hành: iOS 11</li>\r\n</ul>', 24980000, 1, 9, '2017-12-01', 'img/5.jpg', 'Có thiết kế sang trọng', '3', NULL, NULL, 2, 0),
(6, ' iPhone 7 Plus 32GB', 'APPLE', '<ul>\r\n	<li><label>Màn Hình:</label> <span>4.7 inch(1334 x 750 pixel)</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 12.0 MP, Phụ: 7.0 MP</span></li>\r\n	<li><label>Pin:</label> <span> Li-Ion 7.45 Wh (1960 mAh)</span></li>\r\n	<li><label>Ram:</label> <span>2 GB</span></li>\r\n	<li><label>CPU :</label><span> Apple A10, 4 Nhân, 2.3 Ghz</span></li>\r\n	<li><label>HĐH:</label> <span>iOS 10</span></li>\r\n</ul>', 19990000, 1, 19, '2017-12-04', 'img/6.jpg', 'Hình ảnh cực sắc nét', '3', NULL, NULL, 2, 0),
(7, 'iPhone 6s Plus 32GB', 'APPLE', '<ul>\r\n    <li><label>Màn Hình:</label> <span>4.7 inch(1334 x 750 pixel)</span></li>\r\n    <li><label>Camera:</label> <span>Chính: 12.0 MP, Phụ: 7.0 MP</span></li>\r\n    <li><label>Pin:</label> <span> Li-Ion 7.45 Wh (1960 mAh)</span></li>\r\n    <li><label>Ram:</label> <span>2 GB</span></li>\r\n    <li><label>CPU :</label><span> Apple A10, 4 Nhân, 2.3 Ghz</span></li>\r\n    <li><label>HĐH:</label> <span>iOS 10</span></li>\r\n</ul>', 14490000, 1, 6, '2017-12-06', 'img/7.jpg', 'Camera cải tiến', '3', NULL, NULL, 1, 0),
(8, 'iPhone 8 64GB', 'APPLE', '<ul>\r\n    <li><label>Màn Hình: 4.7 inch&nbsp;</label>(1334 x 750 pixels)</li>\r\n    <li><label>Camera: Chính: 12.0 MP, Phụ: 7.0 MP</label></li>\r\n    <li><label>Pin: 1821 mAh</label></li>\r\n    <li><label>Ram: 2 GB</label></li>\r\n    <li><label>CPU: </label>Apple A11 Bionic<label>&nbsp;</label></li>\r\n    <li><label>HĐH:&nbsp;</label>iOS 11</li>\r\n</ul>', 20100000, 1, 4, '2015-12-15', 'img/8.jpg', 'Thiết kế mới mà không mới', '3', NULL, NULL, 1, 7),
(9, 'iPhone 8 256GB', 'APPLE', '<ul>\r\n	<li><label>Màn Hình: 4.7 inch (1334 x 750 pixels)</label></li>\r\n	<li><label>Camera: Chính: 12.0 MP, Phụ: 7.0 MP</label></li>\r\n	<li><label>Pin: 1821 mAh</label></li>\r\n	<li><label>Ram: 2 GB</label></li>\r\n	<li><label>CPU :&nbsp;</label>Apple A11 Bionic</li>\r\n	<li>HĐH : iOS 11</li>\r\n</ul>', 25790000, 1, 9, '2017-11-01', 'img/9.jpg', 'Tạo dấu ấn riêng đầy hấp dẫn', '3', NULL, NULL, 1, 0),
(10, 'iPhone 7 Plus 128GB', 'APPle', '<ul>\r\n    <li><label>Màn Hình:</label> <span>5.5 inch (1920 x 1080 pixels)</span></li>\r\n    <li><label>Camera:</label> <span>Chính: Dual Camera 12.0MP; Phụ: 7.0MP</span></li>\r\n    <li><label>Pin:</label> <span> Li-Ion 11.1 Wh (2900 mAh)</span></li>\r\n    <li><label>Ram:</label> <span>3 GB</span></li>\r\n    <li><label>CPU :</label><span> Apple A10, 4 Nhân, Quad-core 2.3 GHz</span></li>\r\n    <li><label>HĐH:</label> <span>iOS</span></li>\r\n</ul>', 22990000, 1, 12, '2015-12-01', 'img/10.jpg', 'Rực rỡ tinh tế', '3', NULL, NULL, 2, 0),
(11, 'iPhone 5s 16GB', 'APPLE', '<ul>\r\n	<li><label>Màn Hình:</label> <span>4 inch (640 x 1136 pixels )</span></li>\r\n	<li><label>Camera:</label> <span>Chính : 8 MP, Phụ 1.2 MP</span></li>\r\n	<li><label>Pin:</label> <span>Li-ion 1560 mAh</span></li>\r\n	<li><label>Ram:</label> <span>1GB </span></li>\r\n	<li><label>CPU :</label><span> Apple A7, 2 Nhân, Dual-core 1.3Ghz</span></li>\r\n	<li><label>HĐH:</label> <span>iOS</span></li>\r\n</ul>', 5990000, 1, 13, '2017-01-09', 'img/11.jpg', 'Chất lượng hoàn hảo', '1', NULL, NULL, 1, 0),
(12, 'Samsung Galaxy Note 8', 'SAMSUNG', '<ul>\r\n	<li><label>Màn Hình:</label> <span>6.3 inch</span></li>\r\n	<li><label>Camera:</label> <span>Chính: Dual 12.0 MP, Phụ: 8.0 MP</span></li>\r\n	<li><label>Pin:</label> <span> Li-Ion 3300 mAh</span></li>\r\n	<li><label>Ram:</label> <span>6 GB</span></li>\r\n	<li><label>CPU :</label><span> Exynos 8895, 8 Nhân, Lõi Tám (lõi Tứ 2.3GHz + lõi Tứ 1.7GHz), 64 bit, vi xử lý 10nm </span></li>\r\n	<li><label>HĐH:</label> <span>Android 7.1.1 (Nougat)</span></li>\r\n</ul>', 22490000, 2, 5, '2017-11-03', 'img/12.jpg', 'Màn hình vô cực phá vỡ mọi giới hạn', '3', NULL, NULL, 2, 1),
(13, 'Samsung Galaxy S8 Plus', 'SAMSUNG', '<ul>\r\n	<li><label>Màn Hình:</label> <span>6.2 inch Super AMOLED (2560 x 1440 pixel)</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 12.0 MP, Phụ: 8.0 MP</span></li>\r\n	<li><label>Pin:</label> <span> Li-Ion 3500 mAh</span></li>\r\n	<li><label>Ram:</label> <span>4 GB</span></li>\r\n	<li><label>CPU :</label><span> Exynos 8895, 8 Nhân, Lõi Tám (lõi Tứ 2.3GHz + lõi Tứ 1.7GHz), 64 bit, vi xử lý 10nm </span></li>\r\n	<li><label>HĐH:</label> <span>Android 7.0 (Nougat)</span></li>\r\n</ul>', 24900000, 2, 19, '2017-12-11', 'img/13.jpg', 'Thiết kế nổi bật sang trọng', '3', NULL, NULL, 1, 0),
(14, 'Samsung Galaxy S8 Plus Orchid Gray', 'SAMSUNG', '<ul>\r\n	<li><label>Màn Hình:</label> <span>6.2 inch Super AMOLED (2560 x 1440 pixel)</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 12.0 MP, Phụ: 8.0 MP</span></li>\r\n	<li><label>Pin:</label> <span> Li-Ion 3500 mAh</span></li>\r\n	<li><label>Ram:</label> <span>4 GB</span></li>\r\n	<li><label>CPU :</label><span> Exynos 8895, 8 Nhân, Lõi Tám (lõi Tứ 2.3GHz + lõi Tứ 1.7GHz), 64 bit, vi xử lý 10nm </span></li>\r\n	<li><label>HĐH:</label> <span>Android 7.0</span></li>\r\n</ul>', 20490000, 2, 8, '2017-12-01', 'img/14.jpg', 'Thiết kế với màu mới độc đáo và sang trọng', '3', NULL, NULL, 1, 8),
(15, 'Sony Xperia XZ', 'SONY', '<ul><li><label>Màn Hình:</label> <span>5.5 inch ( 3840 x 2160 pixels)</span></li><li><label>Camera:</label> <span>Chính: 19.0 MP, Phụ: 13.0 MP</span></li><li><label>Pin:</label> <span>	Li-Ion 3230 mAh</span></li><li><label>Ram:</label> <span>4 GB</span></li><li><label>CPU :</label><span> Qualcomm Snapdragon 835, 8 Nhân</span></li><li><label>HĐH:</label> <span>	Android OS, v7.1 (Nougat)</span></li></ul>', 18490000, 3, 4, '2017-12-14', 'img/20.jpg', 'Kiểu dáng đẹp các cạnh được bo tròn tinh tế', '3', NULL, NULL, 1, 17),
(16, 'Sony Xperia XZ1', 'SONY', '<ul>\r\n	<li><label>Màn Hình:</label> <span>5.2 inch (1920 x 1080 pixels)</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 19.0 MP, Phụ: 13.0 MP</span></li>\r\n	<li><label>Pin:</label> <span> Li-Ion 2700 mAh</span></li>\r\n	<li><label>Ram:</label> <span>4 GB</span></li>\r\n	<li><label>CPU :</label><span> Qualcomm Snapdragon 835, 8 Nhân, 4 nhân 2.45 GHz Kryo &amp; 4 nhân 1.9 GHz Kryo</span></li>\r\n	<li><label>HĐH:</label> <span>Android 8 (Oreo)</span></li>\r\n</ul>', 15680000, 3, 7, '2017-12-15', 'img/21.jpg', 'Trải nghiệm đỉnh cao', '3', NULL, NULL, 1, 1),
(19, 'Sony Xperia XZs', 'SONY', '<ul><li><label>Màn Hình:</label> <span>5.2 inch (1080 x 1920 pixels )</span></li><li><label>Camera:</label> <span>Chính: 19.0 MP, Phụ: 13.0 MP</span></li><li><label>Pin:</label> <span>Li-ion 2900 mAh</span></li><li><label>Ram:</label> <span>4GB</span></li><li><label>CPU :</label><span> Qualcomm MSM8996 Snapdragon 820, 4 Nhân, Quad-core (2x2.15 GHz Kryo &amp; 2x1.6 GHz Kryo)</span></li><li><label>HĐH:</label> <span>Android 7.0 (Nougat)</span></li></ul>', 12990000, 3, 4, '2017-12-01', 'img/22.jpg', 'Thiết kế nhỏ gọn tiện lợi', '3', NULL, NULL, 1, 0),
(20, 'Sony Xperia XA1 Ultra', 'SONY', '<ul>\r\n	<li><label>Màn Hình:</label> <span>6.0 inch (1080 x 1920 pixels)</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 23.0 MP, Phụ: 16.0 MP</span></li>\r\n	<li><label>Pin:</label> <span>Li-Ion 2700 mAh</span></li>\r\n	<li><label>Ram:</label> <span>4GB</span></li>\r\n	<li><label>CPU :</label><span> MediaTek Helio P20, 8 Nhân, Octa Core 64bit (Quad Core 2.3GHz + Quad Core 1.6GHz)</span></li>\r\n	<li><label>HĐH:</label> <span>Android 7.0 (Nougat)</span></li>\r\n</ul>', 8490000, 3, 10, '2017-12-13', 'img/23.jpg', 'Thiết kế đơn giản, sang trọng', '2', NULL, NULL, 1, 0),
(21, 'Sony Xperia XA1 Plus', 'SONY', '<ul>\r\n	<li><label>Màn Hình:</label> <span> 5.5 inch (1920 x 1080 pixels)</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 23.0 MP, Phụ: 8.0 MP</span></li>\r\n	<li><label>Pin:</label> <span> Li-Ion 3430 mAh</span></li>\r\n	<li><label>Ram:</label> <span>4 GB</span></li>\r\n	<li><label>CPU :</label><span> MediaTek Helio P20</span></li>\r\n	<li><label>HĐH:</label> <span>Android v7.1 (Nougat)</span></li>\r\n</ul>', 7190000, 3, 9, '2017-12-01', 'img/24.jpg', 'Màn hình không viền, cấu hình rất tốt', '2', NULL, NULL, 1, 0),
(22, 'Sony Xperia XA1 Ultra', 'SONY', '<ul><li><label>Màn Hình:</label> <span>6.0 inch (1080 x 1920 pixels)</span></li><li><label>Camera:</label> <span>Chính: 21.5 MP, Phụ: 16.0 MP</span></li><li><label>Pin:</label> <span>Li-ion 2700 mAh</span></li><li><label>Ram:</label> <span>3 GB</span></li><li><label>CPU :</label><span> Mediatek MT6755 Helio P10, 8 Nhân, Octa-core 2.0 GHz</span></li><li><label>HĐH:</label> <span>Android 6.0 (Marshmallow)</span></li></ul>', 11490000, 3, 2, '2017-10-01', 'img/25.jpg', 'Thiết  kế ấn tượng với viền màn hình siêu mỏng', '3', NULL, NULL, 1, 11),
(23, 'Sony Xperia L1 Dual', 'SONY', '<ul>\r\n	<li><label>Màn Hình:</label> <span>5.5 inch (1280 x 720 pixels)</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 13.0 MP, Phụ: 5.0 MP</span></li>\r\n	<li><label>Pin:</label> <span> 2620 mAh</span></li>\r\n	<li><label>Ram:</label> <span>2 GB</span></li>\r\n	<li><label>CPU :</label><span> MTK MT6737T, 4 Nhân, Quad-Core 1.45 GHz</span></li>\r\n	<li><label>HĐH:</label> <span>Android 7.0</span></li>\r\n</ul>', 3990000, 3, 4, '2017-01-01', 'img/26.jpg', 'Thiết  kế giữ nguyên đặc trưng nhà Sony', '1', NULL, NULL, 1, 0),
(24, 'Sony Xperia XZ', 'SONY', '<ul><li><label>Màn Hình:</label> <span>5.2 inch( 1920 x 1080 pixels)</span></li><li><label>Camera:</label> <span>Chính: 23.0 MP, Phụ: 13.0 MP</span></li><li><label>Pin:</label> <span>	Li-Ion 2900 mAh</span></li><li><label>Ram:</label> <span>3 GB</span></li><li><label>CPU :</label><span> qualcomm snapdragon 820, 4 Nhân, Dual-Core 2.2 &amp; Dual-Core 1.6GHz</span></li><li><label>HĐH:</label> <span>Android 6.0 (Marshmallow)</span></li></ul>', 9990000, 3, 2, '2017-01-08', 'img/27.jpg', 'Chất lượng hình ảnh đẹp', '2', NULL, NULL, 1, 3),
(25, 'Sony Xperia X', 'SONY', '<ul>\r\n<li>Độ phân giải máy ảnh	24.3 Megapixel</li>\r\n<li>Bộ xử lý máy ảnh	BIONZ X™</li>\r\n<li>Cảm biến hình ảnh	Cảm biến APS-C (23.5 x 15.6mm), Exmor CMOS</li>\r\n<li>Ống kính	Ống kính Sony E-mount</li>\r\n<li>Tiêu cự	16-50 mm</li>\r\n<li>Độ nhạy ISO	 TỰ ĐỘNG</li>\r\n<li>Màn hình	TFT LCD   921,600 điểm ảnh</li>\r\n<li>Kích thước màn hình	3 inch</li>\r\n<li>Tính năng màn hình	Màn hình cảm ứng</li>\r\n<li>Cân bằng trắng	Tự động</li>\r\n<li>Chụp ảnh bù sáng	3 khung hình, có thể lựa chọn Cao/Thấp</li>\r\n<li>Quay phim 	Full HD XAVC S</li>\r\n<li>Định dạng quay phim	XAVC S, AVCHDVer. 2.0, MP4</li>\r\n<li>Thẻ nhớ tương thích	Memory Stick XC-HG Duo, SD, SDHC, SDXC</li>\r\n<li>Các đặc tính khác	Chức năng nhận diện nụ cười,  Chạm để chụp,  Chạm để lấy nét,  Hẹn giờ tự chụp chân dung,  PlayMemories Camera Apps,  Hướng dẫn chụp ảnh,  Hướng dẫn sử dụng,  Chức năng khóa, cài đặt,  Vùng cài đặt,  Chế độ ở Shop,  Eye-Fi ready.</li>\r\n<li>Phụ kiện đi kèm	ống kính SELP1650</li>\r\n<li>Cổng kết nối	AV / USB / WIFI / NFC</li>\r\n<li>Loại pin	Pin sạc NP-FW50</li>\r\n<li>Kích thước	109.6 x 62.8 x 35.7 mm</li>\r\n<li>Khối Lượng	283 g</li>\r\n<li>Màu sắc	Đen</li>\r\n</ul>', 7990000, 3, 3, '2017-02-01', 'img/28.jpg', 'Thiết kế mới mẻ màn hình sắc nét', '2', NULL, NULL, 1, 0),
(27, 'OPPO F3 Plus', 'OPPO', '<ul>\r\n	<li><label>Màn Hình:</label> <span>6.0 inch (1080 x 1920 pixels)</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 16.0 MP, Phụ: Dual 16.0 MP + 8.0 MP</span></li>\r\n	<li><label>Pin:</label> <span> Li-Ion 4000 mAh</span></li>\r\n	<li><label>Ram:</label> <span>4 GB</span></li>\r\n	<li><label>CPU :</label><span> Qualcomm Snapdragon 653, 8 Nhân, Octa-core</span></li>\r\n	<li><label>HĐH:</label> <span> Android 6.0 (Marshmallow)</span></li>\r\n</ul>', 10999000, 4, 5, '2017-12-01', 'img/29.jpg', 'Cấu hình mạnh mẽ', '3', NULL, NULL, 1, 12),
(28, 'OPPO F5 6GB', 'OPPO', '<ul>\r\n	<li>Màn Hình: 6.0 inch</li>\r\n	<li>Camera: Chính: 16.0 MP, Phụ: 20.0 MP</li>\r\n	<li>Pin: 3200 mAh</li>\r\n	<li>Ram: 6 GB</li>\r\n	<li>CPU : Mediatek MT6763T</li>\r\n	<li>HĐH: Android 7.1</li>\r\n</ul>', 8990000, 4, 1, '2017-06-01', 'img/30.jpg', 'camera chân thực', '2', NULL, NULL, 1, 0),
(29, 'OPPO F5', 'OPPO', '<ul>\r\n<li>Độ phân giải: 16.2 MP</li>\r\n<li>Chip xử lý: CCD</li>\r\n<li>Zoom quang học: 12X</li>\r\n<li>Ống kính góc rộng: 24mm F3.1 with Soft Flash</li>\r\n<li>ISO: 80 - 3200</li>\r\n<li>Quay phim: HD 720p</li>\r\n<li>Màn hình: 3.0"</li>\r\n<li>Ống kính: SamSung</li>\r\n<li>Chống rung: quang học</li>\r\n<li>Hiệu ứng hình ảnh: Smart Auto, Beauty shot, Live Panorama, Action Freeze</li>\r\n<li>Pin: Lithium</li>\r\n<li>Màu: Đen, Trắng</li>\r\n<li>Tính năng Wifi: chia sẻ hình ảnh trực tiếp qua Smartphone không cần Wifi, up ảnh trực tiếp lên Facebook, Tag&Go(NFC/Wifi)</li>\r\n</ul>', 6990000, 4, 6, '2017-07-01', 'img/31.jpg', 'Thiết kế màn hình không viền', '2', NULL, NULL, 1, 0),
(30, 'OPPO F1 Plus', 'OPPO', '<ul>\r\n	<li><label>Màn Hình:</label> <span>5.5 inch (1920 x 1080 pixels)</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 13.0 MP, Phụ: 16.0 MP</span></li>\r\n	<li><label>Pin:</label> <span>Li-ion 2850 mAh</span></li>\r\n	<li><label>Ram:</label> <span>4 GB</span></li>\r\n	<li><label>CPU :</label><span> MediaTek MT6755, 8 Nhân, Octa-core 2.0 GHz</span></li>\r\n	<li><label>HĐH:</label> <span>Android 5.1 Lollipop</span></li>\r\n</ul>', 6490000, 4, 4, '2017-11-01', 'img/32.jpg', 'Màn hình không viền', '2', NULL, NULL, 1, 9),
(31, 'OPPO F3', 'OPPO', '<ul>\r\n<li>Độ phân giải: 20.3 MP</li>\r\n<li>Chip xử lý: APS-C CMOS</li>\r\n<li>Ống kính: 16-50mm F3.5</li>\r\n<li>ISO: 100 - 25600</li>\r\n<li>Tốc độ chụp: 1/8000s</li>\r\n<li>Chụp liên tục: 9 tấm/giây</li>\r\n<li>Quay phim: Full HD 1080p</li>\r\n<li>Màn hình: LCD 3.0" Xoay 180 độ</li>\r\n<li>Ống kính: SamSung Ngàm NX</li>\r\n<li>Chống rung: quang học</li>\r\n<li>Hiệu ứng hình ảnh: Smart Auto, Beauty shot, Live Panorama, Action Freeze</li>\r\n<li>Pin: Lithium</li>\r\n<li>Màu: Đen</li>\r\n<li>Tính năng Wifi: chia sẻ hình ảnh trực tiếp qua Smartphone không cần Wifi, up ảnh trực tiếp lên Facebook, Tag&Go(NFC/Wifi)</li>\r\n</ul>', 6490000, 4, 5, '2017-11-01', 'img/33.jpg', 'Thiết kế thời trang', '2', NULL, NULL, 1, 0),
(32, 'OPPO F5 Youth', 'OPPO', '<ul>\r\n	<li>Màn Hình: 6.0 inch</li>\r\n	<li>Camera: Chính: 13.0 MP, Phụ: 16.0 MP</li>\r\n	<li>Pin: 3200 mAh</li>\r\n	<li>Ram: 3 GB</li>\r\n	<li>CPU : Mediatek MT6763T</li>\r\n	<li>HĐH: Android 7.1&nbsp;</li>\r\n</ul>', 6190000, 4, 1, '2017-10-01', 'img/34.jpg', 'Thiết kế trẻ trung', '2', NULL, NULL, 1, 10),
(33, 'OPPO F1s 2017 (64GB)', 'OPPO', '<ul>\r\n	<li><label>Màn Hình:</label> <span>5.5 inch (1280 x 720 pixels)</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 13.0MP; Phụ: 16.0MP</span></li>\r\n	<li><label>Pin:</label> <span> Li-Ion 3075 mAh</span></li>\r\n	<li><label>Ram:</label> <span>4 GB</span></li>\r\n	<li><label>CPU :</label><span> MediaTek MT6750, 8 Nhân, Octa-core 1.5GHz</span></li>\r\n	<li><label>HĐH:</label> <span>ColorOS 3.0, nền tảng Android 5.1</span></li>\r\n</ul>', 5990000, 4, 3, '2017-01-01', 'img/35.jpg', 'Sang trọng cuốn hút', '1', NULL, NULL, 1, 0),
(34, 'Oppo F3 Lite', 'OPPO', '<ul>\r\n	<li><label>Màn Hình:</label> <span>5.2 inch (720 x 1280 pixels)</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 13.0 MP, Phụ: 16.0 MP</span></li>\r\n	<li><label>Pin:</label> <span> 2900 mAh</span></li>\r\n	<li><label>Ram:</label> <span> 3 GB</span></li>\r\n	<li><label>CPU :</label><span> Qualcomm MSM8940, 8 Nhân, Octa-core 1.4 GHz</span></li>\r\n	<li><label>HĐH:</label> <span>ColorOS 3.0, nền tảng Android 6.0 </span></li>\r\n</ul>', 5490000, 4, 4, '2017-07-01', 'img/36.jpg', 'Thiết kế truyền thống, sang trọng', '1', NULL, NULL, 1, 5),
(35, 'OPPO A71', 'OPPO', '<ul>\r\n	<li><label>Màn Hình:</label> <span>5.2 inch ( 1280 x 720 pixels)</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 13.0 MP, Phụ: 5.0 MP</span></li>\r\n	<li><label>Pin:</label> <span> Li-Ion 3000 mAh</span></li>\r\n	<li><label>Ram:</label> <span> 3 GB</span></li>\r\n	<li><label>CPU :</label><span> Mediatek MT6750, 8 Nhân, 1.5 GHz Octa-Core</span></li>\r\n	<li><label>HĐH:</label> <span>Android 7.1</span></li>\r\n</ul>', 4690000, 4, 4, '2017-02-01', 'img/37.jpg', 'Thiết kế truyền thống', '1', NULL, NULL, 1, 0),
(36, 'OPPO A37 (Neo 9)', 'OPPO', '<ul>\r\n<li>Độ phân giải: 16.3 MP</li>\r\n<li>Chip xử lý: BSI CMOS</li>\r\n<li>Zoom quang học: 12X</li>\r\n<li>Ống kính góc rộng: 24mm F3.1 with Soft Flash</li>\r\n<li>ISO: 80 - 3200</li>\r\n<li>Quay phim: HD 720p</li>\r\n<li>Màn hình: 3.0"</li>\r\n<li>Ống kính: SamSung</li>\r\n<li>Chống rung: quang học</li>\r\n<li>Hiệu ứng hình ảnh: Smart Auto, Beauty shot, Live Panorama, Action Freeze</li>\r\n<li>Pin: Lithium</li>\r\n<li>Màu: Nâu, Trắng</li>\r\n<li>Tính năng Wifi: chia sẻ hình ảnh trực tiếp qua Smartphone không cần Wifi, up ảnh trực tiếp lên Facebook, Tag&Go(NFC/Wifi)</li>\r\n</ul>', 3290000, 4, 2, '2016-03-01', 'img/37.jpg', 'Cứng cáp với khung kim loại', '1', NULL, NULL, 1, 4),
(41, 'Samsung Galaxy S7 Edge', 'SAMSUNG', '<ul>\r\n	<li><label>Màn Hình:</label> <span>5.5 inch (1440 x 2560 pixels)</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 12.0 MP, Phụ 5.0 MP</span></li>\r\n	<li><label>Pin:</label> <span>Li-ion 3600mAh</span></li>\r\n	<li><label>Ram:</label> <span>4 GB</span></li>\r\n	<li><label>CPU :</label><span> Exynos 8890, 8 Nhân, Octa-core</span></li>\r\n	<li><label>HĐH:</label> <span>Android 6.0 (Marshmallow)</span></li>\r\n</ul>', 15697000, 2, 6, '2017-01-01', 'img/16.jpg', 'Với sự nâng cấp mạnh mẽ về cấu hình', '3', NULL, NULL, 1, 0),
(42, 'Samsung Galaxy S8', 'SAMSUNG', '<ul>\r\n	<li><label>Màn Hình:</label> <span>5.8 inch Super AMOLED (2560 x 1440 pixel)</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 12.0 MP, Phụ: 8.0 MP</span></li>\r\n	<li><label>Pin:</label> <span> Li-Ion 3000 mAh</span></li>\r\n	<li><label>Ram:</label> <span>4 GB</span></li>\r\n	<li><label>CPU :</label><span> Exynos 8895, 8 Nhân, Lõi Tám (lõi Tứ 2.3GHz + lõi Tứ 1.7GHz), 64 bit, vi xử lý 10nm </span></li>\r\n	<li><label>HĐH:</label> <span>Android 7.0 (Nougat)</span></li>\r\n</ul>', 18679000, 2, 3, '2017-01-01', 'img/15.jpg', 'Thiết kế ấn tượng, vẻ ngoài sang trọng', '3', NULL, NULL, 1, 6),
(43, 'Samsung Galaxy Note FE ', 'SAMSUNG', '<ul>\r\n	<li><label>Màn Hình:</label>&nbsp;5.7 inch (2560 x 1440 pixels)</li>\r\n	<li><label>Camera:</label>&nbsp;Chính: 12.0 MP, Phụ: 5.0 MP</li>\r\n	<li><label>Pin:</label>&nbsp;Li-Ion 3200 mAh</li>\r\n	<li><label>Ram:</label>&nbsp;4 GB</li>\r\n	<li><label>CPU :</label>&nbsp;Exynos 8890</li>\r\n	<li><label>HĐH:</label>&nbsp;Android 7.0</li>\r\n</ul>', 13990000, 2, 9, '2017-01-12', 'img/17.jpg', 'Cấu hình đỉnh cao', '3', NULL, NULL, 1, 0),
(44, 'Samsung Galaxy C9 Pro', 'SAMSUNG', '<ul>\r\n	<li><label>Màn Hình:</label> <span>6.0 inch (1080 x 1920 pixels)</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 16.0MP, Phụ: 16.0MP</span></li>\r\n	<li><label>Pin:</label> <span> Li-Ion 4000 mAh</span></li>\r\n	<li><label>Ram:</label> <span>6 GB</span></li>\r\n	<li><label>CPU :</label><span> Qualcomm Snapdragon 653, 8 Nhân, Quad-core 1.95 GHz và Quad-core 1.40 GHz</span></li>\r\n	<li><label>HĐH:</label> <span> Android 6.0 (Marshmallow)</span></li>\r\n</ul>', 13990000, 2, 7, '2017-01-01', 'img/18.jpg', 'Thiết kế nhôm nguyên khối siêu mỏng', '3', NULL, NULL, 1, 10),
(45, 'Samsung Galaxy A7 (2017)', 'SAMSUNG', '<ul>\r\n	<li><label>Màn Hình:</label> <span>Super AMOLED, 5.7", Full HD</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 16.0 MP; Phụ: 16.0 MP</span></li>\r\n	<li><label>Pin:</label> <span> Li-Ion 3600 mAh</span></li>\r\n	<li><label>Ram:</label> <span>3 GB</span></li>\r\n	<li><label>CPU :</label><span> Exynos 7880, 8 Nhân, 1.9 GHz</span></li>\r\n	<li><label>HĐH:</label> <span> Android 6.0 (Marshmallow)</span></li>\r\n</ul>', 9990000, 2, 2, '2017-02-01', 'img/19.jpg', 'Thiết kế cao cấp sang trọng', '2', NULL, NULL, 1, 0),
(46, 'NOKIA-8', 'NOKIA', '<ul>\r\n	<li><label>Màn Hình:</label> <span>5.5 inch (1080x1920 pixels)</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 16.0 MP, Phụ: 8.0 MP</span></li>\r\n	<li><label>Pin:</label> <span> 3000mAh</span></li>\r\n	<li><label>Ram:</label> <span> 3 GB</span></li>\r\n	<li><label>CPU :</label><span> Qualcomm Snapdragon 430, 8 Nhân</span></li>\r\n	<li><label>HĐH:</label> <span>Android™ 7.1.1 Nougat</span></li>\r\n</ul>', 12990000, 5, 1, '2017-11-01', 'img/38.jpg', 'Thiết kế nguyên khối toàn diện', '3', NULL, NULL, 2, 5),
(47, 'NOKIA-6', 'NOKIA', '<ul>\r\n	<li><label>Màn Hình:</label> <span>5.5 inch (1080x1920 pixels)</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 16.0 MP, Phụ: 8.0 MP</span></li>\r\n	<li><label>Pin:</label> <span> 3000mAh</span></li>\r\n	<li><label>Ram:</label> <span> 3 GB</span></li>\r\n	<li><label>CPU :</label><span> Qualcomm Snapdragon 430, 8 Nhân</span></li>\r\n	<li><label>HĐH:</label> <span>Android™ 7.1.1 Nougat</span></li>\r\n</ul>', 5990000, 5, 5, '2017-01-01', 'img/39.jpg', 'Thiết kế ấn tượng', '1', NULL, NULL, 1, 0),
(48, 'NOKIA-5', 'NOKIA', '<ul>\r\n	<li><label>Màn Hình:</label> <span>5.2 inch, 720 x 1280 pixels</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 13.0 MP, Phụ: 8.0 MP</span></li>\r\n	<li><label>Pin:</label> <span> 3000 mAh</span></li>\r\n	<li><label>Ram:</label> <span>2 GB</span></li>\r\n	<li><label>CPU :</label><span> Qualcomm Snapdragon 430, 8 Nhân</span></li>\r\n	<li><label>HĐH:</label> <span>Android™ 7.1.1 Nougat</span></li>\r\n</ul>', 4950000, 5, 8, '2016-12-01', 'img/40.jpg', 'Vẻ ngoài hiện đại, thanh thoát', '1', NULL, NULL, 1, 0),
(49, 'NOKIA-3', 'NOKIA', '<ul>\r\n	<li><label>Màn Hình:</label> <span>5.0 inch (720 x 1280 pixels)</span></li>\r\n	<li><label>Camera:</label> <span>Chính: 8.0 MP, Phụ: 8.0 MP</span></li>\r\n	<li><label>Pin:</label> <span> Li-Ion 2630 mAh</span></li>\r\n	<li><label>Ram:</label> <span>2 GB</span></li>\r\n	<li><label>CPU :</label><span> Mediatek MT6737, 4 Nhân, 1.3GHz Quad Core</span></li>\r\n	<li><label>HĐH:</label> <span>Android OS, v7.0 (Nougat)</span></li>\r\n</ul>', 2990000, 5, 6, '2015-12-01', 'img/41.jpg', 'Thiết kế thời trang', '1', NULL, NULL, 1, 1),
(50, 'NOKIA-2', 'NOKIA', '<ul>\r\n	<li>Màn Hình: 5.0 inch</li>\r\n	<li>Camera: Chính: Dual 8.0 MP, Phụ: 5.0 MP</li>\r\n	<li>Pin: 4100 mAh</li>\r\n	<li>Ram: 1 GB</li>\r\n	<li>CPU : Qualcomm Snapdragon 212</li>\r\n	<li>HĐH: Android 7.1.1 (Nougat)</li>\r\n</ul>', 2490000, 5, 5, '2015-11-01', 'img/42.jpg', 'Thiết kế cứng cáp, chống nước', '1', NULL, NULL, 1, 0),
(54, 'SAMSUNG J7 PRO', 'SAMSUNG', 'kyui\r\njhg\r\nluỵt', 6990000, 1, 3, '2017-12-22', 'img/44.jpg', 'dgdg', '2', '2017-12-22 01:39:56', '2017-12-22 01:39:56', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `TypeID` int(11) NOT NULL,
  `TypeName` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TypeID`, `TypeName`) VALUES
(1, 'Dưới 6 triệu'),
(2, 'Từ 6 triệu đến 10 triệu'),
(3, 'Trên 10 triệu');

-- --------------------------------------------------------

--
-- Table structure for table `type_camera`
--

CREATE TABLE `type_camera` (
  `id` int(1) NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_camera`
--

INSERT INTO `type_camera` (`id`, `type`) VALUES
(1, 'Camera Thường'),
(2, 'Camera Kép');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `dob`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Thị Ánh Nguyệt', 'kidtran457@gmail.com', '$2y$10$F6PQMs6oU19Syu3bd6qqWejQ85Ea2mdID7uH24S8m4HVzwcJDQ.C2', '1990-12-12', 'LN3kLrA483FI8xYIWtc3GiJrqweaka2KMMyVoKyLeQn9aUk7H2qjvKcX2iuM', NULL, NULL),
(2, 'Lê Nam Hữu Phong', 'phong123@gmail.com', '$2y$10$JpvK9uIe3A0.wkO2.5Jxj.sgxoRfwNwB37/Ym8dGoH1i7tu0Uw5gi', '1985-12-26', 'jAb7uwxZdspZXgHO8xMwcUXcRalRCapwbU9p2juBYc34nBaRDlUucMVFOW8c', '2017-12-26 06:15:33', '2017-12-26 06:15:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CatID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProID`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`TypeID`);

--
-- Indexes for table `type_camera`
--
ALTER TABLE `type_camera`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CatID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `TypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
