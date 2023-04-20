-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2020 at 07:42 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khabarwala`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_language` varchar(255) DEFAULT 'Urdu',
  `post_title` longtext DEFAULT NULL,
  `post_description` longtext DEFAULT NULL,
  `postcategory_id` int(11) DEFAULT NULL,
  `post_videolink` longtext DEFAULT NULL,
  `post_important` datetime DEFAULT NULL,
  `uniquepostkey` int(11) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_language`, `post_title`, `post_description`, `postcategory_id`, `post_videolink`, `post_important`, `uniquepostkey`, `users_id`, `status_id`, `created_at`, `updated_at`, `updated_by`) VALUES
(1, 'Urdu', 'ڈکیتی کی واردات', 'نارتھ ناظم آباد بلاک Q میں ڈکیتی کی واردات، ڈاکو نقد اور موبائل فون چھین کر فرار،', 2, NULL, '2020-10-15 10:57:03', 7841, 1, 1, '2020-10-13 10:00:31', NULL, NULL),
(2, 'Urdu', 'پی ٹی آئی اور پیپلز پارٹی کے کارکنان کے درمیان تصادم', 'لانڈھی کے علاقے 36B میں پی ٹی آئی اور پیپلز پارٹی کے کارکنان کے درمیان تصادم،\r\n\r\nمتعدد افراد زخمی، علاقہ پولیس نے موقع پر پہنچ کر جھگڑا کرنے والے افراد کو حراست میں لے لیا،', 2, NULL, '2020-10-16 03:59:26', 3015, 1, 1, '2020-10-13 10:11:51', NULL, NULL),
(3, 'Urdu', 'رینجرز سندھ کی جانب سے بینظیر پارک پاک کالونی میں فری میڈیکل کیمپ کااہتمام', 'کراچی: رینجرز سندھ کی جانب سے بینظیر پارک پاک کالونی میں فری میڈیکل کیمپ کااہتمام\r\n\r\nعلاقے کے افراد کو مفت طبی سہولیات مہیا کی گئیں.\r\n\r\nجنرل فزیشن، میڈیکل اسپیشلسٹ، بچوں کے اسپیشلسٹ، آرتھوپیڈک، ماہرامراض قلب، اسکن اسپیشلسٹ، آنکھوں کے اسپیشلسٹ، لیڈی ڈاکٹرز اور رینجرز کے ڈاکٹرز موجود تھے۔ ترجمان\r\n\r\n1ہزار 523 مریضوں خواتین، بچے اور بزرگ کا معائنہ کیا اور مفت ادویات فراہم کیں۔ ترجمان رینجرز\r\n\r\nمیڈیکل کیمپ میں موبائل لیبارٹریز کے ذریعے مریضوں کے ایکسرے، ٹی بی، ہیپاٹائٹس کے ٹیسٹ بھی کیئے گئے۔ ترجمان رینجرز', 2, NULL, '2020-10-15 11:28:14', 9471, 1, 1, '2020-10-13 10:16:06', NULL, NULL),
(4, 'Urdu', 'ڈبل سواری پر پابندی', 'ڈبل سواری پر پابندی کا فیصلہ واپس، ہوم ڈیپارٹمنٹ کی جانب سے نوٹیفیکیشن جاری کردیا گیا۔', 2, NULL, '2020-10-16 12:05:14', 4491, 1, 1, '2020-10-13 10:17:24', NULL, NULL),
(5, 'Urdu', 'کراچی علماء کمیٹی کا ہنگامی اجلاس', 'کراچی علماء کمیٹی کا ہنگامی اجلاس\r\n\r\nحکومت اور ریاستی ادارے فی الفور مولانا عادل خان کے قاتلوں کو گرفتار کرکے منظر عام پر لائیں کراچی علماء کمیٹی\r\n\r\nتمام جید علماء کرام کو فول پروف سیکیورٹی فراہم کی جائے\r\n\r\nحکومت فرقہ واریت پھیلانے والے شرپسند افراد کی گرفتاری یقینی بنائے\r\n\r\n48 گھنٹوں میں قاتل گرفتار نہ ہوئے تو پہیہ جام ہڑتال کا اعلان کریں گے\r\n\r\nمولانا ڈاکٹر عادل خان شہید کا مشن جاری رکھا جائے گا\r\n\r\nجاری کردہ: کراچی علماء کمیٹی', 2, NULL, '2020-10-15 11:02:22', 6945, 1, 1, '2020-10-13 10:18:59', NULL, NULL),
(6, 'Urdu', 'لیاقت آباد سے لاپتہ ہونے والی بچی پولیس نے تلاش کرلی', 'لیاقت آباد سے لاپتہ ہونے والی بچی پولیس نے تلاش کرلی\r\n\r\nچار سالہ بچی لیاقت آباد سندھی ہوٹل کے پاس سے لاپتہ ہوئی تھی\r\n\r\nبچی کو والدہ کے حوالے کردیا گیا', 2, NULL, '2020-10-15 11:16:08', 8643, 1, 1, '2020-10-13 10:20:43', NULL, NULL),
(7, 'Urdu', 'معصوم بچے پر کتوں کا حملہ', 'ملیر گلشن داد رحیم سوسائٹی میں معصوم بچے پر کتوں کا حملہ\r\nواقعے کی سی سی ٹی وی نیوز کو موصول\r\nواقعہ اب سے کچھ دیر قبل 9 بجے پیش آیا\r\nویڈیو میں خاتون کو دو بچوں کے ساتھ گلی میں دیکھا جا سکتا ہے\r\nایک بچہ کھیلتا کودتا گلی کے درمیان میں آتا ہے\r\nبچے کو اکیلا دیکھ کر تین کتے اس پر جھپٹ پڑے\r\nآوارہ کتوں نے بچے کو مختلف جگہوں پر کاٹنے کی کوشش کی', 2, NULL, '2020-10-15 11:12:27', 1059, 1, 1, '2020-10-13 10:22:28', NULL, NULL),
(8, 'Urdu', 'علماء کمیٹی کی جانب سے ملک گیر پر امن ہڑتال کا اعلان!', 'علماء کمیٹی کی جانب سے ملک گیر پر امن ہڑتال کا اعلان!\r\n\r\nتمام مذاہبی جماعتیں مولانا عادل کے قاتلوں کی گرفتاریاں نا ہونے پر جمعہ کے روز پر امن ہڑتال کرکے حکومت کو اپنا احتجاج ریکارڈ کرائیں گے، ہڑتال کا اعلان کراچی کے ایک مقامی ہوٹل میں پریس کانفرنس کے ذریعے کیا گیا،', 2, NULL, '2020-10-15 11:02:55', 2068, 1, 1, '2020-10-13 10:23:46', NULL, NULL),
(9, 'English', 'Tanker driver self-immolates after being ‘tortured’ by excise police', 'A tanker driver died after allegedly setting himself on fire to protest against his treatment by the excise police on Thursday.\r\n\r\nThe driver, Matiullah Khan, was brought to the burns ward at Dr Ruth Pfau Civil Hospital Karachi in critical condition on Wednesday night, with burn injuries on 80 per cent of his body.\r\n\r\nDozens of tanker drivers staged a protest at Bilawal Chowrangi, blocking the roads with their vehicles.', 2, NULL, '2020-10-16 04:08:21', 8062, 1, 1, '2020-10-15 10:19:16', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `postact`
--

CREATE TABLE `postact` (
  `postact_id` int(11) NOT NULL,
  `postact_userip` varchar(255) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `postact_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `postcategory`
