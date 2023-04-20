-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 11:20 PM
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
-- Database: `bwchrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `acknowledgedpay`
--

CREATE TABLE `acknowledgedpay` (
  `acknowledgedpay_id` int(11) NOT NULL,
  `acknowledgedpay_status` varchar(255) DEFAULT NULL,
  `acknowledgedpay_month` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `EMP_BADGE_ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adjustment` decimal(11,0) DEFAULT NULL,
  `incentiveamount` decimal(10,0) DEFAULT NULL,
  `spiffamount` decimal(10,0) DEFAULT NULL,
  `otheramount` decimal(10,0) DEFAULT NULL,
  `lastamount` decimal(10,0) DEFAULT NULL,
  `AdjMonth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `AdjComment` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `album_title` text DEFAULT NULL,
  `album_date` date DEFAULT NULL,
  `album_image` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `announcement_id` int(11) NOT NULL,
  `announcement_title` text NOT NULL,
  `announcement_desc` longtext NOT NULL,
  `announcement_image` text DEFAULT NULL,
  `announcement_for` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `attendance_date` date NOT NULL,
  `attendance_month` varchar(200) NOT NULL,
  `attendance_mark` varchar(200) NOT NULL DEFAULT 'Absent',
  `elsemployees_empid` int(11) NOT NULL,
  `attendance_submitby` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendancecorrection`
--

CREATE TABLE `attendancecorrection` (
  `attendancecorrection_id` int(11) NOT NULL,
  `attendancecorrection_title` text DEFAULT NULL,
  `attendancecorrection_desc` text DEFAULT NULL,
  `attendancecorrection_affdate` date DEFAULT NULL,
  `attendancecorrection_amount` double DEFAULT NULL,
  `attendancecorrection_image` text DEFAULT NULL,
  `attendancecorrection_status` varchar(255) DEFAULT NULL,
  `attendancecorrection_managercomment` text DEFAULT NULL,
  `attendancecorrection_admincomment` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `attendancetest`
--

CREATE TABLE `attendancetest` (
  `attendance_id` int(11) NOT NULL,
  `attendance_date` date NOT NULL,
  `attendance_month` varchar(200) NOT NULL,
  `attendance_mark` varchar(200) NOT NULL DEFAULT 'Absent',
  `elsemployees_empid` int(11) NOT NULL,
  `attendance_submitby` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendancetimeout`
--

