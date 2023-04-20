-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 11:15 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bwccrm`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `agentdeallist`
-- (See below for the actual view)
--
CREATE TABLE `agentdeallist` (
`client_officenumber` varchar(250)
,`client_alternateofficenumber` varchar(250)
,`user_name` varchar(250)
,`manager_name` varchar(250)
,`order_id` int(11)
,`order_deadlinedate` date
,`order_token` text
,`status_id` int(11)
,`created_at` datetime
,`created_by` int(11)
,`order_managerpickby` int(11)
,`client_id` int(11)
,`campaign_id` int(11)
,`order_designname` text
,`client_companyname` varchar(250)
,`client_contactperson` varchar(250)
,`client_email` varchar(250)
,`orderstatus_id` int(11)
,`orderstatus_name` varchar(250)
,`campaigntype_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `aleenaclient`
-- (See below for the actual view)
--
CREATE TABLE `aleenaclient` (
`client_id` int(11)
,`client_companyname` varchar(250)
,`client_contactperson` varchar(250)
,`client_address` text
,`client_officenumber` varchar(250)
,`client_alternateofficenumber` varchar(250)
,`client_twitterid` text
,`client_facebookid` text
,`client_instagramid` text
,`client_state` varchar(250)
,`client_city` varchar(250)
,`location_id` int(11)
,`client_timezone` varchar(250)
,`client_email` varchar(250)
,`client_alternateemail` varchar(250)
,`client_website` varchar(250)
,`client_companyindustry` varchar(250)
,`client_designation` varchar(250)
,`client_companydecription` text
,`client_zipcode` varchar(250)
,`client_totalrevenue` decimal(10,0)
,`client_islock` int(11)
,`client_lockcomment` text
,`campaign_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `attachment_id` int(11) NOT NULL,
  `attachment_name` text DEFAULT NULL,
  `attachment_type` varchar(250) NOT NULL DEFAULT 'client',
  `order_attachmenttoken` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updared_at` datetime DEFAULT NULL,
  `clientedit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `billingcancil`
-- (See below for the actual view)
--
CREATE TABLE `billingcancil` (
`SUM(``order_amountquoted``)` decimal(32,0)
,`client_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `billinggross`
-- (See below for the actual view)
--
CREATE TABLE `billinggross` (
`SUM(``order_amountquoted``)` decimal(32,0)
,`client_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `billingmerchant`
--

CREATE TABLE `billingmerchant` (
  `billingmerchant_id` int(11) NOT NULL,
  `billingmerchant_logo` varchar(255) DEFAULT NULL,
  `billingmerchant_title` varchar(255) DEFAULT NULL,
  `billingmerchant_email` varchar(255) DEFAULT NULL,
  `billingmerchant_website` varchar(255) DEFAULT NULL,
  `billingmerchant_openingbalance` double DEFAULT NULL,
  `billingmerchant_fee` double DEFAULT NULL,
  `billingmerchant_otherinfo` text DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `billingpaid`
-- (See below for the actual view)
--
CREATE TABLE `billingpaid` (
`SUM(``order_amountquoted``)` decimal(32,0)
,`client_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `billingunpaid`
-- (See below for the actual view)
--
CREATE TABLE `billingunpaid` (
`SUM(``order_amountquoted``)` decimal(32,0)
,`client_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `campaign_id` int(11) NOT NULL,
  `campaign_banner` text DEFAULT NULL,
  `campaign_logo` text DEFAULT NULL,
  `campaign_website` varchar(250) DEFAULT NULL,
  `campaign_campaignname` varchar(250) DEFAULT NULL,
  `campaign_email` varchar(250) DEFAULT NULL,
  `campaign_paymentduedate` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `campaign_campaignfor` text DEFAULT NULL,
  `campaign_aboutus` text DEFAULT NULL,
  `campaigntype_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campaign`
--

INSERT INTO `campaign` (`campaign_id`, `campaign_banner`, `campaign_logo`, `campaign_website`, `campaign_campaignname`, `campaign_email`, `campaign_paymentduedate`, `currency_id`, `location_id`, `campaign_campaignfor`, `campaign_aboutus`, `campaigntype_id`, `status_id`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(0, '2021-01-05_40.285714285714_campaignbanner_.jpeg', '2021-01-05_61.857142857143_logo_.jpeg', 'https://www.bizzworldcommunications.com/', 'Admin', 'admin@gmail.com', NULL, 1, 2, 'Bizz World', '-', 0, 1, 1, '2021-01-05 03:24:13', NULL, NULL),
(1, '2021-10-04_80.285714285714_banner_.jpeg', '2021-10-04_23.142857142857_logo_.png', 'https://maxdigitizing.com/', 'MAX DIGITIZING', 'eykhairi@gmail.com', 9, 1, 2, 'Digitizing', '-', 1, 1, 1, '2021-01-05 03:24:13', 27, '2021-10-04 03:55:49'),
(2, '2021-09-17_26.428571428571_campaignbanner_.jpeg', '2021-09-17_111.71428571429_logo_.png', 'https://avidhaus.com/', 'DE', 'info@de.com', NULL, 1, 1, 'DE', 'DE', 2, 2, 2, '2021-09-17 09:08:20', NULL, NULL),
(3, '2021-09-08_117.71428571429_campaignbanner_.jpeg', '2021-09-08_141.57142857143_logo_.png', 'https://avidhaus.com/', 'DME', 'info@avidhaus.com', NULL, 1, 1, 'Durable Medical Equipment', 'Durable Medical Equipment', 3, 2, 2, '2021-09-08 01:07:20', NULL, NULL),
(4, '2022-01-17_113.71428571429_campaignbanner_.jpeg', '2022-01-17_63_logo_.jpeg', 'http://maxdigitizing.com/', 'CPA', 'cpa@cpa.com', NULL, 1, 1, '-', '-', 4, 2, 2, '2022-01-17 04:14:57', NULL, NULL),
(5, '2022-01-17_113.71428571429_campaignbanner_.jpeg', '2022-01-17_63_logo_.jpeg', 'http://maxdigitizing.com/', 'DE-Non Qualify', 'de@nonqualify.com', NULL, 1, 1, '-', '-', 5, 2, 2, '2022-06-02 04:14:57', NULL, NULL),
(9, '2022-07-12_31.571428571429_campaignbanner_.png', '2022-07-12_117.28571428571_logo_.png', 'https://www.globaldigitizers.com/', 'Global Digitizers', 'crm@globaldigitizers.com', 7, 1, 1, 'Digitizing and Vector', 'Digitizing Company', 1, 1, 2, '2022-07-12 10:10:22', NULL, NULL),
(10, '2022-09-22_31.714285714286_campaignbanner_.png', '2022-09-22_101.42857142857_logo_.png', 'https://stardigitizers.com/', 'Star Digitizing', 'info@stardigitizers.com', NULL, 1, 1, 'Digitizing', 'We first started our embroidery digitizing business in 1989 locally which then turned into an international digitizing company in 2007.', 1, 2, 2, '2022-09-22 10:16:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaigntype`
--

CREATE TABLE `campaigntype` (
  `campaigntype_id` int(11) NOT NULL,
  `campaigntype_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campaigntype`
--

INSERT INTO `campaigntype` (`campaigntype_id`, `campaigntype_name`, `status_id`) VALUES
(1, 'Digital Marketing', 1),
(2, 'DE', 1),
(3, 'DME', 1),
(4, 'DME-CPA', 1),
(5, 'DE-Non Qualify', 1),
(6, 'Web', 1),
(7, 'Logo', 1),
(8, 'Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `client_companyname` varchar(250) DEFAULT NULL,
  `client_contactperson` varchar(250) DEFAULT NULL,
  `client_address` text DEFAULT NULL,
  `client_officenumber` varchar(250) DEFAULT NULL,
  `client_alternateofficenumber` varchar(250) DEFAULT NULL,
  `client_twitterid` text DEFAULT NULL,
  `client_facebookid` text DEFAULT NULL,
  `client_instagramid` text DEFAULT NULL,
  `client_state` varchar(250) DEFAULT NULL,
  `client_city` varchar(250) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `client_timezone` varchar(250) DEFAULT NULL,
  `client_email` varchar(250) DEFAULT NULL,
  `client_alternateemail` varchar(250) DEFAULT NULL,
  `client_website` varchar(250) DEFAULT NULL,
  `client_companyindustry` varchar(250) DEFAULT NULL,
  `client_designation` varchar(250) DEFAULT NULL,
  `client_companydecription` text DEFAULT NULL,
  `client_zipcode` varchar(250) DEFAULT NULL,
  `client_totalrevenue` decimal(10,0) DEFAULT NULL,
  `client_islock` int(11) NOT NULL DEFAULT 0,
  `client_lockcomment` text DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `clientedit`
--

CREATE TABLE `clientedit` (
  `clientedit_id` int(11) NOT NULL,
  `clientedit_instruction` longtext DEFAULT NULL,
  `clientedit_amount` double DEFAULT NULL,
  `order_attachmenttoken` text DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `commission`
--

CREATE TABLE `commission` (
  `commission_id` int(11) NOT NULL,
  `commission_from` int(11) DEFAULT NULL,
  `commission_to` int(11) DEFAULT NULL,
  `commission_rate` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `commissionlist`
-- (See below for the actual view)
--
CREATE TABLE `commissionlist` (
`commission_id` int(11)
,`commission_from` int(11)
,`commission_to` int(11)
,`commission_rate` double
,`user_id` int(11)
,`status_id` int(11)
,`created_at` datetime
,`role_name` varchar(250)
,`user_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `completedeallist`
-- (See below for the actual view)
--
CREATE TABLE `completedeallist` (
`client_officenumber` varchar(250)
,`client_alternateofficenumber` varchar(250)
,`user_name` varchar(250)
,`manager_name` varchar(250)
,`order_deadlinedate` date
,`order_amountquoted` decimal(10,0)
,`order_token` text
,`status_id` int(11)
,`created_at` datetime
,`created_by` int(11)
,`order_managerpickby` int(11)
,`client_id` int(11)
,`campaign_id` int(11)
,`order_id` int(11)
,`order_designname` text
,`order_billingby` int(11)
,`order_paypalinvoicenumber` text
,`order_date` date
,`order_recoverydate` date
,`order_cancelcomment` text
,`client_companyname` varchar(250)
,`client_contactperson` varchar(250)
,`client_email` varchar(250)
,`orderstatus_id` int(11)
,`orderstatus_name` varchar(250)
,`campaigntype_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_name` varchar(250) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_name`, `status_id`) VALUES
(1, 'USD', 1),
(2, 'Euro', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `dataafterfardeen`
-- (See below for the actual view)
--
CREATE TABLE `dataafterfardeen` (
`declient_id` int(11)
,`declient_name` varchar(255)
,`declient_homephone` varchar(255)
,`declient_address` text
,`declient_workphone` varchar(255)
,`declient_city` varchar(255)
,`declient_country` varchar(255)
,`declient_zip` varchar(255)
,`declient_state` varchar(255)
,`declient_email` varchar(255)
,`declient_sin` varchar(255)
,`declient_dob` varchar(255)
,`declient_mmin` varchar(255)
,`declient_date` date
,`campaign_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`declient_servicename` varchar(255)
,`declient_servicefee` double
,`demerchant_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `deadclient`
-- (See below for the actual view)
--
CREATE TABLE `deadclient` (
`client_id` int(11)
,`client_companyname` varchar(250)
,`client_contactperson` varchar(250)
,`client_address` text
,`client_officenumber` varchar(250)
,`client_alternateofficenumber` varchar(250)
,`client_twitterid` text
,`client_facebookid` text
,`client_instagramid` text
,`client_state` varchar(250)
,`client_city` varchar(250)
,`location_id` int(11)
,`client_timezone` varchar(250)
,`client_email` varchar(250)
,`client_alternateemail` varchar(250)
,`client_website` varchar(250)
,`client_companyindustry` varchar(250)
,`client_designation` varchar(250)
,`client_companydecription` text
,`client_zipcode` varchar(250)
,`client_totalrevenue` decimal(10,0)
,`client_islock` int(11)
,`client_lockcomment` text
,`campaign_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `declient`
--

CREATE TABLE `declient` (
  `declient_id` int(11) NOT NULL,
  `declient_name` varchar(255) DEFAULT NULL,
  `declient_homephone` varchar(255) DEFAULT NULL,
  `declient_address` text DEFAULT NULL,
  `declient_workphone` varchar(255) DEFAULT NULL,
  `declient_city` varchar(255) DEFAULT NULL,
  `declient_country` varchar(255) DEFAULT NULL,
  `declient_zip` varchar(255) DEFAULT NULL,
  `declient_state` varchar(255) DEFAULT NULL,
  `declient_email` varchar(255) DEFAULT NULL,
  `declient_sin` varchar(255) DEFAULT NULL,
  `declient_dob` varchar(255) DEFAULT NULL,
  `declient_mmin` varchar(255) DEFAULT NULL,
  `declient_date` date DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `declient_servicename` varchar(255) DEFAULT NULL,
  `declient_servicefee` double DEFAULT NULL,
  `demerchant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `declientlist`
-- (See below for the actual view)
--
CREATE TABLE `declientlist` (
`declient_id` int(11)
,`declient_name` varchar(255)
,`declient_homephone` varchar(255)
,`declient_address` text
,`declient_workphone` varchar(255)
,`declient_city` varchar(255)
,`declient_country` varchar(255)
,`declient_zip` varchar(255)
,`declient_state` varchar(255)
,`declient_email` varchar(255)
,`declient_sin` varchar(255)
,`declient_dob` varchar(255)
,`declient_mmin` varchar(255)
,`declient_date` date
,`campaign_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`user_name` varchar(250)
,`updateby` varchar(250)
,`campaigntype_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `dedealdetails`
-- (See below for the actual view)
--
CREATE TABLE `dedealdetails` (
`declient_id` int(11)
,`declient_name` varchar(255)
,`declient_homephone` varchar(255)
,`declient_address` text
,`declient_workphone` varchar(255)
,`declient_city` varchar(255)
,`declient_country` varchar(255)
,`declient_zip` varchar(255)
,`declient_state` varchar(255)
,`declient_email` varchar(255)
,`declient_sin` varchar(255)
,`declient_dob` varchar(255)
,`declient_mmin` varchar(255)
,`declient_servicename` varchar(255)
,`declient_servicefee` double
,`demerchant_id` int(11)
,`declient_date` date
,`status_id` int(11)
,`created_at` datetime
,`created_byid` int(11)
,`deitem_id` int(11)
,`deitem_dealid` varchar(255)
,`deitem_product` varchar(255)
,`deitem_quantity` int(11)
,`deitem_price` double
,`deitem_paymentoption` varchar(255)
,`denotes_id` int(11)
,`denotes_agentnote` longtext
,`denotes_managernote` longtext
,`denotes_customernote` longtext
,`created_by` varchar(250)
,`deorderstatus_id` int(11)
,`deorderstatus_name` varchar(255)
,`managerpickby` varchar(250)
,`billingpickby` varchar(250)
,`campaign_campaignname` varchar(250)
,`depayment_token` bigint(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `dedeallist`
-- (See below for the actual view)
--
CREATE TABLE `dedeallist` (
`declient_id` int(11)
,`status_id` int(11)
,`campaign_id` int(11)
,`declient_name` varchar(255)
,`declient_email` varchar(255)
,`declient_homephone` varchar(255)
,`declient_date` date
,`created_by` int(11)
,`depayment_nonqualifypickby` int(11)
,`user_name` varchar(250)
,`created_at` datetime
,`depayment_bank` varchar(255)
,`depayment_token` bigint(20)
,`depayment_billingpickby` int(11)
,`depayment_managerpickby` int(11)
,`manager_name` varchar(250)
,`deorderstatus_id` int(11)
,`deorderstatus_name` varchar(255)
,`campaigntype_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `deforwardeddeallist`
-- (See below for the actual view)
--
CREATE TABLE `deforwardeddeallist` (
`declient_id` int(11)
,`status_id` int(11)
,`campaign_id` int(11)
,`depayment_managerpickby` int(11)
,`depayment_billingpickby` int(11)
,`declient_email` varchar(255)
,`declient_homephone` varchar(255)
,`declient_name` varchar(255)
,`declient_date` date
,`user_name` varchar(250)
,`created_at` datetime
,`depayment_bank` varchar(255)
,`depayment_token` bigint(20)
,`deorderstatus_id` int(11)
,`deorderstatus_name` varchar(255)
,`created_by` int(11)
,`campaigntype_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `deitem`
--

CREATE TABLE `deitem` (
  `deitem_id` int(11) NOT NULL,
  `deitem_dealid` varchar(255) DEFAULT NULL,
  `deitem_product` varchar(255) DEFAULT NULL,
  `deitem_quantity` int(11) DEFAULT NULL,
  `deitem_price` double DEFAULT NULL,
  `deitem_paymentoption` varchar(255) DEFAULT NULL,
  `declient_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `demerchant`
--

CREATE TABLE `demerchant` (
  `demerchant_id` int(11) NOT NULL,
  `demerchant_name` varchar(255) DEFAULT NULL,
  `demerchant_location` varchar(255) DEFAULT NULL,
  `demerchant_number` varchar(255) DEFAULT NULL,
  `demerchant_rate` double DEFAULT NULL,
  `demerchant_commissionpercent` varchar(255) DEFAULT NULL,
  `demerchant_service` varchar(255) DEFAULT NULL,
  `demerchant_comment` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `denotes`
--

CREATE TABLE `denotes` (
  `denotes_id` int(11) NOT NULL,
  `denotes_agentnote` longtext DEFAULT NULL,
  `denotes_managernote` longtext DEFAULT NULL,
  `denotes_customernote` longtext DEFAULT NULL,
  `declient_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deorderstatus`
--

CREATE TABLE `deorderstatus` (
  `deorderstatus_id` int(11) NOT NULL,
  `deorderstatus_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deorderstatus`
--

INSERT INTO `deorderstatus` (`deorderstatus_id`, `deorderstatus_name`, `status_id`) VALUES
(1, 'Forwarded To Manager', 1),
(2, 'Pick By Manager', 1),
(3, 'Save By Manager', 1),
(4, 'Forwarded To Billing', 1),
(5, 'Pick By Billing', 1),
(6, 'Save By Billing', 1),
(7, 'Completed', 1),
(8, 'Cancel', 1),
(9, 'Back To Agent', 1),
(10, 'Back To Manager', 1),
(11, 'Non Qualified', 1),
(12, 'Save By Agent', 1),
(13, 'Save By Non Qualifier', 1),
(14, 'Pick By Non Qualifier', 1),
(15, 'Non Process', 1);

-- --------------------------------------------------------

--
-- Table structure for table `depayment`
--

CREATE TABLE `depayment` (
  `depayment_id` int(11) NOT NULL,
  `depayment_title` varchar(255) DEFAULT NULL,
  `depayment_ccnumber` varchar(255) DEFAULT NULL,
  `depayment_cvc` varchar(255) DEFAULT NULL,
  `depayment_exp` varchar(255) DEFAULT NULL,
  `depayment_apr` varchar(255) DEFAULT NULL,
  `depayment_owe` varchar(255) DEFAULT NULL,
  `depayment_awail` varchar(255) DEFAULT NULL,
  `depayment_bank` varchar(255) DEFAULT NULL,
  `depayment_banktollfree` varchar(255) DEFAULT NULL,
  `depayment_minpay` varchar(255) DEFAULT NULL,
  `depayment_lastpay` varchar(255) DEFAULT NULL,
  `depayment_currentpay` varchar(255) DEFAULT NULL,
  `depayment_nextpay` varchar(255) DEFAULT NULL,
  `depayment_lastpaymentdate` date DEFAULT NULL,
  `depayment_nextpaymentdate` date DEFAULT NULL,
  `depayment_managerpickby` int(11) DEFAULT NULL,
  `depayment_billingpickby` int(11) DEFAULT NULL,
  `depayment_nonqualifypickby` int(11) DEFAULT NULL,
  `depayment_token` bigint(20) DEFAULT NULL,
  `depayment_date` date DEFAULT NULL,
  `declient_id` int(11) DEFAULT NULL,
  `deorderstatus_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `depaymentdetails`
-- (See below for the actual view)
--
CREATE TABLE `depaymentdetails` (
`depayment_id` int(11)
,`depayment_title` varchar(255)
,`depayment_ccnumber` varchar(255)
,`depayment_cvc` varchar(255)
,`depayment_exp` varchar(255)
,`depayment_apr` varchar(255)
,`depayment_owe` varchar(255)
,`depayment_awail` varchar(255)
,`depayment_bank` varchar(255)
,`depayment_banktollfree` varchar(255)
,`depayment_minpay` varchar(255)
,`depayment_lastpay` varchar(255)
,`depayment_currentpay` varchar(255)
,`depayment_nextpay` varchar(255)
,`depayment_lastpaymentdate` date
,`depayment_nextpaymentdate` date
,`depayment_token` bigint(20)
,`declient_id` int(11)
,`status_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `dmebraces`
--

CREATE TABLE `dmebraces` (
  `dmebraces_id` int(11) NOT NULL,
  `dmebraces_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dmeclient`
--

CREATE TABLE `dmeclient` (
  `dmeclient_id` int(11) NOT NULL,
  `dmeclient_name` varchar(255) DEFAULT NULL,
  `dmeclient_lastname` varchar(255) DEFAULT NULL,
  `dmeclient_email` varchar(255) DEFAULT NULL,
  `dmeclient_dateofbirth` date DEFAULT NULL,
  `dmeclient_homephone` varchar(255) DEFAULT NULL,
  `dmeclient_cellphone` varchar(255) DEFAULT NULL,
  `dmeclient_bestcalltime` varchar(255) DEFAULT NULL,
  `dmeclient_videochataccess` varchar(255) DEFAULT NULL,
  `dmeclient_smartphone` varchar(255) DEFAULT NULL,
  `dmeclient_rateyourpain` varchar(255) DEFAULT NULL,
  `dmeclient_gender` varchar(255) DEFAULT NULL,
  `dmeclient_address` text DEFAULT NULL,
  `dmeclient_city` varchar(255) DEFAULT NULL,
  `dmeclient_state` varchar(255) DEFAULT NULL,
  `dmeclient_zip` varchar(255) DEFAULT NULL,
  `dmeclient_heightfeet` int(11) DEFAULT NULL,
  `dmeclient_heightinches` int(11) DEFAULT NULL,
  `dmeclient_weight` bigint(20) DEFAULT NULL,
  `dmeclient_waist` varchar(255) DEFAULT NULL,
  `dmeclient_shoesize` varchar(255) DEFAULT NULL,
  `dmeclient_agentreson` text DEFAULT NULL,
  `dmeclient_managerreson` text DEFAULT NULL,
  `dmeclient_cardtype` varchar(255) DEFAULT NULL,
  `dmeclient_paincause` varchar(255) DEFAULT NULL,
  `dmeclient_medication` varchar(255) DEFAULT NULL,
  `dmeclient_ethnicity` varchar(255) DEFAULT NULL,
  `dmeclient_date` date DEFAULT NULL,
  `dmeservices_id` int(11) DEFAULT NULL,
  `dmemerchant_id` int(11) DEFAULT NULL,
  `dmebraces_id` text DEFAULT NULL,
  `dmeclient_amount` double DEFAULT NULL,
  `dmeclient_sandscomment` text DEFAULT NULL,
  `dmeclient_billingunpickcomment` text DEFAULT NULL,
  `dmeclient_managerlastupdateddate` date DEFAULT NULL,
  `dmeclient_billinglastupdateddate` date DEFAULT NULL,
  `dmeclient_chaselastupdateddate` date DEFAULT NULL,
  `dmeclient_cpalastupdateddate` date DEFAULT NULL,
  `dmeclient_managerpickby` int(11) DEFAULT NULL,
  `dmeclient_cpamanagerpickby` int(11) DEFAULT NULL,
  `cpaorderstatus` int(11) DEFAULT NULL,
  `dmeclient_billingby` int(11) DEFAULT NULL,
  `dmeclient_chaseby` int(11) DEFAULT NULL,
  `dmeclient_teamleadid` int(11) DEFAULT NULL,
  `dmeclient_token` text DEFAULT NULL,
  `dmeclient_year` int(11) DEFAULT NULL,
  `dmeclient_week` int(11) DEFAULT NULL,
  `orderstatus_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `dmeclient_isfilled` int(11) NOT NULL DEFAULT 0,
  `dmeclient_isprocess` int(11) NOT NULL DEFAULT 0,
  `dmeclient_isnonprocess` int(11) NOT NULL DEFAULT 0,
  `dmeclient_isarchived` int(11) NOT NULL DEFAULT 0,
  `dmeclient_ispv` int(11) NOT NULL DEFAULT 0,
  `dmeclient_iscn` int(11) NOT NULL DEFAULT 0,
  `dmeclient_ispvapproval` int(11) NOT NULL DEFAULT 0,
  `dmeclient_iscnapproval` int(11) NOT NULL DEFAULT 0,
  `dmeclient_pharmacyname` text DEFAULT NULL,
  `dmeclient_islivetransfer` int(11) DEFAULT NULL,
  `dmeclient_isreturnfromchase` int(11) DEFAULT 0,
  `dmeclient_isreturnfrombilling` int(11) DEFAULT 0,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dmecommission`
--

CREATE TABLE `dmecommission` (
  `dmecommission_id` int(11) NOT NULL,
  `dmecommission_startfrom` bigint(20) DEFAULT NULL,
  `dmecommission_rate` double DEFAULT NULL,
  `dmecommission_type` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `dmedialerdata`
-- (See below for the actual view)
--
CREATE TABLE `dmedialerdata` (
`dmeclient_id` int(11)
,`dmeclient_name` varchar(255)
,`dmeclient_lastname` varchar(255)
,`dmeclient_email` varchar(255)
,`dmeclient_dateofbirth` date
,`dmeclient_homephone` varchar(255)
,`dmeclient_cellphone` varchar(255)
,`dmeclient_bestcalltime` varchar(255)
,`dmeclient_videochataccess` varchar(255)
,`dmeclient_smartphone` varchar(255)
,`dmeclient_rateyourpain` varchar(255)
,`dmeclient_gender` varchar(255)
,`dmeclient_address` text
,`dmeclient_city` varchar(255)
,`dmeclient_state` varchar(255)
,`dmeclient_zip` varchar(255)
,`dmeclient_heightfeet` int(11)
,`dmeclient_heightinches` int(11)
,`dmeclient_weight` bigint(20)
,`dmeclient_waist` varchar(255)
,`dmeclient_shoesize` varchar(255)
,`dmeclient_agentreson` text
,`dmeclient_managerreson` text
,`dmeclient_cardtype` varchar(255)
,`dmeclient_paincause` varchar(255)
,`dmeclient_medication` varchar(255)
,`dmeclient_ethnicity` varchar(255)
,`dmeclient_date` date
,`dmeclient_managerpickby` int(11)
,`dmeclient_billingby` int(11)
,`dmeclient_chaseby` int(11)
,`dmeclient_token` text
,`orderstatus_id` int(11)
,`campaign_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `dmedoctor`
--

CREATE TABLE `dmedoctor` (
  `dmedoctor_id` int(11) NOT NULL,
  `dmedoctor_name` varchar(255) DEFAULT NULL,
  `dmedoctor_npi` varchar(255) DEFAULT NULL,
  `dmedoctor_center` varchar(255) NOT NULL DEFAULT 'Bizzworld',
  `dmedoctor_chase` varchar(255) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dmefollowup`
--

CREATE TABLE `dmefollowup` (
  `dmefollowup_id` int(11) NOT NULL,
  `dmefollowup_comment` text DEFAULT NULL,
  `dmeclient_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dmeinsurance`
--

CREATE TABLE `dmeinsurance` (
  `dmeinsurance_id` int(11) NOT NULL,
  `dmeinsurance_insurance` varchar(255) DEFAULT NULL,
  `dmeinsurance_formid` varchar(255) DEFAULT NULL,
  `dmeinsurance_secondarytype` varchar(255) DEFAULT NULL,
  `dmeinsurance_secondaryname` varchar(255) DEFAULT NULL,
  `dmeinsurance_secondarypolicynumber` varchar(255) DEFAULT NULL,
  `dmeinsurance_diabetic` varchar(255) DEFAULT NULL,
  `dmeinsurance_insulin` varchar(255) DEFAULT NULL,
  `dmeinsurance_timestest` int(11) DEFAULT NULL,
  `dmeinsurance_timesinject` int(11) DEFAULT NULL,
  `dmeinsurance_painlocation` text DEFAULT NULL,
  `dmeinsurance_diabeticother` varchar(255) DEFAULT NULL,
  `dmeclient_id` int(11) DEFAULT NULL,
  `dmeclient_token` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `dmelistdata`
-- (See below for the actual view)
--
CREATE TABLE `dmelistdata` (
`dmeclient_id` int(11)
,`dmeclient_name` varchar(255)
,`dmeclient_lastname` varchar(255)
,`dmeclient_email` varchar(255)
,`dmeclient_dateofbirth` date
,`dmeclient_homephone` varchar(255)
,`dmeclient_cellphone` varchar(255)
,`dmeclient_bestcalltime` varchar(255)
,`dmeclient_videochataccess` varchar(255)
,`dmeclient_smartphone` varchar(255)
,`dmeclient_rateyourpain` varchar(255)
,`dmeclient_gender` varchar(255)
,`dmeclient_address` text
,`dmeclient_city` varchar(255)
,`dmeclient_state` varchar(255)
,`dmeclient_zip` varchar(255)
,`dmeclient_heightfeet` int(11)
,`dmeclient_heightinches` int(11)
,`dmeclient_weight` bigint(20)
,`dmeclient_waist` varchar(255)
,`dmeclient_shoesize` varchar(255)
,`dmeclient_agentreson` text
,`dmeclient_managerreson` text
,`dmeclient_cardtype` varchar(255)
,`dmeclient_paincause` varchar(255)
,`dmeclient_medication` varchar(255)
,`dmeclient_ethnicity` varchar(255)
,`dmeclient_date` date
,`dmeservices_id` int(11)
,`dmemerchant_id` int(11)
,`dmebraces_id` text
,`dmeclient_amount` double
,`dmeclient_sandscomment` text
,`dmeclient_billingunpickcomment` text
,`dmeclient_managerlastupdateddate` date
,`dmeclient_billinglastupdateddate` date
,`dmeclient_chaselastupdateddate` date
,`dmeclient_cpalastupdateddate` date
,`dmeclient_managerpickby` int(11)
,`dmeclient_cpamanagerpickby` int(11)
,`cpaorderstatus` int(11)
,`dmeclient_billingby` int(11)
,`dmeclient_chaseby` int(11)
,`dmeclient_teamleadid` int(11)
,`dmeclient_token` text
,`dmeclient_year` int(11)
,`dmeclient_week` int(11)
,`orderstatus_id` int(11)
,`campaign_id` int(11)
,`dmeclient_isfilled` int(11)
,`dmeclient_isprocess` int(11)
,`dmeclient_isnonprocess` int(11)
,`dmeclient_isarchived` int(11)
,`dmeclient_ispv` int(11)
,`dmeclient_iscn` int(11)
,`dmeclient_ispvapproval` int(11)
,`dmeclient_iscnapproval` int(11)
,`dmeclient_pharmacyname` text
,`dmeclient_islivetransfer` int(11)
,`dmeclient_isreturnfromchase` int(11)
,`dmeclient_isreturnfrombilling` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`orderstatus_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Table structure for table `dmemerchant`
--

CREATE TABLE `dmemerchant` (
  `dmemerchant_id` int(11) NOT NULL,
  `dmemerchant_name` varchar(255) DEFAULT NULL,
  `dmemerchant_type` varchar(255) DEFAULT NULL,
  `dmemerchant_rate` double DEFAULT NULL,
  `dmemerchant_agerange` text DEFAULT NULL,
  `dmemerchant_agerangefrom` int(11) DEFAULT NULL,
  `dmemerchant_agerangeto` int(11) DEFAULT NULL,
  `dmemerchant_form` text DEFAULT NULL,
  `dmemerchant_trackingform` text DEFAULT NULL,
  `dmemerchant_duplicateform` text DEFAULT NULL,
  `dmemerchant_transfernumber` varchar(255) DEFAULT NULL,
  `dmemerchant_ltnumber` varchar(255) DEFAULT NULL,
  `dmemerchant_centercode` varchar(255) DEFAULT NULL,
  `dmeservices_id` text DEFAULT NULL,
  `dmebraces_id` text DEFAULT NULL,
  `state_id` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `dmeorderdetails`
-- (See below for the actual view)
--
CREATE TABLE `dmeorderdetails` (
`dmeclient_id` int(11)
,`dmeclient_name` varchar(511)
,`dmeclient_email` varchar(255)
,`dmeclient_dateofbirth` date
,`dmeclient_homephone` varchar(255)
,`dmeclient_sandscomment` text
,`dmeclient_billingunpickcomment` text
,`dmeclient_cellphone` varchar(255)
,`dmeclient_bestcalltime` varchar(255)
,`dmeclient_videochataccess` varchar(255)
,`dmeclient_smartphone` varchar(255)
,`dmeclient_rateyourpain` varchar(255)
,`dmeclient_gender` varchar(255)
,`dmeclient_address` text
,`dmeclient_city` varchar(255)
,`dmeclient_state` varchar(255)
,`dmeclient_zip` varchar(255)
,`dmeclient_heightfeet` int(11)
,`dmeclient_heightinches` int(11)
,`dmeclient_weight` bigint(20)
,`dmeclient_waist` varchar(255)
,`dmeclient_shoesize` varchar(255)
,`dmeclient_agentreson` text
,`dmeclient_managerreson` text
,`dmeclient_cardtype` varchar(255)
,`dmeclient_paincause` varchar(255)
,`dmeclient_medication` varchar(255)
,`dmeclient_ethnicity` varchar(255)
,`dmeservices_id` int(11)
,`dmeclient_date` date
,`dmeclient_managerlastupdateddate` date
,`dmeclient_billinglastupdateddate` date
,`dmeclient_chaselastupdateddate` date
,`dmeclient_cpalastupdateddate` date
,`dmeclient_managerpickby` int(11)
,`dmeclient_cpamanagerpickby` int(11)
,`cpaorderstatus` int(11)
,`dmeclient_billingby` int(11)
,`dmeclient_chaseby` int(11)
,`dmeclient_token` text
,`orderstatus_id` int(11)
,`campaign_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`dmeinsurance_id` int(11)
,`dmeinsurance_insurance` varchar(255)
,`dmeinsurance_formid` varchar(255)
,`dmeinsurance_secondarytype` varchar(255)
,`dmeinsurance_secondaryname` varchar(255)
,`dmeinsurance_secondarypolicynumber` varchar(255)
,`dmeinsurance_diabetic` varchar(255)
,`dmeinsurance_insulin` varchar(255)
,`dmeinsurance_timestest` int(11)
,`dmeinsurance_timesinject` int(11)
,`dmeinsurance_painlocation` text
,`dmeinsurance_diabeticother` varchar(255)
,`orderstatus_name` varchar(250)
,`user_name` varchar(250)
,`managername` varchar(250)
,`billingname` varchar(250)
,`dmeclient_isfilled` int(11)
,`dmeclient_isprocess` int(11)
,`dmeclient_isnonprocess` int(11)
,`dmeclient_isarchived` int(11)
,`dmeclient_ispv` int(11)
,`dmeclient_isreturnfromchase` int(11)
,`dmeclient_isreturnfrombilling` int(11)
,`dmeclient_iscn` int(11)
,`dmeclient_iscnapproval` int(11)
,`dmeclient_ispvapproval` int(11)
,`dmeclient_pharmacyname` text
,`dmemerchant_name` varchar(255)
,`dmeotherdetails_chase` varchar(255)
,`dmeservices_name` varchar(255)
,`dmeotherdetails_admincomment` text
,`dmeotherdetails_drnpi` varchar(255)
,`campaigntype_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `dmeotherdetails`
--

CREATE TABLE `dmeotherdetails` (
  `dmeotherdetails_id` int(11) NOT NULL,
  `dmeotherdetails_cardiotype` varchar(255) DEFAULT NULL,
  `dmeotherdetails_hearbeat` text DEFAULT NULL,
  `dmeotherdetails_levac` text DEFAULT NULL,
  `dmeotherdetails_stunt` text DEFAULT NULL,
  `dmeotherdetails_heartattack` text DEFAULT NULL,
  `dmeotherdetails_inlargeheart` text DEFAULT NULL,
  `dmeotherdetails_memer` text DEFAULT NULL,
  `dmeotherdetails_highcorostol` text DEFAULT NULL,
  `dmeotherdetails_highlowbp` text DEFAULT NULL,
  `dmeotherdetails_dropbp` text DEFAULT NULL,
  `dmeotherdetails_height` text DEFAULT NULL,
  `dmeotherdetails_weight` text DEFAULT NULL,
  `dmeotherdetails_waist` text DEFAULT NULL,
  `dmeotherdetails_shoesize` text DEFAULT NULL,
  `dmeotherdetails_qualifying` text DEFAULT NULL,
  `dmeotherdetails_uvward` text DEFAULT NULL,
  `dmeotherdetails_allskinissue` text DEFAULT NULL,
  `dmeotherdetails_skinallergy` text DEFAULT NULL,
  `dmeotherdetails_dryexzima` text DEFAULT NULL,
  `dmeotherdetails_mustskinissue` text DEFAULT NULL,
  `dmeotherdetails_drname` varchar(255) DEFAULT NULL,
  `dmeotherdetails_drphone` varchar(255) DEFAULT NULL,
  `dmeotherdetails_draddress` text DEFAULT NULL,
  `dmeotherdetails_cancerother` varchar(255) DEFAULT NULL,
  `dmeotherdetails_hascancer` varchar(255) DEFAULT NULL,
  `dmeotherdetails_drnpi` varchar(255) DEFAULT NULL,
  `dmeotherdetails_drfaxnumber` varchar(255) DEFAULT NULL,
  `dmeotherdetails_attachment` text DEFAULT NULL,
  `dmeotherdetails_merchant` varchar(255) DEFAULT NULL,
  `dmeotherdetails_chase` varchar(255) DEFAULT 'Select',
  `dmeotherdetails_faxno` text DEFAULT NULL,
  `dmeotherdetails_comment` longtext DEFAULT NULL,
  `dmeotherdetails_billingcomment` text DEFAULT NULL,
  `dmeotherdetails_chasecomment` text DEFAULT NULL,
  `dmeotherdetails_cpacomment` text DEFAULT NULL,
  `dmeotherdetails_admincomment` text DEFAULT NULL,
  `dmeclient_id` int(11) DEFAULT NULL,
  `dmeclient_token` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dmerawdata`
--

CREATE TABLE `dmerawdata` (
  `dmerawdata_id` int(11) NOT NULL,
  `fullname` text DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `dateofbirth` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `homephone` text DEFAULT NULL,
  `cellphone` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `zipcode` text DEFAULT NULL,
  `waistsize` text DEFAULT NULL,
  `height` text DEFAULT NULL,
  `weight` text DEFAULT NULL,
  `medicareid` text DEFAULT NULL,
  `doctorname` text DEFAULT NULL,
  `doctorhpone` text DEFAULT NULL,
  `doctorfaxnumber` text DEFAULT NULL,
  `doctornpi` text DEFAULT NULL,
  `doctoraddress` text DEFAULT NULL,
  `havediabetic` text DEFAULT NULL,
  `haveheartdisease` text DEFAULT NULL,
  `havecancer` text DEFAULT NULL,
  `takingmedication` text DEFAULT NULL,
  `causeofpain` text DEFAULT NULL,
  `rateyourpain` text DEFAULT NULL,
  `status_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dmeservices`
--

CREATE TABLE `dmeservices` (
  `dmeservices_id` int(11) NOT NULL,
  `dmeservices_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `editnotes`
-- (See below for the actual view)
--
CREATE TABLE `editnotes` (
`clientedit_instruction` longtext
,`clientedit_amount` double
,`created_at` datetime
,`order_id` int(11)
,`status_id` int(11)
,`clientedit_id` int(11)
,`user_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Table structure for table `emailattachment`
--

CREATE TABLE `emailattachment` (
  `emailattachment_id` int(11) NOT NULL,
  `emailattachment_name` text DEFAULT NULL,
  `emailattachment_orgname` text DEFAULT NULL,
  `emailattachment_type` int(11) DEFAULT 1,
  `emailldetail_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `emailldetail`
--

CREATE TABLE `emailldetail` (
  `emailldetail_id` int(11) NOT NULL,
  `emailldetail_body` longtext DEFAULT NULL,
  `emailldetail_sendby` text DEFAULT NULL,
  `emailldetail_sendbyname` text DEFAULT NULL,
  `emailldetail_uid` int(11) DEFAULT NULL,
  `emailldetail_markas` varchar(255) DEFAULT NULL,
  `emailldetail_readstatus` int(11) DEFAULT 0,
  `emailldetail_isreceiveorsent` int(11) NOT NULL DEFAULT 0,
  `emailldetail_senddate` date DEFAULT NULL,
  `emailsentordraft_id` int(11) DEFAULT NULL,
  `emailmaster_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `emaillist`
-- (See below for the actual view)
--
CREATE TABLE `emaillist` (
`emailmaster_id` int(11)
,`emailmaster_token` text
,`emailmaster_subject` text
,`emailmaster_date` date
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`emailmaster_isreceiveorsent` int(11)
,`emailldetail_isreceiveorsent` int(11)
,`emailldetail_body` longtext
,`emailldetail_id` int(11)
,`emailldetail_markas` varchar(255)
,`emailldetail_readstatus` int(11)
,`emailsentordraft_id` int(11)
,`detailedcreated_by` int(11)
,`sendername` text
,`senderemail` text
,`deleted_by` int(11)
,`detaildeleted_by` int(11)
,`detailstatus_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `emailmaster`
--

CREATE TABLE `emailmaster` (
  `emailmaster_id` int(11) NOT NULL,
  `emailmaster_token` text DEFAULT NULL,
  `emailmaster_subject` text DEFAULT NULL,
  `emailmaster_date` date DEFAULT NULL,
  `emailmaster_isreceiveorsent` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `emailsendto`
--

CREATE TABLE `emailsendto` (
  `emailsendto_id` int(11) NOT NULL,
  `emailsendto_email` varchar(255) DEFAULT NULL,
  `emailsendto_type` varchar(255) DEFAULT NULL,
  `emailldetail_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `emailsentordraft`
--

CREATE TABLE `emailsentordraft` (
  `emailsentordraft_id` int(11) NOT NULL,
  `emailsentordraft_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `emailtemplate`
--

CREATE TABLE `emailtemplate` (
  `emailtemplate_id` int(11) NOT NULL,
  `emailtemplate_body` longtext DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `emailtype`
--

CREATE TABLE `emailtype` (
  `emailtype_id` int(11) NOT NULL,
  `emailtype_name` varchar(255) DEFAULT NULL,
  `emailtype_addfor` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emailtype`
--

INSERT INTO `emailtype` (`emailtype_id`, `emailtype_name`, `emailtype_addfor`, `status_id`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'sadsads', '-', 1, 1, '2022-06-08 02:32:47', NULL, NULL),
(2, 'test', '-', 1, 3, '2022-06-08 02:44:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emailuser`
--

CREATE TABLE `emailuser` (
  `emailuser_id` int(11) NOT NULL,
  `emailuser_token` text DEFAULT NULL,
  `emailuser_name` varchar(255) DEFAULT NULL,
  `emailuser_email` varchar(255) DEFAULT NULL,
  `emailuser_emailpassword` text DEFAULT NULL,
  `emailuser_emailhost` text DEFAULT NULL,
  `emailuser_password` text DEFAULT NULL,
  `emailuser_picture` text DEFAULT NULL,
  `emailuser_themepicture` text DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `followup`
--

CREATE TABLE `followup` (
  `followup_id` int(11) NOT NULL,
  `followup_comment` longtext DEFAULT NULL,
  `order_token` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `freshlead`
--

CREATE TABLE `freshlead` (
  `freshlead_id` int(11) NOT NULL,
  `freshlead_name` varchar(255) DEFAULT NULL,
  `freshlead_email` varchar(255) DEFAULT NULL,
  `freshlead_phone` varchar(255) DEFAULT NULL,
  `freshlead_otherdetail` text DEFAULT NULL,
  `freshlead_date` date DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `getattachmentcount`
-- (See below for the actual view)
--
CREATE TABLE `getattachmentcount` (
`count` bigint(21)
,`order_attachmenttoken` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `getcampaigndetails`
-- (See below for the actual view)
--
CREATE TABLE `getcampaigndetails` (
`campaign_id` int(11)
,`campaigntype_id` int(11)
,`campaign_banner` text
,`campaign_logo` text
,`campaign_website` varchar(250)
,`campaign_campaignname` varchar(250)
,`campaign_email` varchar(250)
,`campaign_paymentduedate` int(11)
,`campaign_campaignfor` text
,`campaign_aboutus` text
,`status_id` int(11)
,`currency_name` varchar(250)
,`currency_id` int(11)
,`location_name` varchar(250)
,`location_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `getclientdetails`
-- (See below for the actual view)
--
CREATE TABLE `getclientdetails` (
`client_id` int(11)
,`client_companyname` varchar(250)
,`client_contactperson` varchar(250)
,`client_address` text
,`client_officenumber` varchar(250)
,`client_alternateofficenumber` varchar(250)
,`client_twitterid` text
,`client_facebookid` text
,`client_instagramid` text
,`client_state` varchar(250)
,`client_city` varchar(250)
,`client_timezone` varchar(250)
,`client_email` varchar(250)
,`client_alternateemail` varchar(250)
,`client_website` varchar(250)
,`client_companyindustry` varchar(250)
,`client_designation` varchar(250)
,`client_companydecription` text
,`client_zipcode` varchar(250)
,`client_islock` int(11)
,`client_lockcomment` text
,`campaign_id` int(11)
,`status_id` int(11)
,`location_id` int(11)
,`location_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `getclientlist`
-- (See below for the actual view)
--
CREATE TABLE `getclientlist` (
`client_id` int(11)
,`client_companyname` varchar(250)
,`client_contactperson` varchar(250)
,`client_email` varchar(250)
,`client_officenumber` varchar(250)
,`client_islock` int(11)
,`client_lockcomment` text
,`status_id` int(11)
,`created_by` int(11)
,`campaign_campaignname` varchar(250)
,`campaign_id` int(11)
,`user_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `getdealfollowup`
-- (See below for the actual view)
--
CREATE TABLE `getdealfollowup` (
`followup_comment` longtext
,`order_token` text
,`status_id` int(11)
,`created_at` datetime
,`user_name` varchar(250)
,`mergedeal_token` bigint(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `getdeallist`
-- (See below for the actual view)
--
CREATE TABLE `getdeallist` (
`client_officenumber` varchar(250)
,`client_alternateofficenumber` varchar(250)
,`user_name` varchar(250)
,`manager_name` varchar(250)
,`order_id` int(11)
,`order_deadlinedate` date
,`order_token` text
,`status_id` int(11)
,`created_at` datetime
,`created_by` int(11)
,`order_managerpickby` int(11)
,`client_id` int(11)
,`campaign_id` int(11)
,`order_designname` text
,`client_companyname` varchar(250)
,`client_contactperson` varchar(250)
,`client_email` varchar(250)
,`orderstatus_id` int(11)
,`orderstatus_name` varchar(250)
,`campaigntype_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `getdmefollowup`
-- (See below for the actual view)
--
CREATE TABLE `getdmefollowup` (
`dmefollowup_comment` text
,`dmeclient_id` int(11)
,`status_id` int(11)
,`created_at` datetime
,`user_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `getleadfollowup`
-- (See below for the actual view)
--
CREATE TABLE `getleadfollowup` (
`leadfollowup_id` int(11)
,`leadfollowup_comment` text
,`freshlead_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`user_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `getorderdetails`
-- (See below for the actual view)
--
CREATE TABLE `getorderdetails` (
`manager_name` varchar(250)
,`order_id` int(11)
,`order_deadlinedate` date
,`order_designname` text
,`order_amountquoted` decimal(10,0)
,`order_designtype` varchar(250)
,`order_placement` varchar(250)
,`order_managerdescription` text
,`order_agentdescription` text
,`order_ponumber` varchar(250)
,`order_requiredformat` varchar(250)
,`order_level` varchar(250)
,`order_fabric` varchar(250)
,`order_noofcolors` varchar(250)
,`order_colorblending` varchar(250)
,`order_backgroundfill` varchar(250)
,`order_height` varchar(250)
,`order_width` varchar(250)
,`order_noofstitches` varchar(250)
,`order_instructions` text
,`order_token` text
,`order_attachmenttoken` text
,`client_id` int(11)
,`order_status` varchar(250)
,`status_id` int(11)
,`order_workernote` text
,`order_clienteditnote` text
,`created_by` int(11)
,`created_at` datetime
,`order_date` date
,`orderstatus_id` int(11)
,`createdby` varchar(250)
,`manager` varchar(250)
,`workby` varchar(250)
,`billby` varchar(250)
,`orderstatus_name` varchar(250)
,`campaign_id` int(11)
,`campaign_campaignname` varchar(250)
,`campaigntype_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `getorderlist`
-- (See below for the actual view)
--
CREATE TABLE `getorderlist` (
`order_attachmenttoken` text
,`orderstatus_id` int(11)
,`order_id` int(11)
,`order_amountquoted` decimal(10,0)
,`order_deadlinedate` date
,`order_designname` text
,`order_token` text
,`status_id` int(11)
,`order_status` varchar(250)
,`order_designtype` varchar(250)
,`order_workpickby` int(11)
,`order_assignto` int(11)
,`order_managerpickby` int(11)
,`order_billingby` int(11)
,`order_date` date
,`created_by` int(11)
,`campaign_id` int(11)
,`created_at` datetime
,`work_name` varchar(250)
,`create_name` varchar(250)
,`assign_name` varchar(250)
,`manager_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `getrandomclient`
-- (See below for the actual view)
--
CREATE TABLE `getrandomclient` (
`rawclient_id` int(11)
,`rawclient_companyname` varchar(250)
,`rawclient_contactperson` varchar(250)
,`rawclient_address` text
,`rawclient_officenumber` varchar(250)
,`rawclient_alternateofficenumber` varchar(250)
,`rawclient_twitterid` text
,`rawclient_facebookid` text
,`client_instagramid` text
,`rawclient_state` varchar(250)
,`rawclient_city` varchar(250)
,`location_id` int(11)
,`rawclient_timezone` varchar(250)
,`rawclient_email` varchar(250)
,`rawclient_alternateemail` varchar(250)
,`rawclient_website` varchar(250)
,`rawclient_companyindustry` varchar(250)
,`rawclient_designation` varchar(250)
,`rawclient_companydecription` text
,`rawclient_zipcode` varchar(250)
,`rawclient_totalrevenue` decimal(10,0)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `getrawclientdetails`
-- (See below for the actual view)
--
CREATE TABLE `getrawclientdetails` (
`rawclient_id` int(11)
,`rawclient_companyname` varchar(250)
,`rawclient_contactperson` varchar(250)
,`rawclient_email` varchar(250)
,`rawclient_alternateemail` varchar(250)
,`rawclient_officenumber` varchar(250)
,`rawclient_alternateofficenumber` varchar(250)
,`rawclient_twitterid` text
,`rawclient_facebookid` text
,`rawclient_instagramid` text
,`rawclient_address` text
,`rawclient_state` varchar(250)
,`rawclient_city` varchar(250)
,`location_id` int(11)
,`rawclient_timezone` varchar(250)
,`rawclient_website` varchar(250)
,`rawclient_companyindustry` varchar(250)
,`rawclient_designation` varchar(250)
,`rawclient_companydecription` text
,`rawclient_zipcode` varchar(250)
,`rawclient_totalrevenue` decimal(10,0)
,`rawclient_status` varchar(250)
,`rawclient_comment` text
,`campaign_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`user_name` varchar(250)
,`campaigntype_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `getscrumboarddetails`
-- (See below for the actual view)
--
CREATE TABLE `getscrumboarddetails` (
`orderstatus_name` varchar(250)
,`createby` varchar(250)
,`pickby` varchar(250)
,`workby` varchar(250)
,`billby` varchar(250)
,`client_companyname` varchar(250)
,`client_contactperson` varchar(250)
,`order_id` int(11)
,`order_deadlinedate` date
,`order_designname` text
,`order_amountquoted` decimal(10,0)
,`order_designtype` varchar(250)
,`order_placement` varchar(250)
,`order_instructions` text
,`order_managerdescription` text
,`order_agentdescription` text
,`order_token` text
,`order_attachmenttoken` text
,`order_status` varchar(250)
,`order_workernote` text
,`order_clienteditnote` text
,`orderstatus_id` int(11)
,`status_id` int(11)
,`created_at` datetime
,`campaign_id` int(11)
,`campaigntype_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `getuserdetails`
-- (See below for the actual view)
--
CREATE TABLE `getuserdetails` (
`user_id` int(11)
,`user_name` varchar(250)
,`user_email` varchar(250)
,`user_officenumberext` varchar(250)
,`user_phonenumber` varchar(250)
,`user_username` varchar(250)
,`user_picture` text
,`user_target` decimal(10,0)
,`user_targetmonth` int(11)
,`user_password` text
,`user_type` int(11)
,`status_id` int(11)
,`campaign_id` int(11)
,`campaign_campaignname` varchar(250)
,`role_id` int(11)
,`role_name` varchar(250)
,`campaigntype_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groupmember`
--

CREATE TABLE `groupmember` (
  `groupmember_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groupmessage`
--

CREATE TABLE `groupmessage` (
  `groupmessage_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `groupmessage_body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groupmessage_attachment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groupmessage_originalname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groupmessage_quoteid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groupmessage_quotebody` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groupmessage_quoteuser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead`
--

CREATE TABLE `lead` (
  `lead_id` int(11) NOT NULL,
  `lead_companyname` varchar(255) DEFAULT NULL,
  `lead_contactperson` varchar(255) DEFAULT NULL,
  `lead_address` text DEFAULT NULL,
  `lead_officenumber` varchar(255) DEFAULT NULL,
  `lead_alternateofficenumber` varchar(255) DEFAULT NULL,
  `lead_twitterid` text DEFAULT NULL,
  `lead_facebookid` text DEFAULT NULL,
  `lead_instagramid` text DEFAULT NULL,
  `lead_state` varchar(255) DEFAULT NULL,
  `lead_city` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `lead_timezone` varchar(255) DEFAULT NULL,
  `lead_email` varchar(255) DEFAULT NULL,
  `lead_alternateemail` varchar(255) DEFAULT NULL,
  `lead_website` varchar(255) DEFAULT NULL,
  `lead_companyindustry` varchar(255) DEFAULT NULL,
  `lead_designation` varchar(255) DEFAULT NULL,
  `lead_companydescription` text DEFAULT NULL,
  `lead_zipcode` varchar(255) DEFAULT NULL,
  `lead_deadlinedate` date DEFAULT NULL,
  `lead_designname` varchar(255) DEFAULT NULL,
  `lead_amountquoted` double DEFAULT NULL,
  `lead_designtype` varchar(255) DEFAULT NULL,
  `lead_placement` varchar(255) DEFAULT NULL,
  `lead_requiredformat` varchar(255) DEFAULT NULL,
  `lead_level` varchar(255) DEFAULT NULL,
  `lead_fabric` varchar(255) DEFAULT NULL,
  `lead_noofcolors` varchar(255) DEFAULT NULL,
  `lead_colorblending` varchar(255) DEFAULT NULL,
  `lead_backgroundfill` varchar(255) DEFAULT NULL,
  `lead_height` varchar(255) DEFAULT NULL,
  `lead_width` varchar(255) DEFAULT NULL,
  `lead_noofstitches` varchar(255) DEFAULT NULL,
  `lead_instructions` varchar(255) DEFAULT NULL,
  `lead_assignto` varchar(255) DEFAULT NULL,
  `lead_managerpickby` int(11) DEFAULT NULL,
  `lead_managercomment` text DEFAULT NULL,
  `lead_date` date DEFAULT NULL,
  `lead_token` varchar(255) DEFAULT NULL,
  `orderstatus_id` int(11) DEFAULT NULL,
  `order_token` text DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `leaddetail`
-- (See below for the actual view)
--
CREATE TABLE `leaddetail` (
`lead_id` int(11)
,`lead_companyname` varchar(255)
,`lead_contactperson` varchar(255)
,`lead_address` text
,`lead_officenumber` varchar(255)
,`lead_alternateofficenumber` varchar(255)
,`lead_twitterid` text
,`lead_facebookid` text
,`lead_instagramid` text
,`lead_state` varchar(255)
,`lead_city` varchar(255)
,`location_id` int(11)
,`lead_timezone` varchar(255)
,`lead_assignto` varchar(255)
,`lead_email` varchar(255)
,`lead_alternateemail` varchar(255)
,`lead_website` varchar(255)
,`lead_companyindustry` varchar(255)
,`lead_designation` varchar(255)
,`lead_companydescription` text
,`lead_zipcode` varchar(255)
,`lead_deadlinedate` date
,`lead_designname` varchar(255)
,`lead_amountquoted` double
,`lead_designtype` varchar(255)
,`lead_placement` varchar(255)
,`lead_requiredformat` varchar(255)
,`lead_level` varchar(255)
,`lead_fabric` varchar(255)
,`lead_noofcolors` varchar(255)
,`lead_colorblending` varchar(255)
,`lead_backgroundfill` varchar(255)
,`lead_height` varchar(255)
,`lead_width` varchar(255)
,`lead_noofstitches` varchar(255)
,`lead_instructions` varchar(255)
,`lead_managerpickby` int(11)
,`lead_managercomment` text
,`lead_date` date
,`lead_token` varchar(255)
,`orderstatus_id` int(11)
,`campaign_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`creator` varchar(250)
,`managername` varchar(250)
,`orderstatus_name` varchar(250)
,`campaigntype_id` int(11)
,`order_token` text
);

-- --------------------------------------------------------

--
-- Table structure for table `leadfollowup`
--

CREATE TABLE `leadfollowup` (
  `leadfollowup_id` int(11) NOT NULL,
  `leadfollowup_comment` text DEFAULT NULL,
  `freshlead_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(250) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `loginuserinfo`
-- (See below for the actual view)
--
CREATE TABLE `loginuserinfo` (
`user_id` int(11)
,`user_name` varchar(250)
,`user_email` varchar(250)
,`user_picture` text
,`user_coverpicture` text
,`campaign_id` int(11)
,`campaigntype_id` int(11)
,`status_id` int(11)
,`user_loginstatus` varchar(250)
,`role_name` varchar(250)
,`role_id` int(11)
,`campaign_banner` text
);

-- --------------------------------------------------------

--
-- Table structure for table `logocategory`
--

CREATE TABLE `logocategory` (
  `logocategory_id` int(11) NOT NULL,
  `logocategory_title` text DEFAULT NULL,
  `logocategory_description` text DEFAULT NULL,
  `logocategory_image` text DEFAULT NULL,
  `logoorder_categorytype` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logocategory`
--

INSERT INTO `logocategory` (`logocategory_id`, `logocategory_title`, `logocategory_description`, `logocategory_image`, `logoorder_categorytype`, `status_id`) VALUES
(1, 'Just font\r\n', 'Just font without any symbolic intervention.						\r\n', 'f1.png', 1, 1),
(2, 'Handmade\r\n\r\n', 'A calligraphic, handwritten or script font.						\r\n', 'f2.png', 1, 1),
(3, 'Font + meaning\r\n\r\n\r\n', 'A font with a tweak that simbolize company/ product/service						\r\n', 'f3.png', 1, 1),
(4, 'Initials\r\n\r\n\r\n\r\n', 'Monogram with Company name initials.						\r\n', 'f4.png', 1, 1),
(5, 'Font including in a shape\r\n\r\n\r\n\r\n\r\n', 'Company name inside / squares / ovals / rectangles or combined shapes.						\r\n', 'f5.png', 1, 1),
(6, 'Abstract graphic\r\n\r\n\r\n\r\n\r\n\r\n', 'A sinthetic symbol that represents your Company in a subtle way						\r\n', 'i1.png', 2, 1),
(7, 'Silhouet\r\n', 'A detailed illustrated silhouet						\r\n', 'i2.png', 2, 1),
(8, 'Geometric symbol\r\n', 'A geometric symbol that clearly represents an element.						\r\n', 'i3.png', 2, 1),
(9, 'Illustrated symbol\r\n', 'An illustrated symbol that clearly represents an element.						\r\n', 'i4.png', 2, 1),
(10, 'Detailed illustration\r\n', 'A specific illustration.						\r\n', 'i5.png', 2, 1),
(11, 'Seals and crests\r\n', 'A detailed crest or seal with just text or maybe including graphics.						\r\n', 'i6.png', 2, 1),
(12, 'Mascot\r\n', 'A character representing your Company.						\r\n', 'i7.png', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `logoorder`
--

CREATE TABLE `logoorder` (
  `logoorder_id` int(11) NOT NULL,
  `logoorder_amount` double DEFAULT NULL,
  `logoorder_name` text DEFAULT NULL,
  `logoorder_slogan` text DEFAULT NULL,
  `logoorder_describebusiness` longtext DEFAULT NULL,
  `logoorder_categorytype` varchar(255) DEFAULT NULL,
  `logoorder_colorrequirement` text DEFAULT NULL,
  `logoorder_fontstyle` text DEFAULT NULL,
  `logoorder_additionalinformation` longtext DEFAULT NULL,
  `logoorder_token` text DEFAULT NULL,
  `logocategory_id` int(11) DEFAULT NULL,
  `logoorder_paypalinvoicenumber` text DEFAULT NULL,
  `attachment_token` text DEFAULT NULL,
  `logoorder_managerpickby` int(11) DEFAULT NULL,
  `logoorder_workpickby` int(11) DEFAULT NULL,
  `logoorder_billingby` int(11) DEFAULT NULL,
  `logoorder_date` date DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `orderstatus_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `logoorderdetails`
-- (See below for the actual view)
--
CREATE TABLE `logoorderdetails` (
`logoorder_id` int(11)
,`logoorder_amount` double
,`logoorder_name` text
,`logoorder_slogan` text
,`logoorder_describebusiness` longtext
,`logoorder_categorytype` varchar(255)
,`logoorder_colorrequirement` text
,`logoorder_fontstyle` text
,`logoorder_additionalinformation` longtext
,`logoorder_token` text
,`logocategory_id` int(11)
,`logoorder_paypalinvoicenumber` text
,`attachment_token` text
,`logoorder_managerpickby` int(11)
,`logoorder_workpickby` int(11)
,`logoorder_billingby` int(11)
,`logoorder_date` date
,`client_id` int(11)
,`campaign_id` int(11)
,`orderstatus_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`logocategory_title` text
,`logocategory_description` text
,`logocategory_image` text
,`managername` varchar(250)
,`workername` varchar(250)
,`billingname` varchar(250)
,`client_companyname` varchar(250)
,`client_contactperson` varchar(250)
,`client_officenumber` varchar(250)
,`client_email` varchar(250)
,`orderstatus_name` varchar(250)
,`creator` varchar(250)
,`campaigntype_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `logoorderlist`
-- (See below for the actual view)
--
CREATE TABLE `logoorderlist` (
`logoorder_id` int(11)
,`logoorder_amount` double
,`logoorder_name` text
,`logoorder_token` text
,`logoorder_date` date
,`logoorder_paypalinvoicenumber` text
,`logoorder_managerpickby` int(11)
,`logoorder_billingby` int(11)
,`logoorder_workpickby` int(11)
,`orderstatus_id` int(11)
,`status_id` int(11)
,`campaign_id` int(11)
,`created_by` int(11)
,`client_companyname` varchar(250)
,`client_contactperson` varchar(250)
,`client_email` varchar(250)
,`orderstatus_name` varchar(250)
,`user_name` varchar(250)
,`campaigntype_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `mergedeal`
--

CREATE TABLE `mergedeal` (
  `mergedeal_id` int(11) NOT NULL,
  `mergedeal_token` bigint(20) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `order_token` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `mergedeallist`
-- (See below for the actual view)
--
CREATE TABLE `mergedeallist` (
`client_officenumber` varchar(250)
,`client_alternateofficenumber` varchar(250)
,`user_name` varchar(250)
,`manager_name` varchar(250)
,`order_deadlinedate` date
,`order_token` text
,`status_id` int(11)
,`mergestatus_id` int(11)
,`ordercreated_at` datetime
,`created_by` int(11)
,`order_managerpickby` int(11)
,`client_id` int(11)
,`campaign_id` int(11)
,`order_id` int(11)
,`order_amountquoted` decimal(10,0)
,`order_designname` text
,`order_billingby` int(11)
,`order_paypalinvoicenumber` text
,`order_date` date
,`order_recoverydate` date
,`order_cancelcomment` text
,`client_companyname` varchar(250)
,`client_contactperson` varchar(250)
,`client_email` varchar(250)
,`orderstatus_id` int(11)
,`orderstatus_name` varchar(250)
,`mergedeal_token` bigint(20)
,`created_at` datetime
,`campaigntype_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` bigint(20) UNSIGNED NOT NULL,
  `message_from` int(11) DEFAULT NULL,
  `message_to` int(11) DEFAULT NULL,
  `message_body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_attachment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_originalname` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_seen` tinyint(1) DEFAULT 0,
  `status_id` int(11) DEFAULT NULL,
  `message_quoteid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_quotebody` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_quoteuser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newlead`
--

CREATE TABLE `newlead` (
  `newlead_id` int(11) NOT NULL,
  `newlead_a` text DEFAULT NULL,
  `newlead_b` text DEFAULT NULL,
  `newlead_c` text DEFAULT NULL,
  `newlead_d` text DEFAULT NULL,
  `newlead_e` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `order_deadlinedate` date DEFAULT NULL,
  `order_designname` text DEFAULT NULL,
  `order_amountquoted` decimal(10,0) DEFAULT NULL,
  `order_designtype` varchar(250) DEFAULT NULL,
  `order_placement` varchar(250) DEFAULT NULL,
  `order_managerdescription` text DEFAULT NULL,
  `order_agentdescription` text DEFAULT NULL,
  `order_ponumber` varchar(250) DEFAULT NULL,
  `order_requiredformat` varchar(250) DEFAULT NULL,
  `order_level` varchar(250) DEFAULT NULL,
  `order_fabric` varchar(250) DEFAULT NULL,
  `order_noofcolors` varchar(250) DEFAULT NULL,
  `order_colorblending` varchar(250) DEFAULT NULL,
  `order_backgroundfill` varchar(250) DEFAULT NULL,
  `order_height` varchar(250) DEFAULT NULL,
  `order_width` varchar(250) DEFAULT NULL,
  `order_noofstitches` varchar(250) DEFAULT NULL,
  `order_instructions` text DEFAULT NULL,
  `order_token` text DEFAULT NULL,
  `order_attachmenttoken` text DEFAULT NULL,
  `order_status` varchar(250) DEFAULT NULL,
  `order_workernote` text DEFAULT NULL,
  `order_clienteditnote` text DEFAULT NULL,
  `order_paypalinvoicenumber` text DEFAULT NULL,
  `billingmerchant_id` int(11) DEFAULT NULL,
  `order_cancelcomment` text DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `orderstatus_id` int(11) DEFAULT NULL,
  `order_managerpickby` int(11) DEFAULT NULL,
  `order_assignto` int(11) DEFAULT NULL,
  `order_workpickby` int(11) DEFAULT NULL,
  `order_billingby` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_recoverydate` date DEFAULT NULL,
  `order_paiddate` date DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `ordercount`
-- (See below for the actual view)
--
CREATE TABLE `ordercount` (
`editordercount` bigint(21)
,`order_id` int(11)
,`order_token` text
,`order_status` varchar(250)
,`campaign_id` int(11)
,`orderstatus_id` int(11)
,`order_managerpickby` int(11)
,`status_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `orderhistory`
-- (See below for the actual view)
--
CREATE TABLE `orderhistory` (
`order_amountquoted` decimal(10,0)
,`order_designname` text
,`order_token` text
,`order_designtype` varchar(250)
,`order_date` date
,`campaign_name` varchar(250)
,`work_name` varchar(250)
,`create_name` varchar(250)
,`manager_name` varchar(250)
,`client_email` varchar(250)
);

-- --------------------------------------------------------

--
-- Table structure for table `orderstatus`
--

CREATE TABLE `orderstatus` (
  `orderstatus_id` int(11) NOT NULL,
  `orderstatus_name` varchar(250) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderstatus`
--

INSERT INTO `orderstatus` (`orderstatus_id`, `orderstatus_name`, `status_id`) VALUES
(1, 'Save', 1),
(2, 'Forwarded To Manager', 1),
(3, 'Pick By Manager', 1),
(4, 'Assigned', 1),
(5, 'Completed', 1),
(6, 'Return To Agent', 1),
(7, 'Sent To Client', 1),
(8, 'Forwarded To Billing', 1),
(9, 'Pick By Billing', 1),
(10, 'Invoice Sent', 1),
(11, 'Paid By Client', 1),
(12, 'Cancel', 1),
(13, 'Work Back', 1),
(14, 'Pick By Designer/Digitizer', 1),
(15, 'Edit By Client', 1),
(16, 'In Progress', 1),
(17, 'Request For Billing', 1),
(18, 'Recovery Paid', 1),
(19, 'Approved', 1),
(20, 'Submited', 1),
(21, 'Filled', 1),
(22, 'Processed', 1),
(23, 'Not Processed', 1),
(24, 'Archived', 1),
(25, 'Return To Manager', 1),
(26, 'PV Send', 1),
(27, 'CN Send', 1),
(28, 'Approve Lead', 1),
(29, 'Charge Back', 1),
(30, 'Reject Lead', 1),
(31, 'Paid Lead', 1),
(32, 'Pending Lead', 1),
(33, 'Duplicate Lead', 1),
(34, 'Return To Processor', 1),
(35, 'Verify Lead', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_image` text DEFAULT NULL,
  `post_title` text DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rawclient`
--

CREATE TABLE `rawclient` (
  `rawclient_id` int(11) NOT NULL,
  `rawclient_companyname` varchar(250) DEFAULT NULL,
  `rawclient_contactperson` varchar(250) DEFAULT NULL,
  `rawclient_email` varchar(250) DEFAULT NULL,
  `rawclient_alternateemail` varchar(250) DEFAULT NULL,
  `rawclient_officenumber` varchar(250) DEFAULT NULL,
  `rawclient_alternateofficenumber` varchar(250) DEFAULT NULL,
  `rawclient_twitterid` text DEFAULT NULL,
  `rawclient_facebookid` text DEFAULT NULL,
  `rawclient_instagramid` text DEFAULT NULL,
  `rawclient_address` text DEFAULT NULL,
  `rawclient_state` varchar(250) DEFAULT NULL,
  `rawclient_city` varchar(250) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `rawclient_timezone` varchar(250) DEFAULT NULL,
  `rawclient_website` varchar(250) DEFAULT NULL,
  `rawclient_companyindustry` varchar(250) DEFAULT NULL,
  `rawclient_designation` varchar(250) DEFAULT NULL,
  `rawclient_companydecription` text DEFAULT NULL,
  `rawclient_zipcode` varchar(250) DEFAULT NULL,
  `rawclient_totalrevenue` decimal(10,0) DEFAULT NULL,
  `rawclient_status` varchar(250) DEFAULT NULL,
  `rawclient_comment` text DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(250) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `status_id`) VALUES
(1, 'admin', 1),
(2, 'accountant', 1),
(3, 'manager', 1),
(4, 'agent', 1),
(5, 'designer', 1),
(6, 'digitizer', 1),
(7, 'manager sales development', 1),
(8, 'developer', 1),
(9, 'senior manager', 1),
(10, 'doctor chase', 1),
(11, 'Team Lead', 1),
(12, 'Lead Generator', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `saifdata`
-- (See below for the actual view)
--
CREATE TABLE `saifdata` (
`order_designname` text
,`order_date` date
,`order_amountquoted` decimal(10,0)
,`orderstatus_name` varchar(250)
,`user_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sentemaillist`
-- (See below for the actual view)
--
CREATE TABLE `sentemaillist` (
`emailmaster_id` int(11)
,`emailmaster_token` text
,`emailmaster_subject` text
,`emailmaster_date` date
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`emailmaster_isreceiveorsent` int(11)
,`emailldetail_isreceiveorsent` int(11)
,`emailldetail_body` longtext
,`emailldetail_id` int(11)
,`emailldetail_markas` varchar(255)
,`emailldetail_readstatus` int(11)
,`emailsentordraft_id` int(11)
,`detailedcreated_by` int(11)
,`sendername` varchar(255)
,`senderemail` text
,`deleted_by` int(11)
,`detaildeleted_by` int(11)
,`detailstatus_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `state_abbreviation` varchar(255) DEFAULT NULL,
  `state_code` varchar(255) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`, `state_abbreviation`, `state_code`, `status_id`) VALUES
(1, 'Alabama', 'Ala.', 'AL', 1),
(2, 'Alaska', 'Alaska', 'AK', 1),
(3, 'Arizona', 'Ariz.', 'AZ', 1),
(4, 'Arkansas', 'Ark.', 'AR', 1),
(5, 'California', 'Calif.', 'CA', 1),
(6, 'Colorado', 'Colo.', 'CO', 1),
(7, 'Connecticut', 'Conn.', 'CT', 1),
(8, 'Delaware', 'Del.', 'DE', 1),
(9, 'District of Columbia', 'D.C.', 'DC', 1),
(10, 'Florida', 'Fla.', 'FL', 1),
(11, 'Georgia', 'Ga.', 'GA', 1),
(12, 'Hawaii', 'Hawaii', 'HI', 1),
(13, 'Idaho', 'Idaho', 'ID', 1),
(14, 'Illinois', 'Ill.', 'IL', 1),
(15, 'Indiana', 'Ind.', 'IN', 1),
(16, 'Iowa', 'Iowa', 'IA', 1),
(17, 'Kansas', 'Kans.', 'KS', 1),
(18, 'Kentucky', 'Ky.', 'KY', 1),
(19, 'Louisiana', 'La.', 'LA', 1),
(20, 'Maine', 'Maine', 'ME', 1),
(21, 'Maryland', 'Md.', 'MD', 1),
(22, 'Massachusetts', 'Mass.', 'MA', 1),
(23, 'Michigan', 'Mich.', 'MI', 1),
(24, 'Minnesota', 'Minn.', 'MN', 1),
(25, 'Mississippi', 'Miss.', 'MS', 1),
(26, 'Missouri', 'Mo.', 'MO', 1),
(27, 'Montana', 'Mont.', 'MT', 1),
(28, 'Nebraska', 'Nebr.', 'NE', 1),
(29, 'Nevada', 'Nev.', 'NV', 1),
(30, 'New Hampshire', 'N.H.', 'NH', 1),
(31, 'New Jersey', 'N.J.', 'NJ', 1),
(32, 'New Mexico', 'N.M.', 'NM', 1),
(33, 'New York', 'N.Y.', 'NY', 1),
(34, 'North Carolina', 'N.C.', 'NC', 1),
(35, 'North Dakota', 'N.D.', 'ND', 1),
(36, 'Ohio', 'Ohio', 'OH', 1),
(37, 'Oklahoma', 'Okla.', 'OK', 1),
(38, 'Oregon', 'Ore.', 'OR', 1),
(39, 'Pennsylvania', 'Pa.', 'PA', 1),
(40, 'Rhode Island', 'R.I.', 'RI', 1),
(41, 'South Carolina', 'S.C.', 'SC', 1),
(42, 'South Dakota', 'S.D.', 'SD', 1),
(43, 'Tennessee', 'Tenn.', 'TN', 1),
(44, 'Texas', 'Tex.', 'TX', 1),
(45, 'Utah', 'Utah', 'UT', 1),
(46, 'Vermont', 'Vt.', 'VT', 1),
(47, 'Virginia', 'Va.', 'VA', 1),
(48, 'Washington', 'Wash.', 'WA', 1),
(49, 'West Virginia', 'W.Va.', 'WV', 1),
(50, 'Wisconsin', 'Wis.', 'WI', 1),
(51, 'Wyoming', 'Wyo.', 'WY', 1),
(52, 'England', 'England', 'England', 1),
(53, 'Northern Ireland', 'Northern Ireland', 'Northern Ireland', 1),
(54, 'Scotland', 'Scotland', 'Scotland', 1),
(55, 'Wales', 'Wales', 'Wales', 1);

-- --------------------------------------------------------

--
-- Table structure for table `target`
--

CREATE TABLE `target` (
  `target_id` int(11) NOT NULL,
  `target_month` int(11) DEFAULT NULL,
  `target_amount` decimal(10,0) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `targetlist`
-- (See below for the actual view)
--
CREATE TABLE `targetlist` (
`usertarget_id` int(11)
,`usertarget_target` double
,`usertarget_month` varchar(255)
,`user_id` int(11)
,`user_name` varchar(250)
,`user_picture` text
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`creator` varchar(250)
);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) DEFAULT NULL,
  `user_email` varchar(250) DEFAULT NULL,
  `user_officenumberext` varchar(250) DEFAULT NULL,
  `user_phonenumber` varchar(250) DEFAULT NULL,
  `user_username` varchar(250) DEFAULT NULL,
  `user_target` decimal(10,0) DEFAULT NULL,
  `user_targetmonth` int(11) DEFAULT NULL,
  `user_password` text DEFAULT NULL,
  `user_picture` text DEFAULT NULL,
  `user_coverpicture` text DEFAULT NULL,
  `user_loginstatus` varchar(250) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usertarget`
--

CREATE TABLE `usertarget` (
  `usertarget_id` int(11) NOT NULL,
  `usertarget_target` double DEFAULT NULL,
  `usertarget_month` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `weborder`
--

CREATE TABLE `weborder` (
  `weborder_id` int(11) NOT NULL,
  `weborder_title` text DEFAULT NULL,
  `weborder_amount` double DEFAULT NULL,
  `weborder_remainingamount` double DEFAULT NULL,
  `weborder_q1` longtext DEFAULT NULL,
  `weborder_q2` longtext DEFAULT NULL,
  `weborder_q3` longtext DEFAULT NULL,
  `weborder_q4` longtext DEFAULT NULL,
  `weborder_q5` longtext DEFAULT NULL,
  `weborder_q6` longtext DEFAULT NULL,
  `weborder_q7` longtext DEFAULT NULL,
  `weborder_q8` longtext DEFAULT NULL,
  `weborder_q9` longtext DEFAULT NULL,
  `weborder_q10` longtext DEFAULT NULL,
  `weborder_q11` longtext DEFAULT NULL,
  `weborder_paypalinvoicenumber` text DEFAULT NULL,
  `weborder_token` text DEFAULT NULL,
  `weborder_managerpickby` int(11) DEFAULT NULL,
  `weborder_workpickby` int(11) DEFAULT NULL,
  `weborder_billingby` int(11) DEFAULT NULL,
  `weborder_date` date DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `orderstatus_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `weborderdetails`
-- (See below for the actual view)
--
CREATE TABLE `weborderdetails` (
`weborder_id` int(11)
,`weborder_title` text
,`weborder_amount` double
,`weborder_remainingamount` double
,`weborder_q1` longtext
,`weborder_q2` longtext
,`weborder_q3` longtext
,`weborder_q4` longtext
,`weborder_q5` longtext
,`weborder_q6` longtext
,`weborder_q7` longtext
,`weborder_q8` longtext
,`weborder_q9` longtext
,`weborder_q10` longtext
,`weborder_q11` longtext
,`weborder_paypalinvoicenumber` text
,`weborder_token` text
,`weborder_managerpickby` int(11)
,`weborder_workpickby` int(11)
,`weborder_billingby` int(11)
,`weborder_date` date
,`client_id` int(11)
,`campaign_id` int(11)
,`orderstatus_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`managername` varchar(250)
,`workername` varchar(250)
,`billingname` varchar(250)
,`client_companyname` varchar(250)
,`client_contactperson` varchar(250)
,`client_officenumber` varchar(250)
,`client_email` varchar(250)
,`orderstatus_name` varchar(250)
,`creator` varchar(250)
,`campaigntype_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `weborderlist`
-- (See below for the actual view)
--
CREATE TABLE `weborderlist` (
`weborder_id` int(11)
,`weborder_q1` longtext
,`weborder_q2` longtext
,`weborder_title` text
,`weborder_amount` double
,`weborder_remainingamount` double
,`weborder_q3` longtext
,`weborder_q4` longtext
,`weborder_q5` longtext
,`weborder_q6` longtext
,`weborder_q7` longtext
,`weborder_q8` longtext
,`weborder_q9` longtext
,`weborder_q10` longtext
,`weborder_q11` longtext
,`weborder_paypalinvoicenumber` text
,`weborder_token` text
,`weborder_managerpickby` int(11)
,`weborder_workpickby` int(11)
,`weborder_billingby` int(11)
,`weborder_date` date
,`client_id` int(11)
,`campaign_id` int(11)
,`orderstatus_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`client_companyname` varchar(250)
,`client_contactperson` varchar(250)
,`client_email` varchar(250)
,`orderstatus_name` varchar(250)
,`user_name` varchar(250)
,`campaigntype_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `weborderpayment`
--

CREATE TABLE `weborderpayment` (
  `weborderpayment_id` int(11) NOT NULL,
  `weborderpayment_amount` double DEFAULT NULL,
  `weborderpayment_paypalinvoicenumber` bigint(20) DEFAULT NULL,
  `weborderpayment_date` date DEFAULT NULL,
  `weborderpayment_billingby` int(11) DEFAULT NULL,
  `weborder_id` int(11) DEFAULT NULL,
  `orderstatus_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `weborderpaymentlist`
-- (See below for the actual view)
--
CREATE TABLE `weborderpaymentlist` (
`weborder_id` int(11)
,`weborder_q1` longtext
,`weborder_q2` longtext
,`weborder_title` text
,`weborder_amount` double
,`weborder_q3` longtext
,`weborder_q4` longtext
,`weborder_q5` longtext
,`weborder_q6` longtext
,`weborder_q7` longtext
,`weborder_q8` longtext
,`weborder_q9` longtext
,`weborder_q10` longtext
,`weborder_q11` longtext
,`weborder_paypalinvoicenumber` bigint(20)
,`weborderpayment_id` int(11)
,`weborder_token` text
,`weborder_managerpickby` int(11)
,`weborder_workpickby` int(11)
,`weborder_billingby` int(11)
,`weborderpayment_created_at` datetime
,`weborder_date` date
,`client_id` int(11)
,`campaign_id` int(11)
,`orderstatus_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`billing_by` varchar(250)
,`client_companyname` varchar(250)
,`client_contactperson` varchar(250)
,`client_email` varchar(250)
,`orderstatus_name` varchar(250)
,`user_name` varchar(250)
,`campaigntype_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `webpaymentandorderdetail`
-- (See below for the actual view)
--
CREATE TABLE `webpaymentandorderdetail` (
`weborderpayment_id` int(11)
,`weborderpayment_amount` double
,`weborderpayment_paypalinvoicenumber` bigint(20)
,`weborderpayment_date` date
,`weborderpayment_billingby` int(11)
,`weborder_id` int(11)
,`orderstatus_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`order_createdby` int(11)
,`campaign_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal`
--

CREATE TABLE `withdrawal` (
  `withdrawal_id` int(11) NOT NULL,
  `withdrawal_amount` double DEFAULT NULL,
  `withdrawal_date` date DEFAULT NULL,
  `withdrawal_month` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure for view `agentdeallist`
--
DROP TABLE IF EXISTS `agentdeallist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `agentdeallist`  AS SELECT `cl`.`client_officenumber` AS `client_officenumber`, `cl`.`client_alternateofficenumber` AS `client_alternateofficenumber`, `u`.`user_name` AS `user_name`, `um`.`user_name` AS `manager_name`, `o`.`order_id` AS `order_id`, `o`.`order_deadlinedate` AS `order_deadlinedate`, `o`.`order_token` AS `order_token`, `o`.`status_id` AS `status_id`, `o`.`created_at` AS `created_at`, `o`.`created_by` AS `created_by`, `o`.`order_managerpickby` AS `order_managerpickby`, `o`.`client_id` AS `client_id`, `o`.`campaign_id` AS `campaign_id`, `o`.`order_designname` AS `order_designname`, `cl`.`client_companyname` AS `client_companyname`, `cl`.`client_contactperson` AS `client_contactperson`, `cl`.`client_email` AS `client_email`, `os`.`orderstatus_id` AS `orderstatus_id`, `os`.`orderstatus_name` AS `orderstatus_name`, `cm`.`campaigntype_id` AS `campaigntype_id` FROM (((((`order` `o` join `client` `cl` on(`o`.`client_id` = `cl`.`client_id`)) join `user` `u` on(`o`.`created_by` = `u`.`user_id`)) left join `user` `um` on(`o`.`order_managerpickby` = `um`.`user_id`)) join `orderstatus` `os` on(`o`.`orderstatus_id` = `os`.`orderstatus_id`)) join `campaign` `cm` on(`o`.`campaign_id` = `cm`.`campaign_id`)) WHERE `o`.`status_id` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `aleenaclient`
--
DROP TABLE IF EXISTS `aleenaclient`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `aleenaclient`  AS SELECT `client`.`client_id` AS `client_id`, `client`.`client_companyname` AS `client_companyname`, `client`.`client_contactperson` AS `client_contactperson`, `client`.`client_address` AS `client_address`, `client`.`client_officenumber` AS `client_officenumber`, `client`.`client_alternateofficenumber` AS `client_alternateofficenumber`, `client`.`client_twitterid` AS `client_twitterid`, `client`.`client_facebookid` AS `client_facebookid`, `client`.`client_instagramid` AS `client_instagramid`, `client`.`client_state` AS `client_state`, `client`.`client_city` AS `client_city`, `client`.`location_id` AS `location_id`, `client`.`client_timezone` AS `client_timezone`, `client`.`client_email` AS `client_email`, `client`.`client_alternateemail` AS `client_alternateemail`, `client`.`client_website` AS `client_website`, `client`.`client_companyindustry` AS `client_companyindustry`, `client`.`client_designation` AS `client_designation`, `client`.`client_companydecription` AS `client_companydecription`, `client`.`client_zipcode` AS `client_zipcode`, `client`.`client_totalrevenue` AS `client_totalrevenue`, `client`.`client_islock` AS `client_islock`, `client`.`client_lockcomment` AS `client_lockcomment`, `client`.`campaign_id` AS `campaign_id`, `client`.`status_id` AS `status_id`, `client`.`created_by` AS `created_by`, `client`.`created_at` AS `created_at`, `client`.`updated_by` AS `updated_by`, `client`.`updated_at` AS `updated_at` FROM `client` WHERE `client`.`created_by` = 171 AND `client`.`status_id` = 1 AND `client`.`campaign_id` = 9 ;

-- --------------------------------------------------------

--
-- Structure for view `billingcancil`
--
DROP TABLE IF EXISTS `billingcancil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `billingcancil`  AS SELECT sum(`order`.`order_amountquoted`) AS `SUM(``order_amountquoted``)`, `order`.`client_id` AS `client_id` FROM `order` WHERE `order`.`orderstatus_id` = 12 ;

-- --------------------------------------------------------

--
-- Structure for view `billinggross`
--
DROP TABLE IF EXISTS `billinggross`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `billinggross`  AS SELECT sum(`order`.`order_amountquoted`) AS `SUM(``order_amountquoted``)`, `order`.`client_id` AS `client_id` FROM `order` ;

-- --------------------------------------------------------

--
-- Structure for view `billingpaid`
--
DROP TABLE IF EXISTS `billingpaid`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `billingpaid`  AS SELECT sum(`order`.`order_amountquoted`) AS `SUM(``order_amountquoted``)`, `order`.`client_id` AS `client_id` FROM `order` WHERE `order`.`orderstatus_id` = 8 ;

-- --------------------------------------------------------

--
-- Structure for view `billingunpaid`
--
DROP TABLE IF EXISTS `billingunpaid`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `billingunpaid`  AS SELECT sum(`order`.`order_amountquoted`) AS `SUM(``order_amountquoted``)`, `order`.`client_id` AS `client_id` FROM `order` WHERE `order`.`orderstatus_id` = 7 ;

-- --------------------------------------------------------

--
-- Structure for view `commissionlist`
--
DROP TABLE IF EXISTS `commissionlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `commissionlist`  AS SELECT `cm`.`commission_id` AS `commission_id`, `cm`.`commission_from` AS `commission_from`, `cm`.`commission_to` AS `commission_to`, `cm`.`commission_rate` AS `commission_rate`, `cm`.`user_id` AS `user_id`, `cm`.`status_id` AS `status_id`, `cm`.`created_at` AS `created_at`, `r`.`role_name` AS `role_name`, `u`.`user_name` AS `user_name` FROM ((`commission` `cm` join `role` `r` on(`cm`.`role_id` = `r`.`role_id`)) join `user` `u` on(`cm`.`created_by` = `u`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `completedeallist`
--
DROP TABLE IF EXISTS `completedeallist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `completedeallist`  AS SELECT `cl`.`client_officenumber` AS `client_officenumber`, `cl`.`client_alternateofficenumber` AS `client_alternateofficenumber`, `u`.`user_name` AS `user_name`, `um`.`user_name` AS `manager_name`, `o`.`order_deadlinedate` AS `order_deadlinedate`, `o`.`order_amountquoted` AS `order_amountquoted`, `o`.`order_token` AS `order_token`, `o`.`status_id` AS `status_id`, `o`.`created_at` AS `created_at`, `o`.`created_by` AS `created_by`, `o`.`order_managerpickby` AS `order_managerpickby`, `o`.`client_id` AS `client_id`, `o`.`campaign_id` AS `campaign_id`, `o`.`order_id` AS `order_id`, `o`.`order_designname` AS `order_designname`, `o`.`order_billingby` AS `order_billingby`, `o`.`order_paypalinvoicenumber` AS `order_paypalinvoicenumber`, `o`.`order_date` AS `order_date`, `o`.`order_recoverydate` AS `order_recoverydate`, `o`.`order_cancelcomment` AS `order_cancelcomment`, `cl`.`client_companyname` AS `client_companyname`, `cl`.`client_contactperson` AS `client_contactperson`, `cl`.`client_email` AS `client_email`, `os`.`orderstatus_id` AS `orderstatus_id`, `os`.`orderstatus_name` AS `orderstatus_name`, `cm`.`campaigntype_id` AS `campaigntype_id` FROM (((((`order` `o` join `client` `cl` on(`o`.`client_id` = `cl`.`client_id`)) join `user` `u` on(`o`.`created_by` = `u`.`user_id`)) left join `user` `um` on(`o`.`order_managerpickby` = `um`.`user_id`)) join `orderstatus` `os` on(`o`.`orderstatus_id` = `os`.`orderstatus_id`)) join `campaign` `cm` on(`o`.`campaign_id` = `cm`.`campaign_id`)) WHERE `o`.`orderstatus_id` in (5,6,7,8,9,10,11,12,15,17,18) AND `o`.`status_id` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `dataafterfardeen`
--
DROP TABLE IF EXISTS `dataafterfardeen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dataafterfardeen`  AS SELECT `declient`.`declient_id` AS `declient_id`, `declient`.`declient_name` AS `declient_name`, `declient`.`declient_homephone` AS `declient_homephone`, `declient`.`declient_address` AS `declient_address`, `declient`.`declient_workphone` AS `declient_workphone`, `declient`.`declient_city` AS `declient_city`, `declient`.`declient_country` AS `declient_country`, `declient`.`declient_zip` AS `declient_zip`, `declient`.`declient_state` AS `declient_state`, `declient`.`declient_email` AS `declient_email`, `declient`.`declient_sin` AS `declient_sin`, `declient`.`declient_dob` AS `declient_dob`, `declient`.`declient_mmin` AS `declient_mmin`, `declient`.`declient_date` AS `declient_date`, `declient`.`campaign_id` AS `campaign_id`, `declient`.`status_id` AS `status_id`, `declient`.`created_by` AS `created_by`, `declient`.`created_at` AS `created_at`, `declient`.`updated_by` AS `updated_by`, `declient`.`updated_at` AS `updated_at`, `declient`.`declient_servicename` AS `declient_servicename`, `declient`.`declient_servicefee` AS `declient_servicefee`, `declient`.`demerchant_id` AS `demerchant_id` FROM `declient` WHERE `declient`.`declient_id` > 24061 ;

-- --------------------------------------------------------

--
-- Structure for view `deadclient`
--
DROP TABLE IF EXISTS `deadclient`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `deadclient`  AS SELECT `c`.`client_id` AS `client_id`, `c`.`client_companyname` AS `client_companyname`, `c`.`client_contactperson` AS `client_contactperson`, `c`.`client_address` AS `client_address`, `c`.`client_officenumber` AS `client_officenumber`, `c`.`client_alternateofficenumber` AS `client_alternateofficenumber`, `c`.`client_twitterid` AS `client_twitterid`, `c`.`client_facebookid` AS `client_facebookid`, `c`.`client_instagramid` AS `client_instagramid`, `c`.`client_state` AS `client_state`, `c`.`client_city` AS `client_city`, `c`.`location_id` AS `location_id`, `c`.`client_timezone` AS `client_timezone`, `c`.`client_email` AS `client_email`, `c`.`client_alternateemail` AS `client_alternateemail`, `c`.`client_website` AS `client_website`, `c`.`client_companyindustry` AS `client_companyindustry`, `c`.`client_designation` AS `client_designation`, `c`.`client_companydecription` AS `client_companydecription`, `c`.`client_zipcode` AS `client_zipcode`, `c`.`client_totalrevenue` AS `client_totalrevenue`, `c`.`client_islock` AS `client_islock`, `c`.`client_lockcomment` AS `client_lockcomment`, `c`.`campaign_id` AS `campaign_id`, `c`.`status_id` AS `status_id`, `c`.`created_by` AS `created_by`, `c`.`created_at` AS `created_at`, `c`.`updated_by` AS `updated_by`, `c`.`updated_at` AS `updated_at` FROM (`order` `o` join `client` `c` on(`o`.`client_id` = `c`.`client_id`)) WHERE `o`.`order_date` < '2022-05-01' AND `o`.`created_by` = 3 AND `c`.`status_id` = 1 AND `c`.`created_by` = 3 GROUP BY `o`.`client_id` ;

-- --------------------------------------------------------

--
-- Structure for view `declientlist`
--
DROP TABLE IF EXISTS `declientlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `declientlist`  AS SELECT `dc`.`declient_id` AS `declient_id`, `dc`.`declient_name` AS `declient_name`, `dc`.`declient_homephone` AS `declient_homephone`, `dc`.`declient_address` AS `declient_address`, `dc`.`declient_workphone` AS `declient_workphone`, `dc`.`declient_city` AS `declient_city`, `dc`.`declient_country` AS `declient_country`, `dc`.`declient_zip` AS `declient_zip`, `dc`.`declient_state` AS `declient_state`, `dc`.`declient_email` AS `declient_email`, `dc`.`declient_sin` AS `declient_sin`, `dc`.`declient_dob` AS `declient_dob`, `dc`.`declient_mmin` AS `declient_mmin`, `dc`.`declient_date` AS `declient_date`, `dc`.`campaign_id` AS `campaign_id`, `dc`.`status_id` AS `status_id`, `dc`.`created_by` AS `created_by`, `dc`.`created_at` AS `created_at`, `dc`.`updated_by` AS `updated_by`, `dc`.`updated_at` AS `updated_at`, `us`.`user_name` AS `user_name`, `uu`.`user_name` AS `updateby`, `cm`.`campaigntype_id` AS `campaigntype_id` FROM (((`declient` `dc` join `user` `us` on(`dc`.`created_by` = `us`.`user_id`)) left join `user` `uu` on(`dc`.`updated_by` = `uu`.`user_id`)) join `campaign` `cm` on(`dc`.`campaign_id` = `cm`.`campaign_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `dedealdetails`
--
DROP TABLE IF EXISTS `dedealdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dedealdetails`  AS SELECT `decl`.`declient_id` AS `declient_id`, `decl`.`declient_name` AS `declient_name`, `decl`.`declient_homephone` AS `declient_homephone`, `decl`.`declient_address` AS `declient_address`, `decl`.`declient_workphone` AS `declient_workphone`, `decl`.`declient_city` AS `declient_city`, `decl`.`declient_country` AS `declient_country`, `decl`.`declient_zip` AS `declient_zip`, `decl`.`declient_state` AS `declient_state`, `decl`.`declient_email` AS `declient_email`, `decl`.`declient_sin` AS `declient_sin`, `decl`.`declient_dob` AS `declient_dob`, `decl`.`declient_mmin` AS `declient_mmin`, `decl`.`declient_servicename` AS `declient_servicename`, `decl`.`declient_servicefee` AS `declient_servicefee`, `decl`.`demerchant_id` AS `demerchant_id`, `decl`.`declient_date` AS `declient_date`, `decl`.`status_id` AS `status_id`, `decl`.`created_at` AS `created_at`, `decl`.`created_by` AS `created_byid`, `deit`.`deitem_id` AS `deitem_id`, `deit`.`deitem_dealid` AS `deitem_dealid`, `deit`.`deitem_product` AS `deitem_product`, `deit`.`deitem_quantity` AS `deitem_quantity`, `deit`.`deitem_price` AS `deitem_price`, `deit`.`deitem_paymentoption` AS `deitem_paymentoption`, `deno`.`denotes_id` AS `denotes_id`, `deno`.`denotes_agentnote` AS `denotes_agentnote`, `deno`.`denotes_managernote` AS `denotes_managernote`, `deno`.`denotes_customernote` AS `denotes_customernote`, `ucr`.`user_name` AS `created_by`, `odst`.`deorderstatus_id` AS `deorderstatus_id`, `odst`.`deorderstatus_name` AS `deorderstatus_name`, `udmp`.`user_name` AS `managerpickby`, `udbp`.`user_name` AS `billingpickby`, `camp`.`campaign_campaignname` AS `campaign_campaignname`, `depay`.`depayment_token` AS `depayment_token` FROM ((((((((`declient` `decl` join `campaign` `camp` on(`camp`.`campaign_id` = `decl`.`campaign_id`)) join `deitem` `deit` on(`decl`.`declient_id` = `deit`.`declient_id`)) join `denotes` `deno` on(`decl`.`declient_id` = `deno`.`declient_id`)) join `user` `ucr` on(`decl`.`created_by` = `ucr`.`user_id`)) join `depayment` `depay` on(`depay`.`declient_id` = `decl`.`declient_id`)) left join `user` `udmp` on(`depay`.`depayment_managerpickby` = `udmp`.`user_id`)) left join `user` `udbp` on(`depay`.`depayment_billingpickby` = `udbp`.`user_id`)) join `deorderstatus` `odst` on(`odst`.`deorderstatus_id` = `depay`.`deorderstatus_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `dedeallist`
--
DROP TABLE IF EXISTS `dedeallist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dedeallist`  AS SELECT `decl`.`declient_id` AS `declient_id`, `decl`.`status_id` AS `status_id`, `decl`.`campaign_id` AS `campaign_id`, `decl`.`declient_name` AS `declient_name`, `decl`.`declient_email` AS `declient_email`, `decl`.`declient_homephone` AS `declient_homephone`, `decl`.`declient_date` AS `declient_date`, `decl`.`created_by` AS `created_by`, `depay`.`depayment_nonqualifypickby` AS `depayment_nonqualifypickby`, `ucr`.`user_name` AS `user_name`, `ucr`.`created_at` AS `created_at`, `depay`.`depayment_bank` AS `depayment_bank`, `depay`.`depayment_token` AS `depayment_token`, `depay`.`depayment_billingpickby` AS `depayment_billingpickby`, `depay`.`depayment_managerpickby` AS `depayment_managerpickby`, `udmp`.`user_name` AS `manager_name`, `odst`.`deorderstatus_id` AS `deorderstatus_id`, `odst`.`deorderstatus_name` AS `deorderstatus_name`, `cm`.`campaigntype_id` AS `campaigntype_id` FROM (((((((((`declient` `decl` left join `depayment` `depay` on(`decl`.`declient_id` = `depay`.`declient_id`)) left join `deitem` `deit` on(`decl`.`declient_id` = `deit`.`declient_id`)) left join `denotes` `deno` on(`decl`.`declient_id` = `deno`.`declient_id`)) join `user` `ucr` on(`decl`.`created_by` = `ucr`.`user_id`)) left join `user` `udc` on(`depay`.`created_by` = `udc`.`user_id`)) left join `user` `udmp` on(`depay`.`depayment_managerpickby` = `udmp`.`user_id`)) left join `user` `udbp` on(`depay`.`depayment_billingpickby` = `udbp`.`user_id`)) join `deorderstatus` `odst` on(`odst`.`deorderstatus_id` = `depay`.`deorderstatus_id`)) join `campaign` `cm` on(`decl`.`campaign_id` = `cm`.`campaign_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `deforwardeddeallist`
--
DROP TABLE IF EXISTS `deforwardeddeallist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `deforwardeddeallist`  AS SELECT `decl`.`declient_id` AS `declient_id`, `decl`.`status_id` AS `status_id`, `decl`.`campaign_id` AS `campaign_id`, `depay`.`depayment_managerpickby` AS `depayment_managerpickby`, `depay`.`depayment_billingpickby` AS `depayment_billingpickby`, `decl`.`declient_email` AS `declient_email`, `decl`.`declient_homephone` AS `declient_homephone`, `decl`.`declient_name` AS `declient_name`, `decl`.`declient_date` AS `declient_date`, `ucr`.`user_name` AS `user_name`, `ucr`.`created_at` AS `created_at`, `depay`.`depayment_bank` AS `depayment_bank`, `depay`.`depayment_token` AS `depayment_token`, `odst`.`deorderstatus_id` AS `deorderstatus_id`, `odst`.`deorderstatus_name` AS `deorderstatus_name`, `decl`.`created_by` AS `created_by`, `cm`.`campaigntype_id` AS `campaigntype_id` FROM (((((((((`declient` `decl` join `depayment` `depay` on(`decl`.`declient_id` = `depay`.`declient_id`)) join `deitem` `deit` on(`decl`.`declient_id` = `deit`.`declient_id`)) join `denotes` `deno` on(`decl`.`declient_id` = `deno`.`declient_id`)) join `user` `ucr` on(`decl`.`created_by` = `ucr`.`user_id`)) join `user` `udc` on(`depay`.`created_by` = `udc`.`user_id`)) left join `user` `udmp` on(`depay`.`depayment_managerpickby` = `udmp`.`user_id`)) left join `user` `udbp` on(`depay`.`depayment_billingpickby` = `udbp`.`user_id`)) join `deorderstatus` `odst` on(`odst`.`deorderstatus_id` = `depay`.`deorderstatus_id`)) join `campaign` `cm` on(`decl`.`campaign_id` = `cm`.`campaign_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `depaymentdetails`
--
DROP TABLE IF EXISTS `depaymentdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `depaymentdetails`  AS SELECT `depay`.`depayment_id` AS `depayment_id`, `depay`.`depayment_title` AS `depayment_title`, `depay`.`depayment_ccnumber` AS `depayment_ccnumber`, `depay`.`depayment_cvc` AS `depayment_cvc`, `depay`.`depayment_exp` AS `depayment_exp`, `depay`.`depayment_apr` AS `depayment_apr`, `depay`.`depayment_owe` AS `depayment_owe`, `depay`.`depayment_awail` AS `depayment_awail`, `depay`.`depayment_bank` AS `depayment_bank`, `depay`.`depayment_banktollfree` AS `depayment_banktollfree`, `depay`.`depayment_minpay` AS `depayment_minpay`, `depay`.`depayment_lastpay` AS `depayment_lastpay`, `depay`.`depayment_currentpay` AS `depayment_currentpay`, `depay`.`depayment_nextpay` AS `depayment_nextpay`, `depay`.`depayment_lastpaymentdate` AS `depayment_lastpaymentdate`, `depay`.`depayment_nextpaymentdate` AS `depayment_nextpaymentdate`, `depay`.`depayment_token` AS `depayment_token`, `depay`.`declient_id` AS `declient_id`, `depay`.`status_id` AS `status_id` FROM ((((`depayment` `depay` join `user` `udc` on(`depay`.`created_by` = `udc`.`user_id`)) left join `user` `udmp` on(`depay`.`depayment_managerpickby` = `udmp`.`user_id`)) left join `user` `udbp` on(`depay`.`depayment_billingpickby` = `udbp`.`user_id`)) join `deorderstatus` `odst` on(`odst`.`deorderstatus_id` = `depay`.`deorderstatus_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `dmedialerdata`
--
DROP TABLE IF EXISTS `dmedialerdata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dmedialerdata`  AS SELECT `dmeclient`.`dmeclient_id` AS `dmeclient_id`, `dmeclient`.`dmeclient_name` AS `dmeclient_name`, `dmeclient`.`dmeclient_lastname` AS `dmeclient_lastname`, `dmeclient`.`dmeclient_email` AS `dmeclient_email`, `dmeclient`.`dmeclient_dateofbirth` AS `dmeclient_dateofbirth`, `dmeclient`.`dmeclient_homephone` AS `dmeclient_homephone`, `dmeclient`.`dmeclient_cellphone` AS `dmeclient_cellphone`, `dmeclient`.`dmeclient_bestcalltime` AS `dmeclient_bestcalltime`, `dmeclient`.`dmeclient_videochataccess` AS `dmeclient_videochataccess`, `dmeclient`.`dmeclient_smartphone` AS `dmeclient_smartphone`, `dmeclient`.`dmeclient_rateyourpain` AS `dmeclient_rateyourpain`, `dmeclient`.`dmeclient_gender` AS `dmeclient_gender`, `dmeclient`.`dmeclient_address` AS `dmeclient_address`, `dmeclient`.`dmeclient_city` AS `dmeclient_city`, `dmeclient`.`dmeclient_state` AS `dmeclient_state`, `dmeclient`.`dmeclient_zip` AS `dmeclient_zip`, `dmeclient`.`dmeclient_heightfeet` AS `dmeclient_heightfeet`, `dmeclient`.`dmeclient_heightinches` AS `dmeclient_heightinches`, `dmeclient`.`dmeclient_weight` AS `dmeclient_weight`, `dmeclient`.`dmeclient_waist` AS `dmeclient_waist`, `dmeclient`.`dmeclient_shoesize` AS `dmeclient_shoesize`, `dmeclient`.`dmeclient_agentreson` AS `dmeclient_agentreson`, `dmeclient`.`dmeclient_managerreson` AS `dmeclient_managerreson`, `dmeclient`.`dmeclient_cardtype` AS `dmeclient_cardtype`, `dmeclient`.`dmeclient_paincause` AS `dmeclient_paincause`, `dmeclient`.`dmeclient_medication` AS `dmeclient_medication`, `dmeclient`.`dmeclient_ethnicity` AS `dmeclient_ethnicity`, `dmeclient`.`dmeclient_date` AS `dmeclient_date`, `dmeclient`.`dmeclient_managerpickby` AS `dmeclient_managerpickby`, `dmeclient`.`dmeclient_billingby` AS `dmeclient_billingby`, `dmeclient`.`dmeclient_chaseby` AS `dmeclient_chaseby`, `dmeclient`.`dmeclient_token` AS `dmeclient_token`, `dmeclient`.`orderstatus_id` AS `orderstatus_id`, `dmeclient`.`campaign_id` AS `campaign_id`, `dmeclient`.`status_id` AS `status_id`, `dmeclient`.`created_by` AS `created_by`, `dmeclient`.`created_at` AS `created_at`, `dmeclient`.`updated_by` AS `updated_by`, `dmeclient`.`updated_at` AS `updated_at` FROM `dmeclient` WHERE `dmeclient`.`dmeclient_cardtype` <> 'HMO' ;

-- --------------------------------------------------------

--
-- Structure for view `dmelistdata`
--
DROP TABLE IF EXISTS `dmelistdata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dmelistdata`  AS SELECT `d`.`dmeclient_id` AS `dmeclient_id`, `d`.`dmeclient_name` AS `dmeclient_name`, `d`.`dmeclient_lastname` AS `dmeclient_lastname`, `d`.`dmeclient_email` AS `dmeclient_email`, `d`.`dmeclient_dateofbirth` AS `dmeclient_dateofbirth`, `d`.`dmeclient_homephone` AS `dmeclient_homephone`, `d`.`dmeclient_cellphone` AS `dmeclient_cellphone`, `d`.`dmeclient_bestcalltime` AS `dmeclient_bestcalltime`, `d`.`dmeclient_videochataccess` AS `dmeclient_videochataccess`, `d`.`dmeclient_smartphone` AS `dmeclient_smartphone`, `d`.`dmeclient_rateyourpain` AS `dmeclient_rateyourpain`, `d`.`dmeclient_gender` AS `dmeclient_gender`, `d`.`dmeclient_address` AS `dmeclient_address`, `d`.`dmeclient_city` AS `dmeclient_city`, `d`.`dmeclient_state` AS `dmeclient_state`, `d`.`dmeclient_zip` AS `dmeclient_zip`, `d`.`dmeclient_heightfeet` AS `dmeclient_heightfeet`, `d`.`dmeclient_heightinches` AS `dmeclient_heightinches`, `d`.`dmeclient_weight` AS `dmeclient_weight`, `d`.`dmeclient_waist` AS `dmeclient_waist`, `d`.`dmeclient_shoesize` AS `dmeclient_shoesize`, `d`.`dmeclient_agentreson` AS `dmeclient_agentreson`, `d`.`dmeclient_managerreson` AS `dmeclient_managerreson`, `d`.`dmeclient_cardtype` AS `dmeclient_cardtype`, `d`.`dmeclient_paincause` AS `dmeclient_paincause`, `d`.`dmeclient_medication` AS `dmeclient_medication`, `d`.`dmeclient_ethnicity` AS `dmeclient_ethnicity`, `d`.`dmeclient_date` AS `dmeclient_date`, `d`.`dmeservices_id` AS `dmeservices_id`, `d`.`dmemerchant_id` AS `dmemerchant_id`, `d`.`dmebraces_id` AS `dmebraces_id`, `d`.`dmeclient_amount` AS `dmeclient_amount`, `d`.`dmeclient_sandscomment` AS `dmeclient_sandscomment`, `d`.`dmeclient_billingunpickcomment` AS `dmeclient_billingunpickcomment`, `d`.`dmeclient_managerlastupdateddate` AS `dmeclient_managerlastupdateddate`, `d`.`dmeclient_billinglastupdateddate` AS `dmeclient_billinglastupdateddate`, `d`.`dmeclient_chaselastupdateddate` AS `dmeclient_chaselastupdateddate`, `d`.`dmeclient_cpalastupdateddate` AS `dmeclient_cpalastupdateddate`, `d`.`dmeclient_managerpickby` AS `dmeclient_managerpickby`, `d`.`dmeclient_cpamanagerpickby` AS `dmeclient_cpamanagerpickby`, `d`.`cpaorderstatus` AS `cpaorderstatus`, `d`.`dmeclient_billingby` AS `dmeclient_billingby`, `d`.`dmeclient_chaseby` AS `dmeclient_chaseby`, `d`.`dmeclient_teamleadid` AS `dmeclient_teamleadid`, `d`.`dmeclient_token` AS `dmeclient_token`, `d`.`dmeclient_year` AS `dmeclient_year`, `d`.`dmeclient_week` AS `dmeclient_week`, `d`.`orderstatus_id` AS `orderstatus_id`, `d`.`campaign_id` AS `campaign_id`, `d`.`dmeclient_isfilled` AS `dmeclient_isfilled`, `d`.`dmeclient_isprocess` AS `dmeclient_isprocess`, `d`.`dmeclient_isnonprocess` AS `dmeclient_isnonprocess`, `d`.`dmeclient_isarchived` AS `dmeclient_isarchived`, `d`.`dmeclient_ispv` AS `dmeclient_ispv`, `d`.`dmeclient_iscn` AS `dmeclient_iscn`, `d`.`dmeclient_ispvapproval` AS `dmeclient_ispvapproval`, `d`.`dmeclient_iscnapproval` AS `dmeclient_iscnapproval`, `d`.`dmeclient_pharmacyname` AS `dmeclient_pharmacyname`, `d`.`dmeclient_islivetransfer` AS `dmeclient_islivetransfer`, `d`.`dmeclient_isreturnfromchase` AS `dmeclient_isreturnfromchase`, `d`.`dmeclient_isreturnfrombilling` AS `dmeclient_isreturnfrombilling`, `d`.`status_id` AS `status_id`, `d`.`created_by` AS `created_by`, `d`.`created_at` AS `created_at`, `d`.`updated_by` AS `updated_by`, `d`.`updated_at` AS `updated_at`, `os`.`orderstatus_name` AS `orderstatus_name` FROM (`dmeclient` `d` join `orderstatus` `os` on(`d`.`orderstatus_id` = `os`.`orderstatus_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `dmeorderdetails`
--
DROP TABLE IF EXISTS `dmeorderdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dmeorderdetails`  AS SELECT `dc`.`dmeclient_id` AS `dmeclient_id`, concat(`dc`.`dmeclient_name`,' ',`dc`.`dmeclient_lastname`) AS `dmeclient_name`, `dc`.`dmeclient_email` AS `dmeclient_email`, `dc`.`dmeclient_dateofbirth` AS `dmeclient_dateofbirth`, `dc`.`dmeclient_homephone` AS `dmeclient_homephone`, `dc`.`dmeclient_sandscomment` AS `dmeclient_sandscomment`, `dc`.`dmeclient_billingunpickcomment` AS `dmeclient_billingunpickcomment`, `dc`.`dmeclient_cellphone` AS `dmeclient_cellphone`, `dc`.`dmeclient_bestcalltime` AS `dmeclient_bestcalltime`, `dc`.`dmeclient_videochataccess` AS `dmeclient_videochataccess`, `dc`.`dmeclient_smartphone` AS `dmeclient_smartphone`, `dc`.`dmeclient_rateyourpain` AS `dmeclient_rateyourpain`, `dc`.`dmeclient_gender` AS `dmeclient_gender`, `dc`.`dmeclient_address` AS `dmeclient_address`, `dc`.`dmeclient_city` AS `dmeclient_city`, `dc`.`dmeclient_state` AS `dmeclient_state`, `dc`.`dmeclient_zip` AS `dmeclient_zip`, `dc`.`dmeclient_heightfeet` AS `dmeclient_heightfeet`, `dc`.`dmeclient_heightinches` AS `dmeclient_heightinches`, `dc`.`dmeclient_weight` AS `dmeclient_weight`, `dc`.`dmeclient_waist` AS `dmeclient_waist`, `dc`.`dmeclient_shoesize` AS `dmeclient_shoesize`, `dc`.`dmeclient_agentreson` AS `dmeclient_agentreson`, `dc`.`dmeclient_managerreson` AS `dmeclient_managerreson`, `dc`.`dmeclient_cardtype` AS `dmeclient_cardtype`, `dc`.`dmeclient_paincause` AS `dmeclient_paincause`, `dc`.`dmeclient_medication` AS `dmeclient_medication`, `dc`.`dmeclient_ethnicity` AS `dmeclient_ethnicity`, `dc`.`dmeservices_id` AS `dmeservices_id`, `dc`.`dmeclient_date` AS `dmeclient_date`, `dc`.`dmeclient_managerlastupdateddate` AS `dmeclient_managerlastupdateddate`, `dc`.`dmeclient_billinglastupdateddate` AS `dmeclient_billinglastupdateddate`, `dc`.`dmeclient_chaselastupdateddate` AS `dmeclient_chaselastupdateddate`, `dc`.`dmeclient_cpalastupdateddate` AS `dmeclient_cpalastupdateddate`, `dc`.`dmeclient_managerpickby` AS `dmeclient_managerpickby`, `dc`.`dmeclient_cpamanagerpickby` AS `dmeclient_cpamanagerpickby`, `dc`.`cpaorderstatus` AS `cpaorderstatus`, `dc`.`dmeclient_billingby` AS `dmeclient_billingby`, `dc`.`dmeclient_chaseby` AS `dmeclient_chaseby`, `dc`.`dmeclient_token` AS `dmeclient_token`, `dc`.`orderstatus_id` AS `orderstatus_id`, `dc`.`campaign_id` AS `campaign_id`, `dc`.`status_id` AS `status_id`, `dc`.`created_by` AS `created_by`, `dc`.`created_at` AS `created_at`, `dc`.`updated_by` AS `updated_by`, `dc`.`updated_at` AS `updated_at`, `di`.`dmeinsurance_id` AS `dmeinsurance_id`, `di`.`dmeinsurance_insurance` AS `dmeinsurance_insurance`, `di`.`dmeinsurance_formid` AS `dmeinsurance_formid`, `di`.`dmeinsurance_secondarytype` AS `dmeinsurance_secondarytype`, `di`.`dmeinsurance_secondaryname` AS `dmeinsurance_secondaryname`, `di`.`dmeinsurance_secondarypolicynumber` AS `dmeinsurance_secondarypolicynumber`, `di`.`dmeinsurance_diabetic` AS `dmeinsurance_diabetic`, `di`.`dmeinsurance_insulin` AS `dmeinsurance_insulin`, `di`.`dmeinsurance_timestest` AS `dmeinsurance_timestest`, `di`.`dmeinsurance_timesinject` AS `dmeinsurance_timesinject`, `di`.`dmeinsurance_painlocation` AS `dmeinsurance_painlocation`, `di`.`dmeinsurance_diabeticother` AS `dmeinsurance_diabeticother`, `os`.`orderstatus_name` AS `orderstatus_name`, `uc`.`user_name` AS `user_name`, `um`.`user_name` AS `managername`, `ub`.`user_name` AS `billingname`, `dc`.`dmeclient_isfilled` AS `dmeclient_isfilled`, `dc`.`dmeclient_isprocess` AS `dmeclient_isprocess`, `dc`.`dmeclient_isnonprocess` AS `dmeclient_isnonprocess`, `dc`.`dmeclient_isarchived` AS `dmeclient_isarchived`, `dc`.`dmeclient_ispv` AS `dmeclient_ispv`, `dc`.`dmeclient_isreturnfromchase` AS `dmeclient_isreturnfromchase`, `dc`.`dmeclient_isreturnfrombilling` AS `dmeclient_isreturnfrombilling`, `dc`.`dmeclient_iscn` AS `dmeclient_iscn`, `dc`.`dmeclient_iscnapproval` AS `dmeclient_iscnapproval`, `dc`.`dmeclient_ispvapproval` AS `dmeclient_ispvapproval`, `dc`.`dmeclient_pharmacyname` AS `dmeclient_pharmacyname`, `mr`.`dmemerchant_name` AS `dmemerchant_name`, `do`.`dmeotherdetails_chase` AS `dmeotherdetails_chase`, `sr`.`dmeservices_name` AS `dmeservices_name`, `do`.`dmeotherdetails_admincomment` AS `dmeotherdetails_admincomment`, `do`.`dmeotherdetails_drnpi` AS `dmeotherdetails_drnpi`, `cm`.`campaigntype_id` AS `campaigntype_id` FROM (((((((((`dmeclient` `dc` join `dmeinsurance` `di` on(`dc`.`dmeclient_id` = `di`.`dmeclient_id`)) join `orderstatus` `os` on(`dc`.`orderstatus_id` = `os`.`orderstatus_id`)) join `user` `uc` on(`dc`.`created_by` = `uc`.`user_id`)) left join `user` `ub` on(`dc`.`dmeclient_billingby` = `ub`.`user_id`)) left join `user` `um` on(`dc`.`dmeclient_managerpickby` = `um`.`user_id`)) left join `dmemerchant` `mr` on(`dc`.`dmemerchant_id` = `mr`.`dmemerchant_id`)) join `dmeotherdetails` `do` on(`dc`.`dmeclient_id` = `do`.`dmeclient_id`)) left join `dmeservices` `sr` on(`dc`.`dmeservices_id` = `sr`.`dmeservices_id`)) join `campaign` `cm` on(`dc`.`campaign_id` = `cm`.`campaign_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `editnotes`
--
DROP TABLE IF EXISTS `editnotes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `editnotes`  AS SELECT `cl`.`clientedit_instruction` AS `clientedit_instruction`, `cl`.`clientedit_amount` AS `clientedit_amount`, `cl`.`created_at` AS `created_at`, `cl`.`order_id` AS `order_id`, `cl`.`status_id` AS `status_id`, `cl`.`clientedit_id` AS `clientedit_id`, `u`.`user_name` AS `user_name` FROM (`clientedit` `cl` join `user` `u` on(`cl`.`created_by` = `u`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `emaillist`
--
DROP TABLE IF EXISTS `emaillist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `emaillist`  AS SELECT `em`.`emailmaster_id` AS `emailmaster_id`, `em`.`emailmaster_token` AS `emailmaster_token`, `em`.`emailmaster_subject` AS `emailmaster_subject`, `em`.`emailmaster_date` AS `emailmaster_date`, `em`.`status_id` AS `status_id`, `em`.`created_by` AS `created_by`, `em`.`created_at` AS `created_at`, `em`.`updated_by` AS `updated_by`, `em`.`updated_at` AS `updated_at`, `em`.`emailmaster_isreceiveorsent` AS `emailmaster_isreceiveorsent`, `ed`.`emailldetail_isreceiveorsent` AS `emailldetail_isreceiveorsent`, `ed`.`emailldetail_body` AS `emailldetail_body`, `ed`.`emailldetail_id` AS `emailldetail_id`, `ed`.`emailldetail_markas` AS `emailldetail_markas`, `ed`.`emailldetail_readstatus` AS `emailldetail_readstatus`, `ed`.`emailsentordraft_id` AS `emailsentordraft_id`, `ed`.`created_by` AS `detailedcreated_by`, `ed`.`emailldetail_sendbyname` AS `sendername`, `ed`.`emailldetail_sendby` AS `senderemail`, `em`.`deleted_by` AS `deleted_by`, `ed`.`deleted_by` AS `detaildeleted_by`, `ed`.`status_id` AS `detailstatus_id` FROM ((`emailmaster` `em` join `emailldetail` `ed` on(`em`.`emailmaster_id` = `ed`.`emailmaster_id`)) join `emailuser` `u` on(`ed`.`created_by` = `u`.`emailuser_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `getattachmentcount`
--
DROP TABLE IF EXISTS `getattachmentcount`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getattachmentcount`  AS SELECT count(0) AS `count`, `attachment`.`order_attachmenttoken` AS `order_attachmenttoken` FROM `attachment` WHERE `attachment`.`status_id` = 1 GROUP BY `attachment`.`order_attachmenttoken` ;

-- --------------------------------------------------------

--
-- Structure for view `getcampaigndetails`
--
DROP TABLE IF EXISTS `getcampaigndetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getcampaigndetails`  AS SELECT `cm`.`campaign_id` AS `campaign_id`, `cm`.`campaigntype_id` AS `campaigntype_id`, `cm`.`campaign_banner` AS `campaign_banner`, `cm`.`campaign_logo` AS `campaign_logo`, `cm`.`campaign_website` AS `campaign_website`, `cm`.`campaign_campaignname` AS `campaign_campaignname`, `cm`.`campaign_email` AS `campaign_email`, `cm`.`campaign_paymentduedate` AS `campaign_paymentduedate`, `cm`.`campaign_campaignfor` AS `campaign_campaignfor`, `cm`.`campaign_aboutus` AS `campaign_aboutus`, `cm`.`status_id` AS `status_id`, `cr`.`currency_name` AS `currency_name`, `cr`.`currency_id` AS `currency_id`, `lc`.`location_name` AS `location_name`, `lc`.`location_id` AS `location_id` FROM ((`campaign` `cm` join `currency` `cr` on(`cm`.`currency_id` = `cr`.`currency_id`)) join `location` `lc` on(`cm`.`location_id` = `lc`.`location_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `getclientdetails`
--
DROP TABLE IF EXISTS `getclientdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getclientdetails`  AS SELECT `cl`.`client_id` AS `client_id`, `cl`.`client_companyname` AS `client_companyname`, `cl`.`client_contactperson` AS `client_contactperson`, `cl`.`client_address` AS `client_address`, `cl`.`client_officenumber` AS `client_officenumber`, `cl`.`client_alternateofficenumber` AS `client_alternateofficenumber`, `cl`.`client_twitterid` AS `client_twitterid`, `cl`.`client_facebookid` AS `client_facebookid`, `cl`.`client_instagramid` AS `client_instagramid`, `cl`.`client_state` AS `client_state`, `cl`.`client_city` AS `client_city`, `cl`.`client_timezone` AS `client_timezone`, `cl`.`client_email` AS `client_email`, `cl`.`client_alternateemail` AS `client_alternateemail`, `cl`.`client_website` AS `client_website`, `cl`.`client_companyindustry` AS `client_companyindustry`, `cl`.`client_designation` AS `client_designation`, `cl`.`client_companydecription` AS `client_companydecription`, `cl`.`client_zipcode` AS `client_zipcode`, `cl`.`client_islock` AS `client_islock`, `cl`.`client_lockcomment` AS `client_lockcomment`, `cl`.`campaign_id` AS `campaign_id`, `cl`.`status_id` AS `status_id`, `l`.`location_id` AS `location_id`, `l`.`location_name` AS `location_name` FROM (`client` `cl` join `location` `l` on(`cl`.`location_id` = `l`.`location_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `getclientlist`
--
DROP TABLE IF EXISTS `getclientlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getclientlist`  AS SELECT `cl`.`client_id` AS `client_id`, `cl`.`client_companyname` AS `client_companyname`, `cl`.`client_contactperson` AS `client_contactperson`, `cl`.`client_email` AS `client_email`, `cl`.`client_officenumber` AS `client_officenumber`, `cl`.`client_islock` AS `client_islock`, `cl`.`client_lockcomment` AS `client_lockcomment`, `cl`.`status_id` AS `status_id`, `cl`.`created_by` AS `created_by`, `cm`.`campaign_campaignname` AS `campaign_campaignname`, `cm`.`campaign_id` AS `campaign_id`, `u`.`user_name` AS `user_name` FROM ((`client` `cl` join `campaign` `cm` on(`cl`.`campaign_id` = `cm`.`campaign_id`)) join `user` `u` on(`cl`.`created_by` = `u`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `getdealfollowup`
--
DROP TABLE IF EXISTS `getdealfollowup`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getdealfollowup`  AS SELECT `fu`.`followup_comment` AS `followup_comment`, `fu`.`order_token` AS `order_token`, `fu`.`status_id` AS `status_id`, `fu`.`created_at` AS `created_at`, `u`.`user_name` AS `user_name`, `md`.`mergedeal_token` AS `mergedeal_token` FROM ((`followup` `fu` join `user` `u` on(`fu`.`created_by` = `u`.`user_id`)) left join `mergedeal` `md` on(`md`.`order_token` = `fu`.`order_token`)) ;

-- --------------------------------------------------------

--
-- Structure for view `getdeallist`
--
DROP TABLE IF EXISTS `getdeallist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getdeallist`  AS SELECT `cl`.`client_officenumber` AS `client_officenumber`, `cl`.`client_alternateofficenumber` AS `client_alternateofficenumber`, `u`.`user_name` AS `user_name`, `um`.`user_name` AS `manager_name`, `o`.`order_id` AS `order_id`, `o`.`order_deadlinedate` AS `order_deadlinedate`, `o`.`order_token` AS `order_token`, `o`.`status_id` AS `status_id`, `o`.`created_at` AS `created_at`, `o`.`created_by` AS `created_by`, `o`.`order_managerpickby` AS `order_managerpickby`, `o`.`client_id` AS `client_id`, `o`.`campaign_id` AS `campaign_id`, `o`.`order_designname` AS `order_designname`, `cl`.`client_companyname` AS `client_companyname`, `cl`.`client_contactperson` AS `client_contactperson`, `cl`.`client_email` AS `client_email`, `os`.`orderstatus_id` AS `orderstatus_id`, `os`.`orderstatus_name` AS `orderstatus_name`, `cm`.`campaigntype_id` AS `campaigntype_id` FROM (((((`order` `o` join `client` `cl` on(`o`.`client_id` = `cl`.`client_id`)) join `user` `u` on(`o`.`created_by` = `u`.`user_id`)) left join `user` `um` on(`o`.`order_managerpickby` = `um`.`user_id`)) join `orderstatus` `os` on(`o`.`orderstatus_id` = `os`.`orderstatus_id`)) join `campaign` `cm` on(`o`.`campaign_id` = `cm`.`campaign_id`)) WHERE `o`.`orderstatus_id` in (1,2,3,4,9,10,11,12,13,14,16) AND `o`.`status_id` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `getdmefollowup`
--
DROP TABLE IF EXISTS `getdmefollowup`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getdmefollowup`  AS SELECT `fu`.`dmefollowup_comment` AS `dmefollowup_comment`, `fu`.`dmeclient_id` AS `dmeclient_id`, `fu`.`status_id` AS `status_id`, `fu`.`created_at` AS `created_at`, `u`.`user_name` AS `user_name` FROM (`dmefollowup` `fu` join `user` `u` on(`fu`.`created_by` = `u`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `getleadfollowup`
--
DROP TABLE IF EXISTS `getleadfollowup`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getleadfollowup`  AS SELECT `l`.`leadfollowup_id` AS `leadfollowup_id`, `l`.`leadfollowup_comment` AS `leadfollowup_comment`, `l`.`freshlead_id` AS `freshlead_id`, `l`.`status_id` AS `status_id`, `l`.`created_by` AS `created_by`, `l`.`created_at` AS `created_at`, `u`.`user_name` AS `user_name` FROM (`leadfollowup` `l` join `user` `u` on(`l`.`created_by` = `u`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `getorderdetails`
--
DROP TABLE IF EXISTS `getorderdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getorderdetails`  AS SELECT `um`.`user_name` AS `manager_name`, `o`.`order_id` AS `order_id`, `o`.`order_deadlinedate` AS `order_deadlinedate`, `o`.`order_designname` AS `order_designname`, `o`.`order_amountquoted` AS `order_amountquoted`, `o`.`order_designtype` AS `order_designtype`, `o`.`order_placement` AS `order_placement`, `o`.`order_managerdescription` AS `order_managerdescription`, `o`.`order_agentdescription` AS `order_agentdescription`, `o`.`order_ponumber` AS `order_ponumber`, `o`.`order_requiredformat` AS `order_requiredformat`, `o`.`order_level` AS `order_level`, `o`.`order_fabric` AS `order_fabric`, `o`.`order_noofcolors` AS `order_noofcolors`, `o`.`order_colorblending` AS `order_colorblending`, `o`.`order_backgroundfill` AS `order_backgroundfill`, `o`.`order_height` AS `order_height`, `o`.`order_width` AS `order_width`, `o`.`order_noofstitches` AS `order_noofstitches`, `o`.`order_instructions` AS `order_instructions`, `o`.`order_token` AS `order_token`, `o`.`order_attachmenttoken` AS `order_attachmenttoken`, `o`.`client_id` AS `client_id`, `o`.`order_status` AS `order_status`, `o`.`status_id` AS `status_id`, `o`.`order_workernote` AS `order_workernote`, `o`.`order_clienteditnote` AS `order_clienteditnote`, `o`.`created_by` AS `created_by`, `o`.`created_at` AS `created_at`, `o`.`order_date` AS `order_date`, `o`.`orderstatus_id` AS `orderstatus_id`, `u`.`user_name` AS `createdby`, `um`.`user_name` AS `manager`, `uw`.`user_name` AS `workby`, `ub`.`user_name` AS `billby`, `os`.`orderstatus_name` AS `orderstatus_name`, `cam`.`campaign_id` AS `campaign_id`, `cam`.`campaign_campaignname` AS `campaign_campaignname`, `cam`.`campaigntype_id` AS `campaigntype_id` FROM ((((((`order` `o` join `user` `u` on(`o`.`created_by` = `u`.`user_id`)) left join `user` `um` on(`o`.`order_managerpickby` = `um`.`user_id`)) left join `user` `uw` on(`o`.`order_workpickby` = `uw`.`user_id`)) left join `user` `ub` on(`o`.`order_billingby` = `ub`.`user_id`)) join `orderstatus` `os` on(`o`.`orderstatus_id` = `os`.`orderstatus_id`)) join `campaign` `cam` on(`u`.`campaign_id` = `cam`.`campaign_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `getorderlist`
--
DROP TABLE IF EXISTS `getorderlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getorderlist`  AS SELECT `o`.`order_attachmenttoken` AS `order_attachmenttoken`, `o`.`orderstatus_id` AS `orderstatus_id`, `o`.`order_id` AS `order_id`, `o`.`order_amountquoted` AS `order_amountquoted`, `o`.`order_deadlinedate` AS `order_deadlinedate`, `o`.`order_designname` AS `order_designname`, `o`.`order_token` AS `order_token`, `o`.`status_id` AS `status_id`, `o`.`order_status` AS `order_status`, `o`.`order_designtype` AS `order_designtype`, `o`.`order_workpickby` AS `order_workpickby`, `o`.`order_assignto` AS `order_assignto`, `o`.`order_managerpickby` AS `order_managerpickby`, `o`.`order_billingby` AS `order_billingby`, `o`.`order_date` AS `order_date`, `o`.`created_by` AS `created_by`, `o`.`campaign_id` AS `campaign_id`, `o`.`created_at` AS `created_at`, `u`.`user_name` AS `work_name`, `au`.`user_name` AS `create_name`, `au`.`user_name` AS `assign_name`, `mn`.`user_name` AS `manager_name` FROM (((`order` `o` left join `user` `u` on(`o`.`order_workpickby` = `u`.`user_id`)) left join `user` `au` on(`o`.`created_by` = `au`.`user_id`)) left join `user` `mn` on(`o`.`order_managerpickby` = `mn`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `getrandomclient`
--
DROP TABLE IF EXISTS `getrandomclient`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getrandomclient`  AS SELECT `rawclient`.`rawclient_id` AS `rawclient_id`, `rawclient`.`rawclient_companyname` AS `rawclient_companyname`, `rawclient`.`rawclient_contactperson` AS `rawclient_contactperson`, `rawclient`.`rawclient_address` AS `rawclient_address`, `rawclient`.`rawclient_officenumber` AS `rawclient_officenumber`, `rawclient`.`rawclient_alternateofficenumber` AS `rawclient_alternateofficenumber`, `rawclient`.`rawclient_twitterid` AS `rawclient_twitterid`, `rawclient`.`rawclient_facebookid` AS `rawclient_facebookid`, `rawclient`.`rawclient_instagramid` AS `client_instagramid`, `rawclient`.`rawclient_state` AS `rawclient_state`, `rawclient`.`rawclient_city` AS `rawclient_city`, `rawclient`.`location_id` AS `location_id`, `rawclient`.`rawclient_timezone` AS `rawclient_timezone`, `rawclient`.`rawclient_email` AS `rawclient_email`, `rawclient`.`rawclient_alternateemail` AS `rawclient_alternateemail`, `rawclient`.`rawclient_website` AS `rawclient_website`, `rawclient`.`rawclient_companyindustry` AS `rawclient_companyindustry`, `rawclient`.`rawclient_designation` AS `rawclient_designation`, `rawclient`.`rawclient_companydecription` AS `rawclient_companydecription`, `rawclient`.`rawclient_zipcode` AS `rawclient_zipcode`, `rawclient`.`rawclient_totalrevenue` AS `rawclient_totalrevenue`, `rawclient`.`status_id` AS `status_id`, `rawclient`.`created_by` AS `created_by`, `rawclient`.`created_at` AS `created_at` FROM `rawclient` WHERE `rawclient`.`status_id` = 1 AND `rawclient`.`rawclient_status` = 'New' OR `rawclient`.`rawclient_status` = 'Cancel' ORDER BY rand() ASC LIMIT 0, 1 ;

-- --------------------------------------------------------

--
-- Structure for view `getrawclientdetails`
--
DROP TABLE IF EXISTS `getrawclientdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getrawclientdetails`  AS SELECT `rc`.`rawclient_id` AS `rawclient_id`, `rc`.`rawclient_companyname` AS `rawclient_companyname`, `rc`.`rawclient_contactperson` AS `rawclient_contactperson`, `rc`.`rawclient_email` AS `rawclient_email`, `rc`.`rawclient_alternateemail` AS `rawclient_alternateemail`, `rc`.`rawclient_officenumber` AS `rawclient_officenumber`, `rc`.`rawclient_alternateofficenumber` AS `rawclient_alternateofficenumber`, `rc`.`rawclient_twitterid` AS `rawclient_twitterid`, `rc`.`rawclient_facebookid` AS `rawclient_facebookid`, `rc`.`rawclient_instagramid` AS `rawclient_instagramid`, `rc`.`rawclient_address` AS `rawclient_address`, `rc`.`rawclient_state` AS `rawclient_state`, `rc`.`rawclient_city` AS `rawclient_city`, `rc`.`location_id` AS `location_id`, `rc`.`rawclient_timezone` AS `rawclient_timezone`, `rc`.`rawclient_website` AS `rawclient_website`, `rc`.`rawclient_companyindustry` AS `rawclient_companyindustry`, `rc`.`rawclient_designation` AS `rawclient_designation`, `rc`.`rawclient_companydecription` AS `rawclient_companydecription`, `rc`.`rawclient_zipcode` AS `rawclient_zipcode`, `rc`.`rawclient_totalrevenue` AS `rawclient_totalrevenue`, `rc`.`rawclient_status` AS `rawclient_status`, `rc`.`rawclient_comment` AS `rawclient_comment`, `rc`.`campaign_id` AS `campaign_id`, `rc`.`status_id` AS `status_id`, `rc`.`created_by` AS `created_by`, `rc`.`created_at` AS `created_at`, `u`.`user_name` AS `user_name`, `cm`.`campaigntype_id` AS `campaigntype_id` FROM ((`rawclient` `rc` join `user` `u` on(`rc`.`created_by` = `u`.`user_id`)) join `campaign` `cm` on(`rc`.`campaign_id` = `cm`.`campaign_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `getscrumboarddetails`
--
DROP TABLE IF EXISTS `getscrumboarddetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getscrumboarddetails`  AS SELECT `os`.`orderstatus_name` AS `orderstatus_name`, `uc`.`user_name` AS `createby`, `um`.`user_name` AS `pickby`, `uw`.`user_name` AS `workby`, `ub`.`user_name` AS `billby`, `cl`.`client_companyname` AS `client_companyname`, `cl`.`client_contactperson` AS `client_contactperson`, `o`.`order_id` AS `order_id`, `o`.`order_deadlinedate` AS `order_deadlinedate`, `o`.`order_designname` AS `order_designname`, `o`.`order_amountquoted` AS `order_amountquoted`, `o`.`order_designtype` AS `order_designtype`, `o`.`order_placement` AS `order_placement`, `o`.`order_instructions` AS `order_instructions`, `o`.`order_managerdescription` AS `order_managerdescription`, `o`.`order_agentdescription` AS `order_agentdescription`, `o`.`order_token` AS `order_token`, `o`.`order_attachmenttoken` AS `order_attachmenttoken`, `o`.`order_status` AS `order_status`, `o`.`order_workernote` AS `order_workernote`, `o`.`order_clienteditnote` AS `order_clienteditnote`, `o`.`orderstatus_id` AS `orderstatus_id`, `o`.`status_id` AS `status_id`, `o`.`created_at` AS `created_at`, `o`.`campaign_id` AS `campaign_id`, `cm`.`campaigntype_id` AS `campaigntype_id` FROM (((((((`order` `o` left join `user` `uc` on(`o`.`created_by` = `uc`.`user_id`)) left join `user` `um` on(`o`.`order_managerpickby` = `um`.`user_id`)) left join `user` `uw` on(`o`.`order_workpickby` = `uw`.`user_id`)) left join `user` `ub` on(`o`.`order_billingby` = `ub`.`user_id`)) join `client` `cl` on(`o`.`client_id` = `cl`.`client_id`)) join `orderstatus` `os` on(`o`.`orderstatus_id` = `os`.`orderstatus_id`)) join `campaign` `cm` on(`o`.`campaign_id` = `cm`.`campaign_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `getuserdetails`
--
DROP TABLE IF EXISTS `getuserdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getuserdetails`  AS SELECT `u`.`user_id` AS `user_id`, `u`.`user_name` AS `user_name`, `u`.`user_email` AS `user_email`, `u`.`user_officenumberext` AS `user_officenumberext`, `u`.`user_phonenumber` AS `user_phonenumber`, `u`.`user_username` AS `user_username`, `u`.`user_picture` AS `user_picture`, `u`.`user_target` AS `user_target`, `u`.`user_targetmonth` AS `user_targetmonth`, `u`.`user_password` AS `user_password`, `u`.`user_type` AS `user_type`, `u`.`status_id` AS `status_id`, `u`.`campaign_id` AS `campaign_id`, `cm`.`campaign_campaignname` AS `campaign_campaignname`, `r`.`role_id` AS `role_id`, `r`.`role_name` AS `role_name`, `cm`.`campaigntype_id` AS `campaigntype_id` FROM ((`user` `u` join `campaign` `cm` on(`u`.`campaign_id` = `cm`.`campaign_id`)) join `role` `r` on(`u`.`role_id` = `r`.`role_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `leaddetail`
--
DROP TABLE IF EXISTS `leaddetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `leaddetail`  AS SELECT `l`.`lead_id` AS `lead_id`, `l`.`lead_companyname` AS `lead_companyname`, `l`.`lead_contactperson` AS `lead_contactperson`, `l`.`lead_address` AS `lead_address`, `l`.`lead_officenumber` AS `lead_officenumber`, `l`.`lead_alternateofficenumber` AS `lead_alternateofficenumber`, `l`.`lead_twitterid` AS `lead_twitterid`, `l`.`lead_facebookid` AS `lead_facebookid`, `l`.`lead_instagramid` AS `lead_instagramid`, `l`.`lead_state` AS `lead_state`, `l`.`lead_city` AS `lead_city`, `l`.`location_id` AS `location_id`, `l`.`lead_timezone` AS `lead_timezone`, `l`.`lead_assignto` AS `lead_assignto`, `l`.`lead_email` AS `lead_email`, `l`.`lead_alternateemail` AS `lead_alternateemail`, `l`.`lead_website` AS `lead_website`, `l`.`lead_companyindustry` AS `lead_companyindustry`, `l`.`lead_designation` AS `lead_designation`, `l`.`lead_companydescription` AS `lead_companydescription`, `l`.`lead_zipcode` AS `lead_zipcode`, `l`.`lead_deadlinedate` AS `lead_deadlinedate`, `l`.`lead_designname` AS `lead_designname`, `l`.`lead_amountquoted` AS `lead_amountquoted`, `l`.`lead_designtype` AS `lead_designtype`, `l`.`lead_placement` AS `lead_placement`, `l`.`lead_requiredformat` AS `lead_requiredformat`, `l`.`lead_level` AS `lead_level`, `l`.`lead_fabric` AS `lead_fabric`, `l`.`lead_noofcolors` AS `lead_noofcolors`, `l`.`lead_colorblending` AS `lead_colorblending`, `l`.`lead_backgroundfill` AS `lead_backgroundfill`, `l`.`lead_height` AS `lead_height`, `l`.`lead_width` AS `lead_width`, `l`.`lead_noofstitches` AS `lead_noofstitches`, `l`.`lead_instructions` AS `lead_instructions`, `l`.`lead_managerpickby` AS `lead_managerpickby`, `l`.`lead_managercomment` AS `lead_managercomment`, `l`.`lead_date` AS `lead_date`, `l`.`lead_token` AS `lead_token`, `l`.`orderstatus_id` AS `orderstatus_id`, `l`.`campaign_id` AS `campaign_id`, `l`.`status_id` AS `status_id`, `l`.`created_by` AS `created_by`, `l`.`created_at` AS `created_at`, `l`.`updated_by` AS `updated_by`, `l`.`updated_at` AS `updated_at`, `u`.`user_name` AS `creator`, `um`.`user_name` AS `managername`, `os`.`orderstatus_name` AS `orderstatus_name`, `cm`.`campaigntype_id` AS `campaigntype_id`, `l`.`order_token` AS `order_token` FROM ((((`lead` `l` join `user` `u` on(`l`.`created_by` = `u`.`user_id`)) left join `user` `um` on(`l`.`lead_managerpickby` = `u`.`user_id`)) join `orderstatus` `os` on(`l`.`orderstatus_id` = `os`.`orderstatus_id`)) join `campaign` `cm` on(`l`.`campaign_id` = `cm`.`campaign_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `loginuserinfo`
--
DROP TABLE IF EXISTS `loginuserinfo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `loginuserinfo`  AS SELECT `u`.`user_id` AS `user_id`, `u`.`user_name` AS `user_name`, `u`.`user_email` AS `user_email`, `u`.`user_picture` AS `user_picture`, `u`.`user_coverpicture` AS `user_coverpicture`, `u`.`campaign_id` AS `campaign_id`, `cm`.`campaigntype_id` AS `campaigntype_id`, `u`.`status_id` AS `status_id`, `u`.`user_loginstatus` AS `user_loginstatus`, `r`.`role_name` AS `role_name`, `r`.`role_id` AS `role_id`, `cm`.`campaign_banner` AS `campaign_banner` FROM ((`user` `u` join `role` `r` on(`u`.`role_id` = `r`.`role_id`)) join `campaign` `cm` on(`u`.`campaign_id` = `cm`.`campaign_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `logoorderdetails`
--
DROP TABLE IF EXISTS `logoorderdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `logoorderdetails`  AS SELECT `lo`.`logoorder_id` AS `logoorder_id`, `lo`.`logoorder_amount` AS `logoorder_amount`, `lo`.`logoorder_name` AS `logoorder_name`, `lo`.`logoorder_slogan` AS `logoorder_slogan`, `lo`.`logoorder_describebusiness` AS `logoorder_describebusiness`, `lo`.`logoorder_categorytype` AS `logoorder_categorytype`, `lo`.`logoorder_colorrequirement` AS `logoorder_colorrequirement`, `lo`.`logoorder_fontstyle` AS `logoorder_fontstyle`, `lo`.`logoorder_additionalinformation` AS `logoorder_additionalinformation`, `lo`.`logoorder_token` AS `logoorder_token`, `lo`.`logocategory_id` AS `logocategory_id`, `lo`.`logoorder_paypalinvoicenumber` AS `logoorder_paypalinvoicenumber`, `lo`.`attachment_token` AS `attachment_token`, `lo`.`logoorder_managerpickby` AS `logoorder_managerpickby`, `lo`.`logoorder_workpickby` AS `logoorder_workpickby`, `lo`.`logoorder_billingby` AS `logoorder_billingby`, `lo`.`logoorder_date` AS `logoorder_date`, `lo`.`client_id` AS `client_id`, `lo`.`campaign_id` AS `campaign_id`, `lo`.`orderstatus_id` AS `orderstatus_id`, `lo`.`status_id` AS `status_id`, `lo`.`created_by` AS `created_by`, `lo`.`created_at` AS `created_at`, `lo`.`updated_by` AS `updated_by`, `lo`.`updated_at` AS `updated_at`, `lc`.`logocategory_title` AS `logocategory_title`, `lc`.`logocategory_description` AS `logocategory_description`, `lc`.`logocategory_image` AS `logocategory_image`, `um`.`user_name` AS `managername`, `uw`.`user_name` AS `workername`, `ub`.`user_name` AS `billingname`, `cl`.`client_companyname` AS `client_companyname`, `cl`.`client_contactperson` AS `client_contactperson`, `cl`.`client_officenumber` AS `client_officenumber`, `cl`.`client_email` AS `client_email`, `os`.`orderstatus_name` AS `orderstatus_name`, `uc`.`user_name` AS `creator`, `cm`.`campaigntype_id` AS `campaigntype_id` FROM ((((((((`logoorder` `lo` join `logocategory` `lc` on(`lo`.`logocategory_id` = `lc`.`logocategory_id`)) left join `user` `um` on(`lo`.`logoorder_managerpickby` = `um`.`user_id`)) left join `user` `uw` on(`lo`.`logoorder_workpickby` = `uw`.`user_id`)) left join `user` `ub` on(`lo`.`logoorder_billingby` = `ub`.`user_id`)) join `client` `cl` on(`lo`.`client_id` = `cl`.`client_id`)) join `orderstatus` `os` on(`lo`.`orderstatus_id` = `os`.`orderstatus_id`)) join `user` `uc` on(`lo`.`created_by` = `uc`.`user_id`)) join `campaign` `cm` on(`lo`.`campaign_id` = `cm`.`campaign_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `logoorderlist`
--
DROP TABLE IF EXISTS `logoorderlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `logoorderlist`  AS SELECT `lo`.`logoorder_id` AS `logoorder_id`, `lo`.`logoorder_amount` AS `logoorder_amount`, `lo`.`logoorder_name` AS `logoorder_name`, `lo`.`logoorder_token` AS `logoorder_token`, `lo`.`logoorder_date` AS `logoorder_date`, `lo`.`logoorder_paypalinvoicenumber` AS `logoorder_paypalinvoicenumber`, `lo`.`logoorder_managerpickby` AS `logoorder_managerpickby`, `lo`.`logoorder_billingby` AS `logoorder_billingby`, `lo`.`logoorder_workpickby` AS `logoorder_workpickby`, `lo`.`orderstatus_id` AS `orderstatus_id`, `lo`.`status_id` AS `status_id`, `lo`.`campaign_id` AS `campaign_id`, `lo`.`created_by` AS `created_by`, `cl`.`client_companyname` AS `client_companyname`, `cl`.`client_contactperson` AS `client_contactperson`, `cl`.`client_email` AS `client_email`, `os`.`orderstatus_name` AS `orderstatus_name`, `uc`.`user_name` AS `user_name`, `cm`.`campaigntype_id` AS `campaigntype_id` FROM ((((`logoorder` `lo` join `client` `cl` on(`lo`.`client_id` = `cl`.`client_id`)) join `orderstatus` `os` on(`lo`.`orderstatus_id` = `os`.`orderstatus_id`)) join `user` `uc` on(`lo`.`created_by` = `uc`.`user_id`)) join `campaign` `cm` on(`lo`.`campaign_id` = `cm`.`campaign_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `mergedeallist`
--
DROP TABLE IF EXISTS `mergedeallist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mergedeallist`  AS SELECT `cl`.`client_officenumber` AS `client_officenumber`, `cl`.`client_alternateofficenumber` AS `client_alternateofficenumber`, `u`.`user_name` AS `user_name`, `um`.`user_name` AS `manager_name`, `o`.`order_deadlinedate` AS `order_deadlinedate`, `o`.`order_token` AS `order_token`, `o`.`status_id` AS `status_id`, `md`.`status_id` AS `mergestatus_id`, `o`.`created_at` AS `ordercreated_at`, `o`.`created_by` AS `created_by`, `o`.`order_managerpickby` AS `order_managerpickby`, `o`.`client_id` AS `client_id`, `o`.`campaign_id` AS `campaign_id`, `o`.`order_id` AS `order_id`, `o`.`order_amountquoted` AS `order_amountquoted`, `o`.`order_designname` AS `order_designname`, `o`.`order_billingby` AS `order_billingby`, `o`.`order_paypalinvoicenumber` AS `order_paypalinvoicenumber`, `o`.`order_date` AS `order_date`, `o`.`order_recoverydate` AS `order_recoverydate`, `o`.`order_cancelcomment` AS `order_cancelcomment`, `cl`.`client_companyname` AS `client_companyname`, `cl`.`client_contactperson` AS `client_contactperson`, `cl`.`client_email` AS `client_email`, `os`.`orderstatus_id` AS `orderstatus_id`, `os`.`orderstatus_name` AS `orderstatus_name`, `md`.`mergedeal_token` AS `mergedeal_token`, `md`.`created_at` AS `created_at`, `cm`.`campaigntype_id` AS `campaigntype_id` FROM ((((((`order` `o` join `mergedeal` `md` on(`o`.`order_token` = `md`.`order_token`)) join `client` `cl` on(`o`.`client_id` = `cl`.`client_id`)) join `user` `u` on(`o`.`created_by` = `u`.`user_id`)) left join `user` `um` on(`o`.`order_managerpickby` = `um`.`user_id`)) join `orderstatus` `os` on(`o`.`orderstatus_id` = `os`.`orderstatus_id`)) join `campaign` `cm` on(`o`.`campaign_id` = `cm`.`campaign_id`)) WHERE `o`.`status_id` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `ordercount`
--
DROP TABLE IF EXISTS `ordercount`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ordercount`  AS SELECT count(`order`.`order_id`) AS `editordercount`, `order`.`order_id` AS `order_id`, `order`.`order_token` AS `order_token`, `order`.`order_status` AS `order_status`, `order`.`campaign_id` AS `campaign_id`, `order`.`orderstatus_id` AS `orderstatus_id`, `order`.`order_managerpickby` AS `order_managerpickby`, `order`.`status_id` AS `status_id` FROM `order` ;

-- --------------------------------------------------------

--
-- Structure for view `orderhistory`
--
DROP TABLE IF EXISTS `orderhistory`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `orderhistory`  AS SELECT `o`.`order_amountquoted` AS `order_amountquoted`, `o`.`order_designname` AS `order_designname`, `o`.`order_token` AS `order_token`, `o`.`order_designtype` AS `order_designtype`, `o`.`order_date` AS `order_date`, `cp`.`campaign_campaignname` AS `campaign_name`, `u`.`user_name` AS `work_name`, `au`.`user_name` AS `create_name`, `mn`.`user_name` AS `manager_name`, `c`.`client_email` AS `client_email` FROM (((((`order` `o` left join `user` `u` on(`o`.`order_workpickby` = `u`.`user_id`)) left join `user` `au` on(`o`.`created_by` = `au`.`user_id`)) left join `user` `mn` on(`o`.`order_managerpickby` = `mn`.`user_id`)) join `client` `c` on(`o`.`client_id` = `c`.`client_id`)) join `campaign` `cp` on(`o`.`campaign_id` = `cp`.`campaign_id`)) WHERE `o`.`status_id` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `saifdata`
--
DROP TABLE IF EXISTS `saifdata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `saifdata`  AS SELECT `o`.`order_designname` AS `order_designname`, `o`.`order_date` AS `order_date`, `o`.`order_amountquoted` AS `order_amountquoted`, `os`.`orderstatus_name` AS `orderstatus_name`, `u`.`user_name` AS `user_name` FROM ((`order` `o` join `orderstatus` `os` on(`o`.`orderstatus_id` = `os`.`orderstatus_id`)) join `user` `u` on(`o`.`created_by` = `u`.`user_id`)) WHERE `o`.`status_id` = 1 AND `o`.`campaign_id` = 9 AND `o`.`order_date` between '2022-09-01' and '2022-09-30' ;

-- --------------------------------------------------------

--
-- Structure for view `sentemaillist`
--
DROP TABLE IF EXISTS `sentemaillist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sentemaillist`  AS SELECT `em`.`emailmaster_id` AS `emailmaster_id`, `em`.`emailmaster_token` AS `emailmaster_token`, `em`.`emailmaster_subject` AS `emailmaster_subject`, `em`.`emailmaster_date` AS `emailmaster_date`, `em`.`status_id` AS `status_id`, `em`.`created_by` AS `created_by`, `em`.`created_at` AS `created_at`, `em`.`updated_by` AS `updated_by`, `em`.`updated_at` AS `updated_at`, `em`.`emailmaster_isreceiveorsent` AS `emailmaster_isreceiveorsent`, `ed`.`emailldetail_isreceiveorsent` AS `emailldetail_isreceiveorsent`, `ed`.`emailldetail_body` AS `emailldetail_body`, `ed`.`emailldetail_id` AS `emailldetail_id`, `ed`.`emailldetail_markas` AS `emailldetail_markas`, `ed`.`emailldetail_readstatus` AS `emailldetail_readstatus`, `ed`.`emailsentordraft_id` AS `emailsentordraft_id`, `ed`.`created_by` AS `detailedcreated_by`, `sto`.`emailsendto_email` AS `sendername`, `ed`.`emailldetail_sendby` AS `senderemail`, `em`.`deleted_by` AS `deleted_by`, `ed`.`deleted_by` AS `detaildeleted_by`, `ed`.`status_id` AS `detailstatus_id` FROM (((`emailmaster` `em` join `emailldetail` `ed` on(`em`.`emailmaster_id` = `ed`.`emailmaster_id`)) join `emailuser` `u` on(`ed`.`created_by` = `u`.`emailuser_id`)) join `emailsendto` `sto` on(`ed`.`emailldetail_id` = `sto`.`emailldetail_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `targetlist`
--
DROP TABLE IF EXISTS `targetlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `targetlist`  AS SELECT `ut`.`usertarget_id` AS `usertarget_id`, `ut`.`usertarget_target` AS `usertarget_target`, `ut`.`usertarget_month` AS `usertarget_month`, `ut`.`user_id` AS `user_id`, `u`.`user_name` AS `user_name`, `u`.`user_picture` AS `user_picture`, `ut`.`status_id` AS `status_id`, `ut`.`created_by` AS `created_by`, `ut`.`created_at` AS `created_at`, `ut`.`updated_by` AS `updated_by`, `ut`.`updated_at` AS `updated_at`, `uc`.`user_name` AS `creator` FROM ((`usertarget` `ut` join `user` `u` on(`ut`.`user_id` = `u`.`user_id`)) join `user` `uc` on(`ut`.`created_by` = `uc`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `weborderdetails`
--
DROP TABLE IF EXISTS `weborderdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `weborderdetails`  AS SELECT `wo`.`weborder_id` AS `weborder_id`, `wo`.`weborder_title` AS `weborder_title`, `wo`.`weborder_amount` AS `weborder_amount`, `wo`.`weborder_remainingamount` AS `weborder_remainingamount`, `wo`.`weborder_q1` AS `weborder_q1`, `wo`.`weborder_q2` AS `weborder_q2`, `wo`.`weborder_q3` AS `weborder_q3`, `wo`.`weborder_q4` AS `weborder_q4`, `wo`.`weborder_q5` AS `weborder_q5`, `wo`.`weborder_q6` AS `weborder_q6`, `wo`.`weborder_q7` AS `weborder_q7`, `wo`.`weborder_q8` AS `weborder_q8`, `wo`.`weborder_q9` AS `weborder_q9`, `wo`.`weborder_q10` AS `weborder_q10`, `wo`.`weborder_q11` AS `weborder_q11`, `wo`.`weborder_paypalinvoicenumber` AS `weborder_paypalinvoicenumber`, `wo`.`weborder_token` AS `weborder_token`, `wo`.`weborder_managerpickby` AS `weborder_managerpickby`, `wo`.`weborder_workpickby` AS `weborder_workpickby`, `wo`.`weborder_billingby` AS `weborder_billingby`, `wo`.`weborder_date` AS `weborder_date`, `wo`.`client_id` AS `client_id`, `wo`.`campaign_id` AS `campaign_id`, `wo`.`orderstatus_id` AS `orderstatus_id`, `wo`.`status_id` AS `status_id`, `wo`.`created_by` AS `created_by`, `wo`.`created_at` AS `created_at`, `wo`.`updated_by` AS `updated_by`, `wo`.`updated_at` AS `updated_at`, `um`.`user_name` AS `managername`, `uw`.`user_name` AS `workername`, `ub`.`user_name` AS `billingname`, `cl`.`client_companyname` AS `client_companyname`, `cl`.`client_contactperson` AS `client_contactperson`, `cl`.`client_officenumber` AS `client_officenumber`, `cl`.`client_email` AS `client_email`, `os`.`orderstatus_name` AS `orderstatus_name`, `uc`.`user_name` AS `creator`, `cm`.`campaigntype_id` AS `campaigntype_id` FROM (((((((`weborder` `wo` left join `user` `um` on(`wo`.`weborder_managerpickby` = `um`.`user_id`)) left join `user` `uw` on(`wo`.`weborder_workpickby` = `uw`.`user_id`)) left join `user` `ub` on(`wo`.`weborder_billingby` = `ub`.`user_id`)) join `client` `cl` on(`wo`.`client_id` = `cl`.`client_id`)) join `orderstatus` `os` on(`wo`.`orderstatus_id` = `os`.`orderstatus_id`)) join `user` `uc` on(`wo`.`created_by` = `uc`.`user_id`)) join `campaign` `cm` on(`wo`.`campaign_id` = `cm`.`campaign_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `weborderlist`
--
DROP TABLE IF EXISTS `weborderlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `weborderlist`  AS SELECT `wo`.`weborder_id` AS `weborder_id`, `wo`.`weborder_q1` AS `weborder_q1`, `wo`.`weborder_q2` AS `weborder_q2`, `wo`.`weborder_title` AS `weborder_title`, `wo`.`weborder_amount` AS `weborder_amount`, `wo`.`weborder_remainingamount` AS `weborder_remainingamount`, `wo`.`weborder_q3` AS `weborder_q3`, `wo`.`weborder_q4` AS `weborder_q4`, `wo`.`weborder_q5` AS `weborder_q5`, `wo`.`weborder_q6` AS `weborder_q6`, `wo`.`weborder_q7` AS `weborder_q7`, `wo`.`weborder_q8` AS `weborder_q8`, `wo`.`weborder_q9` AS `weborder_q9`, `wo`.`weborder_q10` AS `weborder_q10`, `wo`.`weborder_q11` AS `weborder_q11`, `wo`.`weborder_paypalinvoicenumber` AS `weborder_paypalinvoicenumber`, `wo`.`weborder_token` AS `weborder_token`, `wo`.`weborder_managerpickby` AS `weborder_managerpickby`, `wo`.`weborder_workpickby` AS `weborder_workpickby`, `wo`.`weborder_billingby` AS `weborder_billingby`, `wo`.`weborder_date` AS `weborder_date`, `wo`.`client_id` AS `client_id`, `wo`.`campaign_id` AS `campaign_id`, `wo`.`orderstatus_id` AS `orderstatus_id`, `wo`.`status_id` AS `status_id`, `wo`.`created_by` AS `created_by`, `wo`.`created_at` AS `created_at`, `wo`.`updated_by` AS `updated_by`, `wo`.`updated_at` AS `updated_at`, `cl`.`client_companyname` AS `client_companyname`, `cl`.`client_contactperson` AS `client_contactperson`, `cl`.`client_email` AS `client_email`, `os`.`orderstatus_name` AS `orderstatus_name`, `uc`.`user_name` AS `user_name`, `cm`.`campaigntype_id` AS `campaigntype_id` FROM ((((`weborder` `wo` join `orderstatus` `os` on(`wo`.`orderstatus_id` = `os`.`orderstatus_id`)) join `user` `uc` on(`wo`.`created_by` = `uc`.`user_id`)) join `client` `cl` on(`wo`.`client_id` = `cl`.`client_id`)) join `campaign` `cm` on(`wo`.`campaign_id` = `cm`.`campaign_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `weborderpaymentlist`
--
DROP TABLE IF EXISTS `weborderpaymentlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `weborderpaymentlist`  AS SELECT `wo`.`weborder_id` AS `weborder_id`, `wo`.`weborder_q1` AS `weborder_q1`, `wo`.`weborder_q2` AS `weborder_q2`, `wo`.`weborder_title` AS `weborder_title`, `wp`.`weborderpayment_amount` AS `weborder_amount`, `wo`.`weborder_q3` AS `weborder_q3`, `wo`.`weborder_q4` AS `weborder_q4`, `wo`.`weborder_q5` AS `weborder_q5`, `wo`.`weborder_q6` AS `weborder_q6`, `wo`.`weborder_q7` AS `weborder_q7`, `wo`.`weborder_q8` AS `weborder_q8`, `wo`.`weborder_q9` AS `weborder_q9`, `wo`.`weborder_q10` AS `weborder_q10`, `wo`.`weborder_q11` AS `weborder_q11`, `wp`.`weborderpayment_paypalinvoicenumber` AS `weborder_paypalinvoicenumber`, `wp`.`weborderpayment_id` AS `weborderpayment_id`, `wo`.`weborder_token` AS `weborder_token`, `wo`.`weborder_managerpickby` AS `weborder_managerpickby`, `wo`.`weborder_workpickby` AS `weborder_workpickby`, `wp`.`weborderpayment_billingby` AS `weborder_billingby`, `wp`.`created_at` AS `weborderpayment_created_at`, `wo`.`weborder_date` AS `weborder_date`, `wo`.`client_id` AS `client_id`, `wo`.`campaign_id` AS `campaign_id`, `wp`.`orderstatus_id` AS `orderstatus_id`, `wp`.`status_id` AS `status_id`, `wo`.`created_by` AS `created_by`, `wo`.`created_at` AS `created_at`, `wo`.`updated_by` AS `updated_by`, `wo`.`updated_at` AS `updated_at`, `ub`.`user_name` AS `billing_by`, `cl`.`client_companyname` AS `client_companyname`, `cl`.`client_contactperson` AS `client_contactperson`, `cl`.`client_email` AS `client_email`, `os`.`orderstatus_name` AS `orderstatus_name`, `uc`.`user_name` AS `user_name`, `cm`.`campaigntype_id` AS `campaigntype_id` FROM ((((((`weborderpayment` `wp` join `weborder` `wo` on(`wp`.`weborder_id` = `wo`.`weborder_id`)) join `client` `cl` on(`wo`.`client_id` = `cl`.`client_id`)) join `user` `uc` on(`wo`.`created_by` = `uc`.`user_id`)) left join `user` `ub` on(`wp`.`weborderpayment_billingby` = `ub`.`user_id`)) join `orderstatus` `os` on(`wp`.`orderstatus_id` = `os`.`orderstatus_id`)) join `campaign` `cm` on(`wo`.`campaign_id` = `cm`.`campaign_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `webpaymentandorderdetail`
--
DROP TABLE IF EXISTS `webpaymentandorderdetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `webpaymentandorderdetail`  AS SELECT `wp`.`weborderpayment_id` AS `weborderpayment_id`, `wp`.`weborderpayment_amount` AS `weborderpayment_amount`, `wp`.`weborderpayment_paypalinvoicenumber` AS `weborderpayment_paypalinvoicenumber`, `wp`.`weborderpayment_date` AS `weborderpayment_date`, `wp`.`weborderpayment_billingby` AS `weborderpayment_billingby`, `wp`.`weborder_id` AS `weborder_id`, `wp`.`orderstatus_id` AS `orderstatus_id`, `wp`.`status_id` AS `status_id`, `wp`.`created_by` AS `created_by`, `wp`.`created_at` AS `created_at`, `wo`.`created_by` AS `order_createdby`, `wo`.`campaign_id` AS `campaign_id` FROM (`weborderpayment` `wp` join `weborder` `wo` on(`wp`.`weborder_id` = `wo`.`weborder_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`attachment_id`);

--
-- Indexes for table `billingmerchant`
--
ALTER TABLE `billingmerchant`
  ADD PRIMARY KEY (`billingmerchant_id`);

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`campaign_id`);

--
-- Indexes for table `campaigntype`
--
ALTER TABLE `campaigntype`
  ADD PRIMARY KEY (`campaigntype_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `clientedit`
--
ALTER TABLE `clientedit`
  ADD PRIMARY KEY (`clientedit_id`);

--
-- Indexes for table `commission`
--
ALTER TABLE `commission`
  ADD PRIMARY KEY (`commission_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `declient`
--
ALTER TABLE `declient`
  ADD PRIMARY KEY (`declient_id`);

--
-- Indexes for table `deitem`
--
ALTER TABLE `deitem`
  ADD PRIMARY KEY (`deitem_id`);

--
-- Indexes for table `demerchant`
--
ALTER TABLE `demerchant`
  ADD PRIMARY KEY (`demerchant_id`);

--
-- Indexes for table `denotes`
--
ALTER TABLE `denotes`
  ADD PRIMARY KEY (`denotes_id`);

--
-- Indexes for table `deorderstatus`
--
ALTER TABLE `deorderstatus`
  ADD PRIMARY KEY (`deorderstatus_id`);

--
-- Indexes for table `depayment`
--
ALTER TABLE `depayment`
  ADD PRIMARY KEY (`depayment_id`);

--
-- Indexes for table `dmebraces`
--
ALTER TABLE `dmebraces`
  ADD PRIMARY KEY (`dmebraces_id`);

--
-- Indexes for table `dmeclient`
--
ALTER TABLE `dmeclient`
  ADD PRIMARY KEY (`dmeclient_id`);

--
-- Indexes for table `dmecommission`
--
ALTER TABLE `dmecommission`
  ADD PRIMARY KEY (`dmecommission_id`);

--
-- Indexes for table `dmedoctor`
--
ALTER TABLE `dmedoctor`
  ADD PRIMARY KEY (`dmedoctor_id`);

--
-- Indexes for table `dmefollowup`
--
ALTER TABLE `dmefollowup`
  ADD PRIMARY KEY (`dmefollowup_id`);

--
-- Indexes for table `dmeinsurance`
--
ALTER TABLE `dmeinsurance`
  ADD PRIMARY KEY (`dmeinsurance_id`);

--
-- Indexes for table `dmemerchant`
--
ALTER TABLE `dmemerchant`
  ADD PRIMARY KEY (`dmemerchant_id`);

--
-- Indexes for table `dmeotherdetails`
--
ALTER TABLE `dmeotherdetails`
  ADD PRIMARY KEY (`dmeotherdetails_id`);

--
-- Indexes for table `dmerawdata`
--
ALTER TABLE `dmerawdata`
  ADD PRIMARY KEY (`dmerawdata_id`);

--
-- Indexes for table `dmeservices`
--
ALTER TABLE `dmeservices`
  ADD PRIMARY KEY (`dmeservices_id`);

--
-- Indexes for table `emailattachment`
--
ALTER TABLE `emailattachment`
  ADD PRIMARY KEY (`emailattachment_id`);

--
-- Indexes for table `emailldetail`
--
ALTER TABLE `emailldetail`
  ADD PRIMARY KEY (`emailldetail_id`);

--
-- Indexes for table `emailmaster`
--
ALTER TABLE `emailmaster`
  ADD PRIMARY KEY (`emailmaster_id`);

--
-- Indexes for table `emailsendto`
--
ALTER TABLE `emailsendto`
  ADD PRIMARY KEY (`emailsendto_id`);

--
-- Indexes for table `emailsentordraft`
--
ALTER TABLE `emailsentordraft`
  ADD PRIMARY KEY (`emailsentordraft_id`);

--
-- Indexes for table `emailtemplate`
--
ALTER TABLE `emailtemplate`
  ADD PRIMARY KEY (`emailtemplate_id`);

--
-- Indexes for table `emailtype`
--
ALTER TABLE `emailtype`
  ADD PRIMARY KEY (`emailtype_id`);

--
-- Indexes for table `emailuser`
--
ALTER TABLE `emailuser`
  ADD PRIMARY KEY (`emailuser_id`);

--
-- Indexes for table `followup`
--
ALTER TABLE `followup`
  ADD PRIMARY KEY (`followup_id`);

--
-- Indexes for table `freshlead`
--
ALTER TABLE `freshlead`
  ADD PRIMARY KEY (`freshlead_id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `groupmember`
--
ALTER TABLE `groupmember`
  ADD PRIMARY KEY (`groupmember_id`);

--
-- Indexes for table `groupmessage`
--
ALTER TABLE `groupmessage`
  ADD PRIMARY KEY (`groupmessage_id`);

--
-- Indexes for table `lead`
--
ALTER TABLE `lead`
  ADD PRIMARY KEY (`lead_id`);

--
-- Indexes for table `leadfollowup`
--
ALTER TABLE `leadfollowup`
  ADD PRIMARY KEY (`leadfollowup_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `logocategory`
--
ALTER TABLE `logocategory`
  ADD PRIMARY KEY (`logocategory_id`);

--
-- Indexes for table `logoorder`
--
ALTER TABLE `logoorder`
  ADD PRIMARY KEY (`logoorder_id`);

--
-- Indexes for table `mergedeal`
--
ALTER TABLE `mergedeal`
  ADD PRIMARY KEY (`mergedeal_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `newlead`
--
ALTER TABLE `newlead`
  ADD PRIMARY KEY (`newlead_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orderstatus`
--
ALTER TABLE `orderstatus`
  ADD PRIMARY KEY (`orderstatus_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `rawclient`
--
ALTER TABLE `rawclient`
  ADD PRIMARY KEY (`rawclient_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `target`
--
ALTER TABLE `target`
  ADD PRIMARY KEY (`target_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `usertarget`
--
ALTER TABLE `usertarget`
  ADD PRIMARY KEY (`usertarget_id`);

--
-- Indexes for table `weborder`
--
ALTER TABLE `weborder`
  ADD PRIMARY KEY (`weborder_id`);

--
-- Indexes for table `weborderpayment`
--
ALTER TABLE `weborderpayment`
  ADD PRIMARY KEY (`weborderpayment_id`);

--
-- Indexes for table `withdrawal`
--
ALTER TABLE `withdrawal`
  ADD PRIMARY KEY (`withdrawal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `attachment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billingmerchant`
--
ALTER TABLE `billingmerchant`
  MODIFY `billingmerchant_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign`
--
ALTER TABLE `campaign`
  MODIFY `campaign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `campaigntype`
--
ALTER TABLE `campaigntype`
  MODIFY `campaigntype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clientedit`
--
ALTER TABLE `clientedit`
  MODIFY `clientedit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commission`
--
ALTER TABLE `commission`
  MODIFY `commission_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `declient`
--
ALTER TABLE `declient`
  MODIFY `declient_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deitem`
--
ALTER TABLE `deitem`
  MODIFY `deitem_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `demerchant`
--
ALTER TABLE `demerchant`
  MODIFY `demerchant_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `denotes`
--
ALTER TABLE `denotes`
  MODIFY `denotes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deorderstatus`
--
ALTER TABLE `deorderstatus`
  MODIFY `deorderstatus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `depayment`
--
ALTER TABLE `depayment`
  MODIFY `depayment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dmebraces`
--
ALTER TABLE `dmebraces`
  MODIFY `dmebraces_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dmeclient`
--
ALTER TABLE `dmeclient`
  MODIFY `dmeclient_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dmecommission`
--
ALTER TABLE `dmecommission`
  MODIFY `dmecommission_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dmedoctor`
--
ALTER TABLE `dmedoctor`
  MODIFY `dmedoctor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dmefollowup`
--
ALTER TABLE `dmefollowup`
  MODIFY `dmefollowup_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dmeinsurance`
--
ALTER TABLE `dmeinsurance`
  MODIFY `dmeinsurance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dmemerchant`
--
ALTER TABLE `dmemerchant`
  MODIFY `dmemerchant_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dmeotherdetails`
--
ALTER TABLE `dmeotherdetails`
  MODIFY `dmeotherdetails_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dmerawdata`
--
ALTER TABLE `dmerawdata`
  MODIFY `dmerawdata_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dmeservices`
--
ALTER TABLE `dmeservices`
  MODIFY `dmeservices_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailattachment`
--
ALTER TABLE `emailattachment`
  MODIFY `emailattachment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailldetail`
--
ALTER TABLE `emailldetail`
  MODIFY `emailldetail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailmaster`
--
ALTER TABLE `emailmaster`
  MODIFY `emailmaster_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailsendto`
--
ALTER TABLE `emailsendto`
  MODIFY `emailsendto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailsentordraft`
--
ALTER TABLE `emailsentordraft`
  MODIFY `emailsentordraft_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailtemplate`
--
ALTER TABLE `emailtemplate`
  MODIFY `emailtemplate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailtype`
--
ALTER TABLE `emailtype`
  MODIFY `emailtype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emailuser`
--
ALTER TABLE `emailuser`
  MODIFY `emailuser_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followup`
--
ALTER TABLE `followup`
  MODIFY `followup_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `freshlead`
--
ALTER TABLE `freshlead`
  MODIFY `freshlead_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groupmember`
--
ALTER TABLE `groupmember`
  MODIFY `groupmember_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groupmessage`
--
ALTER TABLE `groupmessage`
  MODIFY `groupmessage_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead`
--
ALTER TABLE `lead`
  MODIFY `lead_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leadfollowup`
--
ALTER TABLE `leadfollowup`
  MODIFY `leadfollowup_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logocategory`
--
ALTER TABLE `logocategory`
  MODIFY `logocategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `logoorder`
--
ALTER TABLE `logoorder`
  MODIFY `logoorder_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mergedeal`
--
ALTER TABLE `mergedeal`
  MODIFY `mergedeal_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newlead`
--
ALTER TABLE `newlead`
  MODIFY `newlead_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderstatus`
--
ALTER TABLE `orderstatus`
  MODIFY `orderstatus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rawclient`
--
ALTER TABLE `rawclient`
  MODIFY `rawclient_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `target`
--
ALTER TABLE `target`
  MODIFY `target_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usertarget`
--
ALTER TABLE `usertarget`
  MODIFY `usertarget_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weborder`
--
ALTER TABLE `weborder`
  MODIFY `weborder_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weborderpayment`
--
ALTER TABLE `weborderpayment`
  MODIFY `weborderpayment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawal`
--
ALTER TABLE `withdrawal`
  MODIFY `withdrawal_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
