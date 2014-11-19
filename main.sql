-- phpMyAdmin SQL Dump
-- version 4.2.6deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 19, 2014 at 12:49 PM
-- Server version: 5.5.40-0ubuntu1
-- PHP Version: 5.5.12-2ubuntu4.1

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
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=60 ;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`id`, `name`, `label`, `description`) VALUES
(3, 'view_items', 'Entities,Items,View', ''),
(4, 'add_item', 'Entities,Items,Add', ''),
(5, 'view_vendors', 'Entities,Vendors,View', ''),
(6, 'add_vendor', 'Entities,Vendors,Add', ''),
(9, 'add_route', 'Entities,Routes,Add', ''),
(10, 'view_purchases', 'Processes,Purchases,View', ''),
(11, 'add_purchase', 'Processes,Purchases,Add', ''),
(12, 'add_customer', 'Entities,Customers,Add', ''),
(13, 'add_bank', 'Entities,Banks,Add', ''),
(14, 'view_routes', 'Entities,Routes,View', ''),
(15, 'view_customers', 'Entities,Customers,View', ''),
(16, 'view_banks', 'Entities,Banks,View', ''),
(17, 'edit_item', 'Entities,Items,Edit', ''),
(18, 'edit_bank', 'Entities,Banks,Edit', ''),
(19, 'edit_customer', 'Entities,Customers,Edit', ''),
(23, 'edit_vendor', 'Entities,Vendors,Edit', ''),
(24, 'edit_route', 'Entities,Routes,Edit', ''),
(25, 'edit_purchase', 'Processes,Purchases,Edit', ''),
(26, 'view_transfers', 'Processes,Transfers,View', '??'),
(27, 'add_transfer', 'Processes,Transfers,Add', ''),
(29, 'view_stocks', 'Stocks,View', ''),
(30, 'edit_stock', 'Stocks,Edit', ''),
(31, 'view_sales', 'Processes,Sales,View', ''),
(32, 'add_sale', 'Processes,Sales,Add', ''),
(33, 'edit_sale', 'Processes,Sales,Edit', ''),
(41, 'manage_files', 'Manage Files', ''),
(42, 'view_stock_report', 'Reports,View Stock Report', ''),
(43, 'view_credit_summery_report', 'Reports,View Credit Summary Report', ''),
(44, 'view_sales_summary_report', 'Reports,View Sales Summary Report', ' '),
(45, 'view_debtor_summary_report', 'Reports,View Debtor Summary Report', ''),
(46, 'view_unload_comparison_report', 'Reports,View Unload Comparison Report', ''),
(47, 'view_age_credit_report', 'Reports,View Age Credit Report', ''),
(49, 'order_items', 'Entities,Items,Order', 'Order items for selling invoice'),
(50, 'view_profit_and_loss_report', 'Reports,View Profit and Loss Report', 'Profit and Loss Report'),
(51, 'view_incoming_cheques_report', 'Reports,View Incoming Cheques Report', ''),
(52, 'view_item_sales_summary_report', 'Reports,View Item Sales Summary Report', ''),
(53, 'view_item_sales_details_report', 'Reports,View Item Sales Details Report ', ''),
(54, 'view_rep_finance_report', 'Reports,View Rep Finance Report', ''),
(55, 'view_item_return_report', 'Reports,View Item Return Report', ''),
(56, 'view_timely_stock_report', 'Reports,View Timely Stock Report', ''),
(57, 'confirm_stock', 'Stocks,Confirm', ''),
(58, 'change_user_permissions', 'System,User Permissions,Change', ''),
(59, 'view_activity_log', 'System,Activity Log,View', '');

-- --------------------------------------------------------

--
-- Table structure for table `stock_types`
--

CREATE TABLE IF NOT EXISTS `stock_types` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `stock_types`
--

INSERT INTO `stock_types` (`id`, `name`, `label`, `description`) VALUES
(1, 'normal', 'Normal', ''),
(2, 'vehicle', 'Vehicle', '');

-- --------------------------------------------------------

--
-- Table structure for table `system_settables`
--

CREATE TABLE IF NOT EXISTS `system_settables` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `system_settables`
--

INSERT INTO `system_settables` (`id`, `name`, `label`, `description`) VALUES
(1, 'payment_source_cash', 'Cash Payment Source', ''),
(2, 'payment_source_cheque', 'Cheque Payment Source', ''),
(3, 'time_zone', 'Time Zone', ''),
(4, 'payment_target_cash', 'Cash Payment Target', ''),
(5, 'payment_target_cheque', 'Cheque Payment Target', ''),
(6, 'imbalance_stock', 'Imbalance Stock', ''),
(7, 'income_account', 'Income Account', ''),
(8, 'expense_account', 'Epense Account', ''),
(9, 'main_stock', 'main_stock', ''),
(10, 'organization_name', 'Organization Name', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `first_name`, `last_name`, `remember_token`, `created_at`, `updated_at`) VALUES
(999, 'sanmark', 'budhajeewa@thesanmark.com', '$2y$10$GsLTgJSY9u0p0vembfN2Y.IrpvRlIeXjH9PswmlTJL41KiWvMdV2K', 'Firstname', 'Lastname', 'P3BqQnVipDAs8wuwFPFSBAMpDG6SWU7DRj2VpznacbNDdynPZmSwVFbl2T3S', '2014-10-28 06:42:30', '2014-11-03 04:27:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_types`
--
ALTER TABLE `stock_types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settables`
--
ALTER TABLE `system_settables`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `stock_types`
--
ALTER TABLE `stock_types`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `system_settables`
--
ALTER TABLE `system_settables`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
