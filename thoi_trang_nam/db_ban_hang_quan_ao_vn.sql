-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2020 at 08:14 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ban_hang_quan_ao`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_DH` int(10) UNSIGNED DEFAULT NULL,
  `id_SP` int(10) UNSIGNED DEFAULT NULL,
  `Gia` double DEFAULT NULL,
  `SoLuong` int(10) UNSIGNED DEFAULT NULL,
  `size` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NgayTao` timestamp NULL DEFAULT NULL,
  `NgayCN` timestamp NULL DEFAULT NULL,
  `NgayXoa` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `id_DH`, `id_SP`, `Gia`, `SoLuong`, `size`, `NgayTao`, `NgayCN`, `NgayXoa`) VALUES
(1, 1, 5, 479000, 2, NULL, '2020-09-21 10:29:00', '2020-09-21 10:29:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_PN` int(10) UNSIGNED DEFAULT NULL,
  `id_SP` int(10) UNSIGNED DEFAULT NULL,
  `SoLuong` int(10) UNSIGNED DEFAULT NULL,
  `NgayTao` timestamp NULL DEFAULT NULL,
  `NgayCN` timestamp NULL DEFAULT NULL,
  `NgayXoa` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`id`, `id_PN`, `id_SP`, `SoLuong`, `NgayTao`, `NgayCN`, `NgayXoa`) VALUES
