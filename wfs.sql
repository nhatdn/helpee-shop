-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2023 at 08:26 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wfs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `last_login_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admins`
--

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banks`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `account_number` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `qrcode` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_accounts`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_account_infos`
--

CREATE TABLE `bank_account_infos` (
  `id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `qrcode` varchar(255) DEFAULT NULL,
  `is_lock` tinyint(1) DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_account_infos`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `createtor` int(11) DEFAULT NULL,
  `approver` int(11) DEFAULT NULL,
  `id_contract` int(11) NOT NULL,
  `payment` int(11) DEFAULT NULL,
  `topup` int(11) DEFAULT NULL,
  `status` enum('DRAFT','PENDING','ACCEPTED','REJECTED') NOT NULL DEFAULT 'PENDING',
  `url_docs` text DEFAULT NULL,
  `type` enum('PAYMENT','TOPUP') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bills`
--

-- --------------------------------------------------------

--
-- Table structure for table `bonds`
--

CREATE TABLE `bonds` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `owner_address` varchar(255) DEFAULT NULL,
  `owner_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `price` bigint(20) NOT NULL DEFAULT 0,
  `profit` float NOT NULL DEFAULT 0,
  `amount` float NOT NULL DEFAULT 0,
  `bond_value` bigint(20) NOT NULL DEFAULT 0,
  `remain` float NOT NULL DEFAULT 0,
  `locked` float NOT NULL DEFAULT 0,
  `hold` float NOT NULL DEFAULT 0,
  `import` float NOT NULL DEFAULT 0,
  `sold` float NOT NULL DEFAULT 0,
  `comeback` float NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `lock` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bonds`
--

-- --------------------------------------------------------

--
-- Table structure for table `bond_histories`
--

