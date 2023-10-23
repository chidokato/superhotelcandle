-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 23, 2023 lúc 02:52 AM
-- Phiên bản máy phục vụ: 10.5.19-MariaDB-cll-lve
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `u641980477_hotel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `sort_by` varchar(10) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `status`, `sort_by`, `view`, `icon`, `slug`, `created_at`, `updated_at`) VALUES
(44, 1, 'true', 'Product', 2, NULL, 'hotel', '2023-04-26 02:34:08', '2023-04-26 02:44:53'),
(45, 1, 'true', 'Product', 3, NULL, 'serviced-apartment', '2023-04-26 02:37:05', '2023-04-26 02:44:58'),
(49, 1, 'true', 'News', 4, NULL, 'restaurant-bar', '2023-04-26 02:42:09', '2023-04-26 02:45:11'),
(50, 1, 'true', 'News', 5, NULL, 'fitness-center', '2023-04-26 02:42:47', '2023-04-26 02:45:45'),
(51, 1, 'true', 'News', 6, NULL, 'meeting-and-event', '2023-04-26 02:43:01', '2023-04-26 02:45:28'),
(52, 1, 'true', 'News', 7, NULL, 'khuyen-mai', '2023-04-26 02:43:11', '2023-04-26 02:43:11'),
(53, 1, 'true', 'News', 8, NULL, 'dich-vu-khac', '2023-04-26 02:43:20', '2023-04-26 02:43:20'),
(54, 1, 'true', 'Page', 9, NULL, 'contact', '2023-04-26 02:43:31', '2023-04-26 02:45:56'),
(56, 1, 'true', 'Page', 1, NULL, 'about', '2023-07-19 09:01:37', '2023-07-19 09:01:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `locale` varchar(20) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `category_translations`
--

INSERT INTO `category_translations` (`id`, `name`, `content`, `category_id`, `locale`, `parent`, `title`, `description`, `created_at`, `updated_at`) VALUES
(116, 'Hotel', '<p>The hotel is located on the 4th to 8th floors. The hotel rooms have spacious space, designed in a delicate, elegant Japanese style. You can choose a room facing West Lake or city to catch sunrise and sunset every day. Combined with luxurious facilities and amenities, experienced staff and elegant and hospitable service create Super Hotel Candle.</p>', 44, 'en', 0, NULL, NULL, '2023-04-26 02:34:08', '2023-09-09 04:25:39'),
(117, 'Khách sạn', '<p>Kh&aacute;ch sạn nằm ở tầng 4 đến tầng 8. C&aacute;c ph&ograve;ng kh&aacute;ch sạn c&oacute; kh&ocirc;ng gian tho&aacute;ng rộng, được thiết kế theo phong c&aacute;ch Nhật Bản tinh tế, thanh tao. Qu&yacute; kh&aacute;ch c&oacute; thể chọn ph&ograve;ng theo hướng Hồ T&acirc;y hay hướng th&agrave;nh phố để đ&oacute;n b&igrave;nh minh v&agrave; ho&agrave;ng h&ocirc;n mỗi ng&agrave;y. Kết hợp với cơ sở vật chất v&agrave; tiện nghi sang trọng l&agrave; đội ngũ nh&acirc;n vi&ecirc;n gi&agrave;u kinh nghiệm c&ugrave;ng dịch vụ thanh lịch v&agrave; hiếu kh&aacute;ch tạo n&ecirc;n Kh&aacute;ch Sạn Super Hotel Candle.</p>', 44, 'vi', 0, NULL, NULL, '2023-04-26 02:34:08', '2023-07-21 01:40:04'),
(118, 'ホテル', NULL, 44, 'jp', 0, NULL, NULL, '2023-04-26 02:34:08', '2023-04-26 02:34:08'),
(119, 'Serviced Apartment', NULL, 45, 'en', 0, NULL, NULL, '2023-04-26 02:37:05', '2023-04-26 02:37:05'),
(120, 'Căn hộ dịch vụ', '<p>Hệ thống Căn hộ với loại h&igrave;nh đa dạng, đầy đủ tiện nghi c&ugrave;ng diện t&iacute;ch tho&aacute;ng rộng, đ&aacute;p ứng c&aacute;c nhu cầu kh&aacute;c nhau của Qu&yacute; kh&aacute;ch. Được lấy cảm hứng thiết kế từ phong c&aacute;ch Nhật Bản tối giản, thanh lịch, an nhi&ecirc;n, c&aacute;c Căn hộ của SUPER HOTEL Candle đem lại cảm gi&aacute;c ấm c&uacute;ng như đang ở ch&iacute;nh trong ng&ocirc;i nh&agrave; của ch&iacute;nh m&igrave;nh.</p>', 45, 'vi', 0, NULL, NULL, '2023-04-26 02:37:05', '2023-07-21 01:38:57'),
(121, 'サービスアパートメント', NULL, 45, 'jp', 0, NULL, NULL, '2023-04-26 02:37:05', '2023-05-05 02:40:31'),
(131, 'Restaurant & Bar', '<p>From the Full Moon International Cuisine restaurant with Asian - European flavors to the Lotus restaurant with a Vietnamese countryside soul, from the Lobby Bar that indulges in Cocktails to the Garden Coffee that relaxes with a cup of Caffe. With different culinary styles, it will bring diners a sophisticated culinary journey with many unique features and creative art.</p>', 49, 'en', 0, NULL, NULL, '2023-04-26 02:42:09', '2023-09-09 08:15:16'),
(132, 'Nhà hàng & Bar', '<p style=\"text-align:center\">Từ nh&agrave; h&agrave;ng Full Moon International Cuisine đậm chất &Aacute; - &Acirc;u đến nh&agrave; h&agrave;ng Lotus mang hồn qu&ecirc; Việt, từ Lobby Bar đ&ecirc; m&ecirc; ly Cocktail đến Garden Coffe thư th&aacute;i t&aacute;ch Caffe. Với phong c&aacute;ch ẩm thực kh&aacute;c nhau sẽ mang đến cho thực kh&aacute;ch một h&agrave;nh tr&igrave;nh ẩm thực tinh tế với nhiều n&eacute;t độc đ&aacute;o c&ugrave;ng nghệ thuật s&aacute;ng tạo.</p>', 49, 'vi', 0, NULL, NULL, '2023-04-26 02:42:09', '2023-09-09 08:15:16'),
(133, 'レストラン', NULL, 49, 'jp', 0, NULL, NULL, '2023-04-26 02:42:09', '2023-05-05 02:40:52'),
(134, 'Amenities & Services', '<p>Immerse yourself in the rhythm of urban life in the luxurious space, sophisticated design and modern amenities at Super Hotel Candle. The hotel offers relaxing Spa services and a modern four-season swimming pool. Super Hotel Candle is proud to bring high-end, personalized experiences, tailored specifically to each customer.</p>', 50, 'en', 0, NULL, NULL, '2023-04-26 02:42:47', '2023-09-09 09:08:35'),
(135, 'Tiện ích và Dịch vụ', '<p style=\"text-align:center\">H&ograve;a v&agrave;o nhịp sống th&agrave;nh thị trong kh&ocirc;ng gian sang trọng, thiết kế tinh tế c&ugrave;ng tiện nghi hiện đại tại Super Hotel Candle. Kh&aacute;ch sạn cung cấp c&aacute;c dịch vụ Spa thư gi&atilde;n c&ugrave;ng bể bơi bốn m&ugrave;a hiện đại. Super Hotel Candle tự h&agrave;o mang đến những trải nghiệm cao cấp đậm t&iacute;nh c&aacute; nh&acirc;n, được thiết kế ri&ecirc;ng ph&ugrave; hợp với từng kh&aacute;ch h&agrave;ng.</p>', 50, 'vi', 0, NULL, NULL, '2023-04-26 02:42:47', '2023-09-09 08:50:59'),
(136, 'フィットネスセンター', NULL, 50, 'jp', 0, NULL, NULL, '2023-04-26 02:42:47', '2023-05-05 02:41:13'),
(137, 'Meeting and Event', NULL, 51, 'en', 0, NULL, NULL, '2023-04-26 02:43:01', '2023-04-26 02:45:28'),
(138, 'Hội thảo và Sự kiện', '<p style=\"text-align: center;\">Với hệ thống c&aacute;c ph&ograve;ng chức năng sang trọng, bao gồm sảnh tiệc đặc biệt v&agrave; đẳng cấp, Kh&aacute;ch sạn Super Hotel Candle ch&iacute;nh l&agrave; nơi ho&agrave;n hảo để tổ chức cho bất kỳ sự kiện n&agrave;o &ndash; d&ugrave; đ&oacute; l&agrave; những buổi họp ri&ecirc;ng, một hội nghị, hội thảo, một đ&aacute;m cưới sang trọng, hay sự kiện x&atilde; hội tầm cỡ.</p>', 51, 'vi', 0, NULL, NULL, '2023-04-26 02:43:01', '2023-07-20 02:11:26'),
(139, 'ミーティングとイベント', NULL, 51, 'jp', 0, NULL, NULL, '2023-04-26 02:43:01', '2023-05-05 02:41:27'),
(140, 'Promotion', NULL, 52, 'en', 0, NULL, NULL, '2023-04-26 02:43:11', '2023-05-05 02:41:46'),
(141, 'Khuyến mãi', NULL, 52, 'vi', 0, NULL, NULL, '2023-04-26 02:43:11', '2023-04-26 02:43:11'),
(142, 'プロモーション', NULL, 52, 'jp', 0, NULL, NULL, '2023-04-26 02:43:11', '2023-05-05 02:41:46'),
(143, 'Other services', NULL, 53, 'en', 0, NULL, NULL, '2023-04-26 02:43:20', '2023-05-05 02:42:02'),
(144, 'Tin tức', '<p>Nhận được nhiều đ&aacute;nh gi&aacute; cao v&agrave; giải thưởng danh gi&aacute; từ những hiệp hội đơn vị trong lĩnh vực du lịch &amp; lưu tr&uacute;. Super Hotel Candle tự h&agrave;o mang đến những trải nghiệm nghỉ dưỡng đẳng cấp chuẩn Nhật tới mỗi Q&uacute;y kh&aacute;ch h&agrave;ng.</p>', 53, 'vi', 0, NULL, NULL, '2023-04-26 02:43:20', '2023-07-21 01:49:55'),
(145, '他のサービス', NULL, 53, 'jp', 0, NULL, NULL, '2023-04-26 02:43:20', '2023-05-05 02:42:02'),
(146, 'Contact', NULL, 54, 'en', 0, NULL, NULL, '2023-04-26 02:43:31', '2023-04-26 02:45:56'),
(147, 'Liên hệ', NULL, 54, 'vi', 0, NULL, NULL, '2023-04-26 02:43:31', '2023-04-26 02:43:31'),
(148, 'コンタクト', NULL, 54, 'jp', 0, NULL, NULL, '2023-04-26 02:43:31', '2023-05-05 02:42:20'),
(152, 'about', NULL, 56, 'en', 0, NULL, NULL, '2023-07-19 09:01:37', '2023-07-19 09:01:37'),
(153, 'Giới thiệu', NULL, 56, 'vi', 0, NULL, NULL, '2023-07-19 09:01:37', '2023-07-19 09:01:37'),
(154, 'about', NULL, 56, 'jp', 0, NULL, NULL, '2023-07-19 09:01:37', '2023-07-19 09:01:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `districts`
--

INSERT INTO `districts` (`id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(10, 1, 'true', '2023-04-13 19:14:08', '2023-04-13 19:14:08'),
(11, 1, 'true', '2023-04-13 19:14:38', '2023-04-13 19:14:38'),
(12, 1, 'true', '2023-04-13 19:30:30', '2023-04-13 19:30:30'),
(13, 1, 'true', '2023-04-13 20:48:20', '2023-04-13 20:48:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district_translations`
--

CREATE TABLE `district_translations` (
  `id` int(11) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `prefix` varchar(20) DEFAULT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `district_translations`
--

INSERT INTO `district_translations` (`id`, `district_id`, `province_id`, `name`, `prefix`, `locale`, `created_at`, `updated_at`) VALUES
(28, 10, 16, 'Thanh Xuan', NULL, 'en', '2023-04-13 19:14:08', '2023-04-13 19:14:08'),
(29, 10, 17, 'Thanh Xuân', NULL, 'vi', '2023-04-13 19:14:08', '2023-04-13 19:14:08'),
(30, 10, 18, '青年', NULL, 'cn', '2023-04-13 19:14:08', '2023-04-13 19:14:08'),
(31, 11, 19, 'Quan 1', NULL, 'en', '2023-04-13 19:14:38', '2023-04-13 19:14:38'),
(32, 11, 20, 'Quận 1', NULL, 'vi', '2023-04-13 19:14:38', '2023-04-13 19:14:38'),
(33, 11, 21, '1區', NULL, 'cn', '2023-04-13 19:14:38', '2023-04-13 19:14:38'),
(37, 13, 19, 'sdfsdfs 1', NULL, 'en', '2023-04-13 20:48:20', '2023-04-13 20:57:16'),
(38, 13, 20, 'sfsfsdf 2 1', NULL, 'vi', '2023-04-13 20:48:20', '2023-04-14 00:48:12'),
(39, 13, 21, 'fsfsdf 4', NULL, 'cn', '2023-04-13 20:48:20', '2023-04-13 20:57:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `note` varchar(10) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `post_id`, `name`, `img`, `note`, `content`, `created_at`, `updated_at`) VALUES
(137, 73, NULL, '837-x-470-01.jpg', NULL, NULL, '2023-07-19 07:32:51', '2023-07-19 07:32:51'),
(138, 73, NULL, '837-x-470-03.jpg', NULL, NULL, '2023-07-19 07:32:51', '2023-07-19 07:32:51'),
(139, 73, NULL, '837-x-470-04.jpg', NULL, NULL, '2023-07-19 07:32:51', '2023-07-19 07:32:51'),
(140, 73, NULL, '837-x-470-05.jpg', NULL, NULL, '2023-07-19 07:32:51', '2023-07-19 07:32:51'),
(141, 72, NULL, '837-x-470-01 (1).jpg', NULL, NULL, '2023-07-19 07:34:55', '2023-07-19 07:34:55'),
(142, 72, NULL, '837-x-470-02.jpg', NULL, NULL, '2023-07-19 07:34:55', '2023-07-19 07:34:55'),
(143, 72, NULL, '99_837-x-470-04.jpg', NULL, NULL, '2023-07-19 07:34:55', '2023-07-19 07:34:55'),
(144, 72, NULL, '86_837-x-470-05.jpg', NULL, NULL, '2023-07-19 07:34:55', '2023-07-19 07:34:55'),
(149, 77, NULL, '41_837-x-470-02.jpg', NULL, NULL, '2023-07-19 08:21:50', '2023-07-19 08:21:50'),
(150, 77, NULL, '81_837-x-470-03.jpg', NULL, NULL, '2023-07-19 08:21:50', '2023-07-19 08:21:50'),
(151, 77, NULL, '17_837-x-470-04.jpg', NULL, NULL, '2023-07-19 08:21:50', '2023-07-19 08:21:50'),
(152, 77, NULL, '48_837-x-470-05.jpg', NULL, NULL, '2023-07-19 08:21:50', '2023-07-19 08:21:50'),
(157, 75, NULL, '63_837-x-470-02.jpg', NULL, NULL, '2023-07-19 08:24:44', '2023-07-19 08:24:44'),
(158, 75, NULL, '37_837-x-470-03.jpg', NULL, NULL, '2023-07-19 08:24:44', '2023-07-19 08:24:44'),
(159, 75, NULL, '82_837-x-470-04.jpg', NULL, NULL, '2023-07-19 08:24:44', '2023-07-19 08:24:44'),
(160, 75, NULL, '56_837-x-470-05.jpg', NULL, NULL, '2023-07-19 08:24:44', '2023-07-19 08:24:44'),
(162, 71, NULL, '69_837-x-470-02.jpg', NULL, NULL, '2023-07-19 08:29:08', '2023-07-19 08:29:08'),
(163, 71, NULL, '86_837-x-470-03.jpg', NULL, NULL, '2023-07-19 08:29:08', '2023-07-19 08:29:08'),
(164, 71, NULL, '837-x-470-04 (1).jpg', NULL, NULL, '2023-07-19 08:29:08', '2023-07-19 08:29:08'),
(165, 71, NULL, '5_837-x-470-05.jpg', NULL, NULL, '2023-07-19 08:29:08', '2023-07-19 08:29:08'),
(166, 86, NULL, '15_2880-x-1800-2.jpg', NULL, NULL, '2023-09-07 01:57:28', '2023-09-07 01:57:28'),
(167, 86, NULL, '94_2880-x-1800-3.jpg', NULL, NULL, '2023-09-07 01:57:28', '2023-09-07 01:57:28'),
(168, 86, NULL, '22_2880-x-1800-4.jpg', NULL, NULL, '2023-09-07 01:57:28', '2023-09-07 01:57:28'),
(169, 86, NULL, '5_2880-x-1800-5.jpg', NULL, NULL, '2023-09-07 01:57:28', '2023-09-07 01:57:28'),
(170, 86, NULL, '44_2880-x-1800-6.jpg', NULL, NULL, '2023-09-07 01:57:28', '2023-09-07 01:57:28'),
(171, 86, NULL, '65_2880-x-1800-7.jpg', NULL, NULL, '2023-09-07 01:57:29', '2023-09-07 01:57:29'),
(172, 86, NULL, '61_2880-x-1800-8.jpg', NULL, NULL, '2023-09-07 01:57:29', '2023-09-07 01:57:29'),
(173, 86, NULL, '45_2880-x-1800-9.jpg', NULL, NULL, '2023-09-07 01:57:29', '2023-09-07 01:57:29'),
(174, 86, NULL, '32_2880-x-1800-10.jpg', NULL, NULL, '2023-09-07 01:57:29', '2023-09-07 01:57:29'),
(184, 74, NULL, 'DSC02532.jpg', NULL, NULL, '2023-10-06 02:43:56', '2023-10-06 02:43:56'),
(185, 74, NULL, 'LivingRoom (1).jpg', NULL, NULL, '2023-10-06 02:43:56', '2023-10-06 02:43:56'),
(186, 74, NULL, 'LivingRoom (2).jpg', NULL, NULL, '2023-10-06 02:43:57', '2023-10-06 02:43:57'),
(187, 74, NULL, 'LivingRoom (3).jpg', NULL, NULL, '2023-10-06 02:43:57', '2023-10-06 02:43:57'),
(188, 74, NULL, 'LivingRoom (4).jpg', NULL, NULL, '2023-10-06 02:43:57', '2023-10-06 02:43:57'),
(189, 74, NULL, 'LivingRoom (12).jpg', NULL, NULL, '2023-10-06 02:43:58', '2023-10-06 02:43:58'),
(190, 74, NULL, 'LivingRoom (27).jpg', NULL, NULL, '2023-10-06 02:43:58', '2023-10-06 02:43:58'),
(192, 74, NULL, 'LobbyHouse (1) - mo cua.jpg', NULL, NULL, '2023-10-06 02:45:57', '2023-10-06 02:45:57'),
(193, 74, NULL, 'LobbyHouse (2).jpg', NULL, NULL, '2023-10-06 02:45:57', '2023-10-06 02:45:57'),
(194, 74, NULL, 'LobbyHouse (3).jpg', NULL, NULL, '2023-10-06 02:45:58', '2023-10-06 02:45:58'),
(195, 74, NULL, 'DiningRoom (1) - mo rem.jpg', NULL, NULL, '2023-10-06 02:46:48', '2023-10-06 02:46:48'),
(196, 74, NULL, 'DiningRoom (2).jpg', NULL, NULL, '2023-10-06 02:46:48', '2023-10-06 02:46:48'),
(199, 74, NULL, 'WorkRoom (1).jpg', NULL, NULL, '2023-10-06 02:47:27', '2023-10-06 02:47:27'),
(200, 74, NULL, 'Bedroom 1 (1) - mo rem.jpg', NULL, NULL, '2023-10-06 02:48:26', '2023-10-06 02:48:26'),
(201, 74, NULL, 'Bedroom 1 (2) - dong rem trang.jpg', NULL, NULL, '2023-10-06 02:48:26', '2023-10-06 02:48:26'),
(202, 74, NULL, 'Bedroom 1 (3).jpg', NULL, NULL, '2023-10-06 02:48:26', '2023-10-06 02:48:26'),
(203, 74, NULL, 'Bedroom 1 (8).jpg', NULL, NULL, '2023-10-06 02:48:27', '2023-10-06 02:48:27'),
(204, 74, NULL, 'Bedroom 2 (1).jpg', NULL, NULL, '2023-10-06 02:48:48', '2023-10-06 02:48:48'),
(205, 74, NULL, 'Bedroom 2 (2) - dong rem.jpg', NULL, NULL, '2023-10-06 02:48:48', '2023-10-06 02:48:48'),
(206, 74, NULL, 'Bedroom 2 (3).jpg', NULL, NULL, '2023-10-06 02:48:48', '2023-10-06 02:48:48'),
(207, 74, NULL, 'Bedroom 2 (4).jpg', NULL, NULL, '2023-10-06 02:48:48', '2023-10-06 02:48:48'),
(208, 74, NULL, 'Berdroom 3 (1).jpg', NULL, NULL, '2023-10-06 02:49:09', '2023-10-06 02:49:09'),
(209, 74, NULL, 'Berdroom 3 (2) - mo cua.jpg', NULL, NULL, '2023-10-06 02:49:09', '2023-10-06 02:49:09'),
(210, 74, NULL, 'Berdroom 3 (3).jpg', NULL, NULL, '2023-10-06 02:49:09', '2023-10-06 02:49:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_04_13_035737_create_images_table', 2),
(10, '2023_04_13_084106_create_provinces_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `sort_by` varchar(10) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `post` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `status`, `sort_by`, `slug`, `post`, `img`) VALUES
(71, 1, 'true', 'Product', 'studio-apartment', NULL, '90_837-x-470-01.jpg'),
(72, 1, 'true', 'Product', 'Executive Room', NULL, '837-x-470-03.jpg'),
(73, 1, 'true', 'Product', 'Deluxe Room', NULL, '2880-x-1800-4.jpg'),
(74, 1, 'true', 'Product', 'Three Badroom Apartment', NULL, 'LivingRoom (3).jpg'),
(75, 1, 'true', 'Product', 'two-bed-apt', NULL, '837-x-470-01 (1).jpg'),
(76, 1, 'true', 'News', 'dich-vu-khac', NULL, 'female-hand-with-money-cash-department-window-currency-exchange-concept.jpg'),
(77, 1, 'true', 'Product', 'one-bed', NULL, '837-x-470-01.jpg'),
(78, 1, 'true', 'News', 'shop-vivian-vus', NULL, 'NAM00629.jpg'),
(79, 1, 'true', 'News', 'tiec-cuoi-cac-su-kien-dac-biet', NULL, 'PHUC9387.JPG'),
(80, 1, 'true', 'News', 'garden-cafe-630-2230', NULL, 'DSC01318.jpg'),
(81, 1, 'true', 'News', 'lobby-bar-630-2230', NULL, 'DSC03063.jpg'),
(82, 1, 'true', 'News', 'nha-hang-lotus-600-2230', NULL, '670-x-420--Nhà-Hàng-Lotus.jpg'),
(83, 1, 'true', 'News', 'full-moon-international-cuisine-1100-2230', NULL, '670-x-420-FullMoon.jpg'),
(84, 1, 'true', 'News', 'hop-mat-hoi-nghi', NULL, 'File-670-x-420-Sự-Kiện-1.jpg'),
(86, 1, 'true', 'Product', 'superior-room', NULL, '20_2880-x-1800-8.jpg'),
(87, 1, 'true', 'News', 'mini-mart', NULL, 'NAM00721.jpg'),
(88, 1, 'true', 'News', 'gym', NULL, 'DSC02251.jpg'),
(89, 1, 'true', 'News', 'be-boi', NULL, 'DSC02205.jpg'),
(90, 1, 'true', 'News', 'spa', NULL, 'Screenshot_2.png'),
(91, 1, 'true', 'News', 'giai-thuong', NULL, 'NAM00603.jpg'),
(92, 1, 'true', 'News', 'giai-thuong', NULL, 'NAM00607.jpg'),
(93, 1, 'true', 'News', 'giai-thuong', NULL, 'NAM00609.jpg'),
(94, 1, 'true', 'News', 'giai-thuong', NULL, '1_NAM00585.jpg'),
(95, 1, 'true', 'News', 'giai-thuong', NULL, 'NAM00576.jpg'),
(96, 1, 'true', 'News', 'giai-thuong', NULL, 'NAM00585.jpg'),
(97, 1, 'true', 'News', 'giai-thuong', NULL, 'NAM00592.jpg'),
(98, 1, 'true', 'News', 'giai-thuong', NULL, 'NAM00578.jpg'),
(99, 1, 'true', 'News', 'giai-thuong', NULL, 'NAM00582.jpg'),
(100, 1, 'true', 'News', 'giai-thuong', NULL, 'NAM00598.jpg'),
(101, 1, 'true', 'News', 'giai-thuong', NULL, 'NAM00599.jpg'),
(102, 1, 'true', 'News', 'uu-dai-giam-toi-30-phi-thue-can-ho-dich-vu-trong-nam-2023', NULL, 'bia-13-7-(1) (2).jpg'),
(103, 1, 'true', 'News', 'giam-ngay-10-tong-bill', NULL, '08--Dimsum.jpg'),
(104, 1, 'true', 'News', 'giam-50-lieu-trinh-massage', NULL, 'DSC02406 (1).jpg'),
(105, 1, 'true', 'News', 'giam-30-ve-be-boi-bon-mua', NULL, 'z4515975826545_1b4df81308bc71b029b3b32587f6f7f6-01.jpg'),
(106, 1, 'true', 'News', 'chao-mung-quoc-khanh-trieu-uu-dai-vang', NULL, 'File-Design-01.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_translations`
--

CREATE TABLE `post_translations` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `category_tras_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `ward_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `locale` varchar(50) DEFAULT NULL,
  `utilities` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `post_translations`
--

INSERT INTO `post_translations` (`id`, `post_id`, `category_tras_id`, `province_id`, `district_id`, `ward_id`, `name`, `detail`, `content`, `price`, `unit`, `address`, `locale`, `utilities`, `title`, `description`, `created_at`, `updated_at`) VALUES
(209, 71, 116, NULL, NULL, NULL, 'STUDIO APARTMENT', NULL, '<p>Studio Apartment offers an impressive stay experience with an area of 50 square meters and modern equipment. Designed in a sophisticated Japanese style and with a view of the entire city, the room brings you customers about peace, peace of mind, and renewed energy.</p>', 0, 'VNĐ', NULL, 'en', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', 'Deluxe Twin', 'Deluxe Twin', '2023-09-09 04:33:59', '2023-09-09 04:33:59'),
(210, 71, 117, NULL, NULL, NULL, 'STUDIO APARTMENT', NULL, '<p>Studio Apartment đem đến trải nghiệm lưu tr&uacute; ấn tượng với diện t&iacute;ch 50 m&eacute;t vu&ocirc;ng c&ugrave;ng c&aacute;c trang thiết bị hiện đại. Được thiết kế theo phong c&aacute;ch Nhật Bản tinh tế v&agrave; tầm view ngắm trọn th&agrave;nh phố, căn ph&ograve;ng đưa Q&uacute;y kh&aacute;ch h&agrave;ng về sự y&ecirc;n b&igrave;nh, lắng đọng trong t&acirc;m hồn, t&aacute;i tạo năng lương.</p>', 0, 'VNĐ', NULL, 'vi', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-07-19 07:49:51', '2023-07-19 07:49:51'),
(211, 71, 118, NULL, NULL, NULL, 'デラックスツイン', NULL, NULL, 0, 'VNĐ', NULL, 'jp', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-09-07 01:44:48', '2023-09-07 01:44:48'),
(212, 72, 116, NULL, NULL, NULL, 'EXECUTIVE ROOM', NULL, '<p>With an area of 45 square meters, the high-class Executive room offers a comfortable resort experience, including a spacious living room, a cozy dining room that can accommodate up to four guests, and a fully equipped kitchen area. Equipped with a large glass window system, eye-catching panoramic views overlooking the city center and West Lake. The room offers wonderful moments of relaxation to meet the needs of tourists and businessmen.</p>', 0, 'VNĐ', NULL, 'en', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-09-09 04:32:23', '2023-09-09 04:32:23'),
(213, 72, 117, NULL, NULL, NULL, 'EXECUTIVE ROOM', NULL, '<p>Với diện t&iacute;ch 45 m&eacute;t vu&ocirc;ng, ph&ograve;ng Executive cao cấp mang đến trải nghiệm nghỉ dưỡng đầy tiện nghi, gồm gian ph&ograve;ng kh&aacute;ch rộng r&atilde;i, ph&ograve;ng ăn c&oacute; sức chứa l&ecirc;n đến bốn kh&aacute;ch đầy ấm c&uacute;ng c&ugrave;ng khu vực bếp được trang bị đầy tiệc &iacute;ch. Được trang bị hệ thống cửa sổ k&iacute;nh lớn, tầm view panorama m&atilde;n nh&atilde;n nh&igrave;n ra trung t&acirc;m th&agrave;nh phố v&agrave; Hồ T&acirc;y. Căn ph&ograve;ng mang lại gi&acirc;y ph&uacute;t thư gi&atilde;n tuyệt vời nhằm đ&aacute;p ứng nhu cầu cho kh&aacute;ch du lịch v&agrave; doanh nh&acirc;n.</p>', 0, 'VNĐ', NULL, 'vi', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-07-19 07:48:12', '2023-07-19 07:48:12'),
(214, 72, 118, NULL, NULL, NULL, 'エグゼクティブダブル', NULL, NULL, 0, 'VNĐ', NULL, 'jp', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-09-07 01:44:29', '2023-09-07 01:44:29'),
(215, 73, 116, NULL, NULL, NULL, 'DELUXE ROOM', NULL, '<p>Admire the colorful panoramic view of Hanoi city or the romantic West Lake in the 35 square meter space of the premium Deluxe room, with the living room equipped with airy windows and delicate wooden floors. The bedroom is delicately designed to create intimacy and warmth, suitable for couples and young families.</p>', 0, 'VNĐ', NULL, 'en', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-09-09 04:32:39', '2023-09-09 04:32:39'),
(216, 73, 117, NULL, NULL, NULL, 'DELUXE ROOM', NULL, '<p>Ph&ograve;ng gồm 1 giường đơn v&agrave; 1 giường đ&ocirc;i, hay ph&ograve;ng Deluxe Room hướng to&agrave;n th&agrave;nh phố c&oacute; diện t&iacute;ch 30 m&eacute;t vu&ocirc;ng gồm một giường đơn, khu vực tắm đứng v&agrave; bồn tắm đ&aacute;, đi c&ugrave;ng với thiết kế nội thất gỗ v&agrave; thảm trải s&agrave;n cao cấp, mang đến cảm gi&aacute;c thư gi&atilde;n nhẹ nh&agrave;ng cho kh&aacute;ch h&agrave;ng.</p>', 0, 'VNĐ', NULL, 'vi', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-07-19 07:46:45', '2023-07-19 07:46:45'),
(217, 73, 118, NULL, NULL, NULL, 'スーペリア ダブル', NULL, NULL, 0, 'VNĐ', NULL, 'jp', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-09-07 01:44:06', '2023-09-07 01:44:06'),
(218, 74, 119, NULL, NULL, NULL, 'Three Badroom Apartment', NULL, '<p>Presidential suite - a symbol of luxury and ultimate class. The large space is designed in a luxurious Neoclassical style with a million-dollar view of the entire city, and high-class service brings an experience worthy of royalty.<br />\r\nRoom information:<br />\r\n3 Bedrooms / 3 Bed rooms<br />\r\n- 225 m2<br />\r\n- 4 adults and 4 children<br />\r\n- Include breakfast<br />\r\n- Parking lot, free wifi</p>', 0, 'VNĐ', NULL, 'en', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-09-09 08:14:05', '2023-09-09 08:14:05'),
(219, 74, 120, NULL, NULL, NULL, 'CĂN 3 PHÒNG NGỦ', NULL, '<p>Hạng ph&ograve;ng tổng thống - biểu tượng của xa hoa v&agrave; đẳng cấp tối thượng. Kh&ocirc;ng gian lớn được thiết kế theo phong c&aacute;ch T&acirc;n cổ điển sang trọng c&ugrave;ng tầm nh&igrave;n triệu đ&ocirc; ngắm nh&igrave;n trọn th&agrave;nh phố, dịch vụ đẳng cấp mang đến trải nghiệm xứng tầm Vương giả.<br />\r\n<strong>Th&ocirc;ng tin ph&ograve;ng:</strong><br />\r\n3 Ph&ograve;ng ngủ / 3 Bed rooms<br />\r\n- 225 m2<br />\r\n- 4 người lớn v&agrave; 4 trẻ em<br />\r\n- Bao gồm ăn s&aacute;ng<br />\r\n- B&atilde;i đậu xe, wifi miễn ph&iacute;<br />\r\n&nbsp;</p>', 0, 'VNĐ', NULL, 'vi', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-07-21 01:31:24', '2023-07-21 01:31:24'),
(220, 74, 121, NULL, NULL, NULL, 'ROOM NO.01', NULL, NULL, 0, 'VNĐ', NULL, 'jp', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-09-07 01:39:55', '2023-09-07 01:39:55'),
(221, 75, 119, NULL, NULL, NULL, 'Two Bedroom Apartment', NULL, '<p>The 2-bedroom apartment with spacious space brings the breath of elegant Japanese style, is an ideal place for rest as well as long-term stay, with a beautiful panoramic view of the city.<br />\r\nRoom information:<br />\r\n- 2 bedrooms<br />\r\n- 110m2<br />\r\n- 4 adults or 2 adults and 2 children<br />\r\n- Include breakfast<br />\r\n- Parking lot, free wifi</p>', 0, 'VNĐ', NULL, 'en', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-09-09 08:13:31', '2023-09-09 08:13:31'),
(222, 75, 120, NULL, NULL, NULL, 'CĂN 2 PHÒNG NGỦ', NULL, '<p>Căn hộ 2 ph&ograve;ng ngủ với kh&ocirc;ng gian tho&aacute;ng rộng mang hơi thở của phong c&aacute;ch Nhật Bản thanh lịch, l&agrave; nơi l&yacute; tưởng để nghỉ ngơi cũng như lưu tr&uacute; d&agrave;i hạn, với tầm View l&agrave; to&agrave;n cảnh th&agrave;nh phố tuyệt đẹp.<br />\r\n<strong>Th&ocirc;ng tin ph&ograve;ng:</strong><br />\r\n- 2 ph&ograve;ng ngủ<br />\r\n- 110m2<br />\r\n- 4 người lớn hoặc 2 người lớn v&agrave; 2 trẻ em<br />\r\n- Bao gồm ăn s&aacute;ng<br />\r\n- B&atilde;i đậu xe, wifi miễn ph&iacute;</p>', 0, 'VNĐ', NULL, 'vi', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-07-19 07:16:28', '2023-07-19 07:16:28'),
(223, 75, 121, NULL, NULL, NULL, 'ROOM NO.02', NULL, NULL, 0, 'VNĐ', NULL, 'jp', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-09-07 01:19:19', '2023-09-07 01:19:19'),
(224, 76, 134, NULL, NULL, NULL, 'Other Sevrices', 'Concierge/Working area/Currency exchange.', '<p>Concierge/Working area/Currency exchange.</p>', NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 08:56:01', '2023-09-09 08:56:01'),
(225, 76, 135, NULL, NULL, NULL, 'DỊCH VỤ KHÁC', 'Concierge/Khu vực làm việc/Thu đổi ngoại tệ.', '<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>', NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-07-19 08:57:20', '2023-07-19 08:57:20'),
(226, 76, 136, NULL, NULL, NULL, 'Spa', 'Những kỷ niệm có nghĩa là để được xem lại. Chúng tôi mời bạn trải nghiệm The Ritz-Carlton, Đảo Amelia qua con mắt của những người bạn đồng hành và chia sẻ những khoảnh khắc khó quên trong kỳ nghỉ của chính bạn', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/spa/IMG_3438.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/spa/IMG_3430.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/spa/IMG_3411.jpg\" /></p>', NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-05-12 09:43:05', '2023-05-12 02:43:05'),
(227, 77, 119, NULL, NULL, NULL, 'One Bedroom Apartment', NULL, '<p>Inspired by the elegance and natural balance of Japanese culture. The apartment offers a simple, elegant and sophisticated living space.<br />\r\nRoom information:<br />\r\nDouble bed: 1m8 x 2m<br />\r\n- 80m2<br />\r\n- 2 adults and 1 child<br />\r\n- Include breakfast<br />\r\n- Parking, free wifi</p>', 0, 'VNĐ', NULL, 'en', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-09-09 08:12:37', '2023-09-09 08:12:37'),
(228, 77, 120, NULL, NULL, NULL, 'CĂN 1 PHÒNG NGỦ', NULL, '<p>Được truyền cảm hứng từ sự thanh lịch v&agrave; c&acirc;n bằng tự nhi&ecirc;n của nền văn h&oacute;a Nhật Bản. Căn hộ mang đến &nbsp;kh&ocirc;ng gian sống đơn giản, thanh nh&atilde; v&agrave; tinh tế.<br />\r\n<strong>Th&ocirc;ng tin ph&ograve;ng:</strong><br />\r\nGiường đ&ocirc;i: 1m8 x 2m<br />\r\n- &nbsp; &nbsp; &nbsp; &nbsp;80m2<br />\r\n- &nbsp; &nbsp; &nbsp; &nbsp;2 người lớn v&agrave; 1 trẻ em<br />\r\n- &nbsp; &nbsp; &nbsp; &nbsp;Bao gồm ăn s&aacute;ng<br />\r\n- &nbsp; &nbsp; &nbsp; &nbsp;B&atilde;i đậu xe, wifi miễn ph&iacute;</p>', 0, 'VNĐ', NULL, 'vi', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-07-19 07:17:54', '2023-07-19 07:17:54'),
(229, 77, 121, NULL, NULL, NULL, 'ROOM NO.03', NULL, NULL, 0, 'VNĐ', NULL, 'jp', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-09-07 01:17:46', '2023-09-07 01:17:46'),
(230, 78, 134, NULL, NULL, NULL, 'SHOP VIVIAN VU\'S', 'Located right next to the hotel reception. Shop Vivian Vu\'s offers customers many choices such as: Candles, jewelry, clothing accessories, fine art gifts such as lacquer,... All are handmade by skilled craftsmen. This is an unmissable choice for those who love traditional materials as well as a meaningful gift for your family, relatives, and friends.', '<p>Located right next to the hotel reception. Shop Vivian Vu&#39;s offers customers many choices such as: Candles, jewelry, clothing accessories, fine art gifts such as lacquer,... All are handmade by skilled craftsmen. This is an unmissable choice for those who love traditional materials as well as a meaningful gift for your family, relatives, and friends.</p>', NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 08:54:42', '2023-09-09 08:54:42'),
(231, 78, 135, NULL, NULL, NULL, 'SHOP VIVIAN VU\'S', 'Nằm ngay cạnh quầy lễ tân của khách sạn. Shop Vivian Vu\'s cung cấp cho khách nhiều sự lựa chọn như: Nến, trang sức, phụ kiện quần áo, các món quà mỹ nghệ như sơn mài,... Tất cả đều được làm thủ công từ chính những người thợ lành nghề. Đây là sự lựa chọn không thể bỏ qua đối với những người yêu thích các vật liệu truyền thống cũng như là một món quà ý nghĩa mang về cho gia đình, người thân, bạn bè của bạn.', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-09-07 09:01:44', '2023-09-07 09:01:44'),
(232, 78, 136, NULL, NULL, NULL, 'SHOP VIVIAN VU\'S', 'Những kỷ niệm có nghĩa là để được xem lại. Chúng tôi mời bạn trải nghiệm The Ritz-Carlton, Đảo Amelia qua con mắt của những người bạn đồng hành và chia sẻ những khoảnh khắc khó quên trong kỳ nghỉ của chính bạn.', '<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/pool/IMG_3091.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/pool/IMG_3086.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/pool/IMG_3051.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/pool/IMG_3009.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/pool/anh%20avata.jpg\" style=\"height:450px; width:800px\" /></p>', NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-09-07 09:00:51', '2023-09-07 09:00:51'),
(233, 79, 137, NULL, NULL, NULL, 'WEDDING & SPECIAL EVENT', 'Wedding restaurant at SUPER HOTEL Candle with luxurious and splendid space, professional banquet service, and a team of experienced wedding experts. We\'re here to help make your dream event come true – and perfect. (see more)', '<p>SUPER HOTEL Candle - the ideal destination for all types of events. Regardless of the nature or scale of the event, SUPER HOTEL Candle will always accompany customers to create impressive and unique events. SUPER HOTEL Candle offers a system of function rooms diverse in area and capacity characteristics<br />\r\n1. PHOENIX:<br />\r\nArea 330 m2<br />\r\nCapacity 230 people<br />\r\n2. THANG LONG:<br />\r\nArea 116&nbsp;m2<br />\r\nCapacity of 100 people<br />\r\n3. DONG DO:<br />\r\nArea 90&nbsp;m2<br />\r\nCapacity 60 people<br />\r\n4. TOKYO:<br />\r\nArea 85&nbsp;m2<br />\r\nCapacity 50 people<br />\r\n5. HA NOI:<br />\r\nArea 60&nbsp;m2<br />\r\nCapacity of 40 people</p>', NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 09:20:02', '2023-09-09 09:20:02'),
(234, 79, 138, NULL, NULL, NULL, 'TIỆC CƯỚI & CÁC SỰ KIỆN ĐẶC BIỆT', 'Nhà hàng tiệc cưới tại SUPER HOTEL Candle với không gian sang trọng, lộng lẫy, dịch vụ tiệc chuyên nghiệp, cùng đội ngũ chuyên gia tiệc cưới giàu kinh nghiệm. Chúng tôi luôn sẵn sàng đáp ứng để sự kiện trong mơ của quý khách thành hiện thực – và hoàn hảo.', '<p>SUPER HOTEL Candle - điểm đến l&yacute; tưởng cho mọi loại h&igrave;nh sự kiện. Bất kể t&iacute;nh chất hay quy m&ocirc; của sự kiện như thế n&agrave;o, SUPER HOTEL Candle sẽ lu&ocirc;n đồng h&agrave;nh c&ugrave;ng c&aacute;c qu&yacute; kh&aacute;ch h&agrave;ng để tạo n&ecirc;n những sự kiện ấn tượng v&agrave; duy nhất. SUPER HOTEL Candle đem đến hệ thống ph&ograve;ng chức năng đa dạng về diện t&iacute;ch v&agrave; đặc điểm sức chứa<br />\r\n1. PHOENIX:<br />\r\nDiện t&iacute;ch 330<br />\r\nSức chứa 230 người<br />\r\n2. THANG LONG:<br />\r\nDiện t&iacute;ch 116<br />\r\nSức chứa 100 người<br />\r\n3. Đ&Ocirc;NG Đ&Ocirc;:<br />\r\nDiện t&iacute;ch 90<br />\r\nSức chứa 60 người<br />\r\n4. TOKYO:<br />\r\nDiện t&iacute;ch 85<br />\r\nSức chứa 50 người<br />\r\n5. HA NOI:<br />\r\nDiện t&iacute;ch 60<br />\r\nSức chứa 40 người</p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/WEDDING/IMG_1702.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/WEDDING/IMG_1650.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/WEDDING/IMG_1639.jpg\" style=\"height:450px; width:800px\" /></p>', NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-07-19 09:11:08', '2023-07-19 09:11:08'),
(235, 79, 139, NULL, NULL, NULL, 'WEDDING', 'Những kỷ niệm có nghĩa là để được xem lại. Chúng tôi mời bạn trải nghiệm The Ritz-Carlton, Đảo Amelia qua con mắt của những người bạn đồng hành và chia sẻ những khoảnh khắc khó quên trong kỳ nghỉ của chính bạn.', '<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/WEDDING/IMG_1702.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/WEDDING/IMG_1650.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/WEDDING/IMG_1639.jpg\" style=\"height:450px; width:800px\" /></p>', NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-05-12 09:42:41', '2023-05-12 02:42:41'),
(236, 80, 131, NULL, NULL, NULL, 'GARDEN CAFE | 6:30 – 22:30', 'A luxurious check-in space will make you feel very comfortable along with enjoying a special breakfast such as Pho with stone bowl and then sipping a cup of coffee at Garden Coffee.', '<p>A luxurious check-in space will make you feel very comfortable along with enjoying a special breakfast such as Pho with stone bowl and then sipping a cup of coffee at Garden Coffee.</p>', NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 08:38:19', '2023-09-09 08:38:19'),
(237, 80, 132, NULL, NULL, NULL, 'GARDEN CAFE | 6:30 – 22:30', 'Một không gian check in sang chảnh sẽ đem lại cho bạn cảm giác thật thoải mái cùng với đó là thưởng thức món ăn sáng đặc sắc như Phở bát đá và sau đó là nhâm nhi một tách cà phê tại Garden Cafe.', '<p>GARDEN CAFE | 6:30 &ndash; 22:30</p>\r\n\r\n<p>Một kh&ocirc;ng gian check in sang chảnh sẽ đem lại cho bạn cảm gi&aacute;c thật thoải m&aacute;i c&ugrave;ng với đ&oacute; l&agrave; thưởng thức m&oacute;n ăn s&aacute;ng đặc sắc như Phở b&aacute;t đ&aacute; v&agrave; sau đ&oacute; l&agrave; nh&acirc;m nhi một t&aacute;ch c&agrave; ph&ecirc; tại Garden Coffee.<img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/RESTAURANT/IMG_2974.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/RESTAURANT/IMG_2941.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/RESTAURANT/IMG_2724.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/RESTAURANT/IMG_2723.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/RESTAURANT/IMG_2718.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/RESTAURANT/IMG_2606.jpg\" style=\"height:450px; width:800px\" /></p>', NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-07-20 02:08:18', '2023-07-20 02:08:18'),
(238, 80, 133, NULL, NULL, NULL, 'RESTAURANT', 'Memories are meant to be revisited. We invite you to experience The Ritz-Carlton, Amelia Island through the eyes of your fellow travelers and share unforgettable moments of your own vacation', '<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/RESTAURANT/IMG_2974.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/RESTAURANT/IMG_2941.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/RESTAURANT/IMG_2724.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/RESTAURANT/IMG_2723.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/RESTAURANT/IMG_2718.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/RESTAURANT/IMG_2606.jpg\" style=\"height:450px; width:800px\" /></p>', NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-05-12 09:44:17', '2023-05-12 02:44:17'),
(239, 81, 131, NULL, NULL, NULL, 'LOBBY BAR | 6:30 – 22:30', 'Come with us to enjoy a collection of drinks, cocktails, snacks. In addition, we also serve premium tea and cake sets hand-made by the hotel\'s chef at the Lobby Bar in the lobby area and enjoy melodious piano music every Monday and Wednesday evening.', '<p>Come with us to enjoy a collection of drinks, cocktails, snacks. In addition, we also serve premium tea and cake sets hand-made by the hotel&#39;s chef at the Lobby Bar in the lobby area and enjoy melodious piano music every Monday and Wednesday evening.<br />\r\n1. Uniquely designed space, enjoy the melodious sound of the piano<br />\r\n2. Fascinated by the diverse menu of drinks and cocktails<br />\r\n3. Luxurious, high-end tea and cake set</p>', NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 08:36:39', '2023-09-09 08:36:39'),
(240, 81, 132, NULL, NULL, NULL, 'LOBBY BAR | 6:30 – 22:30', 'Set trà bánh cao cấp 10:00 - 17:00 \r\nGiờ vàng khuyến mãi mua 1 tặng 1 (Bia và cocktails) 16:00 - 18:30 | Hãy đến với chúng tôi để thưởng thức bộ sưu tập đồ uống, cocktails, đồ ăn nhẹ. Ngoài ra, chúng tôi còn phục vụ những set trà bánh cao cấp do đầu bếp của khách sạn tự tay làm tại Lobby Bar khu tiền sảnh và thưởng thức tiếng đàn Piano du dương vào tối thứ 2 và thứ 4 hàng tuần.', '<p>H&atilde;y đến với ch&uacute;ng t&ocirc;i để thưởng thức bộ sưu tập đồ uống, cocktails, đồ ăn nhẹ. Ngo&agrave;i ra, ch&uacute;ng t&ocirc;i c&ograve;n phục vụ những set tr&agrave; b&aacute;nh cao cấp do đầu bếp của kh&aacute;ch sạn tự tay l&agrave;m tại Lobby Bar khu tiền sảnh v&agrave; thưởng thức tiếng đ&agrave;n Piano du dương v&agrave;o tối thứ 2 v&agrave; thứ 4 h&agrave;ng tuần.<br />\r\n1. Kh&ocirc;ng gian thiết kế độc đ&aacute;o, thưởng thức tiếng đ&agrave;n Piano du dương<br />\r\n2. L&ocirc;i cuốn bởi menu đồ uống, cocktail đa dạng<br />\r\n3. Set tr&agrave; b&aacute;nh sang chảnh, cao cấp</p>', NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-09-09 08:37:10', '2023-09-09 08:37:10'),
(241, 81, 133, NULL, NULL, NULL, 'LOBBY BAR', 'Memories are meant to be revisited. We invite you to experience The Ritz-Carlton, Amelia Island through the eyes of your fellow travelers and share unforgettable moments of your own vacation', NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-05-12 09:44:04', '2023-05-12 02:44:04'),
(242, 82, 131, NULL, NULL, NULL, 'LOTUS RESTAURANT | 6:00 - 22:30', 'Rich and flavorful Vietnamese culinary delights.\r\nWeekday Buffet breakfast 6:00 - 10:00 | Weekend: 6:00 - 10:30 \r\nLunch: 11:00 - 14:30 \r\nDinner: 17:30 - 22:30 | Discover the charm of Hanoi cuisine at Lotus restaurant, where only fresh ingredients are used. You will not only discover real Vietnamese dishes but also have many choices in the international menu. Experience Vietnamese culture through quality and flavorful dishes.', NULL, NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 09:28:59', '2023-09-09 09:28:59'),
(243, 82, 132, NULL, NULL, NULL, 'NHÀ HÀNG LOTUS | 6:00 - 22:30', 'Đậm đà hương vị ẩm thực Việt. 6:00 - 10:00 | Các ngày trong tuần 6:00 - 10:30 | Cuối tuần Ăn Trưa: 11:00 - 14:30 Ăn tối: 17:30 - 22:30 | Khám phá sự lôi cuốn của ẩm thực Hà Nội tại nhà hàng Lotus, nơi chỉ có những nguyên liệu tươi mới được sử dụng. Quý khách không chỉ khám phá những món ăn Việt Nam thực sự mà còn có nhiều sự lựa chọn trong bộ thực đơn quốc tế. Hãy trải nghiệm văn hóa Việt Nam thông qua các món ăn có chất lượng và hương vị đậm đà', '<p>Đậm đ&agrave; hương vị ẩm thực Việt. 6:00 - 10:00 | C&aacute;c ng&agrave;y trong tuần 6:00 - 10:30 | Cuối tuần Ăn Trưa: 11:00 - 14:30 Ăn tối: 17:30 - 22:30 | Kh&aacute;m ph&aacute; sự l&ocirc;i cuốn của ẩm thực H&agrave; Nội tại nh&agrave; h&agrave;ng Lotus, nơi chỉ c&oacute; những nguy&ecirc;n liệu tươi mới được sử dụng. Qu&yacute; kh&aacute;ch kh&ocirc;ng chỉ kh&aacute;m ph&aacute; những m&oacute;n ăn Việt Nam thực sự m&agrave; c&ograve;n c&oacute; nhiều sự lựa chọn trong bộ thực đơn quốc tế. H&atilde;y trải nghiệm văn h&oacute;a Việt Nam th&ocirc;ng qua c&aacute;c m&oacute;n ăn c&oacute; chất lượng v&agrave; hương vị đậm đ&agrave;</p>', NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-09-09 08:35:38', '2023-09-09 08:35:38'),
(244, 82, 133, NULL, NULL, NULL, 'SKY BAR', 'Memories are meant to be revisited. We invite you to experience The Ritz-Carlton, Amelia Island through the eyes of your fellow travelers and share unforgettable moments of your own vacation', '<h1><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/SKY_BAR/IMG_2678.jpg\" style=\"height:450px; width:800px\" /></h1>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/SKY_BAR/IMG_2665.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/SKY_BAR/IMG_2637.jpg\" style=\"height:450px; width:800px\" /></p>', NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-05-12 09:43:54', '2023-05-12 02:43:54'),
(245, 83, 131, NULL, NULL, NULL, 'FULL MOON INTERNATIONAL CUISINE | 11:00 - 22:30', 'Gathering all the essence of Asian - European Cuisine | \r\nLunch: 11:00 – 14:30\r\nDinner: 17:30 – 22:30\r\nLive Music: ON every Friday and Saturday: 18h30-21h30 | Full Moon offers a great culinary experience, with an attractive menu stretching from Asia to Europe. With fresh ingredients carefully selected and prepared by the talented hands of top chefs. Not only does it bring an experience to the taste buds, Full Moon also brings a feast to the ears with a Live Music program on weekends with the participation of famous singers and bands.', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 08:25:48', '2023-09-09 08:25:48'),
(246, 83, 132, NULL, NULL, NULL, 'FULL MOON INTERNATIONAL CUISINE | 11:00 - 22:30', 'Tinh hoa ẩm thực Á - Âu | \r\nGiờ ăn trưa: 11:00 – 14:30\r\nGiờ ăn tối: 17:30 – 22:30\r\nNhạc sống: Thứ 6,7 hàng tuần 18:30-21:30 | Full Moon đem đến trải nghiệm ẩm thực tuyệt vời, menu hấp dẫn trải dài từ Á đến Âu. Với nguyên vật liệu tươi ngon qua tuyển chọn kỹ càng và được chế biến từ đôi bàn tay tài hoa của những đầu bếp hàng đầu. Không chỉ đem lại trải nghiệm của vị giác, Full Moon còn đem tới bữa tiệc của thính giác bằng chương trình Live Music vào cuối tuần với sự góp mặt cũng những ca sĩ, ban nhạc nổi tiếng.', '<p><strong>FULL MOON INTERNATIONAL </strong></p>\r\n\r\n<p><strong>Tinh hoa ẩm thực &Aacute; - &Acirc;u</strong></p>\r\n\r\n<p>Lunch time | Giờ ăn trưa: 11:00 &ndash; 14:30<br />\r\nDinner time | Giờ ăn tối: 17:30 &ndash; 22:30<br />\r\nLive Music: Thứ 6,7 h&agrave;ng tuần/ON every Friday and Saturday: 18h30-21h30</p>\r\n\r\n<p>Full Moon đem đến trải nghiệm ẩm thực tuyệt vời, menu hấp dẫn trải d&agrave;i từ &Aacute; đến &Acirc;u. Với nguy&ecirc;n vật liệu tươi ngon qua tuyển chọn kỹ c&agrave;ng v&agrave; được chế biến từ đ&ocirc;i b&agrave;n tay t&agrave;i hoa của những đầu bếp h&agrave;ng đầu. Kh&ocirc;ng chỉ đem lại trải nghiệm của vị gi&aacute;c, Full Moon c&ograve;n đem tới bữa tiệc của th&iacute;nh gi&aacute;c bằng chương tr&igrave;nh Live Music v&agrave;o cuối tuần với sự g&oacute;p mặt cũng những ca sĩ, ban nhạc nổi tiếng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-08-04 10:45:30', '2023-08-04 10:45:30'),
(247, 83, 133, NULL, NULL, NULL, 'FULL MOON INTERNATIONAL CUISINE', 'Memories are meant to be revisited. We invite you to experience The Ritz-Carlton, Amelia Island through the eyes of your fellow travelers and share unforgettable moments of your own vacation', '<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/shop-nen-vivian/345888743_195863262849424_2763204675153531416_n.jpg\" style=\"height:1440px; width:1440px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/shop-nen-vivian/344856617_2181969035525785_5571685596289384270_n.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.datxanhindochine.vn/public/uploads/shop-nen-vivian/340852070_1329022824704438_1687969479382755759_n.jpg\" style=\"height:964px; width:1440px\" /></p>', NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-08-04 10:43:26', '2023-08-04 10:43:26'),
(248, 84, 137, NULL, NULL, NULL, 'MEETING ROOM', 'SUPER HOTEL Candle is a location with many years of experience in organizing conferences and seminars for many domestic and foreign businesses. A place that brings you professional, high-class experiences with modern facilities. (see more)', '<p>SUPER HOTEL Candle - the ideal destination for all types of events. Regardless of the nature or scale of the event, SUPER HOTEL Candle will always accompany customers to create impressive and unique events. SUPER HOTEL Candle offers a system of function rooms diverse in area and capacity characteristics<br />\r\n1. PHOENIX:<br />\r\nArea 330 m2<br />\r\nCapacity 230 people<br />\r\n2. THANG LONG:<br />\r\nArea 116&nbsp;m2<br />\r\nCapacity of 100 people<br />\r\n3. DONG DO:<br />\r\nArea 90 v<br />\r\nCapacity 60 people<br />\r\n4. TOKYO:<br />\r\nArea 85&nbsp;m2<br />\r\nCapacity 50 people<br />\r\n5. HA NOI:<br />\r\nArea 60&nbsp;m2<br />\r\nCapacity of 40 people</p>', NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 09:18:03', '2023-09-09 09:18:03'),
(249, 84, 138, NULL, NULL, NULL, 'HỌP MẶT & HỘI NGHỊ', 'SUPER HOTEL Candle là địa điểm có nhiều năm kinh nghiệm trong tổ chức hội nghị, hội thảo cho rất nhiều doanh nghiệp trong và ngoài nước. Nơi mang đến cho Quý khách những trải nghiệm chuyên nghiệp, cao cấp với cơ sở vật chất hiện đại.', '<p>SUPER HOTEL Candle - điểm đến l&yacute; tưởng cho mọi loại h&igrave;nh sự kiện. Bất kể t&iacute;nh chất hay quy m&ocirc; của sự kiện như thế n&agrave;o, SUPER HOTEL Candle sẽ lu&ocirc;n đồng h&agrave;nh c&ugrave;ng c&aacute;c qu&yacute; kh&aacute;ch h&agrave;ng để tạo n&ecirc;n những sự kiện ấn tượng v&agrave; duy nhất. SUPER HOTEL Candle đem đến hệ thống ph&ograve;ng chức năng đa dạng về diện t&iacute;ch v&agrave; đặc điểm sức chứa<br />\r\n1. PHOENIX:<br />\r\nDiện t&iacute;ch 330<br />\r\nSức chứa 230 người<br />\r\n2. THANG LONG:<br />\r\nDiện t&iacute;ch 116<br />\r\nSức chứa 100 người<br />\r\n3. Đ&Ocirc;NG Đ&Ocirc;:<br />\r\nDiện t&iacute;ch 90<br />\r\nSức chứa 60 người<br />\r\n4. TOKYO:<br />\r\nDiện t&iacute;ch 85<br />\r\nSức chứa 50 người<br />\r\n5. HA NOI:<br />\r\nDiện t&iacute;ch 60<br />\r\nSức chứa 40 người</p>', NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-07-19 09:09:15', '2023-07-19 09:09:15'),
(250, 84, 139, NULL, NULL, NULL, 'MEETING ROOM', 'Những kỷ niệm có nghĩa là để được xem lại. Chúng tôi mời bạn trải nghiệm The Ritz-Carlton, Đảo Amelia qua con mắt của những người bạn đồng hành và chia sẻ những khoảnh khắc khó quên trong kỳ nghỉ của chính bạn.', NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-05-12 09:42:24', '2023-05-12 02:42:24'),
(254, 86, 116, NULL, NULL, NULL, 'SUPERIOR ROOM', NULL, '<p>Room includes 1 single bed and 1 double bed, or Superior Room with city view with an area of ​​30 square meters including a single bed, standing shower area and stone bathtub, along with wooden interior design and carpet flooring high-class, bringing a feeling of gentle relaxation to customers.</p>', 0, 'VNĐ', NULL, 'en', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-09-09 04:28:58', '2023-09-09 04:28:58'),
(255, 86, 117, NULL, NULL, NULL, 'SUPERIOR ROOM', NULL, '<p>Ph&ograve;ng gồm 1 giường đơn v&agrave; 1 giường đ&ocirc;i, hay ph&ograve;ng Superior Room hướng to&agrave;n th&agrave;nh phố c&oacute; diện t&iacute;ch 30 m&eacute;t vu&ocirc;ng gồm một giường đơn, khu vực tắm đứng v&agrave; bồn tắm đ&aacute;, đi c&ugrave;ng với thiết kế nội thất gỗ v&agrave; thảm trải s&agrave;n cao cấp, mang đến cảm gi&aacute;c thư gi&atilde;n nhẹ nh&agrave;ng cho kh&aacute;ch h&agrave;ng.</p>', 0, 'VNĐ', NULL, 'vi', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-09-07 01:51:43', '2023-09-07 01:51:43'),
(256, 86, 118, NULL, NULL, NULL, 'スタジオアパートメント', NULL, NULL, 0, 'VNĐ', NULL, 'jp', 'Restaurant,Room_service,Laundry,Wifi,Parking_area,Have_breakfast,Gym,Spa,Safe,Television,Bathtub,Pool', NULL, NULL, '2023-07-19 07:35:55', '2023-07-19 07:35:55'),
(257, 87, 134, NULL, NULL, NULL, 'MINI MART', 'Mini supermarket is located right in the hotel lobby, providing all kinds of snacks and popular drinks; while bringing convenience and comfort to guests during their stay at SUPER HOTEL Candle.', '<p>Mini supermarket is located right in the hotel lobby, providing all kinds of snacks and popular drinks; while bringing convenience and comfort to guests during their stay at SUPER HOTEL Candle.</p>', NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 08:53:21', '2023-09-09 08:53:21'),
(258, 87, 135, NULL, NULL, NULL, 'MINI MART', 'Siêu thị Mini nằm ngay tại sảnh khách sạn, cung cấp các loại snack và các loại đồ uống thông dụng; đồng thời mang lại sự tiện lợi và thoải mái cho khách trong quá trình lưu trú tại SUPER HOTEL Candle.', '<p>Si&ecirc;u thị Mini nằm ngay tại sảnh kh&aacute;ch sạn, cung cấp c&aacute;c loại snack v&agrave; c&aacute;c loại đồ uống th&ocirc;ng dụng; đồng thời mang lại sự tiện lợi v&agrave; thoải m&aacute;i cho kh&aacute;ch trong qu&aacute; tr&igrave;nh lưu tr&uacute; tại SUPER HOTEL Candle.</p>', NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-07-19 08:59:26', '2023-07-19 08:59:26'),
(259, 87, 136, NULL, NULL, NULL, 'MINI MART', NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-08-04 10:40:48', '2023-08-04 10:40:48'),
(260, 88, 134, NULL, NULL, NULL, 'GYM', 'SUPER HOTEL CANDLE\'s gym with modern equipment will help you maintain a regular exercise regimen and have a toned body.', '<p>SUPER HOTEL CANDLE&#39;s gym with modern equipment will help you maintain a regular exercise regimen and have a toned body.</p>', NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 08:53:01', '2023-09-09 08:53:01'),
(261, 88, 135, NULL, NULL, NULL, 'GYM', 'Phòng tập thể hình của khách sạn SUPER HOTEL CANDLE với các trang thiết bị hiện đại sẽ giúp cho quý khách duy trì chế độ rèn luyện sức khỏe thường xuyên và thân hình săn chắc.', '<p>Ph&ograve;ng tập thể h&igrave;nh của kh&aacute;ch sạn SUPER HOTEL CANDLE với c&aacute;c trang thiết bị hiện đại sẽ gi&uacute;p cho qu&yacute; kh&aacute;ch duy tr&igrave; chế độ r&egrave;n luyện sức khỏe thường xuy&ecirc;n v&agrave; th&acirc;n h&igrave;nh săn chắc.</p>', NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-07-19 09:02:13', '2023-07-19 09:02:13'),
(262, 88, 136, NULL, NULL, NULL, 'GYM', NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-07-19 09:01:38', '2023-07-19 09:01:38'),
(263, 89, 134, NULL, NULL, NULL, 'POOL', 'After a busy day at work or immersing yourself in the vibrant life of the city, there\'s nothing better than relaxing in the cool blue water in the spacious, beautifully designed swimming pool area. Attractive snacks or a cool cocktail or juice will be ideal suggestions to recharge energy at the end of the day.', '<p>After a busy day at work or immersing yourself in the vibrant life of the city, there&#39;s nothing better than relaxing in the cool blue water in the spacious, beautifully designed swimming pool area. Attractive snacks or a cool cocktail or juice will be ideal suggestions to recharge energy at the end of the day.</p>', NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 08:52:27', '2023-09-09 08:52:27'),
(264, 89, 135, NULL, NULL, NULL, 'BỂ BƠI', 'Sau một ngày bận rộn với công việc hay cuốn mình vào nhịp sống sôi động của phố phường, còn gì tuyệt vời hơn khi được thả mình trong dòng nước xanh mát tại khu vực bể bơi thoáng rộng, được thiết kế đẹp mắt. Các món ăn nhẹ đầy hấp dẫn hay một ly cocktail hoặc nước ép mát lạnh sẽ là gợi ý lý tưởng để nạp lại năng lượng cuối ngày.', '<p>Sau một ng&agrave;y bận rộn với c&ocirc;ng việc hay cuốn m&igrave;nh v&agrave;o nhịp sống s&ocirc;i động của phố phường, c&ograve;n g&igrave; tuyệt vời hơn khi được thả m&igrave;nh trong d&ograve;ng nước xanh m&aacute;t tại khu vực bể bơi tho&aacute;ng rộng, được thiết kế đẹp mắt. C&aacute;c m&oacute;n ăn nhẹ đầy hấp dẫn hay một ly cocktail hoặc nước &eacute;p m&aacute;t lạnh sẽ l&agrave; gợi &yacute; l&yacute; tưởng để nạp lại năng lượng cuối ng&agrave;y.</p>', NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-07-19 09:03:06', '2023-07-19 09:03:06'),
(265, 89, 136, NULL, NULL, NULL, 'POOL', NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-07-19 09:03:06', '2023-07-19 09:03:06'),
(266, 90, 134, NULL, NULL, NULL, 'SPA', 'Indulge yourself in a premium massage treatment originating from the land of Cherry Blossoms - Japan at SUPER HOTEL Candle\'s Spa. Relaxation massage combined with Treatment - Health improvement\r\nHelps clear meridians - Helps improve calcification and degeneration', '<p>Let yourself enjoy a premium massage treatment originating from the land of Cherry Blossom - Japan at the Spa of SUPER HOTEL Candle. Relaxation massage combined with Treatment - Health improvement<br />\r\nHelps clear meridians - Helps improve calcification and degeneration<br />\r\nSpa treatments:<br />\r\n1. Fuji foot therapy acupressure<br />\r\n2. Hot stone massage for back care<br />\r\n3. Swedish massage<br />\r\n4. Traditional Vietnamese body massage<br />\r\n5. Traditional Thai body massage<br />\r\n6. Shiatsu body massage<br />\r\n7. Herbal essence massage<br />\r\n8. Perfect experience package<br />\r\n9. Chinese neck and shoulder therapy<br />\r\n10. Chinese back treatment<br />\r\n11. Wellness treatment package</p>', NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 08:51:46', '2023-09-09 08:51:46'),
(267, 90, 135, NULL, NULL, NULL, 'SPA', 'Thả mình tận hưởng một liệu trình massage thượng hạng có nguồn gốc từ xứ sở Hoa Anh Đào - Nhật Bản tại Spa của SUPER HOTEL Candle. Thư giãn massage kết hợp Điều trị - Nâng cao sức khỏe\r\nGiúp đả thông kinh lạc - Giúp cải thiện tình trạng vôi hoá, thoái hoá', '<p>&quot;Thả m&igrave;nh tận hưởng một liệu tr&igrave;nh massage thượng hạng c&oacute; nguồn gốc từ xứ sở Hoa Anh Đ&agrave;o - Nhật Bản tại Spa của SUPER HOTEL Candle. Thư gi&atilde;n massage kết hợp Điều trị - N&acirc;ng cao sức khỏe<br />\r\nGi&uacute;p đả th&ocirc;ng kinh lạc - Gi&uacute;p cải thiện t&igrave;nh trạng v&ocirc;i ho&aacute;, tho&aacute;i ho&aacute;<br />\r\nC&aacute;c liệu tr&igrave;nh Spa:<br />\r\n1. Bấm huyệt trị liệu b&agrave;n ch&acirc;n Fuji<br />\r\n2. Massage đ&aacute; n&oacute;ng chăm s&oacute;c lưng<br />\r\n3. Massage Thụy Điển<br />\r\n4. Massage body truyền thống kiểu Việt Nam<br />\r\n5. Massage body truyền thống kiểu Th&aacute;i<br />\r\n6. Massage body Shiatsu<br />\r\n7. Massage tinh chất thảo dược<br />\r\n8. G&oacute;i trải nghiệm ho&agrave;n hảo<br />\r\n9. Trị liệu cổ vai g&aacute;y Trung Hoa<br />\r\n10. Trị liệu v&ugrave;ng lưng Trung Hoa<br />\r\n11. G&oacute;i liệu tr&igrave;nh Wellness</p>', NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-07-19 09:06:32', '2023-07-19 09:06:32'),
(268, 90, 136, NULL, NULL, NULL, 'SPA', NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-07-19 09:04:01', '2023-07-19 09:04:01'),
(269, 91, 143, NULL, NULL, NULL, 'Award', NULL, NULL, NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 09:22:56', '2023-09-09 09:22:56'),
(270, 91, 144, NULL, NULL, NULL, 'Giải thưởng', NULL, NULL, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-07-21 01:51:49', '2023-07-21 01:51:49'),
(271, 91, 145, NULL, NULL, NULL, 'Giải thưởng', NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-09-09 09:22:56', '2023-09-09 09:22:56'),
(272, 92, 143, NULL, NULL, NULL, 'Award', 'Award: Hotel serving Japanese customers the most in 2018\r\nby Vietnam Tourism Association', NULL, NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 09:24:13', '2023-09-09 09:24:13'),
(273, 92, 144, NULL, NULL, NULL, 'Giải thưởng', 'Danh hiệu: Khách sạn phục vụ khách hàng Nhật Bản nhiều nhất năm 2018\r\nbởi Hiệp hội Du lich Việt Nam', NULL, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-07-21 02:15:07', '2023-07-21 02:15:07'),
(274, 92, 145, NULL, NULL, NULL, 'Giải thưởng', NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-07-21 02:15:07', '2023-07-21 02:15:07'),
(275, 93, 143, NULL, NULL, NULL, 'Award', 'Stage Three New Building Existing 2014', NULL, NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 09:24:36', '2023-09-09 09:24:36'),
(276, 93, 144, NULL, NULL, NULL, 'Giải thưởng', 'Giải ba Tòa nhà mới hiện có năm 2014', NULL, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-07-21 02:17:08', '2023-07-21 02:17:08'),
(277, 93, 145, NULL, NULL, NULL, 'Giải thưởng', NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-07-21 02:17:08', '2023-07-21 02:17:08'),
(278, 94, 143, NULL, NULL, NULL, 'Award', '2016 Rakuten Travle Gold Award', NULL, NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 09:25:21', '2023-09-09 09:25:21'),
(279, 94, 144, NULL, NULL, NULL, 'Giải thưởng', 'Giải thưởng Vàng năm 2016 của Rakuten Travel', NULL, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-09-07 02:11:33', '2023-09-07 02:11:33'),
(280, 94, 145, NULL, NULL, NULL, 'Giải thưởng', NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-07-21 02:22:56', '2023-07-21 02:22:56'),
(281, 95, 143, NULL, NULL, NULL, 'Award', 'Rakuten Travle Gold Award 2019', NULL, NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 09:25:46', '2023-09-09 09:25:46'),
(282, 95, 144, NULL, NULL, NULL, 'Giải thưởng', 'Giải thưởng Vàng năm 2019 của Rakuten Travel', NULL, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-09-07 02:11:45', '2023-09-07 02:11:45'),
(283, 95, 145, NULL, NULL, NULL, 'Giải thưởng', NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-07-21 02:23:33', '2023-07-21 02:23:33'),
(284, 96, 143, NULL, NULL, NULL, 'Award', '2016 Rakuten Travle Rising Star Award', NULL, NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 09:26:23', '2023-09-09 09:26:23'),
(285, 96, 144, NULL, NULL, NULL, 'Giải thưởng', 'Giải thưởng Rising Star Award năm 2016 của Rakuten Travel', NULL, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-09-07 02:07:53', '2023-09-07 02:07:53'),
(286, 96, 145, NULL, NULL, NULL, 'Giải thưởng', NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-07-21 02:24:05', '2023-07-21 02:24:05'),
(287, 97, 143, NULL, NULL, NULL, 'Award', '2014 Rakuten Travle . Rising Star Award', NULL, NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 09:26:45', '2023-09-09 09:26:45'),
(288, 97, 144, NULL, NULL, NULL, 'Giải thưởng', 'Giải thưởng Rising Star Award năm 2014 của Rakuten Travel', NULL, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-09-07 02:05:47', '2023-09-07 02:05:47'),
(289, 97, 145, NULL, NULL, NULL, 'Giải thưởng', NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-07-21 02:24:41', '2023-07-21 02:24:41'),
(290, 98, 143, NULL, NULL, NULL, 'Award', '2017 Rakuten Travle . Bronze Award', NULL, NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 09:27:09', '2023-09-09 09:27:09'),
(291, 98, 144, NULL, NULL, NULL, 'Giải thưởng', 'Giải thưởng Bronze Award năm 2017 của Rakuten Travel', NULL, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-09-07 02:06:48', '2023-09-07 02:06:48'),
(292, 98, 145, NULL, NULL, NULL, 'Giải thưởng', NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-07-21 02:25:06', '2023-07-21 02:25:06'),
(293, 99, 143, NULL, NULL, NULL, 'Award', 'Bronze Award 2018 by Rakuten Travle', NULL, NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 09:27:35', '2023-09-09 09:27:35'),
(294, 99, 144, NULL, NULL, NULL, 'Giải thưởng', 'Giải thưởng Bronze Award năm 2018 của Rakuten Travel', NULL, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-09-07 02:04:31', '2023-09-07 02:04:31'),
(295, 99, 145, NULL, NULL, NULL, 'Giải thưởng', NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-07-21 02:25:47', '2023-07-21 02:25:47'),
(296, 100, 143, NULL, NULL, NULL, 'Award', 'TravelLoka\'s impressive 8.4 certificate', NULL, NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 09:28:05', '2023-09-09 09:28:05'),
(297, 100, 144, NULL, NULL, NULL, 'Giải thưởng', 'Chứng nhận đạt 8.4 điểm ấn tượng của Traveloka', NULL, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-09-07 02:03:15', '2023-09-07 02:03:15'),
(298, 100, 145, NULL, NULL, NULL, 'Giải thưởng', NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-07-21 02:26:17', '2023-07-21 02:26:17'),
(299, 101, 143, NULL, NULL, NULL, 'Award', 'Award Winner\'s certificate of impressive 8.4 points', NULL, NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 09:28:26', '2023-09-09 09:28:26'),
(300, 101, 144, NULL, NULL, NULL, 'Giải thưởng', 'Chứng nhận đạt 8.4 điểm ấn tượng của Award Winner', NULL, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-07-21 02:26:44', '2023-07-21 02:26:44'),
(301, 101, 145, NULL, NULL, NULL, 'Giải thưởng', NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-07-21 02:26:44', '2023-07-21 02:26:44'),
(302, 102, 140, NULL, NULL, NULL, 'UP TO 30% OFF ON SERVICED APARTMENTS RENTAL FEES THROUGHOUT THE YEAR 2023', '- REST AREA  IDEA FOR A PERFECT TRIP \r\n-  Deluxe and luxurious Serviced Apartments located within a 4-star upscale hotel', '<p><strong>REST AREA&nbsp; IDEA FOR A PERFECT TRIP&nbsp;</strong></p>\r\n\r\n<p><strong>⭐ Up to 30% off on Serviced Apartments rental fees throughout the year 2023&nbsp;</strong></p>\r\n\r\n<p><strong>⭐ Deluxe and luxurious Serviced Apartments located within a 4-star upscale hotel</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Inspired by the Japanese way of living, SUPER HOTEL Candle&#39;s Serviced Apartments strike the perfect balance between relaxation, tranquility, and modern convenience, offering a plethora of amenities. Just like an energy charging station after a hectic day at work, the Serviced Apartments at SUPER HOTEL Candle are the ideal destination for extended business trips.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>🔹 Located in the heart of the capital city, it takes only 3 - 8 minutes to reach various embassies, major office buildings, the Old Quarter, Ho Chi Minh Mausoleum, West Lake,...&nbsp;</strong></p>\r\n\r\n<p><strong>🔹 Offering a diverse range of accommodation options to meet the needs of our valued guests, with a total of 68 apartments: Mini Apartment, Apartment Suite 1 Bed, Apartment Suite 2 Beds, Presidential Suite.&nbsp;</strong></p>\r\n\r\n<p><strong>🔹 Panoramic views that capture the vibrant cityscape and the romantic WestLake. 🔹 Elegant, luxurious, and well-appointed spaces with smart facilities.&nbsp;</strong></p>\r\n\r\n<p><strong>🔹 A top-notch recreational ecosystem within the hotel: Workspaces, Full Moon International Cuisine Restaurant, Garden Cafe, Lobby Bar, Mini-mart, Spa &amp; Fitness Center, Gym, Year-round Swimming Pool, Sauna, Laundry facilities, and more.&nbsp;</strong></p>\r\n\r\n<p><strong>🔹 Professional and attentive services provided by a dedicated team of staff, always listening and ready to meet the needs of our valued guests.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>🔔 #INBOX or contact #HOTLINE to get detailed advice and apply for a booking discount!</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&mdash;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://www.facebook.com/superhotelcandle?__cft__[0]=AZW6IHnA1qJc5YJlZWJyuRuWV4F3wEaEnuH0-Jw-F5MEbR3gV2gd7dzxQ7zEiOny4If665ke-EdlbHa_jd45xqaEpkhQqOusiBvppssxx1YcIKAf5OhXRGBf5M3MOxEIU48nQUGfBU-zUX2cMRIPCkHYSnrDZGZXhOojL-a9GDzG-SakiDA74s9yEfclHfpy3_A&amp;__tn__=-]K-R\">SUPER HOTEL Candle</a></strong></p>\r\n\r\n<p><strong><img alt=\"⚜️\" src=\"https://lh4.googleusercontent.com/N2fSIp_bKT6HPyijIEvr3TBLgIiuRacJYaccUWek-IOwUyPjiOX8Ocm1JHGDsyViVPzOd26q5932V77s2ycHFyBLnoH6MlR38imxTEzrUtEE8vZn_k33LYth7P5XAio6yyOcMbvx-IIpbjD4tfWQCwE\" style=\"height:16px; width:16px\" /> No. 287 - 301 Đoi Can, Ba Đinh, Ha Noi</strong></p>\r\n\r\n<p><strong><img alt=\"📞\" src=\"https://lh3.googleusercontent.com/MTzMdmoXgk8VfG4LrYUm8g5Qi2KFoGTbzfIM5-XYuyEnoY7sIaxCg2hM61H8yG-mE8n_KcO_F7Q2zqkgnOEQo1gYxE3W2-hnG91Nd3kS8j7gRg8ZWflIbr-79MxUwD5VLqe8WS-vTnswS25BeVO_lVQ\" style=\"height:16px; width:16px\" /> (+84) 0911 209 911 | (+84) 0243 733 9933 | Ext: 6607</strong></p>\r\n\r\n<p><strong>📨 sales@superhotelcandle.vn</strong></p>\r\n\r\n<p><br />\r\n&nbsp;</p>', NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-08-04 10:17:44', '2023-08-04 10:17:44');
INSERT INTO `post_translations` (`id`, `post_id`, `category_tras_id`, `province_id`, `district_id`, `ward_id`, `name`, `detail`, `content`, `price`, `unit`, `address`, `locale`, `utilities`, `title`, `description`, `created_at`, `updated_at`) VALUES
(303, 102, 141, NULL, NULL, NULL, 'ƯU ĐÃI GIẢM TỚI 30% PHÍ THUÊ CĂN HỘ DỊCH VỤ TRONG NĂM 2023', 'TRẠM DỪNG CHÂN LÝ TƯỞNG CHO CHUYẾN CÔNG DU HOÀN MỸ', '<p><strong>(Please find English below)&nbsp;</strong></p>\r\n\r\n<p><strong>TRẠM DỪNG CH&Acirc;N L&Yacute; TƯỞNG CHO CHUYẾN C&Ocirc;NG DU HO&Agrave;N MỸ&nbsp;</strong></p>\r\n\r\n<p><strong>⭐ Ưu đ&atilde;i giảm tới 30% ph&iacute; thu&ecirc; Căn Hộ Dịch Vụ trong năm 2023&nbsp;</strong></p>\r\n\r\n<p><strong>⭐ Căn Hộ Dịch Vụ tiện nghi, sang trọng nằm trong Kh&aacute;ch sạn 4 sao đẳng cấp &nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Được lấy cảm hứng từ phong c&aacute;ch sống của người Nhật, Căn Hộ Dịch Vụ của SUPER HOTEL Candle l&agrave; điểm c&acirc;n bằng giữa sự thư gi&atilde;n, an y&ecirc;n v&agrave; lối sống tiện nghi, ngập tr&agrave;n tiện &iacute;ch. Như trạm sạc năng lượng sau bộn bề c&ocirc;ng việc, Căn Hộ Dịch Vụ tại SUPER HOTEL Candle l&agrave; điểm đến l&yacute; tưởng cho chuyến c&ocirc;ng t&aacute;c d&agrave;i ng&agrave;y.&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>🔹 Tọa lạc tại vị tr&iacute; trung t&acirc;m thủ đ&ocirc; khi chỉ mất 3 - 8 ph&uacute;t để tới Đại sứ qu&aacute;n c&aacute;c nước, to&agrave; nh&agrave; văn ph&ograve;ng lớn, khu Phố cổ, Lăng Chủ tịch Hồ Ch&iacute; Minh, Hồ T&acirc;y&hellip;</strong></p>\r\n\r\n<p><strong>🔹 Đa dạng m&ocirc; h&igrave;nh, sẵn s&agrave;ng &ldquo;chiều l&ograve;ng&rdquo; nhu cầu Qu&yacute; kh&aacute;ch với hệ thống 68 căn hộ: Mini Apartment, Apartment Suite 1 Bed, Apartment Suite 2 Beds, Presidential Suite&nbsp;</strong></p>\r\n\r\n<p><strong>🔹 Tầm nh&igrave;n panorama bao trọn quang cảnh th&agrave;nh phố s&ocirc;i động c&ugrave;ng Hồ T&acirc;y l&atilde;ng mạn&nbsp;</strong></p>\r\n\r\n<p><strong>🔹 Kh&ocirc;ng gian thiết kế tinh tế, sang trọng, tiện nghi với thiết bị th&ocirc;ng minh&nbsp;</strong></p>\r\n\r\n<p><strong>🔹 Hệ sinh th&aacute;i tiện &iacute;ch nghỉ dưỡng đẳng cấp tại Kh&aacute;ch sạn: Khu l&agrave;m việc, Nh&agrave; h&agrave;ng Full Moon International Cuisine, Garden Cafe, Lobby Bar, Mini-mart, Spa &amp; Fitness Center, Gym, Bể bơi 4 m&ugrave;a, X&ocirc;ng hơi, Giặt l&agrave;...</strong></p>\r\n\r\n<p><strong>🔹 Dịch vụ chuy&ecirc;n nghiệp, chu đ&aacute;o, đội ngũ nh&acirc;n vi&ecirc;n tận t&acirc;m, lu&ocirc;n lắng nghe v&agrave; sẵn s&agrave;ng đ&aacute;p ứng c&aacute;c nhu cầu của Qu&yacute; kh&aacute;ch&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>🔔 <a href=\"https://www.facebook.com/hashtag/inbox?__eep__=6&amp;__cft__[0]=AZVSruiFEHomX8nlcM1r1dH1_N0vbkqea7tRkUXV8mDPdH8Vnvc_WBfECSWkPmNdNf-0EcbgdSS9QABYJyOYISdwiu-P5oPkaaz7j0njwEq43hBYnAe2ejuUU31r28V9tvhXPiITesRmQ9foD61s8Mu9NbEWSox3dgDCrsLyK0dK89LiJWe_FKfEOTxwU7RjxYA&amp;__tn__=*NK-R\">#INBOX</a> hoặc li&ecirc;n hệ #HOTLINE để nhận tư vấn chi tiết v&agrave; được &aacute;p dụng ưu đ&atilde;i đặt ph&ograve;ng nh&eacute;!</strong></p>', NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-08-04 10:17:44', '2023-08-04 10:17:44'),
(304, 102, 142, NULL, NULL, NULL, 'UP TO 30% OFF ON SERVICED APARTMENTS RENTAL FEES THROUGHOUT THE YEAR 2023', NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-08-04 10:17:44', '2023-08-04 10:17:44'),
(305, 103, 140, NULL, NULL, NULL, '10% OFF TOTAL BILL & FREE 1 GLASS MILK TEA WHEN USING BUFFET DIMSUM FOR RESTAURANT', 'EXPERIENCE DIMSUM BUFFET AT A PREMIUM HOTEL 4-STAR LUXURY', NULL, NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-08-04 10:14:46', '2023-08-04 10:14:46'),
(306, 103, 141, NULL, NULL, NULL, 'GIẢM NGAY 10% TỔNG BILL', 'Giảm ngay 10% tổng Bill & Tặng thêm 1 ly Trà sữa khi sử dụng Buffet Dimsum tại nhà hàng', '<p>ƯU Đ&Atilde;I QU&Aacute; TRỜI - ƯNG QU&Aacute; CHỪNG</p>\r\n\r\n<p><img alt=\"⭐\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tb4/1/16/2b50.png\" style=\"height:16px; width:16px\" /> Giảm ngay 10% tổng Bill &amp; Tặng th&ecirc;m 1 ly Tr&agrave; sữa khi sử dụng Buffet Dimsum tại nh&agrave; h&agrave;ng</p>\r\n\r\n<p>Nay chỉ từ 296.000 VNĐ để tận hưởng thế giới Buffet Dimsum ngon chuẩn vị Trung Hoa tại nh&agrave; h&agrave;ng kh&aacute;ch sạn 4 Sao đẳng cấp</p>\r\n\r\n<p>Kh&ocirc;ng chỉ l&agrave; ẩm thực, nh&agrave; h&agrave;ng Full Moon International Cuisine l&agrave; điểm chạm ho&agrave;n hảo cho bữa tiệc đa gi&aacute;c quan. Những xửng Dimsum n&oacute;ng hổi đậm đ&agrave; mỹ vị Trung Hoa được thưởng thức trong kh&ocirc;ng gian sang trọng. Kết hợp &aacute;nh s&aacute;ng lung linh v&agrave; &acirc;m nhạc du dương s&acirc;u lắng. Tất cả được may đo đong đếm đủ h&ograve;a quyện mang tới một trải nghiệm ho&agrave;n mỹ v&agrave; tạo n&ecirc;n một Full Moon độc bản.</p>\r\n\r\n<p>Đặc biệt, Full Moon International Cuisine d&agrave;nh tặng ưu đ&atilde;i:</p>\r\n\r\n<p><img alt=\"🥟\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te2/1/16/1f95f.png\" style=\"height:16px; width:16px\" /> Giảm 10% tr&ecirc;n tổng h&oacute;a đơn Buffet Dimsum</p>\r\n\r\n<p><img alt=\"🥟\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te2/1/16/1f95f.png\" style=\"height:16px; width:16px\" /> Tặng 1 ly Tr&agrave; sữa miễn ph&iacute;</p>\r\n\r\n<p>Khi Qu&yacute; kh&aacute;ch đặt b&agrave;n trước v&agrave; sử dụng Buffet Dimsum tại nh&agrave; h&agrave;ng</p>\r\n\r\n<p><img alt=\"🔔\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t30/1/16/1f514.png\" style=\"height:16px; width:16px\" /> Nhanh tay <a href=\"https://www.facebook.com/hashtag/inbox?__eep__=6&amp;__cft__[0]=AZX9z0uPsAVvqpSiyOFIMfVIctwMpduNzwossHmR9FKVdPcHCHr3zHzO--XLJHByYcm6ZCHRPg9aA3Oo38y_YwQf1bNBzI7XEoofPhVKWAe7qgjAOB8_eRFeAnvyX5RG124ewSHBtxIF7lqA07dGj98CKoJOCWzmmPmprTF0TurPbr06v5HjijE2CO4Q9Qxye1k&amp;__tn__=*NK-R\">#INBOX</a> hoặc li&ecirc;n hệ <a href=\"https://www.facebook.com/hashtag/hotline?__eep__=6&amp;__cft__[0]=AZX9z0uPsAVvqpSiyOFIMfVIctwMpduNzwossHmR9FKVdPcHCHr3zHzO--XLJHByYcm6ZCHRPg9aA3Oo38y_YwQf1bNBzI7XEoofPhVKWAe7qgjAOB8_eRFeAnvyX5RG124ewSHBtxIF7lqA07dGj98CKoJOCWzmmPmprTF0TurPbr06v5HjijE2CO4Q9Qxye1k&amp;__tn__=*NK-R\">#HOTLINE</a> để h&ograve;a m&igrave;nh v&agrave;o đ&ecirc;m tiệc ẩm thực v&agrave; &aacute;p dụng ưu đ&atilde;i nh&eacute;.</p>\r\n\r\n<p>&mdash;</p>\r\n\r\n<p><a href=\"https://www.facebook.com/Fullmooninternationalcuisine?__cft__[0]=AZX9z0uPsAVvqpSiyOFIMfVIctwMpduNzwossHmR9FKVdPcHCHr3zHzO--XLJHByYcm6ZCHRPg9aA3Oo38y_YwQf1bNBzI7XEoofPhVKWAe7qgjAOB8_eRFeAnvyX5RG124ewSHBtxIF7lqA07dGj98CKoJOCWzmmPmprTF0TurPbr06v5HjijE2CO4Q9Qxye1k&amp;__tn__=-]K-R\">Full Moon International Cuisine</a></p>\r\n\r\n<p><img alt=\"⚜️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tb7/1/16/269c.png\" style=\"height:16px; width:16px\" /> SUPER HOTEL Candle - Tầng M, số 287 - 301 Đội Cấn, Ba Đ&igrave;nh, H&agrave; Nội</p>\r\n\r\n<p><img alt=\"📞\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t4d/1/16/1f4de.png\" style=\"height:16px; width:16px\" /> (+84) 0243 733 9933 | M&aacute;y lẻ - 6618 | 0911 209 911</p>\r\n\r\n<p><img alt=\"📧\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tbe/1/16/1f4e7.png\" style=\"height:16px; width:16px\" /> fbm@superhotelcandle.vn</p>', NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-08-04 10:31:37', '2023-08-04 10:31:37'),
(307, 103, 142, NULL, NULL, NULL, '10% OFF TOTAL BILL & FREE 1 GLASS MILK TEA WHEN USING BUFFET DIMSUM FOR RESTAURANT', NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-08-04 10:14:46', '2023-08-04 10:14:46'),
(308, 104, 140, NULL, NULL, NULL, '50% OFF MASSAGE TREATMENT', '50% discount on Massage treatment price for the first 100 customers who register to experience the service', '<p><strong>SPECIAL OFFER FOR A PERFECT CARE EXPERIENCE</strong></p>\r\n\r\n<p><strong>⭐ 50% discount on Massage treatment price for the first 100 customers to register to experience the service</strong></p>\r\n\r\n<p><strong>⭐ 30% off Four Seasons Swimming Pool tickets &amp; 01 free swimming lesson worth 500,000 VND &amp; 01 voucher to use the 60-minute Body Massage treatment package</strong></p>\r\n\r\n<p><strong>🌸 Press the &quot;pause&quot; button for the chaos and worries of life. Give yourself moments of absolute relaxation and renewed energy at Spa &amp; Fitness Center - SUPER HOTEL Candle with classy 4-star hotel standards, central location in Hanoi.</strong></p>\r\n\r\n<p><strong>🌸 Distilling the essence from care treatments originating from the land of Cherry Blossoms - Japan, Spa &amp; Fitness Center brings a professional body care experience. Relax and listen to melodious music and the delicate scent of herbs in a space designed with a meditative, peaceful Japanese style.</strong></p>\r\n\r\n<p><strong>🌸 Enjoy wonderful moments of relaxation with the Sauna - Steam service. Immerse yourself in the cool blue water of Four Seasons Swimming Pool with 4* standard water quality and beautiful spacious space design. Super Hotel Candle&#39;s Four Seasons Swimming Pool is the ideal place for you to enjoy swimming to relieve negative energy and refresh yourself.</strong></p>\r\n\r\n<p><strong>Please #INBOX the Spa &amp; Fitness Center to book an appointment to experience resort services at the 4* SUPER HOTEL Candle Hotel.</strong></p>\r\n\r\n<p><strong>&mdash;</strong></p>\r\n\r\n<p><strong>&nbsp; SUPER HOTEL Candle, Spa &amp; Fitness Center, 3rd Floor, 287 - 301 Doi Can, Ba Dinh, Hanoi</strong></p>\r\n\r\n<p><strong>&nbsp; (+84) 096 790 0530 | 091 120 9911 | 024 3733 9933 - Ext: 4444</strong></p>\r\n\r\n<p><strong>&nbsp; fc@superhotelcandle.vn | sales@superhotelcandle.vn</strong></p>', NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 09:32:28', '2023-09-09 09:32:28'),
(309, 104, 141, NULL, NULL, NULL, 'GIẢM 50% LIỆU TRÌNH MASSAGE', 'Giảm 50% giá liệu trình Massage cho 100 Quý khách đầu tiên đăng ký trải nghiệm dịch vụ', NULL, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-08-04 10:25:07', '2023-08-04 10:25:07'),
(310, 104, 142, NULL, NULL, NULL, 'GIẢM 50% LIỆU TRÌNH MASSAGE', 'Giảm 50% giá liệu trình Massage cho 100 Quý khách đầu tiên đăng ký trải nghiệm dịch vụ', NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-08-04 10:25:07', '2023-08-04 10:25:07'),
(311, 105, 140, NULL, NULL, NULL, '30% OFF FOUR SEASONS SWIMMING POOL TICKETS', '30% off Four Seasons Swimming Pool tickets & 01 free swimming lesson worth 500,000 VND & 01 voucher to use the 60-minute Body Massage treatment package', '<p><strong>SPECIAL OFFER FOR A PERFECT CARE EXPERIENCE</strong></p>\r\n\r\n<p><strong>⭐ 50% discount on Massage treatment price for the first 100 customers to register to experience the service</strong></p>\r\n\r\n<p><strong>⭐ 30% off Four Seasons Swimming Pool tickets &amp; 01 free swimming lesson worth 500,000 VND &amp; 01 voucher to use the 60-minute Body Massage treatment package</strong></p>\r\n\r\n<p><strong>🌸 Press the &quot;pause&quot; button for the chaos and worries of life. Give yourself moments of absolute relaxation and renewed energy at Spa &amp; Fitness Center - SUPER HOTEL Candle with classy 4-star hotel standards, central location in Hanoi.</strong></p>\r\n\r\n<p><strong>🌸 Distilling the essence from care treatments originating from the land of Cherry Blossoms - Japan, Spa &amp; Fitness Center brings a professional body care experience. Relax and listen to melodious music and the delicate scent of herbs in a space designed with a meditative, peaceful Japanese style.</strong></p>\r\n\r\n<p><strong>🌸 Enjoy wonderful moments of relaxation with the Sauna - Steam service. Immerse yourself in the cool blue water of Four Seasons Swimming Pool with 4* standard water quality and beautiful spacious space design. Super Hotel Candle&#39;s Four Seasons Swimming Pool is the ideal place for you to enjoy swimming to relieve negative energy and refresh yourself.</strong></p>\r\n\r\n<p><strong>Please #INBOX the Spa &amp; Fitness Center to book an appointment to experience resort services at the 4* SUPER HOTEL Candle Hotel.</strong></p>\r\n\r\n<p><strong>&mdash;</strong></p>\r\n\r\n<p><strong>&nbsp; SUPER HOTEL Candle, Spa &amp; Fitness Center, 3rd Floor, 287 - 301 Doi Can, Ba Dinh, Hanoi</strong></p>\r\n\r\n<p><strong>&nbsp; (+84) 096 790 0530 | 091 120 9911 | 024 3733 9933 - Ext: 4444</strong></p>\r\n\r\n<p><strong>&nbsp; fc@superhotelcandle.vn | sales@superhotelcandle.vn</strong></p>', NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-09-09 09:31:39', '2023-09-09 09:31:39'),
(312, 105, 141, NULL, NULL, NULL, 'GIẢM 30% VÉ BỂ BƠI BỐN MÙA', 'Giảm 30% vé Bể bơi bốn mùa & Tặng kèm 01 buổi dạy bơi miễn phí trị giá 500.000 VNĐ & Tặng 01 voucher sử dụng gói liệu trình Massage Body 60 phút', '<p><strong>ƯU Đ&Atilde;I ĐẶC BIỆT CHO TRẢI NGHIỆM CHĂM S&Oacute;C HO&Agrave;N HẢO&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>⭐ Giảm 50% gi&aacute; liệu tr&igrave;nh Massage cho 100 Qu&yacute; kh&aacute;ch đầu ti&ecirc;n đăng k&yacute; trải nghiệm dịch vụ</strong></p>\r\n\r\n<p><strong>⭐ Giảm 30% v&eacute; Bể bơi bốn m&ugrave;a &amp; Tặng k&egrave;m 01 buổi dạy bơi miễn ph&iacute; trị gi&aacute; 500.000 VNĐ &amp; Tặng 01 voucher sử dụng g&oacute;i liệu tr&igrave;nh Massage Body 60 ph&uacute;t&nbsp;</strong></p>\r\n\r\n<p><strong>🌸 Nhấn n&uacute;t &ldquo;pause&rdquo; cho những bộn bề, lo toan cuộc sống. D&agrave;nh tặng cho bản th&acirc;n những ph&uacute;t gi&acirc;y thư gi&atilde;n tuyệt đối, t&aacute;i tạo năng lượng tại Spa &amp; Fitness Center - SUPER HOTEL Candle với ti&ecirc;u chuẩn Kh&aacute;ch sạn 4 sao đẳng cấp, vị tr&iacute; trung t&acirc;m H&agrave; Nội.&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>🌸 Chắt lọc tinh hoa từ liệu tr&igrave;nh chăm s&oacute;c bắt nguồn từ xứ sở Hoa Anh Đ&agrave;o - Nhật Bản, Spa &amp; Fitness Center mang tới trải nghiệm chăm s&oacute;c cơ thể chuy&ecirc;n nghiệp. Thư gi&atilde;n lắng nghe tiếng nhạc du dương, hương thơm tinh tế của thảo dược trong kh&ocirc;ng gian được thiết kế đậm chất thiền, an y&ecirc;n của phong c&aacute;ch Nhật Bản.&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>🌸 Tận hưởng những ph&uacute;t gi&acirc;y thư gi&atilde;n tuyệt vời với dịch vụ X&ocirc;ng - Sục. Thả m&igrave;nh v&agrave;o l&agrave;n nước xanh m&aacute;t của Bể Bơi Bốn M&ugrave;a chất lượng nước đạt chuẩn 4*, c&ugrave;ng thiết kế kh&ocirc;ng gian tho&aacute;ng rộng đẹp mắt. Bể Bơi Bốn M&ugrave;a của Super Hotel Candle l&agrave; nơi l&yacute; tưởng để bạn thỏa sức bơi lội gi&uacute;p giải tỏa những năng lượng ti&ecirc;u cực, l&agrave;m mới bản th&acirc;n. &nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>H&atilde;y #INBOX cho Spa &amp; Fitness Center đặt lịch để trải nghiệm dịch vụ nghỉ dưỡng tại Kh&aacute;ch sạn 4* SUPER HOTEL Candle nh&eacute;.&nbsp;</strong></p>\r\n\r\n<p><strong>&mdash;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"⚜\" src=\"https://lh3.googleusercontent.com/LFOysAFdi3jphCREMlMyYoxJayvwejekYxVq3mmGLVoDJKugs2g19MIin1RQZ6SAJ_99Mxuk7P2AZrmVs3-O_jKIaYzdEp-4vqeF2LMfL9qn4BHZcAuaqw4u7s2eeuq0gIAJlNAvS4DjycHJblOpQM0\" style=\"height:16px; width:16px\" /> SUPER HOTEL Candle,<a href=\"https://www.facebook.com/profile.php?id=100093439610482&amp;__cft__[0]=AZWGODu6sswuA1dF401WbXNe0HCXqf1N3hdRpqkyZbiumtrbShODSm0_EF_0mwSA2KlWHddRAM1vbtkLaMeIAAVDDoxnE6FHKdIAmypou0Vn1TS8sIbdyMWdeGPO0OjhqvL2NZKwNXWFkZHZdn9DSV9Y0Meb4Z6FjHtLYgpe-ASW40B2ps9S62aVCRCKt7kLt3Y&amp;__tn__=-]K-R\"> Spa &amp; Fitness Center</a>, Tầng 3, 287 - 301 Đội Cấn, Ba Đ&igrave;nh, H&agrave; Nội&nbsp;</strong></p>\r\n\r\n<p><strong><img alt=\"📞\" src=\"https://lh6.googleusercontent.com/UwzHCrfri_0MxwVSt_LOd6CRrv3rwzsnkSRVYjP8DksBdlf1oK0Yo2ijFai9mqD7sXBW1QJBe_QW-5uERtR7FZiZ3YdcqdSA168liPN_YP45kWcJMJrfm9ZDdH4Tu9aUBtUqeMH7SJv2ydCW56CD0Cg\" style=\"height:16px; width:16px\" /> (+84) 096 790 0530 | 091 120 9911 | 024 3733 9933 - M&aacute;y lẻ: 4444</strong></p>\r\n\r\n<p><strong><img alt=\"📨\" src=\"https://lh3.googleusercontent.com/gpKaX7hy8sC7r6JsgxLjgT7e1SW0C57jwK8_IYvGeST6z3FzxXCALfZ_UhvRdWkqeSFy3teIGwQlE5u7h7us3nHyFq-S87P7S1Nyn-tTFk-D4Dr8-kSJSdcA45-T5KB5j3WMMTMoJFmhKdFMhHKzWQY\" style=\"height:16px; width:16px\" /> <a href=\"mailto:fc@superhotelcandle.vn\">fc@superhotelcandle.vn</a> | <a href=\"mailto:sales@superhotelcandle.vn\">sales@superhotelcandle.vn</a>&nbsp;</strong></p>', NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-08-04 10:33:21', '2023-08-04 10:33:21'),
(313, 105, 142, NULL, NULL, NULL, 'GIẢM 30% VÉ BỂ BƠI BỐN MÙA | TẶNG KÈM 01 BUỔI DẠY BƠI MIỄN PHÍ | TẶNG 01 VOUCHER LIỆU TRÌNH MASSAGE BODY', 'Giảm 30% vé Bể bơi bốn mùa & Tặng kèm 01 buổi dạy bơi miễn phí trị giá 500.000 VNĐ & Tặng 01 voucher sử dụng gói liệu trình Massage Body 60 phút', NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-08-04 10:28:11', '2023-08-04 10:28:11'),
(314, 106, 140, NULL, NULL, NULL, 'WELCOME NATIONAL DAY - GOLDEN PREFERRED OFFERS', 'Only 1,299,000VND/Person/Night', '<p><strong>&mdash;</strong></p>\r\n\r\n<p><strong>WELCOME NATIONAL DAY - GOLDEN PREFERRED OFFERS</strong></p>\r\n\r\n<p><strong>⭐ Only 1,299,000VND/Person/Night Experience luxurious Deluxe rooms and top-notch services at the 4-star hotel in the center of Hanoi.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>⭐ Golden offers for a deserving getaway:&nbsp;</strong></p>\r\n\r\n<p><strong>▫ Receive 1 F&amp;B Drink Voucher upon check-in (excluding alcoholic beverages)&nbsp;</strong></p>\r\n\r\n<p><strong>▫ Enjoy 1 Massage Voucher for 60 minutes/Person/Stay&nbsp;</strong></p>\r\n\r\n<p><strong>▫ Indulge in 1 Dimsum Buffet Voucher/Person/Stay at Full Moon International Cuisine Restaurant&nbsp;</strong></p>\r\n\r\n<p><strong>▫ Complimentary standard Buffet Breakfast daily&nbsp;</strong></p>\r\n\r\n<p><strong>▫ Access to the all-season swimming pool and gym&nbsp;</strong></p>\r\n\r\n<p><strong>▫ Complimentary 3 pieces of laundry per day (01 shirt, 01 trousers, 01 underwear)</strong></p>\r\n\r\n<p><strong>▫ Free Tea, Coffee, and 2 bottles of mineral water in the room per day</strong></p>\r\n\r\n<p><strong>▫ Complimentary room upgrade (subject to availability)&nbsp;</strong></p>\r\n\r\n<p><strong>▫ Late check-out until 3 PM (subject to room availability)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Have you ever participated in the solemn flag-raising ceremony at the Ho Chi Minh Mausoleum on National Day?</strong></p>\r\n\r\n<p><strong>Under the streets filled with the colors of our national flag on National Day, our hearts are filled with sacred emotions, reminiscing about our origins.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Plan for a meaningful holiday starting at the SUPER HOTEL Candle, where you can experience the solemn flag-raising ceremony on National Day and explore the famous landmarks of Hanoi.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Located in the city center, SUPER HOTEL Candle is only 5 minutes away from the historical Ba Dinh Square, where the flag-raising ceremony takes place. Moreover, the hotel is within 3 - 8 minutes&#39; reach of famous attractions such as Hoan Kiem Lake, Temple of Literature, St. Joseph&#39;s Cathedral, the Old Quarter, and West Lake. Along with its 4-star resort-class facilities, SUPER HOTEL Candle is the perfect starting point for a memorable holiday.</strong></p>\r\n\r\n<p><strong>🔔 #INBOX or contact #HOTLINE to get advice on room reservations and applicable offers.</strong></p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2023-08-07 03:56:02', '2023-08-07 03:56:02'),
(315, 106, 141, NULL, NULL, NULL, 'CHÀO MỪNG QUỐC KHÁNH - TRIỆU ƯU ĐÃI VÀNG', 'Chỉ 1.299.000 VNĐ/Người/Đêm', '<p><strong>🇻🇳 CH&Agrave;O MỪNG QUỐC KH&Aacute;NH - TRIỆU ƯU Đ&Atilde;I V&Agrave;NG&nbsp;</strong></p>\r\n\r\n<p><strong>⭐ Chỉ 1.299.000 VNĐ/Người/Đ&ecirc;m&nbsp;</strong></p>\r\n\r\n<p><strong>Tận hưởng hạng ph&ograve;ng Deluxe sang trọng &amp; Dịch vụ đẳng cấp tại Kh&aacute;ch sạn 4 Sao trung t&acirc;m H&agrave; Nội&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>⭐ Ưu đ&atilde;i v&agrave;ng cho trải nghiệm nghỉ dưỡng xứng tầm:&nbsp;</strong></p>\r\n\r\n<p><strong>▫ Tặng 1 Voucher đồ uống F&amp;B khi Qu&yacute; kh&aacute;ch check-in (kh&ocirc;ng bao gồm đồ uống c&oacute; cồn)&nbsp;</strong></p>\r\n\r\n<p><strong>▫ Tặng 1 Voucher Massage 60 ph&uacute;t/Người/Lần ở&nbsp;</strong></p>\r\n\r\n<p><strong>▫ Tặng 1 Voucher Buffet Dimsum/Người/Lần ở tại nh&agrave; h&agrave;ng Full Moon International Cuisine</strong></p>\r\n\r\n<p><strong>▫ Miễn ph&iacute; Ăn s&aacute;ng Buffet ti&ecirc;u chuẩn theo ng&agrave;y</strong></p>\r\n\r\n<p><strong>▫ Bể bơi bốn m&ugrave;a, ph&ograve;ng Gym&nbsp;</strong></p>\r\n\r\n<p><strong>▫ Miễn ph&iacute; 3 đồ giặt ướt/Ng&agrave;y ( 01 &aacute;o sơ mi, 01 quần, 01 đồ l&oacute;t)&nbsp;</strong></p>\r\n\r\n<p><strong>▫ Miễn ph&iacute; Tr&agrave;, Cafe, 2 chai nước suối trong ph&ograve;ng/Ng&agrave;y</strong></p>\r\n\r\n<p><strong>▫ Miễn ph&iacute; N&acirc;ng hạng ph&ograve;ng cao hơn (nếu c&oacute;)</strong></p>\r\n\r\n<p><strong>▫ Miễn ph&iacute; trả ph&ograve;ng muộn đến 15h (nếu ph&ograve;ng sẵn s&agrave;ng)&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>🇻🇳 Đ&atilde; bao giờ bạn tham dự lễ thượng cờ uy nghi&ecirc;m tại Lăng Chủ tịch Hồ Ch&iacute; Minh v&agrave;o ng&agrave;y đại lễ Quốc kh&aacute;nh?&nbsp;</strong></p>\r\n\r\n<p><strong>Dưới cung đường tr&agrave;n ngập m&agrave;u cờ Tổ quốc của ng&agrave;y Quốc kh&aacute;nh, l&ograve;ng ta lại d&acirc;ng l&ecirc;n x&uacute;c cảm thi&ecirc;ng li&ecirc;ng, nhớ về nguồn cội.&nbsp;</strong></p>\r\n\r\n<p><strong>H&atilde;y l&ecirc;n kế hoạch cho một kỳ nghỉ lễ &yacute; nghĩa, bắt đầu tại SUPER HOTEL Candle với trải nghiệm tham dự lễ thượng cờ trang nghi&ecirc;m ng&agrave;y Quốc Kh&aacute;nh v&agrave; kh&aacute;m ph&aacute; danh lam thắng cảnh H&agrave; Nội.&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tọa lạc vị tr&iacute; trung t&acirc;m, SUPER HOTEL Candle chỉ mất 5 ph&uacute;t để tới quảng trường Ba Đ&igrave;nh lịch sử, nơi diễn ra lễ thượng cờ. Hơn nữa, Kh&aacute;ch sạn chỉ cần 3 - 8 ph&uacute;t tới c&aacute;c danh thắng nổi tiếng như: Hồ Gươm, Văn Miếu, Nh&agrave; Thờ Lớn, Khu Phố cổ, Hồ T&acirc;y&hellip; C&ugrave;ng với đ&oacute; l&agrave; hệ thống tiện &iacute;ch nghỉ dưỡng 4 Sao đẳng cấp, Kh&aacute;ch sạn SUPER HOTEL Candle l&agrave; điểm khởi đầu ho&agrave;n hảo cho kỳ nghỉ lễ đ&aacute;ng nhớ.&nbsp;</strong></p>\r\n\r\n<p><strong>🔔 <a href=\"https://www.facebook.com/hashtag/inbox?__eep__=6&amp;__cft__[0]=AZVSruiFEHomX8nlcM1r1dH1_N0vbkqea7tRkUXV8mDPdH8Vnvc_WBfECSWkPmNdNf-0EcbgdSS9QABYJyOYISdwiu-P5oPkaaz7j0njwEq43hBYnAe2ejuUU31r28V9tvhXPiITesRmQ9foD61s8Mu9NbEWSox3dgDCrsLyK0dK89LiJWe_FKfEOTxwU7RjxYA&amp;__tn__=*NK-R\">#INBOX</a> hoặc li&ecirc;n hệ #HOTLINE để được tư vấn đặt ph&ograve;ng v&agrave; &aacute;p dụng ưu đ&atilde;i bạn nh&eacute;!&nbsp;</strong></p>\r\n\r\n<p><strong><a href=\"https://www.facebook.com/superhotelcandle?__cft__[0]=AZW6IHnA1qJc5YJlZWJyuRuWV4F3wEaEnuH0-Jw-F5MEbR3gV2gd7dzxQ7zEiOny4If665ke-EdlbHa_jd45xqaEpkhQqOusiBvppssxx1YcIKAf5OhXRGBf5M3MOxEIU48nQUGfBU-zUX2cMRIPCkHYSnrDZGZXhOojL-a9GDzG-SakiDA74s9yEfclHfpy3_A&amp;__tn__=-]K-R\">SUPER HOTEL Candle</a>&nbsp;</strong></p>\r\n\r\n<p><strong><img alt=\"⚜️\" src=\"https://lh4.googleusercontent.com/rPLVV3eOXFQnzJQ2n56_a3HKoXxEhwnoKWCbosV6oWZ_o-TLJvclf2OOieAcSHgQo7687aAVgETBaJkIcC2cpbBPgb1bXPqch1vzEpooZ3ZPYjGmO4AHuX-1D0ncH5GNe-vdT7dypYFtG9-s5Lh5b24\" style=\"height:16px; width:16px\" /> No. 287 - 301 Đoi Can, Ba Đinh, Ha Noi&nbsp;</strong></p>\r\n\r\n<p><strong><img alt=\"📞\" src=\"https://lh4.googleusercontent.com/AcFfB4gZeFG9sR8yxY8hXSvQWuxu4H6D3KNdjslzYo4NEQCzBJNgoVXoyO5VyMzV6HVJuu4V7-h63pWPR0BrXhpVQU3u5zAXqroIO-WiwId_WLSly6CDf27-HG36v5lKy1CjoQOqBQAX1pkdfNB9_kM\" style=\"height:16px; width:16px\" /> (+84) 0911 209 911 | (+84) 0243 733 9933 | Ext: 6607</strong></p>\r\n\r\n<p><strong>📨 <a href=\"mailto:sales@superhotelcandle.vn\">sales@superhotelcandle.vn</a></strong></p>', NULL, NULL, NULL, 'vi', NULL, NULL, NULL, '2023-08-07 03:56:02', '2023-08-07 03:56:02'),
(316, 106, 142, NULL, NULL, NULL, 'WELCOME NATIONAL DAY - GOLDEN PREFERRED OFFERS', 'Only 1,299,000VND/Person/Night', NULL, NULL, NULL, NULL, 'jp', NULL, NULL, NULL, '2023-08-07 03:56:02', '2023-08-07 03:56:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `provinces`
--

INSERT INTO `provinces` (`id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(6, 1, 'true', '2023-04-13 19:12:22', '2023-04-13 19:12:22'),
(7, 1, 'true', '2023-04-13 19:13:13', '2023-04-13 19:13:13'),
(8, 1, 'true', '2023-04-13 19:13:36', '2023-04-13 19:13:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province_translations`
--

CREATE TABLE `province_translations` (
  `id` int(11) NOT NULL,
  `province_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `province_translations`
--

INSERT INTO `province_translations` (`id`, `province_id`, `name`, `locale`, `created_at`, `updated_at`) VALUES
(16, 6, 'Ha Noi', 'en', '2023-04-13 19:12:22', '2023-04-13 19:12:22'),
(17, 6, 'Hà Nội', 'vi', '2023-04-13 19:12:22', '2023-04-13 19:12:22'),
(18, 6, '河內', 'cn', '2023-04-13 19:12:22', '2023-04-13 19:12:22'),
(19, 7, 'Ho Chi Minh', 'en', '2023-04-13 19:13:13', '2023-04-13 19:13:13'),
(20, 7, 'Hồ Chí Minh', 'vi', '2023-04-13 19:13:13', '2023-04-13 19:13:13'),
(21, 7, '胡志明', 'cn', '2023-04-13 19:13:13', '2023-04-13 19:13:13'),
(22, 8, 'Quang Ninh', 'en', '2023-04-13 19:13:36', '2023-04-13 19:52:55'),
(23, 8, 'Quảng Ninh', 'vi', '2023-04-13 19:13:36', '2023-04-13 19:52:55'),
(24, 8, '廣寧', 'cn', '2023-04-13 19:13:36', '2023-04-13 19:52:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sections`
--

INSERT INTO `sections` (`id`, `user_id`, `status`) VALUES
(48, 1, NULL),
(49, 1, NULL),
(50, 1, NULL),
(51, 1, NULL),
(52, 1, NULL),
(53, 1, NULL),
(54, 1, NULL),
(55, 1, NULL),
(56, 1, NULL),
(57, 1, NULL),
(58, 1, NULL),
(59, 1, NULL),
(60, 1, NULL),
(61, 1, NULL),
(62, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `section_translations`
--

CREATE TABLE `section_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `section_translations`
--

INSERT INTO `section_translations` (`id`, `name`, `header`, `content`, `img`, `locale`, `view`, `section_id`, `post_id`, `created_at`, `updated_at`) VALUES
(142, 'Tổng quan', NULL, NULL, NULL, 'vi', 1, 48, 71, '2023-05-05 03:01:08', '2023-05-05 03:01:08'),
(143, 'Overview', NULL, NULL, NULL, 'en', 1, 48, 71, '2023-05-05 03:01:08', '2023-05-05 03:01:08'),
(144, '概述', NULL, NULL, NULL, 'jp', 1, 48, 71, '2023-05-05 03:01:08', '2023-05-05 03:01:08'),
(145, 'Vị trí', NULL, NULL, NULL, 'vi', 2, 49, 71, '2023-05-05 03:01:08', '2023-05-05 03:01:08'),
(146, 'Location', NULL, NULL, NULL, 'en', 2, 49, 71, '2023-05-05 03:01:08', '2023-05-05 03:01:08'),
(147, '地點', NULL, NULL, NULL, 'jp', 2, 49, 71, '2023-05-05 03:01:08', '2023-05-05 03:01:08'),
(148, 'Liên kết vùng', NULL, NULL, NULL, 'vi', 3, 50, 71, '2023-05-05 03:01:08', '2023-05-05 03:01:08'),
(149, 'Regional link', NULL, NULL, NULL, 'en', 3, 50, 71, '2023-05-05 03:01:08', '2023-05-05 03:01:08'),
(150, '區域鏈接', NULL, NULL, NULL, 'jp', 3, 50, 71, '2023-05-05 03:01:08', '2023-05-05 03:01:08'),
(151, 'Tiện ích', NULL, NULL, NULL, 'vi', 4, 51, 71, '2023-05-05 03:01:08', '2023-05-05 03:01:08'),
(152, 'Utilities', NULL, NULL, NULL, 'en', 4, 51, 71, '2023-05-05 03:01:08', '2023-05-05 03:01:08'),
(153, '公用事業', NULL, NULL, NULL, 'jp', 4, 51, 71, '2023-05-05 03:01:08', '2023-05-05 03:01:08'),
(154, 'Mặt bằng', NULL, NULL, NULL, 'vi', 5, 52, 71, '2023-05-05 03:01:08', '2023-05-05 03:01:08'),
(155, 'Ground', NULL, NULL, NULL, 'en', 5, 52, 71, '2023-05-05 03:01:08', '2023-05-05 03:01:08'),
(156, '地面', NULL, NULL, NULL, 'jp', 5, 52, 71, '2023-05-05 03:01:08', '2023-05-05 03:01:08'),
(157, 'Tổng quan', NULL, NULL, NULL, 'vi', 1, 53, 72, '2023-05-05 03:01:53', '2023-05-05 03:01:53'),
(158, 'Overview', NULL, NULL, NULL, 'en', 1, 53, 72, '2023-05-05 03:01:53', '2023-05-05 03:01:53'),
(159, '概述', NULL, NULL, NULL, 'jp', 1, 53, 72, '2023-05-05 03:01:53', '2023-05-05 03:01:53'),
(160, 'Vị trí', NULL, NULL, NULL, 'vi', 2, 54, 72, '2023-05-05 03:01:53', '2023-05-05 03:01:53'),
(161, 'Location', NULL, NULL, NULL, 'en', 2, 54, 72, '2023-05-05 03:01:53', '2023-05-05 03:01:53'),
(162, '地點', NULL, NULL, NULL, 'jp', 2, 54, 72, '2023-05-05 03:01:53', '2023-05-05 03:01:53'),
(163, 'Liên kết vùng', NULL, NULL, NULL, 'vi', 3, 55, 72, '2023-05-05 03:01:53', '2023-05-05 03:01:53'),
(164, 'Regional link', NULL, NULL, NULL, 'en', 3, 55, 72, '2023-05-05 03:01:53', '2023-05-05 03:01:53'),
(165, '區域鏈接', NULL, NULL, NULL, 'jp', 3, 55, 72, '2023-05-05 03:01:53', '2023-05-05 03:01:53'),
(166, 'Tiện ích', NULL, NULL, NULL, 'vi', 4, 56, 72, '2023-05-05 03:01:53', '2023-05-05 03:01:53'),
(167, 'Utilities', NULL, NULL, NULL, 'en', 4, 56, 72, '2023-05-05 03:01:53', '2023-05-05 03:01:53'),
(168, '公用事業', NULL, NULL, NULL, 'jp', 4, 56, 72, '2023-05-05 03:01:53', '2023-05-05 03:01:53'),
(169, 'Mặt bằng', NULL, NULL, NULL, 'vi', 5, 57, 72, '2023-05-05 03:01:53', '2023-05-05 03:01:53'),
(170, 'Ground', NULL, NULL, NULL, 'en', 5, 57, 72, '2023-05-05 03:01:53', '2023-05-05 03:01:53'),
(171, '地面', NULL, NULL, NULL, 'jp', 5, 57, 72, '2023-05-05 03:01:53', '2023-05-05 03:01:53'),
(172, 'Tổng quan', NULL, NULL, NULL, 'vi', 1, 58, 73, '2023-05-05 03:04:14', '2023-05-05 03:04:14'),
(173, 'Overview', NULL, NULL, NULL, 'en', 1, 58, 73, '2023-05-05 03:04:14', '2023-05-05 03:04:14'),
(174, '概述', NULL, NULL, NULL, 'jp', 1, 58, 73, '2023-05-05 03:04:14', '2023-05-05 03:04:14'),
(175, 'Vị trí', NULL, NULL, NULL, 'vi', 2, 59, 73, '2023-05-05 03:04:14', '2023-05-05 03:04:14'),
(176, 'Location', NULL, NULL, NULL, 'en', 2, 59, 73, '2023-05-05 03:04:14', '2023-05-05 03:04:14'),
(177, '地點', NULL, NULL, NULL, 'jp', 2, 59, 73, '2023-05-05 03:04:14', '2023-05-05 03:04:14'),
(178, 'Liên kết vùng', NULL, NULL, NULL, 'vi', 3, 60, 73, '2023-05-05 03:04:14', '2023-05-05 03:04:14'),
(179, 'Regional link', NULL, NULL, NULL, 'en', 3, 60, 73, '2023-05-05 03:04:14', '2023-05-05 03:04:14'),
(180, '區域鏈接', NULL, NULL, NULL, 'jp', 3, 60, 73, '2023-05-05 03:04:14', '2023-05-05 03:04:14'),
(181, 'Tiện ích', NULL, NULL, NULL, 'vi', 4, 61, 73, '2023-05-05 03:04:14', '2023-05-05 03:04:14'),
(182, 'Utilities', NULL, NULL, NULL, 'en', 4, 61, 73, '2023-05-05 03:04:14', '2023-05-05 03:04:14'),
(183, '公用事業', NULL, NULL, NULL, 'jp', 4, 61, 73, '2023-05-05 03:04:14', '2023-05-05 03:04:14'),
(184, 'Mặt bằng', NULL, NULL, NULL, 'vi', 5, 62, 73, '2023-05-05 03:04:14', '2023-05-05 03:04:14'),
(185, 'Ground', NULL, NULL, NULL, 'en', 5, 62, 73, '2023-05-05 03:04:14', '2023-05-05 03:04:14'),
(186, '地面', NULL, NULL, NULL, 'jp', 5, 62, 73, '2023-05-05 03:04:14', '2023-05-05 03:04:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `user_id`, `status`) VALUES
(1, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` int(11) NOT NULL,
  `setting_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `hotline` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `maps` text DEFAULT NULL,
  `footer` text DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `name`, `address`, `hotline`, `email`, `facebook`, `youtube`, `maps`, `footer`, `img`, `favicon`, `title`, `description`, `keywords`, `locale`, `created_at`, `updated_at`) VALUES
(1, 1, 'SUPER HOTEL Candle', '287-301 P. Đội Cấn, Ba Đình, Hà Nội', '(+84) 0243 733 9933', 'sales@superhotelcandle.vn - info@superhotelcandle.vn', 'https://www.facebook.com/superhotelcandle/', 'https://www.youtube.com/@secret.garden.beerclub', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14895.68490599453!2d105.8185352!3d21.0358377!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abd7e28c9d85%3A0xecfc9364d29957bb!2sSuper%20Hotel%20Candle!5e0!3m2!1svi!2s!4v1683269907636!5m2!1svi!2s\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, '25_Logo Hotel candle-ngang-01.png', 'faviconhotel.png', 'SUPER HOTEL Candle - Khách sạn Nhật Bản 4 Sao tại Hà Nội', 'SUPER HOTEL Candle - Khách sạn Nhật Bản 4 Sao tại Hà Nội', NULL, 'vi', '2023-04-26 03:32:21', '2023-10-21 08:18:18'),
(2, 1, 'SUPER HOTEL Candle', 'No 287 - 301 Doi Can, Ba Đinh, Ha Noi', '(+84) 0243 733 9933', 'sales@superhotelcandle.vn - info@superhotelcandle.vn', 'https://www.facebook.com/superhotelcandle/', 'https://www.youtube.com/@secret.garden.beerclub', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14895.68490599453!2d105.8185352!3d21.0358377!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abd7e28c9d85%3A0xecfc9364d29957bb!2sSuper%20Hotel%20Candle!5e0!3m2!1svi!2s!4v1683269907636!5m2!1svi!2s\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, '25_Logo Hotel candle-ngang-01.png', 'faviconhotel.png', 'SUPER HOTEL Candle - Four stars Japanese hotel in Hanoi', 'SUPER HOTEL Candle - Four stars Japanese hotel in Hanoi', NULL, 'en', '2023-04-26 03:32:21', '2023-10-21 08:18:18'),
(3, 1, 'SUPER HOTEL Candle', 'No 287 - 301 Doi Can, Ba Đinh, Ha Noi', '(+84) 0243 733 9933', 'sales@superhotelcandle.vn - info@superhotelcandle.vn', 'https://www.facebook.com/superhotelcandle/', 'https://www.youtube.com/@secret.garden.beerclub', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14895.68490599453!2d105.8185352!3d21.0358377!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abd7e28c9d85%3A0xecfc9364d29957bb!2sSuper%20Hotel%20Candle!5e0!3m2!1svi!2s!4v1683269907636!5m2!1svi!2s\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, '25_Logo Hotel candle-ngang-01.png', 'faviconhotel.png', 'SUPER HOTEL Candle - Four stars Japanese hotel in Hanoi', 'SUPER HOTEL Candle - Four stars Japanese hotel in Hanoi', NULL, 'jp', '2023-04-26 03:32:21', '2023-10-21 08:18:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `user_id`, `img`) VALUES
(10, 1, 'z4529418703025_a32453ac89eefab526548a4fd61a6909.jpg'),
(11, 1, 'DSC01568.jpg'),
(12, 1, 'DSC03063.jpg'),
(15, 1, 'Livingroom (3)-mo rem.jpg'),
(16, 1, '2880-x-1800-8.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider_translations`
--

CREATE TABLE `slider_translations` (
  `id` int(11) NOT NULL,
  `slider_id` int(11) DEFAULT NULL,
  `heading1` varchar(255) DEFAULT NULL,
  `heading2` varchar(255) DEFAULT NULL,
  `text1` text DEFAULT NULL,
  `text2` text DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `note` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider_translations`
--

INSERT INTO `slider_translations` (`id`, `slider_id`, `heading1`, `heading2`, `text1`, `text2`, `link`, `locale`, `note`, `status`, `created_at`, `updated_at`) VALUES
(22, 10, 'superhotelcandle', NULL, NULL, NULL, NULL, 'en', NULL, NULL, '2023-07-12 08:07:00', '2023-07-12 08:07:00'),
(23, 10, 'superhotelcandle', NULL, NULL, NULL, NULL, 'vi', NULL, NULL, '2023-07-12 08:07:00', '2023-07-12 08:07:00'),
(24, 10, 'superhotelcandle', NULL, NULL, NULL, NULL, 'jp', NULL, NULL, '2023-07-12 08:07:00', '2023-07-12 08:07:00'),
(25, 11, 'Slide 2', NULL, NULL, NULL, NULL, 'en', NULL, NULL, '2023-07-12 08:07:11', '2023-07-19 07:19:15'),
(26, 11, 'superhotelcandle', NULL, NULL, NULL, NULL, 'vi', NULL, NULL, '2023-07-12 08:07:11', '2023-07-12 08:07:11'),
(27, 11, 'superhotelcandle', NULL, NULL, NULL, NULL, 'jp', NULL, NULL, '2023-07-12 08:07:11', '2023-07-12 08:07:11'),
(28, 12, NULL, NULL, NULL, NULL, NULL, 'en', NULL, NULL, '2023-07-19 07:19:03', '2023-07-19 07:19:03'),
(29, 12, 'Slide 3', NULL, NULL, NULL, NULL, 'vi', NULL, NULL, '2023-07-19 07:19:03', '2023-07-19 07:19:03'),
(30, 12, NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, '2023-07-19 07:19:03', '2023-07-19 07:19:03'),
(37, 15, NULL, NULL, NULL, NULL, NULL, 'en', NULL, NULL, '2023-07-19 07:38:06', '2023-07-19 07:38:06'),
(38, 15, 'Slide 4', NULL, NULL, NULL, NULL, 'vi', NULL, NULL, '2023-07-19 07:38:06', '2023-07-19 07:38:06'),
(39, 15, NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, '2023-07-19 07:38:06', '2023-07-19 07:38:06'),
(40, 16, NULL, NULL, NULL, NULL, NULL, 'en', NULL, NULL, '2023-07-19 07:43:04', '2023-07-19 07:43:04'),
(41, 16, 'Slide 5', NULL, NULL, NULL, NULL, 'vi', NULL, NULL, '2023-07-19 07:43:04', '2023-07-19 07:43:04'),
(42, 16, NULL, NULL, NULL, NULL, NULL, 'jp', NULL, NULL, '2023-07-19 07:43:04', '2023-07-19 07:43:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `permission` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `permission`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 1, NULL, '$2y$10$9fz78ri8PAvBIbSerrENiuTjo5WlAXRXdfCtkh.40ByOcTeSNYCsO', NULL, '2023-03-20 09:17:19', '2023-03-20 09:17:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wards`
--

CREATE TABLE `wards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wards`
--

INSERT INTO `wards` (`id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(7, 1, 'true', '2023-04-14 00:38:07', '2023-04-14 00:38:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ward_translations`
--

CREATE TABLE `ward_translations` (
  `id` int(11) NOT NULL,
  `ward_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `prefix` varchar(20) DEFAULT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ward_translations`
--

INSERT INTO `ward_translations` (`id`, `ward_id`, `province_id`, `district_id`, `name`, `prefix`, `locale`, `created_at`, `updated_at`) VALUES
(19, 7, 16, 28, 'Nhan hoa', NULL, 'en', '2023-04-14 00:38:07', '2023-04-14 00:38:07'),
(20, 7, 17, 29, 'Nhân Hòa', NULL, 'vi', '2023-04-14 00:38:07', '2023-04-14 00:38:07'),
(21, 7, 18, 30, 'nhanhoa', NULL, 'cn', '2023-04-14 00:38:07', '2023-04-14 00:38:07');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district_translations`
--
ALTER TABLE `district_translations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_translations`
--
ALTER TABLE `post_translations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `province_translations`
--
ALTER TABLE `province_translations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `section_translations`
--
ALTER TABLE `section_translations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ward_translations`
--
ALTER TABLE `ward_translations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT cho bảng `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `district_translations`
--
ALTER TABLE `district_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `post_translations`
--
ALTER TABLE `post_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT cho bảng `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `province_translations`
--
ALTER TABLE `province_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `section_translations`
--
ALTER TABLE `section_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `slider_translations`
--
ALTER TABLE `slider_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wards`
--
ALTER TABLE `wards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `ward_translations`
--
ALTER TABLE `ward_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