CREATE TABLE `attendancetimeout` (
  `attendance_id` int(11) NOT NULL,
  `attendance_date` date NOT NULL,
  `attendance_month` varchar(200) NOT NULL,
  `attendance_mark` varchar(200) NOT NULL DEFAULT 'Absent',
  `elsemployees_empid` int(11) NOT NULL,
  `attendance_submitby` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bioattendance`
--

CREATE TABLE `bioattendance` (
  `attendance_id` int(11) NOT NULL,
  `attendance_date` date NOT NULL,
  `attendance_month` varchar(200) NOT NULL,
  `attendance_mark` varchar(200) NOT NULL DEFAULT 'Absent',
  `elsemployees_empid` int(11) NOT NULL,
  `attendance_submitby` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `can_evulation`
--

CREATE TABLE `can_evulation` (
  `can_evu_id` int(11) NOT NULL,
  `can_evu_job_id` int(11) NOT NULL,
  `can_evu_company` varchar(200) DEFAULT NULL,
  `can_evu_reportsto` varchar(100) DEFAULT NULL,
  `can_evu_location` varchar(250) DEFAULT NULL,
  `can_evu_grade` varchar(50) DEFAULT NULL,
  `can_evu_reference` varchar(200) DEFAULT NULL,
  `can_evu_job_type` varchar(250) DEFAULT NULL,
  `can_evu_relativename` varchar(200) DEFAULT NULL,
  `can_evu_budget` varchar(100) DEFAULT NULL,
  `can_evu_depends` varchar(200) DEFAULT NULL,
  `can_evu_expbnft` varchar(250) DEFAULT NULL,
  `can_evu_off_salary` varchar(100) DEFAULT NULL,
  `can_evu_off_desg` varchar(100) DEFAULT NULL,
  `can_evu_hr_expdate` varchar(100) DEFAULT NULL,
  `can_evu_job_sum` varchar(300) DEFAULT NULL,
  `can_evu_hr_qua` varchar(50) DEFAULT NULL,
  `can_evu_hr_per_tra` varchar(50) DEFAULT NULL,
  `can_evu_hr_com_ski` varchar(50) DEFAULT NULL,
  `can_evu_hr_obtain` varchar(200) DEFAULT NULL,
  `can_evu_hr_pre` int(50) DEFAULT NULL,
  `can_evu_hr_ver_ski` varchar(50) DEFAULT NULL,
  `can_evu_hr_body` varchar(50) DEFAULT NULL,
  `can_evu_hr_manner` varchar(50) DEFAULT NULL,
  `can_evu_hr_reson` varchar(50) DEFAULT NULL,
  `can_evu_hr_obtain_mark` varchar(200) DEFAULT NULL,
  `can_evu_hr_int_name` varchar(250) DEFAULT NULL,
  `can_evu_hr_int_date` date DEFAULT NULL,
  `can_evu_hr_comments` varchar(300) DEFAULT NULL,
  `can_evu_hod_comments` varchar(500) DEFAULT NULL,
  `can_evu_hod_job_rel` varchar(50) DEFAULT NULL,
  `can_evu_hod_exp` varchar(50) DEFAULT NULL,
  `can_evu_hod_know` varchar(50) DEFAULT NULL,
  `can_evu_hod_carpro` varchar(50) DEFAULT NULL,
  `can_evu_hod_noble` varchar(50) DEFAULT NULL,
  `can_evu_hod_pot` varchar(50) DEFAULT NULL,
  `can_evu_hod_obtain` varchar(200) DEFAULT NULL,
  `can_evu_hr_cand` varchar(250) DEFAULT NULL,
  `can_evu_hod_cand` varchar(250) DEFAULT NULL,
  `can_evu_rec_sal` int(11) DEFAULT NULL,
  `can_evu_pro_desg` varchar(200) DEFAULT NULL,
  `can_evu_coo_remark` varchar(300) DEFAULT NULL,
  `can_evu_approval` varchar(50) DEFAULT NULL,
  `can_evu_app_name` varchar(250) DEFAULT NULL,
  `can_evu_app_date` date DEFAULT NULL,
  `can_evu_sal_afpro` varchar(200) DEFAULT NULL,
  `can_evu_ChangeBy` varchar(200) DEFAULT NULL,
  `can_eva_date` date DEFAULT NULL,
  `can_meet_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `car_name` varchar(255) DEFAULT NULL,
  `car_model` varchar(255) DEFAULT NULL,
  `car_picture` text DEFAULT NULL,
  `car_rent` double DEFAULT NULL,
  `car_otherdetails` text DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `caraddition`
--

CREATE TABLE `caraddition` (
  `caraddition_id` int(11) NOT NULL,
  `caraddition_rent` double DEFAULT NULL,
  `caraddition_comment` text DEFAULT NULL,
  `caraddition_date` varchar(255) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `carassign`
--

CREATE TABLE `carassign` (
  `carassign_id` int(11) NOT NULL,
  `carassign_month` varchar(255) DEFAULT NULL,
  `carassign_to` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `chatuser`
-- (See below for the actual view)
--
CREATE TABLE `chatuser` (
`unseen` bigint(21)
,`elsemployees_empid` int(10) unsigned
,`elsemployees_name` varchar(255)
,`elsemployees_image` varchar(255)
,`message_id` bigint(20) unsigned
,`message_from` int(11)
,`message_to` int(11)
,`message_body` longtext
,`message_attachment` longtext
,`message_originalname` longtext
,`message_seen` tinyint(1)
,`message_quoteid` varchar(255)
,`message_quotebody` text
,`message_quoteuser` varchar(255)
,`message_forwarded` int(11)
,`status_id` int(11)
,`created_at` timestamp
,`updated_at` timestamp
,`DESG_NAME` varchar(250)
);

-- --------------------------------------------------------

--
-- Table structure for table `commentpost`
--

CREATE TABLE `commentpost` (
  `commentpost_id` int(11) NOT NULL,
  `commentpost_comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentpost_status` varchar(255) DEFAULT NULL,
  `announcement_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `complain_id` int(11) NOT NULL,
  `complain_note` longtext DEFAULT NULL,
  `complain_date` date DEFAULT NULL,
  `complainstatus_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `complaincomment`
--

CREATE TABLE `complaincomment` (
  `complaincomment_id` int(11) NOT NULL,
  `complaincomment_comment` text DEFAULT NULL,
  `complaincomment_date` date DEFAULT NULL,
  `complain_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `complainstatus`
--

CREATE TABLE `complainstatus` (
  `complainstatus_id` int(11) NOT NULL,
  `complainstatus_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complainstatus`
--

INSERT INTO `complainstatus` (`complainstatus_id`, `complainstatus_name`, `status_id`) VALUES
(1, 'Pending', 1),
(2, 'In Process', 1),
(3, 'Rejected', 1),
(4, 'Resolved', 1);

-- --------------------------------------------------------

--
-- Table structure for table `decrement`
--

CREATE TABLE `decrement` (
  `decrement_id` int(11) NOT NULL,
  `decrement_amount` double DEFAULT NULL,
  `decrement_year` int(11) DEFAULT NULL,
  `decrement_month` varchar(255) DEFAULT NULL,
  `elsemployees_batchid` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `deductions_id` int(11) NOT NULL,
  `EMP_BADGE_ID` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deductions_bizzfund` decimal(10,0) DEFAULT NULL,
  `deductions_tax` decimal(10,0) DEFAULT NULL,
  `deductions_loan` decimal(10,0) DEFAULT NULL,
  `deductions_apiff` decimal(10,0) DEFAULT NULL,
  `deductions_advance` decimal(10,0) DEFAULT NULL,
  `deductions_month` varchar(255) DEFAULT NULL,
  `deductions_comment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deliveredpay`
--

CREATE TABLE `deliveredpay` (
  `deliveredpay_id` int(11) NOT NULL,
  `deliveredpay_amount` double DEFAULT NULL,
  `deliveredpay_status` varchar(255) DEFAULT NULL,
  `deliveredpay_month` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deliveredpaylog`
--

CREATE TABLE `deliveredpaylog` (
  `deliveredpaylog_id` int(11) NOT NULL,
  `deliveredpaylog_amount` double DEFAULT NULL,
  `deliveredpay_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPT_ID` int(11) NOT NULL,
  `DEPT_NAME` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deptpictures`
--

CREATE TABLE `deptpictures` (
  `deptpic_id` int(11) NOT NULL,
  `DEPT_NAME` varchar(250) DEFAULT NULL,
  `dept_picture` longtext DEFAULT NULL,
  `dept_video` varchar(200) DEFAULT NULL,
  `dept_description` text DEFAULT NULL,
  `dept_date` date DEFAULT NULL,
  `elsemployees_name` varchar(250) DEFAULT NULL,
  `auditimage` varchar(250) DEFAULT 'Pending',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `DESG_ID` int(11) NOT NULL,
  `DESG_NAME` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `elsemployees`
--

CREATE TABLE `elsemployees` (
  `elsemployees_empid` int(10) UNSIGNED NOT NULL,
  `elsemployees_batchid` int(11) NOT NULL,
  `elsemployees_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elsemployees_fname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `elsemployees_cnic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `elsemployees_cno` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `elsemployees_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elsemployees_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elsemployees_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elsemployees_coverimage` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `elsemployees_dofbirth` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `elsemployees_dofjoining` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `elsemployees_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `elsemployees_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `elsemployees_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `elsemployees_departid` int(11) NOT NULL,
  `elsemployees_subdepartid` int(11) DEFAULT NULL,
  `elsemployees_desgid` int(11) NOT NULL,
  `elsemployees_reportingto` int(11) NOT NULL,
  `elsemployees_roleid` int(11) NOT NULL,
  `elsemployees_status` int(11) NOT NULL,
  `elsemployees_annualleaves` int(11) NOT NULL,
  `elsemployees_sickleaves` int(11) NOT NULL,
  `elsemployees_leaveyear` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT '-',
  `account_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT '-',
  `iban_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT '-',
  `bank_branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT '-',
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '-',
  `verify_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `elsemployees_changeby` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elsemployees_addby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `probiation_status` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'New',
  `emailschedule_userstatus` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Not Active',
  `emailschedule_lastactive` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_loginstatus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `elsemployees_dofleaving` date DEFAULT NULL,
  `elsemployees_dofpayroll` date DEFAULT NULL,
  `elsemployees_allowoutsideemail` int(11) NOT NULL DEFAULT 0,
  `elsemployees_emailname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `elsemployees_emailaddress` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `elsemployees_emailpassword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `elsemployees_emailhost` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `elsemployees_careligibility` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `elsemployees_assigncaroramount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `elsemployees_caramount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `elsemployees`
--

INSERT INTO `elsemployees` (`elsemployees_empid`, `elsemployees_batchid`, `elsemployees_name`, `elsemployees_fname`, `elsemployees_cnic`, `elsemployees_cno`, `elsemployees_email`, `elsemployees_password`, `elsemployees_image`, `elsemployees_coverimage`, `elsemployees_dofbirth`, `elsemployees_dofjoining`, `elsemployees_address`, `elsemployees_type`, `elsemployees_ext`, `elsemployees_departid`, `elsemployees_subdepartid`, `elsemployees_desgid`, `elsemployees_reportingto`, `elsemployees_roleid`, `elsemployees_status`, `elsemployees_annualleaves`, `elsemployees_sickleaves`, `elsemployees_leaveyear`, `account_title`, `account_no`, `iban_no`, `bank_branch`, `bank_name`, `verify_token`, `elsemployees_changeby`, `elsemployees_addby`, `created_at`, `updated_at`, `probiation_status`, `emailschedule_userstatus`, `emailschedule_lastactive`, `user_loginstatus`, `elsemployees_dofleaving`, `elsemployees_dofpayroll`, `elsemployees_allowoutsideemail`, `elsemployees_emailname`, `elsemployees_emailaddress`, `elsemployees_emailpassword`, `elsemployees_emailhost`, `elsemployees_careligibility`, `elsemployees_assigncaroramount`, `car_id`, `elsemployees_caramount`) VALUES
(1, 1218, 'Muhammad Mehroz', 'Muhammad Jamil', '42201-77771370-5', '0333-1230521', 'muhammad.mehroz@bizzworld.com', 'bizz-world!786', 'muhammad.mehroz@bizzworld.com_2022-08-30_.35.571428571429_.jpg', 'muhammad.mehroz@bizzworld.com_2022-01-21_.39_.jpg', '1992-12-25', '2020-10-01', 'D-42 rufi dream land gulistan-e-johar block-8 karachi', 'Other', '1005', 1, NULL, 1, 30, 1, 2, 5, 0, '2022', 'Muhammad Mehroz', '262946188', '-', '1266- Safoora Goth Branch', 'United Bank Limited', 'ac123', 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2023-04-06 20:08:20', 'New', 'Not Active', NULL, 'Offline', NULL, '2020-10-01', 1, 'Muhammad Mehroz', 'muhammad.mehroz@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(2, 1223, 'Aleena Afzal', 'Afzal Khan', '42401-4662818-2', '0317-2800632', 'aleena.afzal@bizzworld.com', 'welcometo2023', 'aimal.siddiqui@bizzworld.com_2021-05-07_.2.8571428571429_.png', 'aleena.afzal@bizzworld.com_2022-04-19_.115.28571428571_.jpg', '2001-09-14', '2020-09-18', 'Plot # 214, &quot;CB&quot; Block 2, Metroville 3rd Abul Hasan Isphahani Road, Karachi, Sindh, N/A, Pakistan', 'Revenue', '8026', 17, NULL, 32, 79, 3, 2, 8, 0, '2022', 'Aleena', '270855689', 'PK94UNIL0109000270855689', '1918- Abul Hassan Isphani Branch', 'United Bank Limited', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2023-04-03 19:20:53', 'New', 'Not Active', NULL, 'Online', NULL, '2020-09-18', 0, 'Aleena Afzal', 'aleena.afzal@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 8026),
(3, 1197, 'Ali Madad', 'Eid Muhammad', '42401-6946633-7', '0332-2475847', 'ali.changezi@bizzworld.com', 'Changezi@1', 'Ali.png', 'ali.changezi@bizzworld.com_2021-11-23_.81.142857142857_.jpg', '2000-08-08', '2020-02-24', 'House # 57, Manghopir, Yaqoob Shah Basti, Karachi, Sindh, N/A, Pakistan', 'Other', '8001', 7, NULL, 2, 79, 4, 2, 12, 0, '2023', '-', NULL, '-', '-', '-', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2023-03-10 21:16:54', 'New', 'Not Active', NULL, 'Offline', NULL, '2020-02-24', 0, 'Ali Madad', 'ali.madad@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 8001),
(4, 1207, 'Shahzaib Hussain', 'Hussain', '42101-8866336-5', '0310-3483841', 'shahzaib.hussain@bizzworld.com', 'bizzworld@2', 'shahzaibhussain.png', NULL, '1999-11-24', '2020-07-16', 'House # A-367, Sector 11-E, New Qasba Colony, Karachi, Sindh, N/A, Pakistan', NULL, '0', 15, NULL, 2, 18, 4, 1, 12, 0, '2020', '-', '262707536', '-', '-', '-', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2021-05-31 17:33:57', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Shahzaib Hussain', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1230, 'Razeen Raheem', 'Kashwani', '---', '0308-9779906', 'razeem.kashwani@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '2003-11-20', '2021-04-05', 'Momin Center A-1 block-7, F.B Area, Karachi, Sindh, N/A, Pakistan', NULL, '0', 15, NULL, 2, 18, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2021-05-31 17:34:10', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Razeen Raheem', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1222, 'Muhammad Wasi Abbas', 'Abbas', '42101-5380061-5', '0308-7622575', 'muhammad.abbas@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '2001-02-15', '2020-09-10', 'C-304 Phase 2 Haroon Royal City, Gulistan-e-Johar, Karachi, Sindh, N/A, Pakistan', NULL, '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Rafia', '1', '0000-00-00 00:00:00', '2021-03-01 23:32:35', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Muhammad Wasi Abbas', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1211, 'Syed Abidi', 'Abidi', '42201-2254889-1', '0315-8451569', 'syed.abidi@bizzworld.com', 'bizzworld@2', 'kamran.png', NULL, '1980-04-22', '2020-08-17', '52/50 Pak Sadaat Colony, Shah Faisal Colony, Karachi, Sindh, 77550, Pakistan', NULL, '0', 5, NULL, 3, 27, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Rafia', '1', '0000-00-00 00:00:00', '2021-03-01 23:32:47', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Syed Abidi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1228, 'Anaya', 'Afzal', '42101-1148480-0', '0333-0203928', 'anaya.afzal@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '2003-04-13', '2020-11-05', 'Flat # f-17 Bait-ul-Aman, Sector 5-K North Karachi, Karachi, Sindh, N/A, Pakistan', NULL, '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Rafia', '1', '0000-00-00 00:00:00', '2021-03-01 23:33:09', 'Pending', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Anaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1226, 'Syed Owais Ahmed', 'Syed Naseer Ahmed', '42101-7227011-5', '0333-0203928', 'syed.owais@bizzworld.com', 'Syed3786', 'aimal.siddiqui@bizzworld.com_2021-05-07_.85.571428571429_.png', NULL, '1982-12-11', '2020-10-13', 'House # A-6/15 F.C Area, F.C Area, Karachi, Sindh, N/A, Pakistan', 'Other', '0', 4, NULL, 4, 28, 4, 1, 12, 0, '2021', 'Syed Owais Ahmed', '271153614', 'PK38UNIL0109000271153614', '0678 - Federal \'B\' Area, Karmibad', 'UNITED BANK LIMITED', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2022-01-10 22:34:02', 'New', 'Not Active', NULL, 'Offline', '2021-12-03', '2020-10-13', 0, 'Syed Owais Ahmed', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1192, 'Syed Umer', 'Ahmed', '42101-9099063-3', '0314-2209409', 'syed.ahmed1@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '2000-05-12', '2020-03-09', 'House # B-269, Block 2, Azizabad, F.B Area, Karachi, Sindh, N/A, Pakistan', NULL, '0', 1, NULL, 5, 30, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2021-03-01 23:17:34', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Syed Umer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1234, 'Faheem', 'Ahmed', '42201-2351722-3', '0330-8211113', 'faheem.ahmed@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '1982-03-27', '2020-12-28', '1159, 1160 Street #25, P.I.B Colony, Karachi, Sindh, N/A, Pakistan', NULL, '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Rafia', '1', '0000-00-00 00:00:00', '2021-03-01 23:38:54', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Faheem', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 1149, 'Abbas ALi', 'Ali', '41104-9860453-9', '0347-3729766', 'abbas.ali@bizzworld.com', 'bizzworld@2', 'Abbas.png', NULL, '1995-01-01', '2020-01-13', 'House # 112 Near Higher Secondary School, Gulshan-e-Iqbal Block 10, Karachi, Sindh, N/A, Pakistan', NULL, '0', 1, NULL, 5, 30, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2021-09-06 23:01:51', 'New', 'Not Active', NULL, 'Offline', '2020-12-31', NULL, 0, 'Abbas ALi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 1189, 'Syed Ali', 'Ali', '42101-6406145-3', '0309-2021233', 'syed.ali@bizzworld.com', 'bizzworld@2', 'mohsin.png', NULL, '1998-08-08', '2019-12-02', 'House # 583, Block 8 Aziz Abad F.B Area, Karachi, Sindh, N/A, Pakistan', NULL, '0', 7, NULL, 2, 18, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Rafia', '1', '0000-00-00 00:00:00', '2021-03-01 23:49:44', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Syed Ali', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 1191, 'Mohsin Ali', 'Abdul Sattar', '42101-3587856-9', '0304-3211308', 'mohsin.ali@bizzworld.com', 'Father13', 'salman.khairi@bizzworld.com_2021-05-06_.96.428571428571_.jpg', NULL, '2001-06-29', '2020-02-11', 'R-448, Sector 15A-4, Bufferzone Karachi', 'Revenue', '8012', 2, NULL, 2, 28, 4, 2, 12, 0, '2023', 'MOHSIN ALI', '278869354', '-', '1918', 'UBL', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2023-01-31 22:32:33', 'New', 'Not Active', NULL, 'Offline', NULL, '2020-02-11', 0, 'Mohsin Ali', 'mohsin.ali@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 8012),
(15, 1217, 'Muhammad Irfan', 'Ansari', '41203-3538897-7', '0307-2979279', 'irfan.ansari@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '1993-04-17', '2020-09-21', 'House# B-47, Street # 5, Saadi Town, Karachi, Sindh, n/a, Pakistan', NULL, '0', 1, NULL, 6, 30, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2021-03-01 23:16:13', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Muhammad Irfan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 1188, 'Muhammad Zain', 'Muhammad Waseem', '42000-3125761-1', '0324-2230364', 'zain.awan@bizzworld.com', 'bizzworld@2', 'aimal.siddiqui@bizzworld.com_2021-06-16_.59.142857142857_.jpg', 'zain.awan@bizzworld.com_2021-06-11_.136.28571428571_.jpg', '2000-12-05', '2020-01-22', 'Flat # 109, Block A-1 Madina Blessing Appartment, Gulshan-e-Iqbal Block 10-A, Karachi, Sindh, N/A, Pakistan', 'Other', '1003', 1, 1, 5, 30, 4, 1, 3, 0, '2022', 'Muhammad Zain', '269416046', '-', 'Abbas Town', 'United Bank Limited', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2022-06-09 10:17:19', 'New', 'Not Active', NULL, 'Offline', NULL, '2020-01-22', 0, 'Muhammad Zain', 'zain.awan@bizzworld.com', 'zain.awan@bizzworld.com', 'zain.awan@bizzworld.com', NULL, NULL, NULL, NULL),
(17, 1196, 'Sardar Ayesha Siddiqua Azam', 'Fareed Azam', '42201-4736905-0', '03343547335-0300-2264850', 'sardar.azam@bizzworld.com', 'bizzworld@2', 'salman.khairi@bizzworld.com_2021-05-06_.135.28571428571_.jpg', NULL, '1998-08-04', '2020-02-12', 'F 4/5 Maymar Plaza Block 1, Gulshan-e-Iqbal near Abid Town, Karachi, Sindh, N/A, Pakistan', 'Sales', '8036', 15, NULL, 2, 51, 4, 1, 12, 0, '2020', 'Ayesha Khan', '266807865', 'PK84UNIL0109000266807865', '1918- Abul Hassan Isphani Branch', 'United Bank Limited', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2021-09-23 23:23:12', 'New', 'Not Active', NULL, 'Online', '2021-08-27', NULL, 0, 'Sardar Ayesha Siddiqua Azam', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 1003, 'Syed Aun Bukhari', 'Bukhari', '0', '0321-9250009', 'syed.bukhari@bizzworld.com', 'bizzworld@2', 'rafia.naaz@bizzworld.com_2022-01-18_.80.428571428571_.png', NULL, '1993-10-12', '2020-12-16', '---', 'Other', '8001', 14, NULL, 19, 80, 3, 2, 12, 0, '2022', '-', NULL, '-', '-', '-', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2022-06-08 10:37:16', 'New', 'Not Active', NULL, 'Offline', NULL, '2015-06-01', 0, 'Syed Aun Bukhari', 'syed.bukhari@bizzworld.com', '0000', '0', NULL, NULL, NULL, NULL),
(19, 1010, 'Sami UD Din', 'Moin UD Din', '42101-4381749-7', '0336-2287979', 'sami.din@bizzworld.com', 'bizzworld@2', 'salman.khairi@bizzworld.com_2021-05-06_.81.714285714286_.jpg', NULL, '1993-11-01', '2016-11-14', 'House #14, Block 8 Liaquat Abad, Karachi, Sindh, N/A, Pakistan', 'Revenue', '8027', 15, NULL, 7, 51, 4, 1, 12, 0, '2020', 'SAMI UDDIN', '226688141', 'PK70UNIL0109000226688141', '0069-Nazimabad Branch', 'United Bank Limited', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2021-12-08 22:53:20', 'New', 'Not Active', NULL, 'Offline', '2021-08-27', NULL, 0, 'Sami UD Din', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 1220, 'Muhammad Shaheer Faisal', 'Faisal Razzak', '42101-7985605-7', '0317-8927549', 'shaheer.faisal@bizzworld.com', 'Shaheerfaisal12345', 'aimal.siddiqui@bizzworld.com_2021-05-07_.134.28571428571_.png', NULL, '2002-06-21', '2020-09-15', 'B/16 FL/1 Five Star Complex, Gulshan-e-Iqbal, Block 2, Karachi, Sindh, Pakistan', 'Revenue', '8024', 15, NULL, 8, 27, 3, 1, 12, 0, '2021', 'Muhammad Shaheer Faisal', '270688292', 'PK98UNIL0109000270688292', '1918- Abul Hassan Isphani Branch', 'United Bank Limited', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2021-12-14 19:09:28', 'New', 'Not Active', NULL, 'Offline', NULL, '2020-09-15', 0, 'Muhammad Shaheer Faisal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 1231, 'Adnan', 'Farooq', '42401-5514932-7', '0317-1267851', 'adnan.farooq@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '1983-03-07', '2020-11-09', 'House # A-728, Sector 4, Phase 1 Ahsanabad, Karachi, Sindh, N/A, Pakistan', NULL, '0', 15, NULL, 2, 51, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Rafia', '1', '0000-00-00 00:00:00', '2021-03-01 23:54:23', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Adnan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 1031, 'Maham Fatima', 'Abdul Ghaffur', '42101-0981753-8', '0331-0246849', 'maham.fatima@bizzworld.com', 'Maham@456', 'salman.khairi@bizzworld.com_2021-05-06_.2.8571428571429_.jpg', 'maham.fatima@bizzworld.com_2021-07-24_.141.42857142857_.jpg', '1995-08-03', '2020-09-16', 'R-245, Sector - 9 , North Karachi, Karachi, Sindh, N/A, Pakistan', 'Other', '8003', 6, NULL, 32, 79, 4, 1, 5, 0, '2022', 'MAHAM FATIMA', '232694745', 'PK39UNIL0109000232694745', '0069-Nazimabad Branch', 'United Bank Limited', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2023-03-02 23:09:16', 'New', 'Not Active', NULL, 'Offline', '2022-12-09', '2020-06-08', 0, 'Maham Fatima', 'maham.fatima@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 8003),
(23, 1013, 'Muhammad Hasnain', 'Muhammad Iqbal', '42301-9377148-9', '0332-2191713', 'muhammad.husnain@bizzworld.com', 'Hasnain123', 'salman.khairi@bizzworld.com_2021-05-06_.46.285714285714_.jpg', NULL, '1996-08-08', '2018-10-15', 'Flat # 19 (3rd Floor) Jameela Mohalla, Khursheed Center Ghaas Mandi, Karachi, Sindh, N/A, Pakistan', 'Revenue', '8014', 2, NULL, 2, 28, 4, 1, 12, 0, '2020', 'Hasnain', '235957681', 'PK47UNIL0109000235957681', '0069-Nazimabad Branch', 'United Bank Limited', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2021-09-10 19:07:23', 'New', 'Not Active', NULL, 'Online', NULL, NULL, 0, 'Muhammad Hasnain', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 1219, 'Mohib', 'Imran', '42201-5347458-3', '0312-8547874', 'mohib.imran@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '2000-05-26', '2020-09-21', 'R-1098 Dastgir #9, Near Malik Sweets, Karachi, Sindh, N/A, Pakistan', NULL, NULL, 2, NULL, 2, 28, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2021-03-01 23:28:24', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Mohib', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 2021, 'Ibad', 'Jamali', '42101-5575615-9', '0313-8398890', 'ibad.jamali@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '2000-07-16', '2020-12-28', 'R-981, Sector 16, F.B Area Gulberg Town, Karachi, Sindh, N/A, Pakistan', NULL, '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2021-03-01 23:28:47', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Ibad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 1229, 'Nayab Manzour', 'Kashwani', '41303-6440538-1', '0345-3024800', 'nayab.kashwani@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '2002-01-06', '2020-11-10', 'Momin Center A-1 block-7, F-B Area, Karachi, Sindh, N/A, Pakistan', NULL, '0', 15, NULL, 2, 18, 4, 1, 12, 0, '2020', '-', '272113992', '-', '-', '-', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2021-05-31 17:34:33', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Nayab Manzour', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 1002, 'Salman Nadir Khairi', 'Faridoon Khairi', '---', '0333-366-0992', 'salman.khairi@bizzworld.com', 'Unclesam@321', 'aimal.siddiqui@bizzworld.com_2021-05-08_.113.57142857143_.jpg', 'salman.khairi@bizzworld.com_2021-05-12_.112.14285714286_.jpg', '1989-07-07', '2015-06-01', '---', 'Other', '8009', 14, NULL, 19, 80, 1, 2, 12, 0, '2022', '-', NULL, '-', '-', '-', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2022-06-09 03:59:54', 'New', 'Not Active', NULL, 'Offline', NULL, '2015-06-01', 1, 'Salman Nadir Khairi', 'salman@bizzworldcommunications.com', 'uV,*%ta[Ml3r', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(28, 1037, 'Ehsan Yasir Khairi', 'Faridoon Khairi', '42201-6897893-9', '0335-2341476', 'ehsan.yasir@bizzworld.com', 'A123Yasir@', 'ehsan.yasir@bizzworld.com_2021-09-18_.43_.png', 'ehsan.yasir@bizzworld.com_2021-05-07_.73.571428571429_.jpg', '1986-11-06', '2018-03-01', '812, ROW-2, BLOCK B - NECHS BLOCK 10-A Gulshan-e-Iqbal Karachi', 'Other', '8007', 2, NULL, 34, 27, 3, 2, 12, 0, '2023', 'EHASN YASIR KHAIRI', '256575772', 'PK22UNIL0109000256575772', 'ABUL ISPHANI ROAD', 'United Bank Limited', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2023-03-07 22:47:42', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-03-01', 0, 'Ehsan Yasir Khairi', 'yasir@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 8007),
(29, 1091, 'Hamdan Nasir Khairi', 'Faridoon Khairi', '42101-7883282-1', '0333-2091170', 'hamdan.khairi@bizzworld.com', 'bizzworld@2', 'muhammad.mehroz@bizzworld.com_2022-01-11_.30_.png', 'hamdan.khairi@bizzworld.com_2022-01-13_.93.285714285714_.png', '1995-11-17', '2020-06-01', 'A/12 Block 10/A House # C-64 Block 21, Own homes F.B Area, Karachi, Sindh, N/A, Pakistan', 'Revenue', '8064', 1, NULL, 28, 30, 4, 2, 0, 0, '2022', 'Hamdan Nasir Khairi', '247782019', 'PK88UNIL0109000247782019', '1768- Hamid Square', 'United Bank Limited', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2023-04-04 22:02:10', 'New', 'Not Active', NULL, 'Online', NULL, '2020-06-01', 0, 'Hamdan Nasir Khairi', 'hamdan.khairi@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 8064),
(30, 1163, 'Saif Anwer Khan', 'Rasheed Anwer Khan', '42101-9846874-9', '0306-2621447', 'saif.anwer@bizzworld.com', 'bizzworld@2', 'muhammad.mehroz@bizzworld.com_2023-03-17_.97.142857142857_.png', NULL, '1996-08-12', '2019-07-02', 'House # R-305, Sector 5 - L North Karachi, Karachi, Sindh, Pakistan', NULL, '1003', 1, NULL, 34, 27, 3, 2, -1, 5, '2022', '-', '261742178', '-', '-', '-', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2023-04-04 22:02:46', 'New', 'Not Active', NULL, 'Offline', NULL, '2019-07-02', 1, 'Saif Anwer Khan', 'saif@bizzworldcommunications.com', 'njN}a5yNLC!{', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 1003),
(31, 1088, 'Muhammad Usman Khan', 'Waseem Ahmed Khan', '42101-8586669-3', '0345-2493070', 'm.usman@bizzworld.com', 'Mr_Jagex12345', 'salman.khairi@bizzworld.com_2021-05-06_.105.14285714286_.jpg', NULL, '1994-06-11', '2017-11-01', 'House # R-536, Block 17, F.B Area, Karachi, Sindh, N/a, Pakistan', 'Revenue', '8065', 2, NULL, 25, 28, 4, 2, 6, 0, '2022', 'Usman Khan', '247728558', 'PK78UNIL0109000247728558', '1301- Super Highway', 'United Bank Limited', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2023-03-09 22:42:07', 'New', 'Not Active', NULL, 'Offline', NULL, '2017-11-01', 0, 'Muhammad Usman Khan', 'usman.khan@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(32, 1193, 'Moiz Khan', 'Muhammad Fazil', '42101-3066498-9', '0336-2351989', 'moiz.khan@bizzworld.com', 'Pakistan125', 'muhammad.mehroz@bizzworld.com_2021-09-04_.94.714285714286_.png', 'moiz.khan@bizzworld.com_2021-08-16_.27.857142857143_.jpg', '1999-11-28', '2020-02-06', 'A-34 Sector R-4, Gulshan-e-Maymaar, Karachi, Sindh, N/A, Pakistan', 'Sales', '8038', 15, NULL, 2, 79, 4, 1, 11, 0, '2022', 'MOIZ KHAN', '265555796', 'PK89UNIL0109000265555796', '1918- Abul Hassan Isphani Branch', 'United Bank Limited', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2022-03-30 10:29:16', 'New', 'Not Active', NULL, 'Offline', NULL, '2020-02-06', 0, 'Moiz Khan', 'moiz.khan@bizzworld.com', 'moiz.khan@bizzworld.com', 'moiz.khan@bizzworld.com', NULL, NULL, NULL, NULL),
(33, 267, 'Areena', 'Khan', '42101-6488415-2', '0300-3223710', 'areena.khan@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '1988-12-30', '2020-11-02', 'R-54 Block 8, F.B Area, Aziz Abad, Karachi, Sindh, N/A, Pakistan', NULL, '0', 7, NULL, 10, 27, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2021-03-02 01:17:18', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Areena', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 1182, 'Muhammad Ahmer Malick', 'Malick', '42101-4157564-1', '0349-4941593', 'muhammad.malick@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '1995-12-13', '2020-02-26', 'Gulshan Banglows House # R-71, Gulistan-e-Johar Block 19, Karachi, Sindh, Pakistan', NULL, '0', 1, NULL, 11, 30, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2021-03-01 23:14:20', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Muhammad Ahmer Malick', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 336, 'Usama', 'Usama', '42101-6402035-7', '0303-2630422', 'usama.usama@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '1999-12-25', '2020-11-16', 'R-108 block 19, F-B Area, Karachi, Sindh, N/A, Pakistan', NULL, '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2021-03-01 23:29:17', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Usama', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 1221, 'Hammad', 'Syed', '42101-3011117-5', '0315-2164532', 'hammad.syed@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '2002-08-05', '2020-09-15', 'Dastgir Block 7 Super Terrace, B-8 F.B Area, Karachi, Sindh, N/A, Pakistan', NULL, '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2021-03-01 23:30:09', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Hammad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 1071, 'Rafia Naz', 'Abdul Sattar', '42101-5300035-6', '0308-2710023', 'rafia.naaz@bizzworld.com', 'Bizzworldhr@456', 'rafia.naaz@bizzworld.com_2022-02-28_.49.428571428571_.jpg', NULL, '1994-01-22', '2017-08-02', 'R-448, Sector 15A-4, Bufferzone Karachi, Pakistan', 'Other', '8008', 5, NULL, 3, 27, 1, 2, 10, 0, '2022', '-', '249629718', '-', '-', '-', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2023-01-05 22:28:55', 'New', 'Not Active', NULL, 'Offline', NULL, '2017-08-02', 0, 'Rafia Naz', 'hr@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 8008),
(38, 1184, 'Adeel', 'Raza', '42101-0992883', '0346-2087769', 'adeel.raza@bizzworld.com', 'bizzworld@2', 'Adeel.png', NULL, '1997-01-13', '2020-01-28', 'House #R-80 Safat-e-Amroha Society, Scheme 33, Safora, Dist Malir, Karachi, Sindh, Pakistan', NULL, '0', 1, NULL, 11, 30, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2021-03-01 23:15:20', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Adeel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 1183, 'Muhammad Saad Avid', 'Saad', '42301-7947669-9', '0331-2249904', 'muhammad.saad@bizzworld.com', 'bizzworld@2', 'saad.png', NULL, '1994-07-16', '2020-01-20', 'A-14 Memon Nagar, Scheme 33 Gulzar-e-Hijri, Karachi, Sindh, Pakistan', NULL, '0', 1, NULL, 11, 30, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2021-03-01 23:13:38', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Muhammad Saad Avid', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 1214, 'Muhammad Saad', 'Saad', '42501-9053402-3', '0346-2736456', 'muhammad.saad1@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '1997-09-15', '2020-09-08', 'House # D-22 Cantt Bazaar, Malir Cantt, Karachi, Sindh, N/A, Pakistan', NULL, '0', 7, NULL, 13, 18, 4, 1, 12, 0, '2020', '-', '269962396', '-', '-', '-', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2021-06-09 23:16:58', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Muhammad Saad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 1168, 'Salman', 'Muhammad Saleem Khan', '42000-3263887-5', '0333-2968681', 'salman.salman@bizzworld.com', 'bizzworld@2', 'salman.khairi@bizzworld.com_2021-05-06_.66.571428571429_.jpg', 'salman.salman@bizzworld.com_2022-02-03_.54.857142857143_.png', '1999-04-10', '2019-09-05', 'House # A-110 Azeem Khan Goth, Gulshn-e-Iqbal block 4-A, Karachi, Sindh, N/A, Pakistan', 'Other', '1003', 1, NULL, 14, 30, 4, 1, 3, 0, '2021', 'Mohammad Salman', '261366215', 'PK92UNIL0109000261366215', '1918- Abul Hassan Isphani Branch', 'United Bank Limited', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2022-03-30 10:30:35', 'New', 'Not Active', NULL, 'Offline', '2022-03-17', '2019-09-05', 0, 'Salman', 'salman.salman@bizzworld.com', 'salman.salman@bizzworld.com', 'salman.salman@bizzworld.com', NULL, NULL, NULL, NULL),
(42, 1204, 'Sapna Mutabar', 'Shah', '42101-1834736-0', '0312-3330855', 'sapna.shah@bizzworld.com', 'bizzworld@2', 'sapna.png', NULL, '2003-06-13', '2020-06-23', 'N-31 New Salim Abad Colony, F.B Area near Water Pump, Karachi, Sindh, N/A, Pakistan', NULL, '0', 15, NULL, 2, 18, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2021-05-31 17:35:22', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Sapna Mutabar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 1036, 'Alamgir Shahid', 'Muhammad Shahid', '42101-1390543-5', '0345-6136886', 'muhammad.shahid@bizzworld.com', 'bizzworld@2', 'aimal.siddiqui@bizzworld.com_2021-05-07_.121_.png', NULL, '1987-07-01', '2015-12-15', 'House # 4/227, Liaquat Abad, Karachi, Sindh, N/A, Pakistan', 'Other', '1001', 4, NULL, 15, 28, 4, 1, 12, 0, '2020', 'Alamgir Shahid', '226695484', 'PK77UNIL0109000226695484', '0069-Nazimabad Branch', 'United Bank Limited', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2022-01-10 22:34:18', 'New', 'Not Active', NULL, 'Offline', NULL, '2015-12-15', 0, 'Alamgir Shahid', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 1027, 'Muhammad Salman', 'Muhammad Shahid', '42101-1035285-3', '0301-3365943', 'muhammad.salman@bizzworld.com', 'Salman.bizz2', 'salman.khairi@bizzworld.com_2021-05-06_.128.14285714286_.jpg', NULL, '1998-06-02', '2021-04-05', 'Sec 15A/2 Kiran Arcade C-320, 3rd Floor, Buffer Zone, Karachi, Sindh, N/A, Pakistan', 'Revenue', '0', 15, NULL, 7, 51, 4, 1, 12, 0, '2020', 'SALMAN SHAHID', '241774089', 'PK31UNIL0109000241774089', '1918- Abul Hassan Isphani Branch', 'United Bank Limited', 'GZjTlAsl3PQfBy8sRYhN8rnfDxxp7t872S4E9PZSBkL9KIXDUTHvT1xBcw1CUNDIzcdsjXx5jsVP0ot6J9vwt8i6r184c9VVNIyy', 'Rafia Naz', '1', '0000-00-00 00:00:00', '2021-10-21 17:56:33', 'New', 'Not Active', NULL, 'Offline', '2021-08-27', NULL, 0, 'Muhammad Salman', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 1144, 'Amir Shahzad', 'Khushi Muhammad', '31101-6501919-9', '0312-5013030', 'amir.shahzad@bizzworld.com', 'bizzworld@2', 'aimal.siddiqui@bizzworld.com_2021-05-07_.9.2857142857143_.png', NULL, '1985-03-27', '2021-04-05', 'House # A-129, Street # 8, Block N North Nazimabad, Karachi, Sindh, Pakistan', 'Other', '1002', 3, NULL, 16, 18, 4, 1, 12, 0, '2021', '-', '268011004', '-', '-', '-', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2021-09-23 23:24:32', 'New', 'Not Active', NULL, 'Offline', '2021-09-01', NULL, 0, 'Amir Shahzad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 1007, 'Abdul Wajid Shaikh', 'Abdul Rab', '44204-3177456-9', '0334-3272110', 'abdul.shaikh@bizzworld.com', 'Awshaikh@123', 'salman.khairi@bizzworld.com_2021-05-06_.133.14285714286_.jpg', NULL, '1987-10-22', '2015-06-01', '2nd Floor A-One Cottages House # R-372, Block 9 Yaseen Abad, Karachi, Sindh, N/A, Pakistan', 'Other', '8032', 7, NULL, 17, 79, 4, 2, 11, 0, '2022', 'ABDUL WAJID SHAIKH', '250480081', 'PK93UNIL0109000250480081', '0069-Nazimabad Branch', 'United Bank Limited', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2023-03-10 21:16:39', 'New', 'Not Active', NULL, 'Offline', NULL, '2015-06-01', 0, 'Abdul Wajid Shaikh', 'wajid.shaikh@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 8032),
(47, 1103, 'Ahteshamul Haq Siddiqui', 'Muhammad Ashraf Siddiqui', '42101-0857211-1', '0337-0344320', 'ahetesham.siddiqui@bizzworld.com', 'bizzworld@2', 'salman.khairi@bizzworld.com_2021-05-06_.117.71428571429_.jpg', NULL, '1999-08-27', '2020-10-10', 'House # ST-9, Block 16 F-B Area, Karachi, Sindh, N/A, Pakistan', 'Revenue', '8037', 15, NULL, 2, 79, 4, 1, 12, 0, '2021', 'Ahtesham Siddiqui', '268485902', 'PK39UNIL0109000268485902', '1918- Abul Hassan Isphani Branch', 'United Bank Limited', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2022-03-30 10:30:58', 'New', 'Not Active', NULL, 'Offline', NULL, '2020-10-10', 0, 'Ahteshamul Haq Siddiqui', 'ahetesham.siddiqui@bizzworld.com', 'ahetesham.siddiqui@bizzworld.com', 'ahetesham.siddiqui@bizzworld.com', NULL, NULL, NULL, NULL),
(48, 1227, 'Muhammad Aimal', 'Iqbal', '42101-9259579-5', '0318-2051416', 'aimal.siddiqui@bizzworld.com', 'bizzworld@2', 'aimal.siddiqui@bizzworld.com_2021-05-21_.140_.jpg', 'aimal.siddiqui@bizzworld.com_2021-08-26_.10.285714285714_.jpg', '1996-09-04', '2020-10-20', 'Plot # B-102, 3rd floor, 11-A North Karachi, Karachi, Sindh, N/A, Pakistan', 'Other', '0', 1, NULL, 20, 30, 4, 1, 12, 0, '2021', 'Muhammad Aimal Siddiqu', '272515345', '-', '-', 'United Bank Limited', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2022-03-30 10:31:39', 'New', 'Not Active', NULL, 'Online', '2022-01-18', '2020-10-20', 0, 'Muhammad Aimal', 'aimal.siddiqui@bizzworld.com', 'aimal.siddiqui@bizzworld.com', 'aimal.siddiqui@bizzworld.com', NULL, NULL, NULL, NULL),
(49, 1233, 'Shayan', 'Sohail', '42101-2740771-7', '0316-0117981', 'shayan.sohail@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '2003-05-03', '2020-12-04', 'A-46 Street Park View Appartments, Block 7, F.B Area, Karachi, Sindh, N/A, Pakistan', NULL, '0', 15, NULL, 2, 18, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2021-05-31 17:35:40', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Shayan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 1225, 'Shafi', 'Uddin', '42101-7978899-5', '0342-2134094', 'shafi.uddin@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '1999-07-23', '2020-09-22', 'Flat # A-70 com.10 Block 16-A, Gulistan-e-Johar, Karachi, Sindh, N/A, Pakistan', NULL, '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2020', '-', NULL, '-', '-', '-', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2021-03-01 23:30:32', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Shafi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 1201, 'Hasan Zafar', 'Zafar Iqbal', '42101-4169191-7', '0301-8046516', 'hasan.zafar@bizzworld.com', 'bizzworld@2', 'salman.khairi@bizzworld.com_2021-05-06_.4.7142857142857_.jpg', NULL, '1995-10-18', '2021-04-05', 'C-31 Sector 14-A, Shadman Town #1 North Karachi, Karachi, Sindh, N/A, Pakistan', 'Other', '8001', 17, NULL, 34, 79, 3, 2, 12, 0, '2023', 'HASAN ZAFAR', '251556462', 'PK73UNIL0109000251556462', '0069-Nazimabad Branch', 'United Bank Limited', NULL, 'Rafia Naz', '1', '0000-00-00 00:00:00', '2023-03-07 22:48:00', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-04-05', 0, 'Hasan Zafar', 'hasan.zafar@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 8001),
(52, 1186, 'Emmad Zaheer', 'Zaheer Uddin', '42201-4498959-3', '0310-2663816', 'emmad.zaheer@bizzworld.com', 'Latif125521', 'salman.khairi@bizzworld.com_2021-05-06_.71.142857142857_.jpg', 'emmad.zaheer@bizzworld.com_2021-11-10_.118.28571428571_.jpg', '1999-04-01', '2020-01-02', 'House # C-100/1, Malir Colony, Karachi, Sindh, N/A, Pakistan', 'Other', '1004', 1, NULL, 14, 28, 4, 1, 10, 0, '2023', 'Emmad Zaheer', '264163484', 'PK66UNIL0109000264163484', '0398- Malir Town Ship', 'United Bank Limited', NULL, 'Muhammad Mehroz', '1', '0000-00-00 00:00:00', '2023-04-04 20:30:24', 'New', 'Not Active', NULL, 'Offline', NULL, '2020-01-02', 0, 'Emmad Zaheer', 'emmad.zaheer@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 1004),
(53, 1239, 'Afraz Ali', 'Gohar Shah', '71402-5798959-3', '0310-9092072', 'Afraz.ali@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '2004-01-23', '2021-01-19', 'FLAT #B/7 2ND FLOOR, PLOT #CS 23, BLOCK #7, FB AREA KARACHI', NULL, '0', 15, NULL, 2, 18, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia', '2021-02-27 04:19:40', '2021-05-31 17:36:00', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Afraz Ali', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 1235, 'Masood Ali', 'Sher Habib Khan', '71502-1776309-5', '0348-0321412', 'Masood.ali@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '2001-03-22', '2021-01-12', 'FLAT #F-018, RAHIM VIEW SCH-33, SECTOR #17/B, GULSHAN-E-IQBAL KARACHI', NULL, '0', 15, NULL, 2, 18, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia', '2021-02-27 04:24:57', '2021-05-31 17:36:15', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Masood Ali', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 1237, 'Mustafa Hussain', 'Muhammad Iftikhar Hussain', '90401-0124172-7', '0317-2113821', 'Mustafa.hussain@bizzworld.com', 'Mustafa/1999', 'aimal.siddiqui@bizzworld.com_2021-05-07_.118.71428571429_.jpg', NULL, '1999-04-04', '2020-12-28', 'HOUSE #A-112, BLOCK-L, NORTH NAZIMABAD, KARACHI', 'Revenue', '8016', 2, NULL, 2, 28, 4, 1, 6, 0, '2022', 'MUSTAFA HUSSAIN', '275094649', 'PK264NIL01090002075094649', '1190', 'UNITED BANK LIMITED', '8QAyK7EvNFULMqbLE0QsiWf7tekJhYDdEz0ZIXYQO15T5dRXFkM6RcqSQs5vwpyo7oyxoyJnt9WXobxnuVW113wxXbTyzWPgJgKU', 'Rafia Naz', 'Rafia', '2021-02-27 04:42:36', '2022-05-03 09:18:31', 'New', 'Not Active', NULL, 'Offline', NULL, '2020-12-28', 0, 'Mustafa Hussain', 'Mustafa.hussain@bizzworld.com', 'Mustafa.hussain@bizzworld.com', 'Mustafa.hussain@bizzworld.com', NULL, NULL, NULL, NULL),
(56, 1241, 'Zain Adnan', 'Adnan Younun', '42101-9580644-7', '0331-2169816', 'adnan.zain@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '2001-02-07', '2021-01-21', 'HOUSE #A-84, BLOCK #3, GULSHAN-E-IQBAL, KARACHI', NULL, '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia', 'Rafia', '2021-02-27 04:46:07', '2021-02-27 04:46:07', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Zain Adnan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 1240, 'Owais Ameen', 'Ameen Shah', '71402-9089480-1', '0335-3949516', 'owais.ameen@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '2003-05-01', '2021-01-13', 'ALI APARTMENT, FLAT #29/7, FB AREA AYESHA MANZIL', NULL, '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia', 'Rafia', '2021-02-27 04:49:57', '2021-02-27 04:49:57', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Owais Ameen', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 1236, 'Salman Khan', 'Dawar Khan', '71502-7719127-7', '0343-0383964', 'salman.khan@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '1999-05-01', '2021-01-12', 'FLAT #413, BLOCK-F, RAHIM VIEW, SECTOR 17/B, SCH-33-S-HIGHWAY', NULL, '0', 15, NULL, 2, 51, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia', 'Rafia', '2021-02-27 04:55:27', '2021-04-06 03:31:44', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Salman Khan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 1238, 'Ayaan Ali', 'Barkat Ali', '71703-0342763-9', '0343-5441773', 'ayan.ali@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '2003-07-22', '2021-01-12', 'FLAT #408, BLOCK-C, RAHIM VIEW, SCH-33, SUPER HIGHWAY KARACHI', NULL, '0', 15, NULL, 2, 51, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia', 'Rafia', '2021-02-27 04:59:05', '2021-04-28 02:41:51', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Ayaan Ali', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 1070, 'Sumair Ali', 'Sikandar Ali Khuwaja', '42101-1808889-1', '0335-2861387', 'sumair.ali@bizzworld.com', 'Sam654321', 'aimal.siddiqui@bizzworld.com_2021-05-07_.8.5714285714286_.jpg', NULL, '1997-06-21', '2021-02-27', 'HIGHWAY', 'Revenue', '8033', 15, NULL, 7, 79, 4, 1, 12, 0, '2021', 'Sumair', '241777422', 'PK56UNIL0109000241777422', '0069-Nazimabad Branch', 'United Bank Limited', NULL, 'Salman Nadir Khairi', 'Rafia', '2021-02-27 05:05:33', '2021-08-02 19:44:27', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Sumair Ali', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 1243, 'Ali Hasan', 'Abdul Baqi', '42101-0844258-7', '0341-1296520', 'Ali.hasan@bizzworld.com', 'Haxan4real123', 'aimal.siddiqui@bizzworld.com_2021-05-07_.9.5714285714286_.jpg', NULL, '1997-06-04', '2021-03-01', 'FLAT #410, 4TH FLOOR, PLOT # ST 5/2, SECTOR 14/B, NORTH KARACHI (MARIA APARTMENT)', 'Sales', '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia', '2021-03-11 03:07:23', '2021-07-01 19:20:07', 'New', 'Not Active', NULL, 'Online', NULL, NULL, 0, 'Ali Hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 1244, 'Muhammad Huzaifa Muneer', 'Muneer Ahmed', '42101-4918468-3', '0313-2159172', 'M.huzaifa@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '2002-06-12', '2021-02-23', 'HOUSE # RP 422, BLOCK #C, SAIMA ARABIAN VILLAS, NORTH KARACHI', 'Sales', '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Salman Nadir Khairi', 'Rafia', '2021-03-11 03:25:41', '2021-05-04 22:06:51', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Muhammad Huzaifa Muneer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 1245, 'Abdul Wahab', 'Waqas Younus Paracha', '35202-1695837-5', '0334-2381779', 'abdul.wahab@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '2004-10-04', '2021-02-23', 'SECTOR - X7 - A54, GULSHAN-E-MAYMAR', 'Sales', '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Salman Nadir Khairi', 'Rafia', '2021-03-11 03:35:16', '2021-05-04 22:01:01', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Abdul Wahab', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 1246, 'Usama Nadeem', 'Nadeem Jawaid Iqbal Paracha', '-', '03161585989', 'usama.nadeem@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '2000-10-01', '2021-02-25', NULL, NULL, '0', 2, NULL, 9, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Salman Nadir Khairi', 'Rafia', '2021-04-02 21:29:14', '2021-05-04 22:01:34', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Usama Nadeem', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 1249, 'Muhammad Saad', '-', '-', '-', '-', 'bizzworld@2', 'no_image.jpg', NULL, '2021-04-06', '2021-02-25', '-', NULL, '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Salman Nadir Khairi', 'Rafia', '2021-04-02 21:57:47', '2021-05-04 22:07:05', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Muhammad Saad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 1250, 'Ahmed', '-', '-', '-', 'Ahmed@bizzworld.com', 'bizzworld@2', 'aimal.siddiqui@bizzworld.com_2021-05-07_.74.714285714286_.jpg', NULL, '2021-04-02', '2021-02-25', '-', NULL, '0', 2, NULL, 9, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia', '2021-04-02 22:03:09', '2021-05-26 23:43:35', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Ahmed', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 1242, 'Anas Shah', 'Khawaja Shahood Shah', '42201-4311778-7', '0307-9255337', 'anas.shah@bizzworld.com', 'Patanhi159', 'aimal.siddiqui@bizzworld.com_2021-05-07_.133.57142857143_.png', NULL, '1998-09-15', '2021-02-25', 'Flat #E9, KDS Safari Garden, block 16-A, Gulistan-e-Johar Karachi', 'Other', '8023', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', 'ANAS SHAH', '275145356', NULL, '1918', 'UNITED BANK LIMITED', NULL, 'Rafia Naz', 'Muhammad Mehroz', '2021-04-02 23:28:01', '2021-11-02 17:56:29', 'New', 'Not Active', NULL, 'Online', '2021-11-01', NULL, 0, 'Anas Shah', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 1252, 'yasir rafi', 'Rafi', '0', '0', '0', 'bizzworld@2', 'no_image.jpg', NULL, '2021-04-16', '2021-02-02', 'abc', NULL, '0', 15, NULL, 2, 18, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia', '2021-04-16 22:49:28', '2021-05-31 17:36:37', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'yasir rafi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 1, 'Muhammad Javed', 'Muhammad Ikram', '31303-0463606-9', '03022042299', 'javed@bizzworld.com', 'bizzworld@2', 'aimal.siddiqui@bizzworld.com_2021-05-07_.86.571428571429_.png', NULL, '2000-01-01', '2021-01-01', 'House #4193, metrovill block 3 Abul asphani road karachi', NULL, '8050', 8, NULL, 21, 37, 4, 2, 12, 0, '2021', 'Muhammad Javed', '257444673', NULL, '1918', 'UBL', NULL, 'Rafia Naz', 'Rafia', '2021-04-21 02:01:39', '2022-07-15 09:56:18', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-01-01', 0, 'Muhammad Javed', 'javed@bizzworld.com', 'javed@bizzworld.com', 'javed@bizzworld.com', NULL, NULL, NULL, NULL),
(70, 2, 'Muhammad Aslam', 'Muhammad Ibrahim', '31303-2381311-3', '03012635429', 'aslam@bizzworld.com', 'bizzworld@2', 'aimal.siddiqui@bizzworld.com_2021-05-08_.46.857142857143_.jpg', NULL, '1981-02-04', '2021-03-02', NULL, NULL, '0', 8, NULL, 21, 37, 4, 2, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia', '2021-04-21 02:07:29', '2022-05-21 10:44:15', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-03-02', 0, 'Muhammad Aslam', 'aslam@bizzworld.com', 'aslam@bizzworld.com', 'aslam@bizzworld.com', NULL, NULL, NULL, NULL),
(71, 3, 'Mansoor Ahmed', 'Muzafar Ahmed', '45402-8389609-3', '0303-2600959', 'mansoor@bizzworld.com', 'bizzworld@2', 'aimal.siddiqui@bizzworld.com_2021-05-08_.3.2857142857143_.jpg', NULL, '1980-06-12', '2021-04-09', 'L-63, 7B Surjani town karachi', NULL, '0', 8, NULL, 22, 18, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia', '2021-04-21 02:21:55', '2022-01-17 22:06:11', 'New', 'Not Active', NULL, 'Offline', '2021-12-27', '2021-04-08', 0, 'Mansoor Ahmed', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 1254, 'Alyaan Aslam', 'Aslam Pervaiz', '42501-5211230-5', '0334-3316156', 'Alyaan231@bizzworld.com', 'Alyaan9642', 'aimal.siddiqui@bizzworld.com_2021-05-08_.66.142857142857_.jpg', NULL, '2001-07-13', '2021-03-25', 'C-9, Sohni apartments Block# 4, Gulshan-e-Iqbal', 'Sales', '8011', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia', '2021-04-22 23:31:37', '2021-06-09 23:18:15', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Alyaan Aslam', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 1253, 'Aizaz Usmani', 'Irshad Usmani', '42201-5201710-7', '0330-2477669', 'aizaz54@bizzworld.com', 'redApple2066', 'aimal.siddiqui@bizzworld.com_2021-05-08_.93.714285714286_.jpg', 'aizaz54@bizzworld.com_2021-08-04_.106_.jpg', '1998-03-24', '2021-03-25', 'C-9, SALEEMA SQUARE, BLOCK# 7 GULSHAN-E-IQBAL', 'Sales', '8015', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia', '2021-04-22 23:38:49', '2021-10-06 19:42:04', 'New', 'Not Active', NULL, 'Offline', '2021-08-23', NULL, 0, 'Aizaz Usmani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 1257, 'Muhammad Huzaifa Ali', 'Muhammad Ali', '42101-2424911-1', '0313-0252833', 'huzaifa89@bizzworld.com', 'bizzworld@2', 'aimal.siddiqui@bizzworld.com_2021-05-08_.44.428571428571_.jpg', 'huzaifa89@bizzworld.com_2021-11-05_.108.85714285714_.jpg', '2002-01-10', '2021-03-18', 'HOUSE# RB-65, BLOCK B, SAIMA ARABIAN VILLAS, SURJANI TOWN', 'Other', '1003', 1, NULL, 18, 30, 4, 1, 12, 0, '2022', 'Muhammad Huzaifa Ali', '281910036', 'PK76UNIL0109000281910036', NULL, 'UBL', NULL, 'Rafia Naz', 'Rafia', '2021-04-22 23:43:34', '2022-11-10 07:13:06', 'New', 'Not Active', NULL, 'Offline', '2022-07-31', '2021-03-18', 0, 'Muhammad Huzaifa Ali', 'huzaifa.ali@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 1003),
(75, 1251, 'Ahsan Ahmed', 'Javed Ahmed', '42301-0861736-1', '0315-2074268', 'ahsan47@bizzworld.com', 'bizzworld@2', 'aimal.siddiqui@bizzworld.com_2021-05-08_.63.142857142857_.jpg', NULL, '1994-08-31', '2020-04-15', 'A-502, Hani\'s Excellency Apartment, 4k chowrangi', 'Other', '1004', 1, NULL, 20, 30, 4, 1, 8, 0, '2022', 'Ahsan Ahmed', '275206749', 'PK17UNIL0109000275206749', '0395-TownShip', 'UNITED BANK LIMITED', NULL, 'Rafia Naz', 'Rafia', '2021-04-22 23:48:38', '2022-11-10 07:13:35', 'New', 'Not Active', NULL, 'Offline', '2022-07-31', '2021-04-15', 0, 'Ahsan Ahmed', 'ahsan.ahmed@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 1004),
(76, 1256, 'Hameem Siddiqui', 'Naseer Uddin Siddiqui', '42101-0247083-9', '0340-2143841', 'hameem45@bizzworld.com', 'Greenplants90*', 'aimal.siddiqui@bizzworld.com_2021-05-08_.121.42857142857_.jpg', NULL, '2021-04-22', '2021-04-08', 'HOUSE# 1/5, ST 10, SECTOR 5L, NORTH KARACHI SURJANI TOWN', 'Sales', '8060', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia', '2021-04-22 23:59:02', '2021-05-26 23:43:54', 'New', 'Not Active', NULL, 'Online', NULL, NULL, 0, 'Hameem Siddiqui', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 1255, 'Zai Uddin Haider', 'Jamal Uddin Haider', '42201-9865030-5', '0335-0345402', 'zai567@bizzworld.com', 'bizzworld@2', 'no_image.jpg', NULL, '1998-09-04', '2021-03-25', 'R-57, GULSHAN BANGLOWS BLOCK -19, GULISTAN E JOHAR', 'Sales', '8020', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia', '2021-04-23 00:03:06', '2021-05-06 18:53:16', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Zai Uddin Haider', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 1258, 'Muahammad Azeem', 'Muhammad Ameen', '42501-6649893-9', '0312-0283986', 'azeem23@bizzworld.com', 'bizzworld@2', 'aimal.siddiqui@bizzworld.com_2021-05-08_.130.71428571429_.jpg', 'azeem23@bizzworld.com_2022-01-21_.80_.jpg', '1996-10-19', '2021-04-27', 'HOUSE # 1023/24, AREA LABOUR COLONY LANDHI F2, DISTRICT MALIR KARACHI', NULL, '0', 2, NULL, 5, 28, 4, 2, 5, 0, '2022', 'MUHAMMAD AZEEM', '276775262', NULL, 'Babar Market', 'UNITED BANK LIMITED', NULL, 'Rafia Naz', 'Rafia', '2021-04-29 18:46:00', '2023-03-07 22:33:41', 'New', 'Not Active', NULL, 'Online', NULL, '2021-04-27', 0, 'Muahammad Azeem', 'muahammad.azeem@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(79, 1000, 'Syed Nadir Shah', 'Sohail Shah', '0', '0321-925-0002', 'nadir.shah@bizzworld.com', 'bizzworld@2', 'aimal.siddiqui@bizzworld.com_2021-05-08_.12.571428571429_.jpg', NULL, '1984-04-05', '2015-06-01', NULL, 'Other', '8009', 7, NULL, 19, 1, 3, 2, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Salman Nadir Khairi', '2021-05-05 18:17:06', '2023-03-16 18:05:50', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-03-01', 0, 'Syed Nadir Shah', 'nadir.shah@bizzworld.com', 'nadir.shah@bizzworld.com', 'nadir.shah@bizzworld.com', NULL, NULL, NULL, 8009),
(80, 1001, 'Demo', 'None', '-', '-', 'demo@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2020-12-08', '2021-03-02', '-', 'Other', '1001', 5, NULL, 3, 37, 3, 2, 12, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Salman Nadir Khairi', '2021-05-05 18:23:15', '2023-04-14 18:36:39', 'New', 'Not Active', NULL, 'Offline', NULL, '2023-02-27', 0, 'None', 'demo@bizzworld.com', 'demo@bizzworld.com', 'demo@bizzworld.com', NULL, NULL, NULL, 1001),
(81, 1100, 'Syed Sameel Naqvi', 'Syed Saeed Naqvi', '0', '0300-924-9098', 'syed.sameel@bizzworld.com', 'bizz@1', 'aimal.siddiqui@bizzworld.com_2021-05-08_.136.57142857143_.jpg', NULL, '1982-05-24', '2015-06-01', '-', 'Other', '8009', 14, NULL, 19, 80, 3, 2, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Muhammad Mehroz', 'Salman Nadir Khairi', '2021-05-05 18:27:25', '2022-06-08 10:37:26', 'New', 'Not Active', NULL, 'Offline', NULL, '2015-06-01', 0, 'Syed Sameel Naqvi', 'syed.sameel@bizzworld.com', '0000', '0', NULL, NULL, NULL, NULL),
(82, 1259, 'Aasma Humayun', 'Humayun Kabir', '42201-7350234-4', '0323-3211662', 'asma89@bizzworld.com', 'bizzworld@2', 'aimal.siddiqui@bizzworld.com_2021-05-08_.32.285714285714_.jpg', NULL, '1990-05-25', '2021-05-03', 'PLOT# R-15-2, BLOCK 13-D-3, BALOCH GOTH, GULSAHN-E-IQBAL, KARACHI', 'Sales', '8063', 9, NULL, 25, 28, 3, 1, 12, 0, '2021', 'Aasma Humayun', '226683207', 'PK10UNIL0109000226683207FD', 'FIRST CHOWRANGI NAZIMABAD BRANCH', 'UNITED BANK LIMITED', NULL, 'Rafia Naz', 'Rafia Naz', '2021-05-06 21:59:37', '2021-09-23 23:25:49', 'New', 'Not Active', NULL, 'Offline', '2021-09-06', NULL, 0, 'Aasma Humayun', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 1260, 'Syed Muhammad Uzair', 'Syed Abdul Qadir', '42201-5007313-1', '0313-0219901', 'Uzair45@bizzworld.com', 'Bde12345', 'rafia.naaz@bizzworld.com_2021-05-27_.119_.png', NULL, '1994-06-07', '2021-05-24', '----', 'Revenue', '8059', 9, NULL, 9, 82, 4, 1, 12, 0, '2021', 'SYED MUHAMMAD UZAIR', NULL, 'PK14ALFH0353001007112174', 'NAZIMABAD BLOCK H', 'UNITED BANK LIMITED', NULL, 'Rafia Naz', 'Rafia Naz', '2021-05-24 18:00:35', '2021-09-06 23:42:26', 'New', 'Not Active', NULL, 'Offline', '2021-08-30', NULL, 0, 'Syed Muhammad Uzair', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `elsemployees` (`elsemployees_empid`, `elsemployees_batchid`, `elsemployees_name`, `elsemployees_fname`, `elsemployees_cnic`, `elsemployees_cno`, `elsemployees_email`, `elsemployees_password`, `elsemployees_image`, `elsemployees_coverimage`, `elsemployees_dofbirth`, `elsemployees_dofjoining`, `elsemployees_address`, `elsemployees_type`, `elsemployees_ext`, `elsemployees_departid`, `elsemployees_subdepartid`, `elsemployees_desgid`, `elsemployees_reportingto`, `elsemployees_roleid`, `elsemployees_status`, `elsemployees_annualleaves`, `elsemployees_sickleaves`, `elsemployees_leaveyear`, `account_title`, `account_no`, `iban_no`, `bank_branch`, `bank_name`, `verify_token`, `elsemployees_changeby`, `elsemployees_addby`, `created_at`, `updated_at`, `probiation_status`, `emailschedule_userstatus`, `emailschedule_lastactive`, `user_loginstatus`, `elsemployees_dofleaving`, `elsemployees_dofpayroll`, `elsemployees_allowoutsideemail`, `elsemployees_emailname`, `elsemployees_emailaddress`, `elsemployees_emailpassword`, `elsemployees_emailhost`, `elsemployees_careligibility`, `elsemployees_assigncaroramount`, `car_id`, `elsemployees_caramount`) VALUES
(84, 1262, 'Nida Adeel', 'Adeel', '42101-1444508-4', '0311-1647507', 'nida23@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2021-05-27_.127.57142857143_.png', NULL, '1981-07-13', '2021-05-21', '-', 'Sales', '0', 15, NULL, 2, 51, 4, 1, 12, 0, '2021', 'NIDA ADEEL', '264451471', 'PK34UNIL0109000264451471', 'HAMID  SQUARE BRANCH', 'UNITED BANK LIMITED', NULL, 'Rafia Naz', 'Rafia Naz', '2021-05-26 23:39:38', '2021-10-21 17:57:02', 'New', 'Not Active', NULL, 'Offline', '2021-08-27', NULL, 0, 'Nida Adeel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 1261, 'Noor Ul Ain', 'Hasan Muhammad', '42101-3238936-0', '0311-8336721', 'nain76@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2021-05-27_.135_.png', NULL, '2000-01-01', '2021-05-19', '-', 'Sales', '0', 15, NULL, 2, 51, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-05-26 23:42:19', '2021-10-19 17:02:52', 'New', 'Not Active', NULL, 'Offline', '2021-08-27', NULL, 0, 'Noor Ul Ain', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 1263, 'Darren Sylvester Farrell', 'Clifford Mark Farrell', '42201-1009274-9', '0300-9211517', 'Darren908@bizzworld.com', 'bizz@1', 'muhammad.mehroz@bizzworld.com_2021-06-10_.45.285714285714_.png', NULL, '2000-10-19', '2021-06-01', 'PLOT# 5/S, 7/166, Allama Iqbal Colony Mehmoodabad Gate, Karachi', 'Revenue', '0', 9, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-06-01 20:45:53', '2021-10-06 19:42:59', 'New', 'Not Active', NULL, 'Online', '2021-10-02', NULL, 0, 'Darren Sylvester Farrell', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 1264, 'Irtaza Ahmed', 'Javed Ahmed', '0', '0314-8132321', 'irtaza34@bizzworld.com', 'bizz@1', 'muhammad.mehroz@bizzworld.com_2021-06-10_.81.857142857143_.png', NULL, '2002-09-16', '2021-06-07', 'LS-109 Lucknow Society Korangi Karachi', 'Sales', '0', 15, NULL, 2, 51, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-06-08 20:31:10', '2021-07-14 20:03:56', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Irtaza Ahmed', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 1265, 'Javeria Shah', 'Syed Muhammad Shah Alam', '42000-2654705-2', '0335-1308749', 'javeria78@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1999-02-19', '2021-06-08', 'C-2, Al-Azam Square, Block - 1, F.B Area, Karachi', 'Sales', '0', 11, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-06-08 20:36:43', '2021-06-14 21:55:07', 'New', 'Not Active', NULL, NULL, NULL, NULL, 0, 'Javeria Shah', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 1266, 'Sheikh Abdus Sami Tariq', 'Tariq Hameed', '42201-6810442-7', '0347-9271347', 'sami30@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2001-01-30', '2021-06-17', 'HOUSE #8232, BLOCK #11 GULISTAN-E-JOHAR KARACHI', 'Sales', '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-06-17 19:04:45', '2021-07-01 19:39:01', 'New', 'Not Active', NULL, 'Online', NULL, NULL, 0, 'Sheikh Abdus Sami Tariq', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 1267, 'Muhammad Irshad Ali Khan', 'Muhammad Rashid', '42101-5491353-1', '0331-2616651', 'irshad33@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1995-06-01', '2021-07-01', 'PLOT # L 452, SEC 3, NORTH KARACHI, KARACHI', 'Other', '1004', 10, NULL, 14, 30, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-07-01 19:47:26', '2021-07-07 00:11:03', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Muhammad Irshad Ali Khan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 1268, 'Agha Mubashir Ali', 'Agha Azhar Ali', '42201-0687740-3', '0313-3366997', 'mubashir7@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2001-07-13', '2021-08-10', 'C-3, BLOCK # 6, GULSHAN-E-IQBAL KARACHI', 'Sales', '8022', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-08-17 22:05:01', '2021-09-09 23:08:35', 'New', 'Not Active', NULL, NULL, NULL, NULL, 0, 'Agha Mubashir Ali', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 1269, 'Syed Shahood Aziz', 'Syed Shariq Hussain', '42201-7473030-1', '0300-3998648', 'shahood45@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2004-10-21', '2021-09-01', 'FLAT # E-28, PLOT # FL/14, BLOCK 11 (UNIQUE COMPLEX) GULSHAN-E-IQBAL', 'Sales', '8027', 15, NULL, 2, 18, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-09-01 14:50:01', '2021-09-10 16:59:14', 'New', 'Not Active', NULL, 'Online', '2021-09-07', NULL, 0, 'Syed Shahood Aziz', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 1270, 'Abdullah Arshad', 'Malik Arshad Iqbal', '42201-7321383-4', '0336-0240723', 'arshad125@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2001-12-05', '2021-09-01', NULL, 'Revenue', '0', 15, NULL, 2, 18, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-09-01 14:55:03', '2021-09-03 18:33:17', 'New', 'Not Active', NULL, 'Online', NULL, NULL, 0, 'Abdullah Arshad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 1271, 'Mohibullah Imran', 'Muhammad Imran Razzak', '42201-5347458-3', '03128547874', 'mohib23@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2021-09-07_.126.14285714286_.png', NULL, '2000-05-26', '2021-09-01', NULL, 'Revenue', '8037', 15, NULL, 13, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-09-01 14:58:22', '2022-04-23 09:23:07', 'New', 'Not Active', NULL, 'Online', NULL, '2021-10-01', 0, 'Mohibullah Imran', 'mohib23@bizzworld.com', 'mohib23@bizzworld.com', 'mohib23@bizzworld.com', NULL, NULL, NULL, NULL),
(95, 1272, 'Syed Hammad', 'Syed Majid', '42101-3011117-5', '0336-2607668', 'hammad678@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2021-09-07_.50.285714285714_.png', NULL, '2002-05-08', '2021-09-01', 'FLAT # B-9, SUPER TERRACE, AISHA MANZIL, FB AREA, BLOCK 7 KARACHI', 'Revenue', '8036', 15, NULL, 13, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-09-01 15:00:03', '2022-04-08 09:05:35', 'New', 'Not Active', NULL, 'Online', NULL, '2021-09-01', 0, 'Syed Hammad', 'hammad678@bizzworld.com', 'c', 'c', NULL, NULL, NULL, NULL),
(96, 1273, 'farjad', 'Syed Dilawar Raza Rizvi', '42000-2207067-5', '0323-2212039', 'farjad345@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2021-09-07_.117.71428571429_.png', NULL, '1997-12-14', '2021-09-03', NULL, 'Revenue', '8030', 15, NULL, 2, 18, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-09-03 19:29:04', '2021-09-17 20:24:05', 'New', 'Not Active', NULL, 'Offline', '2021-09-16', NULL, 0, 'farjad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 1274, 'Abdul Rahim', 'Muhammad Amir Khan', '421010-851350-5', '0316-0221318 0334-3763024', 'rahim43@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2021-09-21_.88.714285714286_.jpg', NULL, '2004-10-05', '2021-09-09', 'R-1641 BLOCK-18 SAMANABAD FB AREA KARACHI', 'Revenue', '8029', 15, NULL, 13, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-09-09 17:06:46', '2022-04-08 09:44:20', 'New', 'Not Active', NULL, 'Online', NULL, '2021-10-01', 0, 'Abdul Rahim', 'rahim43@bizzworld.com', 'rahim43@bizzworld.com', 'rahim43@bizzworld.com', NULL, NULL, NULL, NULL),
(98, 1275, 'Muhammad Nauman', 'Sarwar Khan', '42201-6686426-5', '0342-1217929', 'Nauman637@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2021-09-21_.24.142857142857_.jpg', NULL, '1998-12-17', '2021-09-14', 'HOUSE # E/74, BLOCK E, GULSHAN-EJAMAL KARACHI', 'Revenue', '8034', 15, NULL, 27, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-09-15 16:50:18', '2022-06-08 10:35:37', 'New', 'Not Active', NULL, 'Offline', '2022-03-16', '2021-10-01', 0, 'Muhammad Nauman', 'Nauman637@bizzworld.com', 'Nauman637@bizzworld.com', 'Nauman637@bizzworld.com', NULL, NULL, NULL, NULL),
(99, 1276, 'Mubashir Ahmed', 'Muhammad Younus', '42401-9061949-9', '0336-6828767', 'Mubashir499@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2021-09-21_.128.14285714286_.jpg', NULL, '2003-01-15', '2021-09-15', NULL, 'Revenue', '0', 15, NULL, 27, 18, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-09-15 16:54:48', '2022-03-30 10:36:38', 'New', 'Not Active', NULL, 'Offline', '2022-03-17', '2021-10-01', 0, 'Mubashir Ahmed', 'Mubashir499@bizzworld.com', 'Mubashir499@bizzworld.com', 'Mubashir499@bizzworld.com', NULL, NULL, NULL, NULL),
(100, 1277, 'Waleed Akhtar Sheikh', 'Parvez Akhtar', '41304-9816077-5', '0313-3085277', 'waleed000@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2021-09-21_.35_.jpg', NULL, '2001-12-25', '2021-09-13', 'R-243, BLOCK # 8, GULSHAN-E-SHAMIM, KARACHI', 'Revenue', '8027', 15, NULL, 13, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-09-17 20:41:17', '2022-01-24 19:30:27', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-11-01', 0, 'Waleed Akhtar Sheikh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 0, 'Agent 1', '0', '0', '0', 'agent001@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2021-09-17', '2021-09-17', '0', 'Sales', '0', 15, NULL, 2, 18, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-09-17 22:52:09', '2022-01-17 20:44:11', 'New', 'Not Active', NULL, NULL, NULL, '2022-01-17', 0, 'Agent 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 1278, 'Faisal Ali', 'Maimoon Shukoh Khairi', '421010-623157-7', '0', 'faisal577@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2021-09-21_.68.428571428571_.jpg', NULL, '2002-03-18', '2021-09-08', 'HOUSE #C-64, OWN HOMES, BLOCK 21, FB AREA KARACHI', 'Other', '0', 2, NULL, 2, 28, 4, 2, 3, 6, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Muhammad Mehroz', 'Rafia Naz', '2021-09-20 18:39:40', '2023-04-06 19:44:31', 'New', 'Not Active', NULL, 'Online', '2021-09-17', '2022-06-20', 0, 'Faisal Ali', 'saif@gmail.com', 'saif@gmail.com', 'saif@gmail.com', NULL, NULL, NULL, 0),
(103, 1279, 'Ghulam Hamza Khan', 'Ghulam Wazir Khan', '42201-3523892-9', '0334-1231682', 'Hamza929@bizzworld.com', 'Javeriahamza89', 'rafia.naaz@bizzworld.com_2021-09-21_.93.142857142857_.jpg', NULL, '2001-10-21', '2021-09-13', 'B-71, MADRASS COOPERATIVE HOUSING SOCIETY KARACHI', 'Sales', '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-09-20 18:48:38', '2021-11-02 18:02:43', 'New', 'Not Active', NULL, 'Offline', '2021-10-15', NULL, 0, 'Ghulam Hamza Khan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 1281, 'Zeeshan Aziz', 'Masood Aziz', '31202-12473871-1', '0313-2061510', 'zeeshan871@bizzworld.com', 'Zeeshan999', 'rafia.naaz@bizzworld.com_2021-09-21_.139.85714285714_.jpg', NULL, '2021-09-20', '2021-09-14', 'SHAMIM SKYLINE, BLOCK #9, FB AREA KARACHI', 'Sales', '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-09-20 18:52:23', '2021-12-09 22:05:48', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Zeeshan Aziz', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 1280, 'Ramsha Naeem', 'Naeem Butt', '42201-7068671-4', '0324-8278558', 'ramsha714@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2021-09-21_.81.428571428571_.jpg', NULL, '2001-10-06', '2021-09-15', 'NOMAN RESIDENCE, TOWER 3, SCHEME 33, GHIZRI ROAD KARACHI', 'Sales', '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-09-20 18:59:39', '2021-10-07 23:24:30', 'New', 'Not Active', NULL, NULL, '2021-10-07', NULL, 0, 'Ramsha Naeem', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 1282, 'Shehroz', 'Johnson Iqbal', '42201-1053250-3', '0341-2605422', 'shehroz503@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1997-07-25', '2021-09-13', 'HOUSE #26, AREA 36C, NEAR GULSHAN MARKET', 'Sales', '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-10-08 17:40:56', '2021-11-01 18:49:13', 'New', 'Not Active', NULL, 'Online', NULL, NULL, 0, 'Shehroz', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 1283, 'Sameer Akhtar', 'Faheem Akhtar', '42101-3587276-1', '0317-2050213', 'sameer761@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2021-11-03_.1.1428571428571_.jpg', NULL, '1999-12-08', '2021-10-12', 'HOUSE #L-60, SECTOR 16A BUFFERZONE KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-10-12 16:58:45', '2022-02-24 22:09:30', 'New', 'Not Active', NULL, 'Online', NULL, '2021-12-01', 0, 'Sameer Akhtar', 'sameer761@bizzworld.com', 'bizz@1', 'bizz@1', NULL, NULL, NULL, NULL),
(108, 1284, 'Shaheer Ahmed', 'Muhammad Ayub', '42401-72991791-1', '0308-2614764', 'shaheer911@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2021-11-03_.130.42857142857_.jpg', NULL, '2002-05-24', '2021-10-12', 'R307, BL 04-A AZEEM KHAN GOTH GULSHAN-E-IQBAL KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, '2iEehxUHwtTIrqZrpKoWIzL1BA9uhFWJx6Vr3brpKNCdTEf9rOBIZlXBPX6KVQm0LB7ifvRMuUS6LwBvrvb7i94OqXYw6eaEAXVF', 'Rafia Naz', 'Rafia Naz', '2021-10-19 17:16:56', '2022-04-23 09:23:25', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-11-01', 0, 'Shaheer Ahmed', 'shaheer911@bizzworld.com', 'bizz@1', 'bizz@1', NULL, NULL, NULL, NULL),
(109, 1285, 'Javeria Khalid', 'Khalid Parvaiz', '42101-7320940-4', '0330-3240275', 'javeria404@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2021-11-03_.26.714285714286_.jpg', NULL, '2002-06-14', '2021-10-12', 'R-223, SAIMA LUXURY HOMES SOCIETY', 'Revenue', '0', 15, NULL, 13, 37, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-10-19 17:25:43', '2022-09-29 06:19:15', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-12-01', 0, 'Javeria Khalid', 'javeria404@bizzworld.com', 'bizz21', 'bizz@1', NULL, NULL, NULL, 0),
(110, 1286, 'Sufyan Khan', 'Sami-ur-Rehman', '42101-7232400-5', '0321-2732085', 'sufyan005@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2021-11-10_.108.71428571429_.jpg', NULL, '2004-04-26', '2021-11-01', 'B-16, OWN HOMES BEHIND LUCKYONE MALL KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-10-19 18:01:32', '2022-01-24 19:27:03', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-11-01', 0, 'Sufyan Khan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 1287, 'Syed Salik Hassan', 'Syed Shahab Hassan', '42101-0373285-3', '0346-3658227', 'salik853@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2021-11-10_.33.714285714286_.jpg', NULL, '2004-11-22', '2021-10-13', 'LA1/1 B/16, BL 21 OWN HOMES FB AREA KARACHI', 'Sales', '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-10-19 18:07:37', '2022-02-10 18:41:13', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-10-12', 0, 'Syed Salik Hassan', 'salik853@bizzworld.com', 'salik853@bizzworld.com', 'salik853@bizzworld.com', NULL, NULL, NULL, NULL),
(121, 1288, 'Muhammad Rehman Shah', 'Fayyaz Ahmed Shah', '0', '0345-1182406', 'rehman288@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2004-03-28', '2021-11-01', 'HOUSE #171, NAZIMABAD #1 KARACHI', 'Revenue', '0', 15, NULL, 2, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-11-03 18:19:11', '2021-12-14 18:58:07', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-12-14', 0, 'Muhammad Rehman Shah', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 1289, 'Muhammad Haseeb', 'Muhammad Ghafoor', '42101-1802400-9', '0315-8492434', 'haseeb009@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-01-18_.62.714285714286_.png', NULL, '2002-08-08', '2021-10-26', 'LIAQUATABAD 8/10', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-11-03 19:35:50', '2022-02-24 22:09:48', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-12-01', 0, 'Muhammad Haseeb', 'haseeb009@bizzworld.com', 'bizz@1', 'bizz@1', NULL, NULL, NULL, NULL),
(123, 1290, 'Mazhar Ather', 'Kanwar Ather Jawaid Rajput', '61101-7170997-3', '0333-2998126', 'mazhar973@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-01-18_.124.85714285714_.png', NULL, '2005-09-22', '2021-11-01', 'AL-MUSTAFA TOWER NEAR POST OFFICE F.B AREA', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-11-03 19:42:01', '2022-05-24 09:22:33', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-12-01', 0, 'Mazhar Ather', 'mazhar.ather@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(124, 1291, 'Saania Rizwan', 'Muhammad Rizwan', '42101-7213641-2', '0315-2015102', 'saania412@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2021-11-10_.38.285714285714_.jpg', NULL, '2001-09-24', '2021-11-01', 'FLOOR 11, C-1104, KAREEM RESEDENCIA, GULSHAN BLOCK - 13-E KARACHI', 'Revenue', '0', 15, NULL, 31, 208, 4, 1, 12, 0, '2021', 'Saania Rizwan', '284740892', NULL, '1285', 'UBL', NULL, 'Rafia Naz', 'Rafia Naz', '2021-11-03 19:46:31', '2022-09-28 08:24:15', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-11-01', 0, 'Saania Rizwan', 'saania.rizwan@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(125, 1292, 'Furqan Abdul Rahim', 'Abdul Rahim', '42501-1402291-3', '0320-3037075', 'furqan913@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2021-11-10_.14.714285714286_.jpg', NULL, '1997-07-02', '2021-11-01', 'FLAT #602, MARYAM HIEGHTS, GULSHAN-E-IQBAL 13-C KARACHI', 'Revenue', '0', 1, NULL, 18, 30, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-11-03 20:00:16', '2022-02-18 18:38:47', 'New', 'Not Active', NULL, 'Offline', '2022-01-31', '2021-11-01', 0, 'Furqan Abdul Rahim', 'furqan913@bizzworld.com', 'furqan913@bizzworld.com', 'furqan913@bizzworld.com', NULL, NULL, NULL, NULL),
(126, 1293, 'Faiza Sohail', 'Sohail Ahmed Khan', '42201-3081026-0', '0334-0034001', 'faiza260@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-01-18_.79.428571428571_.png', NULL, '1998-08-12', '2021-11-10', 'HOUSE# 757, PIB, COLONY KARACHI', 'Other', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-11-11 18:34:45', '2022-04-29 10:05:19', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-12-01', 0, 'Faiza Sohail', 'faiza260@bizzworld.com', 'faiza260@bizzworld.com', 'faiza260@bizzworld.com', NULL, NULL, NULL, NULL),
(127, 1294, 'Muhammad Bilawal Ali', 'Muhammad Anees', '42101-4613811-1', '0302-2356623', 'bilawal111@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-01-18_.51.714285714286_.png', NULL, '1997-12-01', '2021-11-12', '10/18 LIAQUATABAD NO. 1 KARACHI', NULL, '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-11-12 17:27:48', '2022-05-21 10:45:01', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-10-01', 0, 'Muhammad Bilawal Ali', 'bilawal.ali@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(128, 1296, 'Mohammad Ahmed Ibrahim', 'Mohammad Ibrahim', '42201-9154678-9', '03342086803', 'Ahmed789@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2001-01-21', '2021-11-24', 'HASSAN SQUARE GULSHAN-E-IQBAL 13-D', 'Revenue', '0', 15, NULL, 2, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-11-24 20:16:57', '2021-12-14 18:58:41', 'New', 'Not Active', NULL, NULL, NULL, '2021-12-14', 0, 'Mohammad Ahmed Ibrahim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 1301, 'Osama Mashallah', 'Mashallah Khan', '13504-5741155-9', '03435526973', 'Osama559@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2002-04-20', '2021-11-24', 'SITE AREA ORANGI TOWN KARACHI', 'Revenue', '0', 15, NULL, 2, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Muhammad Mehroz', 'Rafia Naz', '2021-11-24 20:41:23', '2022-01-25 22:22:18', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-12-01', 0, 'Osama Mashallah', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 1295, 'Hassam Khan', 'Amir Khan', '42101-4793315-5', '03302899061', 'Hassam155@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2004-09-24', '2021-11-24', 'SUR # SUR 572 FLAT N 156 BLOCK 09, AZIZABAD LAL SHAHBAZ NAGAR FB AREA', 'Revenue', '0', 15, NULL, 2, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-11-24 20:58:21', '2022-01-10 22:35:17', 'New', 'Not Active', NULL, 'Online', NULL, '2022-01-10', 0, 'Hassam Khan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 1300, 'Syed Umer Nawaz', 'Syed Mohammad Rab Nawaz', '42101-4944500-9', '03362486545', 'Umer009@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2003-07-03', '2021-11-24', 'SUR # SUR 572 FLAT N 55 BLOCK 09, AZIZABAD LAL SHAHBAZ NAGAR FB AREA', 'Revenue', '0', 15, NULL, 2, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-11-24 21:16:20', '2021-12-09 17:03:55', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, 'Syed Umer Nawaz', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 1298, 'Ahsan Mashallah', 'Mashallah Khan', '13504-232613-1', '03111075302', 'Ahsan131@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2004-04-10', '2021-11-24', 'SITE AREA ORANGI TOWN KARACHI', 'Revenue', '0', 15, NULL, 2, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Muhammad Mehroz', 'Rafia Naz', '2021-11-24 21:23:18', '2022-01-25 22:21:51', 'New', 'Not Active', NULL, 'Online', NULL, '2022-01-17', 0, 'Ahsan Mashallah', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 1297, 'Abdullah', 'Razzak Ibrahim', '42201-3626876-9', '03172129887', 'Abdullah769@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2004-04-21', '2021-11-24', 'GULSHAN-E-IQBAL 13-E SHABBARA APT KARACHI', 'Revenue', '0', 15, NULL, 2, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-11-24 21:30:59', '2021-12-14 18:59:06', 'New', 'Not Active', NULL, NULL, NULL, '2021-12-14', 0, 'Abdullah', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 1299, 'Zia Akhtar', 'Faheem Akhtar', '42101-4847587-1', '03061264822', 'Zia871@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-01-18_.83.571428571429_.png', NULL, '2003-07-09', '2021-11-24', 'PLOT # L 60 SECTOR 16A . NORTH NAZIMABAD', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-11-24 21:40:55', '2022-02-09 19:57:36', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-12-01', 0, 'Zia Akhtar', 'Zia871@bizzworld.com', 'bizz@1', 'bizz@1', NULL, NULL, NULL, NULL),
(135, 1302, 'Abdullah Raja', 'Irfan Ullah', '42101-4851614-5', '0312-2741782', 'abdullah145@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2004-08-04', '2021-11-22', 'B-16, OWN HOMES BEHIND LUCKYONE MALL FB AREA BLOCK 21 KARACHI', 'Revenue', '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-11-29 22:58:21', '2022-02-02 21:33:12', 'New', 'Not Active', NULL, 'Online', NULL, '2021-11-23', 0, 'Abdullah Raja', 'rty@bizz.com', '0', '0', NULL, NULL, NULL, NULL),
(136, 1303, 'Muhammad Zubair Khan', 'Ghulam Rasool', '45504-8546037-1', '0317-1237834', 'zubair371@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2002-08-08', '2021-11-18', 'FLAT- 413, ABU AL HASSAN ISPHANI ROAD road GULZARE HIJRI KARACHI', 'Revenue', '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-11-29 23:07:30', '2022-01-10 22:35:40', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-11-18', 0, 'Muhammad Zubair Khan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 1308, 'Muhammad Hassan', 'Muhammad Javed', '42101-9658896-3', '0318-1267264', 'hassan963@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2003-06-06', '2021-12-01', '558, WAHEEDABAD GULBAHAR, NAZIMABAD # 1, KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-12-14 17:59:24', '2022-05-24 09:23:41', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-01-01', 0, 'Muhammad Hassan', 'hassan963@bizzworld.com', 'hassan963@bizzworld.com', 'hassan963@bizzworld.com', NULL, NULL, NULL, NULL),
(138, 1306, 'Faizan', 'Talib Hussain', '42101-2021146-3', '0315-2669353', 'faizan463@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1994-01-04', '2021-12-01', 'FLAT # 503, AL BASIT TOWER, BLOCK 7 F.B AREA KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-12-14 18:20:47', '2022-01-10 22:35:59', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-12-07', 0, 'Faizan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 1305, 'Hadi Ahmed Shah Sultani', 'Muhammad Naseem Late', '42101-2866486-1', '0343-2057129', 'hadi861@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2005-03-07', '2021-12-01', 'PLOT NO.3 4 AND 7 BLOCK 13-E, SURVEY NO. 205, GULSHAN-E-IQBAL, KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-12-14 18:35:11', '2022-01-10 22:36:16', 'New', 'Not Active', NULL, NULL, NULL, '0001-01-01', 0, 'Hadi Ahmed Shah Sultani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 1304, 'Sabeen Gull', 'Talib Hussain', '42101-1713471-6', '0340-4780281', 'sabeen716@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1991-11-05', '2021-12-01', 'PLOT NO 3 4 AND 7 BLOCK 13-E, SURVEY NO 205 GULSHAN-E-IQBAL KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2021-12-14 18:41:25', '2022-01-17 20:46:56', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-12-01', 0, 'Sabeen Gull', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 1307, 'Saba Gull', 'Talib Hussain', '42101-7059544-2', '0', 'saba442@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1981-01-09', '2021-12-01', 'PLOT NO 3 4 AND 7 BLOCK 13-E, SURVEY NO 205 GULSHAN-E-IQBALKARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Muhammad Mehroz', 'Rafia Naz', '2021-12-14 18:47:33', '2022-01-25 22:21:40', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-12-14', 0, 'Saba Gull', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 1309, 'Amman Baig', 'Mirza Ather Baig', '42191-8506007-4', '0331-233-9106', 'Amman074@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2002-09-01', '2021-12-22', 'FLAT NO. N-34 SHUMAIL VIEW PLOT NO FL - 04 SECT - 14 C SCH - 33', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2021', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Aleena Afzal', '2021-12-22 22:30:11', '2022-01-12 19:55:08', 'New', 'Not Active', NULL, 'Online', NULL, '2021-12-22', 0, 'Amman Baig', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 1310, 'Hashir Nasir', 'Abdul Nasir', '32303-1722537-5', '03152297030', 'Hashir375@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2003-07-24', '2022-06-06', 'FLAT # D 20 PLOT # FL 10 BLOCK-6 (MOMIN SQUARE) GULSHAN-E-IQBAL', 'Revenue', '0', 2, NULL, 2, 28, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Aleena Afzal', '2021-12-22 22:41:11', '2022-07-16 03:49:48', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-12-22', 0, 'Hashir Nasir', 'Hashir375@bizzworld.com', 'Hashir375@bizzworld.com', 'Hashir375@bizzworld.com', NULL, NULL, NULL, NULL),
(144, 1312, 'Arham Azeem Ahmed', 'Azeem Ahmed', '42101-6647562-1', '03340133565', 'Arham621@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2002-01-08', '2021-12-22', 'FLAT # C 18 PLOT # FL 2 BLOCK-3 (MASIAM PLAZA) GULSHAN-E-IQBAL', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Aleena Afzal', '2021-12-22 22:58:06', '2022-04-08 09:05:53', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-01-07', 0, 'Arham Azeem Ahmed', 'Arham621@bizzworld.com', 'Arham621@bizzworld.com', 'Arham621@bizzworld.com', NULL, NULL, NULL, NULL),
(145, 1313, 'Muhammad Shayan', 'Waseem Ahmed', '42101-4168798-1', '03340765735', 'Shayan981@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2003-05-26', '2021-12-22', 'KE. WA-464, PLT # 182 WAHEEDABAD GOLIMAR NAZIM ABAD', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Aleena Afzal', '2021-12-22 23:11:45', '2022-05-24 09:23:03', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-12-22', 0, 'Muhammad Shayan', 'muhammad.shayan@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(146, 1317, 'Syed Abdul Muqeet', 'Syed Haider Ahmed', '42201-0624851-7', '0336-1837078', 'muqeet517@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2004-11-09', '2021-12-07', 'L-S4, BLOCK B NORTH NAZIMABAD KARACHI', 'Revenue', '0', 15, NULL, 13, 18, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-06 19:40:31', '2022-03-30 10:37:27', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-01-01', 0, 'Syed Abdul Muqeet', 'muqeet517@bizzworld.com', 'muqeet517@bizzworld.com', 'muqeet517@bizzworld.com', NULL, NULL, NULL, NULL),
(147, 1316, 'Rafyaan Saleem', 'Muhammad Saleem', '42201-6274584-3', '0346-2094828', 'rafyaan843@bizzworld.com', 'Bizzworld335', 'rafia.naaz@bizzworld.com_2022-01-18_.119.85714285714_.png', NULL, '2001-07-12', '2022-01-04', 'HOUSE # 141, JAMSHAID ROAD #3, HYDRABAD COLONY KARACHI', 'Revenue', '0', 6, NULL, 31, 1, 4, 1, 11, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-06 19:55:07', '2022-10-12 08:39:16', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-01-04', 0, 'Rafyaan Saleem', 'rafyaan.saleem@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(148, 1318, 'Hajra Khan', 'Muhammad Iqbal Khan', '42201-6165302-8', '0334-3720973', 'hajra028@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1993-09-03', '2022-01-05', 'B-18, PYRAMID CENTRE BLOCK 16 FEDERAL B AREA KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-07 17:10:30', '2022-01-17 22:22:57', 'New', 'Not Active', NULL, NULL, NULL, '2022-01-12', 0, 'Hajra Khan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 1319, 'Sohaib Hussain', 'Shabbir Hussain', '0', '0310-1129578', 'sohaib000@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2004-05-18', '2022-01-03', 'HOUSE # 6/690, BLOCK 6 LIAQUATABAD TOWN KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-07 17:16:19', '2022-01-24 19:28:17', 'New', 'Not Active', NULL, NULL, NULL, '2022-01-14', 0, 'Sohaib Hussain', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 1320, 'Taimoor Younus', 'Younus Rafiq', '0', '0306-8947612', 'taimoor000@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2002-09-17', '2022-01-06', 'FLAT # B404, ZEHRA COMPLEX SUPPARCO ROAD KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-07 17:19:32', '2022-02-02 20:35:08', 'New', 'Not Active', NULL, NULL, NULL, '2022-01-17', 0, 'Taimoor Younus', 'lefty@bizzwolrd.com', '0', '0', NULL, NULL, NULL, NULL),
(151, 1392, 'Syed Safee Hasan', 'Syed Riaz Ul Hasan', '42101-0564565-5', '0324-3289540', 'safee655@bizzworld.com', 'Bizz@123', 'rafia.naaz@bizzworld.com_2022-06-24_.41.857142857143_.png', NULL, '2002-11-14', '2022-01-06', 'HOUSE # 781 BLOCK #2 AZEEZABAD KARACHI', 'Revenue', '0', 7, NULL, 13, 79, 4, 2, 12, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-07 17:22:36', '2023-03-07 22:38:23', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-02-01', 0, 'Syed Safee Hasan', 'safee655@bizzworld.com', 'safee655@bizzworld.com', 'safee655@bizzworld.com', NULL, NULL, NULL, 0),
(152, 1322, 'Muzammil Ud din', 'Naeem Ud Din', '0', '0324-9246811', 'muzammil000@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-01-18_.89.428571428571_.png', NULL, '2003-03-25', '2021-10-05', 'BLOCK #6, 6/616 LIAQUATABAD KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Muhammad Mehroz', 'Rafia Naz', '2022-01-11 19:15:24', '2022-01-25 22:21:26', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-01-24', 0, 'Muzammil Ud din', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 1315, 'Muahmmad Rohab Saleem', 'Muhammad Saleem', '42101-8657102-5', '0301-1841289/0313-2842557', 'rohab025@bizzworld.com', 'bizz@1', 'no_image.jpg', 'rohab025@bizzworld.com_2022-01-19_.91.571428571429_.jpg', '1998-02-19', '2021-12-21', 'HOUSE 262, QASIMABAD LIAQUATBAD KARACHI', 'Other', '1001', 4, NULL, 4, 28, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-11 20:40:54', '2022-04-23 09:31:05', 'New', 'Not Active', NULL, 'Online', NULL, '2021-12-11', 0, 'Muahmmad Rohab Saleem', 'rohab025@bizzworld.com', 'rohab025@bizzworld.com', 'rohab025@bizzworld.com', NULL, NULL, NULL, NULL),
(154, 1314, 'Saad Mahmood', 'Amjad Ali', '42201-1036495-9', '0344-2002593', 'saad959@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1996-04-06', '2020-12-27', 'HOUSE #L-95, BLOCK A, GULSHN-E-MILLAT KARACHI', 'Other', '1001', 4, NULL, 4, 28, 4, 1, 11, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-11 20:48:07', '2022-04-23 09:30:38', 'New', 'Not Active', NULL, 'Offline', NULL, '2021-12-27', 0, 'Saad Mahmood', 'saad959@bizzworld.com', 'saad959@bizzworld.com', 'saad959@bizzworld.com', NULL, NULL, NULL, NULL),
(155, 1324, 'Syed Naqi Ali', 'Syed Muazzam Ali', '37201-7715019-3', '0336-0194385', 'naqi193@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-01-18_.107.57142857143_.png', NULL, '2000-10-24', '2022-01-07', 'FLAT # C19, ROOFI HIEGHTS PHASE II GUKISTAN-E-JOHAR BLOCK #17 KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-17 18:29:42', '2022-04-30 08:26:37', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-01-07', 0, 'Syed Naqi Ali', 'naqi193@bizzworld.com', 'bizz@1', 'bizz@1', NULL, NULL, NULL, NULL),
(156, 1325, 'Bilawal Hussain', 'Fida Hussain', '42501-5878640-7', '0335-3369505', 'bilawal000@bizzworld.com', 'Pakistan28', 'muhammad.mehroz@bizzworld.com_2022-07-28_.18_.jpg', NULL, '1996-11-17', '2022-01-05', 'R-244, RAFI BANGLOWS MALIR KARACHI', 'Revenue', '0', 15, NULL, 29, 28, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-17 18:35:12', '2022-09-28 08:25:29', 'New', 'Not Active', NULL, 'Online', NULL, '2022-01-05', 1, 'Travis Gibson', 'travis.gibson@maxdigitizing.com', 'bizzworld@335', 'mail.maxdigitizing.com', NULL, NULL, NULL, 0),
(157, 1326, 'Ashhad Ur Rehman', 'Saeed Ahmed Khan', '0', '0322-2060585', 'ashhad000@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-04-14_.98.428571428571_.png', NULL, '2001-02-11', '2022-01-14', 'L-31 NOMAN GRAND CITY BLOCK #17, GULISTAN-EJOHAR KARACH', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-17 20:07:10', '2022-07-28 04:57:13', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-01-21', 0, 'Ashhad Ur Rehman', 'ashhad.rehman@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(158, 1329, 'Noman uddin', 'Miftah uddin', '0', '0332-3528070', 'noman000@bizworld.com', 'bizz@1', 'no_image.jpg', NULL, '2002-03-05', '2022-01-14', 'N002, NOMAN GRAND CITY BLOCK 17 GULISTAN-EJOHAR KARACH', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-17 20:19:45', '2022-01-24 19:29:40', 'New', 'Not Active', NULL, NULL, NULL, '2022-01-17', 0, 'Noman uddin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 1332, 'Fardeen Khan', 'Sabir Ali', '0', '0311-7899053', 'fardeen000@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-06-27_.98.571428571429_.png', 'fardeen000@bizzworld.com_2022-06-03_.139.71428571429_.jpg', '2001-09-01', '2022-01-21', '0', 'Other', '0', 1, NULL, 5, 30, 4, 1, 8, 0, '2022', 'Fardeen Khan', '286287748', 'PK38UNIL0109000286287748', '0601', 'UBL Babar Market', NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-21 23:56:22', '2022-12-05 18:01:38', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-01-21', 0, 'Fardeen Khan', 'fardeen.khan@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(160, 1333, 'Wahaj Khan', 'Muhammad musharraf Khan', '42101-4856798-1', '03062142006', 'wahaj981@bizzwolrd.com', 'bizz@1', 'no_image.jpg', NULL, '2002-07-12', '2022-01-17', 'HOUSE # R266, BLOCK #17 GULBERG KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-24 19:42:33', '2022-02-01 20:13:07', 'New', 'Not Active', NULL, NULL, NULL, '2022-01-25', 0, 'Wahaj Khan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 1334, 'Muhammad Siddique', 'Asghar Qasim', '0', '0330-3617043', 'siddique000@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-04-14_.8.8571428571429_.png', NULL, '2005-04-16', '2022-01-19', 'R-884, SECTOR 15A/4, BUFFERZONE KARACHI', 'Revenue', '0', 15, NULL, 13, 79, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-24 19:51:37', '2022-05-21 10:45:40', 'New', 'Not Active', NULL, 'Online', NULL, '2022-02-04', 0, 'Muhammad Siddique', 'muhammad.siddique@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(162, 1335, 'Bilal Khan', 'Abdul Malik Khan', '0', '0306-2742418', 'bilal000@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2003-11-04', '2022-01-24', 'A-18, CITY VILLAS SCHEME 33\'A KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-24 20:01:16', '2022-04-09 09:14:27', 'New', 'Not Active', NULL, 'Offline', '2022-03-30', '2022-04-08', 0, 'Bilal Khan', 'bilal000@bizzworld.com', 'bilal000@bizzworld.com', 'bilal000@bizzworld.com', NULL, NULL, NULL, NULL),
(163, 1336, 'Owais Ahmed Shaikh', 'Ishtiaq Ahmed shaikh', '0', '0313-0298782', 'owais000@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-04-14_.56.714285714286_.png', NULL, '2001-11-15', '2022-01-13', 'NOMAN GRAND CITY BLOCK P3 GULISTAN-E-JOHAR BLOCK 17 KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-24 20:11:45', '2022-05-24 09:23:19', 'New', 'Not Active', NULL, 'Online', NULL, '2022-01-13', 0, 'Owais Ahmed Shaikh', 'owais.ahmed@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(164, 1327, 'Uzair Ahmed', 'Ishtiaq Ahmed shaikh', '0', '0324-2098252', 'uzair000@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-04-14_.50_.png', NULL, '2002-12-03', '2022-01-13', 'FLAT P3, NOMAN GRAND CITY GULISTAN-E-JOHAR BLOCK 17 KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-24 20:18:16', '2022-05-24 09:21:53', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-01-20', 0, 'Uzair Ahmed', 'uzair.ahmed@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(165, 1337, 'Ahmed Ali', 'Khalid Abbas Qureshi', '42201-9335262-9', '0313-2582384', 'ahmed629@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2003-04-25', '2022-01-13', 'A239 BLOCK 3 SADI TOWN SCEME 33 KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-24 20:25:44', '2022-08-25 05:23:11', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-02-01', 0, 'Ahmed Ali', 'ahmed.ali@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(166, 4, 'Asif Islam', 'Zulfiqar Ahmed Khan', '42101-2173964-9', '0347-2854897', 'asif649@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1972-12-07', '2021-12-27', '0', 'Revenue', '0', 8, NULL, 22, 18, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-25 20:03:13', '2022-03-30 10:39:32', 'New', 'Not Active', NULL, NULL, NULL, '2021-12-01', 0, 'Asif Islam', 'asif649@bizzworld.com', 'asif649@bizzworld.com', 'asif649@bizzworld.com', NULL, NULL, NULL, NULL),
(167, 1330, 'Sana Mehwish', 'Fazal-ur-Rehman', '0', '0335-2839011', 'sana000@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-06-24_.114_.png', NULL, '1987-08-03', '2022-01-13', 'D-303, ASMA GARDEN GULZAR-E-HIJRI KARACHI', 'Revenue', '0', 15, NULL, 31, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-01-26 17:13:32', '2022-09-28 08:25:45', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-01-13', 0, 'Sana Mehwish', 'sana.mehwish@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(168, 1338, 'Maria Mufaddal', 'Mufaddal Tahir', '42101-8623030-4', '0336-0878385', 'maria304@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2003-10-12', '2022-02-02', 'FLAT#11, QASRE KULSOOM OLD COMPOUND BLOCK E NORTH NAZIMABAD KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-02-01 18:02:50', '2022-04-23 09:26:57', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-02-07', 0, 'Maria Mufaddal', 'maria304@bizzworld.com', '0', '0', NULL, NULL, NULL, NULL),
(169, 1339, 'Zainab Akmal', 'Muhammad Akmal', '42101-7826411-2', '0307-2954924', 'zainab112@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2004-08-14', '2022-02-02', 'House # 907, hussain desilva town north nazimabad karachi', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-02-01 18:20:11', '2022-04-23 09:40:40', 'New', 'Not Active', NULL, 'Offline', '2022-04-15', '2022-02-04', 0, 'Zainab Akmal', 'zainab112@bizzworld.com', '0', '0', NULL, NULL, NULL, NULL),
(170, 1340, 'Ebad Hamid', 'Abdul Hamid', '42101-2380578-1', '03155-639615', 'ebad781@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-04-14_.109.71428571429_.png', NULL, '2003-06-24', '2022-02-01', 'L-10, ALNASEER SQUARE SHAREEFABAD KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-02-01 18:34:48', '2022-05-24 09:22:48', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-02-01', 0, 'Ebad Hamid', 'ebad.hamid@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(171, 1341, 'Shayan Naveed', 'Naveed Aslam', '42201-5313157-9', '0336-6872612', 'shayan579@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2002-12-15', '2022-02-02', '613, PIB colony karachi', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-02-01 18:39:58', '2022-05-24 09:21:29', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-02-03', 0, 'Shayan Naveed', 'shayan.naveed@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(172, 1342, 'Fizza Ayaz', 'Ayyaz', '0', '0318-1257056', 'fizza000@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-06-27_.33.714285714286_.png', NULL, '2004-09-20', '2022-01-17', 'Bahtta town north nazimabad karachi', 'Revenue', '0', 2, NULL, 2, 28, 4, 2, 5, 6, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-02-08 19:20:37', '2023-04-06 18:51:24', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-01-24', 0, 'Fizza Ayaz', 'fizza.ayaz@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(173, 1343, 'Farheen Saleem', 'Saleem sadroudin', '0', '0304-7089950', 'farheen000@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2005-11-29', '2022-01-17', '0', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-02-08 19:25:21', '2022-03-04 20:18:02', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-01-24', 0, 'Farheen Saleem', 'farheen000@bizzworld.com', 'farheen000@bizzworld.com', 'farheen000@bizzworld.com', NULL, NULL, NULL, NULL),
(174, 1344, 'Farzana Khurram', 'Syed M. Azeem Uddin', '42101-8610449-4', '0336-1086965', 'farzana494@bizzworld.com', 'bizzFarzana99', 'rafia.naaz@bizzworld.com_2022-06-24_.27.428571428571_.png', NULL, '2022-02-08', '2022-02-07', 'Kaneez Fatima Karachi', 'Revenue', '0', 15, NULL, 31, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-02-08 19:31:55', '2022-09-28 08:26:18', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-02-08', 0, 'Farzana Khurram', 'farzana.khurram@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(175, 1345, 'Muhammad Shayan Shams', 'Syed Shamsul hasan zaidi', '0', '0315-2922959', 'shayan000@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-04-14_.88.571428571429_.png', NULL, '2006-09-06', '2022-02-02', 'R34 block 16 fb area karachi', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-02-08 19:36:19', '2022-04-23 09:28:15', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-02-08', 0, 'Muhammad Shayan Shams', 'shayan000@bizzworld.com', 'shayan000@bizzworld.com', 'shayan000@bizzworld.com', NULL, NULL, NULL, NULL),
(176, 1346, 'Rabi Ud Din', 'Abdul Aziz', '42201-5060317-7', '0311-2952143', 'rabi000@bizzworld.com', 'Rabiaziz123', 'rafia.naaz@bizzworld.com_2022-04-14_.14.571428571429_.png', NULL, '2004-05-04', '2022-02-07', 'L-933, SECTOR 5A1, NORTH KARACHI KARACHI', 'Revenue', '0', 6, NULL, 31, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-02-14 19:33:45', '2022-09-07 10:17:54', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-02-07', 0, 'Rabi Ud Din', 'rabi.aziz@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(177, 1347, 'Muhammad Hassan Ali Janjua', 'Muhammad Farooq Janjua', '42301-6176595-9', '0311-2122467', 'hassan959@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-04-14_.4.1428571428571_.png', NULL, '1998-12-10', '2022-03-01', 'House # 208, police quarter garden south karachi', 'Revenue', '0', 15, NULL, 13, 79, 4, 1, 6, 6, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-03-04 20:38:36', '2022-09-28 08:26:00', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-03-04', 0, 'Muhammad Hassan Ali Janjua', 'muhammad.hassan@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(178, 1348, 'Abdul Rafay', 'Sana Ullah', '000', '03', 'rafay000@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-04-14_.82.857142857143_.png', NULL, '2004-12-28', '2022-03-01', 'B-323 AL NOOR SOCIETY FB AREA BLOCK 19 KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-03-18 19:22:16', '2022-05-21 10:47:10', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-03-04', 0, 'Abdul Rafay', 'abdul.rafay@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(179, 1349, 'Ali Hassan', 'Muhammad Saleem', '42101-3761132-7', '0340-8369554', 'ali327@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-04-14_.45.714285714286_.png', NULL, '2022-03-19', '2022-03-19', 'L159, SECTOR L 1 SURJANI TOWN KARACHI', 'Revenue', '0', 6, NULL, 31, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-03-18 19:28:10', '2022-09-07 10:18:19', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-03-09', 0, 'Ali Hassan', 'ali.hassan@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL);
INSERT INTO `elsemployees` (`elsemployees_empid`, `elsemployees_batchid`, `elsemployees_name`, `elsemployees_fname`, `elsemployees_cnic`, `elsemployees_cno`, `elsemployees_email`, `elsemployees_password`, `elsemployees_image`, `elsemployees_coverimage`, `elsemployees_dofbirth`, `elsemployees_dofjoining`, `elsemployees_address`, `elsemployees_type`, `elsemployees_ext`, `elsemployees_departid`, `elsemployees_subdepartid`, `elsemployees_desgid`, `elsemployees_reportingto`, `elsemployees_roleid`, `elsemployees_status`, `elsemployees_annualleaves`, `elsemployees_sickleaves`, `elsemployees_leaveyear`, `account_title`, `account_no`, `iban_no`, `bank_branch`, `bank_name`, `verify_token`, `elsemployees_changeby`, `elsemployees_addby`, `created_at`, `updated_at`, `probiation_status`, `emailschedule_userstatus`, `emailschedule_lastactive`, `user_loginstatus`, `elsemployees_dofleaving`, `elsemployees_dofpayroll`, `elsemployees_allowoutsideemail`, `elsemployees_emailname`, `elsemployees_emailaddress`, `elsemployees_emailpassword`, `elsemployees_emailhost`, `elsemployees_careligibility`, `elsemployees_assigncaroramount`, `car_id`, `elsemployees_caramount`) VALUES
(180, 1351, 'Shahida Changezi', 'Muhammad Younus', '54400-3253795-8', '0341-0395626', 'shahida958@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-06-27_.136.57142857143_.png', NULL, '2001-01-01', '2022-02-28', 'Gilgiti goth university road karachi block 11', 'Revenue', '0', 2, NULL, 2, 28, 4, 2, 11, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Muhammad Mehroz', 'Rafia Naz', '2022-03-18 19:44:26', '2023-04-06 19:42:54', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-03-04', 0, 'Shahida Changezi', 'shahida.changezi@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(181, 1350, 'Sadia Iqbal', 'Muhammad Iqbal', '52101-823923533-6', '03242454773', 'sadia336@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-06-27_.23.142857142857_.png', NULL, '2000-09-09', '2022-02-28', 'MADHU GOTH UNIVERSITY ROAD BLOCK 11 GULSHAN-E-IQBAL KARACHI', 'Revenue', '0', 2, NULL, 13, 28, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-03-23 16:02:02', '2022-09-07 10:19:02', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-03-03', 0, 'Sadia Iqbal', 'sadiaiqbal@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(182, 1352, 'Muhammad Asim', 'Muhammad Ahmed Khan', '42101-4222015-5', '0324-966911', 'asim155@bizzworld.com', 'Asim777**', 'rafia.naaz@bizzworld.com_2022-04-14_.11.285714285714_.png', NULL, '2000-12-15', '2022-03-21', 'Olympic tower 408 block 11 gulshan-e-iqbal karahi', 'Revenue', '0', 2, NULL, 2, 28, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-03-23 16:09:43', '2023-04-18 19:36:07', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-03-21', 0, 'Muhammad Asim', 'muhammad.asim@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(183, 1355, 'Zabir Iltoz awar', 'Faiq Iltoz awar', '42101-1468493-3', '0336-3124739', 'zabir933@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-04-14_.21.714285714286_.png', NULL, '2002-02-26', '2022-03-29', 'HOUSE #95, 9TH FLOOR BLOCK E2 SUNNY PRIDE JOHAR KARACHI', 'Revenue', '0', 15, NULL, 2, 79, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-03-30 05:43:36', '2022-05-21 10:49:30', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-03-29', 0, 'Zabir Iltoz awar', 'zabir.Iltoz@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(184, 1356, 'Abdullah Khan', 'Nasir Pervaiz', '42101-7464230-1', '0317-2744125', 'abdullah301@bizzworld.com', 'Abdullah1317@', 'no_image.jpg', NULL, '1998-12-01', '2022-03-29', 'B-16 BLOCK A NORTH NAZIMABAD KARACHI', 'Revenue', '0', 2, NULL, 2, 28, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-03-30 05:46:31', '2022-04-09 04:57:44', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-03-29', 0, 'Abdullah Khan', 'abdullah301@bizzworld.com', 'abdullah301@bizzworld.com', 'abdullah301@bizzworld.com', NULL, NULL, NULL, NULL),
(185, 1357, 'Syed Umer Ali', 'Syed Ather Ali', '42101-0994596-3', '0312-1210840', 'umer963@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1997-03-20', '2022-03-29', 'B164, BLOCK 12 GULISTAN-E-JOHAR KARACHI', 'Revenue', '0', 2, NULL, 2, 28, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-03-30 05:50:45', '2022-04-09 05:03:55', 'New', 'Not Active', NULL, 'Online', NULL, '2022-03-29', 0, 'Syed Umer Ali', 'umer963@bizzworld.com', 'umer963@bizzworld.com', 'umer963@bizzworld.com', NULL, NULL, NULL, NULL),
(186, 1358, 'Taimoor Rafique', 'Rafique Ahmed', '42201-1614085-9', '0317-2176306', 'taimoor859@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1997-12-13', '2022-03-29', 'B6 DUPLEX NAVEED COTTAGES BLOCK 17 JOHAR KARACH', 'Revenue', '0', 2, NULL, 2, 28, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-03-30 05:54:18', '2022-04-09 05:00:52', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-03-29', 0, 'Taimoor Rafique', 'taimoor859@bizzworld.com', 'taimoor859@bizzworld.com', 'taimoor859@bizzworld.com', NULL, NULL, NULL, NULL),
(187, 1359, 'Owais Muhammad Khan', 'Tashkeer Muhammad Khan', '42201-4790125-5', '03158568358', 'owais255@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2000-04-04', '2022-03-29', 'FLAT 202 SHAZMA HEIGHTS BLOCK 12 JOHAR KARACHI', 'Revenue', '0', 2, NULL, 2, 28, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-03-30 05:58:26', '2022-04-09 05:05:50', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-03-29', 0, 'Owais Muhammad Khan', 'owais255@bizzworld.com', 'owais255@bizzworld.com', 'owais255@bizzworld.com', NULL, NULL, NULL, NULL),
(188, 1360, 'Raffay Barlas', 'Iftikhar Barlas', '42301-5060962-7', '0336-2709373', 'raffay627@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1999-08-20', '2022-03-29', 'B414- BLOCK 3 JOHAR KARACHI', 'Revenue', '0', 2, NULL, 2, 28, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-03-30 06:01:00', '2022-04-09 05:06:33', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-03-29', 0, 'Raffay Barlas', 'raffay627@bizzworld.com', 'raffay627@bizzworld.com', 'raffay627@bizzworld.com', NULL, NULL, NULL, NULL),
(189, 1361, 'Syed Muhammad Dawood', 'Syed Fazil Hussain', '42301-7123921-7', '0336-3892005', 'dawood217@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-06-27_.92.428571428571_.png', 'dawood217@bizzworld.com_2022-07-11_.131.85714285714_.jpg', '1999-12-11', '2022-03-29', 'D2/87, BLOCK 2 SUNNY PRIDE JOHAR BLOCK 20 KARACHI', 'Revenue', '0', 2, NULL, 28, 28, 4, 2, 12, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-03-30 06:04:15', '2023-04-06 20:18:37', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-03-28', 1, 'Luke Grey', 'luke.grey@maxdigitizing.com', 'bizzworld@335', 'mail.maxdigitizing.com', NULL, NULL, NULL, 0),
(190, 1362, 'Shahzaib', 'Mohammad Shakeel', '42401-5156755-5', '0332-8286229', 'shahzaib555@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-06-27_.8.2857142857143_.png', NULL, '1995-05-19', '2022-03-03', 'KMC-709, AZIZ NAGAR PHASE 2, SECTOR 11/5 ORANGI TOWN KARACHI', 'Other', '0', 1, NULL, 5, 30, 4, 1, 10, 0, '2022', 'Shahzaib', '284397861', NULL, '0544', 'UBL', NULL, 'Rafia Naz', 'Rafia Naz', '2022-03-30 10:22:47', '2022-12-05 18:01:54', 'New', 'Not Active', NULL, 'Online', NULL, '2022-03-03', 0, 'Shahzaib', 'shahzaib.shakeel@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(191, 1363, 'Abdul Hannan', 'Muhammad Iqbal', '42101-1532004-3', '0343-3398382', 'hannan043@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1999-08-21', '2022-03-03', 'B102, SECTOER 11A NORTH KARACHI', 'Other', '0', 1, NULL, 18, 30, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-03-30 10:26:44', '2022-06-23 08:11:54', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-03-03', 0, 'Abdul Hannan', 'abdul.hannan@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(192, 1364, 'Aqsa Jabbar', 'Abdul Jabbar', '45303-8372829-6', '03368927394', 'aqsa296@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1992-01-24', '2022-03-28', 'karachi', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-01 06:50:47', '2022-09-28 08:27:12', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-03-30', 0, 'Aqsa Jabbar', 'aqsa.jabbar@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(193, 6885, 'RAFAY AHMED KHAN', '-', '-', '-', 'rafayahmedkhan8@gmail.com', 'Rafay890', 'no_image.jpg', NULL, '2022-04-01', '2022-04-01', '-', NULL, '0', 0, NULL, 0, 0, 4, 3, 0, 0, NULL, '-', '-', '-', '-', '-', NULL, '', NULL, NULL, NULL, 'New', 'Not Active', NULL, NULL, NULL, NULL, 0, 'RAFAY AHMED KHAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 1365, 'Afreen Noor', 'Noor Baksh', '52101-7107834-2', '0324-2454773', 'afreen342@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2000-10-01', '2022-03-30', 'MADHU GOTH GULSHAN-E-IQBAL BLOCK 11', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-02 08:04:16', '2022-06-08 10:37:21', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-04-01', 0, 'Afreen Noor', 'afreen.noor@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(195, 1366, 'Zohaib Aslam Nathani', 'Aslam Haider Ali Nthani', '42201-4603583-7', '03353554282', 'zohaib837@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2003-07-29', '2022-04-01', 'FLAT# 169 HASSNABAD APARTMENT BLOCK A NORTH NAZIMABAD KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-02 08:16:05', '2022-06-23 08:12:22', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-04-01', 0, 'Zohaib Aslam Nathani', 'zohaib.aslam@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(196, 1367, 'Muhammad Mohsin Usman', 'Muhammad Usman Lath', '42201-5137896-1', '0306-0289228', 'mohsin961@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-06-24_.50.857142857143_.png', NULL, '1984-08-28', '2022-04-01', 'PLOT # LSC-1 TO 7 BLOCK - 5 GULSHAN-E-IQBAL  KARACHI', 'Revenue', '0', 6, NULL, 31, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-02 08:39:57', '2022-09-07 10:19:15', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-04-01', 0, 'Muhammad Mohsin Usman', 'mohsin.usman@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(197, 1368, 'Muhammad Hasnain', 'Muhammad Jawed', '41304-7909656-7', '0300-9375891', 'hasnain567@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2022-04-04', '2022-04-04', 'karachi', 'Revenue', '0', 1, NULL, 14, 30, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-05 04:35:44', '2022-06-09 10:18:01', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-04-04', 0, 'Muhammad Hasnain', 'muhammad.hasnain@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(198, 1369, 'Sufyan Naeem', 'Naeem Iqbal', '42101-4205998-5', '0300-7851886', 'sufyan985@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2002-02-01', '2022-03-29', 'A278 BLOCK 9 DASTAGIR SOCIETY FB AREA KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-06 06:50:12', '2022-06-08 10:37:40', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-03-29', 0, 'Sufyan Naeem', 'sufyan.naeem@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(199, 1370, 'Muhammad Abdul Wahab', 'Muhammad Abdul Basit', '0', '0315-102792', 'wahab000@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-06-27_.139.14285714286_.png', NULL, '2004-03-02', '2022-04-04', '874 BLOCK 15 FB AREA KARACHI', NULL, '0', 6, NULL, 31, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-06 08:35:46', '2022-09-07 10:19:39', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-04-05', 0, 'Muhammad Abdul Wahab', 'abdul.wahab@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(200, 1371, 'Syed Abdullah Shah', 'Syed Nasir Shah', '0', '0318-0028646', 'abdullah000@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2003-07-11', '2022-04-04', '303, YASEENAABAD KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-06 08:43:55', '2022-06-23 08:12:38', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-04-06', 0, 'Syed Abdullah Shah', 'abdullah.shah@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(201, 1372, 'Hafiz Muhammad Roshaan Agha', 'Rashid Agha', '42201-9160129-9', '0345-3522031', 'roshaan299@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2001-11-15', '2022-04-06', 'FLAT PHASE 1 B/10 SARAH AVENUE GULAZAR-E-HIJRI KARACHI', 'Revenue', '0', 15, NULL, 27, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-06 08:49:50', '2022-07-28 05:01:07', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-04-06', 0, 'Hafiz Muhammad Roshaan Agha', 'hafiz.roshaan@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(202, 1373, 'Rana Mubashir Ahmad', 'Manzoor Ahmad', '31304-5345791-7', '0303-153364303', 'rana917@bizzworld.com', 'Rana@7831', 'rafia.naaz@bizzworld.com_2022-06-24_.64.142857142857_.png', NULL, '1999-11-09', '2022-04-01', 'sk-182 pib colony karachi near by Faizan-e- Madina', 'Revenue', '0', 6, NULL, 31, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-06 08:57:57', '2022-07-28 04:51:53', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-04-01', 0, 'Rana Mubashir Ahmad', 'mubashir.ahmed@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(203, 1374, 'Sana Saleem', 'Saleem Dhanhani', '42101-3087409-4', '0348-2956895', 'sana094@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-06-27_.93.285714285714_.png', NULL, '1999-08-03', '2022-04-06', 'FLAT F/12, BLOCK 7, FB AREA KARACHI', 'Revenue', '0', 15, NULL, 31, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-08 07:50:22', '2022-09-28 08:27:36', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-04-06', 0, 'Sana Saleem', 'sana.saleem@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(204, 1380, 'Rafay Ahmed Khan', 'Rashid Ahmed khan', '42401-7730787-7', '0317-1191935', 'rafay877@bizzworld.com', 'Rafay890', 'rafia.naaz@bizzworld.com_2022-06-24_.27_.png', NULL, '2002-01-07', '2022-04-01', 'HOUSE #604, SECTOR 10/A ORANGI TOWN KARACHI', 'Revenue', '0', 6, NULL, 31, 1, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-09 07:00:54', '2022-12-07 21:39:35', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-04-01', 0, 'Rafay Ahmed Khan', 'rafay.khan@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(205, 1381, 'Zohaib Ashraf', 'Muhammad Ashraf', '42301-0520576-7', '0336-3608313', 'zohaib767@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1999-10-10', '2022-04-05', 'HOUSE #197 BLOCK W, POLICE HEAD QUARTER KARACHI', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-09 07:04:19', '2022-09-28 08:28:11', 'New', 'Not Active', NULL, 'Online', NULL, '2022-04-08', 0, 'Zohaib Ashraf', 'zohaib.ashraf@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(206, 1375, 'Dua Shahid Siddiqui', 'Shahid Ahmed Siddiqui', '42101-1201250-2', '0336-3924186', 'dua502@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-06-24_.69.857142857143_.png', NULL, '2003-04-15', '2022-04-04', 'HOUSE #R171, 1ST FLOOR LAL SHAHBAAZ NAGAR FB AREA BLOCK 9', 'Revenue', '0', 15, NULL, 31, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-09 07:22:23', '2022-09-28 08:28:31', 'New', 'Not Active', NULL, 'Online', NULL, '2022-04-04', 0, 'Dua Shahid Siddiqui', 'dua.shahididdiqui@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(207, 1376, 'Muhammad Mayel Khan', 'Muhammad Ahmed Khan', '0', '0324-2966911', 'mayel000@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-06-24_.113.71428571429_.png', NULL, '2004-12-15', '2022-03-31', 'HOUSE #405, OLYMPIC TOWER GULSHAN-E-IQBAL BLOCK 11 KARACHI', 'Revenue', '0', 2, NULL, 2, 28, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-16 05:05:16', '2023-04-18 19:36:52', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-03-31', 0, 'Muhammad Mayel Khan', 'mayel.khan@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(208, 1377, 'Muhammad Umais Sabir', 'Muhammad Sabir', '42201-8493049-7', '0315-0282221', 'umais497@bizzworld.com', 'Umais03150282221', 'umais497@bizzworld.com_2022-07-28_.46.428571428571_.png', NULL, '1999-06-15', '2022-04-18', 'PLOT 124, FLAT 301, 3RD FLOOR PIB COLONY KARACHI', 'Revenue', '0', 15, NULL, 7, 79, 3, 1, 2, 5, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-19 05:22:07', '2022-09-28 09:01:24', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-04-19', 0, 'Muhammad Umais Sabir', 'umais.sabir@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(209, 1378, 'Nida Khan', 'Saleem Akhtar', '42201-5844175-2', '0337-2108729', 'nida752@bizzworld.com', 'Nidakhan@12345', 'rafia.naaz@bizzworld.com_2022-06-24_.24.428571428571_.png', NULL, '2003-01-31', '2022-04-18', 'HOUSE #1156 E PIB COLONY KARACHI', 'Revenue', '0', 15, NULL, 31, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-19 06:50:07', '2022-09-28 08:29:22', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-04-19', 0, 'Nida Khan', 'nida.khan@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(210, 1384, 'Bushra', 'Khalid Ahmed', '45201-5551659-4', '0345-0199804', 'bushra594@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-06-27_.85.857142857143_.png', NULL, '1999-03-05', '2022-04-20', 'ALPINE TOWER B-605 GULISTAN-E-JOHAR BLOCK 10 KARACHI', 'Revenue', '0', 15, NULL, 31, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-23 06:42:10', '2022-09-28 08:29:43', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-04-21', 0, 'Bushra', 'bushra.khalid@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(211, 1383, 'Zainab Qayoom', 'Abdul Qayoom', '42201-9136109-0', '0', 'zainab090@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1997-02-11', '2022-04-20', 'ALPINE TOWER B-605 GULISTAN-E-JOHAR BLOCK 10 KARACHI', 'Revenue', '0', 15, NULL, 31, 208, 4, 1, 0, 0, '2022', 'Zainab', NULL, 'PK46UNIL0109000284853071', 'Gulistan-e-johar unique classis block 15', 'UBL', NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-23 06:49:56', '2022-09-28 08:29:57', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-04-21', 0, 'Zainab Qayoom', 'zainab.qayoom@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(212, 1385, 'Naintara', 'Khalid Ahmed', '45201-6071144-2', '0', 'naintara442@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-06-28_.34.285714285714_.png', NULL, '1998-03-11', '2022-04-20', 'ALPINE TOWER B-605 GULISTAN-E-JOHAR BLOCK 10 KARACHI', 'Revenue', '0', 15, NULL, 31, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-23 06:58:04', '2022-09-28 08:30:23', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-04-21', 0, 'Naintara', 'nain.tara@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(213, 1386, 'Nida Kalsoom', 'Abdul Qayoom', '42201-6198707-2', '0', 'nida072@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1998-04-07', '2022-04-20', 'ALPINE TOWER B-605 GULISTAN-E-JOHAR BLOCK 10 KARACHI', 'Revenue', '0', 15, NULL, 31, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-04-23 07:01:09', '2022-09-28 08:30:41', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-04-21', 0, 'Nida Kalsoom', 'nida.kalsoom@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(214, 1387, 'Waqas Shakir', 'Muhammad Shakir', '42201-2707930-7', '0310-0027445', 'waqasa307@bizzworld.com', 'Serverwork@@12', 'muhammad.mehroz@bizzworld.com_2023-01-19_.40.285714285714_.jpg', NULL, '1996-01-12', '2022-04-04', 'PECHS BLOCK 6 HOUSE #265-J KARACHI', 'Revenue', '0', 4, NULL, 4, 28, 4, 2, 12, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Muhammad Mehroz', 'Rafia Naz', '2022-04-23 07:36:48', '2022-09-06 11:54:21', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-04-04', 0, 'Waqas Shakir', 'waqas.shakir@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(215, 1388, 'Fahad Ahmed Siddiqui', 'Farough Ahmed Siddiqui', '42201-1580708-9', '0', 'fahad089@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-06-24_.13.285714285714_.png', NULL, '1992-06-19', '2022-04-18', '0', 'Revenue', '0', 6, NULL, 2, 79, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-05-11 05:57:15', '2022-07-28 04:52:27', 'New', 'Not Active', NULL, NULL, NULL, '2022-04-25', 0, 'Fahad Ahmed Siddiqui', 'fahad.siddiqui@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(216, 1389, 'Osija Zaidi', '0', '0', '0', 'osija000@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2002-03-06', '2022-03-24', '0', 'Revenue', '0', 6, NULL, 2, 79, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-05-11 06:02:34', '2022-06-23 08:13:02', 'New', 'Not Active', NULL, NULL, NULL, '2022-04-30', 0, 'Osija Zaidi', 'osija.zaidi@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(217, 1390, 'Saad Memom', 'Humair', '42401-8841384-1', '0', 'saad841@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2003-03-13', '2022-04-06', '0', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-05-11 06:08:41', '2022-06-25 06:19:18', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-05-13', 0, 'Saad Memom', 'saad.memom@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, NULL),
(218, 3051, 'Syed Aashir Hasan', 'Syed Riaz ul Hasan', '42101-3930982-5', '0324-3289540', 'hassanaashir3@gmail.com', 'Cancer2000', 'no_image.jpg', NULL, '2022-06-02', '2022-06-02', 'House NO. 781, Block No. 2, Azizabad, Karachii.', NULL, '0', 0, NULL, 0, 0, 4, 3, 0, 0, NULL, '-', '-', '-', '-', '-', NULL, '', NULL, NULL, NULL, 'New', 'Not Active', NULL, NULL, NULL, NULL, 0, 'Syed Aashir Hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 1391, 'S M Arshian Ashrafi', 'S M Sohail Ashrafi', '42201-3331402-3', '0314-2574757', 'arshian023@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-06-24_.127.14285714286_.png', NULL, '2000-10-04', '2022-05-12', 'Flat #D-14, nighat square FB AREA BLOCK 7 KARACHI', 'Revenue', '0', 17, NULL, 2, 51, 4, 2, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-06-08 09:13:28', '2023-03-07 20:52:42', 'New', 'Not Active', NULL, 'Online', NULL, '2022-05-23', 0, NULL, 'arshian023@bizzworld.com', 'arshian023@bizzworld.com', 'arshian023@bizzworld.com', NULL, NULL, NULL, 0),
(220, 1393, 'Syed Aashir Hasan', 'Syed Riaz Ul Hasan', '42101-3930982-5', '0324-3289540', 'aashir825@bizzworld.com', 'Cancer2000', 'rafia.naaz@bizzworld.com_2022-06-27_.34.285714285714_.png', NULL, '2000-07-05', '2022-05-18', 'PLOT R 781, BLOCK 02, AZIZABAD FB AREA', 'Revenue', '0', 17, NULL, 2, 51, 4, 2, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-06-09 07:05:15', '2023-03-07 20:53:14', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-05-18', 0, NULL, 'aashir825@bizzworld.com', '123', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(221, 1394, 'Syed Shahvaiz Raza', 'Syed Mazhar Shah', '42101-5144377-7', '0313-8824744', 'shahvaiz777@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2006-07-11', '2022-06-07', 'karachi', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-06-09 07:18:49', '2022-07-28 05:01:35', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-06-28', 0, NULL, 'shahvaiz777@bizzworld.com', 'shahvaiz777@bizzworld.com', 'shahvaiz777@bizzworld.com', NULL, NULL, NULL, NULL),
(222, 1395, 'Ajazz Ahmed', 'Waheed Ahmed', '21708-6438121-9', '0317-2906580', 'ajazz219@bizzworld.com', 'Bizxworld@3', 'rafia.naaz@bizzworld.com_2022-06-24_.38_.png', NULL, '2001-05-09', '2022-06-01', 'PLOT A 224, BLOCK A SCEME GADAP KHADIM HUSSAIN SOLANGI  GOTH PMT 1 GADAP KARACHI', 'Revenue', '0', 7, NULL, 13, 79, 4, 2, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-06-09 07:40:10', '2023-03-07 22:38:12', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-06-09', 0, NULL, 'ajazz219@bizzworld.com', 'ajazz219@bizzworld.com', 'ajazz219@bizzworld.com', NULL, NULL, NULL, 0),
(223, 1398, 'Muhammad Mohsin Khan', 'Muhammad Masood Khan', '42101-5488465-5', '0311-1094335', 'mohsin655@bizzworld.com', 'bizz@1', 'muhammad.mehroz@bizzworld.com_2023-01-19_.45.428571428571_.jpg', NULL, '1997-08-06', '2022-06-01', 'HOUSE # 146A, BLOCK A SAIMA ARABIAN VILLAS SURJANI TWON KARACHI', 'Other', '0', 1, NULL, 11, 30, 4, 2, 12, 0, '2022', 'Muhammad Mohsin Khan', '1779286739591', NULL, '1779', 'UBL', NULL, 'Muhammad Mehroz', 'Rafia Naz', '2022-06-09 09:51:25', '2023-01-02 20:40:33', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-06-01', 0, NULL, 'mohsin.khan@bizzworldcommunications.com', 'mohsin.khan@bizzworldcommunications.com', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(224, 1397, 'Muhammad Yasir Saleem', 'Muhammad Saleem', '42101-5436238-5', '0315-6170918', 'yasir385@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2022-06-27_.87.714285714286_.png', NULL, '1990-10-25', '2022-05-20', 'PLOT 159, SECT L1 SURJANI TOWN KARACHI', 'Other', '0', 2, NULL, 14, 28, 4, 2, 12, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-06-09 10:04:27', '2023-03-07 22:38:42', 'New', 'Not Active', NULL, 'Online', NULL, '2022-05-20', 0, NULL, 'yasir.saleem@bizzworldcommunications.com', 'bizzworld@335', 'mail.bizzworldcommunications.com', NULL, NULL, NULL, 0),
(225, 1396, 'Zartash Fatima', 'Muhammad Khalid', '42501-8947472-0', '0315-1239771', 'zartash720@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1977-04-22', '2022-05-30', 'SURVEY #75 & 113 SCHEME -33 CASTLE SECTOR 14-B SOHRAB GOTH KARACHI', 'Revenue', '0', 2, NULL, 2, 28, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-06-09 10:15:24', '2022-06-23 08:10:23', 'New', 'Not Active', NULL, 'Online', NULL, '2022-06-08', 0, NULL, 'zartash720@bizzworld.com', 'zartash720@bizzworld.com', 'zartash720@bizzworld.com', NULL, NULL, NULL, NULL),
(226, 1399, 'hassan', 'Muneer', '0', '0', 'hasan000@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2000-03-02', '2022-04-01', '0', 'Other', '0', 1, NULL, 6, 30, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-06-11 06:02:48', '2022-07-28 04:55:18', 'New', 'Not Active', NULL, NULL, NULL, '2021-11-01', 0, NULL, 'hasan000@bizzworld.com', 'hasan000@bizzworld.com', 'hasan000@bizzworld.com', NULL, NULL, NULL, NULL),
(227, 5, 'Muhammad Irshad', '0', '42101-0718238-7', '0', 'salman000@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1977-02-02', '2023-02-17', '0', 'Other', '0', 8, NULL, 22, 80, 4, 2, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-06-11 06:13:03', '2023-03-03 19:33:53', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-07-01', 0, NULL, 'salman000@bizzworld.com', 'salman000@bizzworld.com', 'salman000@bizzworld.com', NULL, NULL, NULL, 0),
(228, 6, 'sadiq', '0', '0', '0', 'sadiq000@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1977-02-01', '2022-03-01', '0', 'Other', '8050', 8, NULL, 21, 80, 4, 2, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-06-11 06:16:26', '2022-06-25 06:02:47', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-03-02', 0, NULL, 'sadiq000@bizzworld.com', 'sadiq000@bizzworld.com', 'sadiq000@bizzworld.com', NULL, NULL, NULL, NULL),
(229, 7, 'Zaid', '0', '0', '0', 'zaid000@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1978-06-21', '2021-12-01', '0', 'Revenue', '0', 8, NULL, 22, 80, 4, 1, 0, 0, '2022', 'Zaid Ali Shaikh', '562699', NULL, NULL, 'JSs Bank', NULL, 'Rafia Naz', 'Rafia Naz', '2022-06-11 06:18:58', '2022-09-28 08:31:39', 'New', 'Not Active', NULL, NULL, NULL, '2022-03-01', 0, NULL, 'zaid000@bizzworld.com', 'zaid000@bizzworld.com', 'zaid000@bizzworld.com', NULL, NULL, NULL, 0),
(230, 1400, 'Raees Muhammad Waqas', 'Muhammad Abbas', '42101-1495651-5', '03002045944', 'waqas515@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2005-06-19', '2022-05-25', 'A110 Railway Colony Dastagir Fb Area Block 15 Near Malik Sweet Yaseenabad Karachi', 'Revenue', '0', 15, NULL, 13, 208, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-06-18 05:47:58', '2022-07-28 05:01:49', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-06-01', 0, NULL, 'waqas515@bizzworld.com', 'waqas515@bizzworld.com', 'waqas515@bizzworld.com', NULL, NULL, NULL, NULL),
(231, 1401, 'Hafiz Muhammad Nauman Ghayyur', 'Abdul Ghayyur', '42101-9048204-7', '0314-2264708', 'nauman047@bizzworld.com', 'bizz@1', 'muhammad.mehroz@bizzworld.com_2022-11-17_.38.142857142857_.png', NULL, '1996-11-20', '2022-07-01', 'R-294, SECTOR 15A-4 BUFFERZONE KARACHI', 'Other', '1003', 1, NULL, 33, 30, 4, 2, 11, 0, '2022', 'Hafiz Muhammad Nuaman Ghayyur', '1779288812584', NULL, '1779', NULL, NULL, 'Muhammad Mehroz', 'Rafia Naz', '2022-08-04 10:10:20', '2023-02-27 17:23:12', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-07-01', 0, NULL, 'nauman047@bizzworld.com', 'nauman047@bizzworld.com', 'nauman047@bizzworld.com', NULL, NULL, NULL, 1003),
(232, 1402, 'Muhammad Haris Saleem', 'Saleem Ahmed Khan', '42101-1078671-5', '0311-1771909', 'haris715@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2004-10-31', '2022-07-16', 'HOUSE # A/22/23/1 1ST FLOOR MUHAMMADI COLONY BLOCK/8 FB AREA KARACHI', 'Revenue', '0', 2, NULL, 2, 28, 4, 1, 4, 4, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-09-10 05:07:23', '2022-09-28 09:00:42', 'New', 'Not Active', NULL, NULL, NULL, '2022-08-29', 0, NULL, 'haris715@bizzworld.com', 'haris715@bizzworld.com', 'haris715@bizzworld.com', NULL, NULL, NULL, 0),
(233, 1403, 'Waqas Ahmed', 'Muhammad Ismail', '42201-7875391-5', '0306-2830949', 'waqas915@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2023-03-04_.21_.jpg', NULL, '2005-11-01', '2022-08-18', 'FLAT C/17, EASTERN APARTMENT BLOCK 6 GULSHAN-E-IQBAL KARACHI', 'Revenue', '0', 2, NULL, 2, 28, 4, 2, 6, 6, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-09-28 09:43:02', '2023-04-06 18:52:20', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-09-05', 0, NULL, 'waqas915@bizzworld.com', 'waqas915@bizzworld.com', 'waqas915@bizzworld.com', 'No', NULL, NULL, 0),
(234, 1406, 'Faryal Naz', '0', '0', '0', 'recruiter2022@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1997-02-01', '2022-10-01', 'Gulshan-e-Iqbal Block 6', 'Other', '0', 5, NULL, 9, 27, 4, 1, 5, 5, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-10-04 05:38:38', '2023-04-18 19:37:31', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-10-01', 0, NULL, 'recruiter2022@bizzworld.com', 'recruiter2022@bizzworld.com', 'recruiter2022@bizzworld.com', 'No', NULL, NULL, 0),
(235, 1407, 'Huzaifa Ahmed', 'Iftikhar Ahmed', '42101-8725405-1', '0310-2361818', 'huzaifa051@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2001-06-06', '2022-09-19', 'House # B-18 Sector 11-A North karachi\r\n\r\n\r\n\r\n\r\n\r\nType a message', 'Other', '0', 1, NULL, 18, 30, 4, 1, 3, 3, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Muhammad Mehroz', 'Rafia Naz', '2022-10-12 06:08:04', '2023-03-02 18:55:30', 'New', 'Not Active', NULL, NULL, NULL, '2022-09-19', 0, NULL, 'muhammad.HUZAIFA@bizzworld.com', 'muhammad.HUZAIFA@bizzworld.com', 'muhammad.HUZAIFA@bizzworld.com', 'No', NULL, NULL, 0),
(236, 1404, 'SADIA YAQOOB', 'MUHAMMAD YAQOOB', '42201-3441368-6', '03323055420', 'sadia686@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2000-08-09', '2022-10-01', 'House no. A151, block 5, Gulshan-e-Iqbal', 'Sales', '0', 9, NULL, 13, 27, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Faryal Naz', '2022-11-16 07:31:44', '2023-01-11 19:51:19', 'New', 'Not Active', NULL, NULL, NULL, '2022-10-01', 0, NULL, 'sadia686@bizzworld.com', 'sadia686@bizzworld.com', 'sadia686@bizzworld.com', 'No', NULL, NULL, 0),
(237, 1409, 'Muhammad Yasir Khan', 'Muhammad Nasir  Khan', '42101-3013636-7', '0345-2465817', 'yasir367@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2023-03-04_.26.285714285714_.jpg', NULL, '1988-11-19', '2022-11-14', 'R-501, 15A/5 Bufferzone Karachi', 'Revenue', '0', 1, NULL, 2, 30, 4, 2, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-12-02 19:54:00', '2023-03-07 22:42:29', 'New', 'Not Active', NULL, 'Offline', NULL, '2022-12-01', 0, NULL, 'yasir367@bizzworld.com', 'yasir367@bizzworld.com', 'yasir367@bizzworld.com', 'No', NULL, NULL, 0),
(238, 1410, 'hamdan', 'Arif Jameel Ahmed', '0', '0330-8319179', 'hamdan000@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2023-03-07_.103.42857142857_.png', NULL, '2007-06-08', '2022-11-01', 'House # 85 - Block E2, Sunny pride gulistan-e-johar Karachi', 'Other', '1003', 17, NULL, 2, 51, 4, 2, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-12-07 21:23:43', '2023-03-07 22:28:00', 'New', 'Not Active', NULL, 'Online', NULL, '2022-11-01', 0, NULL, 'hamdan000@bizzworld.com', 'hamdan000@bizzworld.com', 'hamdan000@bizzworld.com', 'No', NULL, NULL, 1003),
(239, 1411, 'Muneeb', '0', '0', '0344-2142708', 'muneeb000@bizzworld.com', 'Banned8885', 'no_image.jpg', NULL, '2022-12-09', '2022-11-04', '0', NULL, '0', 17, NULL, 2, 2, 4, 1, 0, 0, '2022', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2022-12-09 18:17:54', '2023-03-03 19:43:16', 'New', 'Not Active', NULL, 'Online', NULL, '2022-11-15', 0, NULL, 'muneeb000@bizzworld.com', 'muneeb000@bizzworld.com', 'muneeb000@bizzworld.com', 'No', NULL, NULL, 0),
(240, 1412, 'Roohan Ullah Khan', 'Irfan Ullah Khan', '42101-0127083-9', '0333-3708952', 'roohan839@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2000-07-01', '2023-01-12', 'KARACHI', 'Other', '8043', 17, NULL, 35, 79, 4, 2, 6, 6, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2023-02-08 19:17:34', '2023-02-08 19:29:40', 'New', 'Not Active', NULL, 'Offline', NULL, '2023-01-12', 0, NULL, 'roohan839@bizzworld.com', '0', '0', 'No', NULL, NULL, 8043),
(241, 1414, 'Wajiha Afzal', 'Syed Afzal Hussain', '42101-7298609-4', '+923013382445', 'wajiha094@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2023-03-07_.142.14285714286_.jpg', NULL, '2004-11-09', '2023-03-01', NULL, 'Other', '0000', 2, NULL, 12, 37, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Faryal Naz', '2023-03-03 18:40:42', '2023-04-04 22:24:12', 'New', 'Not Active', NULL, 'Offline', NULL, '2023-03-01', 0, NULL, 'wajiha094@bizzworld.com', 'wajiha094@bizzworld.com', 'wajiha094@bizzworld.com', 'No', NULL, NULL, 0),
(242, 1413, 'Hammad Ali Khan', 'Wajid Ali Khan', '42101-2247946-7', '+923212446449', 'hammad467@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1989-09-19', '2023-03-04', NULL, 'Other', '0000', 2, NULL, 2, 28, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Faryal Naz', '2023-03-03 19:25:56', '2023-04-06 21:57:17', 'New', 'Not Active', NULL, 'Offline', NULL, '2023-03-01', 0, NULL, 'hammad467@bizzworld.com', 'hammad467@bizzworld.com', 'hammad467@bizzworld.com', 'No', NULL, NULL, 0),
(243, 1418, 'Qamber Abbas', 'Shaikh Akhter Hussain', '42000-1378218-5', '+923342629081', 'qamber185@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1995-05-30', '2023-02-22', NULL, 'Other', '0000', 19, NULL, 25, 81, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Faryal Naz', '2023-03-03 19:38:27', '2023-03-20 20:13:40', 'New', 'Not Active', NULL, 'Offline', NULL, '2023-03-01', 0, NULL, 'qamber185@bizzworld.com', 'qamber185@bizzworld.com', 'qamber185@bizzworld.com', 'No', NULL, NULL, 0),
(244, 1415, 'ARIBA JAVAID', 'MUHAMMAD JAVAID ALAM', '42101-4991190-2', '+923182319474', 'ariba902@bizzworld.com', 'bizz@1', 'rafia.naaz@bizzworld.com_2023-03-07_.5_.jpg', NULL, '2004-09-17', '2023-03-01', NULL, 'Other', '0000', 17, NULL, 10, 79, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Faryal Naz', '2023-03-03 19:45:59', '2023-04-03 19:15:08', 'New', 'Not Active', NULL, 'Offline', NULL, '2023-03-01', 0, NULL, 'ariba902@bizzworld.com', 'ariba902@bizzworld.com', 'ariba902@bizzworld.com', 'No', NULL, NULL, 0),
(245, 1416, 'RAHEEL HUSSAIN KHAN', 'MUHAMMAD FAHEEM KHAN', '42101-3100133-9', '+923492195056', 'raheel339@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1996-09-28', '2023-03-02', NULL, 'Other', '0000', 17, NULL, 5, 79, 4, 1, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Faryal Naz', '2023-03-03 19:52:02', '2023-03-31 22:15:43', 'New', 'Not Active', NULL, 'Offline', NULL, '2023-03-03', 0, NULL, 'raheel339@bizzworld.com', 'raheel339@bizzworld.com', 'raheel339@bizzworld.com', 'No', NULL, NULL, 0),
(246, 1417, 'MUHAMMAD MOIZ UDDIN', 'MUHAMMAD INTISAR UDDIN', '42000-0556442-5', '+923462123882', 'moiz425@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1998-02-25', '2023-02-14', NULL, 'Other', '0000', 1, NULL, 5, 30, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Muhammad Mehroz', 'Faryal Naz', '2023-03-03 19:59:18', '2023-04-05 19:59:52', 'New', 'Not Active', NULL, 'Offline', NULL, '2023-02-14', 0, NULL, 'moiz425@bizzworld.com', 'moiz425@bizzworld.com', 'moiz425@bizzworld.com', 'No', NULL, NULL, 0),
(247, 3528, 'Wajiha afzal', 'Wajiha', '123456789', '0123-1234567', '000wajiha.afzal@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '01-01-2023', '2023-03-09', 'karachi', NULL, '0', 0, NULL, 0, 0, 4, 3, 0, 0, NULL, '-', '-', '-', '-', '-', NULL, '', '1', NULL, NULL, 'New', 'Not Active', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 1991, 'Hammad Ali', 'Hammad', '123456789', '0123-1234567', '000hammad.ali@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '01-01-2023', '2023-03-09', 'karachi', NULL, '0', 0, NULL, 0, 0, 4, 3, 0, 0, NULL, '-', '-', '-', '-', '-', NULL, '', '1', NULL, NULL, 'New', 'Not Active', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 1431, 'MUHAMMAD SHARIQ ASHRAFI', 'MUHAMMAD TARIQ ASHRAFI', '42401-4524576-5', '+923343649041', 'shariq765@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1991-08-12', '2023-03-09', 'R-02/6 block-b safoora sector 35A Al Hira new city scheme 33 karachi', 'Sales', '0000', 17, NULL, 2, 51, 4, 1, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Faryal Naz', '2023-03-09 19:00:51', '2023-04-18 19:37:50', 'New', 'Not Active', NULL, 'Online', NULL, '2023-03-09', 0, NULL, 'shariq765@bizzworld.com', 'shariq765@bizzworld.com', 'shariq765@bizzworld.com', 'No', NULL, NULL, 0),
(250, 1432, 'SHEIKH MUHAMMAD HUZAIFA ASHRAFI', 'SHEIKH MUHAMMAD SOHAIL ASHRAFI', '42201-2767672-9', '+923302240426', 'huzaifa729@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2004-10-23', '2023-03-09', NULL, 'Sales', '0000', 17, NULL, 2, 51, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Faryal Naz', '2023-03-09 19:41:16', '2023-04-07 19:15:58', 'New', 'Not Active', NULL, 'Offline', NULL, '2023-03-09', 0, NULL, 'huzaifa729@bizzworld.com', 'huzaifa729@bizzworld.com', 'huzaifa729@bizzworld.com', 'No', NULL, NULL, 0),
(251, 1428, 'Syed Mahad Ali', 'Syed Shujjat Hussain', '42101-3864945-3', '+92 318 2093966', 'mahad453@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2000-07-07', '2023-02-27', '-', 'Sales', '0000', 17, NULL, 2, 51, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Faryal Naz', '2023-03-29 19:14:38', '2023-04-04 22:20:52', 'New', 'Not Active', NULL, 'Online', NULL, '2023-01-06', 0, NULL, 'mahad453@bizzworld.com', 'mahad453@bizzworld.com', 'mahad453@bizzworld.com', 'No', NULL, NULL, 0),
(252, 1429, 'Muhammad Nameer Khan', 'Muhammad Irfan Khan', '42101-0312694-5', '+92 334 2532076', 'nameer945@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2002-11-06', '2023-03-01', NULL, 'Sales', '0000', 17, NULL, 2, 51, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Faryal Naz', '2023-03-29 19:18:07', '2023-04-04 22:23:16', 'New', 'Not Active', NULL, 'Offline', NULL, '2023-03-01', 0, NULL, 'nameer945@bizzworld.com', 'nameer945@bizzworld.com', 'nameer945@bizzworld.com', 'No', NULL, NULL, 0),
(253, 1424, 'Abad Fawad', 'Fawad', '42201-3001301-9', '+92 317 2627464', 'abad019@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2004-05-21', '2023-03-13', NULL, 'Sales', '0000', 17, NULL, 2, 51, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Faryal Naz', '2023-03-29 19:23:03', '2023-04-04 22:14:14', 'New', 'Not Active', NULL, 'Offline', NULL, '2023-03-20', 0, NULL, 'abad019@bizzworld.com', 'abad019@bizzworld.com', 'abad019@bizzworld.com', 'No', NULL, NULL, 0),
(254, 1427, 'Muhammad Areeb Qazi', 'Muhammad Zubair Qazi', '42101-6333151-7', '+92 318 2351064', 'areeb517@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2003-11-22', '2023-03-13', NULL, 'Sales', '0000', 17, NULL, 2, 51, 4, 1, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Faryal Naz', '2023-03-29 19:29:17', '2023-04-18 19:38:44', 'New', 'Not Active', NULL, 'Online', NULL, '2023-03-20', 0, NULL, 'areeb517@bizzworld.com', 'areeb517@bizzworld.com', 'areeb517@bizzworld.com', 'No', NULL, NULL, 0),
(255, 1430, 'Umer Zahid', 'Zahid Hussain', '42101-6092429-1', '+92 334 2995352', 'umar291@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2004-12-13', '2023-03-13', NULL, 'Sales', '0000', 17, NULL, 2, 51, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Faryal Naz', '2023-03-29 19:34:00', '2023-04-07 19:49:13', 'New', 'Not Active', NULL, 'Online', NULL, '2023-03-13', 0, NULL, 'umar291@bizzworld.com', 'umar291@bizzworld.com', 'umar291@bizzworld.com', 'No', NULL, NULL, 0),
(256, 1422, 'Syed Muhammad Ali', 'Syed Muzaffar Ali', '42101-1662892-5', '+92 335 2062370', 'ali925@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1998-07-31', '2023-03-10', NULL, 'Sales', '0000', 17, NULL, 2, 51, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Faryal Naz', '2023-03-31 18:25:28', '2023-04-04 22:16:28', 'New', 'Not Active', NULL, 'Online', NULL, '2023-03-17', 0, NULL, 'ali925@bizzworld.com', 'ali925@bizzworld.com', 'ali925@bizzworld.com', 'No', NULL, NULL, 0),
(257, 1421, 'Muhammad Talha Paryal', 'Muhammad Paryal', '42101-7022953-1', '+92 322 1767633', 'talha531@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2023-03-31', '2023-03-01', NULL, 'Sales', '0000', 17, NULL, 2, 51, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Faryal Naz', '2023-03-31 18:36:17', '2023-04-04 22:22:20', 'New', 'Not Active', NULL, 'Online', NULL, '2023-03-09', 0, NULL, 'talha531@bizzworld.com', 'talha531@bizzworld.com', 'talha531@bizzworld.com', 'No', NULL, NULL, 0),
(258, 8, 'Adnan Iqbal', 'Muhammad Iqbal Sabir', '36602-6830933-7', '0', 'adnan337@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2023-04-03', '2023-02-22', 'Karachi', 'Other', '8050', 8, NULL, 21, 27, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2023-04-03 17:21:34', '2023-04-03 17:21:34', 'New', 'Not Active', NULL, NULL, NULL, '2023-02-22', 0, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL),
(259, 1426, 'Hanzila Hayat Qazi', 'Tatheer Hayat Qazi', '42101-2573049-1', '0', 'hanzila491@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2001-07-25', '2023-02-27', 'Karachi', 'Revenue', '0', 17, NULL, 2, 51, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2023-04-03 17:48:05', '2023-04-07 19:14:46', 'New', 'Not Active', NULL, 'Online', NULL, '2023-03-06', 0, NULL, 'hanzila491@bizzworld.com', 'hanzila491@bizzworld.com', 'hanzila491@bizzworld.com', 'No', NULL, NULL, 0),
(260, 1425, 'Ambia Ali Khan', 'Muhammad Akhter Khan', '41302-9422423-1', '0', 'ambia231@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2007-03-12', '2023-03-01', 'Karachi', 'Revenue', '0', 17, NULL, 2, 51, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2023-04-03 17:57:44', '2023-04-07 19:11:43', 'New', 'Not Active', NULL, 'Online', NULL, '2023-03-01', 0, NULL, 'ambia231@bizzworld.com', 'ambia231@bizzworld.com', 'ambia231@bizzworld.com', 'No', NULL, NULL, 0),
(261, 1433, 'Ehtesham Rafi', 'Rafi Ahmed', '42000-4264824-3', '0', 'ehtesham243@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1994-10-14', '2023-04-03', 'FLAT # A 1/4, PLOT FL 4, BLOCK - 2, (MAYMAR APPT) GULSHAN-E-IQBAL KARACHI', NULL, '0', 19, NULL, 2, 81, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2023-04-12 19:20:45', '2023-04-12 19:20:45', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL),
(262, 1434, 'Murtaza Ali Khilji', 'Ahmad Ehtesham Ul Haq', '31202-7949841-9', '0', 'murtaza419@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2003-05-09', '2023-04-07', 'PLOT # R - 71, BLOCK # 6, ALI MUHAMMAD IQBAL GOTH GULSHAN-E-IQBAL KARACHI', 'Revenue', '0', 17, NULL, 2, 51, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2023-04-12 19:27:08', '2023-04-12 19:27:08', 'New', 'Not Active', NULL, NULL, NULL, '2023-04-10', 0, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL),
(263, 1435, 'Muhammad Uzair Alam', 'Muhammad Ashfaq Alam', '42201-3170750-3', '0316-8069674', 'uzair503@bizzworld.com', 'Uzair0342', 'no_image.jpg', NULL, '2004-03-11', '2023-04-07', 'B-60, S.NO-130 TAJ CENTER DEH DRIGH SHAH DEH DRIGH SHAH FAISAL COLONY KARACHI', NULL, '0', 19, NULL, 2, 81, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2023-04-12 19:33:10', '2023-04-12 19:33:11', 'New', 'Not Active', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL),
(264, 1436, 'Muhammad Abu Bakar Ali', 'Ashfaq Ali', '42201-3779817-9', '0', 'ali179@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2001-01-20', '2023-04-11', '0', NULL, '0', 19, NULL, 2, 81, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2023-04-12 19:38:14', '2023-04-12 19:38:14', 'New', 'Not Active', NULL, 'Offline', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL),
(265, 1437, 'Muhammad Irfan Khan', 'Muhammad Masood Khan', '42101-5489510-5', '0', 'irfan105@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1995-10-22', '2023-04-05', 'HOUSE # 116A, BLOCK A, SAIMA ARABIAN VILLAS, SURJANI TOWN KARACHI', NULL, '0', 17, NULL, 2, 51, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2023-04-12 21:08:04', '2023-04-12 21:08:04', 'New', 'Not Active', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL),
(266, 1438, 'Danish Hussain', 'Manzoor Hussain', '42201-7222477-7', '0', 'danish777@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '2004-05-12', '2023-04-03', 'karachi', 'Revenue', '0', 19, NULL, 2, 81, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2023-04-17 19:05:34', '2023-04-17 19:05:34', 'New', 'Not Active', NULL, NULL, NULL, '2023-04-10', 0, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL),
(267, 1439, 'Umair Ahmed', 'Abdullah', '71303-0342370-3', '0', 'umair703@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1999-12-25', '2023-04-03', 'P# 1382 - B, STRT # 15, L.A.C II, MEHMOODABAD  6, KARACHI', 'Revenue', '0', 19, NULL, 2, 81, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2023-04-17 19:12:50', '2023-04-17 19:12:50', 'New', 'Not Active', NULL, NULL, NULL, '2023-04-03', 0, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL);
INSERT INTO `elsemployees` (`elsemployees_empid`, `elsemployees_batchid`, `elsemployees_name`, `elsemployees_fname`, `elsemployees_cnic`, `elsemployees_cno`, `elsemployees_email`, `elsemployees_password`, `elsemployees_image`, `elsemployees_coverimage`, `elsemployees_dofbirth`, `elsemployees_dofjoining`, `elsemployees_address`, `elsemployees_type`, `elsemployees_ext`, `elsemployees_departid`, `elsemployees_subdepartid`, `elsemployees_desgid`, `elsemployees_reportingto`, `elsemployees_roleid`, `elsemployees_status`, `elsemployees_annualleaves`, `elsemployees_sickleaves`, `elsemployees_leaveyear`, `account_title`, `account_no`, `iban_no`, `bank_branch`, `bank_name`, `verify_token`, `elsemployees_changeby`, `elsemployees_addby`, `created_at`, `updated_at`, `probiation_status`, `emailschedule_userstatus`, `emailschedule_lastactive`, `user_loginstatus`, `elsemployees_dofleaving`, `elsemployees_dofpayroll`, `elsemployees_allowoutsideemail`, `elsemployees_emailname`, `elsemployees_emailaddress`, `elsemployees_emailpassword`, `elsemployees_emailhost`, `elsemployees_careligibility`, `elsemployees_assigncaroramount`, `car_id`, `elsemployees_caramount`) VALUES
(268, 1440, 'Abdul Sami Khan', 'Abdul Bari Khan', '42101-0255145-5', '03302388427', 'sami455@bizzworld.com', 'bizz@1', 'no_image.jpg', NULL, '1998-09-23', '2023-03-27', 'PLOT # 1276-1279 FIRST FLOOR LEFT PORTION MOOSA COLONY FB AREA BLICK 5 KARACHI', 'Revenue', '0', 2, NULL, 2, 28, 4, 2, 0, 0, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 'Rafia Naz', 'Rafia Naz', '2023-04-19 21:23:10', '2023-04-19 21:23:10', 'New', 'Not Active', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `elsemployeestiming`
--

CREATE TABLE `elsemployeestiming` (
  `emptime_id` int(11) NOT NULL,
  `emptime_start` varchar(255) DEFAULT NULL,
  `emptime_end` varchar(255) DEFAULT NULL,
  `emptime_batchid` int(11) DEFAULT NULL,
  `emptime_empid` int(11) DEFAULT NULL,
  `emptime_startdate` date DEFAULT NULL,
  `emptime_enddate` date DEFAULT NULL,
  `emptime_updateby` varchar(255) DEFAULT NULL,
  `change_date` date NOT NULL DEFAULT '2019-12-01'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `elsleaverequests`
--

CREATE TABLE `elsleaverequests` (
  `elsleaverequests_id` int(10) UNSIGNED NOT NULL,
  `elsleaverequests_empid` int(11) NOT NULL,
  `elsleaverequests_leavetypeid` int(11) DEFAULT NULL,
  `elsleaverequests_leavesubmitdate` date NOT NULL,
  `elsleaverequests_leavestartdate` date NOT NULL,
  `elsleaverequests_leaveenddate` date NOT NULL,
  `elsleaverequests_totalleavedays` int(11) NOT NULL,
  `elsleaverequests_remainingannualleave` int(11) NOT NULL,
  `elsleaverequests_reamainingsickleave` int(11) NOT NULL,
  `elsleaverequests_usercomment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `elsleaverequests_approvercomment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `elsleaverequests_approverempid` int(11) DEFAULT NULL,
  `elsleaverequests_approverdate` date DEFAULT NULL,
  `elsleaverequests_hrempid` int(11) DEFAULT NULL,
  `elsleaverequests_hrcomment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `elsleaverequests_hrdate` date DEFAULT NULL,
  `elsleaverequests_status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `elsleaverequests_managerstatus` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `elsleaverequests_coostatus` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `elsleaverequests_hrstatus` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `elsleaverequests_cooempid` int(11) DEFAULT NULL,
  `elsleaverequests_coocomment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `elsleaverequests_coodate` date DEFAULT NULL,
  `elsleaverequests_changeby` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `emailldetail_sendby` varchar(255) DEFAULT NULL,
  `emailldetail_sendbyname` text DEFAULT NULL,
  `emailldetail_uid` int(11) DEFAULT NULL,
  `emailldetail_markas` varchar(255) DEFAULT NULL,
  `emailldetail_readstatus` int(11) DEFAULT 0,
  `emailldetail_isreceiveorsent` int(11) DEFAULT NULL,
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
,`senderemail` varchar(255)
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
-- Table structure for table `emailschedule`
--

CREATE TABLE `emailschedule` (
  `emailschedule_id` int(11) NOT NULL,
  `emailschedule_reportname` text NOT NULL,
  `emailschedule_date` varchar(255) DEFAULT NULL,
  `emailschedule_time` time NOT NULL,
  `emailschedule_department` varchar(200) NOT NULL,
  `emailschedule_frequency` varchar(200) NOT NULL,
  `emailschedule_timelines` text DEFAULT NULL,
  `emailschedule_sendfrom` text DEFAULT NULL,
  `emailschedule_sendto` text NOT NULL,
  `emailschedule_manageremail` varchar(255) DEFAULT NULL,
  `emailschedule_managementemail` varchar(255) DEFAULT NULL,
  `emailschedule_fntime` time DEFAULT NULL,
  `emailschedule_sntime` time DEFAULT NULL,
  `emailschedule_tntime` time DEFAULT NULL,
  `emailschedule_description` text NOT NULL,
  `emailschedule_status` varchar(255) DEFAULT NULL,
  `emailschedule_submitby` varchar(255) NOT NULL,
  `emailschedule_performer` varchar(255) NOT NULL,
  `emailschedule_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `emailschedule_updatetime` varchar(255) DEFAULT NULL,
  `emailschedule_updateschedulesec` varchar(255) DEFAULT NULL,
  `emailschedule_updateschedulethi` varchar(255) DEFAULT NULL,
  `emailschedule_updateschedule` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emailschedule_performers`
--

CREATE TABLE `emailschedule_performers` (
  `emailschedule_pid` int(11) NOT NULL,
  `emailschedule_id` int(11) NOT NULL,
  `emailschedule_pdate` varchar(255) DEFAULT NULL,
  `emailschedule_pemail` varchar(255) NOT NULL,
  `emailschedule_memail` varchar(255) DEFAULT NULL,
  `emailschedule_pstatus` varchar(255) NOT NULL,
  `emailschedule_ptime` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emailsendto`
--

CREATE TABLE `emailsendto` (
  `emailsendto_id` int(11) NOT NULL,
  `emailsendto_email` text DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `employeeachieved`
--

CREATE TABLE `employeeachieved` (
  `employeeachieved_id` int(11) NOT NULL,
  `employeeachieved_achieved` double DEFAULT NULL,
  `employeeachieved_month` varchar(255) DEFAULT NULL,
  `employeeachieved_date` date DEFAULT NULL,
  `elsemployees_batchid` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employeetarget`
--

CREATE TABLE `employeetarget` (
  `employeetarget_id` int(11) NOT NULL,
  `employeetarget_target` double DEFAULT NULL,
  `employeetarget_type` varchar(255) DEFAULT NULL,
  `employeetarget_month` varchar(255) DEFAULT NULL,
  `elsemployees_batchid` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `empstatus`
--

CREATE TABLE `empstatus` (
  `status_id` int(10) NOT NULL,
  `status_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empstatus`
--

INSERT INTO `empstatus` (`status_id`, `status_name`) VALUES
(1, 'Not Active'),
(2, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_forms`
--

CREATE TABLE `evaluation_forms` (
  `evu_id` int(11) NOT NULL,
  `evu_canname` varchar(55) NOT NULL,
  `evu_canappposi` varchar(55) NOT NULL,
  `evu_canassername` varchar(55) NOT NULL,
  `evu_canintdt` datetime NOT NULL,
  `evu_cancursal` float NOT NULL,
  `evu_canexsal` float NOT NULL,
  `evu_canrealeave` varchar(255) NOT NULL,
  `evu_cannotjoin` varchar(255) NOT NULL,
  `evu_canagrngtsft` varchar(50) NOT NULL,
  `evu_cancomskl` varchar(50) NOT NULL,
  `evu_canremark` varchar(255) NOT NULL,
  `evu_cantechasrname` varchar(55) NOT NULL,
  `evu_cantechdesgdept` varchar(55) NOT NULL,
  `evu_canratescale` varchar(100) NOT NULL,
  `evu_canDate` date NOT NULL,
  `evu_canfintname` varchar(55) NOT NULL,
  `evu_canSintname` varchar(55) NOT NULL,
  `evu_canfintdate` date NOT NULL,
  `evu_canSintDate` date NOT NULL,
  `evu_canHRrec` varchar(255) NOT NULL,
  `evu_canhodrec` varchar(255) NOT NULL,
  `evu_cangmopr` varchar(255) NOT NULL,
  `evu_canposi` varchar(50) NOT NULL,
  `evu_cangra` varchar(50) NOT NULL,
  `evu_cansalary` float NOT NULL,
  `evu_canuponconfi` varchar(50) NOT NULL,
  `evu_canChangeBy` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `expense_id` int(11) NOT NULL,
  `expense_title` text DEFAULT NULL,
  `expense_amount` double DEFAULT NULL,
  `expense_for` text DEFAULT NULL,
  `expense_comment` text DEFAULT NULL,
  `expense_yearandmonth` varchar(255) DEFAULT NULL,
  `expense_day` varchar(255) DEFAULT NULL,
  `expense_isrecuring` int(11) DEFAULT NULL,
  `expense_ismonthly` int(11) DEFAULT NULL,
  `expensetype_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `expenseopening`
--

CREATE TABLE `expenseopening` (
  `expenseopening_id` int(11) NOT NULL,
  `expenseopening_balance` double DEFAULT NULL,
  `expenseopening_moretitle` varchar(255) DEFAULT NULL,
  `expenseopening_morebalance` double DEFAULT NULL,
  `expenseopening_month` varchar(255) DEFAULT NULL,
  `expenseopening_date` date DEFAULT NULL,
  `expense_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `expensetype`
--

CREATE TABLE `expensetype` (
  `expensetype_id` int(11) NOT NULL,
  `expensetype_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expensetype`
--

INSERT INTO `expensetype` (`expensetype_id`, `expensetype_name`, `status_id`) VALUES
(1, 'Monthly', 1),
(2, 'Fixed', 2),
(3, 'Other', 2),
(4, 'Van', 2),
(5, 'Petty Cash', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `fetchgroupmessage`
-- (See below for the actual view)
--
CREATE TABLE `fetchgroupmessage` (
`from_userid` int(11)
,`from_username` varchar(255)
,`from_userpicture` varchar(255)
,`group_id` int(11)
,`groupmessage_id` bigint(20) unsigned
,`groupmessage_body` longtext
,`groupmessage_attachment` text
,`groupmessage_originalname` varchar(250)
,`groupmessage_quoteid` varchar(255)
,`groupmessage_quotebody` text
,`groupmessage_quoteuser` varchar(255)
,`groupmessage_forwarded` int(11)
,`fullTime` timestamp
,`status_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `fetchmessage`
-- (See below for the actual view)
--
CREATE TABLE `fetchmessage` (
`message_id` bigint(20) unsigned
,`message_from` int(11)
,`message_to` int(11)
,`message_body` longtext
,`message_attachment` longtext
,`message_originalname` longtext
,`message_quoteid` varchar(255)
,`message_quotebody` text
,`message_quoteuser` varchar(255)
,`message_forwarded` int(11)
,`seen` tinyint(1)
,`fullTime` timestamp
,`from_username` varchar(255)
,`from_userpicture` varchar(255)
,`status_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_image` text DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updared_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `getchatuser`
-- (See below for the actual view)
--
CREATE TABLE `getchatuser` (
`elsemployees_empid` int(10) unsigned
,`created_at` timestamp
,`message_from` int(11)
,`message_to` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memberid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastmessage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groupmessagetime` datetime DEFAULT NULL,
  `groupunseenmesg` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
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
  `groupmessage_forwarded` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groupmessageseen`
--

CREATE TABLE `groupmessageseen` (
  `groupmessageseen_id` int(11) NOT NULL,
  `groupmessageseen_seen` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `groupmessage_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `groupseenwithuser`
-- (See below for the actual view)
--
CREATE TABLE `groupseenwithuser` (
`user_id` int(11)
,`groupmessage_id` int(11)
,`group_id` int(11)
,`groupmessageseen_id` int(11)
,`groupmessageseen_seen` int(11)
,`elsemployees_name` varchar(255)
,`elsemployees_image` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `holdsalary`
--

CREATE TABLE `holdsalary` (
  `holdsalary_id` int(11) NOT NULL,
  `holdsalary_month` varchar(255) DEFAULT NULL,
  `holdsalary_empbatchid` bigint(20) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `HOLI_ID` int(11) NOT NULL,
  `HOLI_TITLE` varchar(255) NOT NULL,
  `HOLI_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_department`
--

CREATE TABLE `hrm_department` (
  `dept_id` int(100) NOT NULL,
  `dept_name` varchar(100) NOT NULL,
  `status_id` int(11) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_login`
--

CREATE TABLE `hrm_login` (
  `log_id` int(11) NOT NULL,
  `log_email` varchar(350) NOT NULL,
  `log_pass` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `increment`
--

CREATE TABLE `increment` (
  `increment_id` int(11) NOT NULL,
  `increment_amount` double DEFAULT NULL,
  `increment_year` int(11) DEFAULT NULL,
  `increment_month` varchar(255) DEFAULT NULL,
  `elsemployees_batchid` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `itinventory`
--

CREATE TABLE `itinventory` (
  `itinventory_id` int(11) NOT NULL,
  `itinventory_name` text DEFAULT NULL,
  `itinventory_qty` int(11) DEFAULT NULL,
  `itinventory_qtyuse` int(11) DEFAULT 0,
  `itinventory_qtyremaining` double DEFAULT NULL,
  `itinventory_type` varchar(255) DEFAULT NULL,
  `itinventory_description` text DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT 2,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `itreview`
--

CREATE TABLE `itreview` (
  `itreview_id` int(11) NOT NULL,
  `itreview_star` varchar(255) DEFAULT NULL,
  `itreview_remarks` text DEFAULT NULL,
  `itticket_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `itticket`
--

CREATE TABLE `itticket` (
  `itticket_id` int(11) NOT NULL,
  `itticket_request` text DEFAULT NULL,
  `itticket_comment` text DEFAULT NULL,
  `itticketstatus_id` int(11) DEFAULT NULL,
  `itinventory_id` int(11) DEFAULT NULL,
  `itticket_isreviewsubmited` int(11) NOT NULL DEFAULT 0,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `itticketstatus`
--

CREATE TABLE `itticketstatus` (
  `itticketstatus_id` int(11) NOT NULL,
  `itticketstatus_name` varchar(255) NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itticketstatus`
--

INSERT INTO `itticketstatus` (`itticketstatus_id`, `itticketstatus_name`, `status_id`) VALUES
(1, 'Pending', 2),
(2, 'In Progress', 2),
(3, 'Reject', 2),
(4, 'Troubleshoot To Resolve', 2),
(5, 'Use Inventory To Resolve', 2);

-- --------------------------------------------------------

--
-- Table structure for table `jobapplicant`
--

CREATE TABLE `jobapplicant` (
  `jobapplicant_id` int(11) NOT NULL,
  `jobapplicant_name` varchar(250) DEFAULT NULL,
  `jobapplicant_fname` varchar(250) DEFAULT NULL,
  `jobapplicant_log_id` int(11) NOT NULL,
  `jobapplicant_password` varchar(50) DEFAULT NULL,
  `jobapplicant_cnic` varchar(250) DEFAULT NULL,
  `jobapplicant_nationality` varchar(50) DEFAULT NULL,
  `jobapplicant_address` text DEFAULT NULL,
  `jobapplicant_qualification` varchar(100) DEFAULT NULL,
  `jobapplicant_department` int(100) DEFAULT NULL,
  `jobapplicant_designation` int(100) DEFAULT NULL,
  `jobapplicant_experience` int(100) DEFAULT NULL,
  `jobapplicant_age` int(11) DEFAULT NULL,
  `jobapplicant_occupation` varchar(100) DEFAULT NULL,
  `jobapplicant_currentsalary` int(11) DEFAULT NULL,
  `jobapplicant_religion` varchar(100) DEFAULT NULL,
  `jobapplicant_martialstatus` varchar(100) DEFAULT NULL,
  `jobapplicant_contact` varchar(100) DEFAULT NULL,
  `jobapplicant_postionapppliedform` varchar(100) DEFAULT NULL,
  `jobapplicant_monthlyexpectedsalary` int(11) DEFAULT NULL,
  `jobapplicant_reasonofleave` varchar(200) DEFAULT NULL,
  `jobapplicant_negotiablesalary` varchar(100) DEFAULT NULL,
  `jobapplicant_remarksofleave` varchar(350) DEFAULT NULL,
  `jobapplicant_nightshift` varchar(5) DEFAULT NULL,
  `jobapplicant_periodjoining` varchar(50) DEFAULT NULL,
  `jobapplicant_communicationskills` varchar(15) DEFAULT NULL,
  `jobapplicant_placeob` varchar(100) DEFAULT NULL,
  `jobapplicant_dob` date DEFAULT NULL,
  `jobapplicant_edu_sno` varchar(11) DEFAULT NULL,
  `jobapplicant_edu_cerdeg` varchar(50) DEFAULT NULL,
  `jobapplicant_edu_year` varchar(200) DEFAULT NULL,
  `jobapplicant_edu_regpri` varchar(200) DEFAULT NULL,
  `jobapplicant_edu_majsub` varchar(200) DEFAULT NULL,
  `jobapplicant_edu_divgra` varchar(200) DEFAULT NULL,
  `jobapplicant_edu_institute` varchar(200) DEFAULT NULL,
  `jobapplicant_empreport_sno` varchar(11) DEFAULT NULL,
  `jobapplicant_empreport_org` varchar(200) DEFAULT NULL,
  `jobapplicant_empreport_perfrom` varchar(200) DEFAULT NULL,
  `jobapplicant_empreport_perto` varchar(200) DEFAULT NULL,
  `jobapplicant_posstart` varchar(200) DEFAULT NULL,
  `jobapplicant_last` varchar(200) DEFAULT NULL,
  `jobapplicant_grossalarystart` varchar(200) DEFAULT NULL,
  `jobapplicant_grossalarylast` varchar(200) DEFAULT NULL,
  `jobapplicant_reasoleave` varchar(200) DEFAULT NULL,
  `jobapplicant_addresstemporaray` varchar(200) DEFAULT NULL,
  `jobapplicant_officeno` varchar(200) DEFAULT NULL,
  `jobapplicant_cv` text DEFAULT NULL,
  `jobapplicant_picture` text DEFAULT NULL,
  `jobapplicant_mngrComment` varchar(200) DEFAULT NULL,
  `jobapplicant_status` varchar(100) DEFAULT NULL,
  `jobapplicant_ChangeBy` varchar(100) DEFAULT NULL,
  `jobapplicant_intDateandTime` varchar(125) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jobapplicant_careerlevel` varchar(100) DEFAULT NULL,
  `jobapplicant_sub_department` varchar(150) DEFAULT NULL,
  `jobapplicant_gender` varchar(50) DEFAULT NULL,
  `jobapplicant_reference` varchar(250) DEFAULT NULL,
  `jobapplicant_channel` int(11) DEFAULT NULL,
  `jobapplicant_socialmedialinks` longtext DEFAULT NULL,
  `jobapplicant_imageview` varchar(10000) DEFAULT 'no_image.png',
  `jobapplicant_hrcomment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `loan_amount` double DEFAULT NULL,
  `loan_paid` double DEFAULT NULL,
  `loan_instalments` int(11) DEFAULT NULL,
  `loan_reason` text DEFAULT NULL,
  `elsemployees_empid` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `markattendance`
--

CREATE TABLE `markattendance` (
  `markattendance_id` int(11) NOT NULL,
  `markattendance_date` datetime DEFAULT NULL,
  `markattendance_type` varchar(255) DEFAULT NULL,
  `markattendance_for` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `meetingroom`
--

CREATE TABLE `meetingroom` (
  `meetingroom_id` int(11) NOT NULL,
  `meetingroom_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `message_quoteid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_quotebody` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_quoteuser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_forwarded` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onday`
--

CREATE TABLE `onday` (
  `onday_id` int(11) NOT NULL,
  `onday_date` date DEFAULT NULL,
  `onday_type` varchar(255) DEFAULT NULL,
  `DEPT_ID` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_productprice` double DEFAULT NULL,
  `order_productquantity` int(11) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `payrollexpense`
-- (See below for the actual view)
--
CREATE TABLE `payrollexpense` (
`S_id` int(50)
,`EMP_BADGE_ID` int(50)
,`Name` varchar(255)
,`BankAccountNo` text
,`Salary` double
,`attendance_allowance` double
,`punctuality_allowance` double
,`transport_allowance` double
,`fuel_allowance` double
,`fund` double
,`fund_month` int(11)
,`fund_year` varchar(255)
,`Salary_Comment` text
,`Date` date
,`Update_By` text
,`update_at` timestamp
,`delete_status` int(11)
,`elsemployees_status` int(11)
,`elsemployees_dofjoining` varchar(200)
);

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` int(10) UNSIGNED NOT NULL,
  `EMP_BADGE_ID` int(50) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Start_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `End_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Department` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Time_long` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrollsalaries`
--

CREATE TABLE `payrollsalaries` (
  `S_id` int(50) NOT NULL,
  `EMP_BADGE_ID` int(50) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `BankAccountNo` text DEFAULT NULL,
  `Salary` double DEFAULT NULL,
  `attendance_allowance` double DEFAULT NULL,
  `punctuality_allowance` double DEFAULT NULL,
  `transport_allowance` double DEFAULT NULL,
  `fuel_allowance` double DEFAULT NULL,
  `fund` double DEFAULT NULL,
  `fund_month` int(11) DEFAULT NULL,
  `fund_year` varchar(255) DEFAULT NULL,
  `Salary_Comment` text NOT NULL,
  `Date` date NOT NULL,
  `Update_By` text DEFAULT NULL,
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delete_status` int(11) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `probationary_form`
--

CREATE TABLE `probationary_form` (
  `probationary_form_id` int(11) NOT NULL,
  `probationary_form_empbatchid` int(11) NOT NULL,
  `probationary_form_empname` varchar(250) NOT NULL,
  `probationary_form_empdesig` int(11) NOT NULL,
  `probationary_form_empdept` int(11) NOT NULL,
  `probationary_form_empevaluator` varchar(255) NOT NULL,
  `probationary_form_date` date DEFAULT NULL,
  `probationary_form_empmonthsreview` int(11) NOT NULL,
  `probationary_form_empmonthsreviewcomment` longtext NOT NULL,
  `probationary_form_empqualitywork` int(11) NOT NULL,
  `probationary_form_empefficiency` int(11) NOT NULL,
  `probationary_form_empattenpunctuality` int(11) DEFAULT NULL,
  `probationary_form_emptimemang` int(11) NOT NULL,
  `probationary_form_empworkskills` int(11) NOT NULL,
  `probationary_form_empcompetency` int(11) NOT NULL,
  `probationary_form_empobjectives` varchar(250) NOT NULL,
  `probationary_form_empnoobjectivescomment` longtext DEFAULT NULL,
  `probationary_form_emptraining` varchar(250) NOT NULL,
  `probationary_form_empnotrainingcomment` longtext DEFAULT NULL,
  `probationary_form_empsummarizeperformance` longtext NOT NULL,
  `probationary_form_empsuccesscompleted` varchar(250) NOT NULL,
  `probationary_form_empsuccesscompletedcomment` longtext DEFAULT NULL,
  `probationary_form_emprecommendextended` varchar(250) NOT NULL,
  `probationary_form_empyesrecommendextendedcomment` longtext DEFAULT NULL,
  `probationary_form_empextentiondate` date DEFAULT NULL,
  `probationary_form_empnewprobcompdate` date DEFAULT NULL,
  `probationary_form_empdate` date DEFAULT NULL,
  `probationary_form_empmangerdate` date DEFAULT NULL,
  `probationary_form_empnamep` varchar(250) DEFAULT NULL,
  `probationary_form_empnamecomment` longtext DEFAULT NULL,
  `probationary_form_empcooname` varchar(250) DEFAULT NULL,
  `probationary_form_empcoodate` date DEFAULT NULL,
  `probationary_form_empcoocomment` longtext DEFAULT NULL,
  `probationary_form_empconfirmationletter` varchar(250) DEFAULT NULL,
  `probationary_form_empconfirmationlettercomment` longtext DEFAULT NULL,
  `probationary_form_empstatus` varchar(255) DEFAULT NULL,
  `probationary_form_empextentionprobperiod` longtext DEFAULT NULL,
  `probationary_form_emppayrolladvised` longtext DEFAULT NULL,
  `probationary_form_emphrmangerdate` date DEFAULT NULL,
  `probationary_form_empdate1` date DEFAULT NULL,
  `probationary_status` varchar(100) NOT NULL DEFAULT 'Mapproved'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_picture` text DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `product_unit` varchar(255) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `punchingdata`
--

CREATE TABLE `punchingdata` (
  `punch_id` int(11) NOT NULL,
  `punch_emp_batchid` int(11) NOT NULL,
  `punch_emp_name` varchar(200) NOT NULL,
  `punch_emp_dept` varchar(200) NOT NULL,
  `punch_emp_checkin` varchar(50) NOT NULL,
  `punch_emp_checkout` varchar(50) NOT NULL,
  `punch_emp_date` date NOT NULL,
  `punch_emp_day` varchar(25) NOT NULL,
  `punch_totaltime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE `reminder` (
  `reminder_id` int(11) NOT NULL,
  `reminder_note` text DEFAULT NULL,
  `reminder_date` datetime DEFAULT NULL,
  `elsemployees_batchid` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `replypost`
--

CREATE TABLE `replypost` (
  `replypost_id` int(11) NOT NULL,
  `replypost_reply` text DEFAULT NULL,
  `replypost_status` varchar(255) DEFAULT NULL,
  `commentpost_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reserveroom`
--

CREATE TABLE `reserveroom` (
  `reserveroom_id` int(11) NOT NULL,
  `reserveroom_for` text DEFAULT NULL,
  `reserveroom_starttime` datetime DEFAULT NULL,
  `reserveroom_endtime` datetime DEFAULT NULL,
  `reserveroom_date` date DEFAULT NULL,
  `reservertionstatus_id` int(11) DEFAULT NULL,
  `meetingroom_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reservertionstatus`
--

CREATE TABLE `reservertionstatus` (
  `reservertionstatus_id` int(11) NOT NULL,
  `reservertionstatus_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `resignation`
--

CREATE TABLE `resignation` (
  `resignation_id` int(11) NOT NULL,
  `resig_empid` int(11) NOT NULL,
  `resig_lastdate` varchar(200) NOT NULL,
  `resig_submitdate` varchar(200) NOT NULL,
  `resig_reason` longtext NOT NULL,
  `resig_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurant_id` int(11) NOT NULL,
  `restaurant_name` varchar(255) DEFAULT NULL,
  `restaurant_picture` text DEFAULT NULL,
  `restaurant_otherdetails` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleid` int(11) NOT NULL,
  `rolename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleid`, `rolename`) VALUES
(1, 'Super Admin'),
(2, 'Admin'),
(3, 'Manager'),
(4, 'Requester');

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
,`sendername` text
,`senderemail` varchar(255)
,`deleted_by` int(11)
,`detaildeleted_by` int(11)
,`detailstatus_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `user_id` varchar(255) NOT NULL,
  `endpoint` varchar(255) NOT NULL,
  `expirationTime` varchar(255) DEFAULT NULL,
  `p256dh` varchar(255) NOT NULL,
  `auth` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sub_department`
--

CREATE TABLE `sub_department` (
  `sd_id` int(11) NOT NULL,
  `sd_name` varchar(200) NOT NULL,
  `sd_dept_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `tax_id` int(11) NOT NULL,
  `tax_startamount` double DEFAULT NULL,
  `tax_endamount` double DEFAULT NULL,
  `tax_taxamount` double DEFAULT NULL,
  `tax_percent` varchar(255) DEFAULT NULL,
  `tax_startdate` varchar(255) DEFAULT NULL,
  `tax_enddate` varchar(255) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tuckcategory`
--

CREATE TABLE `tuckcategory` (
  `tuckcategory_id` int(11) NOT NULL,
  `tuckcategory_name` varchar(255) DEFAULT NULL,
  `tuckcategory_image` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tuckproduct`
--

CREATE TABLE `tuckproduct` (
  `tuckproduct_id` int(11) NOT NULL,
  `tuckproduct_name` varchar(255) DEFAULT NULL,
  `tuckproduct_image` text DEFAULT NULL,
  `tuckproduct_price` double DEFAULT NULL,
  `tuckproduct_type` varchar(255) DEFAULT NULL,
  `tuckproduct_quantity` int(11) DEFAULT NULL,
  `tuckcategory_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE `user_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `vendor_email` varchar(255) DEFAULT NULL,
  `vendor_phone` varchar(255) DEFAULT NULL,
  `vendor_picture` text DEFAULT NULL,
  `vendor_address` text DEFAULT NULL,
  `vendor_otherdetails` text DEFAULT NULL,
  `vendortype_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendortype`
--

CREATE TABLE `vendortype` (
  `vendortype_id` int(11) NOT NULL,
  `vendortype_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendortype`
--

INSERT INTO `vendortype` (`vendortype_id`, `vendortype_name`, `status_id`) VALUES
(1, 'Car', 2);

-- --------------------------------------------------------

--
-- Structure for view `chatuser`
--
DROP TABLE IF EXISTS `chatuser`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `chatuser`  AS SELECT (select count(`us`.`message_seen`) AS `unseen` from `message` `us` where `msg`.`message_from` = `elfrom`.`elsemployees_empid` and `msg`.`message_seen` = 0) AS `unseen`, `elfrom`.`elsemployees_empid` AS `elsemployees_empid`, `elfrom`.`elsemployees_name` AS `elsemployees_name`, `elfrom`.`elsemployees_image` AS `elsemployees_image`, `msg`.`message_id` AS `message_id`, `msg`.`message_from` AS `message_from`, `msg`.`message_to` AS `message_to`, `msg`.`message_body` AS `message_body`, `msg`.`message_attachment` AS `message_attachment`, `msg`.`message_originalname` AS `message_originalname`, `msg`.`message_seen` AS `message_seen`, `msg`.`message_quoteid` AS `message_quoteid`, `msg`.`message_quotebody` AS `message_quotebody`, `msg`.`message_quoteuser` AS `message_quoteuser`, `msg`.`message_forwarded` AS `message_forwarded`, `msg`.`status_id` AS `status_id`, `msg`.`created_at` AS `created_at`, `msg`.`updated_at` AS `updated_at`, `d`.`DESG_NAME` AS `DESG_NAME` FROM ((`elsemployees` `elfrom` join `message` `msg` on(`elfrom`.`elsemployees_empid` = `msg`.`message_from` or `elfrom`.`elsemployees_empid` = `msg`.`message_to`)) join `designation` `d` on(`elfrom`.`elsemployees_desgid` = `d`.`DESG_ID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `emaillist`
--
DROP TABLE IF EXISTS `emaillist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `emaillist`  AS SELECT `em`.`emailmaster_id` AS `emailmaster_id`, `em`.`emailmaster_token` AS `emailmaster_token`, `em`.`emailmaster_subject` AS `emailmaster_subject`, `em`.`emailmaster_date` AS `emailmaster_date`, `em`.`status_id` AS `status_id`, `em`.`created_by` AS `created_by`, `em`.`created_at` AS `created_at`, `em`.`updated_by` AS `updated_by`, `em`.`updated_at` AS `updated_at`, `em`.`emailmaster_isreceiveorsent` AS `emailmaster_isreceiveorsent`, `ed`.`emailldetail_isreceiveorsent` AS `emailldetail_isreceiveorsent`, `ed`.`emailldetail_body` AS `emailldetail_body`, `ed`.`emailldetail_id` AS `emailldetail_id`, `ed`.`emailldetail_markas` AS `emailldetail_markas`, `ed`.`emailldetail_readstatus` AS `emailldetail_readstatus`, `ed`.`emailsentordraft_id` AS `emailsentordraft_id`, `ed`.`created_by` AS `detailedcreated_by`, `ed`.`emailldetail_sendbyname` AS `sendername`, `ed`.`emailldetail_sendby` AS `senderemail`, `em`.`deleted_by` AS `deleted_by`, `ed`.`deleted_by` AS `detaildeleted_by`, `ed`.`status_id` AS `detailstatus_id` FROM ((`emailmaster` `em` join `emailldetail` `ed` on(`em`.`emailmaster_id` = `ed`.`emailmaster_id`)) join `elsemployees` `u` on(`em`.`created_by` = `u`.`elsemployees_empid`)) ;

-- --------------------------------------------------------

--
-- Structure for view `fetchgroupmessage`
--
DROP TABLE IF EXISTS `fetchgroupmessage`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fetchgroupmessage`  AS SELECT `gm`.`user_id` AS `from_userid`, `emp`.`elsemployees_name` AS `from_username`, `emp`.`elsemployees_image` AS `from_userpicture`, `gm`.`group_id` AS `group_id`, `gm`.`groupmessage_id` AS `groupmessage_id`, `gm`.`groupmessage_body` AS `groupmessage_body`, `gm`.`groupmessage_attachment` AS `groupmessage_attachment`, `gm`.`groupmessage_originalname` AS `groupmessage_originalname`, `gm`.`groupmessage_quoteid` AS `groupmessage_quoteid`, `gm`.`groupmessage_quotebody` AS `groupmessage_quotebody`, `gm`.`groupmessage_quoteuser` AS `groupmessage_quoteuser`, `gm`.`groupmessage_forwarded` AS `groupmessage_forwarded`, `gm`.`created_at` AS `fullTime`, `gm`.`status_id` AS `status_id` FROM (`groupmessage` `gm` join `elsemployees` `emp` on(`gm`.`user_id` = `emp`.`elsemployees_empid`)) ;

-- --------------------------------------------------------

--
-- Structure for view `fetchmessage`
--
DROP TABLE IF EXISTS `fetchmessage`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fetchmessage`  AS SELECT `msg`.`message_id` AS `message_id`, `msg`.`message_from` AS `message_from`, `msg`.`message_to` AS `message_to`, `msg`.`message_body` AS `message_body`, `msg`.`message_attachment` AS `message_attachment`, `msg`.`message_originalname` AS `message_originalname`, `msg`.`message_quoteid` AS `message_quoteid`, `msg`.`message_quotebody` AS `message_quotebody`, `msg`.`message_quoteuser` AS `message_quoteuser`, `msg`.`message_forwarded` AS `message_forwarded`, `msg`.`message_seen` AS `seen`, `msg`.`created_at` AS `fullTime`, `emp`.`elsemployees_name` AS `from_username`, `emp`.`elsemployees_image` AS `from_userpicture`, `msg`.`status_id` AS `status_id` FROM (`message` `msg` join `elsemployees` `emp` on(`msg`.`message_from` = `emp`.`elsemployees_empid`)) ;

-- --------------------------------------------------------

--
-- Structure for view `getchatuser`
--
DROP TABLE IF EXISTS `getchatuser`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getchatuser`  AS SELECT `elfrom`.`elsemployees_empid` AS `elsemployees_empid`, `msg`.`created_at` AS `created_at`, `msg`.`message_from` AS `message_from`, `msg`.`message_to` AS `message_to` FROM (`elsemployees` `elfrom` join `message` `msg` on(`elfrom`.`elsemployees_empid` = `msg`.`message_from` or `elfrom`.`elsemployees_empid` = `msg`.`message_to`)) ;

-- --------------------------------------------------------

--
-- Structure for view `groupseenwithuser`
--
DROP TABLE IF EXISTS `groupseenwithuser`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `groupseenwithuser`  AS SELECT `gm`.`user_id` AS `user_id`, `gm`.`groupmessage_id` AS `groupmessage_id`, `gm`.`group_id` AS `group_id`, `gm`.`groupmessageseen_id` AS `groupmessageseen_id`, `gm`.`groupmessageseen_seen` AS `groupmessageseen_seen`, `e`.`elsemployees_name` AS `elsemployees_name`, `e`.`elsemployees_image` AS `elsemployees_image` FROM (`groupmessageseen` `gm` join `elsemployees` `e` on(`gm`.`user_id` = `e`.`elsemployees_empid`)) ;

-- --------------------------------------------------------

--
-- Structure for view `payrollexpense`
--
DROP TABLE IF EXISTS `payrollexpense`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `payrollexpense`  AS SELECT `ps`.`S_id` AS `S_id`, `ps`.`EMP_BADGE_ID` AS `EMP_BADGE_ID`, `ps`.`Name` AS `Name`, `ps`.`BankAccountNo` AS `BankAccountNo`, `ps`.`Salary` AS `Salary`, `ps`.`attendance_allowance` AS `attendance_allowance`, `ps`.`punctuality_allowance` AS `punctuality_allowance`, `ps`.`transport_allowance` AS `transport_allowance`, `ps`.`fuel_allowance` AS `fuel_allowance`, `ps`.`fund` AS `fund`, `ps`.`fund_month` AS `fund_month`, `ps`.`fund_year` AS `fund_year`, `ps`.`Salary_Comment` AS `Salary_Comment`, `ps`.`Date` AS `Date`, `ps`.`Update_By` AS `Update_By`, `ps`.`update_at` AS `update_at`, `ps`.`delete_status` AS `delete_status`, `emp`.`elsemployees_status` AS `elsemployees_status`, `emp`.`elsemployees_dofjoining` AS `elsemployees_dofjoining` FROM (`elsemployees` `emp` join `payrollsalaries` `ps` on(`emp`.`elsemployees_batchid` = `ps`.`EMP_BADGE_ID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `sentemaillist`
--
DROP TABLE IF EXISTS `sentemaillist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sentemaillist`  AS SELECT `em`.`emailmaster_id` AS `emailmaster_id`, `em`.`emailmaster_token` AS `emailmaster_token`, `em`.`emailmaster_subject` AS `emailmaster_subject`, `em`.`emailmaster_date` AS `emailmaster_date`, `em`.`status_id` AS `status_id`, `em`.`created_by` AS `created_by`, `em`.`created_at` AS `created_at`, `em`.`updated_by` AS `updated_by`, `em`.`updated_at` AS `updated_at`, `em`.`emailmaster_isreceiveorsent` AS `emailmaster_isreceiveorsent`, `ed`.`emailldetail_isreceiveorsent` AS `emailldetail_isreceiveorsent`, `ed`.`emailldetail_body` AS `emailldetail_body`, `ed`.`emailldetail_id` AS `emailldetail_id`, `ed`.`emailldetail_markas` AS `emailldetail_markas`, `ed`.`emailldetail_readstatus` AS `emailldetail_readstatus`, `ed`.`emailsentordraft_id` AS `emailsentordraft_id`, `ed`.`created_by` AS `detailedcreated_by`, `sto`.`emailsendto_email` AS `sendername`, `ed`.`emailldetail_sendby` AS `senderemail`, `em`.`deleted_by` AS `deleted_by`, `ed`.`deleted_by` AS `detaildeleted_by`, `ed`.`status_id` AS `detailstatus_id` FROM (((`emailmaster` `em` join `emailldetail` `ed` on(`em`.`emailmaster_id` = `ed`.`emailmaster_id`)) join `elsemployees` `u` on(`em`.`created_by` = `u`.`elsemployees_empid`)) join `emailsendto` `sto` on(`ed`.`emailldetail_id` = `sto`.`emailldetail_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acknowledgedpay`
--
ALTER TABLE `acknowledgedpay`
  ADD PRIMARY KEY (`acknowledgedpay_id`);

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `attendancecorrection`
--
ALTER TABLE `attendancecorrection`
  ADD PRIMARY KEY (`attendancecorrection_id`);

--
-- Indexes for table `attendancetest`
--
ALTER TABLE `attendancetest`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `attendancetimeout`
--
ALTER TABLE `attendancetimeout`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `bioattendance`
--
ALTER TABLE `bioattendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `can_evulation`
--
ALTER TABLE `can_evulation`
  ADD PRIMARY KEY (`can_evu_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `caraddition`
--
ALTER TABLE `caraddition`
  ADD PRIMARY KEY (`caraddition_id`);

--
-- Indexes for table `carassign`
--
ALTER TABLE `carassign`
  ADD PRIMARY KEY (`carassign_id`);

--
-- Indexes for table `commentpost`
--
ALTER TABLE `commentpost`
  ADD PRIMARY KEY (`commentpost_id`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`complain_id`);

--
-- Indexes for table `complaincomment`
--
ALTER TABLE `complaincomment`
  ADD PRIMARY KEY (`complaincomment_id`);

--
-- Indexes for table `complainstatus`
--
ALTER TABLE `complainstatus`
  ADD PRIMARY KEY (`complainstatus_id`);

--
-- Indexes for table `decrement`
--
ALTER TABLE `decrement`
  ADD PRIMARY KEY (`decrement_id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`deductions_id`);

--
-- Indexes for table `deliveredpay`
--
ALTER TABLE `deliveredpay`
  ADD PRIMARY KEY (`deliveredpay_id`);

--
-- Indexes for table `deliveredpaylog`
--
ALTER TABLE `deliveredpaylog`
  ADD PRIMARY KEY (`deliveredpaylog_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPT_ID`),
  ADD UNIQUE KEY `DEPARTMENT` (`DEPT_NAME`);

--
-- Indexes for table `deptpictures`
--
ALTER TABLE `deptpictures`
  ADD PRIMARY KEY (`deptpic_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`DESG_ID`),
  ADD UNIQUE KEY `DESIGNATION` (`DESG_NAME`);

--
-- Indexes for table `elsemployees`
--
ALTER TABLE `elsemployees`
  ADD PRIMARY KEY (`elsemployees_empid`),
  ADD UNIQUE KEY `elsemployees_elsemployees_email_unique` (`elsemployees_email`),
  ADD UNIQUE KEY `elsemployees_elsemployees_batchid_unique` (`elsemployees_batchid`);

--
-- Indexes for table `elsemployeestiming`
--
ALTER TABLE `elsemployeestiming`
  ADD PRIMARY KEY (`emptime_id`);

--
-- Indexes for table `elsleaverequests`
--
ALTER TABLE `elsleaverequests`
  ADD PRIMARY KEY (`elsleaverequests_id`);

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
-- Indexes for table `emailschedule`
--
ALTER TABLE `emailschedule`
  ADD PRIMARY KEY (`emailschedule_id`);

--
-- Indexes for table `emailschedule_performers`
--
ALTER TABLE `emailschedule_performers`
  ADD PRIMARY KEY (`emailschedule_pid`);

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
-- Indexes for table `employeeachieved`
--
ALTER TABLE `employeeachieved`
  ADD PRIMARY KEY (`employeeachieved_id`);

--
-- Indexes for table `employeetarget`
--
ALTER TABLE `employeetarget`
  ADD PRIMARY KEY (`employeetarget_id`);

--
-- Indexes for table `empstatus`
--
ALTER TABLE `empstatus`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `evaluation_forms`
--
ALTER TABLE `evaluation_forms`
  ADD PRIMARY KEY (`evu_id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `expenseopening`
--
ALTER TABLE `expenseopening`
  ADD PRIMARY KEY (`expenseopening_id`);

--
-- Indexes for table `expensetype`
--
ALTER TABLE `expensetype`
  ADD PRIMARY KEY (`expensetype_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

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
-- Indexes for table `groupmessageseen`
--
ALTER TABLE `groupmessageseen`
  ADD PRIMARY KEY (`groupmessageseen_id`);

--
-- Indexes for table `holdsalary`
--
ALTER TABLE `holdsalary`
  ADD PRIMARY KEY (`holdsalary_id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`HOLI_ID`);

--
-- Indexes for table `hrm_department`
--
ALTER TABLE `hrm_department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `hrm_login`
--
ALTER TABLE `hrm_login`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `increment`
--
ALTER TABLE `increment`
  ADD PRIMARY KEY (`increment_id`);

--
-- Indexes for table `itinventory`
--
ALTER TABLE `itinventory`
  ADD PRIMARY KEY (`itinventory_id`);

--
-- Indexes for table `itreview`
--
ALTER TABLE `itreview`
  ADD PRIMARY KEY (`itreview_id`);

--
-- Indexes for table `itticket`
--
ALTER TABLE `itticket`
  ADD PRIMARY KEY (`itticket_id`);

--
-- Indexes for table `itticketstatus`
--
ALTER TABLE `itticketstatus`
  ADD PRIMARY KEY (`itticketstatus_id`);

--
-- Indexes for table `jobapplicant`
--
ALTER TABLE `jobapplicant`
  ADD PRIMARY KEY (`jobapplicant_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`);

--
-- Indexes for table `markattendance`
--
ALTER TABLE `markattendance`
  ADD PRIMARY KEY (`markattendance_id`);

--
-- Indexes for table `meetingroom`
--
ALTER TABLE `meetingroom`
  ADD PRIMARY KEY (`meetingroom_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onday`
--
ALTER TABLE `onday`
  ADD PRIMARY KEY (`onday_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMP_ID` (`EMP_BADGE_ID`);

--
-- Indexes for table `payrollsalaries`
--
ALTER TABLE `payrollsalaries`
  ADD PRIMARY KEY (`S_id`);

--
-- Indexes for table `probationary_form`
--
ALTER TABLE `probationary_form`
  ADD PRIMARY KEY (`probationary_form_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `punchingdata`
--
ALTER TABLE `punchingdata`
  ADD PRIMARY KEY (`punch_id`);

--
-- Indexes for table `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`reminder_id`);

--
-- Indexes for table `replypost`
--
ALTER TABLE `replypost`
  ADD PRIMARY KEY (`replypost_id`);

--
-- Indexes for table `reserveroom`
--
ALTER TABLE `reserveroom`
  ADD PRIMARY KEY (`reserveroom_id`);

--
-- Indexes for table `reservertionstatus`
--
ALTER TABLE `reservertionstatus`
  ADD PRIMARY KEY (`reservertionstatus_id`);

--
-- Indexes for table `resignation`
--
ALTER TABLE `resignation`
  ADD PRIMARY KEY (`resignation_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`restaurant_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `sub_department`
--
ALTER TABLE `sub_department`
  ADD PRIMARY KEY (`sd_id`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `tuckcategory`
--
ALTER TABLE `tuckcategory`
  ADD PRIMARY KEY (`tuckcategory_id`);

--
-- Indexes for table `tuckproduct`
--
ALTER TABLE `tuckproduct`
  ADD PRIMARY KEY (`tuckproduct_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_list`
--
ALTER TABLE `user_list`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acknowledgedpay`
--
ALTER TABLE `acknowledgedpay`
  MODIFY `acknowledgedpay_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendancecorrection`
--
ALTER TABLE `attendancecorrection`
  MODIFY `attendancecorrection_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendancetest`
--
ALTER TABLE `attendancetest`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendancetimeout`
--
ALTER TABLE `attendancetimeout`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bioattendance`
--
ALTER TABLE `bioattendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `can_evulation`
--
ALTER TABLE `can_evulation`
  MODIFY `can_evu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `caraddition`
--
ALTER TABLE `caraddition`
  MODIFY `caraddition_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carassign`
--
ALTER TABLE `carassign`
  MODIFY `carassign_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commentpost`
--
ALTER TABLE `commentpost`
  MODIFY `commentpost_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `complain_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaincomment`
--
ALTER TABLE `complaincomment`
  MODIFY `complaincomment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complainstatus`
--
ALTER TABLE `complainstatus`
  MODIFY `complainstatus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `decrement`
--
ALTER TABLE `decrement`
  MODIFY `decrement_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `deductions_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveredpay`
--
ALTER TABLE `deliveredpay`
  MODIFY `deliveredpay_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveredpaylog`
--
ALTER TABLE `deliveredpaylog`
  MODIFY `deliveredpaylog_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deptpictures`
--
ALTER TABLE `deptpictures`
  MODIFY `deptpic_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `DESG_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `elsemployees`
--
ALTER TABLE `elsemployees`
  MODIFY `elsemployees_empid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `elsemployeestiming`
--
ALTER TABLE `elsemployeestiming`
  MODIFY `emptime_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `elsleaverequests`
--
ALTER TABLE `elsleaverequests`
  MODIFY `elsleaverequests_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `emailschedule`
--
ALTER TABLE `emailschedule`
  MODIFY `emailschedule_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailschedule_performers`
--
ALTER TABLE `emailschedule_performers`
  MODIFY `emailschedule_pid` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `emailtype_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeeachieved`
--
ALTER TABLE `employeeachieved`
  MODIFY `employeeachieved_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeetarget`
--
ALTER TABLE `employeetarget`
  MODIFY `employeetarget_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `empstatus`
--
ALTER TABLE `empstatus`
  MODIFY `status_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `evaluation_forms`
--
ALTER TABLE `evaluation_forms`
  MODIFY `evu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `expense_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenseopening`
--
ALTER TABLE `expenseopening`
  MODIFY `expenseopening_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expensetype`
--
ALTER TABLE `expensetype`
  MODIFY `expensetype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `groupmessageseen`
--
ALTER TABLE `groupmessageseen`
  MODIFY `groupmessageseen_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holdsalary`
--
ALTER TABLE `holdsalary`
  MODIFY `holdsalary_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `HOLI_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_department`
--
ALTER TABLE `hrm_department`
  MODIFY `dept_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_login`
--
ALTER TABLE `hrm_login`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `increment`
--
ALTER TABLE `increment`
  MODIFY `increment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `itinventory`
--
ALTER TABLE `itinventory`
  MODIFY `itinventory_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `itreview`
--
ALTER TABLE `itreview`
  MODIFY `itreview_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `itticket`
--
ALTER TABLE `itticket`
  MODIFY `itticket_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `itticketstatus`
--
ALTER TABLE `itticketstatus`
  MODIFY `itticketstatus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobapplicant`
--
ALTER TABLE `jobapplicant`
  MODIFY `jobapplicant_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `markattendance`
--
ALTER TABLE `markattendance`
  MODIFY `markattendance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetingroom`
--
ALTER TABLE `meetingroom`
  MODIFY `meetingroom_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onday`
--
ALTER TABLE `onday`
  MODIFY `onday_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payrollsalaries`
--
ALTER TABLE `payrollsalaries`
  MODIFY `S_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `probationary_form`
--
ALTER TABLE `probationary_form`
  MODIFY `probationary_form_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `punchingdata`
--
ALTER TABLE `punchingdata`
  MODIFY `punch_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminder`
--
ALTER TABLE `reminder`
  MODIFY `reminder_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replypost`
--
ALTER TABLE `replypost`
  MODIFY `replypost_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reserveroom`
--
ALTER TABLE `reserveroom`
  MODIFY `reserveroom_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservertionstatus`
--
ALTER TABLE `reservertionstatus`
  MODIFY `reservertionstatus_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resignation`
--
ALTER TABLE `resignation`
  MODIFY `resignation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `restaurant_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_department`
--
ALTER TABLE `sub_department`
  MODIFY `sd_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tuckcategory`
--
ALTER TABLE `tuckcategory`
  MODIFY `tuckcategory_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tuckproduct`
--
ALTER TABLE `tuckproduct`
  MODIFY `tuckproduct_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_list`
--
ALTER TABLE `user_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendortype`
--
ALTER TABLE `vendortype`
  MODIFY `vendortype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