--

CREATE TABLE `postcategory` (
  `postcategory_id` int(11) NOT NULL,
  `postcategory_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postcategory`
--

INSERT INTO `postcategory` (`postcategory_id`, `postcategory_name`) VALUES
(1, 'Home'),
(2, 'Pakistan'),
(3, 'International'),
(4, 'Bussiness'),
(5, 'Sports'),
(6, 'SCI & TECH'),
(7, 'TV Shows'),
(8, 'Lifestyle'),
(9, 'Health');

-- --------------------------------------------------------

--
-- Table structure for table `postcomment`
--

CREATE TABLE `postcomment` (
  `postcomment_id` int(11) NOT NULL,
  `postcomment_comment` longtext DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `siteusers_email` text DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `postimage`
--

CREATE TABLE `postimage` (
  `postimage_id` int(11) NOT NULL,
  `postimage_name` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postimage`
--

INSERT INTO `postimage` (`postimage_id`, `postimage_name`, `status_id`, `post_id`) VALUES
(1, '2020-10-13_28.142857142857_0_.jpeg', 1, 3),
(2, '2020-10-13_130_1_.jpeg', 1, 3),
(3, '2020-10-13_8.5714285714286_2_.jpeg', 1, 3),
(4, '2020-10-13_99.285714285714_3_.jpeg', 1, 3),
(5, '2020-10-13_59.714285714286_4_.jpeg', 1, 3),
(6, '2020-10-13_83_5_.jpeg', 1, 3),
(7, '2020-10-13_90.857142857143_6_.jpeg', 1, 3),
(8, '2020-10-13_62.857142857143_0_.jpeg', 1, 4),
(9, '2020-10-13_27.142857142857_0_.jpeg', 1, 5),
(10, '2020-10-13_93_0_.jpeg', 1, 6),
(11, '2020-10-13_103.28571428571_1_.jpeg', 1, 6),
(12, '2020-10-13_52.142857142857_0_.jpeg', 1, 8),
(13, '2020-10-15_20.714285714286_0_.jpeg', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `postvideo`
--

CREATE TABLE `postvideo` (
  `postvideo_id` int(11) NOT NULL,
  `video_name` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postvideo`
--

INSERT INTO `postvideo` (`postvideo_id`, `video_name`, `status_id`, `post_id`) VALUES
(1, '2020-10-13_7.8571428571429_0_.mp4', 1, 1),
(2, '2020-10-13_98.142857142857_0_.mp4', 1, 2),
(3, '2020-10-13_45_1_.mp4', 1, 2),
(4, '2020-10-13_34.428571428571_2_.mp4', 1, 2),
(5, '2020-10-13_57.857142857143_0_.mp4', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `siteusers`
--

CREATE TABLE `siteusers` (
  `siteusers_id` int(11) NOT NULL,
  `siteusers_name` text DEFAULT NULL,
  `siteusers_email` text DEFAULT NULL,
  `siteusers_image` text DEFAULT NULL,
  `status_id` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `users_name` text DEFAULT NULL,
  `users_email` text DEFAULT NULL,
  `users_password` text DEFAULT NULL,
  `users_image` text DEFAULT 'no_image.jpg',
  `status_id` int(11) DEFAULT NULL,
  `verify_token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `users_name`, `users_email`, `users_password`, `users_image`, `status_id`, `verify_token`) VALUES
(1, 'Khabarwala', 'muhammdmehroz786@gmail.com', 'abc123', '2020-10-08_62_Khabarwala_.jpeg', 1, 'k7U34WuGQhwLYhIciU1Up0V0FT2yxt0J4FTU8BveIqlxVzp3Xjtk9R4vm3HnaYKky7IzRob5fapgwyji8ve8y9PcMpYvomfxuBGM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `postact`
--
ALTER TABLE `postact`
  ADD PRIMARY KEY (`postact_id`);

--
-- Indexes for table `postcategory`
--
ALTER TABLE `postcategory`
  ADD PRIMARY KEY (`postcategory_id`);

--
-- Indexes for table `postcomment`
--
ALTER TABLE `postcomment`
  ADD PRIMARY KEY (`postcomment_id`);

--
-- Indexes for table `postimage`
--
ALTER TABLE `postimage`
  ADD PRIMARY KEY (`postimage_id`);

--
-- Indexes for table `postvideo`
--
ALTER TABLE `postvideo`
  ADD PRIMARY KEY (`postvideo_id`);

--
-- Indexes for table `siteusers`
--
ALTER TABLE `siteusers`
  ADD PRIMARY KEY (`siteusers_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `postact`
--
ALTER TABLE `postact`
  MODIFY `postact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postcategory`
--
ALTER TABLE `postcategory`
  MODIFY `postcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `postcomment`
--
ALTER TABLE `postcomment`
  MODIFY `postcomment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postimage`
--
ALTER TABLE `postimage`
  MODIFY `postimage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `postvideo`
--
ALTER TABLE `postvideo`
  MODIFY `postvideo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `siteusers`
--
ALTER TABLE `siteusers`
  MODIFY `siteusers_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
