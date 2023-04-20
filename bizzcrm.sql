-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 11:08 PM
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
-- Database: `bizzcrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignppc`
--

CREATE TABLE `assignppc` (
  `assignppc_id` int(11) NOT NULL,
  `assignppc_amount` double DEFAULT NULL,
  `assignppc_month` varchar(255) DEFAULT NULL,
  `assignppc_description` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
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
-- Stand-in structure for view `assignppcdetail`
-- (See below for the actual view)
--
CREATE TABLE `assignppcdetail` (
`assignppc_id` int(11)
,`assignppc_amount` double
,`assignppc_month` varchar(255)
,`assignppc_description` text
,`assignuser_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`assignuser_name` varchar(250)
,`creator` varchar(250)
);

-- --------------------------------------------------------

--
-- Table structure for table `attachmenttype`
--

CREATE TABLE `attachmenttype` (
  `attachmenttype_id` int(11) NOT NULL,
  `attachmenttype_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `basicorderdetail`
-- (See below for the actual view)
--
CREATE TABLE `basicorderdetail` (
`order_id` int(11)
,`order_title` text
,`order_deadlinedate` date
,`order_description` longtext
,`order_token` text
,`order_assignto` varchar(255)
,`ordertype_id` int(11)
,`lead_id` int(11)
,`orderstatus_id` int(11)
,`order_pickby` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`order_date` date
,`ordertype_name` varchar(255)
,`creator` varchar(250)
,`orderstatus_name` varchar(255)
,`brand_id` int(11)
,`lead_name` varchar(255)
,`brand_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `billingfollowup`
--

CREATE TABLE `billingfollowup` (
  `billingfollowup_id` int(11) NOT NULL,
  `billingfollowup_comment` text DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `billingfollowupdetail`
-- (See below for the actual view)
--
CREATE TABLE `billingfollowupdetail` (
`billingfollowup_id` int(11)
,`billingfollowup_comment` text
,`token` varchar(255)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`user_name` varchar(250)
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
  `brand_id` int(11) DEFAULT NULL,
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
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `brand_email` varchar(255) DEFAULT NULL,
  `brand_logo` varchar(255) DEFAULT NULL,
  `brand_cover` varchar(255) DEFAULT NULL,
  `brand_website` varchar(255) DEFAULT NULL,
  `brand_invoicename` varchar(255) DEFAULT NULL,
  `brand_currency` int(11) DEFAULT NULL,
  `brand_description` text DEFAULT NULL,
  `brand_proposalfront` varchar(255) DEFAULT NULL,
  `brand_proposalback` varchar(255) DEFAULT NULL,
  `brand_date` date DEFAULT NULL,
  `brandtype_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`, `brand_email`, `brand_logo`, `brand_cover`, `brand_website`, `brand_invoicename`, `brand_currency`, `brand_description`, `brand_proposalfront`, `brand_proposalback`, `brand_date`, `brandtype_id`, `status_id`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`) VALUES
(1, 'Max Digitizing', 'info@maxdigitizing.com', '2022-12-09_48.142857142857_brand_logo_.png', '2022-12-09_56.857142857143_brand_cover_.jpeg', 'maxdigitizing.com', NULL, 1, 'Digitizing and Vector services.', 'front.jpg', 'back.jpg', '2022-12-09', 1, 1, 1, '2022-12-09 04:07:51', NULL, NULL, NULL, NULL),
(2, 'Global Digitizers', 'info@globaldigitizers.com', '2022-12-09_122.85714285714_brand_logo_.png', '2022-12-09_30.428571428571_brand_cover_.png', 'https://globaldigitizers.com/', NULL, 1, 'Digitizing and Vector services', 'front.jpg', 'back.jpg', '2022-12-09', 1, 1, 1, '2022-12-09 04:14:21', NULL, NULL, NULL, NULL),
(3, 'Star Digitizers', 'info@stardigitizers.com', '2022-12-12_92.857142857143_brand_logo_.png', '2022-12-09_38.714285714286_brand_cover_.png', 'https://stardigitizers.com/', NULL, 2, 'Digitizing and Vector services.', 'front.jpg', 'back.jpg', '2022-12-09', 1, 1, 1, '2022-12-09 04:16:33', 17, '2022-12-12 09:57:18', NULL, NULL),
(4, 'Patch Tripper', 'info@patchtripper.com', '2023-01-26_97.571428571429_brand_logo_.jpeg', 'patchlogo.png', 'http://www.patchtripper.com', 'Patch Tripper', 1, '-', NULL, NULL, '2023-01-13', 2, 1, 17, '2023-01-13 03:46:04', 18, '2023-01-26 03:34:54', NULL, NULL),
(5, 'Avidhaus', 'info@avidhaus.com', '2023-01-13_107.71428571429_brand_logo_.png', NULL, 'avidhaus.com', 'Avidhaus', 1, '-', NULL, NULL, '2023-01-13', 1, 1, 17, '2023-01-13 03:47:43', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `branddetail`
-- (See below for the actual view)
--
CREATE TABLE `branddetail` (
`brand_id` int(11)
,`brand_name` varchar(255)
,`brand_email` varchar(255)
,`brand_logo` varchar(255)
,`brand_cover` varchar(255)
,`brand_website` varchar(255)
,`brand_description` text
,`brand_invoicename` varchar(255)
,`brand_currency` int(11)
,`brand_date` date
,`brandtype_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`brandtype_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `brandtype`
--

CREATE TABLE `brandtype` (
  `brandtype_id` int(11) NOT NULL,
  `brandtype_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brandtype`
--

INSERT INTO `brandtype` (`brandtype_id`, `brandtype_name`, `status_id`) VALUES
(1, 'Digital Marketing', 1),
(2, 'SEO', 2);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `state_id`, `status_id`) VALUES
(1, 'No City', 1, 1),
(2, 'B', 1, 1),
(3, 'C', 52, 1),
(4, 'D', 52, 1);

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
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `status_id`) VALUES
(1, 'USA', 1),
(2, 'Canada', 1),
(3, 'UK', 1);

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
  `brand_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Stand-in structure for view `getsearchleadfollowup`
-- (See below for the actual view)
--
CREATE TABLE `getsearchleadfollowup` (
`searchleadfollowup_id` int(11)
,`searchleadfollowup_comment` text
,`searchlead_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`user_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Table structure for table `lead`
--

CREATE TABLE `lead` (
  `lead_id` int(11) NOT NULL,
  `lead_name` varchar(255) DEFAULT NULL,
  `lead_email` varchar(255) DEFAULT NULL,
  `lead_altemail` varchar(255) DEFAULT NULL,
  `lead_phone` varchar(255) DEFAULT NULL,
  `lead_picture` varchar(255) DEFAULT 'no_image.jpg',
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `lead_zip` varchar(255) DEFAULT NULL,
  `lead_address` varchar(255) DEFAULT NULL,
  `lead_bussinessname` varchar(255) DEFAULT NULL,
  `lead_bussinessemail` varchar(255) DEFAULT NULL,
  `lead_bussinesswebsite` varchar(255) DEFAULT NULL,
  `lead_bussinessphone` varchar(255) DEFAULT NULL,
  `lead_otherdetails` text DEFAULT NULL,
  `lead_pickby` int(11) DEFAULT NULL,
  `lead_islock` int(11) NOT NULL DEFAULT 0,
  `lead_date` date DEFAULT NULL,
  `leadstatus_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `leadtype_id` int(11) DEFAULT NULL,
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
-- Stand-in structure for view `leadcompletedetails`
-- (See below for the actual view)
--
CREATE TABLE `leadcompletedetails` (
`lead_id` int(11)
,`lead_name` varchar(255)
,`lead_email` varchar(255)
,`lead_altemail` varchar(255)
,`lead_phone` varchar(255)
,`lead_picture` varchar(255)
,`city_id` int(11)
,`state_id` int(11)
,`country_id` int(11)
,`lead_zip` varchar(255)
,`lead_address` varchar(255)
,`lead_bussinessname` varchar(255)
,`lead_bussinessemail` varchar(255)
,`lead_bussinesswebsite` varchar(255)
,`lead_bussinessphone` varchar(255)
,`lead_otherdetails` text
,`lead_pickby` int(11)
,`lead_islock` int(11)
,`lead_date` date
,`leadstatus_id` int(11)
,`brand_id` int(11)
,`leadtype_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`leadstatus_name` varchar(255)
,`country_name` varchar(255)
,`state_name` varchar(255)
,`city_name` varchar(255)
,`brand_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `leaddetail`
-- (See below for the actual view)
--
CREATE TABLE `leaddetail` (
`lead_id` int(11)
,`lead_name` varchar(255)
,`lead_email` varchar(255)
,`lead_altemail` varchar(255)
,`lead_phone` varchar(255)
,`city_id` int(11)
,`state_id` int(11)
,`country_id` int(11)
,`lead_zip` varchar(255)
,`lead_address` varchar(255)
,`lead_bussinessname` varchar(255)
,`lead_bussinessemail` varchar(255)
,`lead_bussinesswebsite` varchar(255)
,`lead_bussinessphone` varchar(255)
,`lead_otherdetails` text
,`lead_pickby` int(11)
,`lead_islock` int(11)
,`lead_date` date
,`leadstatus_id` int(11)
,`brand_id` int(11)
,`leadtype_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`leadstatus_name` varchar(255)
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
-- Table structure for table `leadgenerate`
--

CREATE TABLE `leadgenerate` (
  `leadgenerate_id` int(11) NOT NULL,
  `leadgenerate_date` date DEFAULT NULL,
  `leadstatus_id` int(11) DEFAULT NULL,
  `lead_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
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
-- Table structure for table `leadstatus`
--

CREATE TABLE `leadstatus` (
  `leadstatus_id` int(11) NOT NULL,
  `leadstatus_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leadstatus`
--

INSERT INTO `leadstatus` (`leadstatus_id`, `leadstatus_name`, `status_id`) VALUES
(1, 'Forwarded To Sales', 1),
(2, 'Pick By Sales', 1),
(3, 'Client', 1),
(4, 'Cancel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `leadtype`
--

CREATE TABLE `leadtype` (
  `leadtype_id` int(11) NOT NULL,
  `leadtype_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leadtype`
--

INSERT INTO `leadtype` (`leadtype_id`, `leadtype_name`) VALUES
(1, 'Auto'),
(2, 'Manual');

-- --------------------------------------------------------

--
-- Stand-in structure for view `loginuserinfo`
-- (See below for the actual view)
--
CREATE TABLE `loginuserinfo` (
`user_id` int(11)
,`user_name` varchar(250)
,`user_email` varchar(250)
,`user_username` varchar(250)
,`user_password` text
,`user_target` decimal(10,0)
,`user_picture` text
,`user_coverpicture` text
,`user_loginstatus` varchar(250)
,`user_token` text
,`role_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`role_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `memberstasklist`
-- (See below for the actual view)
--
CREATE TABLE `memberstasklist` (
`task_id` int(11)
,`task_title` text
,`task_description` longtext
,`task_token` text
,`task_date` date
,`task_deadlinedate` date
,`task_manager` int(11)
,`task_cover` varchar(255)
,`task_covertype` varchar(255)
,`task_workby` int(11)
,`order_id` int(11)
,`order_token` text
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`creator` varchar(250)
,`taskstatus_id` int(11)
,`taskstatus_name` varchar(255)
,`brand_id` int(11)
,`taskuser_id` int(11)
,`memberstatus_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `merchant`
--

CREATE TABLE `merchant` (
  `merchant_id` int(11) NOT NULL,
  `merchant_name` varchar(255) DEFAULT NULL,
  `merchant_fee` double DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mergedeal`
--

CREATE TABLE `mergedeal` (
  `mergedeal_id` int(11) NOT NULL,
  `mergedeal_token` text DEFAULT NULL,
  `order_token` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `mergepaymentdetails`
-- (See below for the actual view)
--
CREATE TABLE `mergepaymentdetails` (
`orderpayment_id` int(11)
,`orderpayment_title` text
,`orderpayment_amount` double
,`orderpayment_date` date
,`orderpayment_duedate` date
,`orderpayment_paiddate` date
,`orderpayment_recoverydate` date
,`orderpayment_callbackdate` date
,`orderpayment_lastpaiddate` date
,`orderpayment_callbackcomment` text
,`orderpayment_pickby` int(11)
,`orderpayment_token` text
,`orderpayment_invoiceno` text
,`merchant_id` int(11)
,`orderpayment_comment` text
,`order_id` int(11)
,`order_token` text
,`orderpaymentstatus_id` int(11)
,`status_id` int(11)
,`orderstatus` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`order_title` text
,`user_name` varchar(250)
,`user_picture` text
,`orderpaymentstatus_name` varchar(255)
,`lead_id` int(11)
,`lead_name` varchar(255)
,`lead_email` varchar(255)
,`brand_id` int(11)
,`mergedeal_token` text
);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `notes_id` int(11) NOT NULL,
  `notes_title` varchar(255) DEFAULT NULL,
  `notes_token` varchar(255) DEFAULT NULL,
  `notes_description` text DEFAULT NULL,
  `notes_date` date DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oldcrmpaidpayment`
--

CREATE TABLE `oldcrmpaidpayment` (
  `oldcrmpaidpayment_id` int(11) NOT NULL,
  `order_token` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oldorder`
--

CREATE TABLE `oldorder` (
  `oldorder_id` int(11) NOT NULL,
  `oldorder_amount` double DEFAULT NULL,
  `oldorder_name` varchar(255) DEFAULT NULL,
  `oldorder_type` varchar(255) DEFAULT NULL,
  `oldorder_token` varchar(255) DEFAULT NULL,
  `oldorder_date` date DEFAULT NULL,
  `oldorder_creator` varchar(255) DEFAULT NULL,
  `oldorder_worker` varchar(255) DEFAULT NULL,
  `oldorder_manager` varchar(255) DEFAULT NULL,
  `oldorder_clientemail` varchar(255) DEFAULT NULL,
  `oldorder_campaign` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `order_title` text DEFAULT NULL,
  `order_deadlinedate` date DEFAULT NULL,
  `order_description` longtext DEFAULT NULL,
  `order_assignto` varchar(255) DEFAULT NULL,
  `order_token` text DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `ordertype_id` int(11) DEFAULT NULL,
  `order_pickby` int(11) DEFAULT NULL,
  `lead_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `orderstatus_id` int(11) DEFAULT NULL,
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
-- Table structure for table `orderattachment`
--

CREATE TABLE `orderattachment` (
  `orderattachment_id` int(11) NOT NULL,
  `orderattachment_name` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_token` text DEFAULT NULL,
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
-- Table structure for table `orderpayment`
--

CREATE TABLE `orderpayment` (
  `orderpayment_id` int(11) NOT NULL,
  `orderpayment_title` text DEFAULT NULL,
  `orderpayment_amount` double DEFAULT NULL,
  `orderpayment_duedate` date DEFAULT NULL,
  `orderpayment_date` date DEFAULT NULL,
  `orderpayment_paiddate` date DEFAULT NULL,
  `orderpayment_recoverydate` date DEFAULT NULL,
  `orderpayment_pickby` int(11) DEFAULT NULL,
  `orderpayment_token` text DEFAULT NULL,
  `orderpayment_invoiceno` text DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `orderpayment_comment` text DEFAULT NULL,
  `orderpayment_callbackcomment` text DEFAULT NULL,
  `orderpayment_callbackdate` date DEFAULT NULL,
  `orderpayment_lastpaiddate` date DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `ordertype_id` int(11) DEFAULT NULL,
  `lead_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `order_token` text DEFAULT NULL,
  `orderpaymentstatus_id` int(11) DEFAULT 1,
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
-- Stand-in structure for view `orderpaymentdetails`
-- (See below for the actual view)
--
CREATE TABLE `orderpaymentdetails` (
`orderpayment_id` int(11)
,`orderpayment_title` text
,`orderpayment_amount` double
,`orderpayment_date` date
,`orderpayment_duedate` date
,`orderpayment_paiddate` date
,`orderpayment_recoverydate` date
,`orderpayment_callbackdate` date
,`orderpayment_lastpaiddate` date
,`orderpayment_callbackcomment` text
,`orderpayment_pickby` int(11)
,`orderpayment_token` text
,`orderpayment_invoiceno` text
,`merchant_id` int(11)
,`orderpayment_comment` text
,`order_id` int(11)
,`order_token` text
,`orderpaymentstatus_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`order_title` text
,`user_name` varchar(250)
,`user_picture` text
,`orderpaymentstatus_name` varchar(255)
,`lead_id` int(11)
,`lead_name` varchar(255)
,`lead_email` varchar(255)
,`brand_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `orderpaymentstatus`
--

CREATE TABLE `orderpaymentstatus` (
  `orderpaymentstatus_id` int(11) NOT NULL,
  `orderpaymentstatus_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderpaymentstatus`
--

INSERT INTO `orderpaymentstatus` (`orderpaymentstatus_id`, `orderpaymentstatus_name`, `status_id`) VALUES
(1, 'Pending', 1),
(2, 'Invoice Sent', 1),
(3, 'Paid', 1),
(4, 'Cancel', 1),
(5, 'Refund', 1),
(6, 'Charge Back', 1),
(7, 'Recovery', 1),
(8, 'Forwarded', 1),
(9, 'Picked', 1),
(10, 'Call Back', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderqa`
--

CREATE TABLE `orderqa` (
  `orderqa_id` int(11) NOT NULL,
  `orderqa_answer` text DEFAULT NULL,
  `orderquestion_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_token` text DEFAULT NULL,
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
-- Table structure for table `orderquestion`
--

CREATE TABLE `orderquestion` (
  `orderquestion_id` int(11) NOT NULL,
  `orderquestion_name` text DEFAULT NULL,
  `ordertype_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderquestion`
--

INSERT INTO `orderquestion` (`orderquestion_id`, `orderquestion_name`, `ordertype_id`, `status_id`) VALUES
(1, 'Additional Instructions?', 2, 1),
(2, 'Height?', 2, 1),
(3, 'Width?', 2, 1),
(4, 'Format?', 2, 1),
(5, 'No. Of Colors?', 2, 1),
(6, 'Color Blending?', 2, 1),
(7, 'Color Separation?', 2, 1),
(8, 'Background Fill?', 2, 1),
(9, 'Fabric?', 3, 1),
(10, 'No Of Stitches?', 3, 1),
(11, 'Placement?', 3, 1),
(12, 'Level?', 3, 1),
(13, 'Do You Want to Build a New Website or Redesign an Existing One?', 4, 1),
(14, 'Describe Your Business in a Few Sentences.', 4, 1),
(15, 'What Services Do You Offer?', 4, 1),
(16, 'Who Is Your Target Audience?', 4, 1),
(17, 'What Makes Your Services Unique?', 4, 1),
(18, 'What Features Does Your Website Need to Be Successful?', 4, 1),
(19, 'What Are Three of Your Favorite Websites?', 4, 1),
(20, 'Are You Interested in Content Marketing Services?', 4, 1),
(21, 'Would You Like Us to Provide Ongoing Support and Maintenance?', 4, 1),
(22, 'Do You Have Any Existing Style Guides and Guidelines?', 4, 1),
(23, 'Additional Instructions?', 3, 1),
(24, 'Height?', 3, 1),
(25, 'Width?', 3, 1),
(26, 'Format?', 3, 1),
(27, 'No. Of Colors?', 3, 1),
(28, 'Color Blending?', 3, 1),
(29, 'Background Fill?', 3, 1),
(30, 'Font Based?', 1, 1),
(31, 'Icon Based?', 1, 1),
(32, 'Font?', 1, 1),
(33, 'Color Requirement?', 1, 1),
(34, 'Font Style?', 1, 1),
(35, 'Additional Instructions?', 1, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `orderquestiondetail`
-- (See below for the actual view)
--
CREATE TABLE `orderquestiondetail` (
`orderqa_id` int(11)
,`orderqa_answer` text
,`orderquestion_id` int(11)
,`order_id` int(11)
,`order_token` text
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`orderquestion_name` text
);

-- --------------------------------------------------------

--
-- Table structure for table `orderrefrence`
--

CREATE TABLE `orderrefrence` (
  `orderrefrence_id` int(11) NOT NULL,
  `orderrefrence_title` text DEFAULT NULL,
  `orderrefrence_link` text DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_token` text DEFAULT NULL,
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
-- Table structure for table `orderstatus`
--

CREATE TABLE `orderstatus` (
  `orderstatus_id` int(11) NOT NULL,
  `orderstatus_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderstatus`
--

INSERT INTO `orderstatus` (`orderstatus_id`, `orderstatus_name`, `status_id`) VALUES
(1, 'Save By Sales', 1),
(2, 'Forwarded To Production', 1),
(3, 'Pick By Production', 1),
(4, 'Assigned', 1),
(5, 'Complete', 1),
(6, 'Cancel', 1),
(7, 'Hault', 1),
(8, 'Sent To Client', 1),
(9, 'Edit By Client', 1),
(10, 'Edit Fixed', 1),
(11, 'Approved', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ordertype`
--

CREATE TABLE `ordertype` (
  `ordertype_id` int(11) NOT NULL,
  `ordertype_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordertype`
--

INSERT INTO `ordertype` (`ordertype_id`, `ordertype_name`, `status_id`) VALUES
(1, 'Logo', 1),
(2, 'Vector', 1),
(3, 'Digitizing', 1),
(4, 'Web Development', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `orderwithpayment`
-- (See below for the actual view)
--
CREATE TABLE `orderwithpayment` (
`orderpayment_amount` double
,`orderpayment_id` int(11)
,`orderpayment_date` date
,`orderpayment_recoverydate` date
,`created_by` int(11)
,`orderpaymentstatus_id` int(11)
,`status_id` int(11)
,`ordertype_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `patch`
--

CREATE TABLE `patch` (
  `patch_id` int(11) NOT NULL,
  `patch_title` varchar(255) DEFAULT NULL,
  `patch_height` varchar(255) DEFAULT NULL,
  `patch_width` varchar(255) DEFAULT NULL,
  `patch_quantity` int(11) DEFAULT NULL,
  `patch_amount` double DEFAULT NULL,
  `patch_deliverycost` double DEFAULT NULL,
  `patch_vendorcost` double DEFAULT NULL,
  `patch_shippingaddress` varchar(255) DEFAULT NULL,
  `patch_isorderorsample` varchar(255) DEFAULT NULL,
  `patchtype_id` int(11) DEFAULT NULL,
  `patchback_id` int(11) DEFAULT NULL,
  `vendorproduction_id` int(11) DEFAULT NULL,
  `vendordelivery_id` int(11) DEFAULT NULL,
  `patch_otherdetails` text DEFAULT NULL,
  `patch_date` date DEFAULT NULL,
  `patch_biillingby` int(11) DEFAULT NULL,
  `patch_biillingstatus` varchar(255) DEFAULT 'Pending',
  `patchstatus_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `lead_id` int(11) DEFAULT NULL,
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
-- Table structure for table `patchattachment`
--

CREATE TABLE `patchattachment` (
  `patchattachment_id` int(11) NOT NULL,
  `patchattachment_name` text DEFAULT NULL,
  `patch_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patchback`
--

CREATE TABLE `patchback` (
  `patchback_id` int(11) NOT NULL,
  `patchback_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patchback`
--

INSERT INTO `patchback` (`patchback_id`, `patchback_name`, `status_id`) VALUES
(1, 'Heat seal / Iron on', 1),
(2, 'Velcro (Both Hook and loop)', 1),
(3, 'Peel & Stick', 1),
(4, 'Sew on', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `patchdetails`
-- (See below for the actual view)
--
CREATE TABLE `patchdetails` (
`patch_id` int(11)
,`patch_title` varchar(255)
,`patch_height` varchar(255)
,`patch_width` varchar(255)
,`patch_quantity` int(11)
,`patch_amount` double
,`patch_isorderorsample` varchar(255)
,`patch_deliverycost` double
,`patch_shippingaddress` varchar(255)
,`patchtype_id` int(11)
,`patchback_id` int(11)
,`vendorproduction_id` int(11)
,`patch_vendorcost` double
,`vendordelivery_id` int(11)
,`patch_otherdetails` text
,`patch_date` date
,`patch_biillingby` int(11)
,`patchstatus_id` int(11)
,`brand_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`patchtype_name` varchar(255)
,`patchback_name` varchar(255)
,`production_vendor` varchar(255)
,`delivery_vendor` varchar(255)
,`patchstatus_name` varchar(255)
,`brand_name` varchar(255)
,`user_name` varchar(250)
,`billingby` varchar(250)
,`lead_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `patchorderlist`
-- (See below for the actual view)
--
CREATE TABLE `patchorderlist` (
`patch_id` int(11)
,`patch_title` varchar(255)
,`patch_height` varchar(255)
,`patch_width` varchar(255)
,`patch_quantity` int(11)
,`patch_amount` double
,`patch_deliverycost` double
,`patch_shippingaddress` varchar(255)
,`patchtype_id` int(11)
,`patchback_id` int(11)
,`vendorproduction_id` int(11)
,`vendordelivery_id` int(11)
,`patch_otherdetails` text
,`patch_date` date
,`patch_biillingby` int(11)
,`patch_biillingstatus` varchar(255)
,`patchstatus_id` int(11)
,`brand_id` int(11)
,`lead_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`patchstatus_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `patchpayment`
--

CREATE TABLE `patchpayment` (
  `patchpayment_id` int(11) NOT NULL,
  `patchpayment_amount` double DEFAULT NULL,
  `patchpayment_comment` text DEFAULT NULL,
  `patchpaymenttype_id` int(11) DEFAULT NULL,
  `patch_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `patchpaymentdetails`
-- (See below for the actual view)
--
CREATE TABLE `patchpaymentdetails` (
`patchpayment_id` int(11)
,`patchpayment_amount` double
,`patchpayment_comment` text
,`patchpaymenttype_id` int(11)
,`patch_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`patchpaymenttype_name` varchar(255)
,`user_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Table structure for table `patchpaymenttype`
--

CREATE TABLE `patchpaymenttype` (
  `patchpaymenttype_id` int(11) NOT NULL,
  `patchpaymenttype_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patchpaymenttype`
--

INSERT INTO `patchpaymenttype` (`patchpaymenttype_id`, `patchpaymenttype_name`, `status_id`) VALUES
(1, 'Vendor', 1),
(2, 'Shipment', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patchproposal`
--

CREATE TABLE `patchproposal` (
  `patchproposal_id` int(11) NOT NULL,
  `patchproposal_stiches` int(11) DEFAULT NULL,
  `patchproposal_colors` int(11) DEFAULT NULL,
  `patchproposal_colorchanges` int(11) DEFAULT NULL,
  `patchproposal_stops` int(11) DEFAULT NULL,
  `patchproposal_machine` varchar(255) DEFAULT NULL,
  `patchproposal_trims` int(11) DEFAULT NULL,
  `patchquery_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patchquery`
--

CREATE TABLE `patchquery` (
  `patchquery_id` int(11) NOT NULL,
  `patchquery_clientname` varchar(255) DEFAULT NULL,
  `patchquery_clientemail` varchar(255) DEFAULT NULL,
  `patchquery_clientphone` varchar(255) DEFAULT NULL,
  `patchquery_clientzip` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `patchquery_clientaddress` varchar(255) DEFAULT NULL,
  `patchquery_clientbussinessname` varchar(255) DEFAULT NULL,
  `patchquery_clientbussinessemail` varchar(255) DEFAULT NULL,
  `patchquery_clientbussinesswebsite` varchar(255) DEFAULT NULL,
  `patchquery_clientbussinessphone` varchar(255) DEFAULT NULL,
  `patchquery_potential` varchar(255) DEFAULT NULL,
  `patchquery_title` varchar(255) DEFAULT NULL,
  `patchquery_medium` varchar(255) DEFAULT NULL,
  `patchquery_shippingaddress` varchar(255) DEFAULT NULL,
  `patchquery_clientbudget` double DEFAULT NULL,
  `patchqueryshipping_id` int(11) DEFAULT NULL,
  `vendordelivery_id` int(11) DEFAULT NULL,
  `patchquery_isorderorsample` varchar(255) DEFAULT '-',
  `patchquery_modeofpayments` varchar(255) DEFAULT NULL,
  `patchquery_otherdetails` text DEFAULT NULL,
  `patchquery_islead` int(11) DEFAULT NULL,
  `patchquery_rejectcomment` varchar(255) DEFAULT NULL,
  `patchquery_date` date DEFAULT NULL,
  `patchquery_manager` int(11) DEFAULT NULL,
  `patchquerystatus_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
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
-- Table structure for table `patchqueryattachment`
--

CREATE TABLE `patchqueryattachment` (
  `patchqueryattachment_id` int(11) NOT NULL,
  `patchqueryattachment_name` text NOT NULL,
  `patchquery_id` int(11) DEFAULT NULL,
  `patchqueryattachmenttype_id` int(11) DEFAULT 1,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patchqueryattachmenttype`
--

CREATE TABLE `patchqueryattachmenttype` (
  `patchqueryattachmenttype_id` int(11) NOT NULL,
  `patchqueryattachmenttype_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patchqueryattachmenttype`
--

INSERT INTO `patchqueryattachmenttype` (`patchqueryattachmenttype_id`, `patchqueryattachmenttype_name`) VALUES
(1, 'Client'),
(2, 'Vendor'),
(3, 'Proposal');

-- --------------------------------------------------------

--
-- Table structure for table `patchquerycategory`
--

CREATE TABLE `patchquerycategory` (
  `patchquerycategory_id` int(11) NOT NULL,
  `patchquerycategory_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patchquerycategory`
--

INSERT INTO `patchquerycategory` (`patchquerycategory_id`, `patchquerycategory_name`, `status_id`) VALUES
(1, 'Patches', 1),
(2, 'Caps', 1),
(3, 'Leather Jackets', 1),
(4, 'Leather Bags', 1),
(5, 'Leather wallets', 1),
(6, 'Leather Belts', 1),
(7, 'Sublimation T-shirts', 1),
(8, 'T-shirts', 1),
(9, 'Polo', 1),
(10, 'Rash Guard', 1),
(11, 'Sports Bra', 1),
(12, 'Track Suit', 1),
(13, 'Hoodie', 1),
(14, 'Compression Pants', 1),
(15, 'Standard Singlets', 1),
(16, 'Basketball Uniform', 1),
(17, 'Karate GI', 1),
(18, 'BJJ GI', 1),
(19, 'Martial Art Belts', 1),
(20, 'Boxing Gloves', 1),
(21, 'Boxing Shorts', 1),
(22, 'Sand Bags', 1),
(23, 'Chest Guard', 1),
(24, 'Focus Mitts', 1),
(25, 'Head Guard', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `patchquerydetails`
-- (See below for the actual view)
--
CREATE TABLE `patchquerydetails` (
`patchquery_id` int(11)
,`patchquery_clientname` varchar(255)
,`patchquery_clientemail` varchar(255)
,`patchquery_clientphone` varchar(255)
,`patchquery_clientzip` varchar(255)
,`country_id` int(11)
,`state_id` int(11)
,`patchquery_clientaddress` varchar(255)
,`patchquery_clientbussinessname` varchar(255)
,`patchquery_clientbussinessemail` varchar(255)
,`patchquery_clientbussinesswebsite` varchar(255)
,`patchquery_clientbussinessphone` varchar(255)
,`patchquery_potential` varchar(255)
,`patchquery_title` varchar(255)
,`patchquery_medium` varchar(255)
,`patchquery_shippingaddress` varchar(255)
,`patchquery_clientbudget` double
,`patchqueryshipping_id` int(11)
,`patchquery_otherdetails` text
,`patchquery_islead` int(11)
,`patchquery_rejectcomment` varchar(255)
,`patchquery_date` date
,`patchquery_manager` int(11)
,`patchquerystatus_id` int(11)
,`brand_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`manager_name` varchar(250)
,`patchquerystatus_name` varchar(255)
,`brand_name` varchar(255)
,`creator` varchar(250)
,`country_name` varchar(255)
,`state_name` varchar(255)
,`vendordelivery_id` int(11)
,`deliveryvendor_name` varchar(255)
,`patchquery_isorderorsample` varchar(255)
,`patchquery_modeofpayments` varchar(255)
,`patchqueryshipping_weight` varchar(255)
,`patchqueryshipping_cost` double
);

-- --------------------------------------------------------

--
-- Table structure for table `patchqueryfollowup`
--

CREATE TABLE `patchqueryfollowup` (
  `patchqueryfollowup_id` int(11) NOT NULL,
  `patchqueryfollowup_comment` text DEFAULT NULL,
  `patchquery_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `patchqueryfollowupdetail`
-- (See below for the actual view)
--
CREATE TABLE `patchqueryfollowupdetail` (
`patchqueryfollowup_id` int(11)
,`patchqueryfollowup_comment` text
,`patchquery_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`user_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Table structure for table `patchqueryitem`
--

CREATE TABLE `patchqueryitem` (
  `patchqueryitem_id` int(11) NOT NULL,
  `patchqueryitem_quantity` varchar(255) DEFAULT NULL,
  `patchqueryitem_height` varchar(255) DEFAULT NULL,
  `patchqueryitem_width` varchar(255) DEFAULT NULL,
  `patchtype_id` int(11) DEFAULT NULL,
  `patchback_id` int(11) DEFAULT NULL,
  `patchqueryitem_otherdetails` text DEFAULT NULL,
  `patchqueryitem_marketcost` double DEFAULT NULL,
  `patchqueryitem_costattachment` varchar(255) DEFAULT NULL,
  `patchqueryitem_proposalquote` double DEFAULT NULL,
  `patchqueryitem_finalvendor` int(11) DEFAULT NULL,
  `patchquerycategory_id` int(11) DEFAULT NULL,
  `patchquery_id` int(11) DEFAULT NULL,
  `patchqueryitem_date` date DEFAULT NULL,
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
-- Table structure for table `patchqueryitemattachment`
--

CREATE TABLE `patchqueryitemattachment` (
  `patchqueryitemattachment_id` int(11) NOT NULL,
  `patchqueryitemattachment_name` varchar(255) DEFAULT NULL,
  `patchqueryitem_id` int(11) DEFAULT NULL,
  `patchquery_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `patchqueryitemdetails`
-- (See below for the actual view)
--
CREATE TABLE `patchqueryitemdetails` (
`patchqueryitem_id` int(11)
,`patchqueryitem_quantity` varchar(255)
,`patchqueryitem_height` varchar(255)
,`patchqueryitem_width` varchar(255)
,`patchtype_id` int(11)
,`patchback_id` int(11)
,`patchqueryitem_otherdetails` text
,`patchqueryitem_marketcost` double
,`patchqueryitem_costattachment` varchar(255)
,`patchqueryitem_proposalquote` double
,`patchqueryitem_finalvendor` int(11)
,`patchquerycategory_id` int(11)
,`patchquery_id` int(11)
,`patchqueryitem_date` date
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`patchquerycategory_name` varchar(255)
,`fianlvendor_name` varchar(255)
,`patchtype_name` varchar(255)
,`patchback_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `patchqueryitemvendordetails`
-- (See below for the actual view)
--
CREATE TABLE `patchqueryitemvendordetails` (
`patchqueryvendor_id` int(11)
,`vendorproduction_id` int(11)
,`patchqueryvendor_cost` double
,`patchqueryvendor_productiondays` int(11)
,`patchqueryitem_id` int(11)
,`patchquery_id` int(11)
,`status_id` int(11)
,`vendor_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `patchquerylist`
-- (See below for the actual view)
--
CREATE TABLE `patchquerylist` (
`patchquery_id` int(11)
,`patchquery_clientname` varchar(255)
,`patchquery_clientemail` varchar(255)
,`patchquery_clientphone` varchar(255)
,`patchquery_clientzip` varchar(255)
,`country_id` int(11)
,`state_id` int(11)
,`patchquery_clientaddress` varchar(255)
,`patchquery_clientbussinessname` varchar(255)
,`patchquery_clientbussinessemail` varchar(255)
,`patchquery_clientbussinesswebsite` varchar(255)
,`patchquery_clientbussinessphone` varchar(255)
,`patchquery_title` varchar(255)
,`patchquery_isorderorsample` varchar(255)
,`patchquery_medium` varchar(255)
,`patchquery_shippingaddress` varchar(255)
,`patchquery_clientbudget` double
,`patchqueryshipping_id` int(11)
,`patchquery_otherdetails` text
,`patchquery_islead` int(11)
,`patchquery_rejectcomment` varchar(255)
,`patchquery_date` date
,`patchquery_manager` int(11)
,`patchquerystatus_id` int(11)
,`brand_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`user_name` varchar(250)
,`patchquerystatus_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `patchqueryshipping`
--

CREATE TABLE `patchqueryshipping` (
  `patchqueryshipping_id` int(11) NOT NULL,
  `patchqueryshipping_weight` varchar(255) DEFAULT NULL,
  `patchqueryshipping_cost` double DEFAULT NULL,
  `vendordelivery_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patchquerystatus`
--

CREATE TABLE `patchquerystatus` (
  `patchquerystatus_id` int(11) NOT NULL,
  `patchquerystatus_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patchquerystatus`
--

INSERT INTO `patchquerystatus` (`patchquerystatus_id`, `patchquerystatus_name`, `status_id`) VALUES
(1, 'Forwarded To Manager', 1),
(2, 'Forwarded To Vendor', 1),
(3, 'Return To Manager', 1),
(4, 'Return To Agent', 1),
(5, 'Sent To Client', 1),
(6, 'Approve By Client', 1),
(7, 'Reject By Client', 1),
(8, 'Edit By Client', 1),
(9, 'Pick By Manager', 1),
(10, 'Paid', 1),
(11, 'OnBoard', 1),
(12, 'Delivered', 1),
(13, 'Call Back', 1),
(14, 'Call Done', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patchqueryvendor`
--

CREATE TABLE `patchqueryvendor` (
  `patchqueryvendor_id` int(11) NOT NULL,
  `patchqueryvendor_cost` double DEFAULT NULL,
  `patchqueryvendor_productiondays` int(11) DEFAULT NULL,
  `vendorproduction_id` int(11) DEFAULT NULL,
  `patchqueryvendor_proposal` varchar(255) DEFAULT NULL,
  `patchqueryitem_id` int(11) DEFAULT NULL,
  `patchquery_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patchstatus`
--

CREATE TABLE `patchstatus` (
  `patchstatus_id` int(11) NOT NULL,
  `patchstatus_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patchstatus`
--

INSERT INTO `patchstatus` (`patchstatus_id`, `patchstatus_name`, `status_id`) VALUES
(1, 'Forward To Production', 1),
(2, 'Return From Production', 1),
(3, 'On Delivery', 1),
(4, 'Delivered', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patchtype`
--

CREATE TABLE `patchtype` (
  `patchtype_id` int(11) NOT NULL,
  `patchtype_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patchtype`
--

INSERT INTO `patchtype` (`patchtype_id`, `patchtype_name`, `status_id`) VALUES
(1, 'Embroidery', 1),
(2, 'Printed', 1),
(3, 'Chenille', 1),
(4, 'PVC', 1),
(5, 'Leather', 1),
(6, 'Woven', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ppc`
--

CREATE TABLE `ppc` (
  `ppc_id` int(11) NOT NULL,
  `ppc_amount` double DEFAULT NULL,
  `ppc_date` date DEFAULT NULL,
  `ppc_description` text DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
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
-- Stand-in structure for view `ppcdetail`
-- (See below for the actual view)
--
CREATE TABLE `ppcdetail` (
`ppc_id` int(11)
,`ppc_amount` double
,`ppc_date` date
,`ppc_description` text
,`brand_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`brand_name` varchar(255)
,`user_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE `quote` (
  `quote_id` int(11) NOT NULL,
  `quote_title` text DEFAULT NULL,
  `quote_deadlinedate` date DEFAULT NULL,
  `quote_minbudget` double DEFAULT NULL,
  `quote_maxbudget` double DEFAULT NULL,
  `quote_description` text DEFAULT NULL,
  `quote_projecttype` text DEFAULT NULL,
  `quote_feature` text DEFAULT NULL,
  `quote_devplatform` text DEFAULT NULL,
  `quote_refrence` mediumtext DEFAULT NULL,
  `quote_comment` text DEFAULT NULL,
  `quote_days` int(11) DEFAULT NULL,
  `quote_sumcost` double DEFAULT NULL,
  `quote_assignedusers` varchar(255) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `quotestatus_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
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
-- Table structure for table `quoteattachment`
--

CREATE TABLE `quoteattachment` (
  `quoteattachment_id` int(11) NOT NULL,
  `quoteattachment_name` varchar(255) DEFAULT NULL,
  `quote_id` int(11) DEFAULT NULL,
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
-- Stand-in structure for view `quotedetails`
-- (See below for the actual view)
--
CREATE TABLE `quotedetails` (
`quote_id` int(11)
,`quote_title` text
,`quote_deadlinedate` date
,`quote_minbudget` double
,`quote_maxbudget` double
,`quote_description` text
,`quote_projecttype` text
,`quote_feature` text
,`quote_devplatform` text
,`quote_refrence` mediumtext
,`quote_comment` text
,`quote_days` int(11)
,`quote_sumcost` double
,`quote_assignedusers` varchar(255)
,`quote_date` date
,`quotestatus_id` int(11)
,`brand_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`quotestatus_name` varchar(255)
,`brand_name` varchar(255)
,`user_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Table structure for table `quotepayment`
--

CREATE TABLE `quotepayment` (
  `quotepayment_id` int(11) NOT NULL,
  `quotepayment_title` varchar(255) DEFAULT NULL,
  `quotepayment_description` text DEFAULT NULL,
  `quotepayment_amount` double DEFAULT NULL,
  `quotepayment_duedate` date DEFAULT NULL,
  `quote_id` int(11) DEFAULT NULL,
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
-- Table structure for table `quotestatus`
--

CREATE TABLE `quotestatus` (
  `quotestatus_id` int(11) NOT NULL,
  `quotestatus_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quotestatus`
--

INSERT INTO `quotestatus` (`quotestatus_id`, `quotestatus_name`) VALUES
(1, 'Save'),
(2, 'Forwarded'),
(3, 'Quoted');

-- --------------------------------------------------------

--
-- Table structure for table `rawdata`
--

CREATE TABLE `rawdata` (
  `rawdata_id` int(11) NOT NULL,
  `rawdata_name` varchar(255) DEFAULT NULL,
  `rawdata_altname` varchar(255) DEFAULT NULL,
  `rawdata_email` varchar(255) DEFAULT '-',
  `rawdata_phone` varchar(255) DEFAULT NULL,
  `rawdata_dob` varchar(255) DEFAULT NULL,
  `rawdata_city` varchar(255) DEFAULT NULL,
  `rawdata_state` varchar(255) DEFAULT '-',
  `rawdata_zip` varchar(255) DEFAULT '-',
  `rawdata_country` varchar(255) DEFAULT NULL,
  `rawdata_address` varchar(255) DEFAULT NULL,
  `rawdata_mmin` varchar(255) DEFAULT NULL,
  `rawdata_card` varchar(255) DEFAULT NULL,
  `rawdata_bank` varchar(255) DEFAULT NULL,
  `rawdata_bankno` varchar(255) DEFAULT '-',
  `rawdata_card2` varchar(255) DEFAULT NULL,
  `rawdata_cardtype` varchar(255) DEFAULT '-',
  `rawdata_ssn` varchar(255) DEFAULT NULL,
  `rawdata_cvc` varchar(255) DEFAULT NULL,
  `rawdata_cvc2` varchar(255) DEFAULT NULL,
  `rawdata_cvc3` varchar(255) DEFAULT NULL,
  `rawdata_cvc4` varchar(255) DEFAULT NULL,
  `rawdata_cc#` varchar(255) DEFAULT NULL,
  `rawdata_exp` varchar(255) DEFAULT NULL,
  `rawdata_exp2` varchar(255) DEFAULT NULL,
  `rawdata_exp3` varchar(255) DEFAULT NULL,
  `rawdata_details` varchar(255) DEFAULT NULL,
  `rawdata_details2` varchar(255) DEFAULT NULL,
  `rawdata_details3` varchar(255) DEFAULT NULL,
  `rawdata_details4` varchar(255) DEFAULT NULL,
  `rawdata_details5` varchar(255) DEFAULT NULL,
  `rawdata_details6` varchar(255) DEFAULT NULL,
  `rawdata_details7` varchar(255) DEFAULT NULL,
  `rawdata_charge` varchar(255) DEFAULT NULL,
  `rawdata_charge2` varchar(255) DEFAULT NULL,
  `rawdata_charge3` varchar(255) DEFAULT NULL,
  `rawdata_random` varchar(255) DEFAULT NULL,
  `rawdata_random2` varchar(255) DEFAULT NULL,
  `rawdata_random3` varchar(255) DEFAULT NULL,
  `rawdata_random4` varchar(255) DEFAULT NULL,
  `rawdata_random5` varchar(255) DEFAULT NULL,
  `rawdata_random6` varchar(255) DEFAULT NULL,
  `rawdata_random7` varchar(255) DEFAULT NULL,
  `rawdata_random8` varchar(255) DEFAULT NULL,
  `rawdata_random9` varchar(255) DEFAULT NULL,
  `rawdata_random10` varchar(255) DEFAULT NULL,
  `rawdata_random11` varchar(255) DEFAULT NULL,
  `rawdata_random12` varchar(255) DEFAULT NULL,
  `rawdata_random13` varchar(255) DEFAULT NULL,
  `rawdata_random14` varchar(255) DEFAULT NULL,
  `rawdata_random15` varchar(255) DEFAULT NULL,
  `rawdata_random16` varchar(255) DEFAULT NULL,
  `declient_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT 1,
  `rawdatasheet_id` int(11) DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rawdatafollowup`
--

CREATE TABLE `rawdatafollowup` (
  `rawdatafollowup_id` int(11) NOT NULL,
  `rawdatafollowup_comment` text DEFAULT NULL,
  `rawdata_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `rawdatafollowuplist`
-- (See below for the actual view)
--
CREATE TABLE `rawdatafollowuplist` (
`rawdatafollowup_id` int(11)
,`rawdatafollowup_comment` text
,`rawdata_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`user_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Table structure for table `rawdatasheet`
--

CREATE TABLE `rawdatasheet` (
  `rawdatasheet_id` int(11) NOT NULL,
  `rawdatasheet_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rawdatasheet`
--

INSERT INTO `rawdatasheet` (`rawdatasheet_id`, `rawdatasheet_name`, `status_id`) VALUES
(1, 'Sheet 1', 1),
(2, 'Sheet 2', 1),
(3, 'Sheet 3', 1),
(4, 'Sheet 4', 1),
(5, 'Sheet 5', 2),
(6, 'Sheet 6', 2),
(7, 'Sheet 7', 2),
(8, 'Sheet 8', 2);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(250) DEFAULT NULL,
  `status_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `status_id`) VALUES
(1, 'Super Admin', 1),
(2, 'Billing', 1),
(3, 'Unit Head', 1),
(4, 'Marketing Head', 1),
(5, 'Marketing Agent', 1),
(6, 'Sales Manager', 1),
(7, 'Sales Agent', 1),
(8, 'Up-Sales Agent', 1),
(9, 'Lead Generator', 1),
(10, 'Production Head', 1),
(11, 'Production Manager', 1),
(12, 'Content Writer', 1),
(13, 'Animation', 1),
(14, 'Block Chain', 1),
(15, 'Designer', 1),
(16, 'Digitizer', 1),
(17, 'Web Developer', 1),
(18, 'Front-End Developer', 1),
(19, 'SEO', 1),
(20, 'Patch Vendor', 1),
(21, 'Random', 1),
(22, 'Patch Agent', 1);

-- --------------------------------------------------------

--
-- Table structure for table `searchlead`
--

CREATE TABLE `searchlead` (
  `searchlead_id` int(11) NOT NULL,
  `searchlead_bussinessname` text DEFAULT NULL,
  `searchlead_phone` varchar(255) DEFAULT NULL,
  `searchlead_name` varchar(255) DEFAULT NULL,
  `searchlead_email` varchar(255) DEFAULT NULL,
  `searchlead_altemail` varchar(255) DEFAULT NULL,
  `searchlead_altphone` varchar(255) DEFAULT NULL,
  `searchlead_city` varchar(255) DEFAULT NULL,
  `searchlead_state` varchar(255) DEFAULT NULL,
  `searchlead_otherinfo` text DEFAULT NULL,
  `searchlead_comment` text DEFAULT NULL,
  `searchlead_by` int(11) DEFAULT NULL,
  `searchlead_date` date DEFAULT NULL,
  `searchleadstatus_id` int(11) NOT NULL DEFAULT 1,
  `brand_id` int(11) DEFAULT NULL,
  `dmeclient_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `searchleadfollowup`
--

CREATE TABLE `searchleadfollowup` (
  `searchleadfollowup_id` int(11) NOT NULL,
  `searchleadfollowup_comment` text DEFAULT NULL,
  `searchlead_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `searchleadstatus`
--

CREATE TABLE `searchleadstatus` (
  `searchleadstatus_id` int(11) NOT NULL,
  `searchleadstatus_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `searchleadstatus`
--

INSERT INTO `searchleadstatus` (`searchleadstatus_id`, `searchleadstatus_name`, `status_id`) VALUES
(1, 'Fresh', 1),
(2, 'Save', 1),
(3, 'Cancel', 1),
(4, 'Lead', 1);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `state_abbreviation` varchar(255) DEFAULT NULL,
  `state_code` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT 1,
  `status_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`, `state_abbreviation`, `state_code`, `country_id`, `status_id`) VALUES
(1, 'Alabama', 'Ala.', 'AL', 1, 1),
(2, 'Alaska', 'Alaska', 'AK', 1, 1),
(3, 'Arizona', 'Ariz.', 'AZ', 1, 1),
(4, 'Arkansas', 'Ark.', 'AR', 1, 1),
(5, 'California', 'Calif.', 'CA', 1, 1),
(6, 'Colorado', 'Colo.', 'CO', 1, 1),
(7, 'Connecticut', 'Conn.', 'CT', 1, 1),
(8, 'Delaware', 'Del.', 'DE', 1, 1),
(9, 'District of Columbia', 'D.C.', 'DC', 1, 1),
(10, 'Florida', 'Fla.', 'FL', 1, 1),
(11, 'Georgia', 'Ga.', 'GA', 1, 1),
(12, 'Hawaii', 'Hawaii', 'HI', 1, 1),
(13, 'Idaho', 'Idaho', 'ID', 1, 1),
(14, 'Illinois', 'Ill.', 'IL', 1, 1),
(15, 'Indiana', 'Ind.', 'IN', 1, 1),
(16, 'Iowa', 'Iowa', 'IA', 1, 1),
(17, 'Kansas', 'Kans.', 'KS', 1, 1),
(18, 'Kentucky', 'Ky.', 'KY', 1, 1),
(19, 'Louisiana', 'La.', 'LA', 1, 1),
(20, 'Maine', 'Maine', 'ME', 1, 1),
(21, 'Maryland', 'Md.', 'MD', 1, 1),
(22, 'Massachusetts', 'Mass.', 'MA', 1, 1),
(23, 'Michigan', 'Mich.', 'MI', 1, 1),
(24, 'Minnesota', 'Minn.', 'MN', 1, 1),
(25, 'Mississippi', 'Miss.', 'MS', 1, 1),
(26, 'Missouri', 'Mo.', 'MO', 1, 1),
(27, 'Montana', 'Mont.', 'MT', 1, 1),
(28, 'Nebraska', 'Nebr.', 'NE', 1, 1),
(29, 'Nevada', 'Nev.', 'NV', 1, 1),
(30, 'New Hampshire', 'N.H.', 'NH', 1, 1),
(31, 'New Jersey', 'N.J.', 'NJ', 1, 1),
(32, 'New Mexico', 'N.M.', 'NM', 1, 1),
(33, 'New York', 'N.Y.', 'NY', 1, 1),
(34, 'North Carolina', 'N.C.', 'NC', 1, 1),
(35, 'North Dakota', 'N.D.', 'ND', 1, 1),
(36, 'Ohio', 'Ohio', 'OH', 1, 1),
(37, 'Oklahoma', 'Okla.', 'OK', 1, 1),
(38, 'Oregon', 'Ore.', 'OR', 1, 1),
(39, 'Pennsylvania', 'Pa.', 'PA', 1, 1),
(40, 'Rhode Island', 'R.I.', 'RI', 1, 1),
(41, 'South Carolina', 'S.C.', 'SC', 1, 1),
(42, 'South Dakota', 'S.D.', 'SD', 1, 1),
(43, 'Tennessee', 'Tenn.', 'TN', 1, 1),
(44, 'Texas', 'Tex.', 'TX', 1, 1),
(45, 'Utah', 'Utah', 'UT', 1, 1),
(46, 'Vermont', 'Vt.', 'VT', 1, 1),
(47, 'Virginia', 'Va.', 'VA', 1, 1),
(48, 'Washington', 'Wash.', 'WA', 1, 1),
(49, 'West Virginia', 'W.Va.', 'WV', 1, 1),
(50, 'Wisconsin', 'Wis.', 'WI', 1, 1),
(51, 'Wyoming', 'Wyo.', 'WY', 1, 1),
(52, 'Columbia', 'CL', 'CL', 2, 1),
(53, 'Manitoba', 'MA', 'MA', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_name`) VALUES
(1, 'Active'),
(2, 'Not Active');

-- --------------------------------------------------------

--
-- Table structure for table `taguser`
--

CREATE TABLE `taguser` (
  `taguser_id` int(11) NOT NULL,
  `taguser_userid` int(11) DEFAULT NULL,
  `taskcomment_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `taguserdetail`
-- (See below for the actual view)
--
CREATE TABLE `taguserdetail` (
`taguser_id` int(11)
,`taguser_userid` int(11)
,`taskcomment_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`user_name` varchar(250)
);

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
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `task_id` int(11) NOT NULL,
  `task_title` text DEFAULT NULL,
  `task_description` longtext DEFAULT NULL,
  `task_token` text DEFAULT NULL,
  `task_date` date DEFAULT NULL,
  `task_deadlinedate` date DEFAULT NULL,
  `task_manager` int(11) DEFAULT NULL,
  `task_cover` varchar(255) DEFAULT NULL,
  `task_covertype` varchar(255) DEFAULT NULL,
  `taskstatus_id` varchar(255) DEFAULT NULL,
  `task_workby` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_token` text DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
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
-- Table structure for table `taskattachment`
--

CREATE TABLE `taskattachment` (
  `taskattachment_id` int(11) NOT NULL,
  `taskattachment_name` varchar(255) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `task_token` text DEFAULT NULL,
  `attachmenttype` int(11) DEFAULT 1,
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
-- Stand-in structure for view `taskattachmentdetails`
-- (See below for the actual view)
--
CREATE TABLE `taskattachmentdetails` (
`taskattachment_id` int(11)
,`taskattachment_name` varchar(255)
,`task_id` int(11)
,`task_token` text
,`attachmenttype` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`user_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Table structure for table `taskcomment`
--

CREATE TABLE `taskcomment` (
  `taskcomment_id` int(11) NOT NULL,
  `taskcomment_comment` mediumtext DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `task_token` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `taskcomment_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `taskcommentdetails`
-- (See below for the actual view)
--
CREATE TABLE `taskcommentdetails` (
`taskcomment_id` int(11)
,`taskcomment_comment` mediumtext
,`task_id` int(11)
,`task_token` text
,`status_id` int(11)
,`taskcomment_date` date
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`user_name` varchar(250)
,`user_picture` text
,`role_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tasklist`
-- (See below for the actual view)
--
CREATE TABLE `tasklist` (
`task_id` int(11)
,`task_title` text
,`task_description` longtext
,`task_token` text
,`task_date` date
,`task_deadlinedate` date
,`task_manager` int(11)
,`task_cover` varchar(255)
,`task_covertype` varchar(255)
,`order_id` int(11)
,`order_token` text
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`creator` varchar(250)
,`taskstatus_id` int(11)
,`taskstatus_name` varchar(255)
,`brand_id` int(11)
,`ordercreator` int(11)
,`ordercreatorname` varchar(250)
);

-- --------------------------------------------------------

--
-- Table structure for table `taskmember`
--

CREATE TABLE `taskmember` (
  `taskmember_id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updared_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `taskmemberdetail`
-- (See below for the actual view)
--
CREATE TABLE `taskmemberdetail` (
`taskmember_id` int(11)
,`task_id` int(11)
,`status_id` int(11)
,`user_id` int(11)
,`user_name` varchar(250)
,`user_email` varchar(250)
,`user_picture` text
,`user_username` varchar(250)
,`role_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Table structure for table `taskreply`
--

CREATE TABLE `taskreply` (
  `taskreply_id` int(11) NOT NULL,
  `taskreply_reply` text DEFAULT NULL,
  `taskreply_date` date DEFAULT NULL,
  `taskcomment_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `taskreplydetails`
-- (See below for the actual view)
--
CREATE TABLE `taskreplydetails` (
`taskreply_id` int(11)
,`taskreply_reply` text
,`taskreply_date` date
,`taskcomment_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`user_name` varchar(250)
,`user_picture` text
,`role_name` varchar(250)
);

-- --------------------------------------------------------

--
-- Table structure for table `taskstatus`
--

CREATE TABLE `taskstatus` (
  `taskstatus_id` int(11) NOT NULL,
  `taskstatus_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taskstatus`
--

INSERT INTO `taskstatus` (`taskstatus_id`, `taskstatus_name`, `status_id`) VALUES
(1, 'To Do', 1),
(2, 'Doing', 1),
(3, 'Done', 1),
(4, 'Sent To Client', 1),
(5, 'Approved', 1),
(6, 'Cancel', 1),
(7, 'Halt', 1),
(8, 'Edit By Client', 1),
(9, 'Edit Fixed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uiattachment`
--

CREATE TABLE `uiattachment` (
  `uiattachment_id` int(11) NOT NULL,
  `uiattachment_name` text DEFAULT NULL,
  `uiorder_id` int(11) DEFAULT NULL,
  `uiattachmenttype_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `uiorder`
--

CREATE TABLE `uiorder` (
  `uiorder_id` int(11) NOT NULL,
  `uiorder_title` varchar(255) DEFAULT NULL,
  `uiorder_deadlinedate` date DEFAULT NULL,
  `uiorder_detail` text DEFAULT NULL,
  `uiorder_assignto` int(11) DEFAULT NULL,
  `uiorder_date` date DEFAULT NULL,
  `uiorderstatus_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `uiorderdetail`
-- (See below for the actual view)
--
CREATE TABLE `uiorderdetail` (
`uiorder_id` int(11)
,`uiorder_title` varchar(255)
,`uiorder_deadlinedate` date
,`uiorder_detail` text
,`uiorder_assignto` int(11)
,`uiorder_date` date
,`uiorderstatus_id` int(11)
,`brand_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`assignser_name` varchar(250)
,`creator` varchar(250)
,`uiorderstatus_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `uiorderstatus`
--

CREATE TABLE `uiorderstatus` (
  `uiorderstatus_id` int(11) NOT NULL,
  `uiorderstatus_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uiorderstatus`
--

INSERT INTO `uiorderstatus` (`uiorderstatus_id`, `uiorderstatus_name`, `status_id`) VALUES
(1, 'Forwarded', 1),
(2, 'Assigned', 1),
(3, 'Cancel', 1),
(4, 'Submited', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) DEFAULT NULL,
  `user_email` varchar(250) DEFAULT NULL,
  `user_username` varchar(250) DEFAULT NULL,
  `user_target` decimal(10,0) DEFAULT NULL,
  `user_password` text DEFAULT NULL,
  `user_picture` text DEFAULT NULL,
  `user_coverpicture` text DEFAULT NULL,
  `user_loginstatus` varchar(250) DEFAULT NULL,
  `user_token` text DEFAULT NULL,
  `user_batchid` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_username`, `user_target`, `user_password`, `user_picture`, `user_coverpicture`, `user_loginstatus`, `user_token`, `user_batchid`, `role_id`, `status_id`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`) VALUES
(1, 'Super Admin', 'sadmin@bizzworld.com', 'sadmin', '0', 'welcometo2023', 'no_image.jpg', 'no_image.jpg', 'Offline', 'admin-2023', NULL, 1, 1, 1, '2022-12-09 22:37:07', NULL, '2022-12-09 22:37:07', NULL, '2022-12-09 22:37:07'),
(2, 'Usman Khan', 'usman.khan@bizzworld.com', 'usmankhan', '4000', 'welcometo2023', '2022-12-09_134.57142857143_user_picture_.png', 'no_image.jpg', 'Offline', 'bUjcnUF3bkTknoe6gtBc1ypeCY3gJvQw60e8kgBjkApiWu8o4Q', NULL, 6, 1, 1, '2022-12-09 04:19:28', 18, '2023-02-09 03:27:23', NULL, NULL),
(3, 'Humdan Khairi', 'hamdan.khairi@bizzworld.com', 'humdankhairi', '5000', 'welcometo2023', '2022-12-09_111.71428571429_user_picture_.png', 'no_image.jpg', 'Online', 'vgSy5L6i0gcUADst9exbPEfYnY9SM9WBAGC5yht1ffUFgJ1Mdu', NULL, 6, 1, 1, '2022-12-09 04:21:15', 18, '2023-04-12 10:25:03', NULL, NULL),
(4, 'Syed Dawood', 'syed.dawood@bizzworld.com', 'syeddawood', '5000', 'welcometo2023', 'no_image.jpg', 'no_image.jpg', 'Offline', 'J7xH5jjbWQaCshcGCsJLyzdrReJUAZYKfkAN5XoT6Licnns3kt', NULL, 21, 1, 1, '2022-12-09 04:22:08', 1, '2023-03-23 10:42:42', NULL, NULL),
(5, 'Mohsin Ali', 'mohsin.ali@bizzworld.com', 'mohsinali', '1000', 'welcometo2023', '2022-12-09_37.857142857143_user_picture_.png', 'no_image.jpg', 'Offline', 'V9zuXgeStEEr1sVVgyNKR8I9uidsH0dw7RMtO0vgovnKXMaFV8', NULL, 7, 1, 1, '2022-12-09 04:23:13', 18, '2023-04-17 01:23:24', 1, '2022-12-09 04:24:03'),
(6, 'Shahida', 'shahida@bizzworld.com', 'shahida', '500', 'welcometo2023', '2022-12-09_52.857142857143_user_picture_.png', 'no_image.jpg', 'Online', 'ERpzJXop5hKsckjwad8304m9598y7LvtZOCk984ukVX3rCbqd8', NULL, 7, 1, 1, '2022-12-09 04:27:32', 18, '2023-04-17 01:23:16', NULL, NULL),
(7, 'Faisal Ali Khairi', 'faisal.khairi@bizzworld.com', 'faisalalikhairi', '500', 'welcometo2023', '2022-12-09_13.571428571429_user_picture_.png', 'no_image.jpg', 'Online', 'rpWMFqd7vPDP69H9P2Gn1Zxj118SCA0CCf85AndUSdIZormwMK', NULL, 7, 1, 1, '2022-12-09 04:28:59', 18, '2023-04-17 01:23:01', NULL, NULL),
(8, 'Mohammad Yasir', 'mohammad.yasir@bizzworld.com', 'mohammadyasir', '5000', 'welcometo2023', '2022-12-09_19.714285714286_user_picture_.png', 'no_image.jpg', 'Online', 'cNF45TSM7P6dxC8nKaD9xOTmlhgKjAtdMruFy8e1LLqqEWlO9y', NULL, 21, 1, 1, '2022-12-09 04:29:51', 1, '2023-03-23 10:42:52', NULL, NULL),
(9, 'Rafia Naz', 'rafia.naz@bizzworld.com', 'rafia.naz', '0', 'welcometo2023', '2022-12-09_132_user_picture_.jpeg', 'no_image.jpg', 'Offline', 'ZzrXdVBZKOpZ9oSc5m06FCYsxj0L4QkO6TkhsKLpgSMRndXxbm', NULL, 2, 1, 1, '2022-12-09 04:31:39', NULL, NULL, NULL, NULL),
(10, 'Saif Anwer Khan', 'saif.anwerkhan@bizzworld.com', 'saif.anwarkhan', '0', 'welcometo2023', '2022-12-09_48.142857142857_user_picture_.jpeg', 'no_image.jpg', 'Online', 'SFofyjroohPzehks4maY9XGqWH32M4LzRT5ZV0IJwPsDC2MGEO', NULL, 10, 1, 1, '2022-12-09 04:33:43', 1, '2023-01-19 10:58:56', NULL, NULL),
(11, 'Azeem', 'azeem@bizzworld.com', 'azeem', '0', 'welcometo2023', '2022-12-09_70.428571428571_user_picture_.jpeg', 'no_image.jpg', 'Online', 'RR9pam2BJ6GV2iz00XkJtSCgyYg2AZ1HningLlO0iZH57VAzFP', NULL, 15, 1, 1, '2022-12-09 04:35:17', NULL, NULL, NULL, NULL),
(12, 'Emmad Zaheer', 'emaadzaheer@bizzworld.com', 'emmadzaheer', '0', 'welcometo2023', '2022-12-09_108_user_picture_.png', 'no_image.jpg', 'Offline', '4FqbjJ4L3NKQEwiotLeKITupCgVCjgBCGdTGV8uDTMdVGBSYQF', NULL, 16, 2, 1, '2022-12-09 04:36:25', 10, '2023-01-05 03:28:24', NULL, NULL),
(13, 'Out Source', 'outsource@bizzworld.com', 'outsource', '0', 'welcometo2023', 'no_image.jpg', 'no_image.jpg', 'Offline', 'LzGV3ucZZtR5xR9LSuU3BejWsGlsyy8KJhkylR07iQ0H3PY60m', NULL, 16, 1, 1, '2022-12-09 04:37:22', NULL, NULL, NULL, NULL),
(14, 'Aleena Afzal', 'aleena.afzal@bizzworld.com', 'aleenaafzal', '500', 'welcometo2023', '2022-12-09_19.714285714286_user_picture_.jpeg', 'no_image.jpg', 'Online', 'zFW0A8pFA2RzdC1pTscXIGvEsLInqOrNYgt2CAQlG90clBdrr8', NULL, 3, 1, 1, '2022-12-09 04:44:05', NULL, NULL, NULL, NULL),
(15, 'Syeda Fatima', 'syed.fatima@bizzworld.com', 'syedafatima', '500', 'welcometo2023', '2022-12-09_92.428571428571_user_picture_.png', 'no_image.jpg', 'Offline', 'XEh4v1P7OzVTwd0qhnaK6gYP3Wigd8Cj1nEvhywpVRBFnBJiSh', NULL, 7, 2, 1, '2022-12-09 04:46:20', NULL, NULL, 14, '2022-12-19 05:26:18'),
(16, 'Sadia Yaqoob', 'sadia.yaqoob@bizzworld.com', 'sadiayaqoob', '500', 'welcometo2023', '2022-12-09_124_user_picture_.png', 'no_image.jpg', 'Offline', 'IN82ialtlq40uOacZP8HpmnqamjywIXIIH0ptW2S66zayRdALN', NULL, 7, 2, 1, '2022-12-09 04:47:16', NULL, NULL, 14, '2022-12-19 05:26:23'),
(17, 'Salman Nadir Khairi', 'salman.khairi@bizzworld.com', 'salmankhairi', '0', 'welcometo2023', '2022-12-09_129.71428571429_user_picture_.jpeg', 'no_image.jpg', 'Offline', 'nn91tZKxIVqNC6UeIASvvxwKPHrbIrzX9X7yjRepbylBiJZjt5', NULL, 1, 1, 1, '2022-12-09 04:49:07', 18, '2023-02-09 03:24:24', NULL, NULL),
(18, 'Ehsan Yasir Khairi', 'ehsan.khairi@bizzworld.com', 'ehsankhairi', '0', 'welcometo2023', '2022-12-09_40.857142857143_user_picture_.png', 'no_image.jpg', 'Offline', 'B2q5QeuPNC3tOS6jPr771goxeZkx2T7rMaFkAUGroy7ufqJ8EQ', NULL, 3, 1, 1, '2022-12-09 04:50:44', 17, '2023-01-13 03:48:17', NULL, NULL),
(19, 'Muneeb', 'muneeb@bizzworld.com', 'Muneeb', '1500', 'welcometo2023', 'no_image.jpg', 'no_image.jpg', 'Offline', 'NlWnwB2YhcUysUANvmlALP5aIhJxi0TyXVCoDqRVGt9SLWnXE2', NULL, 7, 1, 14, '2022-12-16 10:58:29', NULL, NULL, NULL, NULL),
(20, 'Fizza', 'fizza@bizzworld.com', 'Fizza', '10', 'welcometo2023', 'no_image.jpg', 'no_image.jpg', 'Offline', 'AeM8Z5ZQyTApIsLRc4B2LFyXfhstlC6cH77qFBkGTaVoUrTWwa', NULL, 5, 2, 18, '2022-12-16 11:03:44', NULL, NULL, 18, '2022-12-22 10:03:48'),
(21, 'Waqas Ahmed', 'waqas.ahmed@bizzworld.com', 'waqasahmed', '10', 'welcometo2023', 'no_image.jpg', 'no_image.jpg', 'Offline', 'BgqLSjkTIuUN84a1RCN3XSbwY0YhtpBykr1BY9waiKbDr7re4v', NULL, 5, 2, 18, '2022-12-16 11:04:36', NULL, NULL, 18, '2022-12-22 10:03:37'),
(22, 'Fiza Ayyaz', 'fiza.ayyaz@bizzworld.com', 'Fizza Ayyaz', '5000', 'welcometo2023', '2022-12-20_115_user_picture_.jpeg', '2022-12-20_48.428571428571_user_coverpicture_.jpeg', 'Offline', '70KEuxpPCWc1WvQcyO9VNi5DqZ74jUeiEw4AtH0YxOV79s7jgO', NULL, 5, 1, 18, '2022-12-20 09:13:32', 18, '2023-04-12 10:23:34', NULL, NULL),
(23, 'Waqas Khan', 'waqas.khan@bizzworld.com', 'Waqas Khan', '5000', 'welcometo2023', '2022-12-20_101.71428571429_user_picture_.jpeg', '2022-12-20_115.71428571429_user_coverpicture_.jpeg', 'Offline', 'fzBRknCDrmGnpprxJ5d8kuYLux2pMXpSxLbpRUPzwFUKwH0vhT', NULL, 5, 1, 18, '2022-12-20 09:14:52', 18, '2023-04-12 10:24:30', NULL, NULL),
(24, 'lead', 'leadg@max.com', 'lead', '10', '12345678', '2022-12-20_142.14285714286_user_picture_.png', '2022-12-20_0.14285714285714_user_coverpicture_.png', 'Offline', 'd6djTjaSJLPZCz9WWjIIm0arjkKAMkZ8RY66AwIIyUVYdmGVdx', NULL, 5, 2, 18, '2022-12-20 12:22:35', NULL, NULL, 17, '2023-01-27 03:52:57'),
(25, 'Yasir Saleem', 'yasir.saleem@bizzworld.com', 'yasir', '0', 'Welcometo2023', 'no_image.jpg', 'no_image.jpg', 'Online', '8IVgBswgI5uJdgbiNIGizC0J5EMCGIjAJGrG6YkcjhM8VLH2QJ', NULL, 16, 1, 17, '2023-01-02 09:33:04', NULL, NULL, NULL, NULL),
(26, 'Faryal Naz', 'faryal.naz@bizzworld.com', 'faryal', '0', 'welcometo2023', 'no_image.jpg', 'no_image.jpg', 'Online', 'GcNBD1UxircLgWQ7i6Q6LwoAig0hT40sDrN3ZYhvNm35fGyK1x', NULL, 2, 1, 17, '2023-01-10 11:15:43', NULL, NULL, NULL, NULL),
(27, 'Mohsin Khan', 'mohsin.khan@bizzworld.com', 'mohsinkhan', '0', 'welcometo2023', '2023-01-19_2.1428571428571_user_picture_.jpeg', 'no_image.jpg', 'Online', 'ad7UT8IGKnoaIacxuBesPBJgztzeyz8QKTprpO6da3FrIjEO3q', NULL, 17, 1, 1, '2023-01-19 11:12:59', 1, '2023-01-19 11:23:31', NULL, NULL),
(28, 'Hamdan', 'Hamdan.design@bizzworld.com', 'Hamdan', '0', 'Welcometo2023', '2023-01-20_103.14285714286_user_picture_.png', '2023-01-20_41.285714285714_user_coverpicture_.png', 'Offline', '9UFlXHyuUzMih0M6kaNvpa7jsQk2XXhxsUqtOzkiPGqrOX5h4T', NULL, 15, 2, 10, '2023-01-20 02:34:15', 10, '2023-01-26 10:28:40', NULL, NULL),
(29, 'Huzaifa Ahmed', 'Huzaifa.Ahmed@bizzworld.com', 'Huzaifa Ahmed', '0', 'Welcometo2023', '2023-01-20_41_user_picture_.png', '2023-01-20_110_user_coverpicture_.png', 'Online', 'wa1grScmMuQiFdgvCb8IHtK67feoYxhjO01MFNq4pCU6mWYKvo', NULL, 17, 1, 10, '2023-01-20 02:35:41', 10, '2023-01-20 02:36:09', NULL, NULL),
(30, 'Vendor Out-source', 'vendor.outsource@bizzworld.com', 'vendor', '0', 'welcometo2023', '2023-02-27_129.14285714286_user_picture_.png', '2023-02-27_89.857142857143_user_coverpicture_.jpeg', 'Offline', '9rBabNDZUrXQmUMw9QtkDPbL8opJR3F3zA3Uzc9JIsdMtT91rC', NULL, 20, 1, 17, '2023-02-27 03:44:37', NULL, NULL, NULL, NULL),
(31, 'Hammad Ali Khan', 'hammad467@bizzworld.com', 'Hammad Ali Khan', '5000', 'bizz@1', 'no_image.jpg', 'no_image.jpg', 'Offline', 'i11uN7G9eYFF3fBKAmr3Z6IRtxC80HeKwpsXLooovHeWzRzjbd', NULL, 7, 1, 18, '2023-03-09 10:06:32', 18, '2023-03-30 10:28:18', NULL, NULL),
(32, 'Wajiha Afzal', 'wajiha094@bizzworld.com', 'Wajiha Afzal', '50', 'bizz@1', '2023-03-09_81.714285714286_user_picture_.png', '2023-03-09_10.714285714286_user_coverpicture_.png', 'Offline', 'FJrFmM0alAvcsKZ7ZD05CIoNa96Yqn0FDe9lgtn0tYu4xhOy2A', NULL, 2, 1, 17, '2023-03-09 10:13:38', NULL, NULL, NULL, NULL),
(33, 'Sami Khan', 'sami.khan@bizzworld.com', 'sami.khan', '2000', 'Bizz@1', 'no_image.jpg', 'no_image.jpg', 'Online', 'zj2OUhmzBK9qURMca481ypoMBsdjQXX4TLg41kB7JOyMe5RZAL', NULL, 5, 1, 18, '2023-04-17 12:50:03', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userbarnd`
--

CREATE TABLE `userbarnd` (
  `userbarnd_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userbarnd`
--

INSERT INTO `userbarnd` (`userbarnd_id`, `user_id`, `brand_id`, `status_id`, `created_by`, `created_at`, `deleted_by`, `deleted_at`) VALUES
(1, 2, 1, 1, 1, '2022-12-09 04:19:28', NULL, NULL),
(2, 2, 2, 2, 1, '2022-12-09 04:19:28', 17, '2023-01-27 03:48:07'),
(3, 2, 3, 2, 1, '2022-12-09 04:19:28', NULL, NULL),
(4, 3, 1, 2, 1, '2022-12-09 04:21:15', 17, '2023-01-27 03:48:20'),
(5, 3, 2, 2, 1, '2022-12-09 04:21:15', 17, '2023-01-27 03:48:23'),
(6, 4, 1, 2, 1, '2022-12-09 04:22:08', 18, '2023-01-26 03:41:39'),
(7, 4, 2, 2, 1, '2022-12-09 04:22:08', 18, '2023-01-26 03:41:43'),
(8, 5, 1, 1, 1, '2022-12-09 04:23:13', NULL, NULL),
(9, 5, 2, 2, 1, '2022-12-09 04:23:13', 17, '2023-01-27 03:50:18'),
(10, 6, 1, 1, 1, '2022-12-09 04:27:32', NULL, NULL),
(11, 6, 2, 2, 1, '2022-12-09 04:27:32', 17, '2023-01-27 03:50:29'),
(12, 7, 1, 1, 1, '2022-12-09 04:28:59', NULL, NULL),
(13, 7, 2, 2, 1, '2022-12-09 04:28:59', 17, '2023-01-27 03:50:43'),
(14, 8, 1, 2, 1, '2022-12-09 04:29:51', 17, '2023-01-27 03:49:55'),
(15, 8, 2, 2, 1, '2022-12-09 04:29:51', 17, '2023-01-27 03:49:59'),
(16, 9, 1, 1, 1, '2022-12-09 04:31:39', NULL, NULL),
(17, 9, 2, 1, 1, '2022-12-09 04:31:39', NULL, NULL),
(18, 9, 3, 1, 1, '2022-12-09 04:31:39', NULL, NULL),
(19, 10, 1, 1, 1, '2022-12-09 04:33:43', NULL, NULL),
(20, 10, 2, 1, 1, '2022-12-09 04:33:43', NULL, NULL),
(21, 10, 3, 1, 1, '2022-12-09 04:33:43', NULL, NULL),
(22, 11, 1, 1, 1, '2022-12-09 04:35:17', NULL, NULL),
(23, 11, 2, 1, 1, '2022-12-09 04:35:17', NULL, NULL),
(24, 11, 3, 1, 1, '2022-12-09 04:35:17', NULL, NULL),
(25, 12, 1, 1, 1, '2022-12-09 04:36:25', NULL, NULL),
(26, 12, 2, 1, 1, '2022-12-09 04:36:25', NULL, NULL),
(27, 12, 3, 1, 1, '2022-12-09 04:36:25', NULL, NULL),
(28, 13, 1, 1, 1, '2022-12-09 04:37:22', NULL, NULL),
(29, 13, 2, 1, 1, '2022-12-09 04:37:22', NULL, NULL),
(30, 13, 3, 1, 1, '2022-12-09 04:37:22', NULL, NULL),
(31, 14, 3, 1, 1, '2022-12-09 04:44:05', NULL, NULL),
(32, 15, 3, 1, 1, '2022-12-09 04:46:20', NULL, NULL),
(33, 16, 3, 1, 1, '2022-12-09 04:47:16', NULL, NULL),
(34, 17, 1, 1, 1, '2022-12-09 04:49:07', NULL, NULL),
(35, 17, 2, 1, 1, '2022-12-09 04:49:07', NULL, NULL),
(36, 17, 3, 1, 1, '2022-12-09 04:49:07', NULL, NULL),
(37, 18, 1, 1, 1, '2022-12-09 04:50:44', NULL, NULL),
(38, 18, 2, 1, 1, '2022-12-09 04:50:44', NULL, NULL),
(39, 19, 3, 1, 14, '2022-12-16 10:58:29', NULL, NULL),
(40, 20, 2, 1, 18, '2022-12-16 11:03:44', NULL, NULL),
(41, 21, 2, 1, 18, '2022-12-16 11:04:36', NULL, NULL),
(42, 22, 2, 2, 18, '2022-12-20 09:13:32', 17, '2023-01-27 03:52:25'),
(43, 23, 2, 2, 18, '2022-12-20 09:14:52', 17, '2023-01-27 03:52:07'),
(44, 24, 1, 1, 18, '2022-12-20 12:22:35', NULL, NULL),
(45, 25, 1, 1, 17, '2023-01-02 09:33:04', NULL, NULL),
(46, 25, 2, 1, 17, '2023-01-02 09:33:04', NULL, NULL),
(47, 25, 3, 1, 17, '2023-01-02 09:33:04', NULL, NULL),
(48, 26, 1, 1, 17, '2023-01-10 11:15:43', NULL, NULL),
(49, 26, 2, 1, 17, '2023-01-10 11:15:43', NULL, NULL),
(50, 26, 3, 1, 17, '2023-01-10 11:15:43', NULL, NULL),
(51, 18, 4, 1, 17, '2023-01-13 03:48:17', NULL, NULL),
(52, 18, 5, 1, 17, '2023-01-13 03:48:17', NULL, NULL),
(53, 10, 4, 1, 1, '2023-01-19 10:58:56', NULL, NULL),
(54, 10, 5, 1, 1, '2023-01-19 10:58:56', NULL, NULL),
(55, 27, 1, 1, 1, '2023-01-19 23:20:30', NULL, NULL),
(56, 27, 2, 1, 1, '2023-01-19 23:20:30', NULL, NULL),
(57, 27, 3, 1, 1, '2023-01-19 23:20:30', NULL, NULL),
(58, 27, 4, 1, 1, '2023-01-19 23:20:30', NULL, NULL),
(59, 27, 5, 1, 1, '2023-01-19 23:20:30', NULL, NULL),
(60, 28, 1, 1, 10, '2023-01-20 02:34:15', NULL, NULL),
(61, 28, 2, 1, 10, '2023-01-20 02:34:15', NULL, NULL),
(62, 28, 3, 1, 10, '2023-01-20 02:34:15', NULL, NULL),
(63, 28, 4, 2, 10, '2023-01-20 02:34:15', 10, '2023-01-26 10:28:22'),
(64, 28, 5, 1, 10, '2023-01-20 02:34:15', NULL, NULL),
(65, 29, 1, 1, 10, '2023-01-20 02:35:41', NULL, NULL),
(66, 29, 2, 1, 10, '2023-01-20 02:35:41', NULL, NULL),
(67, 29, 3, 1, 10, '2023-01-20 02:35:41', NULL, NULL),
(68, 29, 4, 1, 10, '2023-01-20 02:35:41', NULL, NULL),
(69, 29, 5, 1, 10, '2023-01-20 02:35:41', NULL, NULL),
(70, 4, 4, 1, 18, '2023-01-26 03:40:53', NULL, NULL),
(71, 3, 5, 2, 17, '2023-01-27 03:48:29', 18, '2023-04-12 10:24:58'),
(72, 8, 5, 1, 17, '2023-01-27 03:50:02', NULL, NULL),
(73, 23, 4, 1, 17, '2023-01-27 03:52:09', NULL, NULL),
(74, 22, 4, 1, 17, '2023-01-27 03:52:27', NULL, NULL),
(75, 3, 1, 2, 17, '2023-01-27 04:41:46', 18, '2023-02-09 03:22:29'),
(76, 3, 2, 2, 17, '2023-01-27 04:41:46', 18, '2023-02-09 03:22:32'),
(77, 2, 2, 1, 17, '2023-01-27 05:35:20', NULL, NULL),
(78, 5, 2, 1, 17, '2023-01-27 05:35:40', NULL, NULL),
(79, 6, 2, 1, 17, '2023-01-27 05:35:47', NULL, NULL),
(80, 4, 1, 2, 17, '2023-01-27 05:36:12', 18, '2023-02-09 03:20:08'),
(81, 4, 2, 2, 17, '2023-01-27 05:36:12', 18, '2023-02-09 03:20:12'),
(82, 22, 2, 2, 17, '2023-01-27 05:36:28', 18, '2023-02-09 03:23:30'),
(83, 23, 2, 2, 17, '2023-01-27 05:36:53', 18, '2023-02-09 03:23:48'),
(84, 8, 1, 2, 17, '2023-01-27 05:37:35', 18, '2023-02-09 03:21:06'),
(85, 8, 2, 2, 17, '2023-01-27 05:37:35', 18, '2023-02-09 03:21:03'),
(86, 7, 2, 1, 18, '2023-01-31 03:33:54', NULL, NULL),
(87, 17, 4, 1, 18, '2023-02-09 03:24:24', NULL, NULL),
(88, 17, 5, 1, 18, '2023-02-09 03:24:24', NULL, NULL),
(89, 30, 4, 1, 17, '2023-02-27 03:44:37', NULL, NULL),
(90, 31, 4, 1, 18, '2023-03-09 10:06:32', NULL, NULL),
(91, 32, 1, 1, 17, '2023-03-09 10:13:38', NULL, NULL),
(92, 32, 2, 1, 17, '2023-03-09 10:13:38', NULL, NULL),
(93, 32, 3, 2, 17, '2023-03-09 10:13:38', 18, '2023-04-12 12:28:09'),
(94, 32, 4, 1, 17, '2023-03-09 10:13:38', NULL, NULL),
(95, 32, 5, 1, 17, '2023-03-09 10:13:38', NULL, NULL),
(96, 3, 4, 1, 18, '2023-03-14 10:26:40', NULL, NULL),
(97, 4, 6, 2, 1, '2023-03-23 10:31:33', 1, '2023-03-23 10:41:16'),
(98, 8, 6, 2, 1, '2023-03-23 10:32:00', 1, '2023-03-23 10:41:42'),
(99, 31, 2, 1, 18, '2023-03-30 10:28:18', NULL, NULL),
(100, 33, 4, 1, 18, '2023-04-17 12:50:03', NULL, NULL),
(101, 7, 4, 1, 18, '2023-04-17 01:23:01', NULL, NULL),
(102, 6, 4, 1, 18, '2023-04-17 01:23:16', NULL, NULL),
(103, 5, 4, 1, 18, '2023-04-17 01:23:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `userdetail`
-- (See below for the actual view)
--
CREATE TABLE `userdetail` (
`user_id` int(11)
,`user_name` varchar(250)
,`user_email` varchar(250)
,`user_username` varchar(250)
,`user_target` decimal(10,0)
,`user_password` text
,`user_picture` text
,`user_coverpicture` text
,`user_loginstatus` varchar(250)
,`user_token` text
,`role_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`deleted_by` int(11)
,`deleted_at` datetime
,`role_name` varchar(250)
);

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
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `vendor_email` varchar(255) DEFAULT NULL,
  `vendor_contact` varchar(255) DEFAULT NULL,
  `vendor_address` varchar(255) DEFAULT NULL,
  `vendor_website` varchar(255) DEFAULT NULL,
  `vendor_otherinfo` text DEFAULT NULL,
  `vendor_picture` text DEFAULT NULL,
  `vendor_coverpicture` text DEFAULT NULL,
  `vendortype_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updatde_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendortype`
--

CREATE TABLE `vendortype` (
  `vendortype_id` int(11) NOT NULL,
  `vendortype_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendortype`
--

INSERT INTO `vendortype` (`vendortype_id`, `vendortype_name`, `status_id`) VALUES
(1, 'Production', 1),
(2, 'Delivery', 1);

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal`
--

CREATE TABLE `withdrawal` (
  `withdrawal_id` int(11) NOT NULL,
  `withdrawal_amount` double DEFAULT NULL,
  `withdrawal_date` date DEFAULT NULL,
  `withdrawal_month` varchar(255) DEFAULT NULL,
  `withdrawal_comment` text DEFAULT NULL,
  `withdrawaltype_id` int(11) DEFAULT NULL,
  `billingmerchant_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `withdrawaldetails`
-- (See below for the actual view)
--
CREATE TABLE `withdrawaldetails` (
`withdrawal_id` int(11)
,`withdrawal_amount` double
,`withdrawal_date` date
,`withdrawal_month` varchar(255)
,`withdrawal_comment` text
,`withdrawaltype_id` int(11)
,`billingmerchant_id` int(11)
,`status_id` int(11)
,`created_by` int(11)
,`created_at` datetime
,`withdrawaltype_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `withdrawaltype`
--

CREATE TABLE `withdrawaltype` (
  `withdrawaltype_id` int(11) NOT NULL,
  `withdrawaltype_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `withdrawaltype`
--

INSERT INTO `withdrawaltype` (`withdrawaltype_id`, `withdrawaltype_name`, `status_id`) VALUES
(1, 'Cash', 1),
(2, 'Loan', 1),
(3, 'Vendor', 1),
(4, 'Subscription', 1);

-- --------------------------------------------------------

--
-- Structure for view `assignppcdetail`
--
DROP TABLE IF EXISTS `assignppcdetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `assignppcdetail`  AS SELECT `ap`.`assignppc_id` AS `assignppc_id`, `ap`.`assignppc_amount` AS `assignppc_amount`, `ap`.`assignppc_month` AS `assignppc_month`, `ap`.`assignppc_description` AS `assignppc_description`, `ap`.`user_id` AS `assignuser_id`, `ap`.`status_id` AS `status_id`, `ap`.`created_by` AS `created_by`, `ap`.`created_at` AS `created_at`, `ap`.`updated_by` AS `updated_by`, `ap`.`updated_at` AS `updated_at`, `ap`.`deleted_by` AS `deleted_by`, `ap`.`deleted_at` AS `deleted_at`, `u`.`user_name` AS `assignuser_name`, `uc`.`user_name` AS `creator` FROM ((`assignppc` `ap` join `user` `u` on(`ap`.`user_id` = `u`.`user_id`)) join `user` `uc` on(`ap`.`created_by` = `uc`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `basicorderdetail`
--
DROP TABLE IF EXISTS `basicorderdetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `basicorderdetail`  AS SELECT `o`.`order_id` AS `order_id`, `o`.`order_title` AS `order_title`, `o`.`order_deadlinedate` AS `order_deadlinedate`, `o`.`order_description` AS `order_description`, `o`.`order_token` AS `order_token`, `o`.`order_assignto` AS `order_assignto`, `o`.`ordertype_id` AS `ordertype_id`, `o`.`lead_id` AS `lead_id`, `o`.`orderstatus_id` AS `orderstatus_id`, `o`.`order_pickby` AS `order_pickby`, `o`.`status_id` AS `status_id`, `o`.`created_by` AS `created_by`, `o`.`created_at` AS `created_at`, `o`.`updated_by` AS `updated_by`, `o`.`updated_at` AS `updated_at`, `o`.`deleted_by` AS `deleted_by`, `o`.`deleted_at` AS `deleted_at`, `o`.`order_date` AS `order_date`, `ot`.`ordertype_name` AS `ordertype_name`, `u`.`user_name` AS `creator`, `os`.`orderstatus_name` AS `orderstatus_name`, `l`.`brand_id` AS `brand_id`, `l`.`lead_name` AS `lead_name`, `b`.`brand_name` AS `brand_name` FROM (((((`order` `o` join `ordertype` `ot` on(`o`.`ordertype_id` = `ot`.`ordertype_id`)) join `user` `u` on(`o`.`created_by` = `u`.`user_id`)) join `orderstatus` `os` on(`o`.`orderstatus_id` = `os`.`orderstatus_id`)) join `lead` `l` on(`o`.`lead_id` = `l`.`lead_id`)) join `brand` `b` on(`l`.`brand_id` = `b`.`brand_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `billingfollowupdetail`
--
DROP TABLE IF EXISTS `billingfollowupdetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `billingfollowupdetail`  AS SELECT `bf`.`billingfollowup_id` AS `billingfollowup_id`, `bf`.`billingfollowup_comment` AS `billingfollowup_comment`, `bf`.`token` AS `token`, `bf`.`status_id` AS `status_id`, `bf`.`created_by` AS `created_by`, `bf`.`created_at` AS `created_at`, `u`.`user_name` AS `user_name` FROM (`billingfollowup` `bf` join `user` `u` on(`bf`.`created_by` = `u`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `branddetail`
--
DROP TABLE IF EXISTS `branddetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `branddetail`  AS SELECT `b`.`brand_id` AS `brand_id`, `b`.`brand_name` AS `brand_name`, `b`.`brand_email` AS `brand_email`, `b`.`brand_logo` AS `brand_logo`, `b`.`brand_cover` AS `brand_cover`, `b`.`brand_website` AS `brand_website`, `b`.`brand_description` AS `brand_description`, `b`.`brand_invoicename` AS `brand_invoicename`, `b`.`brand_currency` AS `brand_currency`, `b`.`brand_date` AS `brand_date`, `b`.`brandtype_id` AS `brandtype_id`, `b`.`status_id` AS `status_id`, `b`.`created_by` AS `created_by`, `b`.`created_at` AS `created_at`, `b`.`updated_by` AS `updated_by`, `b`.`updated_at` AS `updated_at`, `b`.`deleted_by` AS `deleted_by`, `b`.`deleted_at` AS `deleted_at`, `bt`.`brandtype_name` AS `brandtype_name` FROM (`brand` `b` join `brandtype` `bt` on(`b`.`brandtype_id` = `bt`.`brandtype_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `commissionlist`
--
DROP TABLE IF EXISTS `commissionlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `commissionlist`  AS SELECT `cm`.`commission_id` AS `commission_id`, `cm`.`commission_from` AS `commission_from`, `cm`.`commission_to` AS `commission_to`, `cm`.`commission_rate` AS `commission_rate`, `cm`.`user_id` AS `user_id`, `cm`.`status_id` AS `status_id`, `cm`.`created_at` AS `created_at`, `r`.`role_name` AS `role_name`, `u`.`user_name` AS `user_name` FROM ((`commission` `cm` join `role` `r` on(`cm`.`role_id` = `r`.`role_id`)) join `user` `u` on(`cm`.`created_by` = `u`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `getleadfollowup`
--
DROP TABLE IF EXISTS `getleadfollowup`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getleadfollowup`  AS SELECT `l`.`leadfollowup_id` AS `leadfollowup_id`, `l`.`leadfollowup_comment` AS `leadfollowup_comment`, `l`.`freshlead_id` AS `freshlead_id`, `l`.`status_id` AS `status_id`, `l`.`created_by` AS `created_by`, `l`.`created_at` AS `created_at`, `u`.`user_name` AS `user_name` FROM (`leadfollowup` `l` join `user` `u` on(`l`.`created_by` = `u`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `getsearchleadfollowup`
--
DROP TABLE IF EXISTS `getsearchleadfollowup`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getsearchleadfollowup`  AS SELECT `sl`.`searchleadfollowup_id` AS `searchleadfollowup_id`, `sl`.`searchleadfollowup_comment` AS `searchleadfollowup_comment`, `sl`.`searchlead_id` AS `searchlead_id`, `sl`.`status_id` AS `status_id`, `sl`.`created_by` AS `created_by`, `sl`.`created_at` AS `created_at`, `u`.`user_name` AS `user_name` FROM (`searchleadfollowup` `sl` join `user` `u` on(`sl`.`created_by` = `u`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `leadcompletedetails`
--
DROP TABLE IF EXISTS `leadcompletedetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `leadcompletedetails`  AS SELECT `l`.`lead_id` AS `lead_id`, `l`.`lead_name` AS `lead_name`, `l`.`lead_email` AS `lead_email`, `l`.`lead_altemail` AS `lead_altemail`, `l`.`lead_phone` AS `lead_phone`, `l`.`lead_picture` AS `lead_picture`, `l`.`city_id` AS `city_id`, `l`.`state_id` AS `state_id`, `l`.`country_id` AS `country_id`, `l`.`lead_zip` AS `lead_zip`, `l`.`lead_address` AS `lead_address`, `l`.`lead_bussinessname` AS `lead_bussinessname`, `l`.`lead_bussinessemail` AS `lead_bussinessemail`, `l`.`lead_bussinesswebsite` AS `lead_bussinesswebsite`, `l`.`lead_bussinessphone` AS `lead_bussinessphone`, `l`.`lead_otherdetails` AS `lead_otherdetails`, `l`.`lead_pickby` AS `lead_pickby`, `l`.`lead_islock` AS `lead_islock`, `l`.`lead_date` AS `lead_date`, `l`.`leadstatus_id` AS `leadstatus_id`, `l`.`brand_id` AS `brand_id`, `l`.`leadtype_id` AS `leadtype_id`, `l`.`status_id` AS `status_id`, `l`.`created_by` AS `created_by`, `l`.`created_at` AS `created_at`, `l`.`updated_by` AS `updated_by`, `l`.`updated_at` AS `updated_at`, `l`.`deleted_by` AS `deleted_by`, `l`.`deleted_at` AS `deleted_at`, `ls`.`leadstatus_name` AS `leadstatus_name`, `c`.`country_name` AS `country_name`, `s`.`state_name` AS `state_name`, `ct`.`city_name` AS `city_name`, `b`.`brand_name` AS `brand_name` FROM (((((`lead` `l` left join `leadstatus` `ls` on(`l`.`leadstatus_id` = `ls`.`leadstatus_id`)) left join `country` `c` on(`l`.`country_id` = `c`.`country_id`)) left join `state` `s` on(`l`.`state_id` = `s`.`state_id`)) join `city` `ct` on(`l`.`city_id` = `ct`.`city_id`)) join `brand` `b` on(`l`.`brand_id` = `b`.`brand_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `leaddetail`
--
DROP TABLE IF EXISTS `leaddetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `leaddetail`  AS SELECT `l`.`lead_id` AS `lead_id`, `l`.`lead_name` AS `lead_name`, `l`.`lead_email` AS `lead_email`, `l`.`lead_altemail` AS `lead_altemail`, `l`.`lead_phone` AS `lead_phone`, `l`.`city_id` AS `city_id`, `l`.`state_id` AS `state_id`, `l`.`country_id` AS `country_id`, `l`.`lead_zip` AS `lead_zip`, `l`.`lead_address` AS `lead_address`, `l`.`lead_bussinessname` AS `lead_bussinessname`, `l`.`lead_bussinessemail` AS `lead_bussinessemail`, `l`.`lead_bussinesswebsite` AS `lead_bussinesswebsite`, `l`.`lead_bussinessphone` AS `lead_bussinessphone`, `l`.`lead_otherdetails` AS `lead_otherdetails`, `l`.`lead_pickby` AS `lead_pickby`, `l`.`lead_islock` AS `lead_islock`, `l`.`lead_date` AS `lead_date`, `l`.`leadstatus_id` AS `leadstatus_id`, `l`.`brand_id` AS `brand_id`, `l`.`leadtype_id` AS `leadtype_id`, `l`.`status_id` AS `status_id`, `l`.`created_by` AS `created_by`, `l`.`created_at` AS `created_at`, `l`.`updated_by` AS `updated_by`, `l`.`updated_at` AS `updated_at`, `l`.`deleted_by` AS `deleted_by`, `l`.`deleted_at` AS `deleted_at`, `ls`.`leadstatus_name` AS `leadstatus_name` FROM (`lead` `l` join `leadstatus` `ls` on(`l`.`leadstatus_id` = `ls`.`leadstatus_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `loginuserinfo`
--
DROP TABLE IF EXISTS `loginuserinfo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `loginuserinfo`  AS SELECT `u`.`user_id` AS `user_id`, `u`.`user_name` AS `user_name`, `u`.`user_email` AS `user_email`, `u`.`user_username` AS `user_username`, `u`.`user_password` AS `user_password`, `u`.`user_target` AS `user_target`, `u`.`user_picture` AS `user_picture`, `u`.`user_coverpicture` AS `user_coverpicture`, `u`.`user_loginstatus` AS `user_loginstatus`, `u`.`user_token` AS `user_token`, `u`.`role_id` AS `role_id`, `u`.`status_id` AS `status_id`, `u`.`created_by` AS `created_by`, `u`.`created_at` AS `created_at`, `r`.`role_name` AS `role_name` FROM (`user` `u` join `role` `r` on(`u`.`role_id` = `r`.`role_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `memberstasklist`
--
DROP TABLE IF EXISTS `memberstasklist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `memberstasklist`  AS SELECT `t`.`task_id` AS `task_id`, `t`.`task_title` AS `task_title`, `t`.`task_description` AS `task_description`, `t`.`task_token` AS `task_token`, `t`.`task_date` AS `task_date`, `t`.`task_deadlinedate` AS `task_deadlinedate`, `t`.`task_manager` AS `task_manager`, `t`.`task_cover` AS `task_cover`, `t`.`task_covertype` AS `task_covertype`, `t`.`task_workby` AS `task_workby`, `t`.`order_id` AS `order_id`, `t`.`order_token` AS `order_token`, `t`.`status_id` AS `status_id`, `t`.`created_by` AS `created_by`, `t`.`created_at` AS `created_at`, `t`.`updated_by` AS `updated_by`, `t`.`updated_at` AS `updated_at`, `t`.`deleted_by` AS `deleted_by`, `t`.`deleted_at` AS `deleted_at`, `u`.`user_name` AS `creator`, `ts`.`taskstatus_id` AS `taskstatus_id`, `ts`.`taskstatus_name` AS `taskstatus_name`, `b`.`brand_id` AS `brand_id`, `tm`.`user_id` AS `taskuser_id`, `tm`.`status_id` AS `memberstatus_id` FROM ((((((`task` `t` join `user` `u` on(`t`.`created_by` = `u`.`user_id`)) join `taskstatus` `ts` on(`t`.`taskstatus_id` = `ts`.`taskstatus_id`)) join `order` `o` on(`o`.`order_id` = `t`.`order_id`)) join `lead` `l` on(`l`.`lead_id` = `o`.`lead_id`)) join `brand` `b` on(`b`.`brand_id` = `l`.`brand_id`)) join `taskmember` `tm` on(`tm`.`task_id` = `t`.`task_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `mergepaymentdetails`
--
DROP TABLE IF EXISTS `mergepaymentdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mergepaymentdetails`  AS SELECT `op`.`orderpayment_id` AS `orderpayment_id`, `op`.`orderpayment_title` AS `orderpayment_title`, `op`.`orderpayment_amount` AS `orderpayment_amount`, `op`.`orderpayment_date` AS `orderpayment_date`, `op`.`orderpayment_duedate` AS `orderpayment_duedate`, `op`.`orderpayment_paiddate` AS `orderpayment_paiddate`, `op`.`orderpayment_recoverydate` AS `orderpayment_recoverydate`, `op`.`orderpayment_callbackdate` AS `orderpayment_callbackdate`, `op`.`orderpayment_lastpaiddate` AS `orderpayment_lastpaiddate`, `op`.`orderpayment_callbackcomment` AS `orderpayment_callbackcomment`, `op`.`orderpayment_pickby` AS `orderpayment_pickby`, `op`.`orderpayment_token` AS `orderpayment_token`, `op`.`orderpayment_invoiceno` AS `orderpayment_invoiceno`, `op`.`merchant_id` AS `merchant_id`, `op`.`orderpayment_comment` AS `orderpayment_comment`, `op`.`order_id` AS `order_id`, `op`.`order_token` AS `order_token`, `op`.`orderpaymentstatus_id` AS `orderpaymentstatus_id`, `m`.`status_id` AS `status_id`, `o`.`status_id` AS `orderstatus`, `op`.`created_by` AS `created_by`, `op`.`created_at` AS `created_at`, `op`.`updated_by` AS `updated_by`, `op`.`updated_at` AS `updated_at`, `op`.`deleted_by` AS `deleted_by`, `op`.`deleted_at` AS `deleted_at`, `o`.`order_title` AS `order_title`, `u`.`user_name` AS `user_name`, `u`.`user_picture` AS `user_picture`, `ops`.`orderpaymentstatus_name` AS `orderpaymentstatus_name`, `l`.`lead_id` AS `lead_id`, `l`.`lead_name` AS `lead_name`, `l`.`lead_email` AS `lead_email`, `l`.`brand_id` AS `brand_id`, `m`.`mergedeal_token` AS `mergedeal_token` FROM (((((`orderpayment` `op` left join `order` `o` on(`op`.`order_id` = `o`.`order_id`)) join `user` `u` on(`op`.`created_by` = `u`.`user_id`)) join `orderpaymentstatus` `ops` on(`op`.`orderpaymentstatus_id` = `ops`.`orderpaymentstatus_id`)) join `lead` `l` on(`l`.`lead_id` = `op`.`lead_id`)) join `mergedeal` `m` on(`m`.`order_token` = `o`.`order_token`)) ;

-- --------------------------------------------------------

--
-- Structure for view `orderpaymentdetails`
--
DROP TABLE IF EXISTS `orderpaymentdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `orderpaymentdetails`  AS SELECT `op`.`orderpayment_id` AS `orderpayment_id`, `op`.`orderpayment_title` AS `orderpayment_title`, `op`.`orderpayment_amount` AS `orderpayment_amount`, `op`.`orderpayment_date` AS `orderpayment_date`, `op`.`orderpayment_duedate` AS `orderpayment_duedate`, `op`.`orderpayment_paiddate` AS `orderpayment_paiddate`, `op`.`orderpayment_recoverydate` AS `orderpayment_recoverydate`, `op`.`orderpayment_callbackdate` AS `orderpayment_callbackdate`, `op`.`orderpayment_lastpaiddate` AS `orderpayment_lastpaiddate`, `op`.`orderpayment_callbackcomment` AS `orderpayment_callbackcomment`, `op`.`orderpayment_pickby` AS `orderpayment_pickby`, `op`.`orderpayment_token` AS `orderpayment_token`, `op`.`orderpayment_invoiceno` AS `orderpayment_invoiceno`, `op`.`merchant_id` AS `merchant_id`, `op`.`orderpayment_comment` AS `orderpayment_comment`, `op`.`order_id` AS `order_id`, `op`.`order_token` AS `order_token`, `op`.`orderpaymentstatus_id` AS `orderpaymentstatus_id`, `op`.`status_id` AS `status_id`, `op`.`created_by` AS `created_by`, `op`.`created_at` AS `created_at`, `op`.`updated_by` AS `updated_by`, `op`.`updated_at` AS `updated_at`, `op`.`deleted_by` AS `deleted_by`, `op`.`deleted_at` AS `deleted_at`, `o`.`order_title` AS `order_title`, `u`.`user_name` AS `user_name`, `u`.`user_picture` AS `user_picture`, `ops`.`orderpaymentstatus_name` AS `orderpaymentstatus_name`, `l`.`lead_id` AS `lead_id`, `l`.`lead_name` AS `lead_name`, `l`.`lead_email` AS `lead_email`, `l`.`brand_id` AS `brand_id` FROM ((((`orderpayment` `op` left join `order` `o` on(`op`.`order_id` = `o`.`order_id`)) join `user` `u` on(`op`.`created_by` = `u`.`user_id`)) join `orderpaymentstatus` `ops` on(`op`.`orderpaymentstatus_id` = `ops`.`orderpaymentstatus_id`)) join `lead` `l` on(`l`.`lead_id` = `op`.`lead_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `orderquestiondetail`
--
DROP TABLE IF EXISTS `orderquestiondetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `orderquestiondetail`  AS SELECT `qa`.`orderqa_id` AS `orderqa_id`, `qa`.`orderqa_answer` AS `orderqa_answer`, `qa`.`orderquestion_id` AS `orderquestion_id`, `qa`.`order_id` AS `order_id`, `qa`.`order_token` AS `order_token`, `qa`.`status_id` AS `status_id`, `qa`.`created_by` AS `created_by`, `qa`.`created_at` AS `created_at`, `qa`.`updated_by` AS `updated_by`, `qa`.`updated_at` AS `updated_at`, `qa`.`deleted_by` AS `deleted_by`, `qa`.`deleted_at` AS `deleted_at`, `q`.`orderquestion_name` AS `orderquestion_name` FROM (`orderqa` `qa` join `orderquestion` `q` on(`qa`.`orderquestion_id` = `q`.`orderquestion_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `orderwithpayment`
--
DROP TABLE IF EXISTS `orderwithpayment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `orderwithpayment`  AS SELECT `op`.`orderpayment_amount` AS `orderpayment_amount`, `op`.`orderpayment_id` AS `orderpayment_id`, `op`.`orderpayment_date` AS `orderpayment_date`, `op`.`orderpayment_recoverydate` AS `orderpayment_recoverydate`, `op`.`created_by` AS `created_by`, `op`.`orderpaymentstatus_id` AS `orderpaymentstatus_id`, `op`.`status_id` AS `status_id`, `o`.`ordertype_id` AS `ordertype_id` FROM (`orderpayment` `op` join `order` `o` on(`op`.`order_id` = `o`.`order_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `patchdetails`
--
DROP TABLE IF EXISTS `patchdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `patchdetails`  AS SELECT `p`.`patch_id` AS `patch_id`, `p`.`patch_title` AS `patch_title`, `p`.`patch_height` AS `patch_height`, `p`.`patch_width` AS `patch_width`, `p`.`patch_quantity` AS `patch_quantity`, `p`.`patch_amount` AS `patch_amount`, `p`.`patch_isorderorsample` AS `patch_isorderorsample`, `p`.`patch_deliverycost` AS `patch_deliverycost`, `p`.`patch_shippingaddress` AS `patch_shippingaddress`, `p`.`patchtype_id` AS `patchtype_id`, `p`.`patchback_id` AS `patchback_id`, `p`.`vendorproduction_id` AS `vendorproduction_id`, `p`.`patch_vendorcost` AS `patch_vendorcost`, `p`.`vendordelivery_id` AS `vendordelivery_id`, `p`.`patch_otherdetails` AS `patch_otherdetails`, `p`.`patch_date` AS `patch_date`, `p`.`patch_biillingby` AS `patch_biillingby`, `p`.`patchstatus_id` AS `patchstatus_id`, `p`.`brand_id` AS `brand_id`, `p`.`status_id` AS `status_id`, `p`.`created_by` AS `created_by`, `p`.`created_at` AS `created_at`, `p`.`updated_by` AS `updated_by`, `p`.`updated_at` AS `updated_at`, `p`.`deleted_by` AS `deleted_by`, `p`.`deleted_at` AS `deleted_at`, `pt`.`patchtype_name` AS `patchtype_name`, `pb`.`patchback_name` AS `patchback_name`, `vp`.`vendor_name` AS `production_vendor`, `vd`.`vendor_name` AS `delivery_vendor`, `ps`.`patchstatus_name` AS `patchstatus_name`, `b`.`brand_name` AS `brand_name`, `u`.`user_name` AS `user_name`, `ub`.`user_name` AS `billingby`, `l`.`lead_name` AS `lead_name` FROM (((((((((`patch` `p` join `patchtype` `pt` on(`p`.`patchtype_id` = `pt`.`patchtype_id`)) join `patchback` `pb` on(`p`.`patchback_id` = `pb`.`patchback_id`)) join `vendor` `vp` on(`p`.`vendorproduction_id` = `vp`.`vendor_id`)) join `vendor` `vd` on(`p`.`vendordelivery_id` = `vd`.`vendor_id`)) join `patchstatus` `ps` on(`p`.`patchstatus_id` = `ps`.`patchstatus_id`)) join `brand` `b` on(`p`.`brand_id` = `b`.`brand_id`)) join `user` `u` on(`p`.`created_by` = `u`.`user_id`)) left join `user` `ub` on(`p`.`patch_biillingby` = `ub`.`user_id`)) join `lead` `l` on(`p`.`lead_id` = `l`.`lead_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `patchorderlist`
--
DROP TABLE IF EXISTS `patchorderlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `patchorderlist`  AS SELECT `p`.`patch_id` AS `patch_id`, `p`.`patch_title` AS `patch_title`, `p`.`patch_height` AS `patch_height`, `p`.`patch_width` AS `patch_width`, `p`.`patch_quantity` AS `patch_quantity`, `p`.`patch_amount` AS `patch_amount`, `p`.`patch_deliverycost` AS `patch_deliverycost`, `p`.`patch_shippingaddress` AS `patch_shippingaddress`, `p`.`patchtype_id` AS `patchtype_id`, `p`.`patchback_id` AS `patchback_id`, `p`.`vendorproduction_id` AS `vendorproduction_id`, `p`.`vendordelivery_id` AS `vendordelivery_id`, `p`.`patch_otherdetails` AS `patch_otherdetails`, `p`.`patch_date` AS `patch_date`, `p`.`patch_biillingby` AS `patch_biillingby`, `p`.`patch_biillingstatus` AS `patch_biillingstatus`, `p`.`patchstatus_id` AS `patchstatus_id`, `p`.`brand_id` AS `brand_id`, `p`.`lead_id` AS `lead_id`, `p`.`status_id` AS `status_id`, `p`.`created_by` AS `created_by`, `p`.`created_at` AS `created_at`, `p`.`updated_by` AS `updated_by`, `p`.`updated_at` AS `updated_at`, `p`.`deleted_by` AS `deleted_by`, `p`.`deleted_at` AS `deleted_at`, `ps`.`patchstatus_name` AS `patchstatus_name` FROM (`patch` `p` join `patchstatus` `ps` on(`p`.`patchstatus_id` = `ps`.`patchstatus_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `patchpaymentdetails`
--
DROP TABLE IF EXISTS `patchpaymentdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `patchpaymentdetails`  AS SELECT `pp`.`patchpayment_id` AS `patchpayment_id`, `pp`.`patchpayment_amount` AS `patchpayment_amount`, `pp`.`patchpayment_comment` AS `patchpayment_comment`, `pp`.`patchpaymenttype_id` AS `patchpaymenttype_id`, `pp`.`patch_id` AS `patch_id`, `pp`.`status_id` AS `status_id`, `pp`.`created_by` AS `created_by`, `pp`.`created_at` AS `created_at`, `pt`.`patchpaymenttype_name` AS `patchpaymenttype_name`, `u`.`user_name` AS `user_name` FROM ((`patchpayment` `pp` join `patchpaymenttype` `pt` on(`pp`.`patchpaymenttype_id` = `pt`.`patchpaymenttype_id`)) join `user` `u` on(`pp`.`created_by` = `u`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `patchquerydetails`
--
DROP TABLE IF EXISTS `patchquerydetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `patchquerydetails`  AS SELECT `pq`.`patchquery_id` AS `patchquery_id`, `pq`.`patchquery_clientname` AS `patchquery_clientname`, `pq`.`patchquery_clientemail` AS `patchquery_clientemail`, `pq`.`patchquery_clientphone` AS `patchquery_clientphone`, `pq`.`patchquery_clientzip` AS `patchquery_clientzip`, `pq`.`country_id` AS `country_id`, `pq`.`state_id` AS `state_id`, `pq`.`patchquery_clientaddress` AS `patchquery_clientaddress`, `pq`.`patchquery_clientbussinessname` AS `patchquery_clientbussinessname`, `pq`.`patchquery_clientbussinessemail` AS `patchquery_clientbussinessemail`, `pq`.`patchquery_clientbussinesswebsite` AS `patchquery_clientbussinesswebsite`, `pq`.`patchquery_clientbussinessphone` AS `patchquery_clientbussinessphone`, `pq`.`patchquery_potential` AS `patchquery_potential`, `pq`.`patchquery_title` AS `patchquery_title`, `pq`.`patchquery_medium` AS `patchquery_medium`, `pq`.`patchquery_shippingaddress` AS `patchquery_shippingaddress`, `pq`.`patchquery_clientbudget` AS `patchquery_clientbudget`, `pq`.`patchqueryshipping_id` AS `patchqueryshipping_id`, `pq`.`patchquery_otherdetails` AS `patchquery_otherdetails`, `pq`.`patchquery_islead` AS `patchquery_islead`, `pq`.`patchquery_rejectcomment` AS `patchquery_rejectcomment`, `pq`.`patchquery_date` AS `patchquery_date`, `pq`.`patchquery_manager` AS `patchquery_manager`, `pq`.`patchquerystatus_id` AS `patchquerystatus_id`, `pq`.`brand_id` AS `brand_id`, `pq`.`status_id` AS `status_id`, `pq`.`created_by` AS `created_by`, `pq`.`created_at` AS `created_at`, `pq`.`updated_by` AS `updated_by`, `pq`.`updated_at` AS `updated_at`, `pq`.`deleted_by` AS `deleted_by`, `pq`.`deleted_at` AS `deleted_at`, `pm`.`user_name` AS `manager_name`, `ps`.`patchquerystatus_name` AS `patchquerystatus_name`, `b`.`brand_name` AS `brand_name`, `pu`.`user_name` AS `creator`, `c`.`country_name` AS `country_name`, `s`.`state_name` AS `state_name`, `pq`.`vendordelivery_id` AS `vendordelivery_id`, `vd`.`vendor_name` AS `deliveryvendor_name`, `pq`.`patchquery_isorderorsample` AS `patchquery_isorderorsample`, `pq`.`patchquery_modeofpayments` AS `patchquery_modeofpayments`, `pqs`.`patchqueryshipping_weight` AS `patchqueryshipping_weight`, `pqs`.`patchqueryshipping_cost` AS `patchqueryshipping_cost` FROM ((((((((`patchquery` `pq` left join `user` `pm` on(`pq`.`patchquery_manager` = `pm`.`user_id`)) left join `vendor` `vd` on(`pq`.`vendordelivery_id` = `vd`.`vendor_id`)) join `patchquerystatus` `ps` on(`pq`.`patchquerystatus_id` = `ps`.`patchquerystatus_id`)) join `brand` `b` on(`pq`.`brand_id` = `b`.`brand_id`)) join `user` `pu` on(`pq`.`created_by` = `pu`.`user_id`)) join `country` `c` on(`pq`.`country_id` = `c`.`country_id`)) join `state` `s` on(`pq`.`state_id` = `s`.`state_id`)) left join `patchqueryshipping` `pqs` on(`pq`.`patchqueryshipping_id` = `pqs`.`patchqueryshipping_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `patchqueryfollowupdetail`
--
DROP TABLE IF EXISTS `patchqueryfollowupdetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `patchqueryfollowupdetail`  AS SELECT `pf`.`patchqueryfollowup_id` AS `patchqueryfollowup_id`, `pf`.`patchqueryfollowup_comment` AS `patchqueryfollowup_comment`, `pf`.`patchquery_id` AS `patchquery_id`, `pf`.`status_id` AS `status_id`, `pf`.`created_by` AS `created_by`, `pf`.`created_at` AS `created_at`, `u`.`user_name` AS `user_name` FROM (`patchqueryfollowup` `pf` join `user` `u` on(`pf`.`created_by` = `u`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `patchqueryitemdetails`
--
DROP TABLE IF EXISTS `patchqueryitemdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `patchqueryitemdetails`  AS SELECT `pi`.`patchqueryitem_id` AS `patchqueryitem_id`, `pi`.`patchqueryitem_quantity` AS `patchqueryitem_quantity`, `pi`.`patchqueryitem_height` AS `patchqueryitem_height`, `pi`.`patchqueryitem_width` AS `patchqueryitem_width`, `pi`.`patchtype_id` AS `patchtype_id`, `pi`.`patchback_id` AS `patchback_id`, `pi`.`patchqueryitem_otherdetails` AS `patchqueryitem_otherdetails`, `pi`.`patchqueryitem_marketcost` AS `patchqueryitem_marketcost`, `pi`.`patchqueryitem_costattachment` AS `patchqueryitem_costattachment`, `pi`.`patchqueryitem_proposalquote` AS `patchqueryitem_proposalquote`, `pi`.`patchqueryitem_finalvendor` AS `patchqueryitem_finalvendor`, `pi`.`patchquerycategory_id` AS `patchquerycategory_id`, `pi`.`patchquery_id` AS `patchquery_id`, `pi`.`patchqueryitem_date` AS `patchqueryitem_date`, `pi`.`status_id` AS `status_id`, `pi`.`created_by` AS `created_by`, `pi`.`created_at` AS `created_at`, `pc`.`patchquerycategory_name` AS `patchquerycategory_name`, `pv`.`vendor_name` AS `fianlvendor_name`, `pt`.`patchtype_name` AS `patchtype_name`, `pb`.`patchback_name` AS `patchback_name` FROM ((((`patchqueryitem` `pi` join `patchquerycategory` `pc` on(`pi`.`patchquerycategory_id` = `pc`.`patchquerycategory_id`)) left join `vendor` `pv` on(`pi`.`patchqueryitem_finalvendor` = `pv`.`vendor_id`)) left join `patchtype` `pt` on(`pi`.`patchtype_id` = `pt`.`patchtype_id`)) left join `patchback` `pb` on(`pi`.`patchback_id` = `pb`.`patchback_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `patchqueryitemvendordetails`
--
DROP TABLE IF EXISTS `patchqueryitemvendordetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `patchqueryitemvendordetails`  AS SELECT `pv`.`patchqueryvendor_id` AS `patchqueryvendor_id`, `pv`.`vendorproduction_id` AS `vendorproduction_id`, `pv`.`patchqueryvendor_cost` AS `patchqueryvendor_cost`, `pv`.`patchqueryvendor_productiondays` AS `patchqueryvendor_productiondays`, `pv`.`patchqueryitem_id` AS `patchqueryitem_id`, `pv`.`patchquery_id` AS `patchquery_id`, `pv`.`status_id` AS `status_id`, `v`.`vendor_name` AS `vendor_name` FROM (`patchqueryvendor` `pv` join `vendor` `v` on(`pv`.`vendorproduction_id` = `v`.`vendor_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `patchquerylist`
--
DROP TABLE IF EXISTS `patchquerylist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `patchquerylist`  AS SELECT `pq`.`patchquery_id` AS `patchquery_id`, `pq`.`patchquery_clientname` AS `patchquery_clientname`, `pq`.`patchquery_clientemail` AS `patchquery_clientemail`, `pq`.`patchquery_clientphone` AS `patchquery_clientphone`, `pq`.`patchquery_clientzip` AS `patchquery_clientzip`, `pq`.`country_id` AS `country_id`, `pq`.`state_id` AS `state_id`, `pq`.`patchquery_clientaddress` AS `patchquery_clientaddress`, `pq`.`patchquery_clientbussinessname` AS `patchquery_clientbussinessname`, `pq`.`patchquery_clientbussinessemail` AS `patchquery_clientbussinessemail`, `pq`.`patchquery_clientbussinesswebsite` AS `patchquery_clientbussinesswebsite`, `pq`.`patchquery_clientbussinessphone` AS `patchquery_clientbussinessphone`, `pq`.`patchquery_title` AS `patchquery_title`, `pq`.`patchquery_isorderorsample` AS `patchquery_isorderorsample`, `pq`.`patchquery_medium` AS `patchquery_medium`, `pq`.`patchquery_shippingaddress` AS `patchquery_shippingaddress`, `pq`.`patchquery_clientbudget` AS `patchquery_clientbudget`, `pq`.`patchqueryshipping_id` AS `patchqueryshipping_id`, `pq`.`patchquery_otherdetails` AS `patchquery_otherdetails`, `pq`.`patchquery_islead` AS `patchquery_islead`, `pq`.`patchquery_rejectcomment` AS `patchquery_rejectcomment`, `pq`.`patchquery_date` AS `patchquery_date`, `pq`.`patchquery_manager` AS `patchquery_manager`, `pq`.`patchquerystatus_id` AS `patchquerystatus_id`, `pq`.`brand_id` AS `brand_id`, `pq`.`status_id` AS `status_id`, `pq`.`created_by` AS `created_by`, `pq`.`created_at` AS `created_at`, `pq`.`updated_by` AS `updated_by`, `pq`.`updated_at` AS `updated_at`, `pq`.`deleted_by` AS `deleted_by`, `pq`.`deleted_at` AS `deleted_at`, `u`.`user_name` AS `user_name`, `ps`.`patchquerystatus_name` AS `patchquerystatus_name` FROM ((`patchquery` `pq` join `patchquerystatus` `ps` on(`pq`.`patchquerystatus_id` = `ps`.`patchquerystatus_id`)) join `user` `u` on(`pq`.`created_by` = `u`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `ppcdetail`
--
DROP TABLE IF EXISTS `ppcdetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ppcdetail`  AS SELECT `p`.`ppc_id` AS `ppc_id`, `p`.`ppc_amount` AS `ppc_amount`, `p`.`ppc_date` AS `ppc_date`, `p`.`ppc_description` AS `ppc_description`, `p`.`brand_id` AS `brand_id`, `p`.`status_id` AS `status_id`, `p`.`created_by` AS `created_by`, `p`.`created_at` AS `created_at`, `p`.`updated_by` AS `updated_by`, `p`.`updated_at` AS `updated_at`, `p`.`deleted_by` AS `deleted_by`, `p`.`deleted_at` AS `deleted_at`, `b`.`brand_name` AS `brand_name`, `u`.`user_name` AS `user_name` FROM ((`ppc` `p` join `brand` `b` on(`p`.`brand_id` = `b`.`brand_id`)) join `user` `u` on(`p`.`created_by` = `u`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `quotedetails`
--
DROP TABLE IF EXISTS `quotedetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `quotedetails`  AS SELECT `q`.`quote_id` AS `quote_id`, `q`.`quote_title` AS `quote_title`, `q`.`quote_deadlinedate` AS `quote_deadlinedate`, `q`.`quote_minbudget` AS `quote_minbudget`, `q`.`quote_maxbudget` AS `quote_maxbudget`, `q`.`quote_description` AS `quote_description`, `q`.`quote_projecttype` AS `quote_projecttype`, `q`.`quote_feature` AS `quote_feature`, `q`.`quote_devplatform` AS `quote_devplatform`, `q`.`quote_refrence` AS `quote_refrence`, `q`.`quote_comment` AS `quote_comment`, `q`.`quote_days` AS `quote_days`, `q`.`quote_sumcost` AS `quote_sumcost`, `q`.`quote_assignedusers` AS `quote_assignedusers`, `q`.`quote_date` AS `quote_date`, `q`.`quotestatus_id` AS `quotestatus_id`, `q`.`brand_id` AS `brand_id`, `q`.`status_id` AS `status_id`, `q`.`created_by` AS `created_by`, `q`.`created_at` AS `created_at`, `q`.`updated_by` AS `updated_by`, `q`.`updated_at` AS `updated_at`, `q`.`deleted_by` AS `deleted_by`, `q`.`deleted_at` AS `deleted_at`, `qs`.`quotestatus_name` AS `quotestatus_name`, `b`.`brand_name` AS `brand_name`, `u`.`user_name` AS `user_name` FROM (((`quote` `q` join `quotestatus` `qs` on(`q`.`quotestatus_id` = `qs`.`quotestatus_id`)) join `brand` `b` on(`q`.`brand_id` = `b`.`brand_id`)) join `user` `u` on(`q`.`created_by` = `u`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `rawdatafollowuplist`
--
DROP TABLE IF EXISTS `rawdatafollowuplist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rawdatafollowuplist`  AS SELECT `rw`.`rawdatafollowup_id` AS `rawdatafollowup_id`, `rw`.`rawdatafollowup_comment` AS `rawdatafollowup_comment`, `rw`.`rawdata_id` AS `rawdata_id`, `rw`.`status_id` AS `status_id`, `rw`.`created_by` AS `created_by`, `rw`.`created_at` AS `created_at`, `u`.`user_name` AS `user_name` FROM (`rawdatafollowup` `rw` join `user` `u` on(`rw`.`created_by` = `u`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `taguserdetail`
--
DROP TABLE IF EXISTS `taguserdetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `taguserdetail`  AS SELECT `tu`.`taguser_id` AS `taguser_id`, `tu`.`taguser_userid` AS `taguser_userid`, `tu`.`taskcomment_id` AS `taskcomment_id`, `tu`.`status_id` AS `status_id`, `tu`.`created_by` AS `created_by`, `tu`.`created_at` AS `created_at`, `u`.`user_name` AS `user_name` FROM (`taguser` `tu` join `user` `u` on(`tu`.`taguser_userid` = `u`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `targetlist`
--
DROP TABLE IF EXISTS `targetlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `targetlist`  AS SELECT `ut`.`usertarget_id` AS `usertarget_id`, `ut`.`usertarget_target` AS `usertarget_target`, `ut`.`usertarget_month` AS `usertarget_month`, `ut`.`user_id` AS `user_id`, `u`.`user_name` AS `user_name`, `u`.`user_picture` AS `user_picture`, `ut`.`status_id` AS `status_id`, `ut`.`created_by` AS `created_by`, `ut`.`created_at` AS `created_at`, `ut`.`updated_by` AS `updated_by`, `ut`.`updated_at` AS `updated_at`, `uc`.`user_name` AS `creator` FROM ((`usertarget` `ut` join `user` `u` on(`ut`.`user_id` = `u`.`user_id`)) join `user` `uc` on(`ut`.`created_by` = `uc`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `taskattachmentdetails`
--
DROP TABLE IF EXISTS `taskattachmentdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `taskattachmentdetails`  AS SELECT `ta`.`taskattachment_id` AS `taskattachment_id`, `ta`.`taskattachment_name` AS `taskattachment_name`, `ta`.`task_id` AS `task_id`, `ta`.`task_token` AS `task_token`, `ta`.`attachmenttype` AS `attachmenttype`, `ta`.`status_id` AS `status_id`, `ta`.`created_by` AS `created_by`, `ta`.`created_at` AS `created_at`, `ta`.`updated_by` AS `updated_by`, `ta`.`updated_at` AS `updated_at`, `ta`.`deleted_by` AS `deleted_by`, `ta`.`deleted_at` AS `deleted_at`, `u`.`user_name` AS `user_name` FROM (`taskattachment` `ta` join `user` `u` on(`ta`.`created_by` = `u`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `taskcommentdetails`
--
DROP TABLE IF EXISTS `taskcommentdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `taskcommentdetails`  AS SELECT `tc`.`taskcomment_id` AS `taskcomment_id`, `tc`.`taskcomment_comment` AS `taskcomment_comment`, `tc`.`task_id` AS `task_id`, `tc`.`task_token` AS `task_token`, `tc`.`status_id` AS `status_id`, `tc`.`taskcomment_date` AS `taskcomment_date`, `tc`.`created_by` AS `created_by`, `tc`.`created_at` AS `created_at`, `tc`.`updated_by` AS `updated_by`, `tc`.`updated_at` AS `updated_at`, `tc`.`deleted_by` AS `deleted_by`, `tc`.`deleted_at` AS `deleted_at`, `u`.`user_name` AS `user_name`, `u`.`user_picture` AS `user_picture`, `r`.`role_name` AS `role_name` FROM ((`taskcomment` `tc` join `user` `u` on(`tc`.`created_by` = `u`.`user_id`)) join `role` `r` on(`r`.`role_id` = `u`.`role_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `tasklist`
--
DROP TABLE IF EXISTS `tasklist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tasklist`  AS SELECT `t`.`task_id` AS `task_id`, `t`.`task_title` AS `task_title`, `t`.`task_description` AS `task_description`, `t`.`task_token` AS `task_token`, `t`.`task_date` AS `task_date`, `t`.`task_deadlinedate` AS `task_deadlinedate`, `t`.`task_manager` AS `task_manager`, `t`.`task_cover` AS `task_cover`, `t`.`task_covertype` AS `task_covertype`, `t`.`order_id` AS `order_id`, `t`.`order_token` AS `order_token`, `t`.`status_id` AS `status_id`, `t`.`created_by` AS `created_by`, `t`.`created_at` AS `created_at`, `t`.`updated_by` AS `updated_by`, `t`.`updated_at` AS `updated_at`, `t`.`deleted_by` AS `deleted_by`, `t`.`deleted_at` AS `deleted_at`, `u`.`user_name` AS `creator`, `ts`.`taskstatus_id` AS `taskstatus_id`, `ts`.`taskstatus_name` AS `taskstatus_name`, `b`.`brand_id` AS `brand_id`, `o`.`created_by` AS `ordercreator`, `uo`.`user_name` AS `ordercreatorname` FROM ((((((`task` `t` left join `user` `u` on(`t`.`task_workby` = `u`.`user_id`)) join `taskstatus` `ts` on(`t`.`taskstatus_id` = `ts`.`taskstatus_id`)) join `order` `o` on(`o`.`order_id` = `t`.`order_id`)) join `lead` `l` on(`l`.`lead_id` = `o`.`lead_id`)) join `brand` `b` on(`b`.`brand_id` = `l`.`brand_id`)) join `user` `uo` on(`o`.`created_by` = `uo`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `taskmemberdetail`
--
DROP TABLE IF EXISTS `taskmemberdetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `taskmemberdetail`  AS SELECT `tm`.`taskmember_id` AS `taskmember_id`, `tm`.`task_id` AS `task_id`, `tm`.`status_id` AS `status_id`, `u`.`user_id` AS `user_id`, `u`.`user_name` AS `user_name`, `u`.`user_email` AS `user_email`, `u`.`user_picture` AS `user_picture`, `u`.`user_username` AS `user_username`, `r`.`role_name` AS `role_name` FROM ((`taskmember` `tm` join `user` `u` on(`tm`.`user_id` = `u`.`user_id`)) join `role` `r` on(`r`.`role_id` = `u`.`role_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `taskreplydetails`
--
DROP TABLE IF EXISTS `taskreplydetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `taskreplydetails`  AS SELECT `tr`.`taskreply_id` AS `taskreply_id`, `tr`.`taskreply_reply` AS `taskreply_reply`, `tr`.`taskreply_date` AS `taskreply_date`, `tr`.`taskcomment_id` AS `taskcomment_id`, `tr`.`status_id` AS `status_id`, `tr`.`created_by` AS `created_by`, `tr`.`created_at` AS `created_at`, `u`.`user_name` AS `user_name`, `u`.`user_picture` AS `user_picture`, `r`.`role_name` AS `role_name` FROM ((`taskreply` `tr` join `user` `u` on(`tr`.`created_by` = `u`.`user_id`)) join `role` `r` on(`r`.`role_id` = `u`.`role_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `uiorderdetail`
--
DROP TABLE IF EXISTS `uiorderdetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `uiorderdetail`  AS SELECT `ui`.`uiorder_id` AS `uiorder_id`, `ui`.`uiorder_title` AS `uiorder_title`, `ui`.`uiorder_deadlinedate` AS `uiorder_deadlinedate`, `ui`.`uiorder_detail` AS `uiorder_detail`, `ui`.`uiorder_assignto` AS `uiorder_assignto`, `ui`.`uiorder_date` AS `uiorder_date`, `ui`.`uiorderstatus_id` AS `uiorderstatus_id`, `ui`.`brand_id` AS `brand_id`, `ui`.`status_id` AS `status_id`, `ui`.`created_by` AS `created_by`, `ui`.`created_at` AS `created_at`, `au`.`user_name` AS `assignser_name`, `uc`.`user_name` AS `creator`, `us`.`uiorderstatus_name` AS `uiorderstatus_name` FROM (((`uiorder` `ui` left join `user` `au` on(`ui`.`uiorder_assignto` = `au`.`user_id`)) join `user` `uc` on(`ui`.`created_by` = `uc`.`user_id`)) join `uiorderstatus` `us` on(`ui`.`uiorderstatus_id` = `us`.`uiorderstatus_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `userdetail`
--
DROP TABLE IF EXISTS `userdetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `userdetail`  AS SELECT `u`.`user_id` AS `user_id`, `u`.`user_name` AS `user_name`, `u`.`user_email` AS `user_email`, `u`.`user_username` AS `user_username`, `u`.`user_target` AS `user_target`, `u`.`user_password` AS `user_password`, `u`.`user_picture` AS `user_picture`, `u`.`user_coverpicture` AS `user_coverpicture`, `u`.`user_loginstatus` AS `user_loginstatus`, `u`.`user_token` AS `user_token`, `u`.`role_id` AS `role_id`, `u`.`status_id` AS `status_id`, `u`.`created_by` AS `created_by`, `u`.`created_at` AS `created_at`, `u`.`updated_by` AS `updated_by`, `u`.`updated_at` AS `updated_at`, `u`.`deleted_by` AS `deleted_by`, `u`.`deleted_at` AS `deleted_at`, `r`.`role_name` AS `role_name` FROM (`user` `u` join `role` `r` on(`u`.`role_id` = `r`.`role_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `withdrawaldetails`
--
DROP TABLE IF EXISTS `withdrawaldetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `withdrawaldetails`  AS SELECT `w`.`withdrawal_id` AS `withdrawal_id`, `w`.`withdrawal_amount` AS `withdrawal_amount`, `w`.`withdrawal_date` AS `withdrawal_date`, `w`.`withdrawal_month` AS `withdrawal_month`, `w`.`withdrawal_comment` AS `withdrawal_comment`, `w`.`withdrawaltype_id` AS `withdrawaltype_id`, `w`.`billingmerchant_id` AS `billingmerchant_id`, `w`.`status_id` AS `status_id`, `w`.`created_by` AS `created_by`, `w`.`created_at` AS `created_at`, `wt`.`withdrawaltype_name` AS `withdrawaltype_name` FROM (`withdrawal` `w` join `withdrawaltype` `wt` on(`w`.`withdrawaltype_id` = `wt`.`withdrawaltype_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignppc`
--
ALTER TABLE `assignppc`
  ADD PRIMARY KEY (`assignppc_id`);

--
-- Indexes for table `attachmenttype`
--
ALTER TABLE `attachmenttype`
  ADD PRIMARY KEY (`attachmenttype_id`);

--
-- Indexes for table `billingfollowup`
--
ALTER TABLE `billingfollowup`
  ADD PRIMARY KEY (`billingfollowup_id`);

--
-- Indexes for table `billingmerchant`
--
ALTER TABLE `billingmerchant`
  ADD PRIMARY KEY (`billingmerchant_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `brandtype`
--
ALTER TABLE `brandtype`
  ADD PRIMARY KEY (`brandtype_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `commission`
--
ALTER TABLE `commission`
  ADD PRIMARY KEY (`commission_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `freshlead`
--
ALTER TABLE `freshlead`
  ADD PRIMARY KEY (`freshlead_id`);

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
-- Indexes for table `leadgenerate`
--
ALTER TABLE `leadgenerate`
  ADD PRIMARY KEY (`leadgenerate_id`);

--
-- Indexes for table `leadstatus`
--
ALTER TABLE `leadstatus`
  ADD PRIMARY KEY (`leadstatus_id`);

--
-- Indexes for table `leadtype`
--
ALTER TABLE `leadtype`
  ADD PRIMARY KEY (`leadtype_id`);

--
-- Indexes for table `merchant`
--
ALTER TABLE `merchant`
  ADD PRIMARY KEY (`merchant_id`);

--
-- Indexes for table `mergedeal`
--
ALTER TABLE `mergedeal`
  ADD PRIMARY KEY (`mergedeal_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`notes_id`);

--
-- Indexes for table `oldcrmpaidpayment`
--
ALTER TABLE `oldcrmpaidpayment`
  ADD PRIMARY KEY (`oldcrmpaidpayment_id`);

--
-- Indexes for table `oldorder`
--
ALTER TABLE `oldorder`
  ADD PRIMARY KEY (`oldorder_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orderattachment`
--
ALTER TABLE `orderattachment`
  ADD PRIMARY KEY (`orderattachment_id`);

--
-- Indexes for table `orderpayment`
--
ALTER TABLE `orderpayment`
  ADD PRIMARY KEY (`orderpayment_id`);

--
-- Indexes for table `orderpaymentstatus`
--
ALTER TABLE `orderpaymentstatus`
  ADD PRIMARY KEY (`orderpaymentstatus_id`);

--
-- Indexes for table `orderqa`
--
ALTER TABLE `orderqa`
  ADD PRIMARY KEY (`orderqa_id`);

--
-- Indexes for table `orderquestion`
--
ALTER TABLE `orderquestion`
  ADD PRIMARY KEY (`orderquestion_id`);

--
-- Indexes for table `orderrefrence`
--
ALTER TABLE `orderrefrence`
  ADD PRIMARY KEY (`orderrefrence_id`);

--
-- Indexes for table `orderstatus`
--
ALTER TABLE `orderstatus`
  ADD PRIMARY KEY (`orderstatus_id`);

--
-- Indexes for table `ordertype`
--
ALTER TABLE `ordertype`
  ADD PRIMARY KEY (`ordertype_id`);

--
-- Indexes for table `patch`
--
ALTER TABLE `patch`
  ADD PRIMARY KEY (`patch_id`);

--
-- Indexes for table `patchattachment`
--
ALTER TABLE `patchattachment`
  ADD PRIMARY KEY (`patchattachment_id`);

--
-- Indexes for table `patchback`
--
ALTER TABLE `patchback`
  ADD PRIMARY KEY (`patchback_id`);

--
-- Indexes for table `patchpayment`
--
ALTER TABLE `patchpayment`
  ADD PRIMARY KEY (`patchpayment_id`);

--
-- Indexes for table `patchpaymenttype`
--
ALTER TABLE `patchpaymenttype`
  ADD PRIMARY KEY (`patchpaymenttype_id`);

--
-- Indexes for table `patchproposal`
--
ALTER TABLE `patchproposal`
  ADD PRIMARY KEY (`patchproposal_id`);

--
-- Indexes for table `patchquery`
--
ALTER TABLE `patchquery`
  ADD PRIMARY KEY (`patchquery_id`);

--
-- Indexes for table `patchqueryattachment`
--
ALTER TABLE `patchqueryattachment`
  ADD PRIMARY KEY (`patchqueryattachment_id`);

--
-- Indexes for table `patchqueryattachmenttype`
--
ALTER TABLE `patchqueryattachmenttype`
  ADD PRIMARY KEY (`patchqueryattachmenttype_id`);

--
-- Indexes for table `patchquerycategory`
--
ALTER TABLE `patchquerycategory`
  ADD PRIMARY KEY (`patchquerycategory_id`);

--
-- Indexes for table `patchqueryfollowup`
--
ALTER TABLE `patchqueryfollowup`
  ADD PRIMARY KEY (`patchqueryfollowup_id`);

--
-- Indexes for table `patchqueryitem`
--
ALTER TABLE `patchqueryitem`
  ADD PRIMARY KEY (`patchqueryitem_id`);

--
-- Indexes for table `patchqueryitemattachment`
--
ALTER TABLE `patchqueryitemattachment`
  ADD PRIMARY KEY (`patchqueryitemattachment_id`);

--
-- Indexes for table `patchqueryshipping`
--
ALTER TABLE `patchqueryshipping`
  ADD PRIMARY KEY (`patchqueryshipping_id`);

--
-- Indexes for table `patchquerystatus`
--
ALTER TABLE `patchquerystatus`
  ADD PRIMARY KEY (`patchquerystatus_id`);

--
-- Indexes for table `patchqueryvendor`
--
ALTER TABLE `patchqueryvendor`
  ADD PRIMARY KEY (`patchqueryvendor_id`);

--
-- Indexes for table `patchstatus`
--
ALTER TABLE `patchstatus`
  ADD PRIMARY KEY (`patchstatus_id`);

--
-- Indexes for table `patchtype`
--
ALTER TABLE `patchtype`
  ADD PRIMARY KEY (`patchtype_id`);

--
-- Indexes for table `ppc`
--
ALTER TABLE `ppc`
  ADD PRIMARY KEY (`ppc_id`);

--
-- Indexes for table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`quote_id`);

--
-- Indexes for table `quoteattachment`
--
ALTER TABLE `quoteattachment`
  ADD PRIMARY KEY (`quoteattachment_id`);

--
-- Indexes for table `quotepayment`
--
ALTER TABLE `quotepayment`
  ADD PRIMARY KEY (`quotepayment_id`);

--
-- Indexes for table `quotestatus`
--
ALTER TABLE `quotestatus`
  ADD PRIMARY KEY (`quotestatus_id`);

--
-- Indexes for table `rawdata`
--
ALTER TABLE `rawdata`
  ADD PRIMARY KEY (`rawdata_id`);

--
-- Indexes for table `rawdatafollowup`
--
ALTER TABLE `rawdatafollowup`
  ADD PRIMARY KEY (`rawdatafollowup_id`);

--
-- Indexes for table `rawdatasheet`
--
ALTER TABLE `rawdatasheet`
  ADD PRIMARY KEY (`rawdatasheet_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `searchlead`
--
ALTER TABLE `searchlead`
  ADD PRIMARY KEY (`searchlead_id`);

--
-- Indexes for table `searchleadfollowup`
--
ALTER TABLE `searchleadfollowup`
  ADD PRIMARY KEY (`searchleadfollowup_id`);

--
-- Indexes for table `searchleadstatus`
--
ALTER TABLE `searchleadstatus`
  ADD PRIMARY KEY (`searchleadstatus_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `taguser`
--
ALTER TABLE `taguser`
  ADD PRIMARY KEY (`taguser_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `taskattachment`
--
ALTER TABLE `taskattachment`
  ADD PRIMARY KEY (`taskattachment_id`);

--
-- Indexes for table `taskcomment`
--
ALTER TABLE `taskcomment`
  ADD PRIMARY KEY (`taskcomment_id`);

--
-- Indexes for table `taskmember`
--
ALTER TABLE `taskmember`
  ADD PRIMARY KEY (`taskmember_id`);

--
-- Indexes for table `taskreply`
--
ALTER TABLE `taskreply`
  ADD PRIMARY KEY (`taskreply_id`);

--
-- Indexes for table `taskstatus`
--
ALTER TABLE `taskstatus`
  ADD PRIMARY KEY (`taskstatus_id`);

--
-- Indexes for table `uiattachment`
--
ALTER TABLE `uiattachment`
  ADD PRIMARY KEY (`uiattachment_id`);

--
-- Indexes for table `uiorder`
--
ALTER TABLE `uiorder`
  ADD PRIMARY KEY (`uiorder_id`);

--
-- Indexes for table `uiorderstatus`
--
ALTER TABLE `uiorderstatus`
  ADD PRIMARY KEY (`uiorderstatus_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `userbarnd`
--
ALTER TABLE `userbarnd`
  ADD PRIMARY KEY (`userbarnd_id`);

--
-- Indexes for table `usertarget`
--
ALTER TABLE `usertarget`
  ADD PRIMARY KEY (`usertarget_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `vendortype`
--
ALTER TABLE `vendortype`
  ADD PRIMARY KEY (`vendortype_id`);

--
-- Indexes for table `withdrawal`
--
ALTER TABLE `withdrawal`
  ADD PRIMARY KEY (`withdrawal_id`);

--
-- Indexes for table `withdrawaltype`
--
ALTER TABLE `withdrawaltype`
  ADD PRIMARY KEY (`withdrawaltype_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignppc`
--
ALTER TABLE `assignppc`
  MODIFY `assignppc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachmenttype`
--
ALTER TABLE `attachmenttype`
  MODIFY `attachmenttype_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billingfollowup`
--
ALTER TABLE `billingfollowup`
  MODIFY `billingfollowup_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billingmerchant`
--
ALTER TABLE `billingmerchant`
  MODIFY `billingmerchant_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brandtype`
--
ALTER TABLE `brandtype`
  MODIFY `brandtype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `commission`
--
ALTER TABLE `commission`
  MODIFY `commission_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `freshlead`
--
ALTER TABLE `freshlead`
  MODIFY `freshlead_id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `leadgenerate`
--
ALTER TABLE `leadgenerate`
  MODIFY `leadgenerate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leadstatus`
--
ALTER TABLE `leadstatus`
  MODIFY `leadstatus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leadtype`
--
ALTER TABLE `leadtype`
  MODIFY `leadtype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `merchant`
--
ALTER TABLE `merchant`
  MODIFY `merchant_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mergedeal`
--
ALTER TABLE `mergedeal`
  MODIFY `mergedeal_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `notes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oldcrmpaidpayment`
--
ALTER TABLE `oldcrmpaidpayment`
  MODIFY `oldcrmpaidpayment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oldorder`
--
ALTER TABLE `oldorder`
  MODIFY `oldorder_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderattachment`
--
ALTER TABLE `orderattachment`
  MODIFY `orderattachment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderpayment`
--
ALTER TABLE `orderpayment`
  MODIFY `orderpayment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderpaymentstatus`
--
ALTER TABLE `orderpaymentstatus`
  MODIFY `orderpaymentstatus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orderqa`
--
ALTER TABLE `orderqa`
  MODIFY `orderqa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderquestion`
--
ALTER TABLE `orderquestion`
  MODIFY `orderquestion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `orderrefrence`
--
ALTER TABLE `orderrefrence`
  MODIFY `orderrefrence_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderstatus`
--
ALTER TABLE `orderstatus`
  MODIFY `orderstatus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ordertype`
--
ALTER TABLE `ordertype`
  MODIFY `ordertype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patch`
--
ALTER TABLE `patch`
  MODIFY `patch_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patchattachment`
--
ALTER TABLE `patchattachment`
  MODIFY `patchattachment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patchback`
--
ALTER TABLE `patchback`
  MODIFY `patchback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patchpayment`
--
ALTER TABLE `patchpayment`
  MODIFY `patchpayment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patchpaymenttype`
--
ALTER TABLE `patchpaymenttype`
  MODIFY `patchpaymenttype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patchproposal`
--
ALTER TABLE `patchproposal`
  MODIFY `patchproposal_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patchquery`
--
ALTER TABLE `patchquery`
  MODIFY `patchquery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patchqueryattachment`
--
ALTER TABLE `patchqueryattachment`
  MODIFY `patchqueryattachment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patchqueryattachmenttype`
--
ALTER TABLE `patchqueryattachmenttype`
  MODIFY `patchqueryattachmenttype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patchquerycategory`
--
ALTER TABLE `patchquerycategory`
  MODIFY `patchquerycategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `patchqueryfollowup`
--
ALTER TABLE `patchqueryfollowup`
  MODIFY `patchqueryfollowup_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patchqueryitem`
--
ALTER TABLE `patchqueryitem`
  MODIFY `patchqueryitem_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patchqueryitemattachment`
--
ALTER TABLE `patchqueryitemattachment`
  MODIFY `patchqueryitemattachment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patchqueryshipping`
--
ALTER TABLE `patchqueryshipping`
  MODIFY `patchqueryshipping_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patchquerystatus`
--
ALTER TABLE `patchquerystatus`
  MODIFY `patchquerystatus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `patchqueryvendor`
--
ALTER TABLE `patchqueryvendor`
  MODIFY `patchqueryvendor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patchstatus`
--
ALTER TABLE `patchstatus`
  MODIFY `patchstatus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patchtype`
--
ALTER TABLE `patchtype`
  MODIFY `patchtype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ppc`
--
ALTER TABLE `ppc`
  MODIFY `ppc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quote`
--
ALTER TABLE `quote`
  MODIFY `quote_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quoteattachment`
--
ALTER TABLE `quoteattachment`
  MODIFY `quoteattachment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotepayment`
--
ALTER TABLE `quotepayment`
  MODIFY `quotepayment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotestatus`
--
ALTER TABLE `quotestatus`
  MODIFY `quotestatus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rawdata`
--
ALTER TABLE `rawdata`
  MODIFY `rawdata_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rawdatafollowup`
--
ALTER TABLE `rawdatafollowup`
  MODIFY `rawdatafollowup_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rawdatasheet`
--
ALTER TABLE `rawdatasheet`
  MODIFY `rawdatasheet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `searchlead`
--
ALTER TABLE `searchlead`
  MODIFY `searchlead_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `searchleadfollowup`
--
ALTER TABLE `searchleadfollowup`
  MODIFY `searchleadfollowup_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `searchleadstatus`
--
ALTER TABLE `searchleadstatus`
  MODIFY `searchleadstatus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `taguser`
--
ALTER TABLE `taguser`
  MODIFY `taguser_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taskattachment`
--
ALTER TABLE `taskattachment`
  MODIFY `taskattachment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taskcomment`
--
ALTER TABLE `taskcomment`
  MODIFY `taskcomment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taskmember`
--
ALTER TABLE `taskmember`
  MODIFY `taskmember_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taskreply`
--
ALTER TABLE `taskreply`
  MODIFY `taskreply_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taskstatus`
--
ALTER TABLE `taskstatus`
  MODIFY `taskstatus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `uiattachment`
--
ALTER TABLE `uiattachment`
  MODIFY `uiattachment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uiorder`
--
ALTER TABLE `uiorder`
  MODIFY `uiorder_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uiorderstatus`
--
ALTER TABLE `uiorderstatus`
  MODIFY `uiorderstatus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `userbarnd`
--
ALTER TABLE `userbarnd`
  MODIFY `userbarnd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `usertarget`
--
ALTER TABLE `usertarget`
  MODIFY `usertarget_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendortype`
--
ALTER TABLE `vendortype`
  MODIFY `vendortype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `withdrawal`
--
ALTER TABLE `withdrawal`
  MODIFY `withdrawal_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawaltype`
--
ALTER TABLE `withdrawaltype`
  MODIFY `withdrawaltype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
