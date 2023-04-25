-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 09:42 PM
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
-- Database: `auhrm`
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

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `album_title`, `album_date`, `album_image`, `status_id`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Welcome', '2023-04-04', 'admin@autelecom.net_2023-04-05_.25.428571428571_.jpg', 2, 1, '2023-04-05 02:51:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `announcement_id` int(11) NOT NULL,
  `announcement_title` text NOT NULL,
  `announcement_desc` longtext DEFAULT NULL,
  `announcement_image` text DEFAULT NULL,
  `announcement_for` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`announcement_id`, `announcement_title`, `announcement_desc`, `announcement_image`, `announcement_for`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Welcome To AU HRM!', '<p>.</p>', 'admin@autelecom.net_2023-04-05_.123.28571428571_.jpg', 'All', '2023-04-05 02:48:21', 'Admin', NULL, NULL),
(2, 'Happy Birth Day!', NULL, 'admin@autelecom.net_2023-04-05_.71.428571428571_.jpg', 'BD', '2023-04-05 02:49:30', 'Admin', NULL, NULL),
(3, 'Happy Work Anniversary', NULL, 'admin@autelecom.net_2023-04-05_.12.714285714286_.jpg', 'BD', '2023-04-05 02:50:30', 'Admin', NULL, NULL);

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

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `attendance_date`, `attendance_month`, `attendance_mark`, `elsemployees_empid`, `attendance_submitby`) VALUES
(1, '2023-04-07', '04', '11:13:53', 1, 'Admin'),
(2, '2023-04-13', '04', '09:38:57', 1, 'Admin'),
(3, '2023-04-13', '04', '09:38:59', 1, 'Admin');

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

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`DESG_ID`, `DESG_NAME`) VALUES
(1, 'Executive');

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
(1, 1, 'Admin', 'Admin', '11111-1111111-1', '123456', 'admin@autelecom.net', 'autelecom@2023', 'no_image.jpg', 'defaultcover.jpg', '0101-01-01', '0101-01-01', '-', 'Other', '0', 1, 1, 1, 1, 1, 2, 12, 6, '2023', '-', '-', '-', '-', '-', NULL, '', NULL, '2023-04-04 17:00:52', NULL, 'New', 'Not Active', NULL, 'Offline', NULL, '2023-04-04', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  `elsleaverequests_leavetypeid` int(11) NOT NULL,
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

--
-- Dumping data for table `hrm_department`
--

INSERT INTO `hrm_department` (`dept_id`, `dept_name`, `status_id`) VALUES
(1, 'Admin', 2);

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

--
-- Dumping data for table `hrm_login`
--

INSERT INTO `hrm_login` (`log_id`, `log_email`, `log_pass`, `created_at`, `updated_at`) VALUES
(1, 'candidate@gmail.com', 'test@1', '2023-04-05 02:32:03', '2023-04-05 02:32:03');

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

--
-- Dumping data for table `payrollsalaries`
--

INSERT INTO `payrollsalaries` (`S_id`, `EMP_BADGE_ID`, `Name`, `BankAccountNo`, `Salary`, `attendance_allowance`, `punctuality_allowance`, `transport_allowance`, `fuel_allowance`, `fund`, `fund_month`, `fund_year`, `Salary_Comment`, `Date`, `Update_By`, `update_at`, `delete_status`) VALUES
(1, 1, 'Admin', '-', 0, 0, 0, 0, 0, 0, 0, '0', '-', '2023-04-04', NULL, '2023-04-04 22:05:40', 2);

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

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`tax_id`, `tax_startamount`, `tax_endamount`, `tax_taxamount`, `tax_percent`, `tax_startdate`, `tax_enddate`, `status_id`, `created_by`, `created_at`) VALUES
(1, 0, 600000, 0, '0', '2022-06', '2023-06', 2, 1, '0000-00-00 00:00:00'),
(2, 600000, 1200000, 0, '2.5', '2022-06', '2023-06', 2, 1, '0000-00-00 00:00:00'),
(3, 1200000, 2400000, 15000, '12.5', '2022-06', '2023-06', 2, 1, '0000-00-00 00:00:00'),
(4, 2400000, 3600000, 165000, '20', '2022-06', '2023-06', 2, 1, '0000-00-00 00:00:00'),
(5, 3600000, 6000000, 405000, '25', '2022-06', '2023-06', 2, 1, '0000-00-00 00:00:00'),
(6, 6000000, 12000000, 1005000, '32.5', '2022-06', '2023-06', 2, 1, '0000-00-00 00:00:00'),
(7, 12000000, 1200000000, 2955000, '35', '2022-06', '2023-06', 2, 1, '0000-00-00 00:00:00');

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
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `DESG_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `elsemployees`
--
ALTER TABLE `elsemployees`
  MODIFY `elsemployees_empid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `status_id` int(10) NOT NULL AUTO_INCREMENT;

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
  MODIFY `dept_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hrm_login`
--
ALTER TABLE `hrm_login`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `S_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
