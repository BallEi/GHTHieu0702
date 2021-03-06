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
(1, '??o', NULL, 1, '2020-07-14 21:45:53', '2020-07-14 21:48:50', NULL),
(2, 'Qu???n', NULL, 1, '2020-07-14 21:46:18', '2020-07-14 21:48:57', NULL),
(3, 'M??', NULL, 0, '2020-07-14 21:46:50', '2020-07-31 10:32:41', '2020-07-14 21:48:04'),
(4, 'V?? da', NULL, 1, '2020-07-14 21:47:46', '2020-07-14 21:49:14', NULL),
(5, 'M?? n??n', NULL, 1, '2020-07-14 21:47:58', '2020-07-14 21:47:58', NULL),
(6, 'Gi??y d??p', NULL, 1, '2020-07-14 21:48:31', '2020-07-14 21:49:06', NULL),
(7, '??o thun nam', 1, 1, '2020-07-14 23:53:39', '2020-07-14 23:53:39', NULL),
(8, '??o s?? mi nam', 1, 1, '2020-07-14 23:53:59', '2020-07-14 23:53:59', NULL),
(9, '??o kho??c nam', 1, 1, '2020-07-14 23:54:31', '2020-07-14 23:54:31', NULL),
(10, 'Qu???n jean nam', 2, 1, '2020-07-14 23:55:10', '2020-07-14 23:55:10', NULL),
(11, 'Qu???n short nam', 2, 1, '2020-07-14 23:55:27', '2020-07-14 23:55:27', NULL),
(12, 'V?? da ngang', 4, 1, '2020-07-14 23:55:56', '2020-07-14 23:55:56', NULL),
(13, 'V?? da ?????ng', 4, 1, '2020-07-14 23:56:06', '2020-07-14 23:56:06', NULL),
(14, 'Gi??y nam', 6, 1, '2020-07-14 23:56:58', '2020-07-14 23:56:58', NULL),
(15, 'D??p nam', 6, 1, '2020-07-14 23:57:18', '2020-07-14 23:57:18', NULL);

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
(2, 'Nh??n vi??n kho', 'C???u Gi???y, H?? N???i', '034234223', 2, 0, 'kho1@gmail.com', '$2y$10$tmji938m6OkkIwpmkuG8J.F3WmY5csHmhJ/a5n1bVbWoKj0G3wFCS', 'Rj3VMTP5khfV7ZnEytmPaVBeCl1vBPEVzJeDqgI1LC2TwwDQUNHaLeYzCfHG', '2020-07-15 00:01:22', '2020-07-28 09:46:25', NULL),
(3, 'Giao h??ng 1', 'H?? ????ng, H?? N???i', '023234444', 3, 0, 'shiper1@gmail.com', '$2y$10$TR9tIlLE463k/PmGgFUqjuOejFmksnfMtetCf9619SqsALfOhjePu', NULL, '2020-07-15 00:02:12', '2020-07-28 09:46:52', NULL),
(7, 'NGuy???n V??n D?????csdfsdfsd', 'H?? N???i', '0928817225438', 0, 0, 'dsdfsdfsuocnvoit@gmail.com', '$2y$10$AYv.Z9QQ3cuxmoeUCXq5AemaTEq8Z642i63Z/wyIrheIMvwdCYHGS', NULL, '2020-07-28 09:43:09', '2020-07-29 10:25:45', NULL),
(8, 'Giao h??ng 2', 'Kim M??', '19001907', 3, 0, 'shiper2@gmail.com', '$2y$10$rbmjM.QWtb.Fk5bHuVx1GeeXLt3r5M.GCMG/1u2uptBzm/QGzp50.', '6zZqccfqOdO8WTim0p54OL40UVROfdJ9wUJhjet5OYD470FzpoIs4u4j2YOS', '2020-07-28 09:45:18', '2020-07-28 11:28:39', NULL),
(9, 'Giao h??ng  3', 'th??i b??nh', '1659020898', 2, 0, 'shiper3@gmail.com', '$2y$10$f1PLZwQ90cw6WK67XpSoou7rCTEpnB7m4/Fcrw2woHxgYXj6qfGZ.', NULL, '2020-07-28 09:45:59', '2020-07-28 09:45:59', NULL),
(10, 'D????ng trung Ki??n', 'H?? T??y', '0928817228', 0, 0, 'duongtrungkien@gmail.com', '$2y$10$A1Kh4LSO27PR2mCq8D4sIOMvm.7Ivh/wx5BqvUvhQu1Yc5cgnGk4K', NULL, '2020-07-28 10:38:37', NULL, NULL),
(14, 'Nguy???n V??n D????ng', 'th??i b??nh', '1659020898', 0, 0, 'duongnh@gmail.com', '$2y$10$FfPFd1ql26vslznbaEX7m.KHWK2fqTBeQoXDtVEDYRBKecjkZI1.O', 'Pl1AifHzhJ5ozdwxPpzidO3O3QQtLpbnoUr5chePf7l1VqIJOx4lhpBBAuNF', '2020-09-19 19:40:27', NULL, NULL);

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
(1, 3, 1, '??O POLO NAM', 399000, '<p><a href=\"https://canifa.com/catalog/product/view/id/211634/s/ao-polo-nam-8tp20s010/category/99/#product-detail-tab-content-1\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">M?? T???</a></p><div class=\"product-detail-tab-content active  \" detail-tab-id=\"product-detail-tab-content-1\" id=\"product-detail-tab-content-1\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">??o polo tr??n ch???t li???u polyester.<br>Phom regular, c??? polo, tay c???c.<br>Ki???u d??ng ????n gi???n, tho???i m??i, ph?? h???p nhi???u ho??n c???nh.<br>Th??ch h???p m???c quanh n??m.<br>K???t h???p v???i qu???n s??oc, jeans, khaki???v???i gi??y th??? thao, sandal.</div><p><a href=\"https://canifa.com/catalog/product/view/id/211634/s/ao-polo-nam-8tp20s010/category/99/#product-detail-tab-content-2\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">CH???T LI???U</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-2\" id=\"product-detail-tab-content-2\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">100% polyester.</div><p><a href=\"https://canifa.com/catalog/product/view/id/211634/s/ao-polo-nam-8tp20s010/category/99/#product-detail-tab-content-3\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">H?????NG D???N S??? D???NG</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-3\" id=\"product-detail-tab-content-3\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Gi???t m??y ??? ch??? ????? nh???, nhi???t ????? th?????ng.<br>Kh??ng s??? d???ng h??a ch???t t???y.<br>Ph??i trong b??ng m??t<br>S???y kh?? ??? nhi???t ????? th???p.<br>L?? ??? nhi???t ????? th???p 110 ????? C.<br>Gi???t v???i s???n ph???m c??ng m??u.<br>Kh??ng l?? l??n chi ti???t trang tr??.</div>', 50, NULL, 'tyyfaWBP8icMRLziC2Bh5sPWw4dOsmWwmDOGjP9U.jpeg', 1, 0, 4, '2020-07-19 09:35:15', '2020-07-19 11:09:45', NULL),
(2, 2, 9, '??O KHO??C NAM', 899000, '<div class=\"product-name\" style=\"color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\"><a href=\"https://canifa.com/catalog/product/view/id/210919/s/ao-khoac-jeans-nam-8ot20s003/category/99/#product-detail-tab-content-1\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; background-color: rgb(255, 255, 255);\">M?? T???</a><div class=\"product-detail-tab-content active  \" detail-tab-id=\"product-detail-tab-content-1\" id=\"product-detail-tab-content-1\" style=\"line-height: 19px; margin-bottom: 30px;\">??o kho??c nam</div><a href=\"https://canifa.com/catalog/product/view/id/210919/s/ao-khoac-jeans-nam-8ot20s003/category/99/#product-detail-tab-content-2\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; background-color: rgb(255, 255, 255);\">CH???T LI???U</a><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-2\" id=\"product-detail-tab-content-2\" style=\"line-height: 19px; margin-bottom: 30px;\">V???i jeans</div><a href=\"https://canifa.com/catalog/product/view/id/210919/s/ao-khoac-jeans-nam-8ot20s003/category/99/#product-detail-tab-content-4\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; background-color: rgb(255, 255, 255);\">TH??NG S??? NG?????I M???U</a><div class=\"product-detail-tab-content product-detail-tab--thong-so \" detail-tab-id=\"product-detail-tab-content-4\" id=\"product-detail-tab-content-4\" style=\"line-height: 19px; margin-bottom: 30px;\">Chi???u cao: 182cm<br>C??n n???ng: 71kg<br>M???c ??o size: M</div></div>', 93, NULL, '8HmF0vy8THYuJytcLJ3Ntz2WujwMpwAmclyXnw8h.jpeg', 1, 0, 24, '2020-07-19 10:42:27', '2020-08-01 11:09:12', NULL),
(3, 4, 9, '??O KHO??C NAM D??? D???T HO???T TI???T', 299000, '<p><a href=\"https://canifa.com/catalog/product/view/id/180875/s/ao-khoac-nam-det-hoa-tiet-8tc18c003/category/99/#product-detail-tab-content-1\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">M?? T???</a></p><div class=\"product-detail-tab-content active  \" detail-tab-id=\"product-detail-tab-content-1\" id=\"product-detail-tab-content-1\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">D??ng th??ng th?????ng (regular)</div><p><a href=\"https://canifa.com/catalog/product/view/id/180875/s/ao-khoac-nam-det-hoa-tiet-8tc18c003/category/99/#product-detail-tab-content-2\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">CH???T LI???U</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-2\" id=\"product-detail-tab-content-2\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">69%Cotton 16%Viscose 15%Nylon<br>Gi???t m??y ??? ch??? ????? nh??? nh??ng, nhi???t ????? th??ng th?????ng<br>Kh??ng s??? d???ng h??a ch???t t???y c?? ch???a Clo<br>S???y kh?? ??? nhi???t ????? th???p 110??<br>Gi???t v???i s???n ph???m c??ng m??u<br>N??n ph??i v???t ngang</div>', 49, NULL, 'e6ttYkq4sKTU8PP5nxlZlnwqZQvDJAyH5oivAP6l.jpeg', 1, 0, 20, '2020-07-19 10:43:15', '2020-07-28 09:44:31', NULL),
(4, 3, 7, '??O PH??NG NAM', 269000, '<p><a href=\"https://canifa.com/catalog/product/view/id/210887/s/ao-phong-nam-8ts20s017/category/99/#product-detail-tab-content-1\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">M?? T???</a></p><div class=\"product-detail-tab-content active  \" detail-tab-id=\"product-detail-tab-content-1\" id=\"product-detail-tab-content-1\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">??o ph??ng in h??nh th??n tr?????c, ch???t li???u cotton US.<br>Phom regular, c??? tr??n, tay c???c.</div><p><a href=\"https://canifa.com/catalog/product/view/id/210887/s/ao-phong-nam-8ts20s017/category/99/#product-detail-tab-content-5\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">HO??N C???NH S??? D???NG</a></p><div class=\"product-detail-tab-content   \" detail-tab-id=\"product-detail-tab-content-5\" id=\"product-detail-tab-content-5\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Ki???u d??ng n??ng ?????ng, tho???i m??i. Th??ch h???p m???c nhi???u ho??n c???nh. Ph?? h???p m???c m??a h??. K???t h???p v???i qu???n so??c, jeans???v???i gi??y th??? thao</div><p><a href=\"https://canifa.com/catalog/product/view/id/210887/s/ao-phong-nam-8ts20s017/category/99/#product-detail-tab-content-2\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">CH???T LI???U</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-2\" id=\"product-detail-tab-content-2\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">100% cotton.</div><p><a href=\"https://canifa.com/catalog/product/view/id/210887/s/ao-phong-nam-8ts20s017/category/99/#product-detail-tab-content-3\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">H?????NG D???N S??? D???NG</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-3\" id=\"product-detail-tab-content-3\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Gi???t m??y ??? ch??? ????? nh???, nhi???t ????? th?????ng.<br>Kh??ng s??? d???ng h??a ch???t t???y c?? ch???a clo.<br>Ph??i trong b??ng m??t.<br>S???y th??ng, ch??? ????? nh??? nh??ng.<br>L?? ??? nhi???t ????? trung b??nh 150 ????? C.<br>Gi???t v???i s???n ph???m c??ng m??u.<br>Kh??ng l?? l??n chi ti???t trang tr??.</div><p><a href=\"https://canifa.com/catalog/product/view/id/210887/s/ao-phong-nam-8ts20s017/category/99/#product-detail-tab-content-4\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">TH??NG S??? NG?????I M???U</a></p><div class=\"product-detail-tab-content product-detail-tab--thong-so \" detail-tab-id=\"product-detail-tab-content-4\" id=\"product-detail-tab-content-4\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Chi???u cao: 182cm<br>C??n n???ng: 71kg<br>M???c ??o size: M</div>', 149, NULL, 'GajinjM5DV2f9gmSq5VUhvhu7usO4dTrhlPdhKl8.png', 1, 0, 13, '2020-07-19 10:44:13', '2020-07-22 10:44:10', NULL),
(5, 1, 11, 'QU???N S??OC NAM', 479000, '<p><a href=\"https://canifa.com/catalog/product/view/id/209906/s/quan-sooc-jeans-8bs20s020/category/99/#product-detail-tab-content-1\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">M?? T???</a></p><div class=\"product-detail-tab-content active  \" detail-tab-id=\"product-detail-tab-content-1\" id=\"product-detail-tab-content-1\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Qu???n s??oc jeans cotton co gi??n.<br>Phom ??m s??t, d??ng c???c.</div><p><a href=\"https://canifa.com/catalog/product/view/id/209906/s/quan-sooc-jeans-8bs20s020/category/99/#product-detail-tab-content-5\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">HO??N C???NH S??? D???NG</a></p><div class=\"product-detail-tab-content   \" detail-tab-id=\"product-detail-tab-content-5\" id=\"product-detail-tab-content-5\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Ki???u d??ng n??ng ?????ng, tho???i m??i. Th??ch h???p m???c nhi???u ho??n c???nh.<br>Ph?? h???p m???c quanh n??m.<br>K???t h???p v???i ??o ph??ng???v???i gi??y th??? thao</div><p><a href=\"https://canifa.com/catalog/product/view/id/209906/s/quan-sooc-jeans-8bs20s020/category/99/#product-detail-tab-content-2\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">CH???T LI???U</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-2\" id=\"product-detail-tab-content-2\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">98% cotton 2% spandex.</div><p><a href=\"https://canifa.com/catalog/product/view/id/209906/s/quan-sooc-jeans-8bs20s020/category/99/#product-detail-tab-content-3\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">H?????NG D???N S??? D???NG</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-3\" id=\"product-detail-tab-content-3\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Gi???t m??y ??? nhi???t ????? th?????ng.<br>Kh??ng s??? d???ng ch???t t???y.<br>Ph??i trong b??ng m??t.<br>S???y kh?? ??? nhi???t ????? th???p.<br>L?? ??? nhi???t ????? th???p 110 ????? C.<br>Gi???t v???i s???n ph???m c??ng m??u.<br>Kh??ng l?? l??n chi ti???t trang tr??.</div><p><a href=\"https://canifa.com/catalog/product/view/id/209906/s/quan-sooc-jeans-8bs20s020/category/99/#product-detail-tab-content-4\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">TH??NG S??? NG?????I M???U</a></p><div class=\"product-detail-tab-content product-detail-tab--thong-so \" detail-tab-id=\"product-detail-tab-content-4\" id=\"product-detail-tab-content-4\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Chi???u cao: 182cm<br>C??n n???ng: 71kg<br>M???c qu???n size: 30</div>', 196, NULL, 'XOevaoGMwBzmutzqytWMd2V6wH9u4bhqG4yrvS3f.jpeg', 1, 0, 3, '2020-07-19 10:45:28', '2020-07-28 10:38:58', NULL),
(6, 3, 11, 'QU???N SHORTS NAM 2250', 449000, '<p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/99/#product-detail-tab-content-1\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">M?? T???</a></p><div class=\"product-detail-tab-content active  \" detail-tab-id=\"product-detail-tab-content-1\" id=\"product-detail-tab-content-1\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Qu???n s??oc tr??n, ch???t li???u cotton pha.<br>Phom regular, d??ng l???ng.<br>T??i ch??o.</div><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/99/#product-detail-tab-content-5\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">HO??N C???NH S??? D???NG</a></p><div class=\"product-detail-tab-content   \" detail-tab-id=\"product-detail-tab-content-5\" id=\"product-detail-tab-content-5\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">????n gi???n, tho???i m??i, ph?? h???p nhi???u ho??n c???nh.<br>Th??ch h???p m???c quanh n??m.<br>C?? th??? k???t h???p v???i ??o ph??ng???v???i sandal, gi??y th??? thao???</div><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/99/#product-detail-tab-content-2\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">CH???T LI???U</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-2\" id=\"product-detail-tab-content-2\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">55% linen 45% cotton.</div><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/99/#product-detail-tab-content-3\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">H?????NG D???N S??? D???NG</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-3\" id=\"product-detail-tab-content-3\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Gi???t m??y ??? nhi???t ????? th?????ng.<br>Kh??ng s??? d???ng h??a ch???t t???y c?? ch???a clo.<br>Ph??i trong b??ng m??tS???y kh?? ??? nhi???t ????? th???p.<br>L?? ??? nhi???t ????? trung b??nh 150 ????? C.<br>Gi???t v???i s???n ph???m c??ng m??u.<br>Kh??ng l?? l??n chi ti???t trang tr??.</div><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/99/#product-detail-tab-content-4\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">TH??NG S??? NG?????I M???U</a></p><div class=\"product-detail-tab-content product-detail-tab--thong-so \" detail-tab-id=\"product-detail-tab-content-4\" id=\"product-detail-tab-content-4\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Chi???u cao: 182cm<br>C??n n???ng: 71kg<br>M???c qu???n size: 30</div>', 150, NULL, 'LU6ln9P2RnCXE2x4EhsN3yVyBK1BIfu8tEhgOZ2T.jpeg', 1, 0, 0, '2020-07-19 10:46:27', '2020-07-19 10:46:27', NULL),
(7, NULL, 11, 'QU???N SO??C NAM 8BS20S002', 479000, '<p><a href=\"https://canifa.com/catalog/product/view/id/211226/s/quan-sooc-8bs20s002/category/581/#product-detail-tab-content-1\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">M?? T???</a></p><div class=\"product-detail-tab-content active  \" detail-tab-id=\"product-detail-tab-content-1\" id=\"product-detail-tab-content-1\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Phom slimfit, d??ng ng???n<br>Ki???u d??ng n??ng ?????ng, tho???i m??i. Th??ch h???p m???c nhi???u ho??n c???nh.<br>Ph?? h???p m???c quanh n??m.<br>K???t h???p v???i ??o ph??ng, s?? mi???v???i gi??y th??? thao...</div><p><a href=\"https://canifa.com/catalog/product/view/id/211226/s/quan-sooc-8bs20s002/category/581/#product-detail-tab-content-2\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">CH???T LI???U</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-2\" id=\"product-detail-tab-content-2\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">98% cotton 2% spandex.</div><p><a href=\"https://canifa.com/catalog/product/view/id/211226/s/quan-sooc-8bs20s002/category/581/#product-detail-tab-content-3\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">H?????NG D???N S??? D???NG</a></p><div class=\"product-detail-tab-content \" detail-tab-id=\"product-detail-tab-content-3\" id=\"product-detail-tab-content-3\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Gi???t m??y ??? nhi???t ????? th?????ng.<br>Kh??ng s??? d???ng h??a ch???t t???y.<br>Ph??i trong b??ng m??t.<br>S???y kh?? ??? nhi???t ????? th???p.<br>L?? ??? nhi???t ????? th???p 110 ????? C<br>Gi???t v???i s???n ph???m c??ng m??u.<br>Kh??ng l?? l??n chi ti???t trang tr??.</div><p><a href=\"https://canifa.com/catalog/product/view/id/211226/s/quan-sooc-8bs20s002/category/581/#product-detail-tab-content-4\" class=\"product-detail-tab-label\" style=\"color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\">TH??NG S??? NG?????I M???U</a></p><div class=\"product-detail-tab-content product-detail-tab--thong-so \" detail-tab-id=\"product-detail-tab-content-4\" id=\"product-detail-tab-content-4\" style=\"line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;\">Chi???u cao: 178cm<br>C??n n???ng: 72kg<br>M???c ??o size: M</div>', 50, NULL, '5a7j3v5N4mc6uEOAM8HM3JfIkSxRjcOhLv2BFsyQ.jpeg', 1, 0, 2, '2020-07-19 10:47:27', '2020-08-21 21:18:54', NULL),
(8, 1, 7, '??o thun polo h???a ti???t form fitted - 10S20POL011', 350000, '<div class=\"title-bl\" style=\"margin: 0px; padding: 0px; font-family: Quicksand, sans-serif; color: rgb(5, 5, 5); font-size: 14px;\"><h2 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding: 0px; font-weight: 700; color: rgb(5, 5, 5); font-size: 14px;\">M?? t???</h2></div><div class=\"description-content\" style=\"margin: 0px; padding: 0px; font-family: Quicksand, sans-serif; color: rgb(5, 5, 5); font-size: 14px;\"><div class=\"description-productdetail\" style=\"margin: 0px; padding: 0px;\"><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\">Ch???t li???u: 53% cotton, 42% polyester,&nbsp;<span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;5% spandex&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:513,&quot;3&quot;:{&quot;1&quot;:0},&quot;12&quot;:0}\" style=\"margin: 0px; padding: 0px;\">5% spandex</span>.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\">?????c t??nh: C<span style=\"margin: 0px; padding: 0px;\">???m gi??c m???m m???i, tho???i m??i, c?? ????? th???m h??t t???t, ch???ng nh??n cao v?? tr??nh b??m b???i.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\">H?????ng d???n s??? d???ng:</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\">- Gi???t ??? nhi???t ????? b??nh th?????ng, v???i ????? c?? m??u t????ng t???.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\">- Kh??ng ???????c d??ng h??a ch???t t???y.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\">- H???n ch??? s??? d???ng m??y s???y v?? ???i ??? nhi???t ????? th??ch h???p.</p></div></div>', 450, NULL, 'uHGV2blkVgPZBjUjz2uAlDvLqbDFvvw0ZetPArE8.png', 1, 0, 2, '2020-07-19 10:51:20', '2020-07-22 10:31:47', NULL),
(9, 2, 7, '??o thun nam ng???n tay Garena c??? s?? mi cao c???p ATN02 - X??m', 159000, '<p><span style=\"color: rgb(36, 36, 36); font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 14px;\">??o thun nam ng???n tay Garena c??? s?? mi cao c???p ATN02 - X??m</span></p><p style=\"margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 1.5; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; color: rgb(36, 36, 36);\">Nh???ng chi???c ??o thun lu??n l?? s??? l???a ch???n h??ng ?????u ?????i v???i h???u h???t m???i ng?????i b???i s??? ti???n l???i v?? t??nh th???i trang c???a n??.</p><p style=\"margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 1.5; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; color: rgb(36, 36, 36);\">??o GARENA ???????c xem l?? chu???n m???c cho d??ng ??o ng???n tay c?? c???.</p><p style=\"margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 1.5; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; color: rgb(36, 36, 36);\">??o Thun Nam GARENA Th???i Trang v???i ki???u d??ng thi???t k??? ????n gi???n, kh??ng c???u k??, d??? d??ng ????? b???n ph???i ????? trong nhi???u ho??n c???nh. Logo th??u t??? m???, tinh t???, b???n ?????p.</p><p style=\"margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 1.5; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; color: rgb(36, 36, 36);\">- Ch???t li???u: Thun c?? s???u co d??n, th???m h??t m??? h??i c???c t???t.</p><p style=\"margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 1.5; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; color: rgb(36, 36, 36);\">- M??u s???c: Xanh ??en, Kem, Tr???ng, ??en, Xanh bi???n</p><p style=\"margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 1.5; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; color: rgb(36, 36, 36);\">- K??ch c???: M (50-57 Kg), L (57-65 Kg), XL (65-75 Kg)</p><p style=\"margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 1.5; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; color: rgb(36, 36, 36);\">Nhanh tay s??? h???u ??o Thun Nam GARENA Th???i Trang b???n nh??!</p>', 196, NULL, 'cNxnXY9lq50qOAmdimoA17YgTSS03R7BvMLozujN.jpeg', 1, 0, 3, '2020-07-19 10:52:41', '2020-07-31 10:21:04', NULL),
(10, 2, 7, '??o thun nam tay ng???n, ??o thun nam tay ng???n - B04', 129000, '<p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">TH??NG TIN CHI TI???T ??O THUN NAM C??? B??? CAO C???P:</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">* L?? DO B???N N??N CH???N 1 CHI???C ??O THUN NGAY B??Y GI??? :</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">- M??a h?? n??m nay l?? m??a h?? n???ng n??ng k??? l???c.</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">- B???n l?? ng?????i ??a ho???t ?????ng ho???c l??m vi???c trong m??i tr?????ng ????i h???i ph???i di chuy???n nhi???u.</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">- D??? ph???i ????? trong m???i ho??n c???nh : ??i l??m - ??i ch??i - ??i th??? thao...</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">- N???i b???t v??? tr??? trung, nam t??nh, m???nh m??? c???a ????n ??ng.</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">* CHI???C ??O THUN NAM C??? B??? CAO C???P C?? G?? ?</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">- Xu???t x??? : ???????c thi???t k??? v?? gia c??ng t???i Vi???t Nam v???i nh???ng ng?????i th??? n???i ti???ng kh??o l??o nh???t nh?? th??? gi???i, mang ?????n m???t chi???c ??o thun v???i nh???ng ???????ng kim m??i ch??? chu???n t??? milimet.</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">- Ch???t li???u: V???i cotton co gi??n 4 chi???u - l?? lo???i v???i tho??ng m??t v?? th???m h??t m??? h??i t???t nh???t l???i co gi??n ????n h???i c??? 4 chi???u n??n ??em l???i c???m gi??c tho???i m??i khi m???c, khi ho???t ?????ng nhi???u gi???. B??? m???t v???i m???m, m???n kh??ng bai d??o sau th???i gian d??i s??? d???ng.</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">- Form : ??o thun nam cotton co gi??n 4 chi???u ???????c thi???t k??? v???i form d??ng ph?? h???p v???i ng?????i ch??u ??.</span></p><p style=\"color: rgb(33, 37, 41); font-family: Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"font-size: 11.5pt;\">- Gi???t : C?? th??? gi???t tay, ho???c gi???t m??y. ?????m b???o v??i cotton kh??ng x??, kh??ng bay m??u, kh??ng bai d??o.</span></p>', 127, 'XS,S', 'o5BSYiV9u7MysBkXhQeadSKLx0hwOsFQOuJDdPBM.jpeg', 1, 0, 15, '2020-07-19 10:58:10', '2020-08-01 12:32:40', NULL),
(11, 2, 8, '??O S?? MI TR???NG ASM1266', 245000, '<p><span style=\"color: rgb(51, 51, 51); font-family: Quicksand, Tahoma, Geneva, sans-serif; font-size: 12px;\">??o s?? mi tr???ng v???i thi???t k??? ????n gi???n, tr??? trung t??n l??n v??? thanh l???ch, tr?????ng th??nh c???a ph??i m???nh.</span><br></p>', 149, 'S,M,L', '8y4VDqUQisyuyimdaPxO95hs61cSZLghrac0bcgC.jpeg', 1, 0, 28, '2020-07-19 11:21:21', '2020-08-01 12:32:40', NULL),
(12, 3, 2, 'S???a lo???i v??n b???n', 1500000, '<p>s???dasdasdas</p>', 50, 'S,M,L', 'vTPa4E2P8f0NdeDUQrRJteRILxPY9xcd860dA8En.jpeg', 1, 0, 1, '2020-07-31 11:34:04', '2020-07-31 11:34:04', NULL),
(14, 1, 3, 'Nguy??n V??n D?????c', 5000, '<p>dfgdfgdfg</p>', 48, '29', 'FThprZttPvZ3z66tcFAU6Xn7edV994Mh1Z6bxPIP.jpeg', 1, 0, 0, NULL, NULL, NULL),
(15, 2, 1, 'H???i s???n nh???p kh???u', 5000, '<p>sdfsdfs</p>', 49, '29,30', 'qUArNzgmWXfPnlZPct22djT1qAg9v6TPXPXlGMHV.png', 1, 0, 1, NULL, NULL, NULL);

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
(1, 'Gi???i thi???u', 'gioi-thieu', '<h1 class=\"post-title\" style=\"margin: 20px 0px 10px; font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(68, 68, 68); font-size: 26px; letter-spacing: 0.5px;\">Gi???i thi???u 4MEN</h1><div class=\"space30\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px; margin-bottom: 30px !important;\"></div><div class=\"article-content\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px;\"><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(102, 102, 102); line-height: 22px; text-align: justify;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-family: arial, helvetica, sans-serif;\">Th????ng hi???u th???i&nbsp;trang nam 4MEN ???????c th??nh&nbsp;???????c th??nh l???p t??? th??ng 3 n??m 2010, l?? th????ng hi???u th???i trang&nbsp;uy t??n h??ng ?????u t???i Vi???t Nam d??nh ri??ng cho ph??i m???nh.<br><br><span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\">S??? M???NH</span></span><br>S??ng t???o v?? tr??? trung l?? y???u t??? ti??n phong khi???n cho c??c thi???t k??? c???a 4MEN lu??n t???o s???&nbsp;thu h??t v??&nbsp;????n nh???n nhi???t t??nh t??? gi???i tr???. Kh??ng&nbsp;ch??? th??? hi???n&nbsp;tinh t??? v?? sang tr???ng ?????i v???i d??ng s???n ph???m Vestton, guu th???i trang 4MEN c??n kh??i d???y ch???t tr??? trung, n??ng ?????ng v?? ??a d???ng tr??n c??c d??ng&nbsp;s???n ph???m h???ng ng??y t??? ??o s?? mi, ??o thun, ??o kho??c, jeans, kaki, qu???n t??y, short,... Cho ?????n v?? s??? c??c ph??? ki???n ??i k??m, gi??p ph??i m???nh c?? th??m nhi???u l???a ch???n v?? k???t h???p phong ph?? trong&nbsp;phong c??ch th???i trang c???a ch??nh m??nh.&nbsp;<br><br><span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\">T???M NH??N</span></span><br>S??? n??? l???c&nbsp;v?? kh??ng ng???i thay ?????i ???? t???o&nbsp;n??n s??? kh??c bi???t ki??n ?????nh cho c??c d??ng s???n ph???m th???i trang c???a 4MEN. Mong mu???n c???a ch??ng t??i kh??ng ch??? d???ng l???i ??? c??u chuy???n&nbsp;s???n xu???t,&nbsp;cung c???p c??c s???n ph???m th???i trang m?? c??n h?????ng ?????n vi???c&nbsp;truy???n c???m h???ng th???i trang, g??p ph???n ?????nh h?????ng phong c??ch th???i trang&nbsp;tr??? trung v?? ph?? h???p d??nh ri??ng cho ph??i m???nh.</span></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(102, 102, 102); line-height: 22px; text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"color: rgb(0, 0, 0);\">T??nh ?????n th???i ??i???m n??y (2020), th????ng hi???u th???i trang nam 4MEN ????&nbsp;s??? h???u ?????n 15&nbsp;chi nh??nh ???????c ph??n b??? r???ng kh???p&nbsp;khu v???c ????ng Nam B??? v?? T??y Nam B??? nh??: TP. H??? Ch?? Minh, V??ng T??u,&nbsp;B??nh D????ng, Bi??n h??a (?????ng Nai), An Giang, C???n Th??. B??n c???nh vi???c ph??t tri???n c??c h??? th???ng c???a h??ng, 4MEN c??n ch?? tr???ng&nbsp;ph??t tri???n h??? th???ng ch??m s??c v?? b??n h??ng online, ?????t -&nbsp;giao h??ng nhanh ch??ng&nbsp;?????n t???n tay ng?????i ti??u d??ng tr??n to??n qu???c th??ng qua website:&nbsp;</span></span><span style=\"font-weight: 700;\"><a href=\"https://4menshop.com/\" style=\"color: rgb(214, 100, 74); transition: all 0.4s ease 0s; outline: 0px;\">4menshop.com</a></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(102, 102, 102); line-height: 22px; text-align: justify;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\">V??N H??A 4MEN</span></span><br>?????n v???i 4MEN, Qu?? kh??ch s??? ???????c tr???i nghi???m m???t gi?? tr??? m???i, phong c??ch m???i kh??ng ch??? ????n thu???n l?? ???????c t?? v???n&nbsp;th???i trang, ch??ng t??i mong mu???n ???????c ch??m s??c v?? th???u hi???u kh??ch h??ng nh???m ?????m b???o ???????c s??? h??i l??ng tuy???t ?????i c??ng nh?? s???&nbsp;tin t?????ng&nbsp;g???i g???m&nbsp;t??? q??y kh??ch.<br>V???i s???&nbsp;t???n t??m v?? chuy??n nghi???p c???a ?????i ng??&nbsp;qu???n l?? c??ng nh?? to??n th??? nh??n vi??n t???i 4MEN, ch??ng t??i kh??ng ng???ng&nbsp;n??? l???c v??&nbsp;????? cao quy???n l???i c???a kh??ch h??ng l??m m???c ti??u&nbsp;tr??n h???t. Ph???c v??? kh??ch h??ng m???t c??ch nhi???t t??nh v?? chu ????o c??ng l?? c??ch ????? 4MEN ch??ng t??i trau d???i, t??ch l??y v??n h??a cho th????ng hi???u c???a m??nh ng??y m???t th??m l???n m???nh.</span></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(102, 102, 102); line-height: 22px; text-align: justify;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-weight: 700;\">Ch???n&nbsp;4MEN, b???n ??ang l???a ch???n s??? ho??n h???o cho ??i???m nh???n&nbsp;th???i trang c???a ch??nh m??nh!</span></span></span></p></div>', NULL, '2020-07-15 00:04:56', '2020-07-15 00:04:56'),
(2, 'Ch??nh s??ch giao h??ng', 'chinh-sach-giao-hang', '<h1 class=\"post-title\" style=\"margin: 20px 0px 10px; font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(68, 68, 68); font-size: 26px; letter-spacing: 0.5px;\">Ch??nh s??ch giao h??ng</h1><div class=\"space30\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px; margin-bottom: 30px !important;\"></div><div class=\"article-content\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px;\"><div><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: 700;\">4MEN&nbsp;</span>giao h??ng t???n n??i tr??n to??n qu???c v???i ch??nh s??ch giao h??ng c??? th??? nh?? sau:</span></span></span><br>&nbsp;</div><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: 700;\">1. PH?? GIAO H??NG T???N NH??:</span><br><span style=\"font-weight: 700;\">4MEN</span>&nbsp;??p d???ng m???c ph?? giao h??ng theo b???ng gi?? b??n d?????i:</span></span></span><br><br><img src=\"https://4menshop.com/images/2019/12/20191216_eca0c44558aed26248cc4f0c60d99b1a_1576485290.jpg\" alt=\"Ch??nh s??ch giao h??ng - 1\" style=\"border: 0px; max-width: 100%;\"><div>&nbsp;</div><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: 700;\">Khu v???c TP.HCM:</span></span></span></span><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; padding: 0px;\"><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: 700;\"><em>N???i Th??nh:</em></span>&nbsp;C??c qu???n: 1, 2, 3, 4, 5, 6, 7, 8, 10, 11, B??nh Th???nh, G?? V???p, Ph?? Nhu???n, T??n B??nh, T??n Ph??</span></span></span></li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: 700;\"><em>Ngo???i Th??nh:</em></span>&nbsp;C??c qu???n - huy???n: 9, 12, B??nh Ch??nh, B??nh T??n, C???n Gi???, C??? Chi, H??c M??n, Nh?? B??, Th??? ?????c</span></span></span>.<span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"></span></span></span></li></ul><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: 700;\">*</span></span></span></span><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\">&nbsp;N???i th??nh HCM ??p d???ng g??i ship h???n gi??? theo y??u c???u kh??ch h??ng, do nh??n vi??n c???a 4MEN tr???c ti???p giao h??ng; C??c khu v???c c??n l???i s??? ship b???ng d???ch v??? c???a c??ng ty chuy???n ph??t nhanh&nbsp;<em>Giao h??ng nhanh</em>.<br><br><span style=\"font-weight: 700;\">2. TH???I GIAN GIAO H??NG:</span></span></span></span><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; padding: 0px;\"><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\">Th???i gian v???n chuy???n h??ng th?????ng m???t t??? 2 - 3 ng??y l??m vi???c (kh??ng t??nh th??? b???y, ch??? nh???t hay c??c ng??y l??? t???t).&nbsp;</span></span></span></li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\">Ch??? ti??u th???i gian tr??n ???????c t??nh ?????n trung t??m t???nh, th??nh ph??? c???a kh??ch h??ng,&nbsp; N???u kh??ch h??ng ??? t???i Huy???n, X?? c???ng th??m 1 ??? 2 ng??y&nbsp;(t??y v??o n??i ?????n).</span></span></span></li></ul><br><span style=\"font-size: 16px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">*</span></span></span><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\">&nbsp;Vi???c giao h??ng ???????c th???c hi???n trong gi??? h??nh ch??nh.</span></span></span><br><span style=\"font-size: 16px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">*</span></span></span><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\">&nbsp;Khi nh???n h??ng qu?? kh??ch c???n xem l???i m???t h??ng v???a nh???n, n???u m???t h??ng v???a giao kh??ng ????ng theo y??u c???u c???a qu?? kh??ch, qu?? kh??ch c?? th??? t??? ch???i nh???n h??ng.</span></span></span></div>', NULL, '2020-07-15 00:06:03', '2020-07-15 00:06:03'),
(3, 'Ch??nh s??ch ?????i h??ng', 'chinh-sach-doi-hang', '<h1 class=\"post-title\" style=\"margin: 20px 0px 10px; font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(68, 68, 68); font-size: 26px; letter-spacing: 0.5px;\">Ch??nh s??ch ?????i h??ng</h1><div class=\"space30\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px; margin-bottom: 30px !important;\"></div><div class=\"article-content\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 16px;\"><span style=\"font-weight: 700;\">?????I V???I KH??CH MUA T???I C???A H??NG:</span></span></span><br>- Th???i gian: trong v??ng 5 ng??y<br>- Ch??nh s??ch:&nbsp;?????i s???n ph???m c?? gi?? tr??? t????ng ??????ng ho???c nh??? h??n<br>- C??ch th???c: ?????i s???n ph???m t???i b???t k??? chi nh??nh n??o c???a h??? th???ng Th???i trang nam 4MEN (sau 15h chi???u).<br><br><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\"><span style=\"font-size: 16px;\">?????I V???I KH??CH MUA H??NG ONLINE</span></span></span><br>- Th???i gian: trong v??ng 15 ng??y<br>- Ch??nh s??ch:&nbsp;?????i s???n ph???m c?? gi?? tr??? t????ng ??????ng ho???c l???n h??n<br>- C??ch th???c:<br>&nbsp; &nbsp; &nbsp;+ Qu?? kh??ch vui l??ng g???i v??? S??T:&nbsp;<span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">0868.044.644</span></span>&nbsp;????? th??ng b??o<br>&nbsp; &nbsp; &nbsp;+&nbsp;Qu?? kh??ch&nbsp;g???i h??ng v??? ?????a ch???:&nbsp;<span style=\"font-weight: 700;\"><span style=\"color: rgb(255, 0, 0);\">4MEN</span>&nbsp;-&nbsp;</span><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-weight: 700;\">458 L?? V??n S???, P.14, Q.3, Tp.HCM</span></span><br>&nbsp;&nbsp; &nbsp;&nbsp;+ Sau khi nh???n ???????c s???n ph???m, 4MEN s??? ki???m tra v?? ?????i l???i s???n ph???m kh??c cho qu?? kh??ch<br><br><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\"><span style=\"font-size: 16px;\">?????I V???I S???N PH???M SALE OFF, VUI L??NG KH??NG ?????I TR???.</span></span></span><br><br><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">L??u ??:</span></span>&nbsp;S???n ph???m c?? th??? ?????i khi ????? c??c ??i???u ki???n sau:<br>- &nbsp;S???n ph???m c??n m???i, c??n ?????y ????? tem, nh??n m??c<br>- &nbsp;C??n h??a ????n mua h??ng t???i 4MEN<br>- &nbsp;S???n ph???m kh??ng b??? d?? b???n, h?? h???ng, c?? m??i l??? ho???c c?? d???u hi???u ???? qua gi???t t???y ho???c qua s??? d???ng<br>- &nbsp;S???n ph???m ???????c xem l?? l???i k?? thu???t<br>- 4MEN kh??ng ch???p nh???n y??u c???u tr??? h??ng v?? ho??n ti???n l???i</div>', NULL, '2020-07-15 00:06:58', '2020-07-15 00:06:58'),
(4, 'Email', 'email', '<p>AllStore@gmail.com</p>', NULL, '2020-07-15 00:07:55', '2020-07-15 00:07:55'),
(5, 'Hotline', 'hotline', '<p>18001988</p>', NULL, '2020-07-15 00:08:26', '2020-07-15 00:08:26'),
(6, 'H?????ng d???n ?????t h??ng', 'huong-dan-dat-hang', '<h1 class=\"post-title\" style=\"margin: 20px 0px 10px; font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(68, 68, 68); font-size: 26px; letter-spacing: 0.5px;\">H?????ng d???n ?????t h??ng</h1><div class=\"space30\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px; margin-bottom: 30px !important;\"></div><div class=\"article-content\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px;\"><div style=\"text-align: justify;\"><div><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-weight: 700;\"><span style=\"font-size: 20px;\">H?????NG D???N MUA H??NG T???I H??? TH???NG C???A H??NG TH???I TRANG&nbsp;4MEN</span></span></span><br><span style=\"color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>4MEN - h??? th???ng&nbsp;th???i trang nam uy t??n hi???n ??ang s??? h???u ?????n 15 chi nh??nh, ph??n b???&nbsp;r???ng kh???p khu v???c ????ng Nam B??? v?? T??y Nam B???. Qu?? kh??ch h??ng khi ?????n v???i h??? th???ng c???a h??ng c???a 4MEN c?? th??? ho??n to??n tin t?????ng v?? h??i l??ng, t???&nbsp;phong c??ch v?? ch???t l?????ng&nbsp;s???n cho ?????n th??i ?????, quy c??ch c???a nh??n vi??n lu??n ???????c ki???m&nbsp;so??t m???t c??ch ch???t ch???, ?????m b???o qu??&nbsp;kh??ch h??ng ph???i ???????c ph???c v??? m???t c??ch chu ????o, ch???t l?????ng nh???t.<br>Ngo??i vi???c&nbsp;tham kh???o ho???c li??n h??? v???i 4MEN&nbsp;????? ???????c gi???i ????p&nbsp;m???i v???n ????? li??n quan ?????n&nbsp;c???a h??ng, s???n ph???m,... Qu?? kh??ch h??ng c?? th???&nbsp;tr???c ti???p ?????n Store&nbsp;4MEN g???n nh???t ????? tham gia mua s???m v?? nh???n th??m&nbsp;nhi???u ??u ????i h???p d???n kh??c.</span></div><div>&nbsp;<div><span style=\"font-size: 20px;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">H??? TH???NG C???A H??NG TH???I TRANG 4MEN<br>4MEN KHU V???C TP.HCM</span></span></span></div><div><div><div style=\"margin-left: -15px; margin-right: -15px;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; padding: 0px;\"><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nh??nh Qu???n 3</span>&nbsp;<br>- ?????a ch???: 458 L?? V??n S???, P.14, Q.3&nbsp;<br>- ??i???n tho???i:&nbsp;<span style=\"color: rgb(34, 34, 34); font-family: &quot;segoe ui&quot;, segoeuipc, &quot;san francisco&quot;, &quot;helvetica neue&quot;, helvetica, &quot;lucida grande&quot;, roboto, ubuntu, tahoma, &quot;microsoft sans serif&quot;, tahoma, arial, sans-serif; font-size: 15px;\">0865413593</span></li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nh??nh Qu???n 7</span>&nbsp;<br>- ?????a ch???: 384 Hu???nh T???n Ph??t, P. B??nh Thu???n, Q.7&nbsp;<br>- ??i???n tho???i: 0968 168 584</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nh??nh Qu???n 9</span>&nbsp;<br>- ?????a ch???: 199 ????? Xu??n H???p, P. Ph?????c Long B, Q.9<br>- ??i???n tho???i: 02866 595 044</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nh??nh Qu???n G?? V???p</span><br>- ?????a ch???: 526 Quang Trung, P.11, Q. G?? V???p&nbsp;<br>- ??i???n tho???i: 0989 830 685</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nh??nh Qu???n B??nh Th???nh</span><br>- ?????a ch???:&nbsp;<span style=\"font-family: utmavo, tahoma, verdana, arial, sans-serif;\">50 Nguy???n Gia Tr?? (???????ng D2 c??), P.25, Q. B??nh Th???nh</span><br>- ??i???n tho???i:&nbsp;02866827164</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nh??nh T??n Ph??</span>&nbsp;<br>- ?????a ch???: 533 ??u C??, P. Ph?? Trung, Q. T??n Ph??&nbsp;<br>- ??i???n tho???i: 0286 286 9504</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nh??nh B??nh T??n</span>&nbsp;<br>- ?????a ch???: 69-71 Nguy???n Th??? T??, P. B??nh H??ng H??a B, Q. B??nh T??n&nbsp;<br>- ??i???n tho???i: 0286 2755 746</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nh??nh T??n B??nh</span>&nbsp;<br>- ?????a ch???: 798 C??ch M???ng Th??ng 8, P.5, Q. T??n B??nh&nbsp;<br>- ??i???n tho???i: 0975 215 734</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nh??nh H??c M??n</span>&nbsp;<br>- ?????a ch???: 122 Nguy???n ???nh Th???, Trung Ch??nh, H. H??c M??n&nbsp;<br>- ??i???n tho???i: 0383 261 004</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nh??nh Th??? ?????c</span>&nbsp;<br>- ??C: 166 V?? V??n Ng??n, P. B??nh Th???, Q. Th??? ?????c&nbsp;<br>- ??i???n tho???i: 0394 945 773</li></ul></div></div><div><h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"font-size: 20px;\"><span style=\"font-weight: 700;\">4MEN&nbsp;????NG NAM B???</span></span></h3><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; padding: 0px;\"><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nh??nh Bi??n H??a - ?????ng Nai</span>&nbsp;<br>- ?????a ch???: 1333 Ph???m V??n Thu???n, P. Th???ng Nh???t, Tp. Bi??n H??a&nbsp;<br>- ??i???n tho???i: 0251 655 7607</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nh??nh V??ng T??u</span>&nbsp;<br>- ?????a ch???: 344 Tr????ng C??ng ?????nh, P.8, TP. V??ng T??u&nbsp;<br>- ??i???n tho???i: 0254 6545 009<span style=\"font-weight: 700;\">&nbsp;</span></li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nh??nh&nbsp;</span><span style=\"font-weight: 700;\">Th??? D???u M???t - B??nh D????ng</span><br>- ?????a ch???:&nbsp;<span style=\"font-family: utmavo, tahoma, verdana, arial, sans-serif;\">103 ???????ng Yersin , P. Ph?? C?????ng, Tp. Th??? D???u M???t, B??nh D????ng</span><br>- ??i???n tho???i:&nbsp;<a href=\"tel:0365836367\" rel=\"nofollow\" style=\"color: rgb(187, 187, 187); transition: all 0.4s ease 0s; outline: 0px;\"><span style=\"color: rgb(0, 0, 0);\">0365 836 367</span></a></li></ul><h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"font-size: 20px;\"><span style=\"font-weight: 700;\">4MEN T??Y NAM B???</span></span></h3><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; padding: 0px;\"><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nh??nh Long Xuy??n - An Giang</span>&nbsp;<br>- ?????a ch???: 904C H?? Ho??ng H???, P. M??? Xuy??n, Tp. Long Xuy??n&nbsp;<br>- ??i???n tho???i: 0865 738 031</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nh??nh C???n Th??</span><br>- ?????a ch???:&nbsp;<span style=\"font-family: utmavo, tahoma, verdana, arial, sans-serif;\">73 Nguy???n Vi???t H???ng, P. An Ph??, Q. Ninh Ki???u, C???n Th??</span><br>- ??i???n tho???i:&nbsp;<a href=\"tel:+84989662315\" rel=\"nofollow\" style=\"color: rgb(187, 187, 187); transition: all 0.4s ease 0s; outline: 0px;\"><span style=\"color: rgb(0, 0, 0);\">0989 662 315</span></a></li></ul></div></div></div><div><span style=\"color: rgb(178, 34, 34);\"><span style=\"font-size: 16px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span><br><span style=\"font-weight: 700;\"><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-size: 20px;\">H?????NG D???N MUA H??NG QUA ??I???N THO???I</span></span></span><br>&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(0, 0, 0);\">&nbsp;&nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Qu?? kh??ch vui l??ng g???i v??o s???:</span>&nbsp;<span style=\"font-size: 18px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">0868.044.644&nbsp;</span></span></span><span style=\"font-size: 16px;\"><span style=\"font-size: 14px;\"><span style=\"color: rgb(0, 0, 0);\">ho???c</span></span></span><span style=\"font-weight: 700;\"><span style=\"font-size: 16px;\">&nbsp;<span style=\"font-size: 18px;\"><span style=\"color: rgb(255, 0, 0);\">0868.444.644</span></span></span></span>&nbsp;<span style=\"color: rgb(0, 0, 0);\">????? cung c???p c??c th??ng tin: M?? h??ng, size, s??? l?????ng, t??n, s??? ??i???n tho???i&nbsp;v?? ?????a ch??? ng?????i nh???n h??ng. Nh??n vi??n t???ng ????i 4MEN s??? t?? v???n c??ch th???c ?????t h??ng d??? d??ng v?? nhanh nh???t cho qu?? kh??ch.</span></div><div>&nbsp;</div><div><span style=\"font-weight: 700;\"><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-size: 20px;\">H?????NG D???N MUA H??NG QUA WEBSITE 4MEN</span></span></span><br><br><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">????? mua h??ng online qua website 4MEN, qu?? kh??ch vui l??ng l??m theo c??c b?????c h?????ng d???n sau:<br>B?????c ?????u ti??n:</span>&nbsp;T???i s???n ph???m c???n mua,&nbsp;<span style=\"font-weight: 700;\">ch???n size, ch???n s??? l?????ng</span>, sau ????:</span><br><span style=\"color: rgb(0, 0, 0);\">- Nh???p&nbsp;v??o</span>&nbsp;<span style=\"color: rgb(0, 0, 0);\">??</span>&nbsp;<span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">MUA NGAY</span></span>&nbsp;,&nbsp;<span style=\"color: rgb(0, 0, 0);\">ti???p t???c chuy???n qua b?????c 1</span></div><div style=\"text-align: center;\"><br><img src=\"http://4menshop.com/images/2017/12/20171206_403db50aded604ff243f8b2750b1567f_1512550567.jpg\" alt=\"H?????ng d???n ?????t h??ng - 1\" style=\"border: 0px; max-width: 100%;\"></div><div><br><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">B?????C&nbsp;1: Nh???p&nbsp;th??ng tin c???n thi???t</span></span><br><span style=\"color: rgb(0, 0, 0);\">- Ki???m tra l???i th??ng tin s???n ph???m ?????t h??ng &nbsp;</span><span style=\"color: rgb(0, 0, 0);\">(t??n s???n ph???m, s??? l?????ng, size,&nbsp;</span><span style=\"color: rgb(0, 0, 0);\">????n gi??)&nbsp;t???i m???c&nbsp;</span><span style=\"font-size: 18px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">1</span></span></span>&nbsp;<span style=\"color: rgb(0, 0, 0);\">??? c???t&nbsp;<span style=\"font-weight: 700;\">\"Gi??? h??ng c???a b???n\"</span>&nbsp;b??n ph???i</span><br><span style=\"color: rgb(0, 0, 0);\">-&nbsp;Nh???p th??ng tin li??n h??? ?????y ????? c???a ng?????i mua t???i m???c</span>&nbsp;&nbsp;<span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\"><span style=\"color: rgb(255, 0, 0);\">2</span></span></span><br><span style=\"color: rgb(0, 0, 0);\">- Nh???p ?????a ch??? giao h??ng t???i m???c</span>&nbsp;&nbsp;<span style=\"font-size: 18px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">3</span></span></span><br><span style=\"color: rgb(0, 0, 0);\">- Q</span><span style=\"color: rgb(0, 0, 0);\">u?? kh??ch c?? th??? theo d??i ph?? v???n chuy???n (PVC)&nbsp;&nbsp;</span><span style=\"color: rgb(0, 0, 0);\">ph??t sinh v?? t???ng ti???n thanh to??n&nbsp;t???i m???c&nbsp;</span><span style=\"font-size: 24px;\"><span style=\"color: rgb(255, 0, 0);\">*</span></span>&nbsp;<span style=\"color: rgb(0, 0, 0);\">??? c???t&nbsp;<span style=\"font-weight: 700;\">\"Th??ng tin ????n h??ng\"</span>&nbsp;b??n ph???i.</span><br><span style=\"color: rgb(0, 0, 0);\">- Nh???n ch???n&nbsp;</span><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">G???I ????N H??NG</span></span><span style=\"font-weight: 700;\">&nbsp;</span><span style=\"color: rgb(0, 0, 0);\">t???i m???c</span>&nbsp;<span style=\"font-size: 18px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">4&nbsp;</span></span></span><span style=\"color: rgb(0, 0, 0);\">, ho???c m???c</span><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">&nbsp;</span></span><span style=\"font-size: 22px;\"><span style=\"font-weight: 700;\"><span style=\"color: rgb(255, 0, 0);\">*</span></span></span></div><div style=\"text-align: center;\"><br><img src=\"http://4menshop.com/images/2017/12/20171206_3fc4e234e3a6fc3acbc77a93a5f3c7a4_1512550567.jpg\" alt=\"H?????ng d???n ?????t h??ng - 2\" style=\"border: 0px; max-width: 100%;\"></div><div><br><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">B?????C&nbsp;2: Nh???n th??ng b??o&nbsp;g???i ????n h??ng</span><br>- Qu?? kh??ch sau khi nh???n n??t G???I ????N H??NG s??? nh???n ???????c th??ng b??o&nbsp;?????t h??ng th??nh c??ng, ????? mua th??m s???n ph???m vui l??ng nh???n ch???n</span>&nbsp;<span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">TI???P T???C THAM GIA MUA H??NG</span></span><br><br><img src=\"http://4menshop.com/images/2015/07/20150717_f10dec5cab127665f8be86bc0524f146_1437129867.jpg\" alt=\"H?????ng d???n ?????t h??ng - 3\" style=\"border: 0px; max-width: 100%;\"><br><br><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">Sau khi nh???n ???????c ????n h??ng c???a qu?? kh??ch, 4MEN s??? ph???n h???i l???i trong v??ng 24h ????? x??c nh???n ????n h??ng, h??nh th???c thanh to??n, giao h??ng, chuy???n h??ng ho???c th??ng b??o c??c tr?????ng h???p ????n h??ng g???p s??? c???.</span></span><br>&nbsp;</div><div style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0);\">C???m ??n qu?? kh??ch ???? tin t?????ng v?? l???a ch???n&nbsp;TH????NG HI???U TH???I TRANG NAM&nbsp;4MEN<br>Ch??c qu?? kh??ch c?? nh???ng gi??y ph??t mua s???m vui v???.</span></div></div></div>', NULL, '2020-07-15 00:09:39', '2020-07-15 00:09:39');

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
