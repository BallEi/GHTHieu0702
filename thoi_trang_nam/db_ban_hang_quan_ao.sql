-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 18, 2020 lúc 01:18 PM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_ban_hang_quan_ao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_products`
--

CREATE TABLE `category_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_products`
--

INSERT INTO `category_products` (`id`, `name`, `parent_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Áo Nam', NULL, 1, '2020-07-14 21:45:53', '2020-08-01 22:50:00', NULL),
(2, 'Quần Nam', NULL, 1, '2020-07-14 21:46:18', '2020-08-01 22:50:11', NULL),
(4, 'Ví Nam', NULL, 1, '2020-07-14 21:47:46', '2020-08-01 23:14:50', NULL),
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
(15, 'Dép nam', 6, 1, '2020-07-14 23:57:18', '2020-07-14 23:57:18', NULL),
(19, 'Nón lưỡi chai', 5, 1, '2020-08-02 01:18:15', '2020-08-02 01:24:18', NULL),
(20, 'Nón snapback', 5, 1, '2020-08-02 01:18:39', '2020-08-02 01:24:08', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `content`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'Công Khánh', 'congkhanh@gmail.com', 'Shiper nên đọc rõ ghi chú hơn. vì đang làm việc mà shiper gọi nhiều cuộc rất phiền.', NULL, '2020-08-09 05:04:59', '2020-08-09 05:04:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `employee_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
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
(29, 1, '2020-08-02 01:50:00', '2020-08-02 01:50:00', NULL),
(30, 1, '2020-08-02 01:51:14', '2020-08-02 01:51:14', NULL),
(31, 1, '2020-08-02 01:51:57', '2020-08-02 01:51:57', NULL),
(32, 1, '2020-08-02 01:52:59', '2020-08-02 01:52:59', NULL),
(33, 1, '2020-08-02 01:54:01', '2020-08-02 01:54:01', NULL),
(34, 1, '2020-08-02 01:54:52', '2020-08-02 01:54:52', NULL),
(35, 1, '2020-08-02 01:55:44', '2020-08-02 01:55:44', NULL),
(36, 1, '2020-08-02 01:56:40', '2020-08-02 01:56:40', NULL),
(37, 1, '2020-08-02 01:57:25', '2020-08-02 01:57:25', NULL),
(38, 1, '2020-08-02 01:58:23', '2020-08-02 01:58:23', NULL),
(39, 1, '2020-08-02 01:59:02', '2020-08-02 01:59:02', NULL),
(40, 1, '2020-08-02 01:59:52', '2020-08-02 01:59:52', NULL),
(41, 1, '2020-08-02 02:00:52', '2020-08-02 02:00:52', NULL),
(42, 1, '2020-08-02 02:01:37', '2020-08-02 02:01:37', NULL),
(43, 1, '2020-08-02 02:02:14', '2020-08-02 02:02:14', NULL),
(44, 1, '2020-08-02 02:03:09', '2020-08-02 02:03:09', NULL),
(45, 1, '2020-08-02 02:03:48', '2020-08-02 02:03:48', NULL),
(46, 1, '2020-08-02 02:06:35', '2020-08-02 02:06:35', NULL),
(47, 1, '2020-08-02 02:07:19', '2020-08-02 02:07:19', NULL),
(48, 1, '2020-08-02 02:07:57', '2020-08-02 02:07:57', NULL),
(49, 1, '2020-08-02 02:08:36', '2020-08-02 02:08:36', NULL),
(50, 1, '2020-08-02 02:09:15', '2020-08-02 02:09:15', NULL),
(51, 1, '2020-08-02 02:09:58', '2020-08-02 02:09:58', NULL),
(52, 1, '2020-08-02 02:10:46', '2020-08-02 02:10:46', NULL),
(53, 1, '2020-08-02 02:15:20', '2020-08-02 02:15:20', NULL),
(54, 1, '2020-08-02 02:16:05', '2020-08-02 02:16:05', NULL),
(55, 1, '2020-08-02 02:19:14', '2020-08-02 02:19:14', NULL),
(56, 1, '2020-08-02 02:19:51', '2020-08-02 02:19:51', NULL),
(57, 1, '2020-08-02 02:23:33', '2020-08-02 02:23:33', NULL),
(58, 1, '2020-08-02 02:24:15', '2020-08-02 02:24:15', NULL),
(59, 1, '2020-08-02 02:25:32', '2020-08-02 02:25:32', NULL),
(60, 1, '2020-08-02 02:26:11', '2020-08-02 02:26:11', NULL),
(61, 1, '2020-08-02 02:26:45', '2020-08-02 02:26:45', NULL),
(62, 1, '2020-08-02 02:27:32', '2020-08-02 02:27:32', NULL),
(63, 1, '2020-08-02 02:28:12', '2020-08-02 02:28:12', NULL),
(64, 1, '2020-08-02 02:32:27', '2020-08-02 02:32:27', NULL),
(65, 1, '2020-08-02 02:33:04', '2020-08-02 02:33:04', NULL),
(66, 1, '2020-08-02 02:34:24', '2020-08-02 02:34:24', NULL),
(67, 1, '2020-08-02 02:41:55', '2020-08-02 02:41:55', NULL),
(68, 1, '2020-08-02 02:42:53', '2020-08-02 02:42:53', NULL),
(69, 1, '2020-08-02 02:44:22', '2020-08-02 02:44:22', NULL),
(70, 1, '2020-08-02 02:45:03', '2020-08-02 02:45:03', NULL),
(71, 1, '2020-08-02 02:45:53', '2020-08-02 02:45:53', NULL),
(72, 1, '2020-08-02 02:46:27', '2020-08-02 02:46:27', NULL),
(73, 1, '2020-08-02 02:47:01', '2020-08-02 02:47:01', NULL),
(74, 1, '2020-08-02 02:52:15', '2020-08-02 02:52:15', NULL),
(75, 1, '2020-08-02 02:52:52', '2020-08-02 02:52:52', NULL),
(76, 1, '2020-08-02 02:53:27', '2020-08-02 02:53:27', NULL),
(77, 1, '2020-08-02 02:54:11', '2020-08-02 02:54:11', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupon_detail`
--

CREATE TABLE `coupon_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantities` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupon_detail`
--

INSERT INTO `coupon_detail` (`id`, `coupon_id`, `product_id`, `price`, `quantities`, `created_at`, `updated_at`, `deleted_at`) VALUES
(22, 29, 13, 200000, 150, '2020-08-02 01:50:01', '2020-08-02 01:50:01', NULL),
(23, 30, 14, 210000, 150, '2020-08-02 01:51:14', '2020-08-02 01:51:14', NULL),
(24, 31, 15, 210000, 150, '2020-08-02 01:51:57', '2020-08-02 01:51:57', NULL),
(25, 32, 16, 220000, 150, '2020-08-02 01:52:59', '2020-08-02 01:52:59', NULL),
(26, 33, 17, 210000, 150, '2020-08-02 01:54:01', '2020-08-02 01:54:01', NULL),
(27, 34, 18, 225000, 100, '2020-08-02 01:54:52', '2020-08-02 01:54:52', NULL),
(28, 35, 19, 200000, 200, '2020-08-02 01:55:44', '2020-08-02 01:55:44', NULL),
(29, 36, 20, 230000, 100, '2020-08-02 01:56:40', '2020-08-02 01:56:40', NULL),
(30, 37, 21, 210000, 120, '2020-08-02 01:57:25', '2020-08-02 01:57:25', NULL),
(31, 38, 22, 210000, 150, '2020-08-02 01:58:23', '2020-08-02 01:58:23', NULL),
(32, 39, 23, 200000, 100, '2020-08-02 01:59:02', '2020-08-02 01:59:02', NULL),
(33, 40, 24, 220000, 150, '2020-08-02 01:59:52', '2020-08-02 01:59:52', NULL),
(34, 41, 25, 210000, 200, '2020-08-02 02:00:52', '2020-08-02 02:00:52', NULL),
(35, 42, 26, 210000, 120, '2020-08-02 02:01:37', '2020-08-02 02:01:37', NULL),
(36, 43, 27, 200000, 100, '2020-08-02 02:02:14', '2020-08-02 02:02:14', NULL),
(37, 44, 28, 300000, 100, '2020-08-02 02:03:09', '2020-08-02 02:03:09', NULL),
(38, 45, 29, 300000, 100, '2020-08-02 02:03:48', '2020-08-02 02:03:48', NULL),
(39, 46, 30, 350000, 130, '2020-08-02 02:06:35', '2020-08-02 02:06:35', NULL),
(40, 47, 31, 350000, 100, '2020-08-02 02:07:19', '2020-08-02 02:07:19', NULL),
(41, 48, 32, 350000, 100, '2020-08-02 02:07:57', '2020-08-02 02:07:57', NULL),
(42, 49, 33, 350000, 100, '2020-08-02 02:08:37', '2020-08-02 02:08:37', NULL),
(43, 50, 34, 350000, 100, '2020-08-02 02:09:15', '2020-08-02 02:09:15', NULL),
(44, 51, 35, 340000, 150, '2020-08-02 02:09:58', '2020-08-02 02:09:58', NULL),
(45, 52, 36, 300000, 100, '2020-08-02 02:10:46', '2020-08-02 02:10:46', NULL),
(46, 53, 37, 270000, 120, '2020-08-02 02:15:20', '2020-08-02 02:15:20', NULL),
(47, 54, 38, 270000, 100, '2020-08-02 02:16:05', '2020-08-02 02:16:05', NULL),
(48, 55, 39, 270000, 100, '2020-08-02 02:19:14', '2020-08-02 02:19:14', NULL),
(49, 56, 40, 270000, 150, '2020-08-02 02:19:51', '2020-08-02 02:19:51', NULL),
(50, 57, 41, 450000, 100, '2020-08-02 02:23:33', '2020-08-02 02:23:33', NULL),
(51, 58, 42, 450000, 100, '2020-08-02 02:24:15', '2020-08-02 02:24:15', NULL),
(52, 59, 43, 460000, 100, '2020-08-02 02:25:32', '2020-08-02 02:25:32', NULL),
(53, 60, 44, 500000, 100, '2020-08-02 02:26:11', '2020-08-02 02:26:11', NULL),
(54, 61, 45, 500000, 100, '2020-08-02 02:26:45', '2020-08-02 02:26:45', NULL),
(55, 62, 46, 400000, 100, '2020-08-02 02:27:32', '2020-08-02 02:27:32', NULL),
(56, 63, 47, 410000, 100, '2020-08-02 02:28:12', '2020-08-02 02:28:12', NULL),
(57, 64, 48, 550000, 100, '2020-08-02 02:32:27', '2020-08-02 02:32:27', NULL),
(58, 65, 49, 550000, 120, '2020-08-02 02:33:04', '2020-08-02 02:33:04', NULL),
(59, 66, 50, 300000, 30, '2020-08-02 02:34:24', '2020-08-02 02:34:24', NULL),
(60, 67, 51, 350000, 30, '2020-08-02 02:41:55', '2020-08-02 02:41:55', NULL),
(61, 68, 52, 350000, 30, '2020-08-02 02:42:53', '2020-08-02 02:42:53', NULL),
(62, 69, 53, 150000, 50, '2020-08-02 02:44:22', '2020-08-02 02:44:22', NULL),
(63, 70, 54, 200000, 50, '2020-08-02 02:45:03', '2020-08-02 02:45:03', NULL),
(64, 71, 55, 250000, 50, '2020-08-02 02:45:53', '2020-08-02 02:45:53', NULL),
(65, 72, 56, 260000, 30, '2020-08-02 02:46:27', '2020-08-02 02:46:27', NULL),
(66, 73, 57, 260000, 30, '2020-08-02 02:47:01', '2020-08-02 02:47:01', NULL),
(67, 74, 58, 270000, 100, '2020-08-02 02:52:15', '2020-08-02 02:52:15', NULL),
(68, 75, 59, 270000, 100, '2020-08-02 02:52:52', '2020-08-02 02:52:52', NULL),
(69, 76, 60, 270000, 100, '2020-08-02 02:53:27', '2020-08-02 02:53:27', NULL),
(70, 77, 61, 280000, 70, '2020-08-02 02:54:11', '2020-08-02 02:54:11', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `informations`
--

CREATE TABLE `informations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `informations`
--

INSERT INTO `informations` (`id`, `title`, `slug`, `content`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Giới thiệu', 'gioi-thieu', '<h1 class=\"post-title\" style=\"margin: 20px 0px 10px; font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(68, 68, 68); font-size: 26px; letter-spacing: 0.5px;\">Giới thiệu 4MEN</h1><div class=\"space30\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px; margin-bottom: 30px !important;\"></div><div class=\"article-content\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px;\"><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(102, 102, 102); line-height: 22px; text-align: justify;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-family: arial, helvetica, sans-serif;\">Thương hiệu thời&nbsp;trang nam 4MEN được thành&nbsp;được thành lập từ tháng 3 năm 2010, là thương hiệu thời trang&nbsp;uy tín hàng đầu tại Việt Nam dành riêng cho phái mạnh.<br><br><span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\">SỨ MỆNH</span></span><br>Sáng tạo và trẻ trung là yếu tố tiên phong khiến cho các thiết kế của 4MEN luôn tạo sự&nbsp;thu hút và&nbsp;đón nhận nhiệt tình từ giới trẻ. Không&nbsp;chỉ thể hiện&nbsp;tinh tế và sang trọng đối với dòng sản phẩm Vestton, guu thời trang 4MEN còn khơi dậy chất trẻ trung, năng động và đa dạng trên các dòng&nbsp;sản phẩm hằng ngày từ Áo sơ mi, áo thun, áo khoác, jeans, kaki, quần tây, short,... Cho đến vô số các phụ kiện đi kèm, giúp phái mạnh có thêm nhiều lựa chọn và kết hợp phong phú trong&nbsp;phong cách thời trang của chính mình.&nbsp;<br><br><span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\">TẦM NHÌN</span></span><br>Sự nỗ lực&nbsp;và không ngại thay đổi đã tạo&nbsp;nên sự khác biệt kiên định cho các dòng sản phẩm thời trang của 4MEN. Mong muốn của chúng tôi không chỉ dừng lại ở câu chuyện&nbsp;sản xuất,&nbsp;cung cấp các sản phẩm thời trang mà còn hướng đến việc&nbsp;truyền cảm hứng thời trang, góp phần định hướng phong cách thời trang&nbsp;trẻ trung và phù hợp dành riêng cho phái mạnh.</span></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(102, 102, 102); line-height: 22px; text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"color: rgb(0, 0, 0);\">Tính đến thời điểm này (2020), thương hiệu thời trang nam 4MEN đã&nbsp;sở hữu đến 15&nbsp;chi nhánh được phân bổ rộng khắp&nbsp;khu vực Đông Nam Bộ và Tây Nam Bộ như: TP. Hồ Chí Minh, Vũng Tàu,&nbsp;Bình Dương, Biên hòa (Đồng Nai), An Giang, Cần Thơ. Bên cạnh việc phát triển các hệ thống cửa hàng, 4MEN còn chú trọng&nbsp;phát triển hệ thống chăm sóc và bán hàng online, đặt -&nbsp;giao hàng nhanh chóng&nbsp;đến tận tay người tiêu dùng trên toàn quốc thông qua website:&nbsp;</span></span><span style=\"font-weight: 700;\"><a href=\"https://4menshop.com/\" style=\"color: rgb(214, 100, 74); transition: all 0.4s ease 0s; outline: 0px;\">4menshop.com</a></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(102, 102, 102); line-height: 22px; text-align: justify;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\">VĂN HÓA 4MEN</span></span><br>Đến với 4MEN, Quý khách sẽ được trải nghiệm một giá trị mới, phong cách mới không chỉ đơn thuần là được tư vấn&nbsp;thời trang, chúng tôi mong muốn được chăm sóc và thấu hiểu khách hàng nhằm đảm bảo được sự hài lòng tuyệt đối cũng như sự&nbsp;tin tưởng&nbsp;gửi gắm&nbsp;từ qúy khách.<br>Với sự&nbsp;tận tâm và chuyên nghiệp của đội ngũ&nbsp;quản lý cũng như toàn thể nhân viên tại 4MEN, chúng tôi không ngừng&nbsp;nỗ lực và&nbsp;đề cao quyền lợi của khách hàng làm mục tiêu&nbsp;trên hết. Phục vụ khách hàng một cách nhiệt tình và chu đáo cũng là cách để 4MEN chúng tôi trau dồi, tích lũy văn hóa cho thương hiệu của mình ngày một thêm lớn mạnh.</span></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(102, 102, 102); line-height: 22px; text-align: justify;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-weight: 700;\">Chọn&nbsp;4MEN, bạn đang lựa chọn sự hoàn hảo cho điểm nhấn&nbsp;thời trang của chính mình!</span></span></span></p></div>', NULL, '2020-07-14 17:04:56', '2020-07-14 17:04:56'),
(2, 'Chính sách giao hàng', 'chinh-sach-giao-hang', '<h1 class=\"post-title\" style=\"margin: 20px 0px 10px; font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(68, 68, 68); font-size: 26px; letter-spacing: 0.5px;\">Chính sách giao hàng</h1><div class=\"space30\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px; margin-bottom: 30px !important;\"></div><div class=\"article-content\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px;\"><div><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: 700;\">4MEN&nbsp;</span>giao hàng tận nơi trên toàn quốc với chính sách giao hàng cụ thể như sau:</span></span></span><br>&nbsp;</div><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: 700;\">1. PHÍ GIAO HÀNG TẬN NHÀ:</span><br><span style=\"font-weight: 700;\">4MEN</span>&nbsp;áp dụng mức phí giao hàng theo bảng giá bên dưới:</span></span></span><br><br><img src=\"https://4menshop.com/images/2019/12/20191216_eca0c44558aed26248cc4f0c60d99b1a_1576485290.jpg\" alt=\"Chính sách giao hàng - 1\" style=\"border: 0px; max-width: 100%;\"><div>&nbsp;</div><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: 700;\">Khu vực TP.HCM:</span></span></span></span><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; padding: 0px;\"><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: 700;\"><em>Nội Thành:</em></span>&nbsp;Các quận: 1, 2, 3, 4, 5, 6, 7, 8, 10, 11, Bình Thạnh, Gò Vấp, Phú Nhuận, Tân Bình, Tân Phú</span></span></span></li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: 700;\"><em>Ngoại Thành:</em></span>&nbsp;Các quận - huyện: 9, 12, Bình Chánh, Bình Tân, Cần Giờ, Củ Chi, Hóc Môn, Nhà Bè, Thủ Đức</span></span></span>.<span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"></span></span></span></li></ul><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\"><span style=\"font-weight: 700;\">*</span></span></span></span><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\">&nbsp;Nội thành HCM áp dụng gói ship hẹn giờ theo yêu cầu khách hàng, do nhân viên của 4MEN trực tiếp giao hàng; Các khu vực còn lại sẽ ship bằng dịch vụ của công ty chuyển phát nhanh&nbsp;<em>Giao hàng nhanh</em>.<br><br><span style=\"font-weight: 700;\">2. THỜI GIAN GIAO HÀNG:</span></span></span></span><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; padding: 0px;\"><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\">Thời gian vận chuyển hàng thường mất từ 2 - 3 ngày làm việc (không tính thứ bảy, chủ nhật hay các ngày lễ tết).&nbsp;</span></span></span></li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\">Chỉ tiêu thời gian trên được tính đến trung tâm tỉnh, thành phố của khách hàng,&nbsp; Nếu khách hàng ở tại Huyện, Xã cộng thêm 1 – 2 ngày&nbsp;(tùy vào nơi đến).</span></span></span></li></ul><br><span style=\"font-size: 16px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">*</span></span></span><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\">&nbsp;Việc giao hàng được thực hiện trong giờ hành chánh.</span></span></span><br><span style=\"font-size: 16px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">*</span></span></span><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-size: 18px;\"><span style=\"font-family: &quot;times new roman&quot;, times, serif;\">&nbsp;Khi nhận hàng quý khách cần xem lại mặt hàng vừa nhận, nếu mặt hàng vừa giao không đúng theo yêu cầu của quý khách, quý khách có thể từ chối nhận hàng.</span></span></span></div>', NULL, '2020-07-14 17:06:03', '2020-07-14 17:06:03'),
(3, 'Chính sách đổi hàng', 'chinh-sach-doi-hang', '<h1 class=\"post-title\" style=\"margin: 20px 0px 10px; font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(68, 68, 68); font-size: 26px; letter-spacing: 0.5px;\">Chính sách đổi hàng</h1><div class=\"space30\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px; margin-bottom: 30px !important;\"></div><div class=\"article-content\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 16px;\"><span style=\"font-weight: 700;\">ĐỐI VỚI KHÁCH MUA TẠI CỬA HÀNG:</span></span></span><br>- Thời gian: trong vòng 5 ngày<br>- Chính sách:&nbsp;Đổi sản phẩm có giá trị tương đương hoặc nhỏ hơn<br>- Cách thức: Đổi sản phẩm tại bất kỳ chi nhánh nào của hệ thống Thời trang nam 4MEN (sau 15h chiều).<br><br><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\"><span style=\"font-size: 16px;\">ĐỐI VỚI KHÁCH MUA HÀNG ONLINE</span></span></span><br>- Thời gian: trong vòng 15 ngày<br>- Chính sách:&nbsp;Đổi sản phẩm có giá trị tương đương hoặc lớn hơn<br>- Cách thức:<br>&nbsp; &nbsp; &nbsp;+ Quý khách vui lòng gọi về SĐT:&nbsp;<span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">0868.044.644</span></span>&nbsp;để thông báo<br>&nbsp; &nbsp; &nbsp;+&nbsp;Quý khách&nbsp;gửi hàng về địa chỉ:&nbsp;<span style=\"font-weight: 700;\"><span style=\"color: rgb(255, 0, 0);\">4MEN</span>&nbsp;-&nbsp;</span><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-weight: 700;\">458 Lê Văn Sỹ, P.14, Q.3, Tp.HCM</span></span><br>&nbsp;&nbsp; &nbsp;&nbsp;+ Sau khi nhận được sản phẩm, 4MEN sẽ kiểm tra và đổi lại sản phẩm khác cho quý khách<br><br><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\"><span style=\"font-size: 16px;\">ĐỐI VỚI SẢN PHẨM SALE OFF, VUI LÒNG KHÔNG ĐỔI TRẢ.</span></span></span><br><br><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">Lưu ý:</span></span>&nbsp;Sản phẩm có thể đổi khi đủ các điều kiện sau:<br>- &nbsp;Sản phẩm còn mới, còn đầy đủ tem, nhãn mác<br>- &nbsp;Còn hóa đơn mua hàng tại 4MEN<br>- &nbsp;Sản phẩm không bị dơ bẩn, hư hỏng, có mùi lạ hoặc có dấu hiệu đã qua giặt tẩy hoặc qua sử dụng<br>- &nbsp;Sản phẩm được xem là lỗi kĩ thuật<br>- 4MEN không chấp nhận yêu cầu trả hàng và hoàn tiền lại</div>', NULL, '2020-07-14 17:06:58', '2020-07-14 17:06:58'),
(4, 'Email', 'email', '<p>AllStore@gmail.com</p>', NULL, '2020-07-14 17:07:55', '2020-07-14 17:07:55'),
(5, 'Hotline', 'hotline', '<p>18001988</p>', NULL, '2020-07-14 17:08:26', '2020-07-14 17:08:26'),
(6, 'Hướng dẫn đặt hàng', 'huong-dan-dat-hang', '<h1 class=\"post-title\" style=\"margin: 20px 0px 10px; font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(68, 68, 68); font-size: 26px; letter-spacing: 0.5px;\">Hướng dẫn đặt hàng</h1><div class=\"space30\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px; margin-bottom: 30px !important;\"></div><div class=\"article-content\" style=\"color: rgb(68, 68, 68); font-family: UTMAvo, Tahoma, Verdana, Arial, sans-serif; font-size: 14px; letter-spacing: 0.5px;\"><div style=\"text-align: justify;\"><div><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-weight: 700;\"><span style=\"font-size: 20px;\">HƯỚNG DẪN MUA HÀNG TẠI HỆ THỐNG CỬA HÀNG THỜI TRANG&nbsp;4MEN</span></span></span><br><span style=\"color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>4MEN - hệ thống&nbsp;thời trang nam uy tín hiện đang sở hữu đến 15 chi nhánh, phân bố&nbsp;rộng khắp khu vực Đông Nam Bộ và Tây Nam Bộ. Quý khách hàng khi đến với hệ thống cửa hàng của 4MEN có thể hoàn toàn tin tưởng và hài lòng, từ&nbsp;phong cách và chất lượng&nbsp;sản cho đến thái độ, quy cách của nhân viên luôn được kiểm&nbsp;soát một cách chặt chẽ, đảm bảo quý&nbsp;khách hàng phải được phục vụ một cách chu đáo, chất lượng nhất.<br>Ngoài việc&nbsp;tham khảo hoặc liên hệ với 4MEN&nbsp;để được giải đáp&nbsp;mọi vấn đề liên quan đến&nbsp;cửa hàng, sản phẩm,... Quý khách hàng có thể&nbsp;trực tiếp đến Store&nbsp;4MEN gần nhất để tham gia mua sắm và nhận thêm&nbsp;nhiều ưu đãi hấp dẫn khác.</span></div><div>&nbsp;<div><span style=\"font-size: 20px;\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">HỆ THỐNG CỬA HÀNG THỜI TRANG 4MEN<br>4MEN KHU VỰC TP.HCM</span></span></span></div><div><div><div style=\"margin-left: -15px; margin-right: -15px;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; padding: 0px;\"><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Quận 3</span>&nbsp;<br>- Địa chỉ: 458 Lê Văn Sỹ, P.14, Q.3&nbsp;<br>- Điện thoại:&nbsp;<span style=\"color: rgb(34, 34, 34); font-family: &quot;segoe ui&quot;, segoeuipc, &quot;san francisco&quot;, &quot;helvetica neue&quot;, helvetica, &quot;lucida grande&quot;, roboto, ubuntu, tahoma, &quot;microsoft sans serif&quot;, tahoma, arial, sans-serif; font-size: 15px;\">0865413593</span></li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Quận 7</span>&nbsp;<br>- Địa chỉ: 384 Huỳnh Tấn Phát, P. Bình Thuận, Q.7&nbsp;<br>- Điện thoại: 0968 168 584</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Quận 9</span>&nbsp;<br>- Địa chỉ: 199 Đỗ Xuân Hợp, P. Phước Long B, Q.9<br>- Điện thoại: 02866 595 044</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Quận Gò Vấp</span><br>- Địa chỉ: 526 Quang Trung, P.11, Q. Gò Vấp&nbsp;<br>- Điện thoại: 0989 830 685</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Quận Bình Thạnh</span><br>- Địa chỉ:&nbsp;<span style=\"font-family: utmavo, tahoma, verdana, arial, sans-serif;\">50 Nguyễn Gia Trí (Đường D2 cũ), P.25, Q. Bình Thạnh</span><br>- Điện thoại:&nbsp;02866827164</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Tân Phú</span>&nbsp;<br>- Địa chỉ: 533 Âu Cơ, P. Phú Trung, Q. Tân Phú&nbsp;<br>- Điện thoại: 0286 286 9504</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Bình Tân</span>&nbsp;<br>- Địa chỉ: 69-71 Nguyễn Thị Tú, P. Bình Hưng Hòa B, Q. Bình Tân&nbsp;<br>- Điện thoại: 0286 2755 746</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Tân Bình</span>&nbsp;<br>- Địa chỉ: 798 Cách Mạng Tháng 8, P.5, Q. Tân Bình&nbsp;<br>- Điện thoại: 0975 215 734</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Hóc Môn</span>&nbsp;<br>- Địa chỉ: 122 Nguyễn Ảnh Thủ, Trung Chánh, H. Hóc Môn&nbsp;<br>- Điện thoại: 0383 261 004</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Thủ Đức</span>&nbsp;<br>- ĐC: 166 Võ Văn Ngân, P. Bình Thọ, Q. Thủ Đức&nbsp;<br>- Điện thoại: 0394 945 773</li></ul></div></div><div><h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"font-size: 20px;\"><span style=\"font-weight: 700;\">4MEN&nbsp;ĐÔNG NAM BỘ</span></span></h3><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; padding: 0px;\"><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Biên Hòa - Đồng Nai</span>&nbsp;<br>- Địa chỉ: 1333 Phạm Văn Thuận, P. Thống Nhất, Tp. Biên Hòa&nbsp;<br>- Điện thoại: 0251 655 7607</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Vũng Tàu</span>&nbsp;<br>- Địa chỉ: 344 Trương Công Định, P.8, TP. Vũng Tàu&nbsp;<br>- Điện thoại: 0254 6545 009<span style=\"font-weight: 700;\">&nbsp;</span></li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh&nbsp;</span><span style=\"font-weight: 700;\">Thủ Dầu Một - Bình Dương</span><br>- Địa chỉ:&nbsp;<span style=\"font-family: utmavo, tahoma, verdana, arial, sans-serif;\">103 đường Yersin , P. Phú Cường, Tp. Thủ Dầu Một, Bình Dương</span><br>- Điện thoại:&nbsp;<a href=\"tel:0365836367\" rel=\"nofollow\" style=\"color: rgb(187, 187, 187); transition: all 0.4s ease 0s; outline: 0px;\"><span style=\"color: rgb(0, 0, 0);\">0365 836 367</span></a></li></ul><h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"font-size: 20px;\"><span style=\"font-weight: 700;\">4MEN TÂY NAM BỘ</span></span></h3><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; padding: 0px;\"><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Long Xuyên - An Giang</span>&nbsp;<br>- Địa chỉ: 904C Hà Hoàng Hổ, P. Mỹ Xuyên, Tp. Long Xuyên&nbsp;<br>- Điện thoại: 0865 738 031</li><li style=\"margin: 0px; list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Chi nhánh Cần Thơ</span><br>- Địa chỉ:&nbsp;<span style=\"font-family: utmavo, tahoma, verdana, arial, sans-serif;\">73 Nguyễn Việt Hồng, P. An Phú, Q. Ninh Kiều, Cần Thơ</span><br>- Điện thoại:&nbsp;<a href=\"tel:+84989662315\" rel=\"nofollow\" style=\"color: rgb(187, 187, 187); transition: all 0.4s ease 0s; outline: 0px;\"><span style=\"color: rgb(0, 0, 0);\">0989 662 315</span></a></li></ul></div></div></div><div><span style=\"color: rgb(178, 34, 34);\"><span style=\"font-size: 16px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span><br><span style=\"font-weight: 700;\"><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-size: 20px;\">HƯỚNG DẪN MUA HÀNG QUA ĐIỆN THOẠI</span></span></span><br>&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(0, 0, 0);\">&nbsp;&nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Quý khách vui lòng gọi vào số:</span>&nbsp;<span style=\"font-size: 18px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">0868.044.644&nbsp;</span></span></span><span style=\"font-size: 16px;\"><span style=\"font-size: 14px;\"><span style=\"color: rgb(0, 0, 0);\">hoặc</span></span></span><span style=\"font-weight: 700;\"><span style=\"font-size: 16px;\">&nbsp;<span style=\"font-size: 18px;\"><span style=\"color: rgb(255, 0, 0);\">0868.444.644</span></span></span></span>&nbsp;<span style=\"color: rgb(0, 0, 0);\">để cung cấp các thông tin: Mã hàng, size, số lượng, tên, số điện thoại&nbsp;và địa chỉ người nhận hàng. Nhân viên tổng đài 4MEN sẽ tư vấn cách thức đặt hàng dễ dàng và nhanh nhất cho quý khách.</span></div><div>&nbsp;</div><div><span style=\"font-weight: 700;\"><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-size: 20px;\">HƯỚNG DẪN MUA HÀNG QUA WEBSITE 4MEN</span></span></span><br><br><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">Để mua hàng online qua website 4MEN, quý khách vui lòng làm theo các bước hướng dẫn sau:<br>Bước đầu tiên:</span>&nbsp;Tại sản phẩm cần mua,&nbsp;<span style=\"font-weight: 700;\">chọn size, chọn số lượng</span>, sau đó:</span><br><span style=\"color: rgb(0, 0, 0);\">- Nhấp&nbsp;vào</span>&nbsp;<span style=\"color: rgb(0, 0, 0);\">ô</span>&nbsp;<span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">MUA NGAY</span></span>&nbsp;,&nbsp;<span style=\"color: rgb(0, 0, 0);\">tiếp tục chuyển qua bước 1</span></div><div style=\"text-align: center;\"><br><img src=\"http://4menshop.com/images/2017/12/20171206_403db50aded604ff243f8b2750b1567f_1512550567.jpg\" alt=\"Hướng dẫn đặt hàng - 1\" style=\"border: 0px; max-width: 100%;\"></div><div><br><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">BƯỚC&nbsp;1: Nhập&nbsp;thông tin cần thiết</span></span><br><span style=\"color: rgb(0, 0, 0);\">- Kiểm tra lại thông tin sản phẩm đặt hàng &nbsp;</span><span style=\"color: rgb(0, 0, 0);\">(tên sản phẩm, số lượng, size,&nbsp;</span><span style=\"color: rgb(0, 0, 0);\">đơn giá)&nbsp;tại mục&nbsp;</span><span style=\"font-size: 18px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">1</span></span></span>&nbsp;<span style=\"color: rgb(0, 0, 0);\">ở cột&nbsp;<span style=\"font-weight: 700;\">\"Giỏ hàng của bạn\"</span>&nbsp;bên phải</span><br><span style=\"color: rgb(0, 0, 0);\">-&nbsp;Nhập thông tin liên hệ đầy đủ của người mua tại mục</span>&nbsp;&nbsp;<span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\"><span style=\"color: rgb(255, 0, 0);\">2</span></span></span><br><span style=\"color: rgb(0, 0, 0);\">- Nhập địa chỉ giao hàng tại mục</span>&nbsp;&nbsp;<span style=\"font-size: 18px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">3</span></span></span><br><span style=\"color: rgb(0, 0, 0);\">- Q</span><span style=\"color: rgb(0, 0, 0);\">uý khách có thể theo dõi phí vận chuyển (PVC)&nbsp;&nbsp;</span><span style=\"color: rgb(0, 0, 0);\">phát sinh và tổng tiền thanh toán&nbsp;tại mục&nbsp;</span><span style=\"font-size: 24px;\"><span style=\"color: rgb(255, 0, 0);\">*</span></span>&nbsp;<span style=\"color: rgb(0, 0, 0);\">ở cột&nbsp;<span style=\"font-weight: 700;\">\"Thông tin đơn hàng\"</span>&nbsp;bên phải.</span><br><span style=\"color: rgb(0, 0, 0);\">- Nhấn chọn&nbsp;</span><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">GỬI ĐƠN HÀNG</span></span><span style=\"font-weight: 700;\">&nbsp;</span><span style=\"color: rgb(0, 0, 0);\">tại mục</span>&nbsp;<span style=\"font-size: 18px;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">4&nbsp;</span></span></span><span style=\"color: rgb(0, 0, 0);\">, hoặc mục</span><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">&nbsp;</span></span><span style=\"font-size: 22px;\"><span style=\"font-weight: 700;\"><span style=\"color: rgb(255, 0, 0);\">*</span></span></span></div><div style=\"text-align: center;\"><br><img src=\"http://4menshop.com/images/2017/12/20171206_3fc4e234e3a6fc3acbc77a93a5f3c7a4_1512550567.jpg\" alt=\"Hướng dẫn đặt hàng - 2\" style=\"border: 0px; max-width: 100%;\"></div><div><br><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">BƯỚC&nbsp;2: Nhận thông báo&nbsp;gửi đơn hàng</span><br>- Quý khách sau khi nhấn nút GỬI ĐƠN HÀNG sẽ nhận được thông báo&nbsp;đặt hàng thành công, để mua thêm sản phẩm vui lòng nhấn chọn</span>&nbsp;<span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">TIẾP TỤC THAM GIA MUA HÀNG</span></span><br><br><img src=\"http://4menshop.com/images/2015/07/20150717_f10dec5cab127665f8be86bc0524f146_1437129867.jpg\" alt=\"Hướng dẫn đặt hàng - 3\" style=\"border: 0px; max-width: 100%;\"><br><br><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">Sau khi nhận được đơn hàng của quý khách, 4MEN sẽ phản hồi lại trong vòng 24h để xác nhận đơn hàng, hình thức thanh toán, giao hàng, chuyển hàng hoặc thông báo các trường hợp đơn hàng gặp sự cố.</span></span><br>&nbsp;</div><div style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0);\">Cảm ơn quý khách đã tin tưởng và lựa chọn&nbsp;THƯƠNG HIỆU THỜI TRANG NAM&nbsp;4MEN<br>Chúc quý khách có những giây phút mua sắm vui vẻ.</span></div></div></div>', NULL, '2020-07-14 17:09:39', '2020-07-14 17:09:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `employee_id` int(10) UNSIGNED DEFAULT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_date` datetime DEFAULT NULL,
  `total` int(11) DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `employee_id`, `status`, `delivery_date`, `total`, `name`, `address`, `phone`, `email`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(14, 13, 3, 3, '2020-08-09 00:00:00', 1110000, 'Công Khánh', '92 Đinh Tiên Hoàng - Q.Thanh Khê - TP.Đà Nẵng', '0362568046', 'congkhanh@gmail.com', NULL, '2020-08-02 03:07:13', '2020-08-09 05:02:57', NULL),
(15, 13, 3, 3, '2020-08-09 00:00:00', 1510000, 'Công Khánh', '92 Đinh Tiên Hoàng - Q.Thanh Khê - TP.Đà Nẵng', '0362568046', 'congkhanh@gmail.com', NULL, '2020-08-04 21:04:07', '2020-08-09 04:57:38', NULL),
(16, 14, 3, 3, '2020-08-09 00:00:00', 4150000, 'Công Khánh 1', 'Gia Lai', '0333999666', 'congkhanh1@gmail.com', 'shiper giao hàng vào buổi chiều. buổi sáng đi làm không nghe được điện thoại.', '2020-08-09 04:52:45', '2020-08-09 04:57:44', NULL),
(17, 14, 3, 1, '2020-08-18 00:00:00', 260000, 'Công Khánh 1', 'Gia Lai', '0333999666', 'congkhanh1@gmail.com', NULL, '2020-08-09 04:53:14', '2020-08-18 03:43:27', NULL),
(18, 14, 3, 0, '2020-08-18 00:00:00', 1200000, 'Công Khánh 1', 'Gia Lai', '0333999666', 'congkhanh1@gmail.com', 'Giao hàng vào cuối tuần. thứ 2-6 bận', '2020-08-09 04:53:58', '2020-08-18 03:33:14', NULL),
(19, 14, 3, 4, '2020-08-09 00:00:00', 560000, 'Công Khánh 1', 'Gia Lai', '0333999666', 'congkhanh1@gmail.com', NULL, '2020-08-09 05:06:36', '2020-08-09 05:08:42', NULL),
(20, 14, 3, 5, '2020-08-09 00:00:00', 1120000, 'Công Khánh 1', 'Gia Lai', '0333999666', 'congkhanh1@gmail.com', NULL, '2020-08-09 05:09:23', '2020-08-09 05:11:03', NULL),
(21, 13, NULL, 0, NULL, 210000, 'Công Khánh', '92 Đinh Tiên Hoàng - Q.Thanh Khê - TP.Đà Nẵng', '0362568046', 'congkhanh@gmail.com', NULL, '2020-08-18 03:32:46', '2020-08-18 03:32:46', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantities` int(10) UNSIGNED DEFAULT NULL,
  `size` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `quantities`, `size`, `created_at`, `updated_at`, `deleted_at`) VALUES
(23, 14, 61, 280000, 3, NULL, '2020-08-02 03:07:13', '2020-08-02 03:07:13', NULL),
(24, 14, 60, 270000, 1, NULL, '2020-08-02 03:07:13', '2020-08-02 03:07:13', NULL),
(25, 15, 13, 200000, 1, NULL, '2020-08-04 21:04:07', '2020-08-04 21:04:07', NULL),
(26, 15, 57, 260000, 1, NULL, '2020-08-04 21:04:07', '2020-08-04 21:04:07', NULL),
(27, 15, 55, 250000, 1, NULL, '2020-08-04 21:04:08', '2020-08-04 21:04:08', NULL),
(28, 15, 13, 200000, 1, 'S', '2020-08-04 21:04:08', '2020-08-04 21:04:08', NULL),
(29, 15, 13, 200000, 3, 'XS', '2020-08-04 21:04:08', '2020-08-04 21:04:08', NULL),
(30, 16, 61, 280000, 10, 'S', '2020-08-09 04:52:45', '2020-08-09 04:52:45', NULL),
(31, 16, 59, 270000, 5, NULL, '2020-08-09 04:52:45', '2020-08-09 04:52:45', NULL),
(32, 17, 57, 260000, 1, 'S', '2020-08-09 04:53:14', '2020-08-09 04:53:14', NULL),
(33, 18, 54, 200000, 6, 'S', '2020-08-09 04:53:58', '2020-08-09 04:53:58', NULL),
(34, 19, 61, 280000, 2, 'S', '2020-08-09 05:06:36', '2020-08-09 05:06:36', NULL),
(35, 20, 61, 280000, 4, 'S', '2020-08-09 05:09:23', '2020-08-09 05:09:23', NULL),
(36, 21, 14, 210000, 1, NULL, '2020-08-18 03:32:46', '2020-08-18 03:32:46', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED DEFAULT NULL,
  `category_product_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantities` int(10) UNSIGNED DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `quantity_sell` int(11) NOT NULL DEFAULT 0,
  `quantity_access` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `supplier_id`, `category_product_id`, `name`, `slug`, `price`, `description`, `quantities`, `size`, `image`, `status`, `quantity_sell`, `quantity_access`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13, 6, 7, 'ÁO THUN CỔ TIM HỒNG AT819', 'ao-thun-co-tim-hong-at819', 200000, '<p>ÁO THUN CỔ TIM HỒNG AT819<br></p>', 145, 'XS,S,M,L,XL', 'sZn3axOXyFJTujOxTsR7yFZoR5d3h6TrVhBmSotl.jpeg', 1, 0, 12, '2020-08-02 01:50:00', '2020-08-09 05:12:48', NULL),
(14, 6, 7, 'ÁO THUN CỔ TIM TÍM ĐẬM AT819', 'ao-thun-co-tim-tim-dam-at819', 210000, '<p>ÁO THUN CỔ TIM TÍM ĐẬM AT819<br></p>', 149, 'XS,S,M,L', '8WZ0DDQRp7C8j8KFmlgexzGWCdZqJ3udZaZWe8Uw.jpeg', 1, 0, 0, '2020-08-02 01:51:14', '2020-08-18 03:32:46', NULL),
(15, 6, 7, 'ÁO THUN CỔ TIM XANH BIỂN ĐẬM AT819', 'ao-thun-co-tim-xanh-bien-dam-at819', 210000, '<p>ÁO THUN CỔ TIM XANH BIỂN ĐẬM AT819<br></p>', 150, 'XS,S,M,L,XL', '2nmBDCNhPe2GnBvIEmhvInbF7pS9UkXAM92cWdux.jpeg', 1, 0, 0, '2020-08-02 01:51:57', '2020-08-02 01:51:57', NULL),
(16, 7, 7, 'ÁO THUN IN CHỮ AT862 MÀU CÀ PHÊ', 'ao-thun-in-chu-at862-mau-ca-phe', 220000, '<p>Chất liệu: 100% vải cotton hai chiều.</p><p>Form: Regular</p><p>Ưu điểm: Mềm mịn, thấm hút mồ hôi tốt. Form suông vừa phải tạo cảm giác thoải mái,&nbsp; thiết kế phóng khoáng trẻ trung hơn với điểm nhấn in chữ trên ngực áo.</p>', 150, 'XS,S,M,L', 'A6oXvLmDRfdenYoDloxlOxtJM2Ij75UWyNbkid0E.jpeg', 1, 0, 0, '2020-08-02 01:52:59', '2020-08-02 01:52:59', NULL),
(17, 7, 7, 'ÁO THUN IN CHỮ AT862 MÀU ĐEN', 'ao-thun-in-chu-at862-mau-den', 210000, '<p>Chất liệu: 100% vải cotton hai chiều.</p><p>Form: Regular</p><p>Ưu điểm: Mềm mịn, thấm hút mồ hôi tốt. Form suông vừa phải tạo cảm giác thoải mái,&nbsp; thiết kế phóng khoáng trẻ trung hơn với điểm nhấn in chữ trên ngực áo.</p>', 150, 'XS,S,M,L,XL', 'KPknXsgFGoVwSJHuZyr9GBpTz1B2G2bd6uCj0nqj.jpeg', 1, 0, 0, '2020-08-02 01:54:01', '2020-08-02 01:54:01', NULL),
(18, 7, 7, 'ÁO THUN IN SUMMER FORM REGULAR AT006 MÀU CÀ PHÊ', 'ao-thun-in-summer-form-regular-at006-mau-ca-phe', 225000, '<p>Chất liệu: 100% cotton.&nbsp;</p><p>Form: Regular</p><p>Đặc tính: Từ chất vải cotton 2 chiều siêu mềm mịn, thiết kế áo thun trở nên thoáng mát hơn, sở hữu độ co giãn và thấm hút mồ hôi cực kì tốt.</p><p>Hướng dẫn sử dụng:</p><p>- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.</p><p>- Không được dùng hóa chất tẩy.</p><p>- Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.</p>', 100, 'XS,S,M,L,XL', '7pUaQzkuMbw3QEnFWWDBkHiEU5Uf2ZPq34V5JQ1K.jpeg', 1, 0, 0, '2020-08-02 01:54:52', '2020-08-02 01:54:52', NULL),
(19, 7, 7, 'ÁO THUN IN SUMMER FORM REGULAR AT006 MÀU TRẮNG', 'ao-thun-in-summer-form-regular-at006-mau-trang', 200000, '<p>Chất liệu: 100% cotton.&nbsp;</p><p>Form: Regular</p><p>Đặc tính: Từ chất vải cotton 2 chiều siêu mềm mịn, thiết kế áo thun trở nên thoáng mát hơn, sở hữu độ co giãn và thấm hút mồ hôi cực kì tốt.</p><p>Hướng dẫn sử dụng:</p><p>- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.</p><p>- Không được dùng hóa chất tẩy.</p><p>- Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.</p>', 200, 'XS,S,M,L', '6jAAEi6ZNCmrrnI9WvxNmtEiTxzeToG7OL8n12pZ.jpeg', 1, 0, 0, '2020-08-02 01:55:44', '2020-08-02 01:55:44', NULL),
(20, 6, 7, 'ÁO THUN RÃ PHỐI AT863 MÀU BÒ', 'ao-thun-ra-phoi-at863-mau-bo', 230000, '<p>Chất liệu: 100% vải cotton hai chiều.</p><p>Form: Regular</p><p>Ưu điểm: Bền màu và mềm mịn, thấm hút mồ hôi tốt.</p><p>T-Shirt form dáng Regular tạo cảm giác năng động và thoải mái, thiết kế phối rã kết hợp giữa các gam màu trung tính là điểm nhấn đặc biệt trong xu hướng thời trang hiện đại và phóng khoáng.</p>', 100, 'XS,S,M,L', 'tmBxQDtaadzLthuPFfh5DqbISN2473FjNwm3m2CT.jpeg', 1, 0, 0, '2020-08-02 01:56:40', '2020-08-02 01:56:40', NULL),
(21, 6, 7, 'ÁO THUN RÃ PHỐI AT863 MÀU TRẮNG', 'ao-thun-ra-phoi-at863-mau-trang', 210000, '<p>Chất liệu: 100% vải cotton hai chiều.</p><p>Form: Regular</p><p>Ưu điểm: Bền màu và mềm mịn, thấm hút mồ hôi tốt.</p><p>T-Shirt form dáng Regular tạo cảm giác năng động và thoải mái, thiết kế phối rã kết hợp giữa các gam màu trung tính là điểm nhấn đặc biệt trong xu hướng thời trang hiện đại và phóng khoáng.</p>', 120, 'XS,S,M,L,XL', 'MnImzNnB03es8ZjyM8Mo9U2r27ZPnGm3aMKRARjb.jpeg', 1, 0, 0, '2020-08-02 01:57:25', '2020-08-02 01:57:25', NULL),
(22, 7, 7, 'ÁO THUN SỌC NGANG FORM REGULAR AT003 MÀU ĐỎ', 'ao-thun-soc-ngang-form-regular-at003-mau-do', 210000, '<p>Chất liệu: 100% cotton.&nbsp;</p><p>Form: Regular</p><p>Đặc tính: Thiết kế 100% từ chất liệu cotton 4 chiều siêu mềm mịn, thoáng mát giúp áo sở hữu độ co giãn và thấm hút mồ hôi cực kì tốt.</p><p>Hướng dẫn sử dụng:</p><p>- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.</p><p>- Không được dùng hóa chất tẩy.</p><p>- Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.</p>', 150, 'XS,S,M,L', 'nvKJedbYScXEKLI9GTmFqFBU29FhHYbr0ryc7FPG.png', 1, 0, 0, '2020-08-02 01:58:23', '2020-08-02 01:58:23', NULL),
(23, 7, 7, 'ÁO THUN SỌC NGANG FORM REGULAR AT003 MÀU XANH', 'ao-thun-soc-ngang-form-regular-at003-mau-xanh', 200000, '<p>Chất liệu: 100% cotton.&nbsp;</p><p>Form: Regular</p><p>Đặc tính: Thiết kế 100% từ chất liệu cotton 4 chiều siêu mềm mịn, thoáng mát giúp áo sở hữu độ co giãn và thấm hút mồ hôi cực kì tốt.</p><p>Hướng dẫn sử dụng:</p><p>- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.</p><p>- Không được dùng hóa chất tẩy.</p><p>- Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.</p>', 100, 'XS,S,M,L', 'TgGzEfrsltqTLu4jI8AohoagAoerrarYYrA3X2AB.png', 1, 0, 0, '2020-08-02 01:59:02', '2020-08-02 01:59:02', NULL),
(24, 8, 7, 'ÁO THUN SỌC NGANG NGỰC IN CHỮ AT001 MÀU XANH ĐEN', 'ao-thun-soc-ngang-nguc-in-chu-at001-mau-xanh-den', 220000, '<p>Chất liệu: 100% cotton.&nbsp;</p><p>Form: Slim-fit</p><p>Đặc tính: Áo sở hữu độ co giãn, thoáng mát và thấm hút mồ hôi cực kì tốt. Form slim-fit ôm cơ thể gọn gàng, tạo cảm giác săn chắc đầy nam tính.</p><p>Hướng dẫn sử dụng:</p><p>- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.</p><p>- Không được dùng hóa chất tẩy.</p><p>- Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.</p>', 150, 'S,M,L', 'oV90Y1KLKZTdwdjDleDcNjPj8dg9BJIFjG0y8Nf6.png', 1, 0, 0, '2020-08-02 01:59:52', '2020-08-02 01:59:52', NULL),
(25, 6, 7, 'ÁO THUN TRƠN CĂN BẢN FORM SLIMFIT AT018 MÀU ĐỎ', 'ao-thun-tron-can-ban-form-slimfit-at018-mau-do', 210000, '<p>Chất liệu: 100% cotton 4 chiều</p><p>Form: Slimfit</p><p>Đặc tính: Đa dạng gam màu, dễ dàng mix&amp;match với mọi phong cách.</p><p>Hướng dẫn sử dụng:</p><p>- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.</p><p>- Không được dùng hóa chất tẩy.</p><p>- Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.</p>', 200, 'XS,S,M,L', 'bq7zjLLxbXBSjwlxn3ZJTwPWDYBlX0ftSbFYGxMp.png', 1, 0, 0, '2020-08-02 02:00:52', '2020-08-02 02:00:52', NULL),
(26, 6, 7, 'ÁO THUN TRƠN CĂN BẢN FORM SLIMFIT AT018 MÀU TRẮNG', 'ao-thun-tron-can-ban-form-slimfit-at018-mau-trang', 210000, '<p>Chất liệu: 100% cotton 4 chiều</p><p>Form: Slimfit</p><p>Đặc tính: Đa dạng gam màu, dễ dàng mix&amp;match với mọi phong cách.</p><p>Hướng dẫn sử dụng:</p><p>- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.</p><p>- Không được dùng hóa chất tẩy.</p><p>- Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.</p>', 120, 'XS,S,M,L', 'bSRuKNdRbVen8OAN5QlSkxiFIlyU2xZ6qXg1Eo3a.png', 1, 0, 0, '2020-08-02 02:01:37', '2020-08-02 02:01:37', NULL),
(27, 7, 7, 'ÁO THUN TRƠN CĂN BẢN FORM SLIMFIT AT018 MÀU VÀNG', 'ao-thun-tron-can-ban-form-slimfit-at018-mau-vang', 200000, '<p>Chất liệu: 100% cotton 4 chiều</p><p>Form: Slimfit</p><p>Đặc tính: Đa dạng gam màu, dễ dàng mix&amp;match với mọi phong cách.</p><p>Hướng dẫn sử dụng:</p><p>- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.</p><p>- Không được dùng hóa chất tẩy.</p><p>- Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.</p>', 100, 'XS,S,M,L', '1E7QMBYr9NGiPGN0DvsrVbBODOaOrcTTuUmjYW3f.png', 1, 0, 0, '2020-08-02 02:02:14', '2020-08-02 02:02:14', NULL),
(28, 9, 7, 'ÁO THUN TAY DÀI ĐEN AT811', 'ao-thun-tay-dai-den-at811', 300000, '<p>Áo Thun Tay Dài Đen AT811 thuộc bộ thể thao chất thun nỉ cao cấp, kiểu dáng cá tính, năng động. Sản phẩm có quần jogger thun chung bộ, bạn có thể mua thêm hoặc mặc áo lẻ đều được.<br></p>', 100, 'S,M,L,XL', 'fU1Ury89J8nHhWJBMzThBX9PjsWmaYWe4p9QoVV8.jpeg', 1, 0, 0, '2020-08-02 02:03:09', '2020-08-02 02:03:09', NULL),
(29, 9, 7, 'ÁO THUN TAY DÀI TRẮNG AT811', 'ao-thun-tay-dai-trang-at811', 300000, '<p>Áo Thun Tay Dài Trắng AT811 thuộc bộ thể thao chất thun nỉ cao cấp, kiểu dáng cá tính, năng động. Sản phẩm có quần jogger thun chung bộ, bạn có thể mua thêm hoặc mặc áo lẻ đều được.<br></p>', 100, 'S,M,L,XL', 'SrULzj1b4iB5r1dqOyFeiZCROq4MtdQkqP0pnzUt.jpeg', 1, 0, 0, '2020-08-02 02:03:48', '2020-08-02 02:03:48', NULL),
(30, 10, 8, 'ÁO SƠ MI CỔ LÃNH TỤ IN NGỰC ASM1309 MÀU TRẮNG', 'ao-so-mi-co-lanh-tu-in-nguc-asm1309-mau-trang', 350000, '<p>Chất liệu: Oxford 100% cotton.</p><p>Form: Slimfit</p><p>Ưu điểm: Chất liệu cotton oxford thân thiện với môi trường, thấm hút mồ hôi cực kỳ tốt.</p><p>Sơ mi Slimfit với thiết kế cổ lãnh tụ ưu tiên những đường may vừa vặn, hạn chế ôm sát nhằm tạo sự lôi cuốn sang trọng để tôn mọi vóc dáng.</p>', 130, 'S,M,L,XL', 'zSTU8VX3pP7dB9CTjlMZWrpAehuv6x0JFV7a1ixI.jpeg', 1, 0, 0, '2020-08-02 02:06:35', '2020-08-02 02:06:35', NULL),
(31, 10, 8, 'AÓ SƠ MI CỔ LÃNH TỤ SỌC THÊU NGỰC ASM1312 MÀU XANH', 'ao-so-mi-co-lanh-tu-soc-theu-nguc-asm1312-mau-xanh', 350000, '<p>Chất liệu: 40% cotton, 60% polyester.</p><p>Form: Regular</p><p>Ưu điểm: Chất liệu cotton thấm hút tốt và thân thiện với môi trường, form áo suông thoải mái và năng động khi kết hợp điểm nhấn thêu trước ngực.</p><p>Đây còn là Items ưa chuộng của hầu hết phái mạnh bởi họa tiết kẻ sọc rất \'đa năng\' trong việc che đi khuyết điểm của các anh chàng \'bụng bia\' hoặc sở hữu chiều cao khiêm tốn.</p>', 100, 'S,M,L,XL', 'Pa0EallIvHECvOnZAD8YLLvCxIDduMg5BxHwirCp.jpeg', 1, 0, 0, '2020-08-02 02:07:19', '2020-08-02 02:07:19', NULL),
(32, 10, 8, 'ÁO SƠ MI ĐỎ ĐÔ ASM834', 'ao-so-mi-do-do-asm834', 350000, '<p>ÁO SƠ MI ĐỎ ĐÔ ASM834<br></p>', 100, 'S,M,L,XL', 'AeTHZ4UP5WsvBTa5NZSdsl2PaMMRBGaPewKamcbt.jpeg', 1, 0, 0, '2020-08-02 02:07:57', '2020-08-02 02:07:57', NULL),
(33, 10, 8, 'ÁO SƠ MI HỌA TIẾT XÁM ASM972', 'ao-so-mi-hoa-tiet-xam-asm972', 350000, '<p>Áo Sơ Mi Họa Tiết Xám ASM972 họa tiết cá mập búa độc đáo, siêu ngầu và trẻ trung. Chất liệu mềm mại, không nhăn nhàu, thấm hút tốt, thoáng mát và giặt mau khô. Form áo chuẩn tôn dáng là lựa chọn lý tưởng dành cho phái mạnh.<br></p>', 100, 'S,M,L,XL', 'Z870fbK8GiTpWf1PD2cuZsV6GpJjHgrGOqSQ6rvV.jpeg', 1, 0, 0, '2020-08-02 02:08:36', '2020-08-02 02:08:36', NULL),
(34, 10, 8, 'ÁO SƠ MI IN SỌC ASM006 MÀU TRẮNG', 'ao-so-mi-in-soc-asm006-mau-trang', 350000, '<p>Chất liệu: 100% cotton</p><p>Form: Regular</p><p>Ưu điểm: Hoạ tiết in sọc thanh lịch, thiết kế sơ mi 100% từ chất vải cotton thoáng mát và linh hoạt, thấm hút mồ hôi tốt.</p><p>Hướng dẫn sử dụng:</p><p>- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.</p><p>- Không được dùng hóa chất tẩy.</p><p>- Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.</p>', 100, 'S,M,L,XL', 'HtLgNr6SZnXMqc5af7GHdPvYNryaG65ZDRw4CTop.png', 1, 0, 0, '2020-08-02 02:09:15', '2020-08-02 02:09:15', NULL),
(35, 10, 8, 'ÁO SƠ MI KẺ SỌC ASM1308 MÀU VÀNG', 'ao-so-mi-ke-soc-asm1308-mau-vang', 340000, '<p>Chất liệu: 30% visco, 67% polyester, 3% spandex.</p><p>Form: Regular</p><p>Ưu điểm: Chất liệu visco cao cấp giúp sơ mi của bạn luôn mịn màng và thoáng khí. Thiết kế với form regular vừa vặn, dễ dàng mix-match và tôn dáng cực cool bất kể đi làm hay đi chơi đều nhẹ nhàng, mát mẻ.</p>', 150, 'S,M,L,XL', 'd8sYWDiy1zAT3gXnQnrA0t27AomlSIvND8PGgEvg.jpeg', 1, 0, 0, '2020-08-02 02:09:58', '2020-08-02 02:09:58', NULL),
(36, 10, 8, 'ÁO SƠ MI KẺ SỌC ASM1308 MÀU XÁM', 'ao-so-mi-ke-soc-asm1308-mau-xam', 300000, '<p>Chất liệu: 30% visco, 67% polyester, 3% spandex.</p><p>Form: Regular</p><p>Ưu điểm: Chất liệu visco cao cấp giúp sơ mi của bạn luôn mịn màng và thoáng khí. Thiết kế với form regular vừa vặn, dễ dàng mix-match và tôn dáng cực cool bất kể đi làm hay đi chơi đều nhẹ nhàng, mát mẻ.</p>', 100, 'S,M,L,XL', 'A2wG3gqeWpzeOX9IZPzNYlLNkugejMFvvh74Z0h3.jpeg', 1, 0, 2, '2020-08-02 02:10:46', '2020-08-02 02:16:08', NULL),
(37, 10, 8, 'ÁO SƠ MI NGẮN TAY CÀ PHÊ ASM1264', 'ao-so-mi-ngan-tay-ca-phe-asm1264', 270000, '<p>Được sản xuất từ chất liệu Linen linh hoạt khi co giãn, đặc biệt thoáng mát và hút mồ hôi cực nhanh.</p><p>Tone màu nhẹ nhàng là lựa chọn tối ưu trong những ngày nóng bức.</p>', 120, 'XS,S,M,L', 'nC49rf3UTjgR6RT2m6g3EyOmWizY6Z9kszrqyNSr.png', 1, 0, 0, '2020-08-02 02:15:20', '2020-08-02 02:15:20', NULL),
(38, 10, 8, 'ÁO SƠ MI NGẮN TAY CARO ASM1286 MÀU TRẮNG', 'ao-so-mi-ngan-tay-caro-asm1286-mau-trang', 270000, '<p>Chất liệu: 98% cotton, 2% linen.</p><p>Ưu điểm: chất vải mềm mại, độ bền cao, hút ẩm và thấm hút mồ hôi tốt.</p><p>Phái mạnh có thể phối áo cùng quần tây khi đến công sở, hoặc lựa chọn đi kèm chiếc quần jean cho những bữa tiệc nhẹ đều phù hợp.</p>', 100, 'S,M,L,XL', 'HUEu8wxGhSEFqswzsxgP7Hmj2axOcPRY3xMDrwUg.jpeg', 1, 0, 0, '2020-08-02 02:16:05', '2020-08-02 02:16:05', NULL),
(39, 10, 8, 'ÁO SƠ MI NGẮN TAY SỌC ASM1280 MÀU XÁM', 'ao-so-mi-ngan-tay-soc-asm1280-mau-xam', 270000, '<p>Chất liệu:100% Linen</p><p>Thiết kế được tạo nên từ chất liệu Linen với ưu điểm mềm mại và thoáng mát vượt trội, giúp tôn thêm vẻ thanh lịch và tinh tế, tạo điểm nhấn ấn tượng trong xu hướng thời trang hiện đại cho phái mạnh.</p>', 100, 'S,M,L,XL', 'ErUMfJLhBytRWAkZGDzzOcXWsDRSGRCCbMCJ1IGA.jpeg', 1, 0, 0, '2020-08-02 02:19:14', '2020-08-02 02:19:14', NULL),
(40, 10, 8, 'ÁO SƠ MI NGẮN TAY XANH DƯƠNG ASM1264', 'ao-so-mi-ngan-tay-xanh-duong-asm1264', 270000, '<p>Được sản xuất từ chất liệu Linen linh hoạt khi co giãn, đặc biệt thoáng mát và hút mồ hôi cực nhanh.</p><p>Tone màu nhẹ nhàng là lựa chọn tối ưu trong những ngày nóng bức.</p>', 150, 'S,M,L,XL', 'zayLcFhHwcyc0Km7FPx1KE8HjzmjB7VdFceAsDby.png', 1, 0, 0, '2020-08-02 02:19:51', '2020-08-02 02:19:51', NULL),
(41, 9, 9, 'ÁO KHOÁC DA ĐEN AK208', 'ao-khoac-da-den-ak208', 450000, '<p>Áo Khoác Da Đen AK208 mang màu đen nam tính, thu hút và tính tiện dụng cao. Đường nét tinh tế, thiết kế đẹp mắt với những họa tiết dập nổi ấn tượng ở ngực áo. Form dáng đẹp, không kén đồ, cho bạn đa dạng cách phối.<br></p>', 100, 'S,M,L,XL', 'drjdk2uSJ70vLEZqG0Cpw52b1Hk49stW1mG6kGjx.jpeg', 1, 0, 0, '2020-08-02 02:23:33', '2020-08-02 02:23:33', NULL),
(42, 9, 9, 'ÁO KHOÁC DA ĐỎ MẬN AK208', 'ao-khoac-da-do-man-ak208', 450000, '<p>Áo Khoác Da Nâu AK208 một item vừa ra mắt đã ngay lập tức chiếm được cảm tình của đông đảo các bạn trẻ yêu thích thời trang. Form dáng đẹp với những đường dập nổi ấn tượng ở ngực áo. Kiểu dáng bắt mắt tôn lên nét mạnh mẽ và cá tính của người mặc. Chất liệu da PU siêu bền đẹp, kèm lót vải bên trong mềm mại, không bị bong tróc, nứt nẻ khi sử dụng.<br></p>', 100, 'S,M,L,XL', 'SKoWkhz8CKQM1ZLHYYMzKVUdz3jdvbmbfnr3gTc7.jpeg', 1, 0, 0, '2020-08-02 02:24:15', '2020-08-02 02:24:15', NULL),
(43, 9, 9, 'ÁO KHOÁC JEAN XÁM ĐEN AK262', 'ao-khoac-jean-xam-den-ak262', 460000, '<p>Chất vải jeans dày dặn, khó sờn rách, giữ ấm cực tốt.</p><p>Phù hợp với mọi phong cách thời trang: công sở, đường phố, du lịch,...</p>', 100, 'S,M,L,XL', 'INsg31LGvZgylHsyFYnxWAQxdwBJ8FcQfX5i66eV.png', 1, 0, 0, '2020-08-02 02:25:32', '2020-08-02 02:25:32', NULL),
(44, 9, 9, 'ÁO KHOÁC JEAN XÁM XANH AK263', 'ao-khoac-jean-xam-xanh-ak263', 500000, '<p>Chất vải jeans dày dặn, khó sờn rách, giữ ấm cực tốt.</p><p>Phù hợp với mọi phong cách thời trang: công sở, đường phố, du lịch,...</p>', 100, 'S,M,L,XL', 'dSBMYlMbVak6mu659l3IYae0PcxuxcbWktJRghEw.png', 1, 0, 0, '2020-08-02 02:26:11', '2020-08-02 02:26:11', NULL),
(45, 9, 9, 'ÁO KHOÁC JEAN XANH DƯƠNG AK263', 'ao-khoac-jean-xanh-duong-ak263', 500000, '<p>Chất vải jeans dày dặn, khó sờn rách, giữ ấm cực tốt.</p><p>Phù hợp với mọi phong cách thời trang: công sở, đường phố, du lịch,...</p>', 100, 'S,M,L,XL', 'aEKPbpbiOJfYANvDCkCojB5mRS9tsIMj5rpr9ujh.png', 1, 0, 0, '2020-08-02 02:26:45', '2020-08-02 02:26:45', NULL),
(46, 9, 9, 'ÁO KHOÁC KAKI ĐEN AK221', 'ao-khoac-kaki-den-ak221', 400000, '<p>Áo Khoác Kaki Đen AK221 chất kaki dày, bền, không phai màu, có lớp lót trong nên rất thông thoáng. Che chắn tốt cho cơ thể khi đi nắng, khói bụi, gió lạnh. Kiểu dáng thể thao, logo phía trước ngực áo tạo điểm nhấn cho sự trẻ trung và năng động.<br></p>', 100, 'S,M,L,XL', 'J5bMNCBfXdEYnUUys1BI0QmaYXowsWL8NQW34DsY.jpeg', 1, 0, 0, '2020-08-02 02:27:32', '2020-08-02 02:27:32', NULL),
(47, 9, 9, 'ÁO KHOÁC KAKI ĐỎ ĐÔ AK220', 'ao-khoac-kaki-do-do-ak220', 410000, '<p>Áo Khoác Kaki AK220 được thiết kế với kiểu dáng thời trang, cổ trụ tròn, tay dài, hai túi bên hông thời trang và tiện dụng. Tay áo và gấu áo bo thun tạo form ôm vừa vặn với dáng người. Chất liệu kaki cao cấp, kèm lót vải bên trong tạo cho người mặc sự êm dịu và ấm áp. Kết hợp khóa kéo linh hoạt, tiện dụng cho người dùng.<br></p>', 100, 'S,M,L', '5mR8nykEWKTYe2nxLjCHQHViTVgJeHr7GvUZ2xKA.jpeg', 1, 0, 0, '2020-08-02 02:28:12', '2020-08-02 02:28:12', NULL),
(48, 13, 10, 'QUẦN JEAN RÁCH GỐI QJ004 MÀU ĐEN', 'quan-jean-rach-goi-qj004-mau-den', 550000, '<p>Chất liệu: 98% cotton, 2% spandex.</p><p>Form: Slim-Fit</p><p>Đặc tính: Đường may chắc chắn, bền màu, co giãn và thấm hút tốt. Chất vải Jeans dày dặn và bền bỉ, thấm hút mồ hôi tốt. Form slim-fit ôm vừa vặn, tôn dáng, tạo cảm giác săn chắc và năng động.</p><p>Hướng dẫn sử dụng:</p><p>- Giặt ở nhiệt độ bình thường.</p><p>- Không được dùng hóa chất tẩy, ủi ở nhiệt độ thích hợp.</p><p>- Hạn chế sử dụng máy sấy.</p>', 100, 'S,M,L,XL', 'SZviKVObsJogAQc0zIU21mxDaS7ids00DgXExWsi.png', 1, 0, 0, '2020-08-02 02:32:26', '2020-08-02 02:32:26', NULL),
(49, 13, 10, 'QUẦN JEAN RÁCH GỐI QJ1674 MÀU XÁM XANH', 'quan-jean-rach-goi-qj1674-mau-xam-xanh', 550000, '<p>Chất liệu: 98,9%cotton,1.1%spandex.</p><p>Form: Slim-fit</p><p>Đặc điểm: Không ôm quá chặt hay lỏng lẻo, slim-fit kiểu quần jeans thịnh hành nhất hiện nay. Form dáng này có xu hướng ôm dọc theo chiều dài chân, phần ống rộng ở bắp đùi và thu nhỏ xuôi dần (nhưng không bó sát hay túm ống), chiếc quần này phổ biến nhờ ưu điểm đơn giản, dễ mặc và mix-match năng động.</p>', 120, 'S,M,L,XL', 'F2LOXq8Y6ci96lf0jWcAjROSuCLmg8HQZDa2i0Aw.jpeg', 1, 0, 0, '2020-08-02 02:33:04', '2020-08-02 02:33:04', NULL),
(50, 13, 12, 'VÍ DA BÒ DÁNG NGANG BV001 MÀU ĐEN', 'vi-da-bo-dang-ngang-bv001-mau-den', 300000, '<p>Ví da nam dáng ngang được làm từ 100% da bò. Thiết kế mới mẻ với viền chỉ nổi đơn giản, lạ mắt.</p><p>Chất liệu: 100% da bò</p><p>Kích thước: Ngang 12.5 x cao 10cm</p><p>▪️ Chất da bền bỉ, khó sờn rách</p><p>▪️ Đường may tỉ mỉ, chắc chắn</p><p>▪️ Nhỏ gọn, dễ dàng hơn cho việc bỏ túi</p><p>▪️ Thiết kế nhiều ngăn giúp tăng thêm diện tích lưu giữ (tiền bạc, giấy tờ tùy thân, các loại thẻ,..)</p>', 30, '', 'nQ1mJJbzaZv1JS3ieculq1KCtk3duYZewxDvDlRz.png', 1, 0, 2, '2020-08-02 02:34:24', '2020-08-04 21:00:51', NULL),
(51, 13, 13, 'VÍ DA BÒ DÁNG ĐỨNG BV002 MÀU BÒ', 'vi-da-bo-dang-dung-bv002-mau-bo', 350000, '<p>Ví da nam dáng đứng trẻ trung và hiện đại, được làm từ 100% da bò sở hữu độ mềm tự nhiên. Thiết kế đơn giản tôn nét tinh tế, gọn gàng và sang trọng.</p><p>Chất liệu: 100% da bò</p><p>Kích thước: 9.5 x 12 cm</p><p>▪️ Chất da bền bỉ, khó sờn rách</p><p>▪️ Đường may tỉ mỉ, chắc chắn</p><p>▪️ Nhỏ gọn, dễ dàng hơn cho việc bỏ túi</p><p>▪️ Thiết kế nhiều ngăn giúp tăng thêm diện tích lưu giữ (tiền bạc, giấy tờ tùy thân, các loại thẻ,..)</p>', 30, '', '6xv6xAcVDVhjupeweAkApize3v2EeHcEDWYfiKM4.png', 1, 0, 0, '2020-08-02 02:41:55', '2020-08-02 02:41:55', NULL),
(52, 13, 13, 'VÍ DA BÒ DÁNG ĐỨNG BV002 MÀU ĐEN', 'vi-da-bo-dang-dung-bv002-mau-den', 350000, '<p>Ví da nam dáng đứng trẻ trung và hiện đại, được làm từ 100% da bò sở hữu độ mềm tự nhiên. Thiết kế đơn giản tôn nét tinh tế, gọn gàng và sang trọng.</p><p>Chất liệu: 100% da bò</p><p>Kích thước: 9.5 x 12 cm</p><p>▪️ Chất da bền bỉ, khó sờn rách</p><p>▪️ Đường may tỉ mỉ, chắc chắn</p><p>▪️ Nhỏ gọn, dễ dàng hơn cho việc bỏ túi</p><p>▪️ Thiết kế nhiều ngăn giúp tăng thêm diện tích lưu giữ (tiền bạc, giấy tờ tùy thân, các loại thẻ,..)</p>', 30, '', 'W4BsCi5mSH5Db3LiGtTQXcfKVIPPCb74urI79Wyr.png', 1, 0, 0, '2020-08-02 02:42:53', '2020-08-02 02:42:53', NULL),
(53, 8, 19, 'NÓN ĐEN N373', 'non-den-n373', 150000, '<p>Nón Lưỡi Trai Đen N373 thiết kế kiểu dáng thể thao năng động. May từ chất liệu kaki dày dặn, bền, thoáng khí, không phai màu, dễ giặt và dễ bảo quản. Logo trên nón được thêu tỉ mỉ, phá cách tạo điểm nhấn riêng. Nón có thể điều chỉnh kích thước tùy theo nhu cầu sử dụng. Có thể dùng cho cả nam và nữ.<br></p>', 50, 'S,M', 'y8SxB9KpZUoyNJSMUqcobPaOSh0zX0EIVMEB9vcx.jpeg', 1, 0, 1, '2020-08-02 02:44:22', '2020-08-18 03:44:42', NULL),
(54, 8, 19, 'NÓN LƯỠI TRAI N441 MÀU TRẮNG', 'non-luoi-trai-n441-mau-trang', 200000, '<p>NÓN LƯỠI TRAI N441 MÀU TRẮNG<br></p>', 44, 'S,M', 'gH7bvsVjT1BP3qBpoeu3923qL2O6G9FoJEZmsBk6.jpeg', 1, 0, 1, '2020-08-02 02:45:03', '2020-08-09 04:53:58', NULL),
(55, 8, 20, 'NÓN SNAPBACK ĐEN N173', 'non-snapback-den-n173', 250000, '<p>Nón Snapback Đen N173 kiểu dáng thời trang. Chất liệu vải bền đẹp, đường chỉ may tinh tế. Họa tiết đôi môi cười thêu bắt mắt ngay giữa nón tạo điểm nhấn.<br></p>', 49, 'S,M', 'TdiUTqYDPM6ReSjNyfWwxbeb3gc5f21VzCC4r4KB.jpeg', 1, 0, 0, '2020-08-02 02:45:53', '2020-08-04 21:04:08', NULL),
(56, 8, 20, 'NÓN SNAPBACK ĐEN N433', 'non-snapback-den-n433', 260000, '<p>NÓN SNAPBACK ĐEN N433<br></p>', 30, 'S,M', 'zNfblvHYuoXod5co3LpAhsXmwUCRskmrHkbYH7Fx.jpeg', 1, 0, 0, '2020-08-02 02:46:26', '2020-08-02 02:46:26', NULL),
(57, 8, 20, 'NÓN SNAPBACK ĐEN N439', 'non-snapback-den-n439', 260000, '<p>NÓN SNAPBACK ĐEN N439<br></p>', 28, 'S,M', 'ahwXF40x1PvZUA6IHDEOcgeTepo8sorDaRukNt0P.jpeg', 1, 0, 2, '2020-08-02 02:47:01', '2020-08-09 04:53:14', NULL),
(58, 6, 11, 'QUẦN SHORT JEAN FORM REGULAR QS001 MÀU ĐEN', 'quan-short-jean-form-regular-qs001-mau-den', 270000, '<p>Chất liệu: 98% cotton, 2% spandex.</p><p>Form: Regular</p><p>Đặc tính: Co giãn, hút ẩm tốt. Màu đen đơn giản, dễ lên đồ bất kể mặc ở nhà hay vận động ngoài trời.</p><p>Hướng dẫn sử dụng:</p><p>- Giặt ở nhiệt độ bình thường.</p><p>- Không được dùng hóa chất tẩy, ủi ở nhiệt độ thích hợp.</p><p>- Hạn chế sử dụng máy sấy.</p>', 100, 'S,M,L,XL', '0KDe5gMdF9eKlir23XqyIynmbXzvqJM8WGrCjSfC.png', 1, 0, 0, '2020-08-02 02:52:15', '2020-08-02 02:52:15', NULL),
(59, 6, 11, 'QUẦN SHORT JEAN LƯNG THUN QS202 MÀU XANH BIỂN', 'quan-short-jean-lung-thun-qs202-mau-xanh-bien', 270000, '<p>Chất liệu: 98% cotton, 2% polyester.</p><p>Form: Slim-fit</p><p>Đặc tính: form slim-fit ôm gọn gàng cơ thể, lưng thun sau co giãn năng động. Mặc trong nhà hay vận động ngoài trời đều thoải mái.</p><p>Hướng dẫn sử dụng:</p><p>- Giặt ở nhiệt độ bình thường.</p><p>- Không được dùng hóa chất tẩy, ủi ở nhiệt độ thích hợp.</p><p>- Hạn chế sử dụng máy sấy.</p>', 95, 'S,M,L,XL', 'QBSyAbBrOizNDBeEJPpXDvSFzvdrtAY66CuZIcr5.png', 1, 0, 0, '2020-08-02 02:52:52', '2020-08-09 04:52:45', NULL),
(60, 6, 11, 'QUẦN SHORT JEAN SLIMFIT QS203 MÀU XANH BIỂN', 'quan-short-jean-slimfit-qs203-mau-xanh-bien', 270000, '<p>Chất liệu: 99,8% cotton, 0,2% spandex.</p><p>Form: Slimfit</p><p>Ưu điểm: Chất liệu cotton thoáng mát và mềm mại.</p><p>Form dáng đơn giản thích hợp với phong cách sporty khi kết hợp áo thun, hoodie, giày thể thao... dễ dàng bật lên phong cách trẻ trung và năng động.</p>', 99, 'S,M,L', 'zvZZTc9kgQjsG3hkhSkd5UPjW5i3HzTFmVplzwfh.jpeg', 1, 0, 1, '2020-08-02 02:53:27', '2020-08-09 04:17:59', NULL),
(61, 7, 11, 'QUẦN SHORT JEAN SLIMFIT QS203 MÀU XANH ĐEN', 'quan-short-jean-slimfit-qs203-mau-xanh-den', 280000, '<p>Chất liệu: 99,8% cotton, 0,2% spandex.</p><p>Form: Slimfit</p><p>Ưu điểm: Chất liệu cotton thoáng mát và mềm mại.</p><p>Form dáng đơn giản thích hợp với phong cách sporty khi kết hợp áo thun, hoodie, giày thể thao... dễ dàng bật lên phong cách trẻ trung và năng động.</p>', 59, 'S,M,L', 'Iq7Po1a9oKuCEHwdYUfChUScrPbfvd50Tt4MdCSJ.jpeg', 1, 0, 6, '2020-08-02 02:54:11', '2020-08-09 05:11:03', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `address`, `phone_number`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'Công ty áo quần MTP', 'Công ty áo quần MTP', '0111112113', 'aoquanMTP@gmail.com', '2020-08-02 01:37:53', '2020-08-02 01:37:53', NULL),
(7, 'Công ty áo quần CCK', 'Công ty áo quần CCK', '0222111333', 'aoquanCCK@gmail.com', '2020-08-02 01:38:32', '2020-08-02 01:38:32', NULL),
(8, 'Công ty thời trang HKT', 'Công ty thời trang HKT', '0666555666', 'thoitrangHKT@gmail.com', '2020-08-02 01:39:23', '2020-08-02 01:39:23', NULL),
(9, 'Công ty thời trang nam H2O', 'Công ty thời trang nam H2O', '0121121121', 'H2O@gmail.com', '2020-08-02 01:40:17', '2020-08-02 01:40:17', NULL),
(10, '4menshop', '4menshop', '0365364363', '4menshop@gmail.com', '2020-08-02 01:41:12', '2020-08-02 01:41:12', NULL),
(11, 'công ty giày Hà Nội', 'công ty giày Hà Nội', '0455466477', 'giayhn@gmail.com', '2020-08-02 01:42:15', '2020-08-02 01:42:15', NULL),
(12, 'Công ty quần áo HCM', 'Công ty quần áo HCM', '0369258147', 'HCM@gmail.com', '2020-08-02 01:43:22', '2020-08-02 01:43:22', NULL),
(13, 'Công ty BLACK', 'Công ty BLACK', '026233141', 'BLACK@gmail.com', '2020-08-02 01:44:29', '2020-08-02 01:44:29', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `active` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `phone_number`, `role`, `active`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'abc', '123456789', 1, 0, 'admin@gmail.com', '$2y$10$GPqRuYef8vqH0OqA9XlYHeP26Egk/h9eP8dYJTUVjz4t7Av6RS1Qq', NULL, NULL, '2020-07-22 10:19:46', NULL),
(2, 'Nhân viên kho', 'Đà Nẵng', '034234223', 2, 0, 'nvkho@gmail.com', '$2y$10$0JnsrThITKOR5RTcACzcRe8QESG92uOKu.sUYHG/haWoNaqsSNghi', NULL, '2020-07-15 00:01:22', '2020-08-01 22:47:37', NULL),
(3, 'Giao hàng 1', 'Sơn Trà - Đà Nẵng', '023234444', 3, 0, 'shiper1@gmail.com', '$2y$10$oysOHDNtB5aJGCp1I1uMFOjr5sWzolLDstXmkFig0xqDW5U4u5HdS', NULL, '2020-07-15 00:02:12', '2020-08-01 22:48:47', NULL),
(8, 'Giao hàng 2', 'Hải Châu - Đà Nẵng', '19001907', 3, 0, 'shiper2@gmail.com', '$2y$10$0UiHcK2n/dTNO/3rgt3wyuCGd8zcMDQu8MPn4RbqegZqns2oYBIki', NULL, '2020-07-28 09:45:18', '2020-08-01 22:48:33', NULL),
(9, 'Giao hàng  3', 'Liên Chiểu - Đà Nẵng', '1659020898', 3, 0, 'shiper3@gmail.com', '$2y$10$Ys6A22/olm.2T8krzB/zN.BFhIEJSc.Nq0l4LO3/CQ7/7rsQjLElK', NULL, '2020-07-28 09:45:59', '2020-08-01 22:49:07', NULL),
(13, 'Công Khánh', '92 Đinh Tiên Hoàng - Q.Thanh Khê - TP.Đà Nẵng', '0362568046', 0, 0, 'congkhanh@gmail.com', '$2y$10$pYuQsjBIHlKV0zrByQKhauIq2jldAE4RHW6Gg7bjPMYPez1jZIVR6', NULL, '2020-08-01 22:51:06', '2020-08-01 22:55:49', NULL),
(14, 'Công Khánh 1', 'Gia Lai', '0333999666', 0, 0, 'congkhanh1@gmail.com', '$2y$10$MI0VViq8TbR1PLq.7PdB2O7oFciAZBl3YmuBLTzpav/C37s9/3ZNm', NULL, '2020-08-09 04:49:50', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category_products`
--
ALTER TABLE `category_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_products_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_employee_id_foreign` (`employee_id`);

--
-- Chỉ mục cho bảng `coupon_detail`
--
ALTER TABLE `coupon_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_detail_coupon_id_foreign` (`coupon_id`),
  ADD KEY `coupon_detail_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_employee_id_foreign` (`employee_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_supplier_id_foreign` (`supplier_id`),
  ADD KEY `products_category_product_id_foreign` (`category_product_id`);

--
-- Chỉ mục cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category_products`
--
ALTER TABLE `category_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `coupon_detail`
--
ALTER TABLE `coupon_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `category_products`
--
ALTER TABLE `category_products`
  ADD CONSTRAINT `category_products_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `category_products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `coupon_detail`
--
ALTER TABLE `coupon_detail`
  ADD CONSTRAINT `coupon_detail_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_detail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_product_id_foreign` FOREIGN KEY (`category_product_id`) REFERENCES `category_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
