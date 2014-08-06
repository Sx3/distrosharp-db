-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2014 at 08:10 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `d-071-1-v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE IF NOT EXISTS `abilities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`id`, `name`, `label`, `description`) VALUES
(1, 'do_it', 'Do it', 'This allows user to do it.'),
(2, 'do_that', 'Do that', 'This allows user to do that.'),
(3, 'view_items', 'View Items', ''),
(4, 'add_item', 'Add Item', ''),
(5, 'view_vendors', 'View Vendors', ''),
(6, 'add_vendor', 'Add Vendor', ''),
(7, 'view_new_routes', 'View New Routes', ''),
(8, 'view_old_routes', 'View Old Routes', ''),
(9, 'add_route', 'Add Route', ''),
(10, 'view_purchases', 'View Purchases', ''),
(11, 'add_purchase', 'Add Purchase', ''),
(12, 'add_customer', 'Add Customer', ''),
(13, 'add_bank', 'Add Bank', ''),
(14, 'view_route', 'View Route', ''),
(15, 'view_customers', 'View Customers', '');

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
('2014_06_10_091322_setup_dbs', 1),
('2014_06_12_050746_create_tenant_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE IF NOT EXISTS `organizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `code`, `name`, `is_active`) VALUES
(1, 'PTG_001', 'Rehansa', 1),
(2, 'PTG_002', 'Vijitha', 1),
(3, 'PTG_003', 'Suranga', 1);

-- --------------------------------------------------------

--
-- Table structure for table `organization_user`
--

CREATE TABLE IF NOT EXISTS `organization_user` (
  `organization_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `ability_ids` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`organization_id`,`user_id`),
  KEY `organization_user_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organization_user`
--

INSERT INTO `organization_user` (`organization_id`, `user_id`, `ability_ids`) VALUES
(1, 1, '[1,2]'),
(2, 2, '[2,6]');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_sysadmin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `name`, `is_sysadmin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sandun', 'sandun@thesanmark.com', '$2y$10$.2p4yiu1quLqgcZvS3nQb.HubfBegwn.UBV5D874LKj2Tk8xJVIkm', 'Sandun Dhanushka', 0, NULL, '2014-07-27 23:12:39', '2014-07-27 23:12:39'),
(2, 'supun', 'supun@thesanmark.com', '$2y$10$ukFuPX8SxcGUkrMFEr3nJe0iCEQrAksKfPU3pUSlRH4r1u.WddqCK', 'Supun Budhajeewa', 0, NULL, '2014-07-27 23:12:39', '2014-07-27 23:12:39');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `organization_user`
--
ALTER TABLE `organization_user`
  ADD CONSTRAINT `organization_user_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `organization_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