CREATE TABLE `bond_histories` (
  `id` int(11) NOT NULL,
  `bond_id` int(11) DEFAULT NULL,
  `investment_history_id` int(11) DEFAULT NULL,
  `amount` bigint(20) NOT NULL DEFAULT 0,
  `value` bigint(20) NOT NULL DEFAULT 0,
  `contract_code` text DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `date_at` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bond_histories`
--

-- --------------------------------------------------------

--
-- Table structure for table `bond_requests`
--

CREATE TABLE `bond_requests` (
  `id` int(11) NOT NULL,
  `bond_id` int(11) DEFAULT NULL,
  `amount` bigint(20) NOT NULL DEFAULT 0,
  `value` bigint(20) NOT NULL DEFAULT 0,
  `date_at` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `type` tinyint(4) DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bond_requests`
--

-- --------------------------------------------------------

--
-- Table structure for table `business_infos`
--

CREATE TABLE `business_infos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tax_code` varchar(255) NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `reference_position` varchar(255) DEFAULT NULL,
  `reference_license` varchar(255) DEFAULT NULL,
  `business_license` varchar(255) NOT NULL,
  `place_of_business_license` varchar(255) NOT NULL,
  `business_license_date` datetime NOT NULL,
  `joined_date` datetime NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `category` tinyint(4) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insurances`
--

CREATE TABLE `insurances` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `issue_place` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `fee_percent` float DEFAULT NULL,
  `fee` float DEFAULT NULL,
  `vat` float DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `limit_liability` bigint(20) DEFAULT NULL,
  `start_contract` date DEFAULT NULL,
  `end_contract` date DEFAULT NULL,
  `fee_percent_note` varchar(255) DEFAULT NULL,
  `fee_note` varchar(255) DEFAULT NULL,
  `total_fee` bigint(20) DEFAULT NULL,
  `jurisdiction` varchar(255) DEFAULT NULL,
  `remain` bigint(20) NOT NULL DEFAULT 0,
  `locked` bigint(20) NOT NULL DEFAULT 0,
  `hold` bigint(20) NOT NULL DEFAULT 0,
  `import` bigint(20) NOT NULL DEFAULT 0,
  `sold` bigint(20) NOT NULL DEFAULT 0,
  `comeback` bigint(20) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `insurances`
--

-- --------------------------------------------------------

--
-- Table structure for table `investments`
--

CREATE TABLE `investments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL,
  `products` varchar(255) DEFAULT NULL,
  `investment_times` varchar(255) DEFAULT NULL,
  `profit_times` varchar(255) DEFAULT NULL,
  `profit_percents` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `investments`
--

-- --------------------------------------------------------

--
-- Table structure for table `investment_bonds`
--

CREATE TABLE `investment_bonds` (
  `id` int(11) NOT NULL,
  `investment_history_id` int(11) DEFAULT NULL,
  `bond_id` int(11) DEFAULT NULL,
  `amount` bigint(20) NOT NULL DEFAULT 0,
  `bond_value` bigint(20) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investment_data`
--

CREATE TABLE `investment_data` (
  `id` int(11) NOT NULL,
  `investment_info_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `document_number` varchar(255) DEFAULT NULL,
  `estimate_profit` bigint(20) NOT NULL DEFAULT 0,
  `estimate_cashback` bigint(20) NOT NULL DEFAULT 0,
  `bank_account_info_id` int(11) DEFAULT NULL,
  `bank_account_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `amount` bigint(20) NOT NULL DEFAULT 0,
  `phone_number` varchar(255) DEFAULT NULL,
  `estate_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `profit_time` float NOT NULL DEFAULT 0,
  `profit_percent` float NOT NULL DEFAULT 0,
  `investment_time` float NOT NULL DEFAULT 0,
  `callback_percent` float DEFAULT 0,
  `create_at` date DEFAULT NULL,
  `start_at` date DEFAULT NULL,
  `end_at` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `status_bond` tinyint(4) NOT NULL DEFAULT 0,
  `type_c_invest` tinyint(4) NOT NULL DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `asset_code` varchar(255) DEFAULT NULL,
  `bond_amount` bigint(20) DEFAULT 0,
  `bond_value` bigint(20) DEFAULT 0,
  `real_estate_value` bigint(20) DEFAULT 0,
  `is_import` tinyint(1) DEFAULT 0,
  `is_decrement_asset` tinyint(1) DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `insurance` mediumtext NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investment_documents`
--

CREATE TABLE `investment_documents` (
  `id` int(11) NOT NULL,
  `investment_history_id` int(11) DEFAULT NULL,
  `bond_certificate` varchar(255) DEFAULT NULL,
  `bond_contract` varchar(255) DEFAULT NULL,
  `bond_index` varchar(255) DEFAULT NULL,
  `bond_insurance` varchar(255) DEFAULT NULL,
  `invest_certificate` varchar(255) DEFAULT NULL,
  `invest_contract` varchar(255) DEFAULT NULL,
  `invest_index` varchar(255) DEFAULT NULL,
  `invest_insurance` varchar(255) DEFAULT NULL,
  `mm_plus_certificate` varchar(255) DEFAULT NULL,
  `mm_plus_contract` varchar(255) DEFAULT NULL,
  `mm_plus_index` varchar(255) DEFAULT NULL,
  `mm_plus_insurance` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `bond_mortgage` varchar(255) DEFAULT NULL,
  `bond_payment_guarantee` varchar(255) DEFAULT NULL,
  `golf_contract` varchar(255) DEFAULT NULL,
  `golf_mortgage` varchar(255) DEFAULT NULL,
  `golf_payment_guarantee` varchar(255) DEFAULT NULL,
  `ipay_contract` varchar(255) DEFAULT NULL,
  `ipay_mortgage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `investment_documents`
--

-- --------------------------------------------------------

--
-- Table structure for table `investment_histories`
--

CREATE TABLE `investment_histories` (
  `id` int(11) NOT NULL,
  `investment_info_id` int(11) DEFAULT NULL,
  `investment_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `surrogate_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `bank_account_info_id` int(11) DEFAULT NULL,
  `bank_account_id` int(11) DEFAULT NULL,
  `surrogate_sup_id` int(11) DEFAULT NULL,
  `amount` bigint(20) NOT NULL DEFAULT 0,
  `estimate_profit` bigint(20) NOT NULL DEFAULT 0,
  `estimate_cashback` bigint(20) NOT NULL DEFAULT 0,
  `documents` varchar(255) DEFAULT NULL,
  `admin_documents` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `profit_time` float NOT NULL DEFAULT 0,
  `profit_percent` float NOT NULL DEFAULT 0,
  `investment_time` float NOT NULL DEFAULT 0,
  `callback_percent` float DEFAULT 0,
  `create_at` date DEFAULT NULL,
  `start_at` date DEFAULT NULL,
  `end_at` date DEFAULT NULL,
  `accept_at` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `status_bond` tinyint(4) NOT NULL DEFAULT 0,
  `type_contract` tinyint(4) NOT NULL DEFAULT 1,
  `accept` tinyint(4) NOT NULL DEFAULT 0,
  `vip_insurance` tinyint(4) NOT NULL DEFAULT 0,
  `create_by` tinyint(4) NOT NULL DEFAULT 0,
  `area` varchar(255) DEFAULT NULL,
  `id_sale` varchar(255) DEFAULT NULL,
  `bank_content` varchar(255) DEFAULT NULL,
  `type_investment` tinyint(4) NOT NULL DEFAULT 0,
  `type_c_invest` tinyint(4) NOT NULL DEFAULT 0,
  `insurance` tinyint(4) NOT NULL DEFAULT 2,
  `profit_plan` varchar(255) DEFAULT NULL,
  `investment_contract` varchar(255) DEFAULT NULL,
  `payment_proof` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `bond_id` int(11) DEFAULT NULL,
  `real_estate_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `investment_histories`
--

-- --------------------------------------------------------

--
-- Table structure for table `investment_infos`
--

CREATE TABLE `investment_infos` (
  `id` int(11) NOT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `document_number` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investment_real_estates`
--

CREATE TABLE `investment_real_estates` (
  `id` int(11) NOT NULL,
  `investment_history_id` int(11) DEFAULT NULL,
  `real_estate_id` int(11) DEFAULT NULL,
  `amount` bigint(20) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investors`
--

CREATE TABLE `investors` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `document_number` text NOT NULL,
  `change_times` text DEFAULT NULL,
  `last_change_date` date DEFAULT NULL,
  `place_of_issues` text NOT NULL,
  `surrogate_name` text DEFAULT NULL,
  `surrogate_position` text DEFAULT NULL,
  `reference` text DEFAULT NULL,
  `reference_date` date DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `bank_account_id` int(11) DEFAULT NULL,
  `bank_account_investor_id` int(11) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `create_by` tinyint(4) NOT NULL DEFAULT 0,
  `id_user_create` int(11) NOT NULL DEFAULT 0,
  `id_user_update` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `investors`
--

-- --------------------------------------------------------

--
-- Table structure for table `investor_bank_accounts`
--

CREATE TABLE `investor_bank_accounts` (
  `id` int(11) NOT NULL,
  `investor_id` int(11) DEFAULT NULL,
  `bank_id` int(11) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `qrcode` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `investor_bank_accounts`
--

-- --------------------------------------------------------

--
-- Table structure for table `invest_products`
--

CREATE TABLE `invest_products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `min_invest_amount` bigint(20) NOT NULL DEFAULT 0,
  `max_invest_amount` bigint(20) NOT NULL DEFAULT 0,
  `documents` varchar(255) DEFAULT NULL,
  `products` varchar(255) DEFAULT NULL,
  `investment_time` float NOT NULL DEFAULT 0,
  `profit_time` float NOT NULL DEFAULT 0,
  `profit_percent` float NOT NULL DEFAULT 0,
  `tax` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invest_projects`
--

CREATE TABLE `invest_projects` (
  `id` int(11) NOT NULL,
  `investor_id` int(11) NOT NULL,
  `invest_product_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `document_number` text NOT NULL,
  `date_of_issues` date NOT NULL,
  `place_of_issues` varchar(255) NOT NULL,
  `investment_limit` bigint(20) NOT NULL DEFAULT 0,
  `total_investment` bigint(20) NOT NULL DEFAULT 0,
  `create_by` tinyint(4) NOT NULL DEFAULT 0,
  `id_user_create` int(11) NOT NULL,
  `id_user_update` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `documents` varchar(255) DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invest_project_bank_accounts`
--

CREATE TABLE `invest_project_bank_accounts` (
  `id` int(11) NOT NULL,
  `invest_project_id` int(11) DEFAULT NULL,
  `bank_id` int(11) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `qrcode` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kycs`
--

CREATE TABLE `kycs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `matching` float NOT NULL,
  `handle_id` int(11) DEFAULT NULL,
  `country` varchar(255) DEFAULT 'Vietnam',
  `country_code` varchar(255) DEFAULT 'VN',
  `card_type` tinyint(4) NOT NULL,
  `document_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `place_of_issue` varchar(255) NOT NULL,
  `date_of_issue` date DEFAULT NULL,
  `date_of_expired` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` tinyint(4) NOT NULL,
  `front_identity_card` varchar(255) DEFAULT NULL,
  `behind_identity_card` varchar(255) DEFAULT NULL,
  `selfie` varchar(255) DEFAULT NULL,
  `is_notified` tinyint(4) NOT NULL DEFAULT 0,
  `is_by_app` tinyint(1) NOT NULL DEFAULT 0,
  `kyc_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kycs`
--

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `url` text NOT NULL,
  `method` text NOT NULL,
  `response` longtext NOT NULL,
  `is_success` text NOT NULL,
  `data` longtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

-- --------------------------------------------------------

--
-- Table structure for table `master_data`
--

CREATE TABLE `master_data` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_data`
--

INSERT INTO `master_data` (`id`, `key`, `value`, `description`, `created_at`, `updated_at`) VALUES
(1, 'UPDATE_PHONE_LIMIT', '3', NULL, '2023-10-25 09:24:10', '2023-10-25 09:24:10'),
(2, 'UPDATE_EMAIL_LIMIT', '3', NULL, '2023-10-25 09:24:10', '2023-10-25 09:24:10'),
(3, 'MATCHING_KYC_PERCENT', '80', NULL, '2023-10-25 09:24:10', '2023-10-25 09:24:10'),
(4, 'IS_IDSALE', '1', NULL, '2023-10-25 09:24:10', '2023-10-25 09:24:10'),
(5, 'POLICY', 'https://drive.google.com/file/d/17vsEsCJ6_2TCazssKUJcFrxoXWCF9KP2/view?usp=sharing', NULL, '2023-10-25 09:24:10', '2023-10-25 09:24:10'),
(6, 'C_MMPLUS', '[]', 'không rõ', '2023-10-25 09:24:10', '2023-10-30 06:42:33'),
(7, 'C_INVEST', '[]', 'không rõ', '2023-10-25 09:24:10', '2023-10-30 06:42:27'),
(8, 'DELETE_ACCOUNT', 'DELETE_ACCOUNT', NULL, '2023-10-25 09:24:10', '2023-10-25 09:24:10'),
(9, 'INTEREST_MONEY', '[]', 'không rõ', '2023-10-25 09:24:10', '2023-10-27 07:58:06'),
(10, 'HOLIDAYS', '[\'2023-01-01\',\'2023-01-02\',\'2023-01-03\']', 'Không rõ', '2023-10-25 09:24:10', '2023-10-30 07:06:18'),
(11, 'DAYS_OF_YEAR', '366', 'Unknown', '2023-10-30 13:51:31', '2023-11-01 09:55:22'),
(12, 'INVEST_GOLF', '{\"INVEST_GOLF_1\":[[6,[3],[9.5]],[7,[3],[9.5]],[8,[3],[10]],[9,[3],[10]],[10,[3],[10]],[11,[3],[10]],[12,[3],[12]]],\"INVEST_GOLF_2\":[[6,[3],[9.7]],[7,[3],[9.7]],[8,[3],[10.2]],[9,[3],[10.2]],[10,[3],[10.2]],[11,[3],[10.2]],[12,[3],[12.2]]],\"INVEST_GOLF_3\":[[6,[3],[9.8]],[7,[3],[9.8]],[8,[3],[10.3]],[9,[3],[10.3]],[10,[3],[10.3]],[11,[3],[10.3]],[12,[3],[12.3]]],\"INVEST_GOLF_4\":[[6,[3],[10]],[7,[3],[10]],[8,[3],[10.5]],[9,[3],[10.5]],[10,[3],[10.5]],[11,[3],[10.5]],[12,[3],[12.5]]]}', 'Unknown', '2023-10-30 13:51:31', '2023-10-30 07:03:26'),
(13, 'INVEST_FB', '{\"INVEST_FB_1\":[[6,[3],[9.5]],[7,[3],[9.5]],[8,[3],[10]],[9,[3],[10]],[10,[3],[10]],[11,[3],[10]],[12,[3],[12]]],\"INVEST_FB_2\":[[6,[3],[9.7]],[7,[3],[9.7]],[8,[3],[10.2]],[9,[3],[10.2]],[10,[3],[10.2]],[11,[3],[10.2]],[12,[3],[12.2]]],\"INVEST_FB_3\":[[6,[3],[9.8]],[7,[3],[9.8]],[8,[3],[10.3]],[9,[3],[10.3]],[10,[3],[10.3]],[11,[3],[10.3]],[12,[3],[12.3]]],\"INVEST_FB_4\":[[6,[3],[10]],[7,[3],[10]],[8,[3],[10.5]],[9,[3],[10.5]],[10,[3],[10.5]],[11,[3],[10.5]],[12,[3],[12.5]]]}', 'Unknown', '2023-10-30 13:51:31', '2023-10-30 07:04:07'),
(14, 'IPAY_INVEST', '{\"IPAY_INVEST_1\":[[6,[3],[9.5]],[7,[3],[9.5]],[8,[3],[10]],[9,[3],[10]],[10,[3],[10]],[11,[3],[10]],[12,[3],[12]]],\"IPAY_INVEST_2\":[[6,[3],[9.7]],[7,[3],[9.7]],[8,[3],[10.2]],[9,[3],[10.2]],[10,[3],[10.2]],[11,[3],[10.2]],[12,[3],[12.2]]],\"IPAY_INVEST_3\":[[6,[3],[9.8]],[7,[3],[9.8]],[8,[3],[10.3]],[9,[3],[10.3]],[10,[3],[10.3]],[11,[3],[10.3]],[12,[3],[12.3]]],\"IPAY_INVEST_4\":[[6,[3],[10]],[7,[3],[10]],[8,[3],[10.5]],[9,[3],[10.5]],[10,[3],[10.5]],[11,[3],[10.5]],[12,[3],[12.5]]]}', 'Unknown', '2023-10-30 13:51:31', '2023-10-30 07:04:26'),
(15, 'FUND_INVEST', '{\"FUND_INVEST\":[[1,[3],[10.5]],[2,[3],[10.5]],[3,[3],[10.5]],[4,[3],[10.5]],[5,[3],[12.5]],[6,[3],[10]],[7,[3],[10]],[8,[3],[10.5]],[9,[3],[10.5]],[10,[3],[10.5]],[11,[3],[10.5]],[12,[3],[12.5]]]}', 'Unknown', '2023-10-30 13:51:31', '2023-10-30 07:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `membership_time` varchar(255) NOT NULL,
  `membership_price` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `memberships`
--


-- --------------------------------------------------------

--
-- Table structure for table `membership_histories`
--

CREATE TABLE `membership_histories` (
  `id` int(11) NOT NULL,
  `membership_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `bank_account_info_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `create_at` date DEFAULT NULL,
  `start_at` date DEFAULT NULL,
  `end_at` date DEFAULT NULL,
  `accept_at` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `accept` tinyint(4) NOT NULL DEFAULT 0,
  `create_by` tinyint(4) NOT NULL DEFAULT 0,
  `bank_content` varchar(255) DEFAULT NULL,
  `payment_proof` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membership_histories`
--

-- --------------------------------------------------------

--
-- Table structure for table `real_estates`
--

CREATE TABLE `real_estates` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `owner_address` varchar(255) DEFAULT NULL,
  `owner_code` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `gcn` varchar(255) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `remain` float NOT NULL DEFAULT 0,
  `locked` float NOT NULL DEFAULT 0,
  `hold` float NOT NULL DEFAULT 0,
  `import` float NOT NULL DEFAULT 0,
  `sold` float NOT NULL DEFAULT 0,
  `comeback` float NOT NULL DEFAULT 0,
  `real_estate_value` bigint(20) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `bank_account_infos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `real_estates`
--

-- --------------------------------------------------------

--
-- Table structure for table `real_estate_histories`
--

CREATE TABLE `real_estate_histories` (
  `id` int(11) NOT NULL,
  `real_estate_id` int(11) DEFAULT NULL,
  `investment_history_id` int(11) DEFAULT NULL,
  `amount` bigint(20) NOT NULL DEFAULT 0,
  `contract_code` text DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `date_at` date NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `real_estate_requests`
--

CREATE TABLE `real_estate_requests` (
  `id` int(11) NOT NULL,
  `real_estate_id` int(11) DEFAULT NULL,
  `amount` bigint(20) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `date_at` date NOT NULL,
  `type` tinyint(4) DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_company` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `is_locked` tinyint(1) DEFAULT 0,
  `fullname` varchar(255) DEFAULT NULL,
  `default_page` varchar(255) DEFAULT NULL,
  `id_sale` varchar(255) NOT NULL,
  `sale_branch_id` int(11) DEFAULT NULL,
  `document_number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `last_login_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `sale_area_id` int(11) DEFAULT NULL,
  `sale_manager_id` int(11) DEFAULT NULL,
  `sale_zone_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `sale_areas`
--

CREATE TABLE `sale_areas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `id_manager` varchar(255) DEFAULT NULL,
  `name_manager` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_areas`
--

-- --------------------------------------------------------

--
-- Table structure for table `sale_branches`
--

CREATE TABLE `sale_branches` (
  `id` int(11) NOT NULL,
  `sale_zone_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `id_manager` varchar(255) DEFAULT NULL,
  `name_manager` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_branches`
--

-- --------------------------------------------------------

--
-- Table structure for table `sale_zones`
--

CREATE TABLE `sale_zones` (
  `id` int(11) NOT NULL,
  `sale_area_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `id_manager` varchar(255) DEFAULT NULL,
  `name_manager` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_zones`
--

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `surrogates`
--

CREATE TABLE `surrogates` (
  `id` int(11) NOT NULL,
  `area` text NOT NULL,
  `company_code` text NOT NULL,
  `address` text NOT NULL,
  `surrogate_name` text NOT NULL,
  `reference` text DEFAULT NULL,
  `reference_date` date DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `surrogates`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `referral_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `public_key` text DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone_code` varchar(255) DEFAULT NULL,
  `smart_otp_code` varchar(255) DEFAULT NULL,
  `active_smart_otp` tinyint(1) DEFAULT 0,
  `smart_otp_secret` varchar(255) DEFAULT NULL,
  `referral_code` varchar(19) DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `is_kyc` tinyint(4) NOT NULL DEFAULT 0,
  `is_registered_by_app` tinyint(1) NOT NULL DEFAULT 1,
  `is_registered_by_sale` tinyint(1) NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `business_license` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `proxy_number` varchar(50) DEFAULT NULL,
  `proxy_document` varchar(255) DEFAULT NULL,
  `account_number` varchar(50) DEFAULT NULL,
  `is_business` tinyint(1) DEFAULT 0,
  `tax_code` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_balances`
--

CREATE TABLE `user_balances` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total` bigint(20) DEFAULT 0,
  `total_c_bond` bigint(20) DEFAULT 0,
  `total_c_invest` bigint(20) DEFAULT 0,
  `total_c_mm_plus` bigint(20) DEFAULT 0,
  `total_c_bond_pro` bigint(20) DEFAULT 0,
  `total_c_bond_note` bigint(20) DEFAULT 0,
  `total_c_bond_99` bigint(20) DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_balances`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

CREATE TABLE `user_infos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(10) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `zalo` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `joined_date` datetime NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_infos`
--
-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `checked` tinyint(1) DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `en_title` varchar(255) DEFAULT NULL,
  `vi_title` varchar(255) DEFAULT NULL,
  `en_content` text DEFAULT NULL,
  `vi_content` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_notify_login` tinyint(1) NOT NULL DEFAULT 0,
  `is_send_on_chain` tinyint(1) NOT NULL DEFAULT 0,
  `is_tfa` tinyint(1) NOT NULL DEFAULT 0,
  `is_smart_otp` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_settings`
--

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_id` (`bank_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `bank_account_infos`
--
ALTER TABLE `bank_account_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_id` (`bank_id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_contract` (`id_contract`);

--
-- Indexes for table `bonds`
--
ALTER TABLE `bonds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bond_histories`
--
ALTER TABLE `bond_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `investment_history_id` (`investment_history_id`);

--
-- Indexes for table `bond_requests`
--
ALTER TABLE `bond_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bond_id` (`bond_id`);

--
-- Indexes for table `business_infos`
--
ALTER TABLE `business_infos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurances`
--
ALTER TABLE `insurances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investments`
--
ALTER TABLE `investments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investment_bonds`
--
ALTER TABLE `investment_bonds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `investment_history_id` (`investment_history_id`),
  ADD KEY `bond_id` (`bond_id`);

--
-- Indexes for table `investment_data`
--
ALTER TABLE `investment_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `investment_data_sale_id_foreign_idx` (`sale_id`),
  ADD KEY `investment_data_bank_account_id_foreign_idx` (`bank_account_id`),
  ADD KEY `investment_data_bank_account_info_id_foreign_idx` (`bank_account_info_id`),
  ADD KEY `investment_data_investment_info_id_foreign_idx` (`investment_info_id`);

--
-- Indexes for table `investment_documents`
--
ALTER TABLE `investment_documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `investment_history_id` (`investment_history_id`);

--
-- Indexes for table `investment_histories`
--
ALTER TABLE `investment_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `investment_histories_surrogate_sup_id_foreign_idx` (`surrogate_sup_id`),
  ADD KEY `investment_histories_bank_account_id_foreign_idx` (`bank_account_id`),
  ADD KEY `investment_histories_bank_account_info_id_foreign_idx` (`bank_account_info_id`),
  ADD KEY `investment_histories_investment_info_id_foreign_idx` (`investment_info_id`),
  ADD KEY `investment_histories_sale_id_foreign_idx` (`sale_id`),
  ADD KEY `investment_histories_surrogate_id_foreign_idx` (`surrogate_id`),
  ADD KEY `investment_histories_bond_id_foreign_idx` (`bond_id`),
  ADD KEY `investment_histories_real_estate_id_foreign_idx` (`real_estate_id`);

--
-- Indexes for table `investment_infos`
--
ALTER TABLE `investment_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_id` (`bank_id`);

--
-- Indexes for table `investment_real_estates`
--
ALTER TABLE `investment_real_estates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `investment_history_id` (`investment_history_id`),
  ADD KEY `real_estate_id` (`real_estate_id`);

--
-- Indexes for table `investors`
--
ALTER TABLE `investors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `investors_bank_account_id_foreign_idx` (`bank_account_id`),
  ADD KEY `investors_bank_account_investor_id_foreign_idx` (`bank_account_investor_id`);

--
-- Indexes for table `investor_bank_accounts`
--
ALTER TABLE `investor_bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `investor_id` (`investor_id`),
  ADD KEY `bank_id` (`bank_id`);

--
-- Indexes for table `invest_products`
--
ALTER TABLE `invest_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invest_projects`
--
ALTER TABLE `invest_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `investor_id` (`investor_id`),
  ADD KEY `invest_product_id` (`invest_product_id`);

--
-- Indexes for table `invest_project_bank_accounts`
--
ALTER TABLE `invest_project_bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invest_project_id` (`invest_project_id`),
  ADD KEY `bank_id` (`bank_id`);

--
-- Indexes for table `kycs`
--
ALTER TABLE `kycs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `logs_sale_id_foreign_idx` (`sale_id`);

--
-- Indexes for table `master_data`
--
ALTER TABLE `master_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_histories`
--
ALTER TABLE `membership_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membership_id` (`membership_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `bank_account_info_id` (`bank_account_info_id`);

--
-- Indexes for table `real_estates`
--
ALTER TABLE `real_estates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_id` (`bank_id`);

--
-- Indexes for table `real_estate_histories`
--
ALTER TABLE `real_estate_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `real_estate_id` (`real_estate_id`),
  ADD KEY `investment_history_id` (`investment_history_id`);

--
-- Indexes for table `real_estate_requests`
--
ALTER TABLE `real_estate_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `real_estate_id` (`real_estate_id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_sale_branch_id_foreign_idx` (`sale_branch_id`),
  ADD KEY `fk_sale_area` (`sale_area_id`),
  ADD KEY `fk_sale_zones` (`sale_zone_id`);

--
-- Indexes for table `sale_areas`
--
ALTER TABLE `sale_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_branches`
--
ALTER TABLE `sale_branches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_zone_id` (`sale_zone_id`);

--
-- Indexes for table `sale_zones`
--
ALTER TABLE `sale_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_area_id` (`sale_area_id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `surrogates`
--
ALTER TABLE `surrogates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_number` (`phone_number`),
  ADD KEY `referral_id` (`referral_id`),
  ADD KEY `users_sale_id_foreign_idx` (`sale_id`),
  ADD KEY `users_admin_id_foreign_idx` (`admin_id`);

--
-- Indexes for table `user_balances`
--
ALTER TABLE `user_balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bank_account_infos`
--
ALTER TABLE `bank_account_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bonds`
--
ALTER TABLE `bonds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bond_histories`
--
ALTER TABLE `bond_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bond_requests`
--
ALTER TABLE `bond_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_infos`
--
ALTER TABLE `business_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insurances`
--
ALTER TABLE `insurances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `investments`
--
ALTER TABLE `investments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `investment_bonds`
--
ALTER TABLE `investment_bonds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investment_data`
--
ALTER TABLE `investment_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investment_documents`
--
ALTER TABLE `investment_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `investment_histories`
--
ALTER TABLE `investment_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `investment_infos`
--
ALTER TABLE `investment_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investment_real_estates`
--
ALTER TABLE `investment_real_estates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investors`
--
ALTER TABLE `investors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `investor_bank_accounts`
--
ALTER TABLE `investor_bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invest_products`
--
ALTER TABLE `invest_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invest_projects`
--
ALTER TABLE `invest_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invest_project_bank_accounts`
--
ALTER TABLE `invest_project_bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kycs`
--
ALTER TABLE `kycs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `master_data`
--
ALTER TABLE `master_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `membership_histories`
--
ALTER TABLE `membership_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `real_estates`
--
ALTER TABLE `real_estates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `real_estate_histories`
--
ALTER TABLE `real_estate_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `real_estate_requests`
--
ALTER TABLE `real_estate_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sale_areas`
--
ALTER TABLE `sale_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sale_branches`
--
ALTER TABLE `sale_branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sale_zones`
--
ALTER TABLE `sale_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `surrogates`
--
ALTER TABLE `surrogates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_balances`
--
ALTER TABLE `user_balances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_settings`
--
ALTER TABLE `user_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD CONSTRAINT `bank_accounts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bank_accounts_ibfk_2` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`),
  ADD CONSTRAINT `bank_accounts_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bank_accounts_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `bank_account_infos`
--
ALTER TABLE `bank_account_infos`
  ADD CONSTRAINT `bank_account_infos_ibfk_1` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`);

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`id_contract`) REFERENCES `investment_histories` (`id`);

--
-- Constraints for table `bond_histories`
--
ALTER TABLE `bond_histories`
  ADD CONSTRAINT `bond_histories_ibfk_1` FOREIGN KEY (`bond_id`) REFERENCES `bonds` (`id`),
  ADD CONSTRAINT `bond_histories_ibfk_2` FOREIGN KEY (`investment_history_id`) REFERENCES `investment_histories` (`id`);

--
-- Constraints for table `bond_requests`
--
ALTER TABLE `bond_requests`
  ADD CONSTRAINT `bond_requests_ibfk_1` FOREIGN KEY (`bond_id`) REFERENCES `bonds` (`id`);

--
-- Constraints for table `business_infos`
--
ALTER TABLE `business_infos`
  ADD CONSTRAINT `business_infos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `investment_bonds`
--
ALTER TABLE `investment_bonds`
  ADD CONSTRAINT `investment_bonds_ibfk_1` FOREIGN KEY (`investment_history_id`) REFERENCES `investment_histories` (`id`),
  ADD CONSTRAINT `investment_bonds_ibfk_2` FOREIGN KEY (`bond_id`) REFERENCES `bonds` (`id`);

--
-- Constraints for table `investment_data`
--
ALTER TABLE `investment_data`
  ADD CONSTRAINT `investment_data_bank_account_id_foreign_idx` FOREIGN KEY (`bank_account_id`) REFERENCES `bank_accounts` (`id`),
  ADD CONSTRAINT `investment_data_bank_account_info_id_foreign_idx` FOREIGN KEY (`bank_account_info_id`) REFERENCES `bank_account_infos` (`id`),
  ADD CONSTRAINT `investment_data_investment_info_id_foreign_idx` FOREIGN KEY (`investment_info_id`) REFERENCES `investment_infos` (`id`),
  ADD CONSTRAINT `investment_data_sale_id_foreign_idx` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`);

--
-- Constraints for table `investment_documents`
--
ALTER TABLE `investment_documents`
  ADD CONSTRAINT `investment_documents_ibfk_1` FOREIGN KEY (`investment_history_id`) REFERENCES `investment_histories` (`id`);

--
-- Constraints for table `investment_histories`
--
ALTER TABLE `investment_histories`
  ADD CONSTRAINT `investment_histories_bank_account_id_foreign_idx` FOREIGN KEY (`bank_account_id`) REFERENCES `bank_accounts` (`id`),
  ADD CONSTRAINT `investment_histories_bank_account_info_id_foreign_idx` FOREIGN KEY (`bank_account_info_id`) REFERENCES `bank_account_infos` (`id`),
  ADD CONSTRAINT `investment_histories_bond_id_foreign_idx` FOREIGN KEY (`bond_id`) REFERENCES `bonds` (`id`),
  ADD CONSTRAINT `investment_histories_investment_info_id_foreign_idx` FOREIGN KEY (`investment_info_id`) REFERENCES `investment_infos` (`id`),
  ADD CONSTRAINT `investment_histories_real_estate_id_foreign_idx` FOREIGN KEY (`real_estate_id`) REFERENCES `real_estates` (`id`),
  ADD CONSTRAINT `investment_histories_sale_id_foreign_idx` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `investment_histories_surrogate_id_foreign_idx` FOREIGN KEY (`surrogate_id`) REFERENCES `surrogates` (`id`),
  ADD CONSTRAINT `investment_histories_surrogate_sup_id_foreign_idx` FOREIGN KEY (`surrogate_sup_id`) REFERENCES `surrogates` (`id`);

--
-- Constraints for table `investment_infos`
--
ALTER TABLE `investment_infos`
  ADD CONSTRAINT `investment_infos_ibfk_1` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`);

--
-- Constraints for table `investment_real_estates`
--
ALTER TABLE `investment_real_estates`
  ADD CONSTRAINT `investment_real_estates_ibfk_1` FOREIGN KEY (`investment_history_id`) REFERENCES `investment_histories` (`id`),
  ADD CONSTRAINT `investment_real_estates_ibfk_2` FOREIGN KEY (`real_estate_id`) REFERENCES `real_estates` (`id`);

--
-- Constraints for table `investors`
--
ALTER TABLE `investors`
  ADD CONSTRAINT `investors_bank_account_id_foreign_idx` FOREIGN KEY (`bank_account_id`) REFERENCES `bank_accounts` (`id`),
  ADD CONSTRAINT `investors_bank_account_investor_id_foreign_idx` FOREIGN KEY (`bank_account_investor_id`) REFERENCES `bank_accounts` (`id`);

--
-- Constraints for table `investor_bank_accounts`
--
ALTER TABLE `investor_bank_accounts`
  ADD CONSTRAINT `investor_bank_accounts_ibfk_1` FOREIGN KEY (`investor_id`) REFERENCES `investors` (`id`),
  ADD CONSTRAINT `investor_bank_accounts_ibfk_2` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`);

--
-- Constraints for table `invest_projects`
--
ALTER TABLE `invest_projects`
  ADD CONSTRAINT `invest_projects_ibfk_1` FOREIGN KEY (`investor_id`) REFERENCES `investors` (`id`),
  ADD CONSTRAINT `invest_projects_ibfk_2` FOREIGN KEY (`invest_product_id`) REFERENCES `invest_products` (`id`);

--
-- Constraints for table `invest_project_bank_accounts`
--
ALTER TABLE `invest_project_bank_accounts`
  ADD CONSTRAINT `invest_project_bank_accounts_ibfk_1` FOREIGN KEY (`invest_project_id`) REFERENCES `invest_projects` (`id`),
  ADD CONSTRAINT `invest_project_bank_accounts_ibfk_2` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`);

--
-- Constraints for table `kycs`
--
ALTER TABLE `kycs`
  ADD CONSTRAINT `kycs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `logs_sale_id_foreign_idx` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`);

--
-- Constraints for table `membership_histories`
--
ALTER TABLE `membership_histories`
  ADD CONSTRAINT `membership_histories_ibfk_1` FOREIGN KEY (`membership_id`) REFERENCES `memberships` (`id`),
  ADD CONSTRAINT `membership_histories_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `membership_histories_ibfk_3` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `membership_histories_ibfk_4` FOREIGN KEY (`bank_account_info_id`) REFERENCES `bank_account_infos` (`id`);

--
-- Constraints for table `real_estates`
--
ALTER TABLE `real_estates`
  ADD CONSTRAINT `real_estates_ibfk_1` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`);

--
-- Constraints for table `real_estate_histories`
--
ALTER TABLE `real_estate_histories`
  ADD CONSTRAINT `real_estate_histories_ibfk_1` FOREIGN KEY (`real_estate_id`) REFERENCES `real_estates` (`id`),
  ADD CONSTRAINT `real_estate_histories_ibfk_2` FOREIGN KEY (`investment_history_id`) REFERENCES `investment_histories` (`id`);

--
-- Constraints for table `real_estate_requests`
--
ALTER TABLE `real_estate_requests`
  ADD CONSTRAINT `real_estate_requests_ibfk_1` FOREIGN KEY (`real_estate_id`) REFERENCES `real_estates` (`id`);

--
-- Constraints for table `referrals`
--
ALTER TABLE `referrals`
  ADD CONSTRAINT `referrals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `referrals_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `fk_sale_area` FOREIGN KEY (`sale_area_id`) REFERENCES `sale_areas` (`id`),
  ADD CONSTRAINT `fk_sale_zones` FOREIGN KEY (`sale_zone_id`) REFERENCES `sale_zones` (`id`),
  ADD CONSTRAINT `sales_sale_branch_id_foreign_idx` FOREIGN KEY (`sale_branch_id`) REFERENCES `sale_branches` (`id`);

--
-- Constraints for table `sale_branches`
--
ALTER TABLE `sale_branches`
  ADD CONSTRAINT `sale_branches_ibfk_1` FOREIGN KEY (`sale_zone_id`) REFERENCES `sale_zones` (`id`);

--
-- Constraints for table `sale_zones`
--
ALTER TABLE `sale_zones`
  ADD CONSTRAINT `sale_zones_ibfk_1` FOREIGN KEY (`sale_area_id`) REFERENCES `sale_areas` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_admin_id_foreign_idx` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`referral_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_sale_id_foreign_idx` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`);

--
-- Constraints for table `user_balances`
--
ALTER TABLE `user_balances`
  ADD CONSTRAINT `user_balances_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD CONSTRAINT `user_infos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD CONSTRAINT `user_notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD CONSTRAINT `user_settings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
