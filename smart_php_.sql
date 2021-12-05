-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 01, 2021 lúc 01:51 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.3.27

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
(75, 9, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{}', 5),
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
(107, 9, 'order_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
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
(124, 8, 'describe_Ibot', 'multiple_images', 'Describe Ibot', 0, 1, 1, 1, 1, 1, '{}', 16),
(125, 17, 'id_status', 'text', 'Id Status', 1, 1, 1, 1, 1, 1, '{}', 1),
(126, 17, 'name_status', 'text', 'Name Status', 1, 1, 1, 1, 1, 1, '{}', 2),
(127, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 1, 1, '{}', 3),
(128, 17, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 1, 1, 1, '{}', 4),
(129, 23, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(130, 23, 'namestt', 'text', 'Namestt', 0, 1, 1, 1, 1, 1, '{}', 2),
(131, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(132, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(133, 9, 'order_belongsto_sttorder_relationship', 'relationship', 'sttorders', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Sttorder\",\"table\":\"sttorders\",\"type\":\"belongsTo\",\"column\":\"status\",\"key\":\"id\",\"label\":\"namestt\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 9),
(134, 24, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(135, 24, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(136, 24, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(137, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(138, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(139, 24, 'number', 'text', 'Number', 0, 1, 1, 1, 1, 1, '{}', 6),
(149, 28, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(150, 28, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(151, 28, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(152, 28, 'rating_star', 'text', 'Rating Star', 0, 1, 1, 1, 1, 1, '{}', 4),
(153, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(154, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(244, 47, 'id_ship', 'text', 'Id Ship', 1, 1, 1, 0, 0, 0, '{}', 1),
(245, 47, 'ma_tp', 'text', 'Ma Tp', 0, 1, 1, 1, 1, 1, '{}', 2),
(246, 47, 'ma_qh', 'text', 'Ma Qh', 0, 1, 1, 1, 1, 1, '{}', 3),
(247, 47, 'phi_ship', 'text', 'Phi Ship', 0, 1, 1, 1, 1, 1, '{}', 4),
(248, 47, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 5),
(249, 47, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(250, 47, 'shipfree_belongsto_tblthanhpho_relationship', 'relationship', 'tblthanhphos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\tblthanhpho\",\"table\":\"tblthanhphos\",\"type\":\"belongsTo\",\"column\":\"ma_tp\",\"key\":\"id_thanhpho\",\"label\":\"name_thanhpho\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(251, 47, 'shipfree_belongsto_tblquanhuyen_relationship', 'relationship', 'tblquanhuyens', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\tblquanhuyen\",\"table\":\"tblquanhuyens\",\"type\":\"belongsTo\",\"column\":\"ma_qh\",\"key\":\"id_quanhuyen\",\"label\":\"name_quanhuyen\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(252, 48, 'id_quanhuyen', 'text', 'Id Quanhuyen', 1, 1, 1, 0, 0, 0, '{}', 1),
(253, 48, 'name_quanhuyen', 'text', 'Name Quanhuyen', 0, 1, 1, 1, 1, 1, '{}', 2),
(254, 48, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 3),
(255, 48, 'matp', 'text', 'Matp', 0, 1, 1, 1, 1, 1, '{}', 4),
(256, 48, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(257, 48, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(258, 48, 'tblquanhuyen_belongsto_tblthanhpho_relationship', 'relationship', 'tblthanhphos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\tblthanhpho\",\"table\":\"tblthanhphos\",\"type\":\"belongsTo\",\"column\":\"matp\",\"key\":\"id_thanhpho\",\"label\":\"name_thanhpho\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7);

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
(9, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-27 03:55:45', '2021-05-09 11:06:12'),
(10, 'order_details', 'order-details', 'Order Detail', 'Order Details', NULL, 'App\\OrderDetail', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-27 03:58:31', '2020-10-27 03:58:31'),
(11, 'color_products', 'color-products', 'Color Product', 'Color Products', NULL, 'App\\ColorProduct', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-27 04:01:21', '2020-10-27 04:02:43'),
(12, 'detail_products', 'detail-products', 'Detail Product', 'Detail Products', NULL, 'App\\DetailProduct', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-27 05:11:06', '2020-10-28 22:11:29'),
(13, 'khachhanngs', 'khachhanngs', 'Khachhanng', 'Khachhanngs', NULL, 'App\\Khachhanng', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-19 05:30:03', '2020-11-19 05:30:03'),
(17, 'status_order', 'status-order', 'Status Order', 'Status Orders', NULL, NULL, NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-05-09 08:48:06', '2021-05-09 08:48:06'),
(23, 'sttorders', 'sttorders', 'Sttorder', 'Sttorders', NULL, 'App\\Models\\Sttorder', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-09 10:58:43', '2021-05-09 11:00:20'),
(24, 'product_views', 'product-views', 'Product View', 'Product Views', NULL, 'App\\Models\\ProductView', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-05-16 22:31:08', '2021-05-16 22:31:08'),
(25, 'tblcitys', 'tblcitys', 'Tblcity', 'Tblcities', NULL, 'App\\Tblcity', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-05-20 06:25:20', '2021-05-20 06:25:20'),
(28, 'rating_stars', 'rating-stars', 'Rating Star', 'Rating Stars', 'voyager-star-two', 'App\\RatingStar', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-20 07:26:07', '2021-06-01 04:35:22'),
(47, 'shipfrees', 'shipfrees', 'Shipfree', 'Shipfrees', NULL, 'App\\Shipfree', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-20 18:50:55', '2021-05-20 18:56:20'),
(48, 'tblquanhuyens', 'tblquanhuyens', 'Tblquanhuyen', 'Tblquanhuyens', NULL, 'App\\Tblquanhuyen', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-20 18:54:15', '2021-05-20 18:54:53');

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
(1, 'phan phu thuan', 'thuan@gmail.com', '0939337416', 'Can Tho', '2020-11-19 06:02:00', '2021-05-07 20:26:46');

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
(1, 1, 'Trang chủ', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2020-10-26 05:38:54', '2021-05-18 08:54:50', 'voyager.dashboard', 'null'),
(3, 1, 'Thành viên', '', '_self', 'voyager-person', '#000000', 28, 2, '2020-10-26 05:38:54', '2021-05-18 09:04:32', 'voyager.users.index', 'null'),
(4, 1, 'Quyền', '', '_self', 'voyager-lock', '#000000', 28, 1, '2020-10-26 05:38:54', '2021-05-18 09:04:28', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2020-10-26 05:38:54', '2021-05-24 10:38:24', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-10-26 05:38:54', '2021-05-18 09:04:23', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-10-26 05:38:54', '2021-05-18 09:05:34', 'voyager.database.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 3, '2020-10-26 05:38:54', '2021-05-18 09:05:34', 'voyager.bread.index', NULL),
(11, 1, 'Loại sản phẩm', '', '_self', 'voyager-categories', '#000000', 29, 1, '2020-10-26 05:38:54', '2021-05-18 09:05:14', 'voyager.categories.index', 'null'),
(15, 1, 'Màu sắc', '', '_self', 'voyager-paw', '#000000', 29, 2, '2020-10-27 03:34:09', '2021-05-18 09:05:23', 'voyager.colors.index', 'null'),
(16, 1, 'Sản phẩm', '', '_self', 'voyager-bag', '#000000', 29, 3, '2020-10-27 03:48:03', '2021-05-18 09:05:27', 'voyager.products.index', 'null'),
(17, 1, 'Đơn hàng', '', '_self', 'voyager-list', '#000000', NULL, 4, '2020-10-27 03:55:45', '2021-05-24 10:38:24', 'voyager.orders.index', 'null'),
(21, 1, 'Khách tự do', '', '_self', 'voyager-people', '#000000', 28, 3, '2020-11-19 05:30:03', '2021-05-18 09:05:35', 'voyager.khachhanngs.index', 'null'),
(26, 1, 'Trạng thái đơn hàng', '', '_self', 'voyager-resize-small', '#000000', 17, 3, '2021-05-09 10:58:44', '2021-05-24 10:50:00', 'voyager.sttorders.index', 'null'),
(28, 1, 'Tài Khoản', '', '_self', 'voyager-group', '#000000', NULL, 2, '2021-05-18 09:04:17', '2021-05-18 09:04:27', NULL, ''),
(29, 1, 'Quản lý sản phẩm', '', '_self', 'voyager-pie-chart', '#000000', NULL, 3, '2021-05-18 09:05:00', '2021-05-18 09:05:35', NULL, ''),
(33, 1, 'Rating Stars', '', '_self', NULL, NULL, 29, 4, '2021-05-20 07:26:07', '2021-05-20 19:57:18', 'voyager.rating-stars.index', NULL),
(55, 1, 'Quản lý đơn hàng', '', '_self', NULL, '#000000', 17, 1, '2021-05-24 10:37:29', '2021-05-24 10:38:00', 'voyager.orders.index', NULL),
(56, 1, 'Chi tiết đơn hàng', '', '_self', NULL, '#000000', 17, 2, '2021-05-24 10:38:41', '2021-05-24 10:50:00', 'voyager.order-details.index', 'null');

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
(28, '2021_04_25_173648_add_describe_to_products', 2),
(29, '2021_04_28_025851_edit_news_table', 3),
(30, '2021_05_09_152034_create_status_order', 4),
(31, '2021_05_09_160801_create__status_order_table', 5),
(32, '2021_05_15_171522_edit_orders_table', 6);

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
(16, '11', '2021-04-28', 22490000, '4', '2021-04-27 19:24:00', '2021-05-10 05:58:24'),
(18, '11', '2021-04-29', 15990000, '2', '2021-04-29 03:38:00', '2021-05-10 05:57:52'),
(19, '11', '2021-04-29', 2000000, '3', '2021-04-29 03:39:00', '2021-05-10 05:57:43'),
(20, '11', '2021-05-06', 46270000, '1', '2021-05-06 06:45:00', '2021-05-10 06:14:34'),
(21, '12', '2021-05-07', 17990000, '3', '2021-05-07 12:58:00', '2021-05-09 18:37:13');

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
(24, '19', '22', 1, 2000000, NULL, '2021-04-29 03:39:15', '2021-04-29 03:39:15'),
(25, '20', '4', 2, 6990000, NULL, '2021-05-06 06:45:24', '2021-05-06 06:45:24'),
(26, '20', '15', 1, 32290000, NULL, '2021-05-06 06:45:24', '2021-05-06 06:45:24'),
(27, '21', '22', 1, 2000000, NULL, '2021-05-07 12:58:16', '2021-05-07 12:58:16'),
(28, '21', '9', 1, 15990000, NULL, '2021-05-07 12:58:16', '2021-05-07 12:58:16');

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
(76, 'delete_khachhanngs', 'khachhanngs', '2020-11-19 05:30:03', '2020-11-19 05:30:03'),
(77, 'browse_status_order', 'status_order', '2021-05-09 08:48:06', '2021-05-09 08:48:06'),
(78, 'read_status_order', 'status_order', '2021-05-09 08:48:06', '2021-05-09 08:48:06'),
(79, 'edit_status_order', 'status_order', '2021-05-09 08:48:06', '2021-05-09 08:48:06'),
(80, 'add_status_order', 'status_order', '2021-05-09 08:48:06', '2021-05-09 08:48:06'),
(81, 'delete_status_order', 'status_order', '2021-05-09 08:48:06', '2021-05-09 08:48:06'),
(92, 'browse_sttorders', 'sttorders', '2021-05-09 10:58:44', '2021-05-09 10:58:44'),
(93, 'read_sttorders', 'sttorders', '2021-05-09 10:58:44', '2021-05-09 10:58:44'),
(94, 'edit_sttorders', 'sttorders', '2021-05-09 10:58:44', '2021-05-09 10:58:44'),
(95, 'add_sttorders', 'sttorders', '2021-05-09 10:58:44', '2021-05-09 10:58:44'),
(96, 'delete_sttorders', 'sttorders', '2021-05-09 10:58:44', '2021-05-09 10:58:44'),
(97, 'browse_product_views', 'product_views', '2021-05-16 22:31:08', '2021-05-16 22:31:08'),
(98, 'read_product_views', 'product_views', '2021-05-16 22:31:08', '2021-05-16 22:31:08'),
(99, 'edit_product_views', 'product_views', '2021-05-16 22:31:08', '2021-05-16 22:31:08'),
(100, 'add_product_views', 'product_views', '2021-05-16 22:31:08', '2021-05-16 22:31:08'),
(101, 'delete_product_views', 'product_views', '2021-05-16 22:31:08', '2021-05-16 22:31:08'),
(102, 'browse_tblcitys', 'tblcitys', '2021-05-20 06:25:20', '2021-05-20 06:25:20'),
(103, 'read_tblcitys', 'tblcitys', '2021-05-20 06:25:20', '2021-05-20 06:25:20'),
(104, 'edit_tblcitys', 'tblcitys', '2021-05-20 06:25:20', '2021-05-20 06:25:20'),
(105, 'add_tblcitys', 'tblcitys', '2021-05-20 06:25:20', '2021-05-20 06:25:20'),
(106, 'delete_tblcitys', 'tblcitys', '2021-05-20 06:25:20', '2021-05-20 06:25:20'),
(117, 'browse_rating_stars', 'rating_stars', '2021-05-20 07:26:07', '2021-05-20 07:26:07'),
(118, 'read_rating_stars', 'rating_stars', '2021-05-20 07:26:07', '2021-05-20 07:26:07'),
(119, 'edit_rating_stars', 'rating_stars', '2021-05-20 07:26:07', '2021-05-20 07:26:07'),
(120, 'add_rating_stars', 'rating_stars', '2021-05-20 07:26:07', '2021-05-20 07:26:07'),
(121, 'delete_rating_stars', 'rating_stars', '2021-05-20 07:26:07', '2021-05-20 07:26:07'),
(212, 'browse_shipfrees', 'shipfrees', '2021-05-20 18:50:55', '2021-05-20 18:50:55'),
(213, 'read_shipfrees', 'shipfrees', '2021-05-20 18:50:55', '2021-05-20 18:50:55'),
(214, 'edit_shipfrees', 'shipfrees', '2021-05-20 18:50:55', '2021-05-20 18:50:55'),
(215, 'add_shipfrees', 'shipfrees', '2021-05-20 18:50:55', '2021-05-20 18:50:55'),
(216, 'delete_shipfrees', 'shipfrees', '2021-05-20 18:50:55', '2021-05-20 18:50:55'),
(217, 'browse_tblquanhuyens', 'tblquanhuyens', '2021-05-20 18:54:15', '2021-05-20 18:54:15'),
(218, 'read_tblquanhuyens', 'tblquanhuyens', '2021-05-20 18:54:15', '2021-05-20 18:54:15'),
(219, 'edit_tblquanhuyens', 'tblquanhuyens', '2021-05-20 18:54:15', '2021-05-20 18:54:15'),
(220, 'add_tblquanhuyens', 'tblquanhuyens', '2021-05-20 18:54:15', '2021-05-20 18:54:15'),
(221, 'delete_tblquanhuyens', 'tblquanhuyens', '2021-05-20 18:54:15', '2021-05-20 18:54:15');

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
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1);

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
(23, '3', 'iPhone 6S VN/A', 2000000, NULL, 20, 'còn hàng', '[\"products\\\\May2021\\\\GC8O5JhVDQCpDUaUK18c.png\"]', '2021-05-20 20:02:00', '2021-05-20 20:20:37', 'Sắc hồng vàng bắt mắt và khác lạ Khác biệt duy nhất trong thiết kế của iPhone 6s và iPhone 6 là ở màu sắc mới: màu hồng vàng lạ mắt lần đầu xuất hiện, phù hợp với phần lớn các bạn nữ và số ít các bạn nam thích sự khác biệt độc đáo.', '[\"products\\\\May2021\\\\GEbF5ZlqBA8hALMuA7nT.jpg\"]', 'Cảm ứng 3D Touch độc đáo 3D Touch là tính năng hoàn toàn mới trên iPhone 6s, cho phép người dùng xem trước được các tùy chọn nhanh dựa vào lực nhấn mạnh hay nhẹ mà không cần phải nhấp vào ứng dụng. Để sử dụng, bạn chỉ cần nhấn vào màn hình hoặc ứng dụng 1 lực mạnh đến khi máy rung nhẹ là có thể xem được.', '[\"products\\\\May2021\\\\g2t44lTUytnGSQicrfex.jpg\"]', 'iPhone 6s sử dụng vi xử lý A9 tốc độ 1.8 GHz (iPhone 6 chỉ với 1.4 GHz), giúp máy phản hồi các tác vụ nhanh, chạy cùng lúc nhiều ứng dụng mượt mà.Ngoài ra chiếc điện thoại iPhone này còn được trang bị các công nghệ tiên tiến nhất hiện nay như: Wifi chuẩn ac, tính năng kết nối 4G thời thượng, cho tốc độ kết nối và tải dữ liệu rất nhanh. Cảm biến vân tay cải tiến giúp nhận diện và mở khóa nhanh hơn.', '[\"products\\\\May2021\\\\2V4D2qMwFAJPR56CvEdS.jpg\"]'),
(24, '4', 'iPad Air 3 10.5 inch 2019 64GB Wifi + 4G', 13200000, NULL, 20, 'còn hàng', '[\"products\\\\May2021\\\\z9nXMVE0Gjxe34ly7aY2.jpg\"]', '2021-05-31 06:49:51', '2021-05-31 06:49:51', 'iPad Air 10.5 và iPad mini 5 2019 bất ngờ ra mắt: Tích hợp chip A12 Bionic, hỗ trợ Apple Pencil, hỗ trợ eSIM  Về thiết kế:  iPad Air 10.5 inch và iPad mini 5 mới sở hữu thiết kế không quá khác biệt so với các dòng iPad trước đó. Cả 2 đều có 3 màu sắc là Bạc (Silver), Vàng (Gold) và Xám (Space Grey), Dung lượng 64GB và 256GB. Màn hình của iPad Air 2019 mới có kích thước 10.5 inch Retina, độ phân giải 2224×1668, hỗ trợ gam màu rộng DCI-P3 và công nghệ True tone.', '[\"products\\\\May2021\\\\sAjbfb2Io0J9DKOZo5kQ.jpg\"]', 'Tuy nhiên, nó không có tần số quét 120Hz (ProMotion) như những chiếc iPad Pro, Nhưng với độ phân giải lên đến 2224 x 1668 Pixel, cho mật độ điểm ảnh 264 ppi, dùng công nghệ mới vào màn hình với tên gọi ProMotion tiên tiến, hiện đại, hỗ trợ độ sáng hơn 600nits cho phép bạn xem ảnh, video và trò chơi một cách sống động, chân thực đến từng chi tiết, cực kỳ di động và hoàn hảo để hoàn thành mọi việc ở mọi nơi. Nó mỏng và nhẹ, có kết nối không dây tiên tiến, độ sáng cao và lớp phủ chống phản xạ cho bạn trải nghiệm xem tốt nhất.', '[\"products\\\\May2021\\\\iAq0DfwbQNAKyyp5GTXp.jpeg\"]', 'iPad Air 10.5 inch có camera sau 8MP f/2.4, không có đèn flash LED hay quay phim 4K như trên iPad Pro. Camera trước của máy được nâng lên 7MP, cho phép bạn chụp ảnh tuyệt đẹp và video HD 1080, nhưng sẽ không có Portrait Mode, Portrait Lightning hay Animoji.Pad Pro 10.5 Apple đã trang bị một hệ thống camera cực kì tối tân. Với camera sau, thông số chi tiết gồm độ phân giải 12MP, khẩu độ f/1.8, tích hợp công nghệ chống rung quan học, đèn flash 4 LED true Tone, zoom kỹ thuật số 5x và chụp hình Wide Coler, sẵn sàng mang đến những chất lượng ảnh tốt nhất, và ngoài ra thì camera sau của máy cũng có khả năng quay video với độ phân giải lên đến 4K. Về camera trước, máy sở hữu ống kính 7MP, và cộng với tần số quét màn lền đến 120Hz, iPad Pro 10.5 mang đến trải nghiệm tuyệt với nhất khi Selfie, video call, Facetime', '[\"products\\\\May2021\\\\TjdwM4qlEnZHC4fnGfmE.jpg\"]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_views`
--

CREATE TABLE `product_views` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_views`
--

INSERT INTO `product_views` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`, `number`) VALUES
(1, 11, 19, '2021-05-16 22:36:54', '2021-05-16 22:36:54', 4),
(2, 11, 13, '2021-05-16 22:37:00', '2021-05-16 22:37:00', 4),
(3, 11, 11, '2021-05-16 23:12:09', '2021-05-16 23:12:09', 1),
(4, 11, 14, '2021-05-16 23:16:58', '2021-05-16 23:16:58', 3),
(5, 11, 2, '2021-05-16 23:22:47', '2021-05-16 23:22:47', 1),
(6, 11, 4, '2021-05-16 23:38:33', '2021-05-16 23:38:33', 2),
(7, 13, 13, '2021-05-17 08:55:10', '2021-05-17 08:55:10', 19),
(8, 13, 15, '2021-05-17 08:55:25', '2021-05-17 08:55:25', 14),
(9, 13, 22, '2021-05-17 09:06:41', '2021-05-17 09:06:41', 1),
(10, 12, 22, '2021-05-20 05:20:05', '2021-05-20 05:20:05', 8),
(11, 12, 19, '2021-05-20 05:28:07', '2021-05-20 05:28:07', 5),
(12, 12, 18, '2021-05-20 05:28:14', '2021-05-20 05:28:14', 2),
(13, 12, 15, '2021-05-20 05:28:24', '2021-05-20 05:28:24', 4),
(14, 12, 3, '2021-05-20 19:47:41', '2021-05-20 19:47:41', 3),
(15, 3, 22, '2021-05-20 19:59:55', '2021-05-20 19:59:55', 1),
(16, 12, 20, '2021-05-20 20:45:10', '2021-05-20 20:45:10', 6),
(17, 11, 18, '2021-05-20 21:23:21', '2021-05-20 21:23:21', 1),
(18, 11, 23, '2021-05-20 21:23:27', '2021-05-20 21:23:27', 3),
(19, 11, 12, '2021-05-20 21:25:35', '2021-05-20 21:25:35', 1),
(20, 11, 20, '2021-05-20 21:25:44', '2021-05-20 21:25:44', 4),
(21, 3, 13, '2021-05-20 22:08:26', '2021-05-20 22:08:26', 1),
(22, 3, 19, '2021-05-20 23:55:35', '2021-05-20 23:55:35', 1),
(23, 3, 24, '2021-05-24 10:46:18', '2021-05-24 10:46:18', 1),
(24, 12, 9, '2021-05-26 02:51:54', '2021-05-26 02:51:54', 2),
(25, 14, 20, '2021-05-26 02:56:39', '2021-05-26 02:56:39', 2),
(26, 14, 19, '2021-05-26 02:56:48', '2021-05-26 02:56:48', 2),
(27, 12, 24, '2021-05-31 06:51:19', '2021-05-31 06:51:19', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating_stars`
--

CREATE TABLE `rating_stars` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `rating_star` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rating_stars`
--

INSERT INTO `rating_stars` (`id`, `user_id`, `product_id`, `rating_star`, `created_at`, `updated_at`) VALUES
(1, 13, 13, 4, '2021-05-17 09:44:37', '2021-05-17 09:44:37'),
(2, 12, 22, 5, '2021-05-20 05:20:23', '2021-05-20 05:20:23'),
(3, 11, 23, 5, '2021-05-26 02:50:09', '2021-05-26 02:50:09'),
(4, 11, 20, 5, '2021-05-26 02:50:20', '2021-05-26 02:50:20'),
(5, 12, 20, 5, '2021-05-26 02:51:29', '2021-05-26 02:51:29'),
(6, 12, 9, 5, '2021-05-26 02:51:57', '2021-05-26 02:51:57'),
(7, 14, 20, 5, '2021-05-26 02:56:42', '2021-05-26 02:56:42'),
(8, 14, 19, 5, '2021-05-26 02:56:51', '2021-05-26 02:56:51');

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
-- Cấu trúc bảng cho bảng `shipfrees`
--

CREATE TABLE `shipfrees` (
  `id_ship` int(10) UNSIGNED NOT NULL,
  `ma_tp` int(11) DEFAULT NULL,
  `ma_qh` int(11) DEFAULT NULL,
  `phi_ship` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shipfrees`
--

INSERT INTO `shipfrees` (`id_ship`, `ma_tp`, `ma_qh`, `phi_ship`, `created_at`, `updated_at`) VALUES
(1, 2, 52, 15000, '2021-05-20 18:56:36', '2021-05-20 18:56:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sttorders`
--

CREATE TABLE `sttorders` (
  `id` int(10) UNSIGNED NOT NULL,
  `namestt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sttorders`
--

INSERT INTO `sttorders` (`id`, `namestt`, `created_at`, `updated_at`) VALUES
(1, 'đơn hàng không hợp lệ', '2021-05-09 10:59:00', '2021-05-09 11:01:09'),
(2, 'đã giao', '2021-05-09 11:00:36', '2021-05-09 11:00:36'),
(3, 'đã nhận đơn', '2021-05-09 11:00:47', '2021-05-09 11:00:47'),
(4, 'đang giao hàng', '2021-05-10 05:58:14', '2021-05-10 05:58:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblquanhuyens`
--

CREATE TABLE `tblquanhuyens` (
  `id_quanhuyen` int(10) UNSIGNED NOT NULL,
  `name_quanhuyen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matp` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblquanhuyens`
--

INSERT INTO `tblquanhuyens` (`id_quanhuyen`, `name_quanhuyen`, `type`, `matp`, `created_at`, `updated_at`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Quận Hoàn Kiếm', 'Quận', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Quận Tây Hồ', 'Quận', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Quận Long Biên', 'Quận', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Quận Cầu Giấy', 'Quận', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Quận Đống Đa', 'Quận', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Quận Hai Bà Trưng', 'Quận', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Quận Hoàng Mai', 'Quận', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Quận Thanh Xuân', 'Quận', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Huyện Sóc Sơn', 'Huyện', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Huyện Đông Anh', 'Huyện', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Huyện Gia Lâm', 'Huyện', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Quận Nam Từ Liêm', 'Quận', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Huyện Thanh Trì', 'Huyện', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Thành phố Hà Giang', 'Thành phố', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Huyện Đồng Văn', 'Huyện', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Huyện Mèo Vạc', 'Huyện', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Huyện Yên Minh', 'Huyện', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Huyện Quản Bạ', 'Huyện', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Huyện Vị Xuyên', 'Huyện', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Huyện Bắc Mê', 'Huyện', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Huyện Xín Mần', 'Huyện', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Huyện Bắc Quang', 'Huyện', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Huyện Quang Bình', 'Huyện', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Huyện Bảo Lâm', 'Huyện', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Huyện Bảo Lạc', 'Huyện', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Huyện Thông Nông', 'Huyện', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Huyện Hà Quảng', 'Huyện', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Huyện Trùng Khánh', 'Huyện', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Huyện Hạ Lang', 'Huyện', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Huyện Quảng Uyên', 'Huyện', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Huyện Phục Hoà', 'Huyện', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Huyện Hoà An', 'Huyện', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Huyện Nguyên Bình', 'Huyện', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Huyện Thạch An', 'Huyện', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Huyện Pác Nặm', 'Huyện', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Huyện Ba Bể', 'Huyện', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Huyện Ngân Sơn', 'Huyện', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Huyện Bạch Thông', 'Huyện', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Huyện Chợ Đồn', 'Huyện', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Huyện Chợ Mới', 'Huyện', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Huyện Na Rì', 'Huyện', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Huyện Lâm Bình', 'Huyện', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Huyện Nà Hang', 'Huyện', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Huyện Hàm Yên', 'Huyện', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Huyện Yên Sơn', 'Huyện', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'Huyện Sơn Dương', 'Huyện', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Thành phố Lào Cai', 'Thành phố', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Huyện Bát Xát', 'Huyện', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Huyện Mường Khương', 'Huyện', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Huyện Si Ma Cai', 'Huyện', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Huyện Bắc Hà', 'Huyện', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Huyện Bảo Thắng', 'Huyện', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Huyện Bảo Yên', 'Huyện', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Huyện Sa Pa', 'Huyện', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Huyện Văn Bàn', 'Huyện', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Huyện Mường Nhé', 'Huyện', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Huyện Mường Chà', 'Huyện', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Huyện Tủa Chùa', 'Huyện', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Huyện Tuần Giáo', 'Huyện', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Huyện Điện Biên', 'Huyện', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Huyện Mường Ảng', 'Huyện', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Huyện Nậm Pồ', 'Huyện', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Thành phố Lai Châu', 'Thành phố', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Huyện Tam Đường', 'Huyện', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Huyện Mường Tè', 'Huyện', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Huyện Sìn Hồ', 'Huyện', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Huyện Phong Thổ', 'Huyện', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Huyện Than Uyên', 'Huyện', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Huyện Tân Uyên', 'Huyện', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Thành phố Sơn La', 'Thành phố', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Huyện Thuận Châu', 'Huyện', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Huyện Mường La', 'Huyện', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Huyện Bắc Yên', 'Huyện', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Huyện Phù Yên', 'Huyện', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Huyện Mộc Châu', 'Huyện', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Huyện Yên Châu', 'Huyện', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Huyện Mai Sơn', 'Huyện', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Huyện Sông Mã', 'Huyện', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Huyện Sốp Cộp', 'Huyện', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Huyện Vân Hồ', 'Huyện', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Thành phố Yên Bái', 'Thành phố', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Huyện Lục Yên', 'Huyện', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Huyện Văn Yên', 'Huyện', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Huyện Trấn Yên', 'Huyện', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Huyện Trạm Tấu', 'Huyện', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Huyện Văn Chấn', 'Huyện', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Huyện Yên Bình', 'Huyện', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Huyện Đà Bắc', 'Huyện', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Huyện Lương Sơn', 'Huyện', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Huyện Kim Bôi', 'Huyện', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Huyện Cao Phong', 'Huyện', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Huyện Tân Lạc', 'Huyện', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'Huyện Mai Châu', 'Huyện', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Huyện Lạc Sơn', 'Huyện', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'Huyện Yên Thủy', 'Huyện', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'Huyện Lạc Thủy', 'Huyện', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Thành phố Sông Công', 'Thành phố', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Huyện Định Hóa', 'Huyện', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Huyện Phú Lương', 'Huyện', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Huyện Võ Nhai', 'Huyện', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Huyện Đại Từ', 'Huyện', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Huyện Phú Bình', 'Huyện', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Huyện Tràng Định', 'Huyện', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Huyện Bình Gia', 'Huyện', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Huyện Văn Lãng', 'Huyện', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Huyện Cao Lộc', 'Huyện', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Huyện Văn Quan', 'Huyện', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Huyện Bắc Sơn', 'Huyện', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Huyện Hữu Lũng', 'Huyện', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Huyện Chi Lăng', 'Huyện', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Huyện Lộc Bình', 'Huyện', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'Huyện Đình Lập', 'Huyện', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'Thành phố Hạ Long', 'Thành phố', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Thành phố Móng Cái', 'Thành phố', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Thành phố Uông Bí', 'Thành phố', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Huyện Bình Liêu', 'Huyện', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'Huyện Tiên Yên', 'Huyện', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'Huyện Đầm Hà', 'Huyện', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'Huyện Hải Hà', 'Huyện', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'Huyện Ba Chẽ', 'Huyện', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'Huyện Vân Đồn', 'Huyện', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'Huyện Hoành Bồ', 'Huyện', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'Thị xã Đông Triều', 'Thị xã', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'Huyện Cô Tô', 'Huyện', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'Huyện Yên Thế', 'Huyện', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'Huyện Tân Yên', 'Huyện', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'Huyện Lạng Giang', 'Huyện', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'Huyện Lục Nam', 'Huyện', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'Huyện Lục Ngạn', 'Huyện', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'Huyện Sơn Động', 'Huyện', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'Huyện Yên Dũng', 'Huyện', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'Huyện Việt Yên', 'Huyện', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'Thành phố Việt Trì', 'Thành phố', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'Huyện Đoan Hùng', 'Huyện', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'Huyện Hạ Hoà', 'Huyện', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'Huyện Thanh Ba', 'Huyện', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'Huyện Phù Ninh', 'Huyện', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'Huyện Yên Lập', 'Huyện', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'Huyện Cẩm Khê', 'Huyện', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'Huyện Tam Nông', 'Huyện', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'Huyện Lâm Thao', 'Huyện', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'Huyện Thanh Sơn', 'Huyện', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'Huyện Tân Sơn', 'Huyện', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'Huyện Lập Thạch', 'Huyện', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 'Huyện Tam Dương', 'Huyện', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 'Huyện Tam Đảo', 'Huyện', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'Huyện Bình Xuyên', 'Huyện', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 'Huyện Mê Linh', 'Huyện', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 'Huyện Yên Lạc', 'Huyện', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 'Huyện Sông Lô', 'Huyện', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 'Huyện Yên Phong', 'Huyện', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 'Huyện Quế Võ', 'Huyện', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 'Huyện Tiên Du', 'Huyện', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 'Huyện Thuận Thành', 'Huyện', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 'Huyện Gia Bình', 'Huyện', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 'Huyện Lương Tài', 'Huyện', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 'Quận Hà Đông', 'Quận', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 'Huyện Ba Vì', 'Huyện', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 'Huyện Phúc Thọ', 'Huyện', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 'Huyện Đan Phượng', 'Huyện', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 'Huyện Hoài Đức', 'Huyện', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 'Huyện Quốc Oai', 'Huyện', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 'Huyện Thạch Thất', 'Huyện', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 'Huyện Chương Mỹ', 'Huyện', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 'Huyện Thanh Oai', 'Huyện', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 'Huyện Thường Tín', 'Huyện', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 'Huyện Phú Xuyên', 'Huyện', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 'Huyện Ứng Hòa', 'Huyện', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 'Huyện Mỹ Đức', 'Huyện', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 'Thành phố Hải Dương', 'Thành phố', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 'Thị xã Chí Linh', 'Thị xã', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 'Huyện Nam Sách', 'Huyện', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 'Huyện Kinh Môn', 'Huyện', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 'Huyện Kim Thành', 'Huyện', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 'Huyện Thanh Hà', 'Huyện', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 'Huyện Bình Giang', 'Huyện', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 'Huyện Gia Lộc', 'Huyện', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 'Huyện Ninh Giang', 'Huyện', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 'Huyện Thanh Miện', 'Huyện', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 'Quận Hồng Bàng', 'Quận', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 'Quận Ngô Quyền', 'Quận', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 'Quận Lê Chân', 'Quận', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 'Quận Hải An', 'Quận', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 'Quận Kiến An', 'Quận', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 'Quận Đồ Sơn', 'Quận', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 'Quận Dương Kinh', 'Quận', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 'Huyện An Dương', 'Huyện', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 'Huyện An Lão', 'Huyện', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 'Huyện Tiên Lãng', 'Huyện', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 'Huyện Cát Hải', 'Huyện', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 'Huyện Văn Lâm', 'Huyện', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 'Huyện Văn Giang', 'Huyện', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 'Huyện Yên Mỹ', 'Huyện', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 'Huyện Mỹ Hào', 'Huyện', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 'Huyện Ân Thi', 'Huyện', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 'Huyện Khoái Châu', 'Huyện', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 'Huyện Kim Động', 'Huyện', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 'Huyện Tiên Lữ', 'Huyện', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 'Huyện Phù Cừ', 'Huyện', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 'Thành phố Thái Bình', 'Thành phố', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 'Huyện Hưng Hà', 'Huyện', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 'Huyện Đông Hưng', 'Huyện', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 'Huyện Thái Thụy', 'Huyện', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 'Huyện Tiền Hải', 'Huyện', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 'Huyện Kiến Xương', 'Huyện', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 'Huyện Vũ Thư', 'Huyện', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 'Huyện Duy Tiên', 'Huyện', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 'Huyện Kim Bảng', 'Huyện', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 'Huyện Thanh Liêm', 'Huyện', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 'Huyện Bình Lục', 'Huyện', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 'Huyện Lý Nhân', 'Huyện', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 'Thành phố Nam Định', 'Thành phố', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 'Huyện Vụ Bản', 'Huyện', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 'Huyện Ý Yên', 'Huyện', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 'Huyện Nam Trực', 'Huyện', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 'Huyện Trực Ninh', 'Huyện', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 'Huyện Xuân Trường', 'Huyện', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 'Huyện Giao Thủy', 'Huyện', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 'Huyện Hải Hậu', 'Huyện', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 'Huyện Nho Quan', 'Huyện', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 'Huyện Gia Viễn', 'Huyện', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 'Huyện Hoa Lư', 'Huyện', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 'Huyện Yên Khánh', 'Huyện', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 'Huyện Kim Sơn', 'Huyện', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 'Huyện Yên Mô', 'Huyện', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 'Huyện Mường Lát', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 'Huyện Quan Hóa', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 'Huyện Bá Thước', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 'Huyện Quan Sơn', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 'Huyện Lang Chánh', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 'Huyện Thạch Thành', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 'Huyện Hà Trung', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 'Huyện Yên Định', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 'Huyện Thọ Xuân', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 'Huyện Thường Xuân', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 'Huyện Triệu Sơn', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 'Huyện Hậu Lộc', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 'Huyện Nga Sơn', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 'Huyện Như Xuân', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 'Huyện Như Thanh', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 'Huyện Nông Cống', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 'Huyện Đông Sơn', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 'Huyện Quảng Xương', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 'Thành phố Vinh', 'Thành phố', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 'Huyện Quế Phong', 'Huyện', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 'Huyện Quỳ Châu', 'Huyện', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 'Huyện Tương Dương', 'Huyện', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, 'Huyện Con Cuông', 'Huyện', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 'Huyện Tân Kỳ', 'Huyện', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, 'Huyện Anh Sơn', 'Huyện', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 'Huyện Diễn Châu', 'Huyện', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, 'Huyện Yên Thành', 'Huyện', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, 'Huyện Đô Lương', 'Huyện', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, 'Huyện Thanh Chương', 'Huyện', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, 'Huyện Nghi Lộc', 'Huyện', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 'Huyện Nam Đàn', 'Huyện', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, 'Huyện Hương Sơn', 'Huyện', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, 'Huyện Đức Thọ', 'Huyện', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, 'Huyện Vũ Quang', 'Huyện', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, 'Huyện Nghi Xuân', 'Huyện', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, 'Huyện Can Lộc', 'Huyện', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, 'Huyện Hương Khê', 'Huyện', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 'Huyện Thạch Hà', 'Huyện', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, 'Huyện Kỳ Anh', 'Huyện', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, 'Huyện Lộc Hà', 'Huyện', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, 'Huyện Minh Hóa', 'Huyện', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, 'Huyện Bố Trạch', 'Huyện', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, 'Huyện Quảng Ninh', 'Huyện', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, 'Huyện Lệ Thủy', 'Huyện', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, 'Thị xã Ba Đồn', 'Huyện', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, 'Thành phố Đông Hà', 'Thành phố', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(465, 'Huyện Hướng Hóa', 'Huyện', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(466, 'Huyện Gio Linh', 'Huyện', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(467, 'Huyện Đa Krông', 'Huyện', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(468, 'Huyện Cam Lộ', 'Huyện', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(469, 'Huyện Triệu Phong', 'Huyện', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(470, 'Huyện Hải Lăng', 'Huyện', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(474, 'Thành phố Huế', 'Thành phố', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(476, 'Huyện Phong Điền', 'Huyện', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(477, 'Huyện Quảng Điền', 'Huyện', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(478, 'Huyện Phú Vang', 'Huyện', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(480, 'Thị xã Hương Trà', 'Thị xã', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(481, 'Huyện A Lưới', 'Huyện', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(482, 'Huyện Phú Lộc', 'Huyện', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(483, 'Huyện Nam Đông', 'Huyện', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(490, 'Quận Liên Chiểu', 'Quận', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(491, 'Quận Thanh Khê', 'Quận', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(492, 'Quận Hải Châu', 'Quận', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(493, 'Quận Sơn Trà', 'Quận', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(495, 'Quận Cẩm Lệ', 'Quận', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(497, 'Huyện Hòa Vang', 'Huyện', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(498, 'Huyện Hoàng Sa', 'Huyện', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(503, 'Thành phố Hội An', 'Thành phố', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(504, 'Huyện Tây Giang', 'Huyện', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(505, 'Huyện Đông Giang', 'Huyện', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(506, 'Huyện Đại Lộc', 'Huyện', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(508, 'Huyện Duy Xuyên', 'Huyện', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(509, 'Huyện Quế Sơn', 'Huyện', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(510, 'Huyện Nam Giang', 'Huyện', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(511, 'Huyện Phước Sơn', 'Huyện', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(512, 'Huyện Hiệp Đức', 'Huyện', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(513, 'Huyện Thăng Bình', 'Huyện', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(514, 'Huyện Tiên Phước', 'Huyện', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(515, 'Huyện Bắc Trà My', 'Huyện', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(516, 'Huyện Nam Trà My', 'Huyện', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(517, 'Huyện Núi Thành', 'Huyện', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(518, 'Huyện Phú Ninh', 'Huyện', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(519, 'Huyện Nông Sơn', 'Huyện', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(524, 'Huyện Bình Sơn', 'Huyện', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(525, 'Huyện Trà Bồng', 'Huyện', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(526, 'Huyện Tây Trà', 'Huyện', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(529, 'Huyện Sơn Hà', 'Huyện', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(530, 'Huyện Sơn Tây', 'Huyện', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(531, 'Huyện Minh Long', 'Huyện', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(533, 'Huyện Mộ Đức', 'Huyện', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(534, 'Huyện Đức Phổ', 'Huyện', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(535, 'Huyện Ba Tơ', 'Huyện', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(536, 'Huyện Lý Sơn', 'Huyện', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(542, 'Huyện An Lão', 'Huyện', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(544, 'Huyện Hoài Ân', 'Huyện', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(545, 'Huyện Phù Mỹ', 'Huyện', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(547, 'Huyện Tây Sơn', 'Huyện', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(548, 'Huyện Phù Cát', 'Huyện', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(549, 'Thị xã An Nhơn', 'Thị xã', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(550, 'Huyện Tuy Phước', 'Huyện', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(551, 'Huyện Vân Canh', 'Huyện', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(558, 'Huyện Đồng Xuân', 'Huyện', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(559, 'Huyện Tuy An', 'Huyện', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(560, 'Huyện Sơn Hòa', 'Huyện', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(561, 'Huyện Sông Hinh', 'Huyện', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(562, 'Huyện Tây Hoà', 'Huyện', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(563, 'Huyện Phú Hoà', 'Huyện', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(564, 'Huyện Đông Hòa', 'Huyện', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(568, 'Thành phố Nha Trang', 'Thành phố', 56, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(570, 'Huyện Cam Lâm', 'Huyện', 56, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(571, 'Huyện Vạn Ninh', 'Huyện', 56, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(574, 'Huyện Diên Khánh', 'Huyện', 56, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(575, 'Huyện Khánh Sơn', 'Huyện', 56, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(576, 'Huyện Trường Sa', 'Huyện', 56, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(584, 'Huyện Bác Ái', 'Huyện', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(585, 'Huyện Ninh Sơn', 'Huyện', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(586, 'Huyện Ninh Hải', 'Huyện', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(587, 'Huyện Ninh Phước', 'Huyện', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(588, 'Huyện Thuận Bắc', 'Huyện', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(589, 'Huyện Thuận Nam', 'Huyện', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(594, 'Thị xã La Gi', 'Thị xã', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(595, 'Huyện Tuy Phong', 'Huyện', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(596, 'Huyện Bắc Bình', 'Huyện', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(599, 'Huyện Tánh Linh', 'Huyện', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(600, 'Huyện Đức Linh', 'Huyện', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(601, 'Huyện Hàm Tân', 'Huyện', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(602, 'Huyện Phú Quí', 'Huyện', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(608, 'Thành phố Kon Tum', 'Thành phố', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(610, 'Huyện Đắk Glei', 'Huyện', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(612, 'Huyện Đắk Tô', 'Huyện', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(613, 'Huyện Kon Plông', 'Huyện', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(614, 'Huyện Kon Rẫy', 'Huyện', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(615, 'Huyện Đắk Hà', 'Huyện', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(616, 'Huyện Sa Thầy', 'Huyện', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(622, 'Thành phố Pleiku', 'Thành phố', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(623, 'Thị xã An Khê', 'Thị xã', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(625, 'Huyện KBang', 'Huyện', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(626, 'Huyện Đăk Đoa', 'Huyện', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(627, 'Huyện Chư Păh', 'Huyện', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(628, 'Huyện Ia Grai', 'Huyện', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(629, 'Huyện Mang Yang', 'Huyện', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(630, 'Huyện Kông Chro', 'Huyện', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(631, 'Huyện Đức Cơ', 'Huyện', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(632, 'Huyện Chư Prông', 'Huyện', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(633, 'Huyện Chư Sê', 'Huyện', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(634, 'Huyện Đăk Pơ', 'Huyện', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(635, 'Huyện Ia Pa', 'Huyện', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(637, 'Huyện Krông Pa', 'Huyện', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(638, 'Huyện Phú Thiện', 'Huyện', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(639, 'Huyện Chư Pưh', 'Huyện', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(645, 'Huyện Ea H\'leo', 'Huyện', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(646, 'Huyện Ea Súp', 'Huyện', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(647, 'Huyện Buôn Đôn', 'Huyện', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(648, 'Huyện Cư M\'gar', 'Huyện', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(649, 'Huyện Krông Búk', 'Huyện', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(650, 'Huyện Krông Năng', 'Huyện', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(651, 'Huyện Ea Kar', 'Huyện', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(652, 'Huyện M\'Đrắk', 'Huyện', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(653, 'Huyện Krông Bông', 'Huyện', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(654, 'Huyện Krông Pắc', 'Huyện', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(655, 'Huyện Krông A Na', 'Huyện', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(656, 'Huyện Lắk', 'Huyện', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(657, 'Huyện Cư Kuin', 'Huyện', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(661, 'Huyện Đăk Glong', 'Huyện', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(662, 'Huyện Cư Jút', 'Huyện', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(663, 'Huyện Đắk Mil', 'Huyện', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(664, 'Huyện Krông Nô', 'Huyện', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(665, 'Huyện Đắk Song', 'Huyện', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(666, 'Huyện Đắk R\'Lấp', 'Huyện', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(667, 'Huyện Tuy Đức', 'Huyện', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(674, 'Huyện Đam Rông', 'Huyện', 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(675, 'Huyện Lạc Dương', 'Huyện', 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(676, 'Huyện Lâm Hà', 'Huyện', 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(677, 'Huyện Đơn Dương', 'Huyện', 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(678, 'Huyện Đức Trọng', 'Huyện', 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(679, 'Huyện Di Linh', 'Huyện', 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(680, 'Huyện Bảo Lâm', 'Huyện', 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(681, 'Huyện Đạ Huoai', 'Huyện', 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(683, 'Huyện Cát Tiên', 'Huyện', 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(688, 'Thị xã Phước Long', 'Thị xã', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(690, 'Thị xã Bình Long', 'Thị xã', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(692, 'Huyện Lộc Ninh', 'Huyện', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(693, 'Huyện Bù Đốp', 'Huyện', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(694, 'Huyện Hớn Quản', 'Huyện', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(695, 'Huyện Đồng Phú', 'Huyện', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(696, 'Huyện Bù Đăng', 'Huyện', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(697, 'Huyện Chơn Thành', 'Huyện', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(698, 'Huyện Phú Riềng', 'Huyện', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(705, 'Huyện Tân Biên', 'Huyện', 72, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(706, 'Huyện Tân Châu', 'Huyện', 72, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(708, 'Huyện Châu Thành', 'Huyện', 72, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(709, 'Huyện Hòa Thành', 'Huyện', 72, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(710, 'Huyện Gò Dầu', 'Huyện', 72, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(711, 'Huyện Bến Cầu', 'Huyện', 72, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(712, 'Huyện Trảng Bàng', 'Huyện', 72, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(719, 'Huyện Bàu Bàng', 'Huyện', 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(721, 'Thị xã Bến Cát', 'Thị xã', 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(722, 'Huyện Phú Giáo', 'Huyện', 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(724, 'Thị xã Dĩ An', 'Thị xã', 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(725, 'Thị xã Thuận An', 'Thị xã', 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(732, 'Thị xã Long Khánh', 'Thị xã', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(734, 'Huyện Tân Phú', 'Huyện', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(736, 'Huyện Định Quán', 'Huyện', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(737, 'Huyện Trảng Bom', 'Huyện', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(738, 'Huyện Thống Nhất', 'Huyện', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(740, 'Huyện Long Thành', 'Huyện', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(741, 'Huyện Xuân Lộc', 'Huyện', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(750, 'Huyện Châu Đức', 'Huyện', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(752, 'Huyện Long Điền', 'Huyện', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(753, 'Huyện Đất Đỏ', 'Huyện', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(754, 'Huyện Tân Thành', 'Huyện', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(755, 'Huyện Côn Đảo', 'Huyện', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(760, 'Quận 1', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(761, 'Quận 12', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(762, 'Quận Thủ Đức', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(763, 'Quận 9', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(764, 'Quận Gò Vấp', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(765, 'Quận Bình Thạnh', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(766, 'Quận Tân Bình', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(767, 'Quận Tân Phú', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(768, 'Quận Phú Nhuận', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(769, 'Quận 2', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(770, 'Quận 3', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(771, 'Quận 10', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(772, 'Quận 11', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(773, 'Quận 4', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(774, 'Quận 5', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(775, 'Quận 6', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(776, 'Quận 8', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(777, 'Quận Bình Tân', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(778, 'Quận 7', 'Quận', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(783, 'Huyện Củ Chi', 'Huyện', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(784, 'Huyện Hóc Môn', 'Huyện', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(785, 'Huyện Bình Chánh', 'Huyện', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(786, 'Huyện Nhà Bè', 'Huyện', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(787, 'Huyện Cần Giờ', 'Huyện', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(794, 'Thành phố Tân An', 'Thành phố', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(796, 'Huyện Tân Hưng', 'Huyện', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(798, 'Huyện Mộc Hóa', 'Huyện', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(799, 'Huyện Tân Thạnh', 'Huyện', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(801, 'Huyện Đức Huệ', 'Huyện', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(802, 'Huyện Đức Hòa', 'Huyện', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(803, 'Huyện Bến Lức', 'Huyện', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(804, 'Huyện Thủ Thừa', 'Huyện', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(805, 'Huyện Tân Trụ', 'Huyện', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(806, 'Huyện Cần Đước', 'Huyện', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(807, 'Huyện Cần Giuộc', 'Huyện', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(808, 'Huyện Châu Thành', 'Huyện', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(816, 'Thị xã Gò Công', 'Thị xã', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(817, 'Thị xã Cai Lậy', 'Huyện', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(818, 'Huyện Tân Phước', 'Huyện', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(819, 'Huyện Cái Bè', 'Huyện', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(820, 'Huyện Cai Lậy', 'Thị xã', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(821, 'Huyện Châu Thành', 'Huyện', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(822, 'Huyện Chợ Gạo', 'Huyện', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(823, 'Huyện Gò Công Tây', 'Huyện', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(824, 'Huyện Gò Công Đông', 'Huyện', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tblquanhuyens` (`id_quanhuyen`, `name_quanhuyen`, `type`, `matp`, `created_at`, `updated_at`) VALUES
(829, 'Thành phố Bến Tre', 'Thành phố', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(831, 'Huyện Châu Thành', 'Huyện', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(832, 'Huyện Chợ Lách', 'Huyện', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(834, 'Huyện Giồng Trôm', 'Huyện', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(835, 'Huyện Bình Đại', 'Huyện', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(836, 'Huyện Ba Tri', 'Huyện', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(837, 'Huyện Thạnh Phú', 'Huyện', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(844, 'Huyện Càng Long', 'Huyện', 84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(845, 'Huyện Cầu Kè', 'Huyện', 84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(846, 'Huyện Tiểu Cần', 'Huyện', 84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(847, 'Huyện Châu Thành', 'Huyện', 84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(848, 'Huyện Cầu Ngang', 'Huyện', 84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(849, 'Huyện Trà Cú', 'Huyện', 84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(850, 'Huyện Duyên Hải', 'Huyện', 84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(857, 'Huyện Long Hồ', 'Huyện', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(858, 'Huyện Mang Thít', 'Huyện', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(860, 'Huyện Tam Bình', 'Huyện', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(861, 'Thị xã Bình Minh', 'Thị xã', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(862, 'Huyện Trà Ôn', 'Huyện', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(863, 'Huyện Bình Tân', 'Huyện', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(869, 'Huyện Tân Hồng', 'Huyện', 87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(870, 'Huyện Hồng Ngự', 'Huyện', 87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(871, 'Huyện Tam Nông', 'Huyện', 87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(872, 'Huyện Tháp Mười', 'Huyện', 87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(873, 'Huyện Cao Lãnh', 'Huyện', 87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(874, 'Huyện Thanh Bình', 'Huyện', 87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(875, 'Huyện Lấp Vò', 'Huyện', 87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(876, 'Huyện Lai Vung', 'Huyện', 87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(877, 'Huyện Châu Thành', 'Huyện', 87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(886, 'Huyện An Phú', 'Huyện', 89, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(887, 'Thị xã Tân Châu', 'Thị xã', 89, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(888, 'Huyện Phú Tân', 'Huyện', 89, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(889, 'Huyện Châu Phú', 'Huyện', 89, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(890, 'Huyện Tịnh Biên', 'Huyện', 89, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(891, 'Huyện Tri Tôn', 'Huyện', 89, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(892, 'Huyện Châu Thành', 'Huyện', 89, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(893, 'Huyện Chợ Mới', 'Huyện', 89, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(894, 'Huyện Thoại Sơn', 'Huyện', 89, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(902, 'Huyện Kiên Lương', 'Huyện', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(903, 'Huyện Hòn Đất', 'Huyện', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(904, 'Huyện Tân Hiệp', 'Huyện', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(905, 'Huyện Châu Thành', 'Huyện', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(906, 'Huyện Giồng Riềng', 'Huyện', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(907, 'Huyện Gò Quao', 'Huyện', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(908, 'Huyện An Biên', 'Huyện', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(909, 'Huyện An Minh', 'Huyện', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(911, 'Huyện Phú Quốc', 'Huyện', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(912, 'Huyện Kiên Hải', 'Huyện', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(913, 'Huyện U Minh Thượng', 'Huyện', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(914, 'Huyện Giang Thành', 'Huyện', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(916, 'Quận Ninh Kiều', 'Quận', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(917, 'Quận Ô Môn', 'Quận', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(918, 'Quận Bình Thuỷ', 'Quận', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(919, 'Quận Cái Răng', 'Quận', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(923, 'Quận Thốt Nốt', 'Quận', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(926, 'Huyện Phong Điền', 'Huyện', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(927, 'Huyện Thới Lai', 'Huyện', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(932, 'Huyện Châu Thành A', 'Huyện', 93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(933, 'Huyện Châu Thành', 'Huyện', 93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(936, 'Huyện Long Mỹ', 'Huyện', 93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(942, 'Huyện Châu Thành', 'Huyện', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(943, 'Huyện Kế Sách', 'Huyện', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(944, 'Huyện Mỹ Tú', 'Huyện', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(946, 'Huyện Long Phú', 'Huyện', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(949, 'Huyện Thạnh Trị', 'Huyện', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(951, 'Huyện Trần Đề', 'Huyện', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(956, 'Huyện Hồng Dân', 'Huyện', 95, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(957, 'Huyện Phước Long', 'Huyện', 95, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(959, 'Thị xã Giá Rai', 'Thị xã', 95, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(960, 'Huyện Đông Hải', 'Huyện', 95, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(961, 'Huyện Hoà Bình', 'Huyện', 95, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(964, 'Thành phố Cà Mau', 'Thành phố', 96, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(966, 'Huyện U Minh', 'Huyện', 96, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(967, 'Huyện Thới Bình', 'Huyện', 96, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(969, 'Huyện Cái Nước', 'Huyện', 96, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(970, 'Huyện Đầm Dơi', 'Huyện', 96, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(971, 'Huyện Năm Căn', 'Huyện', 96, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(972, 'Huyện Phú Tân', 'Huyện', 96, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblthanhphos`
--

CREATE TABLE `tblthanhphos` (
  `id_thanhpho` int(10) UNSIGNED NOT NULL,
  `name_thanhpho` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblthanhphos`
--

INSERT INTO `tblthanhphos` (`id_thanhpho`, `name_thanhpho`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Tỉnh Hà Giang', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Tỉnh Lào Cai', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Tỉnh Điện Biên', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Tỉnh Lai Châu', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Tỉnh Sơn La', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Tỉnh Yên Bái', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Tỉnh Hải Dương', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Tỉnh Thái Bình', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Tỉnh Hà Nam', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Tỉnh Nam Định', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Tỉnh Nghệ An', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Tỉnh Bình Định', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Tỉnh Phú Yên', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Tỉnh Kon Tum', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Tỉnh Gia Lai', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Tỉnh Bình Phước', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Tỉnh Bình Dương', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Tỉnh Long An', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Tỉnh Bến Tre', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Tỉnh An Giang', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Tỉnh Cà Mau', 'Tỉnh', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(3, 1, 'gianggiang', 'admin@gmail.com', 'users\\May2021\\jQYpYb816VhTPd1E6XRd.jpg', NULL, '$2y$10$OWf5.IPVsyw70bY5e8V2qug6tBf5ClO2cpyAdNBYFpX/ObazkM2L6', NULL, '{\"locale\":\"en\"}', '2020-10-26 05:41:06', '2021-05-24 10:50:31', NULL, NULL),
(5, 2, 'abc', 'email@gmail.com', 'users/default.png', NULL, '$2y$10$BJC13BU7gG3HnvqhwQdE0unsVzGRhB.ihOrYAm5OWmtlhbkS9e2TC', NULL, NULL, '2020-11-05 06:29:56', '2020-11-05 06:29:56', 'Can Tho', '0967897546'),
(11, 2, 'phan phu thuan', 'thuan@gmail.com', 'z2450951208099_ba8c5c1c4f2a759685e51bf85409173c (1).jpg', NULL, '$2y$10$GbJ2ePJ1kUlOtibyWOS6fOxyCfFsb4rg8ZLY43IRgCtnAvqoDsIzC', NULL, '{\"locale\":\"en\"}', '2021-04-22 22:56:01', '2021-05-24 10:51:50', 'cần thơ', '0939337416'),
(12, 2, 'Nguyễn Hà Giang', 'giangb1710440@student.ctu.edu.vn', 'z2450950384762_b050a71e7fea0b22942543c2f5bbe959.jpg', NULL, '$2y$10$OxOhugMKwe9jyqYS9aUJr.SJn0i424dNAxy2de7iHlk.DxSxgXwUO', NULL, '{\"locale\":\"en\"}', '2021-05-07 12:56:00', '2021-05-31 06:50:57', 'Cần Thơ', '0939337416'),
(14, 2, 'Quách Thanh Phương', 'phuong@gmail.com', 'users/default.png', NULL, '$2y$10$J8JpN./w1wJyM4S2ckvIT.VI4lJ/nS6l55Wv9QmOExQI769CNwW22', NULL, NULL, '2021-05-26 02:56:00', '2021-05-26 02:56:00', 'Đại học cần thơ, 3/2, Ninh kiều, Cần Thơ', '0939337416');

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
-- Chỉ mục cho bảng `product_views`
--
ALTER TABLE `product_views`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rating_stars`
--
ALTER TABLE `rating_stars`
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
-- Chỉ mục cho bảng `shipfrees`
--
ALTER TABLE `shipfrees`
  ADD PRIMARY KEY (`id_ship`);

--
-- Chỉ mục cho bảng `sttorders`
--
ALTER TABLE `sttorders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblquanhuyens`
--
ALTER TABLE `tblquanhuyens`
  ADD PRIMARY KEY (`id_quanhuyen`);

--
-- Chỉ mục cho bảng `tblthanhphos`
--
ALTER TABLE `tblthanhphos`
  ADD PRIMARY KEY (`id_thanhpho`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT cho bảng `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `product_views`
--
ALTER TABLE `product_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `rating_stars`
--
ALTER TABLE `rating_stars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT cho bảng `shipfrees`
--
ALTER TABLE `shipfrees`
  MODIFY `id_ship` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sttorders`
--
ALTER TABLE `sttorders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tblquanhuyens`
--
ALTER TABLE `tblquanhuyens`
  MODIFY `id_quanhuyen` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=974;

--
-- AUTO_INCREMENT cho bảng `tblthanhphos`
--
ALTER TABLE `tblthanhphos`
  MODIFY `id_thanhpho` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
