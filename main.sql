-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 20, 2014 at 10:17 AM
-- Server version: 5.5.38-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=52 ;

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
(14, 'view_routes', 'View Routes', ''),
(15, 'view_customers', 'View Customers', ''),
(16, 'view_banks', 'View Banks', ''),
(17, 'edit_item', 'Edit Item', ''),
(18, 'edit_bank', 'Edit Bank', ''),
(19, 'edit_customer', 'Edit Customer', ''),
(20, 'view_users', 'View Users', ''),
(21, 'add_user', 'Add User', ''),
(22, 'edit_user', 'Edit User', ''),
(23, 'edit_vendor', 'Edit Vendor', ''),
(24, 'edit_route', 'Edit Route', ''),
(25, 'edit_purchase', 'Edit Purchase', ''),
(26, 'view_transfers', 'View Transfers', ''),
(27, 'add_transfer', 'Add Transfers', ''),
(28, 'edit_transfer', 'Edit Transfers', ''),
(29, 'view_stocks', 'View Stocks', ''),
(30, 'edit_stock', 'Edit Stock', ''),
(31, 'view_sales', 'View Sales', ''),
(32, 'add_sale', 'Add Sale', ''),
(33, 'edit_sale', 'Edit Sale', ''),
(34, 'add_finance_account', 'Add Finance account', ''),
(35, 'view_finance_accounts', 'View Finance accounts', ''),
(36, 'edit_finance_account', 'Edit finance account', ''),
(37, 'add_finance_transfer', 'Add Finance transfer', ''),
(38, 'view_finance_transfers_details', 'View finance transfers details', ''),
(39, 'edit_finance_transfer_details', 'Edit finance transfer details', ''),
(40, 'edit_system_settings', 'Edit System Settings', ''),
(41, 'manage_files', 'Manage Files', ''),
(42, 'view_stock_report', 'view_stock_report', ''),
(43, 'view_credit_summery_report', 'View Credit Summery', ''),
(44, 'view_sales_summary_report', 'View Sales Summary Report', ' '),
(45, 'view_debtor_summary_report', 'View Debtor Summary Report', ''),
(46, 'view_unload_comparison_report', 'View unload comparison report', ''),
(47, 'view_age_credit_report', 'View Age Credit Report', ''),
(48, 'view_bank_account_report', 'View Bank account report', ''),
(49, 'order_items', 'Order Items', 'Order items for selling invoice'),
(50, 'view_profit_and_loss_report', 'Profit and Loss Report', 'Profit and Loss Report'),
(51, 'view_incoming_cheques_report', 'Incoming Cheques Report', '');

-- --------------------------------------------------------

--
-- Table structure for table `stock_types`
--

CREATE TABLE IF NOT EXISTS `stock_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `stock_types`
--

INSERT INTO `stock_types` (`id`, `name`, `label`, `description`) VALUES
(1, 'normal', 'Normal', ''),
(2, 'can_accept_returns', 'Can accept returns', '');

-- --------------------------------------------------------

--
-- Table structure for table `system_settables`
--

CREATE TABLE IF NOT EXISTS `system_settables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `system_settables`
--

INSERT INTO `system_settables` (`id`, `name`, `label`, `description`) VALUES
(1, 'payment_source_cash', 'Cash Payment Source', ''),
(2, 'payment_source_cheque', 'Cheque Payment Source', ''),
(3, 'time_zone', 'Time Zone', ''),
(4, 'payment_target_cash', 'Cash Payment Target', ''),
(5, 'payment_target_cheque', 'Cheque Payment Target', ''),
(6, 'imbalance_stock', 'Imbalance Stock', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
