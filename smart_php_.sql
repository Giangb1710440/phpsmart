-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 09, 2021 lúc 05:18 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `smart_php`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, NULL, 1, 'iPhone', 'iphone', '2020-10-27 05:41:14', '2020-10-27 05:41:14'),
(4, NULL, 2, 'iPad', 'ipad', '2020-10-27 05:41:28', '2020-10-27 05:41:28'),
(5, NULL, 3, 'Phụ kiện', 'phu-kien', '2020-10-27 05:42:39', '2020-10-27 05:42:39'),
(6, NULL, 4, 'Linh kiện', 'linh-kien', '2020-10-27 05:42:51', '2020-10-27 05:42:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bạc', 'ok', '2020-10-27 05:35:14', '2020-10-27 05:35:14'),
(2, 'Đen', 'ok', '2020-10-27 05:35:33', '2020-10-27 05:35:33'),
(3, 'Jet Black', 'ok', '2020-10-27 05:36:06', '2020-10-27 05:36:06'),
(4, 'Đỏ', 'ok', '2020-10-27 05:36:19', '2020-10-27 05:36:19'),
(5, 'Rose Gold', 'ok', '2020-10-27 05:37:16', '2020-10-27 05:37:16'),
(6, 'Vàng', 'ok', '2020-10-27 05:38:23', '2020-10-27 05:38:23'),
(7, 'Cam', 'ok', '2020-10-28 22:05:58', '2020-10-28 22:05:58'),
(8, 'Xanh dương', 'ok', '2020-10-28 22:06:08', '2020-10-28 22:06:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color_products`
--

CREATE TABLE `color_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Color_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `color_products`
--

INSERT INTO `color_products` (`id`, `product_id`, `Color_id`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '2020-10-28 21:54:59', '2020-10-28 21:54:59'),
(2, '1', '2', '2020-10-28 21:55:11', '2020-10-28 21:55:11'),
(3, '1', '6', '2020-10-28 21:55:27', '2020-10-28 21:55:27'),
(4, '2', '1', '2020-10-28 21:55:37', '2020-10-28 21:55:37'),
(5, '2', '2', '2020-10-28 21:55:45', '2020-10-28 21:55:45'),
(6, '2', '6', '2020-10-28 21:56:07', '2020-10-28 21:56:07'),
(7, '3', '1', '2020-10-28 21:57:19', '2020-10-28 21:57:19'),
(8, '3', '2', '2020-10-28 21:58:27', '2020-10-28 21:58:27'),
(9, '3', '4', '2020-10-28 21:59:26', '2020-10-28 21:59:26'),
(10, '3', '6', '2020-10-28 21:59:42', '2020-10-28 21:59:42'),
(11, '4', '1', '2020-10-28 21:59:52', '2020-10-28 21:59:52'),
(12, '4', '2', '2020-10-28 22:00:02', '2020-10-28 22:00:02'),
(13, '4', '3', '2020-10-28 22:00:11', '2020-10-28 22:00:11'),
(14, '4', '4', '2020-10-28 22:00:20', '2020-10-28 22:00:20'),
(15, '4', '6', '2020-10-28 22:00:43', '2020-10-28 22:00:43'),
(16, '4', '5', '2020-10-28 22:00:54', '2020-10-28 22:00:54'),
(17, '6', '1', '2020-10-28 22:01:02', '2020-10-28 22:01:02'),
(18, '6', '2', '2020-10-28 22:01:13', '2020-10-28 22:01:13'),
(19, '6', '3', '2020-10-28 22:01:23', '2020-10-28 22:01:23'),
(20, '6', '3', '2020-10-28 22:01:33', '2020-10-28 22:01:33'),
(21, '6', '4', '2020-10-28 22:01:41', '2020-10-28 22:01:41'),
(22, '6', '4', '2020-10-28 22:01:51', '2020-10-28 22:01:51'),
(23, '6', '6', '2020-10-28 22:02:03', '2020-10-28 22:02:03'),
(24, '7', '1', '2020-10-28 22:02:15', '2020-10-28 22:02:15'),
(25, '7', '2', '2020-10-28 22:02:33', '2020-10-28 22:02:33'),
(26, '7', '3', '2020-10-28 22:02:45', '2020-10-28 22:03:09'),
(27, '7', '4', '2020-10-28 22:02:58', '2020-10-28 22:03:30'),
(28, '7', '5', '2020-10-28 22:03:42', '2020-10-28 22:03:42'),
(29, '8', '1', '2020-10-28 22:03:56', '2020-10-28 22:03:56'),
(30, '8', '2', '2020-10-28 22:04:07', '2020-10-28 22:04:15'),
(32, '9', '1', '2020-10-28 22:04:29', '2020-10-28 22:04:29'),
(33, '9', '2', '2020-10-28 22:04:45', '2020-10-28 22:04:45'),
(34, '9', '3', '2020-10-28 22:04:54', '2020-10-28 22:04:54'),
(35, '9', '4', '2020-10-28 22:06:34', '2020-10-28 22:06:34'),
(36, '9', '7', '2020-10-28 22:06:57', '2020-10-28 22:06:57'),
(37, '9', '8', '2020-10-28 22:07:09', '2020-10-28 22:07:09'),
(38, '10', '1', '2020-10-28 22:07:20', '2020-10-28 22:07:20'),
(39, '10', '2', '2020-10-28 22:07:30', '2020-10-28 22:07:30'),
(40, '10', '6', '2020-10-28 22:07:46', '2020-10-28 22:07:46'),
(41, '11', '1', '2020-10-28 22:07:58', '2020-10-28 22:07:58'),
(42, '11', '2', '2020-10-28 22:08:20', '2020-10-28 22:08:20'),
(43, '11', '6', '2020-10-28 22:08:33', '2020-10-28 22:08:33'),
(44, '12', '1', '2020-10-28 22:08:42', '2020-10-28 22:08:42'),
(45, '12', '2', '2020-10-28 22:09:02', '2020-10-28 22:09:02'),
(46, '12', '4', '2020-10-28 22:09:44', '2020-10-28 22:09:44'),
(47, '12', '6', '2020-10-28 22:09:55', '2020-10-28 22:09:55'),
(48, '12', '7', '2020-10-28 22:10:07', '2020-10-28 22:10:07'),
(49, '13', '1', '2020-10-28 22:10:26', '2020-10-28 22:10:26'),
(50, '13', '2', '2020-10-28 22:10:35', '2020-10-28 22:10:35'),
(51, '13', '4', '2020-10-28 22:10:45', '2020-10-28 22:10:45'),
(52, '13', '6', '2020-10-28 22:10:58', '2020-10-28 22:10:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `hoten` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(57, 7, 'color', 'text', 'Color', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(60, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(61, 8, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(62, 8, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(63, 8, 'name_product', 'text', 'Name Product', 0, 1, 1, 1, 1, 1, '{}', 3),
(64, 8, 'unit_price', 'text', 'Unit Price', 0, 1, 1, 1, 1, 1, '{}', 4),
(65, 8, 'promotion_price', 'text', 'Promotion Price', 0, 1, 1, 1, 1, 1, '{}', 5),
(66, 8, 'quantity', 'text', 'Quantity', 0, 1, 1, 1, 1, 1, '{}', 6),
(67, 8, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 7),
(68, 8, 'image', 'multiple_images', 'Image', 0, 1, 1, 1, 1, 1, '{}', 8),
(69, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(70, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(71, 9, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(72, 9, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(73, 9, 'order_date', 'text', 'Order Date', 0, 1, 1, 1, 1, 1, '{}', 3),
(74, 9, 'total_money', 'text', 'Total Money', 0, 1, 1, 1, 1, 1, '{}', 4),
(75, 9, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 5),
(76, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(77, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(78, 10, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 0),
(79, 10, 'order_id', 'text', 'Order Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(80, 10, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(81, 10, 'quantity', 'text', 'Quantity', 0, 1, 1, 1, 1, 1, '{}', 4),
(82, 10, 'unit_price', 'text', 'Unit Price', 0, 1, 1, 1, 1, 1, '{}', 5),
(83, 10, 'promotion_price', 'text', 'Promotion Price', 0, 1, 1, 1, 1, 1, '{}', 6),
(84, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(85, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(86, 11, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(87, 11, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(88, 11, 'Color_id', 'text', 'Color Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(89, 12, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(90, 12, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(91, 12, 'trademark', 'text', 'Trademark', 0, 1, 1, 1, 1, 1, '{}', 3),
(92, 12, 'screen_resolution', 'text', 'Screen Resolution', 0, 1, 1, 1, 1, 1, '{}', 4),
(93, 12, 'front_camera', 'text', 'Front Camera', 0, 1, 1, 1, 1, 1, '{}', 5),
(94, 12, 'rear_camera', 'text', 'Rear Camera', 0, 1, 1, 1, 1, 1, '{}', 6),
(95, 12, 'ram', 'text', 'Ram', 0, 1, 1, 1, 1, 1, '{}', 7),
(96, 12, 'rom', 'text', 'Rom', 0, 1, 1, 1, 1, 1, '{}', 8),
(97, 12, 'os', 'text', 'Os', 0, 1, 1, 1, 1, 1, '{}', 9),
(98, 12, 'type_sim', 'text', 'Type Sim', 0, 1, 1, 1, 1, 1, '{}', 10),
(99, 12, 'screen_size', 'text', 'Screen Size', 0, 1, 1, 1, 1, 1, '{}', 11),
(100, 12, 'battery_capacity', 'text', 'Battery Capacity', 0, 1, 1, 1, 1, 1, '{}', 12),
(101, 12, 'type_battery', 'text', 'Type Battery', 0, 1, 1, 1, 1, 1, '{}', 13),
(102, 11, 'color_product_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name_product\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 4),
(103, 11, 'color_product_belongsto_color_relationship', 'relationship', 'colors', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Color\",\"table\":\"colors\",\"type\":\"belongsTo\",\"column\":\"Color_id\",\"key\":\"id\",\"label\":\"color\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 5),
(104, 12, 'detail_product_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name_product\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(105, 10, 'order_detail_belongsto_order_relationship', 'relationship', 'orders', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Order\",\"table\":\"orders\",\"type\":\"belongsTo\",\"column\":\"order_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 9),
(106, 10, 'order_detail_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name_product\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 10),
(107, 9, 'order_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 8),
(108, 8, 'product_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(109, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(110, 1, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 12),
(111, 1, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 13),
(112, 13, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(113, 13, 'hoten', 'text', 'Hoten', 0, 1, 1, 1, 1, 1, '{}', 2),
(114, 13, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(115, 13, 'sdt', 'text', 'Sdt', 0, 1, 1, 1, 1, 1, '{}', 4),
(116, 13, 'diachi', 'text', 'Diachi', 0, 1, 1, 1, 1, 1, '{}', 5),
(117, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(118, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(119, 8, 'describe_Htop', 'text', 'Describe Htop', 0, 1, 1, 1, 1, 1, '{}', 11),
(120, 8, 'describe_Itop', 'multiple_images', 'Describe Itop', 0, 1, 1, 1, 1, 1, '{}', 12),
(121, 8, 'describe_Hmid', 'text', 'Describe Hmid', 0, 1, 1, 1, 1, 1, '{}', 13),
(122, 8, 'describe_Imid', 'multiple_images', 'Describe Imid', 0, 1, 1, 1, 1, 1, '{}', 14),
(123, 8, 'describe_Hbot', 'text', 'Describe Hbot', 0, 1, 1, 1, 1, 1, '{}', 15),
(124, 8, 'describe_Ibot', 'multiple_images', 'Describe Ibot', 0, 1, 1, 1, 1, 1, '{}', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-10-26 05:38:54', '2020-11-02 06:09:40'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(7, 'colors', 'colors', 'Color', 'Colors', NULL, 'App\\Color', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-27 03:34:09', '2020-10-27 03:34:09'),
(8, 'products', 'products', 'Product', 'Products', NULL, 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-27 03:48:03', '2021-04-25 22:36:42'),
(9, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-27 03:55:45', '2020-10-27 03:55:45'),
(10, 'order_details', 'order-details', 'Order Detail', 'Order Details', NULL, 'App\\OrderDetail', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-27 03:58:31', '2020-10-27 03:58:31'),
(11, 'color_products', 'color-products', 'Color Product', 'Color Products', NULL, 'App\\ColorProduct', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-27 04:01:21', '2020-10-27 04:02:43'),
(12, 'detail_products', 'detail-products', 'Detail Product', 'Detail Products', NULL, 'App\\DetailProduct', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-27 05:11:06', '2020-10-28 22:11:29'),
(13, 'khachhanngs', 'khachhanngs', 'Khachhanng', 'Khachhanngs', NULL, 'App\\Khachhanng', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-19 05:30:03', '2020-11-19 05:30:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_products`
--

CREATE TABLE `detail_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `trademark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `screen_resolution` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `screen_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `front_camera` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rear_camera` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `os` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_sim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `battery_capacity` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_battery` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detail_products`
--

INSERT INTO `detail_products` (`id`, `trademark`, `product_id`, `screen_resolution`, `screen_size`, `front_camera`, `rear_camera`, `ram`, `rom`, `os`, `type_sim`, `battery_capacity`, `type_battery`, `created_at`, `updated_at`) VALUES
(1, 'Apple', '1', 'HD (750 x 1334 Pixels)', '4.7 inches', '5.0 MP', '12 MP', '2GB', '32GB', 'iOS 12', '1 nano SIM', '1715mA', 'Li-po', '2020-10-28 22:15:02', '2020-10-28 22:36:57'),
(2, 'Apple', '2', 'IPS FullHD, 1920×1080 pixels', '5.5 inches', '5.0 MP', '12 MP', '2GB', '32GB', 'iOS 12', '1 nano SIM', '2750 mAh', 'Li-po', '2020-10-28 22:34:15', '2020-10-28 22:34:15'),
(3, 'Apple', '3', '750 x 1334 pixel (~326 ppi)', '4.7 inches', '7.0 MP', '12 MP', '2GB', '64 GB', 'iOS 13', '1 nano SIM', '1960 mAh', 'Li-Ion', '2020-10-28 22:36:02', '2020-10-28 22:59:12'),
(4, 'Apple', '4', '1920 x 1080 pixel (~401 ppi)', '5.5 inches', '7.0 MP', 'Cam đôi 12 MP, OIS, 2 ống kính quang học', '3 GB', '128 GB', 'iOS 13', '1 nano SIM', '2900 mAh', 'Li-Ion', '2020-10-28 22:47:18', '2020-10-28 22:59:03'),
(5, 'Apple', '6', 'HD (750 x 1334 Pixels)', '4.7 inches', '7.0 MP', '12 MP', '2GB', '128 GB', 'iOS 13', '1 nano SIM', '1821 mAh', 'Li-Ion', '2020-10-28 22:55:20', '2020-10-28 22:58:53'),
(6, 'Apple', '7', '1920 x 1080 pixel (~401 ppi)', '5.5 inches', '7.0 MP', 'Dual 12 MP', '3 GB', '64 GB', 'iOS 13', '1 nano SIM', '2691 mAh', 'Li-Ion', '2020-10-28 22:56:07', '2020-10-28 22:58:45'),
(7, 'Apple', '8', 'OLED, Super Retina', '5.8 inches', '7.0 MP', 'Dual 12 MP', '3 GB', '64 GB', 'iOS 12', '1 nano SIM', '2716 mAh', 'Li-Ion', '2020-10-28 22:58:03', '2020-10-28 22:58:38'),
(8, 'Apple', '9', '828 x 1792 pixels', 'IPS LCD , 6.1 inches', '7.0 MP', '12 MP', '3 GB', '128 GB', 'iOS 13', '1 nano SIM', '2942 mAh', 'Li-Ion', '2020-10-28 23:00:07', '2020-10-28 23:00:07'),
(9, 'Apple', '10', '1125 x 2436 pixels', '5.8 inches', '7.0 MP', 'Dual 12 MP', '4 GB', '128 GB', 'iOS 13', '1 nano SIM', '2658 mAh', 'Li-Ion', '2020-10-28 23:02:04', '2020-10-28 23:02:04'),
(10, 'Apple', '11', '1242 x 2688 Pixels', '6.5 inches', '7.0 MP', 'Dual 12 MP', '4 GB', '64 GB', 'iOS 13', '2 nano SIM', '3174 mAh', 'Li-Ion', '2020-10-28 23:03:40', '2020-10-28 23:03:40'),
(11, 'Apple', '12', '828 x 1792 pixels', '6.1 inch', '12 MP', 'Dual 12 MP', '4 GB', '128 GB', 'iOS 13', '1 nano SIM + 1 eSIM', '3110mAh', 'Li-Ion', '2020-10-28 23:05:02', '2020-10-28 23:05:02'),
(12, 'Apple', '13', '1125 x 2436 pixels', '6.5 inches', '12 MP', 'Triple 12Mp + 12Mp + 12Mp', '4 GB', '128 GB', 'iOS 13', '1 nano SIM + 1 eSIM', '3969mAh', 'Li-Ion', '2020-10-28 23:06:46', '2020-10-28 23:06:46'),
(13, 'iPad Pro 12.9 inch Wifi', '16', 'Liquid Retina', '12.9 inches', '7 MP', '12 MP & Phụ 10 MP, TOF 3D LiDAR', '6 GB', '128 GB', 'iOS 13', '1 Nano SIM hoặc 1 eSIM', '9720 mAh', 'Li-Ion', '2020-11-02 04:29:10', '2020-11-02 04:29:10'),
(14, 'iPad Pro 11', '17', 'Liquid Retina', '11 inches', '7.0 MP', 'Chính 12 MP & Phụ 10 MP, TOF 3D LiDAR', '6 GB', '128 GB', 'iOS 13', '1 Nano SIM hoặc 1 eSIM', '7600 mAh', 'Li-po', '2020-11-02 04:31:25', '2020-11-02 04:31:25'),
(15, 'iPad Air 4', '18', 'Liquid Retina', '10.9 inches', '7.0 MP', '12 MP', '4 GB', '64 GB', 'iOS 13', '1 Nano SIM hoặc 1 eSIM', 'Đang cập nhật', 'Li-po', '2020-11-02 04:33:32', '2020-11-02 04:33:32'),
(16, 'iPad 8 Wifi', '19', 'Retina IPS LCD', '10.2 inches', '1.2 MP', '8MP', '3 GB', '128 GB', 'iOS 13', '1 Nano SIM hoặc 1 eSIM', 'Đang cập nhật', 'Li-po', '2020-11-02 04:35:31', '2020-11-02 04:35:31'),
(17, 'iPad Mini 7.9', '20', 'LED-backlit IPS LCD', '7.9 inches', '7.0 MP', '8MP', '3 GB', '64 GB', 'iOS 13', '1 nano SIM + 1 eSIM', '5124 mAh', 'Li-po', '2020-11-02 04:39:35', '2020-11-02 04:39:35'),
(18, 'iPhone 6S Vàng cũ Like New 99%', '22', 'LED-backlit IPS LCD', '4.7\", Retina HD', '5 MP', '12 MP', '2 GB', '128 GB', 'iOS 11', '1 Nano SIM', '1715 mAh', 'Li-Po', '2021-04-25 23:23:39', '2021-04-25 23:23:39'),
(19, 'Apple iPhone 12', '14', 'Full HD+, Super Retina XDR OLED 6.1 inch', '6.1 inch', 'Dual 12 MP', '12 MP', '4 GB', '64 GB', 'IOS 14', 'Nano-SIM, eSIM', 'Li-Ion 2815 mAh', 'Li-Ion', '2021-04-26 06:15:08', '2021-04-26 06:17:28'),
(20, 'iPhone 12 Pro Max', '15', 'Super Retina XDR OLED 6.7 inch', '6.7 inches', 'Cảm biến LiDAR, Triple 12Mp + 12Mp + 12Mp', '12 MP', '6 GB', '128 GB', 'IOS 14', '1 nano SIM + 1 eSIM', 'Li-Ion 3687 mAh', 'Li-Ion', '2021-04-26 06:21:40', '2021-04-26 06:21:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhanngs`
--

CREATE TABLE `khachhanngs` (
  `id` int(10) UNSIGNED NOT NULL,
  `hoten` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhanngs`
--

INSERT INTO `khachhanngs` (`id`, `hoten`, `email`, `sdt`, `diachi`, `created_at`, `updated_at`) VALUES
(1, 'nguyen a', 'nguyen@gmail.com', '0939337416', 'Can Tho', '2020-11-19 06:02:26', '2020-11-19 06:02:26'),
(8, NULL, NULL, NULL, NULL, '2021-04-29 03:34:05', '2021-04-29 03:34:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-10-26 05:38:54', '2020-10-26 05:38:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-10-26 05:38:54', '2020-10-26 05:38:54', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-10-26 05:38:54', '2020-10-26 05:38:54', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-10-26 05:38:54', '2020-10-26 05:38:54', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-10-26 05:38:54', '2020-10-26 05:38:54', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-10-26 05:38:54', '2020-10-26 05:38:54', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2020-10-26 05:38:54', '2020-10-26 05:38:54', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2020-10-26 05:38:54', '2020-10-26 05:38:54', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2020-10-26 05:38:54', '2020-10-26 05:38:54', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2020-10-26 05:38:54', '2020-10-26 05:38:54', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2020-10-26 05:38:54', '2020-10-26 05:38:54', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2020-10-26 05:38:54', '2020-10-26 05:38:54', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2020-10-26 05:38:55', '2020-10-26 05:38:55', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2020-10-26 05:38:55', '2020-10-26 05:38:55', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2020-10-26 05:38:55', '2020-10-26 05:38:55', 'voyager.hooks', NULL),
(15, 1, 'Colors', '', '_self', NULL, NULL, NULL, 15, '2020-10-27 03:34:09', '2020-10-27 03:34:09', 'voyager.colors.index', NULL),
(16, 1, 'Products', '', '_self', NULL, NULL, NULL, 16, '2020-10-27 03:48:03', '2020-10-27 03:48:03', 'voyager.products.index', NULL),
(17, 1, 'Orders', '', '_self', NULL, NULL, NULL, 17, '2020-10-27 03:55:45', '2020-10-27 03:55:45', 'voyager.orders.index', NULL),
(18, 1, 'Order Details', '', '_self', NULL, NULL, NULL, 18, '2020-10-27 03:58:31', '2020-10-27 03:58:31', 'voyager.order-details.index', NULL),
(19, 1, 'Color Products', '', '_self', NULL, NULL, NULL, 19, '2020-10-27 04:01:21', '2020-10-27 04:01:21', 'voyager.color-products.index', NULL),
(20, 1, 'Detail Products', '', '_self', NULL, NULL, NULL, 20, '2020-10-27 05:11:07', '2020-10-27 05:11:07', 'voyager.detail-products.index', NULL),
(21, 1, 'Khachhanngs', '', '_self', NULL, NULL, NULL, 21, '2020-11-19 05:30:03', '2020-11-19 05:30:03', 'voyager.khachhanngs.index', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2021_04_25_173648_add_describe_to_products', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `total_money` float DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_date`, `total_money`, `status`, `created_at`, `updated_at`) VALUES
(16, '11', '2021-04-28', 22490000, 'Mới đặt hàng', '2021-04-27 19:24:35', '2021-04-27 19:24:35'),
(17, '8', '2021-04-29', 41880000, 'Mới đặt hàng', '2021-04-29 03:34:05', '2021-04-29 03:34:05'),
(18, '11', '2021-04-29', 15990000, 'Mới đặt hàng', '2021-04-29 03:38:17', '2021-04-29 03:38:17'),
(19, '11', '2021-04-29', 2000000, 'Mới đặt hàng', '2021-04-29 03:39:15', '2021-04-29 03:39:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `promotion_price`, `created_at`, `updated_at`) VALUES
(19, '16', '22', 2, 2000000, NULL, '2021-04-27 19:24:35', '2021-04-27 19:24:35'),
(20, '16', '12', 1, 18490000, NULL, '2021-04-27 19:24:35', '2021-04-27 19:24:35'),
(21, '17', '13', 1, 25890000, NULL, '2021-04-29 03:34:05', '2021-04-29 03:34:05'),
(22, '17', '19', 1, 15990000, NULL, '2021-04-29 03:34:05', '2021-04-29 03:34:05'),
(23, '18', '19', 1, 15990000, NULL, '2021-04-29 03:38:17', '2021-04-29 03:38:17'),
(24, '19', '22', 1, 2000000, NULL, '2021-04-29 03:39:15', '2021-04-29 03:39:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-10-26 05:38:55', '2020-10-26 05:38:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(2, 'browse_bread', NULL, '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(3, 'browse_database', NULL, '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(4, 'browse_media', NULL, '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(5, 'browse_compass', NULL, '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(6, 'browse_menus', 'menus', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(7, 'read_menus', 'menus', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(8, 'edit_menus', 'menus', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(9, 'add_menus', 'menus', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(10, 'delete_menus', 'menus', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(11, 'browse_roles', 'roles', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(12, 'read_roles', 'roles', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(13, 'edit_roles', 'roles', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(14, 'add_roles', 'roles', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(15, 'delete_roles', 'roles', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(16, 'browse_users', 'users', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(17, 'read_users', 'users', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(18, 'edit_users', 'users', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(19, 'add_users', 'users', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(20, 'delete_users', 'users', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(21, 'browse_settings', 'settings', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(22, 'read_settings', 'settings', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(23, 'edit_settings', 'settings', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(24, 'add_settings', 'settings', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(25, 'delete_settings', 'settings', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(26, 'browse_categories', 'categories', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(27, 'read_categories', 'categories', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(28, 'edit_categories', 'categories', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(29, 'add_categories', 'categories', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(30, 'delete_categories', 'categories', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(31, 'browse_posts', 'posts', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(32, 'read_posts', 'posts', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(33, 'edit_posts', 'posts', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(34, 'add_posts', 'posts', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(35, 'delete_posts', 'posts', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(36, 'browse_pages', 'pages', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(37, 'read_pages', 'pages', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(38, 'edit_pages', 'pages', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(39, 'add_pages', 'pages', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(40, 'delete_pages', 'pages', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(41, 'browse_hooks', NULL, '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(42, 'browse_colors', 'colors', '2020-10-27 03:34:09', '2020-10-27 03:34:09'),
(43, 'read_colors', 'colors', '2020-10-27 03:34:09', '2020-10-27 03:34:09'),
(44, 'edit_colors', 'colors', '2020-10-27 03:34:09', '2020-10-27 03:34:09'),
(45, 'add_colors', 'colors', '2020-10-27 03:34:09', '2020-10-27 03:34:09'),
(46, 'delete_colors', 'colors', '2020-10-27 03:34:09', '2020-10-27 03:34:09'),
(47, 'browse_products', 'products', '2020-10-27 03:48:03', '2020-10-27 03:48:03'),
(48, 'read_products', 'products', '2020-10-27 03:48:03', '2020-10-27 03:48:03'),
(49, 'edit_products', 'products', '2020-10-27 03:48:03', '2020-10-27 03:48:03'),
(50, 'add_products', 'products', '2020-10-27 03:48:03', '2020-10-27 03:48:03'),
(51, 'delete_products', 'products', '2020-10-27 03:48:03', '2020-10-27 03:48:03'),
(52, 'browse_orders', 'orders', '2020-10-27 03:55:45', '2020-10-27 03:55:45'),
(53, 'read_orders', 'orders', '2020-10-27 03:55:45', '2020-10-27 03:55:45'),
(54, 'edit_orders', 'orders', '2020-10-27 03:55:45', '2020-10-27 03:55:45'),
(55, 'add_orders', 'orders', '2020-10-27 03:55:45', '2020-10-27 03:55:45'),
(56, 'delete_orders', 'orders', '2020-10-27 03:55:45', '2020-10-27 03:55:45'),
(57, 'browse_order_details', 'order_details', '2020-10-27 03:58:31', '2020-10-27 03:58:31'),
(58, 'read_order_details', 'order_details', '2020-10-27 03:58:31', '2020-10-27 03:58:31'),
(59, 'edit_order_details', 'order_details', '2020-10-27 03:58:31', '2020-10-27 03:58:31'),
(60, 'add_order_details', 'order_details', '2020-10-27 03:58:31', '2020-10-27 03:58:31'),
(61, 'delete_order_details', 'order_details', '2020-10-27 03:58:31', '2020-10-27 03:58:31'),
(62, 'browse_color_products', 'color_products', '2020-10-27 04:01:21', '2020-10-27 04:01:21'),
(63, 'read_color_products', 'color_products', '2020-10-27 04:01:21', '2020-10-27 04:01:21'),
(64, 'edit_color_products', 'color_products', '2020-10-27 04:01:21', '2020-10-27 04:01:21'),
(65, 'add_color_products', 'color_products', '2020-10-27 04:01:21', '2020-10-27 04:01:21'),
(66, 'delete_color_products', 'color_products', '2020-10-27 04:01:21', '2020-10-27 04:01:21'),
(67, 'browse_detail_products', 'detail_products', '2020-10-27 05:11:07', '2020-10-27 05:11:07'),
(68, 'read_detail_products', 'detail_products', '2020-10-27 05:11:07', '2020-10-27 05:11:07'),
(69, 'edit_detail_products', 'detail_products', '2020-10-27 05:11:07', '2020-10-27 05:11:07'),
(70, 'add_detail_products', 'detail_products', '2020-10-27 05:11:07', '2020-10-27 05:11:07'),
(71, 'delete_detail_products', 'detail_products', '2020-10-27 05:11:07', '2020-10-27 05:11:07'),
(72, 'browse_khachhanngs', 'khachhanngs', '2020-11-19 05:30:03', '2020-11-19 05:30:03'),
(73, 'read_khachhanngs', 'khachhanngs', '2020-11-19 05:30:03', '2020-11-19 05:30:03'),
(74, 'edit_khachhanngs', 'khachhanngs', '2020-11-19 05:30:03', '2020-11-19 05:30:03'),
(75, 'add_khachhanngs', 'khachhanngs', '2020-11-19 05:30:03', '2020-11-19 05:30:03'),
(76, 'delete_khachhanngs', 'khachhanngs', '2020-11-19 05:30:03', '2020-11-19 05:30:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-26 05:38:55', '2020-10-26 05:38:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_product` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `describe_Htop` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe_Itop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe_Hmid` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe_Imid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe_Hbot` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe_Ibot` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `name_product`, `unit_price`, `promotion_price`, `quantity`, `status`, `image`, `created_at`, `updated_at`, `describe_Htop`, `describe_Itop`, `describe_Hmid`, `describe_Imid`, `describe_Hbot`, `describe_Ibot`) VALUES
(2, '3', 'iPhone 6S Plus', 9190000, 0, 10, 'Còn hàng', '[\"products\\\\October2020\\\\b2VaEKtVFYgJdVdx3t2l.png\"]', '2020-10-27 06:07:00', '2021-04-26 07:29:04', 'Cuối năm 2015, Apple cho ra mắt thị trường iPhone 6S và iPhone 6S Plus. Tại thời điểm đó, bộ đôi này đã làm tạo nên cơn sốt thực sự và đánh bật hầu như tất cả các đối thủ khác. Cấu hình được nâng cấp mạnh mẽ, nhiều tính năng mới và hiện đại chính là điểm nổi bật của 2 sản phẩm này.Nếu bạn cần một smartphone cấu hình mạnh, màn hình lớn, pin trâu thì 6S Plus là sự lựa chọn hoàn hảo. iPhone 6S và 6S Plus có cấu hình cũng như camera ngang nhau với Ram 2GB, chip Apple A9, camera chính 12MP, camera selfie 5MP và tính năng 3D Touch hiện đại nhưng iPhone 6S Plus có màn hình lớn 5,5 inches Full HD và pin dung lượng lớn 2750 mAh giúp bạn có thể thoải mái làm việc hay giải trí ấn tượng trong thời gian dài.', '[\"products\\\\April2021\\\\ckx2rBbYVSD71mdVMuA8.jpg\"]', '3D Touch là tính năng hoàn toàn mới trên iPhone 6s Plus 32 GB, cho phép người dùng xem trước được các tùy chọn nhanh dựa vào lực nhấn mạnh hay nhẹ mà không cần phải nhấp vào ứng dụng.  Để sử dụng, bạn chỉ cần nhấn vào màn hình hoặc ứng dụng 1 lực mạnh đến khi máy rung nhẹ là có thể xem được.iPhone 6s Plus 32 GB sử dụng vi xử lý A9 tốc độ 1.8 GHz (iPhone 6 Plus chỉ với 1.4 GHz), giúp máy chạy cùng lúc nhiều ứng dụng mượt mà.', '[\"products\\\\April2021\\\\ftIqB1hm86xIn8CESFXs.jpg\",\"products\\\\April2021\\\\xwDQAbk5Jmx6o9L2SogO.jpg\",\"products\\\\April2021\\\\7WZELhNRaMaxqgbusqfQ.gif\"]', 'Điện thoại iPhone 6s Plus 32 GB được nâng cấp độ phân giải camera sau lên 12 MP (thay vì 8 MP như trên iPhone 6 Plus), camera cho tốc độ lấy nét và chụp nhanh, thao tác chạm để chụp nhẹ nhàng. Chất lượng ảnh trong các điều kiện chụp khác nhau tốt.Camera trước với độ phân giải 5 MP cho hình ảnh với độ chi tiết rõ nét, đặc biệt máy còn có tính năng Retina Flash, sẽ giúp màn hình sáng lên như đèn Flash để bức ảnh khi bạn chụp trong trời tối được tốt hơn.', '[\"products\\\\April2021\\\\OtISl267gyLZ8F5nMFqr.gif\"]'),
(3, '3', 'iPhone 7', 9890000, 0, 10, 'Còn hàng', '[\"products\\\\October2020\\\\hw2u2AjWuFCaRco3gqif.png\",\"products\\\\October2020\\\\mxmuwzZh1WJPanUgZy3C.png\",\"products\\\\October2020\\\\qzBh4wUajvy9x1SIqkAj.png\"]', '2020-10-27 06:08:00', '2021-04-26 07:31:28', 'Màn hình 4.7 inch càng thêm sắc nét Cùng với đó là khả năng hiển thị tốt hơn dưới trời nắng, góc nhìn nghiêng không bị mất màu.', '[\"products\\\\April2021\\\\PiG7st3SN2DGBYMHCJWV.jpg\"]', 'Máy tích hợp chip xử lý A10 mới nhất, RAM 2 GB giúp điện thoại chơi game mượt mà và ổn định, cùng hệ điều hành iOS luôn được cập nhật mới giúp vận hành nhẹ nhàng và nhanh nhạy.', '[\"products\\\\April2021\\\\naFerjfPZbCQwVmb3Bs4.jpg\"]', 'Một sự cải thiện đáng kể so với iPhone 6s trước đó, những tấm ảnh chụp selfie của bạn càng thêm độ chi tiết và sắc nét.Đặc điểm nổi bật của iPhone 7 32GB  Tìm hiểu thêm Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim  iPhone 7 32GB vẫn mang trên mình thiết kế quen thuộc của từ thời iPhone 6 nhưng có nhiều thay đổi lớn về phần cứng, dàn loa stereo và cấu hình cực mạnh. Camera trước tăng lên 7 MP Một sự cải thiện đáng kể so với iPhone 6s trước đó, những tấm ảnh chụp selfie của bạn càng thêm độ chi tiết và sắc nét.  Nâng câp camera trên điện thoại iPhone 7  Bộ nhớ trong của máy cũng được nâng cấp lên 32 GB giúp bạn thoải mái chụp và lưu trữ ảnh mà không lo hết dung lượng để lưu.', '[\"products\\\\April2021\\\\o0LpjebI1RjQJDX5xyxl.jpg\"]'),
(4, '3', 'iPhone 7 Plus', 6990000, 0, 10, 'Còn hàng', '[\"products\\\\October2020\\\\ahdyyOCeYMvxYcH6uyDN.png\",\"products\\\\October2020\\\\DlwX2BxYRge6qpg7DezM.png\",\"products\\\\October2020\\\\4EZ2Opvypp5s7ZPxNqPa.png\",\"products\\\\October2020\\\\R8zk58HoBBRLBpYFGoJ6.png\",\"products\\\\October2020\\\\FCMwiLM5pT06CamYz5fO.png\"]', '2020-10-27 06:12:00', '2021-04-26 08:37:07', 'iPhone 7 Plus là chiếc iPhone đầu tiên được trang bị camera kép có cùng độ phân giải 12 MP, đem lại khả năng chụp ảnh ở hai tiêu cự khác nhau.Màn hình Retina trên 7 Plus hỗ trợ DCI-P3 gam màu rộng, nghĩa là chúng có khả năng tái tạo màu sắc trong phạm vi của sRGB.', '[\"products\\\\April2021\\\\HHtuRHJzT50AiovkVpmi.jpg\",\"products\\\\April2021\\\\4XOjL9E21mHUbKJIIUhK.jpg\"]', 'Ngoài trái tim Apple A10 Fusion 4 nhân với hiệu năng cực kì mạnh mẽ và ấn tượng thì iPhone 7 Plus còn được cập nhật hệ điều hành mới nhất với nhiều tính năng bất ngờ, và thú vị.', '[\"products\\\\April2021\\\\YgDS7UHttHEVtluor0kq.jpg\",\"products\\\\April2021\\\\A7PRssUVbmNZrEvnPpak.jpg\"]', 'Điểm nhấn ấn tượng nhất nằm ở mặt lưng của sản phẩm với hiệu ứng phản chiếu ánh sáng khi thay đổi góc nhìn rất đặc biệt. Hiệu ứng này cũng được áp dụng cho toàn bộ khung máy, từ cạnh trên, cạnh dưới cho đến các nút bấm nên cho cảm giác một thiết bị cực kỳ hoàn thiện, gần như không có bất kỳ một chi tiết thừa nào cả. Thay đổi dãy nhựa an-ten bắt sóng được đưa vòng lên trên thay vì cắt ngang ở mặt lưng như trước.', '[\"products\\\\April2021\\\\oVGifvwlyuEmZ5ZHdv3m.jpg\",\"products\\\\April2021\\\\uwNAmWWJ67A2J9EAu8Ks.jpg\"]'),
(6, '3', 'iPhone 8', 6690000, 0, 10, 'Còn hàng', '[\"products\\\\October2020\\\\KWknbyqaqjODLQa4r2uN.png\",\"products\\\\October2020\\\\6475nyinTK9g3z3VIkpk.jpg\",\"products\\\\October2020\\\\epcMNuKas7BW7IeyslJK.png\",\"products\\\\October2020\\\\fkmxOcpFT5RF8aYrkDr4.png\"]', '2020-10-27 06:15:00', '2021-04-26 07:53:53', 'Điện thoại iPhone 8 kết hợp giữa những đường nét đã làm nên chuẩn mực, thương hiệu với sự thời thượng và hiện đại của mặt lưng phủ kính cường lực thay vì nguyên khối kim loại. Điểm thiết kế này mang lại độ bóng bẩy, đẹp mắt hơn cho sản phẩm.Mặt lưng kính giúp iPhone 8 được tích hợp công nghệ sạc không dây hiện đại mà người dùng mong đợi từ lâu. Ngoài ra còn là lần đầu tiên Apple trang bị công nghệ sạc pin nhanh cho iPhone.Phong cách mới cũng đồng thời loại bỏ hoàn toàn những chi tiết thừa như phần anten trên mặt lưng để đưa thiết kế iPhone 8 đến độ hoàn hảo.Mặt trước iPhone 8 vẫn sở hữu màn hình 4.7 inch độ phân giải Retina HD nhưng được Apple nâng cấp và gọi bằng cái tên Retina HD True Tone với khả năng hiển thị màu chính xác hơn. Phím home cảm ứng lực 3D Touch tích hợp với cả cảm biến vân tay.', '[\"products\\\\April2021\\\\AbFapup17rNSY9DcYxLJ.jpg\",\"products\\\\April2021\\\\A6drgBBytdX9Buda160w.jpg\",\"products\\\\April2021\\\\zfvdxRTQ6Ci4RMyGw2Ia.jpg\"]', 'Điểm qua cấu hình, iPhone 8 sẽ sử dụng con chip 6 nhân A11 Bionic tương tự như trên iPhone X, chip có sức mạnh cao cấp nhất tính đến thời điểm ra mắt iPhone 8, cùng 2 GB RAM.iPhone 8 nhấn mạnh vào khả năng trình chiếu thực tế ảo AR mang đến những trải nghiệm hoàn toàn khác biệt so với trước đây.', '[\"products\\\\April2021\\\\dpYxzTTtGJoJLEuVCX5q.jpg\"]', 'Camera chính có độ phân giải 12 MP, khẩu độ F/1.8 cùng rất nhiều cải tiến về hình ảnh, độ sắc nét, tốc độ hay khả năng chụp thiếu sáng. Ngoài ra còn nâng cấp một vài điểm như hỗ trợ quay video 4K @60fps, và nâng tiếp video 240fps lên độ phân giải 1080p.Camera trước vẫn có độ phân giải 7 MP cùng khẩu độ F/2.2 cho hình ảnh chân thực, sắc nét mà không hề quá ảo diệu.', '[\"products\\\\April2021\\\\WlJQqt4Z6tItsu7PTMAn.jpg\",\"products\\\\April2021\\\\Cp4XB6c8bw1GhLmSJVaU.jpg\",\"products\\\\April2021\\\\RmsuMjat21X3AtJcDCwG.jpg\"]'),
(7, '3', 'iPhone 8 Plus', 13400000, 0, 10, 'Còn hàng', '[\"products\\\\October2020\\\\EQne0CLJ6Pwh1DyK5BqP.png\",\"products\\\\October2020\\\\UltAt4JfgaOZ1foqha9f.png\",\"products\\\\October2020\\\\WSP9wBGBoOvWXdzBgR1D.png\",\"products\\\\October2020\\\\f6AMReek2s1YWu2xLyEL.png\"]', '2020-10-27 06:23:00', '2021-04-26 07:56:53', 'Smartphone iPhone 8 Plus giữ nguyên hoàn toàn những đường nét thiết kế đã hoàn thiện từ thế hệ trước nhưng sử dụng phong cách 2 mặt kính cường lực kết hợp bộ khung kim loại.Mặt lưng kính bo cong 2.5D thời thượng, khung kim loại được gia cố cứng cáp, bền bỉ hơn với 7 lớp xử lý màu sơn, hạn chế bong tróc.', '[\"products\\\\April2021\\\\WpBczEpXBpW5OFkILJVi.jpg\",\"products\\\\April2021\\\\ULdXxzTiv0s5jqvk8rPP.jpg\",\"products\\\\April2021\\\\E1QLR43p3W1gy1TKrnqO.jpg\"]', 'Không có sự thay đổi trong thông số camera (vẫn là cụm camera kép cùng độ phân giải 12 MP so với chiếc điện thoại IPhone 7 Plus), chiếc điện thoại iPhone này chủ yếu được tập trung nâng cấp về ống kính, cảm biến, vi xử lý hình ảnh để nâng cao chất lượng ảnh chụp.', '[\"products\\\\April2021\\\\I0ao6U4TEOrh9O2lwMMY.jpg\"]', 'Một trong những điểm nhất quan trọng nhất ở thế hệ iPhone 8 Plus chính là sức mạnh phần cứng, con chip Apple A11 như trên iPhone X cho hiệu năng vượt trội hơn rất nhiều so với trước đây.Vi xử lý Apple A11 còn đặc biệt tối ưu cho 3D và thực tế ảo tăng cường AR, một trải nghiệm hoàn toàn mới mẻ trên smartphone.', '[\"products\\\\April2021\\\\kxbP4c3F0p6k6MnYmQfj.jpg\",\"products\\\\April2021\\\\85EQLCdfW5uKmzuQrDm4.jpg\"]'),
(8, '3', 'iPhone X', 17400000, 0, 10, 'Còn hàng', '[\"products\\\\October2020\\\\5J6sE8FgBIt3HDKKMB0t.png\",\"products\\\\October2020\\\\mOt2FwfhCGMR4TjsNSxy.png\"]', '2020-10-27 06:24:00', '2021-04-26 08:03:47', 'Để kỉ niệm 10 năm cho thiết bị iPhone – iPhone X được ra đời đánh dấu sự đổi mới mạnh mẽ của Apple cho thiết bị của mình, dưới đây là bài đánh giá sau một ngày trải nghiệm đến từ trang Engadget.  iPhone X sở hữu nhiều phần chung với iPhone 8 và iPhone 8 Plus. Về cơ bản bản kỉ niệm 10 năm vẫn sử dụng con chip Apple A11 Bionic và vì thế hiệu năng mang lại gần như là tương đương, bộ nhớ trong ở mức 64GB và 256GB.Như bạn cũng có thể dễ nhận ra rằng nút Home truyền thống của Apple đã không còn nữa trên iPhone X nữa mà giờ đây phần dưới đã hoàn toàn là màn hình để bạn có thể sử dụng không gian nhiều hơn và phần nhiều không gian nhiều hơn giúp bạn cảm thấy thoải mái hơn trong khi sử dụng mà không mấy áp lực khi màn hình nó bị chiếm chổ. Nếu bỏ qua độ thẩm mỹ, chắc hẳn ai ai cũng phải đánh giá cao độ vừa vặn của màn hình, 5.8-inch là một con số không hề nhỏ nếu bạn so sánh với các thiết bị iPhone kèm hậu tố Plus, màn hình được đẩy ra các cạnh, độ tràn của nó phải nói là hoàn thiện xuất sắc theo cách gọi “tiêu chuẩn của Apple”, và kết hợp với sự ổn định của iOS làm cho thiết bị trở nên tuyệt vời hơn.', '[\"products\\\\April2021\\\\yJE5GTP2hWKH8kXYCSDy.jpg\",\"products\\\\April2021\\\\LpebZzZLeJjJkk2Xlr2w.jpg\"]', 'Touch ID trên iPhone X đã bị loại bỏ, thay vào đó là bạn sẽ chuyển qua sử dụng Face ID, một phương thức bảo mật sinh trắc học mới của Apple.Với sự trợ giúp của cụm camera TrueDept thì iPhone X có khả năng nhận diện khuôn mặt 3D của người dùng từ đó mở khóa chiếc iPhone một cách nhanh chóng.Tuy sẽ hơi hụt hẫng khi Touch ID đã quá quen thuộc trên những chiếc iPhone như tốc độ cũng như trải nghiệm \"khóa như không khóa\" của Face ID hoàn toàn có thể khiến bạn yên tâm sử dụng.', '[\"products\\\\April2021\\\\3R7Z465gI05D0bx5zyhR.jpg\",\"products\\\\April2021\\\\FowIrWBd9rY9lOCXPs38.jpg\"]', 'Hiệu năng của những chiếc iPhone chưa bao giờ là vấn đề và với iPhone X thì mọi thứ vẫn rất ấn tượng.  Con chip Apple A11 Bionic 6 nhân kết hợp với 3 GB RAM thì iPhone X tự tin là chiếc smartphone mạnh mẽ nhất mà Apple từng sản xuất.', '[\"products\\\\April2021\\\\i5zr1pApCBX6vXRIqXJz.jpg\"]'),
(9, '3', 'iPhone Xr', 15990000, 0, 10, 'Còn hàng', '[\"products\\\\October2020\\\\fjvnpesV23t0jMl7Djnz.png\",\"products\\\\October2020\\\\qavac8OxKVZKhcoiB1d9.png\",\"products\\\\October2020\\\\uVqX9fQOcYuwgMZ83fRs.png\",\"products\\\\October2020\\\\QZtqq8lywps6uRVDLSZx.png\",\"products\\\\October2020\\\\0tBtp3YEVluYbBtS4fry.png\"]', '2020-10-27 06:25:00', '2021-04-26 08:06:35', 'Với mỗi lần ra mắt, Apple lại giới thiệu một con chip mới và Apple A12 Bionic là con chip đầu tiên sản xuất với tiến trình 7nm được tích hợp trên iPhone Xr.Apple A12 được tích hợp trí tuệ thông minh nhân tạo, mọi phản hồi trên máy đều nhanh chóng và gần như là ngay lập tức, kể cả khi bạn chơi game hay thao tác bình thường.', '[\"products\\\\April2021\\\\vDmMZz9JTsq3a97SvyEn.jpg\"]', 'Nếu ai đó khẳng định chỉ camera kép mới xoá phông thì đó là một sai lầm. iPhone Xr có khả năng tạo hiệu ứng bokeh tuyệt đỉnh, làm nổi bật chân dung người chụp mà hình ảnh vẫn rất sắc nét, chi tiết.Camera selfie của máy mang công nghệ TrueDepth mới nhất cùng Animoji thông minh hơn, mọi cảm xúc và biểu cảm của bạn trở nên hoàn hảo và thú vị.', '[\"products\\\\April2021\\\\nbM7AdYuDWMs08SvxT8o.jpg\"]', 'Trước đây để trải nghiệm tối đa âm thanh thì tai nghe là thiết bị không thể thiếu. Nhưng với iPhone thế hệ mới, công nghệ âm thanh đa chiều từ loa sẽ giúp bạn hoà vào âm nhạc cũng như các bộ phim thú vị hay chơi game hào hứng nhất.', '[\"products\\\\April2021\\\\nS07BOfZrgvP8Gj4NNvf.jpg\"]'),
(10, '3', 'iPhone Xs', 16980000, 0, 10, 'Còn hàng', '[\"products\\\\October2020\\\\4pgdkuA8P8TgayOBkDYc.png\",\"products\\\\October2020\\\\2nVwiCeIASthNuX4J4kd.png\",\"products\\\\October2020\\\\kslqfAbp3rn2drLnjumo.png\"]', '2020-10-27 10:16:00', '2021-04-26 08:09:02', 'Hiệu năng đỉnh cao đến từ con chip Apple A12 Ngoài điện thoại thì năm nay iPhone cũng đã chính thức ra mắt chip A12 bionic thế hệ mới với những nâng cấp vượt trội về mặt hiệu năng.Apple A12 Bionic được xây dựng trên tiến trình 7nm đầu tiên của hãng với 6 nhân giúp iPhone Xs có được một hiệu năng “vô đối” cùng khả năng tiết kiệm năng lượng tối ưu.', '[\"products\\\\April2021\\\\6yEOeXoGAGb8F3Ok3LlB.jpg\",\"products\\\\April2021\\\\4defZ9nGHsokB769jKIm.jpg\"]', 'So với đàn anh iPhone X thì iPhone XS được chăm chút hơn về khả năng hiển thị khi được trang bị hàng loạt các công nghệ cao cấp.Trên kích thước 5.8 inch kết hợp tấm nền OLED đem lại cho bạn một trải nghiệm tuyệt vời khi xem phim hay lướt web với dải màu rộng và độ chi tiết cực kỳ cao.  Hơn nữa, màn hình của máy còn hỗ trợ công nghệ HDR10 cùng tần số quét 120 Hz giúp hình ảnh sống động cũng chuyển động mượt mà hơn.', '[\"products\\\\April2021\\\\M9C0ZC64u9gKWSfrW0yM.jpg\"]', 'Hệ thống bảo mật khuôn mặt 3D trên iPhone Xs đã được Apple cải tiến cũng như hỗ trợ trí thông minh nhân tạo.  Bạn chỉ cần nhìn vào iPhone Xs thì máy sẽ tự động mở khóa và hiển thị tất cả các thông tin trên màn hình nhờ vào một thuật toán mới của Apple.Chưa hết, với hệ thống camera này bạn còn có thể tạo ra những bức ảnh thực tế ảo AR vô cùng đáng yêu.', '[\"products\\\\April2021\\\\slUYXB2g1xktqC1hn2HF.jpg\"]'),
(11, '3', 'iPhone Xs Max', 22990000, 0, 10, 'Còn hàng', '[\"products\\\\October2020\\\\0qfnmDHR1ITZPKGZhmjd.png\",\"products\\\\October2020\\\\o3rOH0uJlfDze7I8WnIh.png\",\"products\\\\October2020\\\\fElSX7yoJv9m7GGUhTQD.png\"]', '2020-10-27 10:17:00', '2021-04-26 08:16:10', 'Điện thoại iPhone Xs Max sở hữu lối thiết kế vô cùng đẹp mắt với những đường cong mềm mại được thừa hưởng từ chiếc iPhone đời trước đó.Với công nghệ Super Retina kết hợp tấm nền OLED trên iPhone Xs Max đem lại dải màu sắc cực kì sống động và sắc nét đến từng chi tiết.', '[\"products\\\\April2021\\\\yRIZGbqZYdyHvgd7bD10.png\",\"products\\\\April2021\\\\29MaG99ubjaknt2IuKpU.png\"]', 'Là một flagship cao cấp, iPhone Xs Max được Apple trang bị cho con chip mới toanh hàng đầu của hãng mang tên Apple A12 bionic.Chip A12 bionic được xây dựng trên tiến trình 7nm đầu tiên mà hãng sản xuất với 6 nhân đáp ứng vượt trội trong việc xử lý các tác vụ và khả năng tiết kiệm năng lượng tối ưu.', '[\"products\\\\April2021\\\\zyUPrmCiVuNedt7nT0DO.jpg\",\"products\\\\April2021\\\\yy3trxZ2PNWXMOEXDnV2.jpg\",\"products\\\\April2021\\\\FkPA21Q8RWc5xRNlDYVd.jpg\"]', 'Dù không sở hữu thông số camera khủng nhưng iPhone XS Max luôn cho thấy sự đẳng cấp của mình về khả năng nhiếp ảnh với cụm camera kép có cùng độ phân giải 12 MP.Máy được trang bị hệ thống xử lý hình ảnh chất lượng cân bằng sáng, giảm nhiễu, tăng cường độ phơi sáng, màu da sao cho phù hợp và tự nhiên nhất.', '[\"products\\\\April2021\\\\kbhbcaj1IB4wNw5oDQdd.jpg\"]'),
(12, '3', 'iPhone 11', 18490000, 0, 10, 'Còn hàng', '[\"products\\\\October2020\\\\CLBRTdiqMOaAJ1ybQgA8.png\",\"products\\\\October2020\\\\XaB0zjt7SVDJ9PB1G1uK.png\",\"products\\\\October2020\\\\Aziz3pK7SqseFkNrkcRz.png\",\"products\\\\October2020\\\\So40X14BOGRdlnQWiqeP.jpg\",\"products\\\\October2020\\\\iEJs2Ui2wtKI4Iq3mk3v.jpg\"]', '2020-10-27 10:19:00', '2021-04-26 07:02:07', 'Những mẫu điện thoại iPhone khi ra mắt đều được các tín đồ công nghệ rất mong chờ. Đơn giản, đẹp mắt, sang trọng và tinh tế, đó là tất cả những gì tạo dựng nên thương hiệu Táo khuyết lừng lẫy năm châu. iPhone 11 (cũ) là thiết kế mới nhất, đẳng cấp nhất của nhà táo tính đến thời điểm này. Sở hữu thiết kế mặt lưng kính bóng bẩy cùng khung viền nhôm cao cấp và logo thương hiệu Apple, iPhone 11 toát ra vẻ đẹp sang trọng, quý phái, cuốn hút đến lạ thường. Dù là sản phẩm đã qua sử dụng nhưng với các địa chỉ bán hàng uy tín, hình thức máy vẫn được đảm bảo “ngon nghẻ”, có chăng đâu đó chỉ xuất hiện một hoặc một vài vết xước nhẹ. Và đây là điều khó tránh khỏi đối với một sản phẩm như vậy. Màn hình trang bị cho iPhone 11 cũ vẫn là Liquid Retina IPS kích thước 6.1 inch như trên sản phẩm mới. Với kích thước rộng lớn hơn, vượt trội hơn rất nhiều so với thế hệ tiền nhiệm, chắc chắn trải nghiệm hình ảnh của người dùng sẽ thú vị hơn, “đã” mắt hơn rất nhiều.', '[\"products\\\\April2021\\\\yjyDKt8DtO3itnMyy2u7.png\",\"products\\\\April2021\\\\c9yvIbEZIvDvmrVrp1EO.png\"]', 'Tương tự như các dòng sản phẩm của Apple, iPhone 11 256GB sử dụng hệ điều hành và con chip CPU độc quyền của hãng. Chip A13 đời mới của Apple nâng cấp cao hơn hẳn so với các đời chip trước đó, cộng hưởng với thiết kế trên tiến trình 7nm+ cùng yếu tố đa nhân (sáu nhân) cho hiệu năng cao hơn và khả năng đa nhiệm tốt hơn nhiều lần so với các sản phẩm trước. Cùng với đó, việc tích hợp chip A13 trên hệ điều hành iOS 13 mang đến cho iPhone 11 tốc độ xử lý thông tin đáng kinh ngạc, đảm bảo quá trình trải nghiệm ứng dụng tuyệt vời cho người sử dụng. iPhone 11 sử dụng Apple GPU (bốn nhân), đây là bộ xử lý đồ họa được hãng tự thiết kế riêng, cho khả năng tương thích tối ưu khi đồng bộ trên thiết bị nội bộ. Yếu tố đa nhân giúp cho GPU của iPhone 11 có khả năng tiếp nhận và xử lý thông tin đồ họa một cách nhanh chóng, tạo ra hình ảnh hiển thị liên tục trên màn hình để trải nghiệm luôn mượt mà ngay cả khi sử dụng tác vụ nặng, nhất là chơi game.', '[\"products\\\\April2021\\\\BRMVnaUDtB7Fa8sxgsmB.jpg\",\"products\\\\April2021\\\\rj4GVlIQ8ihSv1AFWXNg.png\"]', 'iPhone 11 256GB được trang bị bộ camera kép tại mặt lưng với đôh phân giải 12 MP, f/1.8 và 12 MP, f/2.4. Song song với đó là thiết kế camera đơn tại mặt trước với độ phân giải đạt mức 12 MP, f/2.2. Bộ ba camera này tạo dựng hiệu ứng hình ảnh tốt, mở rộng góc chụp do được bổ sung thêm một camera góc rộng tại mặt sau. Từ đó, chất lượng ảnh chụp nâng cao hơn, hình ảnh sắc nét, màu sắc chân thật, kích thước bức hình tăng, số lượng các vật thể trong bức ảnh cũng cải thiện đáng kể cùng hiệu ứng chụp ảnh xóa phông với cảm biến chiều sâu ấn tượng.Đặc biệt, cả camera trước và sau của iPhone 11 đều được thiết kế để quay video chậm với tốc độ khung hình tối đa của camera selfie là 120fps, camera sau là 240fps', '[\"products\\\\April2021\\\\vJIsGLr2mvUr09SkdNYa.png\"]'),
(13, '3', 'iPhone 11 Pro Max', 25890000, 0, 10, 'Còn hàng', '[\"products\\\\October2020\\\\ChfBKYiEHRihuK9UrunU.jpg\",\"products\\\\October2020\\\\rTbbI4vkZOttUg3861uh.jpg\",\"products\\\\October2020\\\\UOHoqEZYlrBRyxsJrqPJ.jpg\",\"products\\\\October2020\\\\CusVoMww6ET5n1KdLpEz.jpg\"]', '2020-10-27 10:20:00', '2021-04-26 06:56:16', 'Màn hình là một trong số các yếu tố làm lên sự khác biệt cho 11 Pro Max. Công nghệ hiện đại nhất đã được ứng dụng cho quá trình sản xuất sản phẩm này. Đó là màn hình Super Retina XDR OLED. Đây là cái tên ra đời từ sự cải tiến công nghệ màn hình OLED. Apple đã tinh tế điều chỉnh để nâng cấp từ công nghệ OLED thành Super Retina XDR OLED với những bước đột phá về kích thước và số lượng điểm ảnh.   11 Pro Max là sản phẩm sở hữu kích thước màn hình Super Retina XDR OLED lớn nhất với 6.5 inches. Cùng với đó là độ phân giải màn hình (1242 x 2688) của sản phẩm cũng ở vị trí dẫn đầu bởi số lượng điểm ảnh lớn nhất từ trước đến nay trong danh sách các sản phẩm iPhone.', '[\"products\\\\April2021\\\\BkNoCAHJYiYdkIcw2rVZ.jpg\"]', 'iPhone 11 Pro Max chính hãng có thiết kế và màu sắc tương tự iPhone 11 Pro với bốn phiên bản màu là: xám xanh, bạc, vàng, màu xanh buổi đêm. Sự đa dạng này tạo cho người dùng nhiều phương án lựa chọn phù hợp theo nhu cầu. Chiếc smartphone này giữ nguyên thiết kế bo tròn bốn cạnh, tạo nên đường nét thanh thoát, mềm mại cho sản phẩm về mặt kiểu dáng.  Về phiên bản bộ nhớ, iPhone 11 Pro Max 64gb chính hãng ra mắt với ba phiên bản bộ nhớ, khác nhau ở dung lượng ổ cứng, bao gồm: 64GB bộ nhớ lưu trữ + 4GB RAM, 256GB + 4GB RAM và 512GB + 4GB RAM.Apple vẫn sử dụng con chip A được thiết kế dành riêng cho sản phẩm smartphone của mình, tích hợp trên hệ điều hành độc quyền iOS để có khả năng đồng bộ tốt nhất. 11 Pro Max sở hữu chip A13 – con chip đời mới nhất của hãng cả về thâm niên cả về hiệu năng. iPhone 11 Pro Max chạy hệ điều hành iOS 13, tăng cường tốc độ tiếp nhận và xử lý thông tin, phản hồi nhanh chóng nhất truy cập của người dùng. Chip A13 với cấu tạo đa nhân, xây dựng trên tiến trình 7 nm+ với tần suất xung nhịp cao mang lại hiệu suất tối đa cùng khả năng đa nhiệm cho thiết bị sử dụng mà vẫn vô cùng tiết kiệm pin. GPU được sử dụng trên điện thoại iPhone 11 Pro Max là GPU chuyên biệt của hãng. Việc đồng bộ hóa thiết bị độc quyền nội bộ từ hệ điều hành đến CPU và GPU tạo nên ưu thế cho sản phẩm chính hãng. Tốc độ điều khiển và xử lý đồ họa của Apple GPU trên iPhone 11 Pro Max chính hãng 64gb đạt mức đỉnh cao, phản hồi hình ảnh gần như tức khắc đồng thời rút ngắn tối đa thời gian chờ của người sử dụng. Bộ xử lý đồ họa này đặc biệt phù hợp cho người dùng trải nghiệm các tác vụ nặng, điển hình như chơi game.', '[\"products\\\\April2021\\\\U71a8W2Qew9c7Ss8J6Vo.jpg\"]', 'iPhone 11 Pro Max là một trong số rất ít sản phẩm đánh dấu bước ngoặt lớn của Apple về thiết kế camera. Siêu phẩm này mang đến cho chúng ta hệ thống bốn camera gồm một camera selfie mặt trước và ba camera mặt lưng. Các camera mặt sau được thiết kế trong một khung hình vuông đặt tại vị trí trên cùng góc trái mặt lưng sản phẩm.', '[\"products\\\\April2021\\\\omod1rxlLKGyjiFcFpTq.png\"]'),
(14, '3', 'iPhone 12', 25490000, 0, 10, 'Còn hàng', '[\"products\\\\October2020\\\\jYHwNPnVjLFmjMJfB3xl.jpg\",\"products\\\\October2020\\\\2v5EdzIGJAJZ3259jJbE.jpg\",\"products\\\\October2020\\\\8tZWo82UgOq8io0yxRTo.png\",\"products\\\\October2020\\\\9tceubv6MufC9GZhLDNW.jpg\",\"products\\\\October2020\\\\BBDbLqnMWdhn2EIYa65X.jpg\"]', '2020-10-27 10:20:00', '2021-04-26 06:40:38', 'Apple iPhone 12 64GB Chính Hãng VN/A có màn hình Super Retina XDR 6.1-inch. Sử dụng công nghệ OLED với độ phân giải 2532 x 1170 pixel ở 460 pixel mỗi inch.Màn hình trên Apple iPhone 12 được bảo vệ bởi công nghệ Ceramic Shield. Công nghệ mà Apple cho biết mang lại hiệu suất rơi tốt hơn gấp 4 lần so với các iPhone trước. Mang đến bước nhảy vọt về độ bền chưa từng có trên iPhone.', '[\"products\\\\April2021\\\\rFnyxRHmVE3HAGEa7YkC.jpeg\",\"products\\\\April2021\\\\1yMtQFLWZ7JjiaxI0XXb.jpeg\"]', 'Apple iPhone 12 Mini và Apple iPhone 12 rất giống nhau về thiết kế. Ngôn ngữ thiết kế iPhone 12 của Apple là tập trung vào các cạnh phẳng. Tương tự như iPad Pro cũng như iPhone 4/iPhone 5 ngày nào. Apple iPhone 12 có màn hình tràn cạnh. Với các rãnh cắt có kích thước giống hệt nhau ở mặt trước để chứa cảm biến Face ID.', '[\"products\\\\April2021\\\\RmlI813xrqL85OG9rpga.jpeg\"]', 'Apple iPhone 12 có quy trình A14 Bionic mới nhất của Apple. Được Apple gọi là “chip nhanh nhất trong điện thoại thông minh”. A14 Bionic có hai lõi hiệu suất cao và bốn lõi hiệu quả. Theo nhà sản xuất, có thể lên đến 15 giờ xem video và lên đến 50 giờ nghe nhạc. Về giá trị hiệu năng, nó hứa hẹn rất nhiều điều: Theo Apple, A14 Bionic sẽ tính toán nhanh hơn 50% so với bất kỳ chip điện thoại thông minh nào khác trên thị trường. Đơn vị đồ họa lõi tứ của iPhone 12 mini cũng sẽ tốt hơn bất kỳ chip đồ họa nào khác. Hiện được cài đặt trong điện thoại thông minh ít nhất 50%.Apple iPhone 12 đều có Neural Engine mới nhất để cải thiện các tính năng và khả năng Machine Learning. Apple cho biết Neural Engine 16 lõi mới mang lại hiệu suất tăng 80% so với thế hệ trước. Xử lý ảnh, các ứng dụng thực tế tăng cường và tương tác với trợ lý giọng nói Siri sẽ được hưởng lợi rất nhiều từ bản cập nhật. Apple iPhone 12 được trang bị bộ nhớ RAM khá ổn với 4GB.', '[\"products\\\\April2021\\\\rWXGqXJbtBlL8MBztWcS.jpg\",\"products\\\\April2021\\\\i6OJTwfvDNE9nMLQ1lEQ.jpeg\"]'),
(15, '3', 'iPhone 12 Pro Max', 32290000, 0, 30, 'Còn hàng', '[\"products\\\\October2020\\\\RL8vu9ZoNSPvCWv4CYUf.jpg\",\"products\\\\October2020\\\\ZCFZhLXUIMuzazl3mi45.jpg\",\"products\\\\October2020\\\\yQfP5NSZKtZXWfnPMNRT.png\",\"products\\\\October2020\\\\Mn89JFBiRHFqYX2N9ZHP.jpg\",\"products\\\\October2020\\\\NExT2oFkRj8dmetpP19u.jpg\"]', '2020-10-28 21:40:00', '2021-04-26 06:28:57', 'Ngày 14/10 vừa qua. Apple đã trình làng dòng iPhone 12 với các phiên bản iPhone 12|iPhone 12 Mini|iPhone 12 Pro|iPhone 12 Pro Max. Trong đó Apple iPhone 12 Pro Max là thiết bị mạnh mẽ nhất của nhà Apple năm nay. Với thiết kế nguyên khối vuông vắn cùng nhiều màu sắc đẹp mắt. Apple iPhone 12 Pro Max 128GB Chính Hãng VN/A Fullbox hứa hẹn sẽ mang đến trải nghiệm thú vị cho người dùng. Đồng thời nâng tầm đẳng cấp sử dụng.Công nghệ màn hình trên Apple iPhone 12 Pro Max 128GB Chính Hãng VN/A Fullbox cũng được đổi mới và trang bị tốt hơn cùng kích thước lên đến 6.7-inch. Lớn hơn nhiều so với Apple iPhone 12 Mini. Với công nghệ màn hình OLED cho khả năng hiển thị hình ảnh lên đến 2778 x 1284 pixels. Bên cạnh đó, màn hình này còn cho độ sáng tối đa cao nhất lên đến 800nits. Luôn đảm bảo cho bạn độ sáng cao và dễ nhìn nhất ngoài nắng.', '[\"products\\\\April2021\\\\0GoIdHIQXozoYGaSAZ5O.jpeg\",\"products\\\\April2021\\\\txDoRhZg3hGC0x2Wx2xB.jpeg\"]', 'A14 Bionic là chip đầu tiên trong ngành công nghiệp điện thoại thông minh được xây dựng trên quy trình 5 nanomet. Nhanh hơn và hiệu quả hơn bao giờ hết. A14 Bionic có CPU và GPU nhanh nhất lên tới 50% so với các chip điện thoại thông minh khác. Cho phép trải nghiệm chơi game chất lượng như bảng điều khiển, chụp ảnh tính toán mạnh mẽ và hơn thế nữa. Đồng thời mang lại thời lượng pin tuyệt vời. Đẩy mạnh các giới hạn của Machine Learning (ML). A14 Bionic trang bị Neural Engine 16 lõi – để tăng 80% hiệu suất. Có khả năng hoàn thành 11 nghìn tỷ hoạt động mỗi giây. Cho phép cải thiện hiệu suất trên cả những mẫu ML mạnh nhất.', '[\"products\\\\April2021\\\\G5oAKbT83vDYGCWIhQKO.png\",\"products\\\\April2021\\\\XW9AAIbfU4fF9GCBHOTS.jpeg\"]', 'Có thể nói camera cũng là một bước tiến mới trên Apple iPhone 12 Pro Max 128GB Chính Hãng VN/A Fullbox. Khi chúng được trang bị bộ 3 camera với chung một độ phân giải là 12MP. Tuy nhiên chúng có khẩu độ lớn và mật độ điểm ảnh trên một panel cũng lớn hơn. Do đó cho hình ảnh chi tiết hơn, bắt sáng tốt hơn. Ngoài ra, kết hợp chống rung quang học OIS thì máy còn có thể quay phim 4K tốt.Camera trước 12MP cũng có cùng khẩu độ và kích thước điểm ảnh trong panel giống như camera. Điều này giúp cho việc sử dụng cho chụp ảnh selfie tốt hơn và chân thực hơn. Cùng với đó một tính năng mà Apple luôn giữ chúng từ đời iPhone X đến giờ là. Khả năng quét khuôn mặt 3D FaceiD.Công nghệ chống nước là không thể thiếu trên các dòng điện thoại cao cấp. Và đặc biệt là đối với Apple iPhone 12 Pro Max. Chúng được trang bị công nghệ chống nước và chống bụi tốt nhất hiện nay trên các dòng smartphone. Đó là tiêu chuẩn IP68. Giúp bạn luôn có thể yên tâm hơn trong việc sử dụng quay phim dưới nước. Hay ở môi trường khắc nghiệt.', '[\"products\\\\April2021\\\\p9Mj4SKnzmBj1VKUmKox.jpeg\",\"products\\\\April2021\\\\lqTM08cdf0TUIP97wQNe.png\"]'),
(16, '4', 'iPad Pro 12.9', 31490000, 0, 15, 'Còn hàng', '[\"products\\\\November2020\\\\CMVEkedtOXuRiRD0Ajwk.png\",\"products\\\\November2020\\\\zdRoOkhMidnORkSJwItx.png\"]', '2020-11-02 04:12:00', '2021-04-26 08:19:32', 'iPad Pro 12.9 inch 2020 có một thiết kế khá vuông vức với viền màn hình 4 cạnh không quá dày và đều nhau, giúp cho trải nghiệm cầm nắm dễ dàng, giúp cho tổng thể mặt trước của iPad hài hòa và đẹp mắt hơn. Tổng thể chiếc máy có trọng lượng chỉ 471 g và mỏng 5.9 mm so với kích thước 12.9 inch thì điều đó cho thấy iPad Pro 12.9 inch 2020 rất mỏng nhẹ, gọn gàng.Thật khó lòng khi tìm ra khuyết điểm về màn hình của iPad Pro 12.9 inch 2020, với kích thước 12.9 inch cùng với độ phân giải 2048 x 2732 pixels giúp cho máy hiển thị vô cùng sắc nét và không gian làm việc lớn.', '[\"products\\\\April2021\\\\xY5IB5fnPLzd8wUGg5p5.jpg\",\"products\\\\April2021\\\\cL7xDpKDbBvyoat2X0zs.jpg\"]', 'iPad Pro 12.9 inch 2020 được trang bị bộ vi xử lý Apple A12Z Bionic mạnh mẽ hơn người tiền nhiệm, giúp cho thao tác sử dụng những phần mềm đồ họa như Photoshop, illustrator mượt mà và phản hồi nhanh chóng hơn.Với việc có thể kết nối với bàn phím, chuột không dây và con trỏ chuột được làm mới, giúp người dùng thao tác và sử dụng một cách dễ dàng.Hơn thế nữa, bộ vi xử lý A12Z với 8 nhân đồ hoạ thì máy có thể chiến hầu hết các tựa game hiện có trên thị trường như PUBG, Liên Quân, Asphalt 9,... với mức thiết lập đồ họa cao nhất với tốc độ khung hình ổn định trong suốt quá trình chơi.', '[\"products\\\\April2021\\\\6xc3LKFnKWOmnI56wxaH.jpg\",\"products\\\\April2021\\\\0KpZuol9Wf5WZCMO3jnD.jpg\"]', 'Apple thật sự ưu ái khi tích hợp cho chiếc máy này với 2 camera sau, 1 camera chính 12 MP và 1 camera góc siêu rộng 125 độ 10 MP, cùng với đó là camera selfie 7 MP hỗ trợ công nghệ TrueDepth. Giúp bạn hoàn toàn có thể chụp ra những bức ảnh ưng ý nhất.Việc quay video, chụp ảnh và chỉnh sửa trực tiếp một cách chuyên nghiệp để gửi đi khách hàng, đối tác chỉ với một thiết bị duy nhất đã không còn là điều xa vời với người dùng iPad Pro 2020.  Hơn thế nữa, iPad Pro 12.9 inch 2020 còn được tích hợp thêm cảm biến Lidar đo chiều sâu, giúp hỗ trợ những ứng dụng AR nhận diện bối cảnh một cách chính xác nhất.', '[\"products\\\\April2021\\\\5NgEdonaDMtH0lwXTlDC.jpg\",\"products\\\\April2021\\\\vumsksjWQs8dBdAgmLiW.jpg\"]'),
(17, '4', 'iPad Pro 11', 25490000, 0, 15, 'Còn hàng', '[\"products\\\\November2020\\\\jHEIIgtG8RtFxyIZJKcn.png\"]', '2020-11-02 04:12:00', '2021-04-26 08:23:13', 'Cấu hình khủng vượt giới hạn của một chiếc tablet Được Apple trang bị vi xử lý A12Z Bionic mới nhất, iPad Pro 11 inch có một tốc độ vượt trội, có thể so sánh được với các mẫu máy tính xách tay hiện tại.Mọi ứng dụng hoạt động trên iPad trước vốn đã mượt, nay còn nhanh và trôi chảy hơn, từ các tác vụ đơn giản hàng ngày cho đến các công việc chuyên sâu về đồ họa đều được xử lý nhanh chóng.  Apple cũng đã tăng cường đến 8 lõi xử lý đồ họa, giúp cho iPad Pro 2020 trở thành một chiếc máy tính bảng đáp ứng tuyệt vời cho nhu cầu đồ họa, giải trí và chơi game.', '[\"products\\\\April2021\\\\v6sqYpdbACDwJtXHjex4.jpg\",\"products\\\\April2021\\\\gH1fdgsxYQrsU2HVTJ5P.jpg\"]', 'Sự thay đổi về ngoại hình duy nhất của iPad Pro 2020 có lẽ là cụm camera sau hình vuông ở mặt lưng với thiết kế tương tự dòng iPhone 11. Mô-đun camera này chứa 3 cảm biến, gồm camera chính góc rộng 12 MP và camera góc siêu rộng 10 MP và cảm biến mới có tên LiDAR.Camera chính 12 MP hỗ trợ chụp những tấm ảnh thường ngày rõ nét. Trong khi đó, ống kính Ultra Wide 10 MP tăng cường độ mở cho góc chụp siêu rộng ấn tượng.Hệ thống camera iPad Pro vận hành linh hoạt đến không ngờ. Từ việc quay, chỉnh sửa cho đến chia sẻ video 4K, tất cả thật dễ dàng trên cùng một thiết bị. Bạn cũng có thể quay video hoàn hảo với micro đạt chuẩn phòng thu, phát âm thanh 4 kênh, làm cho phần nghe của thước phim trở nên sống động hơn.  Cảm biến LiDAR (Light Detection and Ranging) là một công nghệ hình ảnh mới, lần đầu tiên được Apple tích hợp trên thiết bị của mình.', '[\"products\\\\April2021\\\\VO1lLMZcCEXiX6qIMx5r.jpg\",\"products\\\\April2021\\\\Z52B5mEDKwihfXOyyQT0.jpg\"]', 'iPadOS được thiết kế để khai thác sức mạnh và hiệu suất của iPad Pro. Phần cứng nhanh và phần mềm mạnh mẽ được thiết kế đồng bộ để giúp mọi tác vụ trở nên linh hoạt và mượt mà. Nhờ có iPadOS tối ưu, bạn có thể làm việc đa nhiệm nhiều ứng dụng cùng một lúc, thao tác chuyển đổi hay chia màn hình để sử dụng 2 ứng dụng rất nhanh chóng và dễ dàng.  Bên cạnh Apple Pencil, iPad Pro còn hỗ trợ thêm phụ kiện mới là bàn phím Magic Keyboard, với thiết kế mới, trang bị phím bấm cắt kéo như trên MacBook Air 2020, bổ sung trackpad điều khiển con trỏ chuột linh hoạt, đã giúp cho iPad gần như trở thành một chiếc laptop nhỏ gọn mạnh mẽ phục vụ cho công việc của bạn.', '[\"products\\\\April2021\\\\0BCK6HwJg21Lkqi2r2Zx.png\",\"products\\\\April2021\\\\Im7aZm4UHX3khzgl8Wiq.jpg\"]'),
(18, '4', 'iPad Air 4', 24990000, 0, 15, 'Còn hàng', '[\"products\\\\November2020\\\\jcTQWNJUpr8Y76jIFfcT.png\",\"products\\\\November2020\\\\sda3J5Yi796dOoqEp3Ue.png\",\"products\\\\November2020\\\\aDA8yfEx8HcWzNtk1aDg.png\"]', '2020-11-02 04:13:00', '2021-04-26 08:26:01', 'Apple trang bị cho iPad Air 4 chip A14 Bionic 6 nhân được sản xuất bởi TSMC với tiến trình 5 nm hiện đại nhất hiện nay. Số lượng bóng bán dẫn đạt 11.8 tỷ cao hơn 40% so với A13 Bionic (8.5 tỷ). Có thể thấy số lượng bóng bán dẫn càng lớn thì chip càng mạnh và tiết kiệm năng lượng hơn.A14 Bionic có 6 lõi chip, trong đó 2 lõi hiệu suất cao cho tác vụ phức tạp và 4 lõi còn lại cho các tác vụ thông thường.  Bên cạnh đó, bộ xử lý đồ hoạ GPU 4 lõi mang lại hiệu suất tối đa, nhanh hơn 30% so với thế hệ trước hứa hẹn iPad Air có thể chơi các trò chơi phức tạp đòi hỏi độ phân giải cao, video 4K,...', '[\"products\\\\April2021\\\\9QyEBwC1SREMKu7hKQ6X.jpg\",\"products\\\\April2021\\\\JPIYbC2jQbPB9lGNEiyH.jpg\"]', 'iPad Air 4 có kiểu dáng mới tương tự iPad Pro 2020 nhưng có kích thước nhỏ hơn và dày chỉ 6.1 mm, trọng lượng đạt 460 g dễ dàng mang theo bên mình mọi lúc mọi nơi. Thiết kế này giúp tương thích với bàn phím Apple Smart Keyboard Folio, Magic Keyboard của iPad Pro 11 inch và hỗ trợ bút Apple Pencil 2.Thiết kế trong iPad Air 4 vuông vắn hơn nếu so với những dòng iPad trước, các góc cạnh được bo tròn nhẹ nhàng tạo cảm giác mềm mại hơn cho tổng thể.Nút Home truyền thống được loại bỏ, tạo không gian hiển thị rộng hơn và tích hợp cảm biến vân tay Touch ID trên nút nguồn đặt ở phía trên của thân máy. Đồng thời, iPad Air trở thành sản phẩm đầu tiên của Apple tích hợp tính năng nhận diện vân tay vào chung với nút nguồn.', '[\"products\\\\April2021\\\\01cMSv8LqZzANNmMSn2c.jpg\",\"products\\\\April2021\\\\5PtzL3TpBeMBetqU1XNg.jpg\"]', 'iPad Air 2020 sử dụng công nghệ Liquid Retina và có độ phân giải 1640 x 2360 Pixels và có tần số quét đến 60 Hz giúp iPad Air hiển thị hình ảnh mượt mà hơn, các chuyển động hình ảnh trơn tru hơn, gần như loại bỏ hoàn toàn tình trạng giật lag.Từ đó, bạn có thể tận hưởng trọn ven những thước phim bom tấn ấn tượng hay chơi game phải gọi là \"bao mướt\". Màn hình của iPad Air có hỗ trợ hỗ trợ dải màu rộng DCI-P3 với tính năng True-Tone cho khả năng tái tạo màu sắc chính xác hỗ trợ ưu việt cho công việc đồ họa. Hơn nữa, có lớp phủ chống lóa bề mặt, độ sáng 500 nits giúp luôn hiển thị tốt trong nhiều điều ánh sáng khác nhau, ngoài trời cũng không thành vấn đề.', '[\"products\\\\April2021\\\\gyPiYVeoeXy7x38WsbeV.jpg\"]'),
(19, '4', 'iPad 8 Wifi', 15990000, 0, 15, 'Còn hàng', '[\"products\\\\November2020\\\\LXXF9PRASknbxvnWyd8z.png\",\"products\\\\November2020\\\\90TmVGNQDbxitSIVLiJc.png\",\"products\\\\November2020\\\\dOxLHoZa9msjFisIiYNW.png\"]', '2020-11-02 04:15:00', '2021-04-26 08:28:05', 'iPad 2020 được thiết kế để thân thiện với môi trường và hỗ trợ kế hoạch của Apple để tất cả sản phẩm của họ trung tính carbon trong tương lai. iPad 8 sử dụng vỏ nhôm và thiếc tái chế 100%, chất liệu này vừa an toàn lại cho chiếc máy sự sang trọng đầy sức hút.', '[\"products\\\\April2021\\\\3g3XESqvm6q8B6NjaWsX.jpg\",\"products\\\\April2021\\\\FG1TJkfLuxnDrOtHybGk.jpg\"]', 'Thế hệ iPad 2020, cung cấp kèm theo iPadOS 14 mang đến thiết kế giao diện mới và các tính năng mới mẻ để tận dụng các khả năng độc đáo trên iPad.  iPadOS cũng mang tính năng Scribble lên iPad cho phép dùng Apple Pencil viết tay trực tiếp trong bất kỳ trường văn bản nào. Scribble sử dụng công nghệ máy học trên thiết bị để chuyển đổi chữ viết tay thành văn bản đã nhập trong thời gian thực, vì vậy chữ viết luôn được giữ riêng tư và bảo mật.Tính năng nhận dạng hình dạng cho phép người dùng vẽ các hình dạng hoàn hảo về mặt hình học và gắn ngay vào vị trí khi thêm sơ đồ và hình minh họa trong ghi chú. Vẫn còn nhiều điều hay ho cho bạn khám phá.', '[\"products\\\\April2021\\\\2YTBJ9ybZGHyW3FbFfAc.jpg\",\"products\\\\April2021\\\\YmHScYrU2v5TqxQ2CRhe.jpg\"]', 'Camera trên iPad 2020 tương tự trên iPad 2019 với phía sau được trang bị camera 8 MP, cho ra những bức ảnh màu sắc hài hoà, độ phơi sáng đồng đều và có thể quay video ở độ phân giải 1920 x 1080.Camera trước 1.2 MP có thể FaceTime với với bạn bè người hoặc thông qua các ứng dụng hỗ trợ video call và có thể quay video độ phân giải 1280 x 720.  Cùng với đó iPad 2020 được đánh giá cho 10 tiếng lướt lướt web, đảm bảo nhu cầu giải trí và làm việc được liên tục không ngắt quãng. Và được trang bị cáp sạc lightning với củ sạc 20 W giúp sạc nhanh hơn cho bạn thời gian chờ sạc ít hơn.', '[\"products\\\\April2021\\\\zqkwj9mRGhZnZ3fBBwke.jpg\"]'),
(20, '4', 'iPad Mini 7.9', 13990000, 0, 10, 'Còn hàng', '[\"products\\\\November2020\\\\w1Dt3K1aLrJMtJ0AlE7F.png\",\"products\\\\November2020\\\\1AT2UM4nqEGzM7kWMre1.png\",\"products\\\\November2020\\\\5kAfxwW2eG7xM1jeqpGH.png\"]', '2020-11-02 04:15:00', '2021-04-26 08:31:50', 'Tất cả nâng cấp đều ở bên trong: IPad mini 4 và iPad Mini 7.9 inch Wifi 2019 là bước nhảy vọt về hiệu năng từ bộ xử lý A8 sang A12 Bionic mới nhất mang lại \"hiệu năng gấp 3 lần và đồ họa nhanh hơn 9 lần\".Đồng thời, dung lượng RAM đã có sự nâng cấp nhẹ so với thế hệ thứ 4, tăng từ 2 GB lên RAM 3 GB giúp bạn chạy đa nhiệm nhiều ứng dụng tốt hơn.Chip A12 Bionic được trang bị trên iPad Mini 7.9 inch Wifi 2019 là một trong những bộ xử lý di động tốt nhất trong việc chơi game hiện nay, đồng thời giúp xử lí các tác vụ khác một cách mượt mà.', '[\"products\\\\April2021\\\\5LBEPeUeD3I8uDLlAsnt.jpg\"]', 'Với nhu cầu làm việc, lướt web, xem video, chơi trò chơi và thậm chí chỉnh sửa video 4K trên thiết bị này đều được xử lí trơn tru và không bị trục trặc.', '[\"products\\\\April2021\\\\VYZyhnMa02br5kHtiEyy.jpg\",\"products\\\\April2021\\\\JSZRvTN2p2Lq0fhAOBDk.jpg\"]', 'Với iPad Mini 7.9 inch Wifi 2019 thì bạn sẽ có được 10 tiếng sử dụng liên tục với các tác vụ như xem video hay lướt web, một con số mà nhiều người hằng mơ ước.iPad Mini mới sở hữu loa kép hướng xuống dưới có âm lượng lớn cho trải nghiệm âm thanh khá tốt, đặc biệt là âm trầm.', '[\"products\\\\April2021\\\\3FdnPDVRhPUUvc6N9G5A.jpg\",\"products\\\\April2021\\\\gFR0EpvRZssTIroWvr6A.jpg\"]'),
(22, '3', 'iPhone 6S VN/A', 2000000, 2000000, 20, 'còn hàng', '[\"products\\\\April2021\\\\AVjdbZYXZr2yXUIr0wM9.png\"]', '2021-04-25 10:50:00', '2021-04-26 06:31:03', 'Sắc hồng vàng bắt mắt và khác lạ Khác biệt duy nhất trong thiết kế của iPhone 6s và iPhone 6 là ở màu sắc mới: màu hồng vàng lạ mắt lần đầu xuất hiện, phù hợp với phần lớn các bạn nữ và số ít các bạn nam thích sự khác biệt độc đáo.', '[\"products\\\\April2021\\\\Vr0bHQbgW0maMQPKdTZJ.jpg\"]', 'Cảm ứng 3D Touch độc đáo 3D Touch là tính năng hoàn toàn mới trên iPhone 6s, cho phép người dùng xem trước được các tùy chọn nhanh dựa vào lực nhấn mạnh hay nhẹ mà không cần phải nhấp vào ứng dụng. Để sử dụng, bạn chỉ cần nhấn vào màn hình hoặc ứng dụng 1 lực mạnh đến khi máy rung nhẹ là có thể xem được.', '[\"products\\\\April2021\\\\jlQcCz2k3gczYwFizxJQ.jpg\"]', 'iPhone 6s sử dụng vi xử lý A9 tốc độ 1.8 GHz (iPhone 6 chỉ với 1.4 GHz), giúp máy phản hồi các tác vụ nhanh, chạy cùng lúc nhiều ứng dụng mượt mà.Ngoài ra chiếc điện thoại iPhone này còn được trang bị các công nghệ tiên tiến nhất hiện nay như: Wifi chuẩn ac, tính năng kết nối 4G thời thượng, cho tốc độ kết nối và tải dữ liệu rất nhanh. Cảm biến vân tay cải tiến giúp nhận diện và mở khóa nhanh hơn.', '[\"products\\\\April2021\\\\RUJcClHsDmcwjeP4Tdsp.jpg\"]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(2, 'user', 'Normal User', '2020-10-26 05:38:54', '2020-10-26 05:38:54'),
(3, 'member', 'Member', '2020-10-28 23:07:52', '2021-03-08 11:56:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-10-26 05:38:55', '2020-10-26 05:38:55'),
(31, 'categories', 'slug', 7, 'pt', 'categoria-1', '2020-11-12 05:32:06', '2020-11-12 05:32:06'),
(32, 'categories', 'name', 7, 'pt', 'Categoria 1', '2020-11-12 05:32:06', '2020-11-12 05:32:06'),
(33, 'categories', 'slug', 8, 'pt', 'categoria-2', '2020-11-12 05:32:06', '2020-11-12 05:32:06'),
(34, 'categories', 'name', 8, 'pt', 'Categoria 2', '2020-11-12 05:32:06', '2020-11-12 05:32:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `address`, `phone`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$wjTBuc7NhI.SUqiCqWdHsewH5yADmq6WtVL/AfgZ53CCM/Y1F5Bo6', 'WUC0tbljZM59utP066VYu7Fqya8t80FrkfKwEk8aSUdlY4Yo1Yae62mUifdP', NULL, '2020-10-26 05:38:55', '2020-10-26 05:38:55', NULL, NULL),
(2, 1, 'admin', 'your@email.com', 'users/default.png', NULL, '$2y$10$yj8k2fW1C7y701TRNnBWcucLlvgJwaAXSbAKT9El12dnl6S8bon6.', NULL, NULL, '2020-10-26 05:39:40', '2020-10-26 05:39:40', NULL, NULL),
(3, 1, 'gianggiang', 'admin@gmail.com', 'users\\April2021\\GfOjBqzCWBJbYiK38imV.png', NULL, '$2y$10$OWf5.IPVsyw70bY5e8V2qug6tBf5ClO2cpyAdNBYFpX/ObazkM2L6', NULL, '{\"locale\":\"en\"}', '2020-10-26 05:41:06', '2021-04-27 00:12:18', NULL, NULL),
(5, 2, 'abc', 'email@gmail.com', 'users/default.png', NULL, '$2y$10$BJC13BU7gG3HnvqhwQdE0unsVzGRhB.ihOrYAm5OWmtlhbkS9e2TC', NULL, NULL, '2020-11-05 06:29:56', '2020-11-05 06:29:56', 'Can Tho', '0967897546'),
(9, 2, 'dsad', 'net@gmail.com', 'users/default.png', NULL, '$2y$10$YMfefvNc9v3iT.FM4oESM.uOe8V1fFKQ/xAvi7iHY2a.Aq8CCgDyu', NULL, NULL, '2020-11-19 05:39:06', '2020-11-19 05:39:06', 'can tho', '0843685673'),
(11, 2, 'phan phu thuan', 'thuan@gmail.com', 'users/default.png', NULL, '$2y$10$GbJ2ePJ1kUlOtibyWOS6fOxyCfFsb4rg8ZLY43IRgCtnAvqoDsIzC', NULL, NULL, '2021-04-22 22:56:01', '2021-04-22 22:56:01', 'can tho', '0939337416');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `color_products`
--
ALTER TABLE `color_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Chỉ mục cho bảng `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `detail_products`
--
ALTER TABLE `detail_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `khachhanngs`
--
ALTER TABLE `khachhanngs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Chỉ mục cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Chỉ mục cho bảng `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `color_products`
--
ALTER TABLE `color_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT cho bảng `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `detail_products`
--
ALTER TABLE `detail_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhanngs`
--
ALTER TABLE `khachhanngs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
