-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2015 at 12:32 AM
-- Server version: 5.6.17-log
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bepc`
--

-- --------------------------------------------------------

--
-- Table structure for table `barcode`
--

CREATE TABLE IF NOT EXISTS `barcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `barcodekey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageurl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `barcode_product_id_unique` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE IF NOT EXISTS `ingredient` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recipe_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ingredient_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`id`, `recipe_id`, `name`, `description`, `item_id`, `quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, '18', 'Pet bottle for ', '', '1', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(5, '18', 'Pail for ', '', '2', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(6, '18', 'Raw Egg for ', '', '3', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(7, '19', 'Pet bottle for Recipe for Pasteurized Luqied whole egg', '', '1', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(8, '19', 'Raw Egg for Recipe for Pasteurized Luqied whole egg', '', '3', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventorylog`
--

CREATE TABLE IF NOT EXISTS `inventorylog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `proccess` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fired_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `param` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `inventorylog`
--

INSERT INTO `inventorylog` (`id`, `proccess`, `action`, `user_id`, `user_name`, `message`, `fired_at`, `field`, `param`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '', 'add', '2015100432147', 'John Kevin De Jesus Peralta', 'EloquentItemRepository:John Kevin De Jesus Peralta proccesed induct doing add changing Quantity value to 500', '', 'Quantity', '500', '2015-10-03 03:08:45', '2015-10-03 03:08:45', NULL),
(2, 'induct', 'add', '2015100432147', 'John Kevin De Jesus Peralta', 'EloquentItemRepository:John Kevin De Jesus Peralta proccesed induct doing add changing Quantity value to 50', 'EloquentItemRepository', 'Quantity', '50', '2015-10-03 03:36:17', '2015-10-03 03:36:17', NULL),
(3, 'induct', 'deposit', '2015100432147', 'John Kevin De Jesus Peralta', 'EIR:John Kevin De Jesus Peralta proccesed induct doing deposit changing Quantity value to 100', 'EIR', 'Quantity', '100', '2015-10-03 03:37:56', '2015-10-03 03:37:56', NULL),
(4, 'induct', 'deposit', '2015100432147', 'John Kevin De Jesus Peralta', 'EIR:John Kevin De Jesus Peralta proccesed induct doing deposit changing Quantity value to 4950', 'EIR', 'Quantity', '4950', '2015-10-03 03:38:51', '2015-10-03 03:38:51', NULL),
(5, 'induct', 'withdraw', '2015100432147', 'John Kevin De Jesus Peralta', 'EIR:John Kevin De Jesus Peralta proccesed induct doing withdraw changing Quantity value to 10000', 'EIR', 'Quantity', '10000', '2015-10-03 03:39:14', '2015-10-03 03:39:14', NULL),
(6, 'induct', 'deposit', '2015100432147', 'John Kevin De Jesus Peralta', 'EIR:John Kevin De Jesus Peralta proccesed induct doing deposit changing Quantity value to 10', 'EIR', 'Quantity', '10', '2015-10-03 03:39:34', '2015-10-03 03:39:34', NULL),
(7, 'induct', 'withdraw', '2015100432147', 'John Kevin De Jesus Peralta', 'EIR:John Kevin De Jesus Peralta proccesed induct doing withdraw changing Quantity value to 10', 'EIR', 'Quantity', '10', '2015-10-03 03:39:56', '2015-10-03 03:39:56', NULL),
(8, 'induct', 'deposit', '2015100432147', 'John Kevin De Jesus Peralta', 'EIR:John Kevin De Jesus Peralta proccesed induct doing deposit changing Quantity value to 1', 'EIR', 'Quantity', '1', '2015-10-03 03:40:10', '2015-10-03 03:40:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(8) NOT NULL,
  `alert_quantity` int(11) NOT NULL DEFAULT '10',
  `safe_quantity` int(11) NOT NULL DEFAULT '10',
  `imageurl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `supplier_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `itemgroup_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `description`, `quantity`, `alert_quantity`, `safe_quantity`, `imageurl`, `supplier_id`, `created_at`, `updated_at`, `deleted_at`, `itemgroup_id`) VALUES
(1, 'Pet bottle', '', 1, 10, 10, '', '', '0000-00-00 00:00:00', '2015-10-03 03:40:10', NULL, 1),
(2, 'Pail', '', 500, 10, 10, '', '', '0000-00-00 00:00:00', '2015-10-03 01:49:02', NULL, 1),
(3, 'Raw Egg', '', 0, 10, 10, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3),
(4, 'test', '', 1, 10, 10, '', '', '2015-10-01 07:56:18', '2015-10-01 07:56:18', NULL, 1),
(5, 'Chemical Agents', '', 9, 10, 10, '', '', '2015-10-02 22:30:02', '2015-10-02 22:30:02', NULL, 0),
(6, 'Chemical Agents', '', 9, 10, 10, '', '', '2015-10-02 22:30:04', '2015-10-02 22:30:04', NULL, 0),
(7, 'Chemical Agents', '', 9, 10, 10, '', '', '2015-10-02 22:30:14', '2015-10-02 22:30:14', NULL, 0),
(8, 'Chemical Agents', '', 9, 10, 10, '', '', '2015-10-02 22:39:09', '2015-10-02 22:39:09', NULL, 0),
(9, 'Chemical Agents', '', 9, 10, 10, '', '', '2015-10-02 22:48:10', '2015-10-02 22:48:10', NULL, 0),
(10, 'Chemical Agents', '', 9, 10, 10, '', '', '2015-10-03 01:09:11', '2015-10-03 01:09:11', NULL, 0),
(11, 'Chemical Agents', '', 9, 10, 10, '', '', '2015-10-03 01:09:16', '2015-10-03 01:09:16', NULL, 0),
(12, 'Chemical Agents', '', 9, 10, 10, '', '', '2015-10-03 01:09:18', '2015-10-03 01:09:18', NULL, 0),
(13, '1', '', 9, 10, 10, '', '', '2015-10-03 01:15:09', '2015-10-03 01:15:09', NULL, 0),
(14, '1', '', 9, 10, 10, '', '', '2015-10-03 01:15:10', '2015-10-03 01:15:10', NULL, 0),
(15, '1', '', 9, 10, 10, '', '', '2015-10-03 01:15:11', '2015-10-03 01:15:11', NULL, 0),
(16, '1', '', 9, 10, 10, '', '', '2015-10-03 01:20:35', '2015-10-03 01:20:35', NULL, 0),
(17, '1', '', 9, 10, 10, '', '', '2015-10-03 01:21:10', '2015-10-03 01:21:10', NULL, 0),
(18, '1', '', 9, 10, 10, '', '', '2015-10-03 01:21:36', '2015-10-03 01:21:36', NULL, 0),
(19, '1', '', 9, 10, 10, '', '', '2015-10-03 01:24:01', '2015-10-03 01:24:01', NULL, 0),
(20, '1', '', 9, 10, 10, '', '', '2015-10-03 01:27:31', '2015-10-03 01:27:31', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `itemgroup`
--

CREATE TABLE IF NOT EXISTS `itemgroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `formula` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `itemgroup`
--

INSERT INTO `itemgroup` (`id`, `name`, `description`, `formula`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Chemical Agents', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(2, 'Packaging Materials', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(3, 'Raw Materials', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_100000_create_password_resets_table', 1),
('2015_09_19_115018_create_settings_table', 1),
('2015_09_19_115027_create_barcode_table', 1),
('2015_09_19_153943_create_product_table', 1),
('2015_09_19_153952_create_ingredient_table', 1),
('2015_09_19_154242_create_recipe_table', 1),
('2015_09_20_134610_create_item_table', 1),
('2015_09_23_114622_create_order_table', 1),
('2015_09_23_114631_create_orderdetails_table', 1),
('2015_09_27_094343_create_user_table', 1),
('2015_09_27_094533_create_usergroup_table', 1),
('2015_09_29_133337_create_user_barcode', 1),
('2015_09_29_133347_create_user_id_card', 1),
('2015_10_01_153728_create_item_group_table', 2),
('2015_10_03_101808_create_inventorylog_table', 3),
('2015_10_04_093542_create_user_photo_table', 4),
('2015_10_04_093805_create_user_privilege_table', 4),
('2015_10_04_093947_create_privilege_table', 4),
('2015_10_05_200752_create_querylog_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deliverydate` date NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creator_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `deliverydate`, `description`, `status`, `customer_id`, `creator_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('ORDER-2015-09-25Br4', '2015-09-29', 'Auto Generated Order', 'created', '1', '1', '2015-09-23 10:58:32', '2015-09-29 10:58:32', NULL),
('ORDER-2015-09-29Br4', '2015-09-29', 'Auto Generated Order', 'created', '1', '1', '2015-09-29 10:58:32', '2015-09-29 10:58:32', NULL),
('ORDER-2015-09-30tEf', '2015-09-30', 'Auto Generated Order', 'created', '1', '1', '2015-09-25 10:14:11', '2015-09-30 10:14:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE IF NOT EXISTS `orderdetail` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `order_id`, `product_id`, `product_quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
('ORDET-2015-09-29dzTsc', 'ORDER-2015-09-29Br4', '2', 100, '2015-09-29 10:58:32', '2015-09-29 10:58:32', NULL),
('ORDET-2015-09-29dzTsx', 'ORDER-2015-09-29Br4', '3', 100, '2015-09-24 10:58:32', '2015-09-29 10:58:32', NULL),
('ORDET-2015-09-29x5qRk', 'ORDER-2015-09-29Br4', '1', 100, '2015-09-29 10:58:32', '2015-09-29 10:58:32', NULL),
('ORDET-2015-09-30dOFPb', 'ORDER-2015-09-30tEy', '1', 10, '2015-09-30 10:14:11', '2015-09-30 10:14:11', NULL),
('ORDET-2015-09-30RkJXR', 'ORDER-2015-09-30tEy', '1', 10, '2015-09-30 10:14:11', '2015-09-30 10:14:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privilege`
--

CREATE TABLE IF NOT EXISTS `privilege` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `control` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `privilege`
--

INSERT INTO `privilege` (`id`, `name`, `action`, `created_at`, `updated_at`, `deleted_at`, `control`) VALUES
(1, 'backup', 'download', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5),
(2, 'backup', 'create', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5),
(3, 'view', 'view', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1),
(4, 'edit', 'edit', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2),
(5, 'delete', 'delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 4),
(6, 'log', 'log', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `alert_quantity` int(11) NOT NULL DEFAULT '10',
  `imageurl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `barcode_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_barcode_id_unique` (`barcode_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `alert_quantity`, `imageurl`, `barcode_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pasteurized Liquid Egg White', '0.00', 10, 'img-product/Mn3G7k02feLAkhvw.jpg', NULL, '2015-09-29 10:57:09', '2015-09-29 10:57:09', NULL),
(2, 'Pasteurized Liquid Whole Egg', '0.00', 10, 'img-product/f5Egsq1KWL0bzkWP.jpg', NULL, '2015-09-29 10:57:28', '2015-09-29 10:57:28', NULL),
(3, 'Pasteurized Liquid Egg Yolk', '0.00', 10, 'img-product/052KFQvW0sR5Fu9w.jpg', NULL, '2015-09-29 10:57:57', '2015-09-29 10:57:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `querylog`
--

CREATE TABLE IF NOT EXISTS `querylog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sql` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE IF NOT EXISTS `recipe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `recipe_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`id`, `name`, `product_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(18, 'Recipe for egg white', '1', '2015-09-30 09:56:48', '2015-09-30 09:56:48', NULL),
(19, 'Recipe for Pasteurized Luqied whole egg', '2', '2015-09-30 10:13:43', '2015-09-30 10:13:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting_keyname_unique` (`keyname`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `keyname`, `value`, `created_at`, `updated_at`) VALUES
(1, 'useridcardwidth', '336', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'useridcardheight', '220', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'theme', 'violet', '0000-00-00 00:00:00', '2015-10-05 13:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middlename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `usergroup_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `barcode_id` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `middlename`, `email`, `password`, `usergroup_id`, `barcode_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
('2015100436107', 'Registration', 'Registration', 'Registration', 'Registration', 'Registration@gmail.com', '$2y$10$wuS6oDJTl85IBlLl8X49GuRWwLt76RMglGS3air50A6JQKVbMtVSS', '1', '3', NULL, '2015-10-04 10:34:36', '2015-10-04 10:34:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userbarcode`
--

CREATE TABLE IF NOT EXISTS `userbarcode` (
  `id` int(13) NOT NULL AUTO_INCREMENT,
  `barcodekey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userbarcode_user_id_unique` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `userbarcode`
--

INSERT INTO `userbarcode` (`id`, `barcodekey`, `user_id`, `filename`, `path`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, '2015100436107', '2015100436107', '2015100436107.png', 'P:\\LaravelApps\\barcode\\laravel\\public\\img-id/', 'created', '2015-10-04 10:34:36', '2015-10-04 10:34:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usergroup`
--

CREATE TABLE IF NOT EXISTS `usergroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `control` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `usergroup`
--

INSERT INTO `usergroup` (`id`, `name`, `description`, `control`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'All', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(2, 'Employee', 'View', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `useridcard`
--

CREATE TABLE IF NOT EXISTS `useridcard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `useridcard_user_id_unique` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `useridcard`
--

INSERT INTO `useridcard` (`id`, `user_id`, `path`, `filename`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2015100436107', 'P:\\LaravelApps\\barcode\\laravel\\public\\img-idcard/', 'Registration2015100436107.png', 'created', '2015-10-05 13:00:34', '2015-10-05 13:00:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userphoto`
--

CREATE TABLE IF NOT EXISTS `userphoto` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `userphoto`
--

INSERT INTO `userphoto` (`id`, `path`, `filename`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('XgiJNBgQHtIy0zUp', 'P:\\LaravelApps\\barcode\\laravel\\public\\img-photo//', 'XgiJNBgQHtIy0zUp.JPG', '2015100436107', '2015-10-05 11:54:27', '2015-10-05 11:54:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userprivilege`
--

CREATE TABLE IF NOT EXISTS `userprivilege` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `privilege_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;