(10, 17, 1, 50, '2020-07-19 09:35:15', '2020-07-19 09:35:15', NULL),
(11, 18, 2, 100, '2020-07-19 10:42:27', '2020-07-19 10:42:27', NULL),
(12, 19, 3, 50, '2020-07-19 10:43:15', '2020-07-19 10:43:15', NULL),
(13, 20, 4, 150, '2020-07-19 10:44:13', '2020-07-19 10:44:13', NULL),
(14, 21, 5, 200, '2020-07-19 10:45:28', '2020-07-19 10:45:28', NULL),
(15, 22, 6, 150, '2020-07-19 10:46:27', '2020-07-19 10:46:27', NULL),
(16, 23, 7, 50, '2020-07-19 10:47:27', '2020-07-19 10:47:27', NULL),
(17, 24, 8, 450, '2020-07-19 10:51:20', '2020-07-19 10:51:20', NULL),
(18, 25, 9, 200, '2020-07-19 10:52:41', '2020-07-19 10:52:41', NULL),
(19, 26, 10, 130, '2020-07-19 10:58:10', '2020-07-19 10:58:10', NULL),
(20, 27, 11, 150, '2020-07-19 11:21:21', '2020-07-19 11:21:21', NULL),
(21, 28, 12, 50, '2020-07-31 11:34:04', '2020-07-31 11:34:04', NULL),
(22, 29, 14, 50, NULL, NULL, NULL),
(23, 30, 15, 50, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `danhmucsanpham`
--

CREATE TABLE `danhmucsanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_DMSPCha` int(10) UNSIGNED DEFAULT NULL,
  `TrangThai` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `NgayCN` timestamp NULL DEFAULT NULL,
  `NgayTao` timestamp NULL DEFAULT NULL,
  `NgayXoa` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danhmucsanpham`
--

INSERT INTO `danhmucsanpham` (`id`, `ten`, `id_DMSPCha`, `TrangThai`, `NgayCN`, `NgayTao`, `NgayXoa`) VALUES
(1, 'Áo', NULL, 1, '2020-07-14 21:45:53', '2020-07-14 21:48:50', NULL),
(2, 'Quần', NULL, 1, '2020-07-14 21:46:18', '2020-07-14 21:48:57', NULL),
(3, 'Mũ', NULL, 0, '2020-07-14 21:46:50', '2020-07-31 10:32:41', '2020-07-14 21:48:04'),
(4, 'Ví da', NULL, 1, '2020-07-14 21:47:46', '2020-07-14 21:49:14', NULL),
(5, 'Mũ nón', NULL, 1, '2020-07-14 21:47:58', '2020-07-14 21:47:58', NULL),
(6, 'Giày dép', NULL, 1, '2020-07-14 21:48:31', '2020-07-14 21:49:06', NULL),
(7, 'Áo thun nam', 1, 1, '2020-07-14 23:53:39', '2020-07-14 23:53:39', NULL),
(8, 'Áo sơ mi nam', 1, 1, '2020-07-14 23:53:59', '2020-07-14 23:53:59', NULL),
(9, 'Áo khoác nam', 1, 1, '2020-07-14 23:54:31', '2020-07-14 23:54:31', NULL),
(10, 'Quần jean nam', 2, 1, '2020-07-14 23:55:10', '2020-07-14 23:55:10', NULL),
(11, 'Quần short nam', 2, 1, '2020-07-14 23:55:27', '2020-07-14 23:55:27', NULL),
(12, 'Ví da ngang', 4, 1, '2020-07-14 23:55:56', '2020-07-14 23:55:56', NULL),
(13, 'Ví da đứng', 4, 1, '2020-07-14 23:56:06', '2020-07-14 23:56:06', NULL),
(14, 'Giày nam', 6, 1, '2020-07-14 23:56:58', '2020-07-14 23:56:58', NULL),
(15, 'Dép nam', 6, 1, '2020-07-14 23:57:18', '2020-07-14 23:57:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_ND` int(10) UNSIGNED DEFAULT NULL,
  `id_NV` int(10) UNSIGNED DEFAULT NULL,
  `TrangThai` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `NgayGiao` datetime DEFAULT NULL,
  `TongTien` int(11) DEFAULT 0,
  `GhiChu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `XacNhan` tinyint(4) DEFAULT NULL,
  `NgayTao` timestamp NULL DEFAULT NULL,
  `NgayCN` timestamp NULL DEFAULT NULL,
  `NgayXoa` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `id_ND`, `id_NV`, `TrangThai`, `NgayGiao`, `TongTien`, `GhiChu`, `XacNhan`, `NgayTao`, `NgayCN`, `NgayXoa`) VALUES
(1, 14, 8, 3, '2020-09-21 00:00:00', 958000, NULL, 1, '2020-09-21 10:29:00', '2020-09-21 10:29:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guitang`
--

CREATE TABLE `guitang` (
  `id` int(11) NOT NULL,
  `id_DH` int(10) UNSIGNED NOT NULL,
  `TenNN` varchar(255) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiDung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayTao` timestamp NULL DEFAULT NULL,
  `NgayCN` timestamp NULL DEFAULT NULL,
  `NgayXoa` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SDT` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VaiTro` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `HoatDong` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MatKhau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NgayTao` timestamp NULL DEFAULT NULL,
  `NgayCN` timestamp NULL DEFAULT NULL,
  `NgayXoa` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `Ten`, `DiaChi`, `SDT`, `VaiTro`, `HoatDong`, `email`, `MatKhau`, `remember_token`, `NgayTao`, `NgayCN`, `NgayXoa`) VALUES
(1, 'admin', 'abc', '12312312', 1, 0, 'admin@gmail.com', '$2y$10$GPqRuYef8vqH0OqA9XlYHeP26Egk/h9eP8dYJTUVjz4t7Av6RS1Qq', 'cdsFI6aASO2dLcykUb30mjrCVAqSHrUfuMMyAs5ouuXC1nu39VjnSyMh1JL5', NULL, '2020-07-22 10:19:46', NULL),
(2, 'Nhân viên kho', 'Cầu Giấy, Hà Nội', '034234223', 2, 0, 'kho1@gmail.com', '$2y$10$tmji938m6OkkIwpmkuG8J.F3WmY5csHmhJ/a5n1bVbWoKj0G3wFCS', 'Rj3VMTP5khfV7ZnEytmPaVBeCl1vBPEVzJeDqgI1LC2TwwDQUNHaLeYzCfHG', '2020-07-15 00:01:22', '2020-07-28 09:46:25', NULL),
(3, 'Giao hàng 1', 'Hà Đông, Hà Nội', '023234444', 3, 0, 'shiper1@gmail.com', '$2y$10$TR9tIlLE463k/PmGgFUqjuOejFmksnfMtetCf9619SqsALfOhjePu', NULL, '2020-07-15 00:02:12', '2020-07-28 09:46:52', NULL),
(7, 'NGuyễn Văn Dượcsdfsdfsd', 'Hà Nội', '0928817225438', 0, 0, 'dsdfsdfsuocnvoit@gmail.com', '$2y$10$AYv.Z9QQ3cuxmoeUCXq5AemaTEq8Z642i63Z/wyIrheIMvwdCYHGS', NULL, '2020-07-28 09:43:09', '2020-07-29 10:25:45', NULL),
(8, 'Giao hàng 2', 'Kim Mã', '19001907', 3, 0, 'shiper2@gmail.com', '$2y$10$rbmjM.QWtb.Fk5bHuVx1GeeXLt3r5M.GCMG/1u2uptBzm/QGzp50.', '6zZqccfqOdO8WTim0p54OL40UVROfdJ9wUJhjet5OYD470FzpoIs4u4j2YOS', '2020-07-28 09:45:18', '2020-07-28 11:28:39', NULL),
(9, 'Giao hàng  3', 'thái bình', '1659020898', 2, 0, 'shiper3@gmail.com', '$2y$10$f1PLZwQ90cw6WK67XpSoou7rCTEpnB7m4/Fcrw2woHxgYXj6qfGZ.', NULL, '2020-07-28 09:45:59', '2020-07-28 09:45:59', NULL),
(10, 'Dương trung Kiên', 'Hà Tây', '0928817228', 0, 0, 'duongtrungkien@gmail.com', '$2y$10$A1Kh4LSO27PR2mCq8D4sIOMvm.7Ivh/wx5BqvUvhQu1Yc5cgnGk4K', NULL, '2020-07-28 10:38:37', NULL, NULL),
(14, 'Nguyễn Văn Dương', 'thái bình', '1659020898', 0, 0, 'duongnh@gmail.com', '$2y$10$FfPFd1ql26vslznbaEX7m.KHWK2fqTBeQoXDtVEDYRBKecjkZI1.O', 'Pl1AifHzhJ5ozdwxPpzidO3O3QQtLpbnoUr5chePf7l1VqIJOx4lhpBBAuNF', '2020-09-19 19:40:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NgayTao` timestamp NULL DEFAULT NULL,
  `NgayCN` timestamp NULL DEFAULT NULL,
  `NgayXoa` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`id`, `Ten`, `DiaChi`, `SDT`, `email`, `NgayTao`, `NgayCN`, `NgayXoa`) VALUES
(1, 'adidass', 'adidass', '0999999999', 'thuongdinh@gmail.com', '2020-07-14 21:36:37', '2020-07-14 21:36:37', NULL),
(2, 'Tony4men', 'Tony4men', '088888888', 'tony@gmail.com', '2020-07-14 21:37:42', '2020-07-14 21:37:42', NULL),
(3, 'H2T', 'H2T', '0344554556', 'h2t@gmail.com', '2020-07-14 21:38:55', '2020-07-14 21:38:55', NULL),
(4, '360boutique', '360boutique', '03435354235', 'boutique@gmail.com', '2020-07-14 21:40:01', '2020-07-14 21:40:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_NV` int(10) UNSIGNED DEFAULT NULL,
  `NgayXoa` timestamp NULL DEFAULT NULL,
  `NgayTao` timestamp NULL DEFAULT NULL,
  `NgayCN` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`id`, `id_NV`, `NgayXoa`, `NgayTao`, `NgayCN`) VALUES
(8, 1, '2020-07-15 00:59:51', '2020-07-15 00:59:51', NULL),
(9, 1, '2020-07-15 01:27:55', '2020-07-15 01:27:55', NULL),
(10, 1, '2020-07-15 01:29:47', '2020-07-15 01:29:47', NULL),
(11, 1, '2020-07-15 01:30:59', '2020-07-15 01:30:59', NULL),
(12, 1, '2020-07-15 01:32:00', '2020-07-15 01:32:00', NULL),
(13, 1, '2020-07-15 01:33:59', '2020-07-15 01:33:59', NULL),
(14, 1, '2020-07-15 01:35:17', '2020-07-15 01:35:17', NULL),
(15, 1, '2020-07-15 01:36:15', '2020-07-15 01:36:15', NULL),
(16, 1, '2020-07-15 01:37:19', '2020-07-15 01:37:19', NULL),
(17, 1, '2020-07-19 09:35:15', '2020-07-19 09:35:15', NULL),
(18, 1, '2020-07-19 10:42:27', '2020-07-19 10:42:27', NULL),
(19, 1, '2020-07-19 10:43:15', '2020-07-19 10:43:15', NULL),
(20, 1, '2020-07-19 10:44:13', '2020-07-19 10:44:13', NULL),
(21, 1, '2020-07-19 10:45:28', '2020-07-19 10:45:28', NULL),
(22, 1, '2020-07-19 10:46:27', '2020-07-19 10:46:27', NULL),
(23, 1, '2020-07-19 10:47:27', '2020-07-19 10:47:27', NULL),
(24, 1, '2020-07-19 10:51:20', '2020-07-19 10:51:20', NULL),
(25, 1, '2020-07-19 10:52:41', '2020-07-19 10:52:41', NULL),
(26, 1, '2020-07-19 10:58:10', '2020-07-19 10:58:10', NULL),
(27, 1, '2020-07-19 11:21:21', '2020-07-19 11:21:21', NULL),
(28, 1, '2020-07-31 11:34:04', '2020-07-31 11:34:04', NULL),
(29, 1, NULL, NULL, NULL),
(30, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_NCC` int(10) UNSIGNED DEFAULT NULL,
  `id_DMSP` int(10) UNSIGNED DEFAULT NULL,
  `Ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gia` double DEFAULT NULL,
  `MoTa` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SoLuong` int(10) UNSIGNED DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Anh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TrangThai` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `SLBan` int(11) NOT NULL DEFAULT 0,
  `XLXem` int(11) NOT NULL DEFAULT 0,
  `NgayTao` timestamp NULL DEFAULT NULL,
  `NgayCN` timestamp NULL DEFAULT NULL,
  `NgayXoa` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `id_NCC`, `id_DMSP`, `Ten`, `Gia`, `MoTa`, `SoLuong`, `size`, `Anh`, `TrangThai`, `SLBan`, `XLXem`, `NgayTao`, `NgayCN`, `NgayXoa`) VALUES
(1, 3, 1, 'ÁO POLO NAM', 399000, '<p><a href=\"https://canifa.com/catalog/product/view/id/211634/s/ao-polo-nam-8tp20s010/category/99/#product-detail-tab-content-1\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">MÔ TẢ</a></p><div class=\"product-detail-tab-content active  \" detail-tab-id=\"product-detail-tab-content-1\" id=\"product-detail-tab-content-1\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Áo polo trơn chất liệu polyester.<br>Phom regular, cổ polo, tay cộc.<br>Kiểu dáng đơn giản, thoải mái, phù hợp nhiều hoàn cảnh.<br>Thích hợp mặc quanh năm.<br>Kết hợp với quần sóoc, jeans, khaki…với giày thể thao, sandal.</div><p><a href=\"https://canifa.com/catalog/product/view/id/211634/s/ao-polo-nam-8tp20s010/category/99/#product-detail-tab-content-2\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">CHẤT LIỆU</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-2\" id=\"product-detail-tab-content-2\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">100% polyester.</div><p><a href=\"https://canifa.com/catalog/product/view/id/211634/s/ao-polo-nam-8tp20s010/category/99/#product-detail-tab-content-3\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">HƯỚNG DẪN SỬ DỤNG</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-3\" id=\"product-detail-tab-content-3\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Giặt máy ở chế độ nhẹ, nhiệt độ thường.<br>Không sử dụng hóa chất tẩy.<br>Phơi trong bóng mát<br>Sấy khô ở nhiệt độ thấp.<br>Là ở nhiệt độ thấp 110 độ C.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí.</div>', 50, NULL, 'tyyfaWBP8icMRLziC2Bh5sPWw4dOsmWwmDOGjP9U.jpeg', 1, 0, 4, '2020-07-19 09:35:15', '2020-07-19 11:09:45', NULL),
(2, 2, 9, 'ÁO KHOÁC NAM', 899000, '<div class=\"product-name\" style=\"color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\"><a href=\"https://canifa.com/catalog/product/view/id/210919/s/ao-khoac-jeans-nam-8ot20s003/category/99/#product-detail-tab-content-1\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; background-color: rgb(255, 255, 255);\">MÔ TẢ</a><div class=\"product-detail-tab-content active  \" detail-tab-id=\"product-detail-tab-content-1\" id=\"product-detail-tab-content-1\" style=\"line-height: 19px; margin-bottom: 30px;\">Áo khoác nam</div><a href=\"https://canifa.com/catalog/product/view/id/210919/s/ao-khoac-jeans-nam-8ot20s003/category/99/#product-detail-tab-content-2\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; background-color: rgb(255, 255, 255);\">CHẤT LIỆU</a><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-2\" id=\"product-detail-tab-content-2\" style=\"line-height: 19px; margin-bottom: 30px;\">Vải jeans</div><a href=\"https://canifa.com/catalog/product/view/id/210919/s/ao-khoac-jeans-nam-8ot20s003/category/99/#product-detail-tab-content-4\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; background-color: rgb(255, 255, 255);\">THÔNG SỐ NGƯỜI MẪU</a><div class=\"product-detail-tab-content product-detail-tab--thong-so \" detail-tab-id=\"product-detail-tab-content-4\" id=\"product-detail-tab-content-4\" style=\"line-height: 19px; margin-bottom: 30px;\">Chiều cao: 182cm<br>Cân nặng: 71kg<br>Mặc áo size: M</div></div>', 93, NULL, '8HmF0vy8THYuJytcLJ3Ntz2WujwMpwAmclyXnw8h.jpeg', 1, 0, 24, '2020-07-19 10:42:27', '2020-08-01 11:09:12', NULL),
(3, 4, 9, 'ÁO KHOÁC NAM DẠ DỆT HOẠT TIẾT', 299000, '<p><a href=\"https://canifa.com/catalog/product/view/id/180875/s/ao-khoac-nam-det-hoa-tiet-8tc18c003/category/99/#product-detail-tab-content-1\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">MÔ TẢ</a></p><div class=\"product-detail-tab-content active  \" detail-tab-id=\"product-detail-tab-content-1\" id=\"product-detail-tab-content-1\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Dáng thông thường (regular)</div><p><a href=\"https://canifa.com/catalog/product/view/id/180875/s/ao-khoac-nam-det-hoa-tiet-8tc18c003/category/99/#product-detail-tab-content-2\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">CHẤT LIỆU</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-2\" id=\"product-detail-tab-content-2\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">69%Cotton 16%Viscose 15%Nylon<br>Giặt máy ở chế độ nhẹ nhàng, nhiệt độ thông thường<br>Không sử dụng hóa chất tẩy có chứa Clo<br>Sấy khô ở nhiệt độ thấp 110°<br>Giặt với sản phẩm cùng màu<br>Nên phơi vắt ngang</div>', 49, NULL, 'e6ttYkq4sKTU8PP5nxlZlnwqZQvDJAyH5oivAP6l.jpeg', 1, 0, 20, '2020-07-19 10:43:15', '2020-07-28 09:44:31', NULL),
(4, 3, 7, 'ÁO PHÔNG NAM', 269000, '<p><a href=\"https://canifa.com/catalog/product/view/id/210887/s/ao-phong-nam-8ts20s017/category/99/#product-detail-tab-content-1\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">MÔ TẢ</a></p><div class=\"product-detail-tab-content active  \" detail-tab-id=\"product-detail-tab-content-1\" id=\"product-detail-tab-content-1\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Áo phông in hình thân trước, chất liệu cotton US.<br>Phom regular, cổ tròn, tay cộc.</div><p><a href=\"https://canifa.com/catalog/product/view/id/210887/s/ao-phong-nam-8ts20s017/category/99/#product-detail-tab-content-5\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">HOÀN CẢNH SỬ DỤNG</a></p><div class=\"product-detail-tab-content   \" detail-tab-id=\"product-detail-tab-content-5\" id=\"product-detail-tab-content-5\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Kiểu dáng năng động, thoải mái. Thích hợp mặc nhiều hoàn cảnh. Phù hợp mặc mùa hè. Kết hợp với quần soóc, jeans…với giày thể thao</div><p><a href=\"https://canifa.com/catalog/product/view/id/210887/s/ao-phong-nam-8ts20s017/category/99/#product-detail-tab-content-2\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">CHẤT LIỆU</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-2\" id=\"product-detail-tab-content-2\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">100% cotton.</div><p><a href=\"https://canifa.com/catalog/product/view/id/210887/s/ao-phong-nam-8ts20s017/category/99/#product-detail-tab-content-3\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">HƯỚNG DẪN SỬ DỤNG</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-3\" id=\"product-detail-tab-content-3\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Giặt máy ở chế độ nhẹ, nhiệt độ thường.<br>Không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mát.<br>Sấy thùng, chế độ nhẹ nhàng.<br>Là ở nhiệt độ trung bình 150 độ C.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí.</div><p><a href=\"https://canifa.com/catalog/product/view/id/210887/s/ao-phong-nam-8ts20s017/category/99/#product-detail-tab-content-4\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">THÔNG SỐ NGƯỜI MẪU</a></p><div class=\"product-detail-tab-content product-detail-tab--thong-so \" detail-tab-id=\"product-detail-tab-content-4\" id=\"product-detail-tab-content-4\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Chiều cao: 182cm<br>Cân nặng: 71kg<br>Mặc áo size: M</div>', 149, NULL, 'GajinjM5DV2f9gmSq5VUhvhu7usO4dTrhlPdhKl8.png', 1, 0, 13, '2020-07-19 10:44:13', '2020-07-22 10:44:10', NULL),
(5, 1, 11, 'QUẦN SÓOC NAM', 479000, '<p><a href=\"https://canifa.com/catalog/product/view/id/209906/s/quan-sooc-jeans-8bs20s020/category/99/#product-detail-tab-content-1\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">MÔ TẢ</a></p><div class=\"product-detail-tab-content active  \" detail-tab-id=\"product-detail-tab-content-1\" id=\"product-detail-tab-content-1\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Quần sóoc jeans cotton co giãn.<br>Phom ôm sát, dáng cộc.</div><p><a href=\"https://canifa.com/catalog/product/view/id/209906/s/quan-sooc-jeans-8bs20s020/category/99/#product-detail-tab-content-5\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">HOÀN CẢNH SỬ DỤNG</a></p><div class=\"product-detail-tab-content   \" detail-tab-id=\"product-detail-tab-content-5\" id=\"product-detail-tab-content-5\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Kiểu dáng năng động, thoải mái. Thích hợp mặc nhiều hoàn cảnh.<br>Phù hợp mặc quanh năm.<br>Kết hợp với áo phông…với giày thể thao</div><p><a href=\"https://canifa.com/catalog/product/view/id/209906/s/quan-sooc-jeans-8bs20s020/category/99/#product-detail-tab-content-2\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">CHẤT LIỆU</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-2\" id=\"product-detail-tab-content-2\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">98% cotton 2% spandex.</div><p><a href=\"https://canifa.com/catalog/product/view/id/209906/s/quan-sooc-jeans-8bs20s020/category/99/#product-detail-tab-content-3\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">HƯỚNG DẪN SỬ DỤNG</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-3\" id=\"product-detail-tab-content-3\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Giặt máy ở nhiệt độ thường.<br>Không sử dụng chất tẩy.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thấp.<br>Là ở nhiệt độ thấp 110 độ C.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí.</div><p><a href=\"https://canifa.com/catalog/product/view/id/209906/s/quan-sooc-jeans-8bs20s020/category/99/#product-detail-tab-content-4\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">THÔNG SỐ NGƯỜI MẪU</a></p><div class=\"product-detail-tab-content product-detail-tab--thong-so \" detail-tab-id=\"product-detail-tab-content-4\" id=\"product-detail-tab-content-4\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Chiều cao: 182cm<br>Cân nặng: 71kg<br>Mặc quần size: 30</div>', 196, NULL, 'XOevaoGMwBzmutzqytWMd2V6wH9u4bhqG4yrvS3f.jpeg', 1, 0, 3, '2020-07-19 10:45:28', '2020-07-28 10:38:58', NULL),
(6, 3, 11, 'QUẦN SHORTS NAM 2250', 449000, '<p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/99/#product-detail-tab-content-1\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">MÔ TẢ</a></p><div class=\"product-detail-tab-content active  \" detail-tab-id=\"product-detail-tab-content-1\" id=\"product-detail-tab-content-1\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Quần sóoc trơn, chất liệu cotton pha.<br>Phom regular, dáng lửng.<br>Túi chéo.</div><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/99/#product-detail-tab-content-5\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">HOÀN CẢNH SỬ DỤNG</a></p><div class=\"product-detail-tab-content   \" detail-tab-id=\"product-detail-tab-content-5\" id=\"product-detail-tab-content-5\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Đơn giản, thoải mái, phù hợp nhiều hoàn cảnh.<br>Thích hợp mặc quanh năm.<br>Có thể kết hợp với áo phông…với sandal, giày thể thao…</div><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/99/#product-detail-tab-content-2\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">CHẤT LIỆU</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-2\" id=\"product-detail-tab-content-2\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">55% linen 45% cotton.</div><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/99/#product-detail-tab-content-3\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">HƯỚNG DẪN SỬ DỤNG</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-3\" id=\"product-detail-tab-content-3\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Giặt máy ở nhiệt độ thường.<br>Không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mátSấy khô ở nhiệt độ thấp.<br>Là ở nhiệt độ trung bình 150 độ C.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí.</div><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/99/#product-detail-tab-content-4\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">THÔNG SỐ NGƯỜI MẪU</a></p><div class=\"product-detail-tab-content product-detail-tab--thong-so \" detail-tab-id=\"product-detail-tab-content-4\" id=\"product-detail-tab-content-4\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Chiều cao: 182cm<br>Cân nặng: 71kg<br>Mặc quần size: 30</div>', 150, NULL, 'LU6ln9P2RnCXE2x4EhsN3yVyBK1BIfu8tEhgOZ2T.jpeg', 1, 0, 0, '2020-07-19 10:46:27', '2020-07-19 10:46:27', NULL),
(7, NULL, 11, 'QUẦN SOÓC NAM 8BS20S002', 479000, '<p><a href=\"https://canifa.com/catalog/product/view/id/211226/s/quan-sooc-8bs20s002/category/581/#product-detail-tab-content-1\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">MÔ TẢ</a></p><div class=\"product-detail-tab-content active  \" detail-tab-id=\"product-detail-tab-content-1\" id=\"product-detail-tab-content-1\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Phom slimfit, dáng ngắn<br>Kiểu dáng năng động, thoải mái. Thích hợp mặc nhiều hoàn cảnh.<br>Phù hợp mặc quanh năm.<br>Kết hợp với áo phông, sơ mi…với giày thể thao...</div><p><a href=\"https://canifa.com/catalog/product/view/id/211226/s/quan-sooc-8bs20s002/category/581/#product-detail-tab-content-2\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">CHẤT LIỆU</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-2\" id=\"product-detail-tab-content-2\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">98% cotton 2% spandex.</div><p><a href=\"https://canifa.com/catalog/product/view/id/211226/s/quan-sooc-8bs20s002/category/581/#product-detail-tab-content-3\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">HƯỚNG DẪN SỬ DỤNG</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-3\" id=\"product-detail-tab-content-3\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Giặt máy ở nhiệt độ thường.<br>Không sử dụng hóa chất tẩy.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thấp.<br>Là ở nhiệt độ thấp 110 độ C<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí.</div><p><a href=\"https://canifa.com/catalog/product/view/id/211226/s/quan-sooc-8bs20s002/category/581/#product-detail-tab-content-4\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">THÔNG SỐ NGƯỜI MẪU</a></p><div class=\"product-detail-tab-content product-detail-tab--thong-so \" detail-tab-id=\"product-detail-tab-content-4\" id=\"product-detail-tab-content-4\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Chiều cao: 178cm<br>Cân nặng: 72kg<br>Mặc áo size: M</div>', 50, NULL, '5a7j3v5N4mc6uEOAM8HM3JfIkSxRjcOhLv2BFsyQ.jpeg', 1, 0, 2, '2020-07-19 10:47:27', '2020-08-21 21:18:54', NULL),
(8, 1, 7, 'Áo thun polo họa tiết form fitted - 10S20POL011', 350000, '<div class=\"title-bl\" style=\"margin: 0px; padding: 0px; font-family: Quicksand, sans-serif; color: rgb(5, 5, 5); font-size: 14px;\"><h2 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding: 0px; font-weight: 700; color: rgb(5, 5, 5); font-size: 14px;\">Mô tả</h2></div><div class=\"description-content\" style=\"margin: 0px; padding: 0px; font-family: Quicksand, sans-serif; color: rgb(5, 5, 5); font-size: 14px;\"><div class=\"description-productdetail\" style=\"margin: 0px; padding: 0px;\"><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\">Chất liệu: 53% cotton, 42% polyester,&nbsp;<span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;5% spandex&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:513,&quot;3&quot;:{&quot;1&quot;:0},&quot;12&quot;:0}\" style=\"margin: 0px; padding: 0px;\">5% spandex</span>.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\">Đặc tính: C<span style=\"margin: 0px; padding: 0px;\">ảm giác mềm mại, thoải mái, có độ thấm hút tốt, chống nhăn cao và tránh bám bụi.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\">Hướng dẫn sử dụng:</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\">- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\">- Không được dùng hóa chất tẩy.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\">- Hạn chế sử dụng máy sấy và ủi ở nhiệt độ thích hợp.</p></div></div>', 450, NULL, 'uHGV2blkVgPZBjUjz2uAlDvLqbDFvvw0ZetPArE8.png', 1, 0, 2, '2020-07-19 10:51:20', '2020-07-22 10:31:47', NULL),
(9, 2, 7, 'Áo thun nam ngắn tay Garena cổ sơ mi cao cấp ATN02 - Xám', 159000, '<p><span style=\"color: rgb(36, 36, 36); font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 14px;\">Áo thun nam ngắn tay Garena cổ sơ mi cao cấp ATN02 - Xám</span></p><p style=\"margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 1.5; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; color: rgb(36, 36, 36);\">Những chiếc áo thun luôn là sự lựa chọn hàng đầu đối với hầu hết mọi người bởi sự tiện lợi và tính thời trang của nó.</p><p style=\"margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 1.5; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; color: rgb(36, 36, 36);\">Áo GARENA được xem là chuẩn mực cho dòng áo ngắn tay có cổ.</p><p style=\"margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 1.5; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; color: rgb(36, 36, 36);\">Áo Thun Nam GARENA Thời Trang với kiểu dáng thiết kế đơn giản, không cầu kì, dễ dàng để bạn phối đồ trong nhiều hoàn cảnh. Logo thêu tỉ mỉ, tinh tế, bền đẹp.</p><p style=\"margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 1.5; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; color: rgb(36, 36, 36);\">- Chất liệu: Thun cá sấu co dãn, thấm hút mồ hôi cực tốt.</p><p style=\"margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 1.5; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; color: rgb(36, 36, 36);\">- Màu sắc: Xanh đen, Kem, Trắng, Đen, Xanh biển</p><p style=\"margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 1.5; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; color: rgb(36, 36, 36);\">- Kích cỡ: M (50-57 Kg), L (57-65 Kg), XL (65-75 Kg)</p><p style=\"margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 1.5; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; color: rgb(36, 36, 36);\">Nhanh tay sở hữu Áo Thun Nam GARENA Thời Trang bạn nhé!</p>', 196, NULL, 'cNxnXY9lq50qOAmdimoA17YgTSS03R7BvMLozujN.jpeg', 1, 0, 3, '2020-07-19 10:52:41', '2020-07-31 10:21:04', NULL),
(10, 2, 7, 'Áo thun nam tay ngắn, Áo thun nam tay ngắn - B04', 129000, '<p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">THÔNG TIN CHI TIẾT ÁO THUN NAM CỔ BẺ CAO CẤP:</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">* LÝ DO BẠN NÊN CHỌN 1 CHIẾC ÁO THUN NGAY BÂY GIỜ :</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">- Mùa hè năm nay là mùa hè nắng nóng kỉ lục.</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">- Bạn là người ưa hoạt động hoặc làm việc trong môi trường đòi hỏi phải di chuyển nhiều.</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">- Dễ phối đồ trong mọi hoàn cảnh : Đi làm - đi chơi - đi thể thao...</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">- Nổi bật vẻ trẻ trung, nam tính, mạnh mẽ của đàn ông.</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">* CHIẾC ÁO THUN NAM CỔ BẺ CAO CẤP CÓ GÌ ?</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">- Xuất xứ : Được thiết kế và gia công tại Việt Nam với những người thợ nổi tiếng khéo léo nhất nhì thế giới, mang đến một chiếc áo thun với những đường kim mũi chỉ chuẩn từ milimet.</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">- Chất liệu: Vải cotton co giãn 4 chiều - là loại vải thoáng mát và thấm hút mồ hôi tốt nhất lại co giãn đàn hồi cả 4 chiều nên đem lại cảm giác thoải mái khi mặc, khi hoạt động nhiều giờ. Bề mặt vải mềm, mịn không bai dão sau thời gian dài sử dụng.</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">- Form : Áo thun nam cotton co giãn 4 chiều được thiết kế với form dáng phù hợp với người châu Á.</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">- Giặt : Có thể giặt tay, hoặc giặt máy. Đảm bảo vài cotton không xù, không bay màu, không bai dão.</span></p>', 127, 'XS,S', 'o5BSYiV9u7MysBkXhQeadSKLx0hwOsFQOuJDdPBM.jpeg', 1, 0, 15, '2020-07-19 10:58:10', '2020-08-01 12:32:40', NULL),
(11, 2, 8, 'ÁO SƠ MI TRẮNG ASM1266', 245000, '<p><span style=\"color: rgb(51, 51, 51); font-family: Quicksand, Tahoma, Geneva, sans-serif; font-size: 12px;\">Áo sơ mi trắng với thiết kế đơn giản, trẻ trung tôn lên vẻ thanh lịch, trưởng thành của phái mạnh.</span><br></p>', 149, 'S,M,L', '8y4VDqUQisyuyimdaPxO95hs61cSZLghrac0bcgC.jpeg', 1, 0, 28, '2020-07-19 11:21:21', '2020-08-01 12:32:40', NULL),
(12, 3, 2, 'Sửa loại văn bản', 1500000, '<p>sấdasdasdas</p>', 50, 'S,M,L', 'vTPa4E2P8f0NdeDUQrRJteRILxPY9xcd860dA8En.jpeg', 1, 0, 1, '2020-07-31 11:34:04', '2020-07-31 11:34:04', NULL),
(14, 1, 3, 'Nguyên Văn Dược', 5000, '<p>dfgdfgdfg</p>', 48, '29', 'FThprZttPvZ3z66tcFAU6Xn7edV994Mh1Z6bxPIP.jpeg', 1, 0, 0, NULL, NULL, NULL),
(15, 2, 1, 'Hải sản nhập khẩu', 5000, '<p>sdfsdfs</p>', 49, '29,30', 'qUArNzgmWXfPnlZPct22djT1qAg9v6TPXPXlGMHV.png', 1, 0, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thongtincuahang`
--

CREATE TABLE `thongtincuahang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TieuDeKhongDau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiDung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayTao` timestamp NULL DEFAULT NULL,
  `NgayCN` timestamp NULL DEFAULT NULL,
  `NgayXoa` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thongtincuahang`
--

INSERT INTO `thongtincuahang` (`id`, `TieuDe`, `TieuDeKhongDau`, `NoiDung`, `NgayTao`, `NgayCN`, `NgayXoa`) VALUES
(1, 'Giới thiệu', 'gioi-thieu', '<h1 class=\"post-title\" style=\"margin: 20px 0px 10px; font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(68, 68, 68); font-size: 26px; letter-spacing: 0.5px;\">Giới thiệu 4MEN</h1><div class=\"space30\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px; margin-bottom: 30px !important;\"></div><div class=\"article-content\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px;\"><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(102, 102, 102); line-height: 22px; text-align: justify;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-family: arial, helvetica, sans-serif;\">Thương hiệu thời&nbsp;trang nam 4MEN được thành&nbsp;được thành lập từ tháng 3 năm 2010, là thương hiệu thời trang&nbsp;uy tín hàng đầu tại Việt Nam dành riêng cho phái mạnh.<br><br><span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\">SỨ MỆNH</span></span><br>Sáng tạo và trẻ trung là yếu tố tiên phong khiến cho các thiết kế của 4MEN luôn tạo sự&nbsp;thu hút và&nbsp;đón nhận nhiệt tình từ giới trẻ. Không&nbsp;chỉ thể hiện&nbsp;tinh tế và sang trọng đối với dòng sản phẩm Vestton, guu thời trang 4MEN còn khơi dậy chất trẻ trung, năng động và đa dạng trên các dòng&nbsp;sản phẩm hằng ngày từ Áo sơ mi, áo thun, áo khoác, jeans, kaki, quần tây, short,... Cho đến vô số các phụ kiện đi kèm, giúp phái mạnh có thêm nhiều lựa chọn và kết hợp phong phú trong&nbsp;phong cách thời trang của chính mình.&nbsp;<br><br><span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\">TẦM NHÌN</span></span><br>Sự nỗ lực&nbsp;và không ngại thay đổi đã tạo&nbsp;nên sự khác biệt kiên định cho các dòng sản phẩm thời trang của 4MEN. Mong muốn của chúng tôi không chỉ dừng lại ở câu chuyện&nbsp;sản xuất,&nbsp;cung cấp các sản phẩm thời trang mà còn hướng đến việc&nbsp;truyền cảm hứng thời trang, góp phần định hướng phong cách thời trang&nbsp;trẻ trung và phù hợp dành riêng cho phái mạnh.</span></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(102, 102, 102); line-height: 22px; text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"color: rgb(0, 0, 0);\">Tính đến thời điểm này (2020), thương hiệu thời trang nam 4MEN đã&nbsp;sở hữu đến 15&nbsp;chi nhánh được phân bổ rộng khắp&nbsp;khu vực Đông Nam Bộ và Tây Nam Bộ như: TP. Hồ Chí Minh, Vũng Tàu,&nbsp;Bình Dương, Biên hòa (Đồng Nai), An Giang, Cần Thơ. Bên cạnh việc phát triển các hệ thống cửa hàng, 4MEN còn chú trọng&nbsp;phát triển hệ thống chăm sóc và bán hàng online, đặt -&nbsp;giao hàng nhanh chóng&nbsp;đến tận tay người tiêu dùng trên toàn quốc thông qua website:&nbsp;</span></span><span style=\"font-weight: 700;\"><a href=\"https://4menshop.com/\" style=\"color: rgb(214, 100, 74); transition: all 0.4s ease 0s; outline: 0px;\">4menshop.com</a></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(102, 102, 102); line-height: 22px; text-align: justify;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\">VĂN HÓA 4MEN</span></span><br>Đến với 4MEN, Quý khách sẽ được trải nghiệm một giá trị mới, phong cách mới không chỉ đơn thuần là được tư vấn&nbsp;thời trang, chúng tôi mong muốn được chăm sóc và thấu hiểu khách hàng nhằm đảm bảo được sự hài lòng tuyệt đối cũng như sự&nbsp;tin tưởng&nbsp;gửi gắm&nbsp;từ qúy khách.<br>Với sự&nbsp;tận tâm và chuyên nghiệp của đội ngũ&nbsp;quản lý cũng như toàn thể nhân viên tại 4MEN, chúng tôi không ngừng&nbsp;nỗ lực và&nbsp;đề cao quyền lợi của khách hàng làm mục tiêu&nbsp;trên hết. Phục vụ khách hàng một cách nhiệt tình và chu đáo cũng là cách để 4MEN chúng tôi trau dồi, tích lũy văn hóa cho thương hiệu của mình ngày một thêm lớn mạnh.</span></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(102, 102, 102); line-height: 22px; text-align: justify;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-weight: 700;\">Chọn&nbsp;4MEN, bạn đang lựa chọn sự hoàn hảo cho điểm nhấn&nbsp;thời trang của chính mình!</span></span></span></p></div>', NULL, '2020-07-15 00:04:56', '2020-07-15 00:04:56'),
(2, 'Chính sách giao hàng', 'chinh-sach-giao-hang', '<h1 class=\"post-title\" style=\"margin: 20px 0px 10px; font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(68, 68, 68); font-size: 26px; letter-spacing: 0.5px;\">Chính sách giao hàng</h1><div class=\"space30\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px; margin-bottom: 30px !important;\"></div><div class=\"article-content\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px;\"><div><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: 700;\">4MEN&nbsp;</span>giao hàng tận nơi trên toàn quốc với chính sách giao hàng cụ thể như sau:</span></span></span><br>&nbsp;</div><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: 700;\">1. PHÍ GIAO HÀNG TẬN NHÀ:</span><br><span style=\"font-weight: 700;\">4MEN</span>&nbsp;áp dụng mức phí giao hàng theo bảng giá bên dưới:</span></span></span><br><br><img src=\"https://4menshop.com/images/2019/12/20191216_eca0c44558aed26248cc4f0c60d99b1a_1576485290.jpg\" alt=\"Chính sách giao hàng - 1\" style=\"border: 0px; max-width: 100%;\"><div>&nbsp;</div><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: 700;\">Khu vực TP.HCM:</span></span></span></span><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; padding: 0px;\"><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: 700;\"><em>Nội Thành:</em></span>&nbsp;Các quận: 1, 2, 3, 4, 5, 6, 7, 8, 10, 11, Bình Thạnh, Gò Vấp, Phú Nhuận, Tân Bình, Tân Phú</span></span></span></li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: 700;\"><em>Ngoại Thành:</em></span>&nbsp;Các quận - huyện: 9, 12, Bình Chánh, Bình Tân, Cần Giờ, Củ Chi, Hóc Môn, Nhà Bè, Thủ Đức</span></span></span>.<span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"></span></span></span></li></ul><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: 700;\">*</span></span></span></span><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\">&nbsp;Nội thành HCM áp dụng gói ship hẹn giờ theo yêu cầu khách hàng, do nhân viên của 4MEN trực tiếp giao hàng; Các khu vực còn lại sẽ ship bằng dịch vụ của công ty chuyển phát nhanh&nbsp;<em>Giao hàng nhanh</em>.<br><br><span style=\"font-weight: 700;\">2. THỜI GIAN GIAO HÀNG:</span></span></span></span><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; padding: 0px;\"><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\">Thời gian vận chuyển hàng thường mất từ 2 - 3 ngày làm việc (không tính thứ bảy, chủ nhật hay các ngày lễ tết).&nbsp;</span></span></span></li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\">Chỉ tiêu thời gian trên được tính đến trung tâm tỉnh, thành phố của khách hàng,&nbsp; Nếu khách hàng ở tại Huyện, Xã cộng thêm 1 – 2 ngày&nbsp;(tùy vào nơi đến).</span></span></span></li></ul><br><span style=\"font-size: 16px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">*</span></span></span><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\">&nbsp;Việc giao hàng được thực hiện trong giờ hành chánh.</span></span></span><br><span style=\"font-size: 16px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">*</span></span></span><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\">&nbsp;Khi nhận hàng quý khách cần xem lại mặt hàng vừa nhận, nếu mặt hàng vừa giao không đúng theo yêu cầu của quý khách, quý khách có thể từ chối nhận hàng.</span></span></span></div>', NULL, '2020-07-15 00:06:03', '2020-07-15 00:06:03'),
(3, 'Chính sách đổi hàng', 'chinh-sach-doi-hang', '<h1 class=\"post-title\" style=\"margin: 20px 0px 10px; font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(68, 68, 68); font-size: 26px; letter-spacing: 0.5px;\">Chính sách đổi hàng</h1><div class=\"space30\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px; margin-bottom: 30px !important;\"></div><div class=\"article-content\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 16px;\"><span style=\"font-weight: 700;\">ĐỐI VỚI KHÁCH MUA TẠI CỬA HÀNG:</span></span></span><br>- Thời gian: trong vòng 5 ngày<br>- Chính sách:&nbsp;Đổi sản phẩm có giá trị tương đương hoặc nhỏ hơn<br>- Cách thức: Đổi sản phẩm tại bất kỳ chi nhánh nào của hệ thống Thời trang nam 4MEN (sau 15h chiều).<br><br><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\"><span style=\"font-size: 16px;\">ĐỐI VỚI KHÁCH MUA HÀNG ONLINE</span></span></span><br>- Thời gian: trong vòng 15 ngày<br>- Chính sách:&nbsp;Đổi sản phẩm có giá trị tương đương hoặc lớn hơn<br>- Cách thức:<br>&nbsp; &nbsp; &nbsp;+ Quý khách vui lòng gọi về SĐT:&nbsp;<span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">0868.044.644</span></span>&nbsp;để thông báo<br>&nbsp; &nbsp; &nbsp;+&nbsp;Quý khách&nbsp;gửi hàng về địa chỉ:&nbsp;<span style=\"font-weight: 700;\"><span style=\"color: rgb(255, 0, 0);\">4MEN</span>&nbsp;-&nbsp;</span><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-weight: 700;\">458 Lê Văn Sỹ, P.14, Q.3, Tp.HCM</span></span><br>&nbsp;&nbsp; &nbsp;&nbsp;+ Sau khi nhận được sản phẩm, 4MEN sẽ kiểm tra và đổi lại sản phẩm khác cho quý khách<br><br><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\"><span style=\"font-size: 16px;\">ĐỐI VỚI SẢN PHẨM SALE OFF, VUI LÒNG KHÔNG ĐỔI TRẢ.</span></span></span><br><br><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">Lưu ý:</span></span>&nbsp;Sản phẩm có thể đổi khi đủ các điều kiện sau:<br>- &nbsp;Sản phẩm còn mới, còn đầy đủ tem, nhãn mác<br>- &nbsp;Còn hóa đơn mua hàng tại 4MEN<br>- &nbsp;Sản phẩm không bị dơ bẩn, hư hỏng, có mùi lạ hoặc có dấu hiệu đã qua giặt tẩy hoặc qua sử dụng<br>- &nbsp;Sản phẩm được xem là lỗi kĩ thuật<br>- 4MEN không chấp nhận yêu cầu trả hàng và hoàn tiền lại</div>', NULL, '2020-07-15 00:06:58', '2020-07-15 00:06:58'),
(4, 'Email', 'email', '<p>AllStore@gmail.com</p>', NULL, '2020-07-15 00:07:55', '2020-07-15 00:07:55'),
(5, 'Hotline', 'hotline', '<p>18001988</p>', NULL, '2020-07-15 00:08:26', '2020-07-15 00:08:26'),
(6, 'Hướng dẫn đặt hàng', 'huong-dan-dat-hang', '<h1 class=\"post-title\" style=\"margin: 20px 0px 10px; font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(68, 68, 68); font-size: 26px; letter-spacing: 0.5px;\">Hướng dẫn đặt hàng</h1><div class=\"space30\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px; margin-bottom: 30px !important;\"></div><div class=\"article-content\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px;\"><div style=\"text-align: justify;\"><div><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-weight: 700;\"><span style=\"font-size: 20px;\">HƯỚNG DẪN MUA HÀNG TẠI HỆ THỐNG CỬA HÀNG THỜI TRANG&nbsp;4MEN</span></span></span><br><span style=\"color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>4MEN - hệ thống&nbsp;thời trang nam uy tín hiện đang sở hữu đến 15 chi nhánh, phân bố&nbsp;rộng khắp khu vực Đông Nam Bộ và Tây Nam Bộ. Quý khách hàng khi đến với hệ thống cửa hàng của 4MEN có thể hoàn toàn tin tưởng và hài lòng, từ&nbsp;phong cách và chất lượng&nbsp;sản cho đến thái độ, quy cách của nhân viên luôn được kiểm&nbsp;soát một cách chặt chẽ, đảm bảo quý&nbsp;khách hàng phải được phục vụ một cách chu đáo, chất lượng nhất.<br>Ngoài việc&nbsp;tham khảo hoặc liên hệ với 4MEN&nbsp;để được giải đáp&nbsp;mọi vấn đề liên quan đến&nbsp;cửa hàng, sản phẩm,... Quý khách hàng có thể&nbsp;trực tiếp đến Store&nbsp;4MEN gần nhất để tham gia mua sắm và nhận thêm&nbsp;nhiều ưu đãi hấp dẫn khác.</span></div><div>&nbsp;<div><span style=\"font-size: 20px;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">HỆ THỐNG CỬA HÀNG THỜI TRANG 4MEN<br>4MEN KHU VỰC TP.HCM</span></span></span></div><div><div><div style=\"margin-left: -15px; margin-right: -15px;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; padding: 0px;\"><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Quận 3</span>&nbsp;<br>- Địa chỉ: 458 Lê Văn Sỹ, P.14, Q.3&nbsp;<br>- Điện thoại:&nbsp;<span style=\"color: rgb(34, 34, 34); font-family: &quot;segoe ui&quot;, segoeuipc, &quot;san francisco&quot;, &quot;helvetica neue&quot;, helvetica, &quot;lucida grande&quot;, roboto, ubuntu, tahoma, &quot;microsoft sans serif&quot;, tahoma, arial, sans-serif; font-size: 15px;\">0865413593</span></li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Quận 7</span>&nbsp;<br>- Địa chỉ: 384 Huỳnh Tấn Phát, P. Bình Thuận, Q.7&nbsp;<br>- Điện thoại: 0968 168 584</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Quận 9</span>&nbsp;<br>- Địa chỉ: 199 Đỗ Xuân Hợp, P. Phước Long B, Q.9<br>- Điện thoại: 02866 595 044</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Quận Gò Vấp</span><br>- Địa chỉ: 526 Quang Trung, P.11, Q. Gò Vấp&nbsp;<br>- Điện thoại: 0989 830 685</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Quận Bình Thạnh</span><br>- Địa chỉ:&nbsp;<span style=\"font-family: utmavo, tahoma, verdana, arial, sans-serif;\">50 Nguyễn Gia Trí (Đường D2 cũ), P.25, Q. Bình Thạnh</span><br>- Điện thoại:&nbsp;02866827164</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Tân Phú</span>&nbsp;<br>- Địa chỉ: 533 Âu Cơ, P. Phú Trung, Q. Tân Phú&nbsp;<br>- Điện thoại: 0286 286 9504</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Bình Tân</span>&nbsp;<br>- Địa chỉ: 69-71 Nguyễn Thị Tú, P. Bình Hưng Hòa B, Q. Bình Tân&nbsp;<br>- Điện thoại: 0286 2755 746</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Tân Bình</span>&nbsp;<br>- Địa chỉ: 798 Cách Mạng Tháng 8, P.5, Q. Tân Bình&nbsp;<br>- Điện thoại: 0975 215 734</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Hóc Môn</span>&nbsp;<br>- Địa chỉ: 122 Nguyễn Ảnh Thủ, Trung Chánh, H. Hóc Môn&nbsp;<br>- Điện thoại: 0383 261 004</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Thủ Đức</span>&nbsp;<br>- ĐC: 166 Võ Văn Ngân, P. Bình Thọ, Q. Thủ Đức&nbsp;<br>- Điện thoại: 0394 945 773</li></ul></div></div><div><h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"font-size: 20px;\"><span style=\"font-weight: 700;\">4MEN&nbsp;ĐÔNG NAM BỘ</span></span></h3><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; padding: 0px;\"><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Biên Hòa - Đồng Nai</span>&nbsp;<br>- Địa chỉ: 1333 Phạm Văn Thuận, P. Thống Nhất, Tp. Biên Hòa&nbsp;<br>- Điện thoại: 0251 655 7607</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Vũng Tàu</span>&nbsp;<br>- Địa chỉ: 344 Trương Công Định, P.8, TP. Vũng Tàu&nbsp;<br>- Điện thoại: 0254 6545 009<span style=\"font-weight: 700;\">&nbsp;</span></li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh&nbsp;</span><span style=\"font-weight: 700;\">Thủ Dầu Một - Bình Dương</span><br>- Địa chỉ:&nbsp;<span style=\"font-family: utmavo, tahoma, verdana, arial, sans-serif;\">103 đường Yersin , P. Phú Cường, Tp. Thủ Dầu Một, Bình Dương</span><br>- Điện thoại:&nbsp;<a href=\"tel:0365836367\" rel=\"nofollow\" style=\"color: rgb(187, 187, 187); transition: all 0.4s ease 0s; outline: 0px;\"><span style=\"color: rgb(0, 0, 0);\">0365 836 367</span></a></li></ul><h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"font-size: 20px;\"><span style=\"font-weight: 700;\">4MEN TÂY NAM BỘ</span></span></h3><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; padding: 0px;\"><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Long Xuyên - An Giang</span>&nbsp;<br>- Địa chỉ: 904C Hà Hoàng Hổ, P. Mỹ Xuyên, Tp. Long Xuyên&nbsp;<br>- Điện thoại: 0865 738 031</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Cần Thơ</span><br>- Địa chỉ:&nbsp;<span style=\"font-family: utmavo, tahoma, verdana, arial, sans-serif;\">73 Nguyễn Việt Hồng, P. An Phú, Q. Ninh Kiều, Cần Thơ</span><br>- Điện thoại:&nbsp;<a href=\"tel:+84989662315\" rel=\"nofollow\" style=\"color: rgb(187, 187, 187); transition: all 0.4s ease 0s; outline: 0px;\"><span style=\"color: rgb(0, 0, 0);\">0989 662 315</span></a></li></ul></div></div></div><div><span style=\"color: rgb(178, 34, 34);\"><span style=\"font-size: 16px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span><br><span style=\"font-weight: 700;\"><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-size: 20px;\">HƯỚNG DẪN MUA HÀNG QUA ĐIỆN THOẠI</span></span></span><br>&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(0, 0, 0);\">&nbsp;&nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Quý khách vui lòng gọi vào số:</span>&nbsp;<span style=\"font-size: 18px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">0868.044.644&nbsp;</span></span></span><span style=\"font-size: 16px;\"><span style=\"font-size: 14px;\"><span style=\"color: rgb(0, 0, 0);\">hoặc</span></span></span><span style=\"font-weight: 700;\"><span style=\"font-size: 16px;\">&nbsp;<span style=\"font-size: 18px;\"><span style=\"color: rgb(255, 0, 0);\">0868.444.644</span></span></span></span>&nbsp;<span style=\"color: rgb(0, 0, 0);\">để cung cấp các thông tin: Mã hàng, size, số lượng, tên, số điện thoại&nbsp;và địa chỉ người nhận hàng. Nhân viên tổng đài 4MEN sẽ tư vấn cách thức đặt hàng dễ dàng và nhanh nhất cho quý khách.</span></div><div>&nbsp;</div><div><span style=\"font-weight: 700;\"><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-size: 20px;\">HƯỚNG DẪN MUA HÀNG QUA WEBSITE 4MEN</span></span></span><br><br><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">Để mua hàng online qua website 4MEN, quý khách vui lòng làm theo các bước hướng dẫn sau:<br>Bước đầu tiên:</span>&nbsp;Tại sản phẩm cần mua,&nbsp;<span style=\"font-weight: 700;\">chọn size, chọn số lượng</span>, sau đó:</span><br><span style=\"color: rgb(0, 0, 0);\">- Nhấp&nbsp;vào</span>&nbsp;<span style=\"color: rgb(0, 0, 0);\">ô</span>&nbsp;<span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">MUA NGAY</span></span>&nbsp;,&nbsp;<span style=\"color: rgb(0, 0, 0);\">tiếp tục chuyển qua bước 1</span></div><div style=\"text-align: center;\"><br><img src=\"http://4menshop.com/images/2017/12/20171206_403db50aded604ff243f8b2750b1567f_1512550567.jpg\" alt=\"Hướng dẫn đặt hàng - 1\" style=\"border: 0px; max-width: 100%;\"></div><div><br><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">BƯỚC&nbsp;1: Nhập&nbsp;thông tin cần thiết</span></span><br><span style=\"color: rgb(0, 0, 0);\">- Kiểm tra lại thông tin sản phẩm đặt hàng &nbsp;</span><span style=\"color: rgb(0, 0, 0);\">(tên sản phẩm, số lượng, size,&nbsp;</span><span style=\"color: rgb(0, 0, 0);\">đơn giá)&nbsp;tại mục&nbsp;</span><span style=\"font-size: 18px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">1</span></span></span>&nbsp;<span style=\"color: rgb(0, 0, 0);\">ở cột&nbsp;<span style=\"font-weight: 700;\">\"Giỏ hàng của bạn\"</span>&nbsp;bên phải</span><br><span style=\"color: rgb(0, 0, 0);\">-&nbsp;Nhập thông tin liên hệ đầy đủ của người mua tại mục</span>&nbsp;&nbsp;<span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\"><span style=\"color: rgb(255, 0, 0);\">2</span></span></span><br><span style=\"color: rgb(0, 0, 0);\">- Nhập địa chỉ giao hàng tại mục</span>&nbsp;&nbsp;<span style=\"font-size: 18px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">3</span></span></span><br><span style=\"color: rgb(0, 0, 0);\">- Q</span><span style=\"color: rgb(0, 0, 0);\">uý khách có thể theo dõi phí vận chuyển (PVC)&nbsp;&nbsp;</span><span style=\"color: rgb(0, 0, 0);\">phát sinh và tổng tiền thanh toán&nbsp;tại mục&nbsp;</span><span style=\"font-size: 24px;\"><span style=\"color: rgb(255, 0, 0);\">*</span></span>&nbsp;<span style=\"color: rgb(0, 0, 0);\">ở cột&nbsp;<span style=\"font-weight: 700;\">\"Thông tin đơn hàng\"</span>&nbsp;bên phải.</span><br><span style=\"color: rgb(0, 0, 0);\">- Nhấn chọn&nbsp;</span><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">GỬI ĐƠN HÀNG</span></span><span style=\"font-weight: 700;\">&nbsp;</span><span style=\"color: rgb(0, 0, 0);\">tại mục</span>&nbsp;<span style=\"font-size: 18px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">4&nbsp;</span></span></span><span style=\"color: rgb(0, 0, 0);\">, hoặc mục</span><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">&nbsp;</span></span><span style=\"font-size: 22px;\"><span style=\"font-weight: 700;\"><span style=\"color: rgb(255, 0, 0);\">*</span></span></span></div><div style=\"text-align: center;\"><br><img src=\"http://4menshop.com/images/2017/12/20171206_3fc4e234e3a6fc3acbc77a93a5f3c7a4_1512550567.jpg\" alt=\"Hướng dẫn đặt hàng - 2\" style=\"border: 0px; max-width: 100%;\"></div><div><br><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">BƯỚC&nbsp;2: Nhận thông báo&nbsp;gửi đơn hàng</span><br>- Quý khách sau khi nhấn nút GỬI ĐƠN HÀNG sẽ nhận được thông báo&nbsp;đặt hàng thành công, để mua thêm sản phẩm vui lòng nhấn chọn</span>&nbsp;<span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">TIẾP TỤC THAM GIA MUA HÀNG</span></span><br><br><img src=\"http://4menshop.com/images/2015/07/20150717_f10dec5cab127665f8be86bc0524f146_1437129867.jpg\" alt=\"Hướng dẫn đặt hàng - 3\" style=\"border: 0px; max-width: 100%;\"><br><br><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">Sau khi nhận được đơn hàng của quý khách, 4MEN sẽ phản hồi lại trong vòng 24h để xác nhận đơn hàng, hình thức thanh toán, giao hàng, chuyển hàng hoặc thông báo các trường hợp đơn hàng gặp sự cố.</span></span><br>&nbsp;</div><div style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0);\">Cảm ơn quý khách đã tin tưởng và lựa chọn&nbsp;THƯƠNG HIỆU THỜI TRANG NAM&nbsp;4MEN<br>Chúc quý khách có những giây phút mua sắm vui vẻ.</span></div></div></div>', NULL, '2020-07-15 00:09:39', '2020-07-15 00:09:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`id_DH`),
  ADD KEY `order_details_product_id_foreign` (`id_SP`);

--
-- Indexes for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_detail_coupon_id_foreign` (`id_PN`),
  ADD KEY `coupon_detail_product_id_foreign` (`id_SP`);

--
-- Indexes for table `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_products_parent_id_foreign` (`id_DMSPCha`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`id_ND`),
  ADD KEY `orders_employee_id_foreign` (`id_NV`);

--
-- Indexes for table `guitang`
--
ALTER TABLE `guitang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_DH` (`id_DH`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_employee_id_foreign` (`id_NV`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_supplier_id_foreign` (`id_NCC`),
  ADD KEY `products_category_product_id_foreign` (`id_DMSP`);

--
-- Indexes for table `thongtincuahang`
--
ALTER TABLE `thongtincuahang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `informations_slug_unique` (`TieuDeKhongDau`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guitang`
--
ALTER TABLE `guitang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `thongtincuahang`
--
ALTER TABLE `thongtincuahang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`id_DH`) REFERENCES `donhang` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`id_SP`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `coupon_detail_coupon_id_foreign` FOREIGN KEY (`id_PN`) REFERENCES `phieunhap` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_detail_product_id_foreign` FOREIGN KEY (`id_SP`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  ADD CONSTRAINT `category_products_parent_id_foreign` FOREIGN KEY (`id_DMSPCha`) REFERENCES `danhmucsanpham` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `orders_employee_id_foreign` FOREIGN KEY (`id_NV`) REFERENCES `nguoidung` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`id_ND`) REFERENCES `nguoidung` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guitang`
--
ALTER TABLE `guitang`
  ADD CONSTRAINT `guitang_ibfk_1` FOREIGN KEY (`id_DH`) REFERENCES `donhang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `coupons_employee_id_foreign` FOREIGN KEY (`id_NV`) REFERENCES `nguoidung` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `products_category_product_id_foreign` FOREIGN KEY (`id_DMSP`) REFERENCES `danhmucsanpham` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`id_NCC`) REFERENCES `nhacungcap` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
