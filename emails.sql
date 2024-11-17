-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2024 at 07:04 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emails`
--

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `ConfigsId` int(100) NOT NULL,
  `ConfigGroupName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`ConfigsId`, `ConfigGroupName`) VALUES
(1, 'WORK_GROUP'),
(2, 'LEAD_STAGES'),
(5, 'PROJECT_TYPES'),
(6, 'LEAD_PERIORITY_LEVEL'),
(7, 'CALL_STATUS'),
(9, 'LEAD_SOURCES'),
(10, 'CALL_STATUS_SUB_FIELDS'),
(11, 'VISITOR_TYPES'),
(12, 'VISITOR_STATUS'),
(13, 'VISIT_TYPE');

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `configurationsid` int(100) NOT NULL,
  `configurationname` varchar(50) NOT NULL,
  `configurationvalue` varchar(9999) NOT NULL,
  `configurationtype` varchar(30) NOT NULL DEFAULT 'text',
  `configurationsupportivetext` varchar(1000) NOT NULL DEFAULT 'null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`configurationsid`, `configurationname`, `configurationvalue`, `configurationtype`, `configurationsupportivetext`) VALUES
(1, 'APP_NAME', 'ROOF N ASSETS INFRA PVT. LTD.', 'TEXT', 'null'),
(2, 'TAGLINE', 'LEADS 365', 'text', 'null'),
(3, 'OWNER_NAME', 'Navix Consultancy Services', 'text', 'null'),
(4, 'PRIMARY_PHONE', '-', 'phone', 'null'),
(5, 'PRIMARY_EMAIL', 'info@roofandassets.com', 'email', 'null'),
(6, 'SHORT_DESCRIPTION', 'bVVObWhBaDNwYnZoTzdBamdKM1Q0bmNtcCs0VS9kdG9adlhSb0dUZWluUjRCNENjRkl2YnhFYXRBdHByNUNZYw==', 'text', 'null'),
(7, 'PRIMARY_ADDRESS', 'N2w0bUJSKzBzK0RlemZpM2VPMExUVmxxa1V3ekNYWUhwbEhsakZ0d2dHM0FLVkI4YjR6Q1NDRDJCc1h0aG1mMVZhajh1K1Zmb25HUWlhdnBBVUJWdDFWbmV5RVJ3SWgxZmkybWRadnVYQ0llQlJCNkgxVElucDV0OGNhbFRyYy9Bc1BzaUdjb2F5aE51ME9ZWG1Xb3FOYm1QdWtheDV4VjhpUmUyTjhZYWZFPQ==', 'address', 'null'),
(8, 'PRIMARY_MAP_LOCATION_LINK', 'M3N6cEE1V0syMjBKWE9JamJ0d2dERVk0aGNLSGw4cW5SUjYyKzY1NWNvQzVtcmZuc1JkVS81dTRsbFZCaGFuU0ZTVDZ2N1hMNDVuVzNoV3ROaEErZGJRa2hzV2FJbDVjREpGZFo2OUZ0R0pKbnlkNUtuZzFVLzRqdmwycWhnYlZWd0ZGUThnMHA5VE9TdnYwYnpSblZSenlDbUJjNVdFc0xaZEd2Mng5NVBqVnlTYThjZitzaE5ZL04vdU4wdTZnQk1rS3FORnJhYVo5QVBTbzJHczhIaEJTcVgzMStoOHpDM1prRURkV0Z0UFJPMkcyalQ4Mit1Uk5tRWJYUzYrK091R1BkSVR1N3R4ZVpGUTJTSStoM0xCN2xJeko0NXVNMit4Ni9sdyt0M0t2TU45RG5GSXh4U0tmbjRqdzkxcUczNHFlNkhZZHV1SFZTZG9Yc2cwNEpSb0pnbFA5bmlkRk91aHJ2L2NxT0dWUGpTU1A4dEI1MWVOTDVnc05pZlhSYVlQbFdGbVZiQnlQOWk3UE54SFptYjlmUkQ2eEt4SFJhY1gwY1FKd0lXWT0=', 'map', 'null'),
(9, 'SENDER_MAIL_ID', 'info@roofandassets.com', 'email', 'null'),
(10, 'RECEIVER_MAIL', 'info@roofandassets.com', 'email', 'null'),
(11, 'REPLY_TO', 'not available', 'email', 'null'),
(12, 'SUPPORT_MAIL', 'support@roofandassets.com', 'email', 'null'),
(13, 'ENQUIRY_MAIL', 'info@roofandassets.com', 'email', 'null'),
(14, 'ADMIN_MAIL', 'info@roofandassets.com', 'text', 'null'),
(15, 'SMS_API_KEY', 'null', 'text', 'null'),
(16, 'DOWNLOAD_ANDROID_APP_LINK', 'not available', 'link', 'null'),
(17, 'DOWNLOAD_IOS_APP_LINK', 'DOMAIN', 'link', 'null'),
(18, 'DOWNLOAD_BROCHER_LINK', 'DOMAIN\r\n', 'link', 'null'),
(20, 'CONTROL_WORK_ENV', 'DEV', 'boolean', 'dev, prod'),
(21, 'CONTROL_SMS', 'false', 'boolean', 'true, false'),
(23, 'CONTROL_MAILS', 'true', 'boolean', 'true, false'),
(24, 'CONTROL_NOTIFICATION', 'true', 'boolean', 'true, false'),
(25, 'CONTROL_MSG_DISPLAY_TIME', '4500', 'number', '1000, 10000'),
(26, 'CONTROL_APP_LOGS', 'false', 'boolean', 'true, false'),
(27, 'APP_LOGO', 'ROOF_N_ASSETS_INFRA_PVT._LTD.__12_Sep_2023_10_09_40_68799152721_.jpg', 'img', 'null'),
(28, 'SMS_OTP_TEMP_ID', 'null', 'text', 'null'),
(29, 'PASS_RESET_OTP_TEMP', 'null', 'text', 'null'),
(30, 'SMS_SENDER_ID', 'null', 'text', 'null'),
(31, 'PG_PROVIDER', 'RAZORAPAY', 'text', 'null'),
(32, 'PG_MODE', 'jhvjhdsbvj', 'text', 'null'),
(33, 'MERCHENT_ID', 'jbcjhbdbfm b', 'text', 'null'),
(34, 'MERCHANT_KEY', 'qkjbdjkfbvjdbvkdbkjvbdkjbjkbdjkfd vjdbvgjhdfhbvdf', 'text', 'null'),
(35, 'ONLINE_PAYMENT_OPTION', 'true', 'boolean', 'true, false'),
(36, 'CONTROL_NOTIFICATION_SOUND', 'true', 'boolean', 'true, false'),
(37, 'FINANCIAL_YEAR', 'September - August', 'text', 'null'),
(38, 'GST_NO', '06AALCR4165K1ZZ', 'text', 'null'),
(39, 'COMPANY_TYPE', 'PUBLISHING', 'text', 'null'),
(40, 'LOGIN_BG_IMAGE', 'ROOF_&_ASSETS_INFRA_Logo_26_Sep_2022_10_09_48_61750536552_.gif', 'text', 'null'),
(41, 'PRIMARY_AREA', 'M3RKYjIyemJJcnFXZ2xLdzZINzdMNVNqRVJFbkY2ZnpTQ1BmNFdQcUgrMD0=', 'text', 'null'),
(42, 'PRIMARY_CITY', 'Q1o2a0w2NEpQOEFLTHA3ZHdNYjh4UT09', 'text', 'null'),
(43, 'PRIMARY_STATE', 'Rm9nUDlDRTVkV20zWm8wMmEvMEpPZz09', 'text', 'null'),
(44, 'PRIMARY_COUNTRY', 'MmtSc3hhcXA1OU1mNjFaYUJ6VVhIZz09', 'text', 'null'),
(45, 'PRIMARY_PINCODE', 'RjV6emhnOUxVeC9ic29tQ25BV211QT09', 'text', 'null'),
(46, 'TAX_NO', 'DELA61323D1', 'text', 'null'),
(47, 'APP_THEME', 'facebook', 'text', 'null'),
(48, 'DEFAULT_RECORD_LISTING', '10', 'text', 'null'),
(49, 'WEBSITE', 'false', 'text', 'null'),
(50, 'APP', 'false', 'text', 'null'),
(51, 'MAX_ORDER_QTY', '', 'text', 'null'),
(52, 'MIN_ORDER_QTY', '', 'text', 'null'),
(53, 'GOOGLE_MAP_API', 'AIzaSyC2Xh8p7kp8B4VZWFonkjVvwfwmPT0A_Hw', 'text', 'null'),
(54, 'MINIMUM_ATTANDANCE_RANGE', '5', 'text', 'null'),
(55, 'OFFICE_START_TIME', '10:00', 'text', 'null'),
(56, 'OFFICE_MAX_START_TIME', '10:15', 'text', 'null'),
(57, 'OFFICE_HALF_DAY_ALLOWED', '16:30', 'text', 'null'),
(58, 'MAXIMUM_ALLOWED_LATE_CHECK_IN', '3', 'text', 'null'),
(59, 'OFFICE_LUNCH_START_TIME', '13:00', 'text', 'null'),
(60, 'OFFICE_END_TIME', '18:30', 'text', 'null'),
(61, 'SHORT_LEAVE_MAX_TIME', '16:30', 'text', 'null'),
(62, 'OFFICE_LUNCH_TIME_IN_MINUTES', '40', 'text', 'null'),
(63, 'WORKING_DAYS_IN_MONTH', '0', 'text', 'null'),
(64, 'AUTO_MONTHLY_PAYROLL_COSING_DATE', '', 'text', 'null'),
(65, 'MAXIMUM_SHORT_LEAVE_IN_MONTH', '3', 'text', 'null'),
(66, 'DEDUCTION_AMOUNT_ON_PER_LATE', '150', 'text', 'null'),
(67, 'EMP_CODE', 'RNA', 'text', 'null'),
(68, 'WEEKLY_OFF_DAY_OF_THE_MONTH', '1', 'text', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `config_email_template_headers`
--

CREATE TABLE `config_email_template_headers` (
  `config_email_template_csv_header_id` int(10) NOT NULL,
  `config_email_template_main_id` int(10) NOT NULL,
  `config_email_template_header_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_email_template_headers`
--

INSERT INTO `config_email_template_headers` (`config_email_template_csv_header_id`, `config_email_template_main_id`, `config_email_template_header_name`) VALUES
(131, 30, '$BHAIKANAAM'),
(132, 30, '$LOGINURL'),
(133, 30, '$USERNAME'),
(134, 30, '$PASSWORD'),
(135, 30, '$MEPCODE'),
(145, 29, '$FULLNAME'),
(146, 29, '$EMAILID'),
(147, 29, '$PASSWORD'),
(156, 31, '$FULLNAME'),
(157, 31, '$CODE'),
(158, 32, '$FULLNAME'),
(164, 33, '$CUSTOMERNAME'),
(165, 33, '$APPLICATIONNUMBER'),
(166, 33, '$PROJECTNAME'),
(180, 34, '$CUSTOMERNAME'),
(181, 34, '$APPLICATIONNUMBER'),
(182, 34, '$PROJECTNAME'),
(183, 34, '$RMNAME'),
(184, 34, '$RMPHONE'),
(185, 35, '$FULLNAME'),
(186, 35, '$USERNAME'),
(187, 35, '$PASSWORD'),
(188, 35, '$REGNO'),
(189, 35, '$REGDATE'),
(190, 35, '$FULLADDRESS'),
(191, 36, '$FULLNAME'),
(192, 36, '$PHONENUMBER'),
(196, 37, '$FULLNAME'),
(197, 37, '$REGNO'),
(198, 37, '$RAJUBHAI'),
(199, 37, '$EMAILID'),
(201, 38, '$FULLNAME'),
(202, 38, '$PROJECTNAME'),
(203, 38, '$UNITNUMBER'),
(204, 38, '$EMAILID');

-- --------------------------------------------------------

--
-- Table structure for table `config_holidays`
--

CREATE TABLE `config_holidays` (
  `ConfigHolidayid` int(10) NOT NULL,
  `ConfigHolidayName` varchar(100) NOT NULL,
  `ConfigHolidayFromDate` varchar(25) NOT NULL,
  `ConfigHolidayToDate` varchar(25) NOT NULL,
  `ConfigHolidayNotes` varchar(1000) NOT NULL,
  `ConfigHolidayMediaImage` varchar(1000) NOT NULL,
  `ConfigHolidayCreatedBy` varchar(25) NOT NULL,
  `ConfigHolidayMailStatus` varchar(10) NOT NULL,
  `ConfigHolidayCreatedAt` varchar(25) NOT NULL,
  `ConfigHolidayUpdatedAt` varchar(25) NOT NULL,
  `ConfigHolidayUpdatedBy` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_holidays`
--

INSERT INTO `config_holidays` (`ConfigHolidayid`, `ConfigHolidayName`, `ConfigHolidayFromDate`, `ConfigHolidayToDate`, `ConfigHolidayNotes`, `ConfigHolidayMediaImage`, `ConfigHolidayCreatedBy`, `ConfigHolidayMailStatus`, `ConfigHolidayCreatedAt`, `ConfigHolidayUpdatedAt`, `ConfigHolidayUpdatedBy`) VALUES
(5, 'Ram Navami', '2023-03-28', '', 'MEpLZVpSb1dndkNmVUJETHp5WDlGQlA2SG5oY3M2WUpuYjAxUHhrUWdKQT0=', '', '4', 'Active', '2023-03-28 04:12:52 PM', '2023-03-28 04:13:56 PM', 4),
(6, 'Rakshabandhan', '2023-08-30', '', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '', '1', 'Inactive', '2023-08-29 02:31:37 pm', '2023-08-29 02:31:37 pm', 1),
(7, 'Diwali', '2023-11-12', '', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '', '148', 'Inactive', '2023-09-07 04:24:45 PM', '2023-09-07 04:24:45 PM', 148),
(8, 'WEEKLY OFF', '2022-12-05', '', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '', '1', 'Active', '2024-01-05 03:44:42 PM', '2024-01-05 03:44:42 PM', 1),
(9, 'WEEKLY OFF', '2023-12-11', '', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '', '1', 'Active', '2024-01-05 03:45:12 PM', '2024-01-05 03:45:12 PM', 1),
(12, 'WEEKLY OFF', '2023-12-25', '', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '', '1', 'Active', '2024-01-05 03:46:39 PM', '2024-01-05 03:46:39 PM', 1),
(13, 'WEEKLY OFF', '2023-12-04', '', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '', '1', 'Active', '2024-01-05 03:46:57 PM', '2024-01-05 03:46:57 PM', 1),
(14, 'NEW YEAR HOLIDAY', '2023-12-31', '', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '', '1', 'Active', '2024-01-05 03:57:35 PM', '2024-01-05 03:57:35 PM', 1),
(20, 'Monday - WEEKLY-OFF', '2024-01-01', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-01-05 04:15:38 PM', '2024-01-05 04:15:38 PM', 0),
(21, 'Monday - WEEKLY-OFF', '2024-01-08', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-01-05 04:15:38 PM', '2024-01-05 04:15:38 PM', 0),
(22, 'Monday - WEEKLY-OFF', '2024-01-15', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-01-05 04:15:38 PM', '2024-01-05 04:15:38 PM', 0),
(23, 'Monday - WEEKLY-OFF', '2024-01-22', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-01-05 04:15:38 PM', '2024-01-05 04:15:38 PM', 0),
(24, 'Monday - WEEKLY-OFF', '2024-01-29', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-01-05 04:15:38 PM', '2024-01-05 04:15:38 PM', 0),
(25, 'Monday - WEEKLY-OFF', '2024-02-05', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-02-01 12:00:02 AM', '2024-02-01 12:00:02 AM', 0),
(26, 'Monday - WEEKLY-OFF', '2024-02-12', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-02-01 12:00:02 AM', '2024-02-01 12:00:02 AM', 0),
(27, 'Monday - WEEKLY-OFF', '2024-02-19', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-02-01 12:00:02 AM', '2024-02-01 12:00:02 AM', 0),
(28, 'Monday - WEEKLY-OFF', '2024-02-26', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-02-01 12:00:02 AM', '2024-02-01 12:00:02 AM', 0),
(29, 'REPUBLIC DAY', '2024-01-26', '', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '', '219', 'Active', '2024-02-01 11:55:57 AM', '2024-02-01 11:59:38 AM', 219),
(30, 'Monday - WEEKLY-OFF', '2024-03-04', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-03-01 12:00:01 AM', '2024-03-01 12:00:01 AM', 0),
(31, 'Monday - WEEKLY-OFF', '2024-03-11', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-03-01 12:00:01 AM', '2024-03-01 12:00:01 AM', 0),
(32, 'Monday - WEEKLY-OFF', '2024-03-18', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-03-01 12:00:01 AM', '2024-03-01 12:00:01 AM', 0),
(33, 'Monday - WEEKLY-OFF', '2024-03-25', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-03-01 12:00:01 AM', '2024-03-01 12:00:01 AM', 0),
(34, 'Monday - WEEKLY-OFF', '2024-04-01', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-04-01 12:00:02 AM', '2024-04-01 12:00:02 AM', 0),
(35, 'Monday - WEEKLY-OFF', '2024-04-08', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-04-01 12:00:02 AM', '2024-04-01 12:00:02 AM', 0),
(36, 'Monday - WEEKLY-OFF', '2024-04-15', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-04-01 12:00:02 AM', '2024-04-01 12:00:02 AM', 0),
(37, 'Monday - WEEKLY-OFF', '2024-04-22', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-04-01 12:00:02 AM', '2024-04-01 12:00:02 AM', 0),
(38, 'Monday - WEEKLY-OFF', '2024-04-29', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-04-01 12:00:02 AM', '2024-04-01 12:00:02 AM', 0),
(39, 'Monday - WEEKLY-OFF', '2024-05-06', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-05-01 12:00:02 AM', '2024-05-01 12:00:02 AM', 0),
(40, 'Monday - WEEKLY-OFF', '2024-05-13', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-05-01 12:00:02 AM', '2024-05-01 12:00:02 AM', 0),
(41, 'Monday - WEEKLY-OFF', '2024-05-20', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-05-01 12:00:02 AM', '2024-05-01 12:00:02 AM', 0),
(42, 'Monday - WEEKLY-OFF', '2024-05-27', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-05-01 12:00:02 AM', '2024-05-01 12:00:02 AM', 0),
(43, 'Monday - WEEKLY-OFF', '2024-06-03', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-06-01 11:12:46 AM', '2024-06-01 11:12:46 AM', 0),
(44, 'Monday - WEEKLY-OFF', '2024-06-10', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-06-01 11:12:46 AM', '2024-06-01 11:12:46 AM', 0),
(45, 'Monday - WEEKLY-OFF', '2024-06-17', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-06-01 11:12:46 AM', '2024-06-01 11:12:46 AM', 0),
(46, 'Monday - WEEKLY-OFF', '2024-06-24', '', 'bHczSkNkanJLd1VyKzBhNW5mbjQ1bVdGeGIzYVNQcVBKbkV4VDdFNGVBbHFTVmQzV1B1ZExKVERkazQvdE9pOA==', '', '0', '', '2024-06-01 11:12:46 AM', '2024-06-01 11:12:46 AM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `config_locations`
--

CREATE TABLE `config_locations` (
  `config_location_id` int(10) NOT NULL,
  `config_location_name` varchar(25) NOT NULL,
  `config_location_address` varchar(255) NOT NULL,
  `config_location_Latitude` varchar(25) NOT NULL,
  `config_location_Longitude` varchar(25) NOT NULL,
  `config_location_status` int(1) NOT NULL,
  `config_location_created_at` varchar(25) NOT NULL,
  `config_location_updated_at` varchar(25) NOT NULL,
  `config_location_created_by` int(10) NOT NULL,
  `config_location_updated_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_locations`
--

INSERT INTO `config_locations` (`config_location_id`, `config_location_name`, `config_location_address`, `config_location_Latitude`, `config_location_Longitude`, `config_location_status`, `config_location_created_at`, `config_location_updated_at`, `config_location_created_by`, `config_location_updated_by`) VALUES
(1, 'NOIDA', 'L2pVb2Z2cjhxRVdYUUhlbmVIOHJpRXFRcG40bUhGL1FDUDZhMHp6U3d3OTgxNTlFV2l2R0NybzB5YkxTZnVKRg==', '28.627348', '77.380244', 1, '2023-05-10 05:09:48 pm', '2023-08-29 02:15:38 pm', 1, 1),
(2, 'GURGAON', 'bmwvMkt0VGRXMjZsY0FEaTdHODZ3YnpFNUIrb2FrbGVOQkdzQ2R0S0xrVklYY3NlVm5TK21CN3EzMjFhYTRsWnk5VXpSdnBPeVE5UTZET2RmNWhRMlM5WjNsVE1helZJc2xQK0lZbXpWK0U9', '28.6124729', '77.377668', 1, '2023-05-10 05:11:38 pm', '2023-08-26 06:01:55 pm', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `config_mail_sender`
--

CREATE TABLE `config_mail_sender` (
  `config_mail_sender_id` int(10) NOT NULL,
  `config_mail_sender_host` varchar(255) NOT NULL,
  `config_mail_sender_username` varchar(100) NOT NULL,
  `config_mail_sender_password` varchar(50) NOT NULL,
  `config_mail_sender_port` varchar(10) NOT NULL,
  `config_mail_sent_from` varchar(100) NOT NULL,
  `config_mail_send_limit` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_mail_sender`
--

INSERT INTO `config_mail_sender` (`config_mail_sender_id`, `config_mail_sender_host`, `config_mail_sender_username`, `config_mail_sender_password`, `config_mail_sender_port`, `config_mail_sent_from`, `config_mail_send_limit`) VALUES
(1, 'smtp.hostinger.com', 'no-reply@roofnassets.com', 'Navix@9810895713', '465', 'no-reply@roofnassets.com', 0),
(4, 'smtp.hostinger.com', 'development@navix.in', 'Navix@1800', '465', 'development@navix.in', 3000),
(5, 'smtp.hostinger.com', 'gauravsinghigc@navix.in', 'Navix@1800', '465', 'gauravsinghigc@navix.in', 3000),
(7, 'smtp.hostinger.com', 'accounts@navix.in', 'Navix@1800', '465', 'accounts@navix.in', 500),
(8, 'smtp.hostinger.com', 'noreply@navix.in', 'Navix@1800', '465', 'noreply@navix.in', 3000),
(9, 'smtp.hostinger.com', 'support@haryanaaffordableshops.org', 'Ra9891Ra@', '465', 'support@haryanaaffordableshops.org', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `config_mail_templates`
--

CREATE TABLE `config_mail_templates` (
  `config_mail_template_id` int(10) NOT NULL,
  `config_mail_template_name` varchar(500) NOT NULL,
  `config_mail_template_ref_no` varchar(500) NOT NULL,
  `config_mail_template_content` longtext NOT NULL,
  `config_mail_template_created_by` int(10) NOT NULL,
  `config_mail_template_created_at` varchar(45) NOT NULL,
  `config_mail_template_status` int(2) NOT NULL,
  `config_mail_template_updated_by` int(10) NOT NULL,
  `config_mail_template_updated_at` varchar(45) NOT NULL,
  `config_mail_template_subject` varchar(500) NOT NULL,
  `config_email_template_type` varchar(20) NOT NULL,
  `config_mail_template_creative` varchar(10000) NOT NULL,
  `config_mail_template_open_at` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_mail_templates`
--

INSERT INTO `config_mail_templates` (`config_mail_template_id`, `config_mail_template_name`, `config_mail_template_ref_no`, `config_mail_template_content`, `config_mail_template_created_by`, `config_mail_template_created_at`, `config_mail_template_status`, `config_mail_template_updated_by`, `config_mail_template_updated_at`, `config_mail_template_subject`, `config_email_template_type`, `config_mail_template_creative`, `config_mail_template_open_at`) VALUES
(26, 'HSVMNBDNM', 'HSVMNBDNM', '&lt;p&gt;hey $CustomerName,&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;You registration id completed. Your unique acknowledge code is $RegistrationAcknowledgeCode.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Thanks&lt;/p&gt;\r\n&lt;p&gt;Gaurav Singh&lt;/p&gt;', 1, '2024-05-24 11:40:27 AM', 1, 1, '2024-05-24 11:40:27 AM', 'Registration Done -  $RunningDate for $ProjectName ', 'MODULE_VARIABLES', '', ''),
(27, 'TEMPLATE TEST NAME', 'TEMPLATE_TEST_NAME', '&lt;p&gt;Hey &lt;strong&gt;$FullName&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;This is testing email template for you. testing csv headers are&lt;/p&gt;\r\n&lt;p&gt;Name: $FullName&lt;/p&gt;\r\n&lt;p&gt;EmailId: $EmailId&lt;/p&gt;\r\n&lt;p&gt;Phone Number: $PhoneNumber&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2024-05-23 02:03:41 PM', 1, 1, '2024-05-23 02:03:41 PM', 'TEST EMAIL FOR CUSTOM VARIABLE - $FullName', 'CUSTOM_VARIABLES', '', ''),
(28, 'TEMPLATE TEST NAME', 'TEMPLATE_TEST_NAME', '&lt;p&gt;Hey &lt;strong&gt;$FullName&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;This is testing email template for you. testing csv headers are&lt;/p&gt;\r\n&lt;p&gt;Name: $FullName&lt;/p&gt;\r\n&lt;p&gt;EmailId: $EmailId&lt;/p&gt;\r\n&lt;p&gt;Phone Number: $PhoneNumber&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2024-05-23 04:50:58 PM', 1, 1, '2024-05-23 04:50:58 PM', 'TEST EMAIL FOR CUSTOM VARIABLE - $FullName', 'CUSTOM_VARIABLES', '', ''),
(29, 'APNA-LEAD WELCOME TEMPLATE', 'APNA-LEAD_WELCOME_TEMPLATE', '&lt;p&gt;Hey &lt;strong&gt;$FULLNAME,&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Welcome to apnalead.com. Your account is created at successfully! Please login into your account.&lt;/p&gt;\r\n&lt;p&gt;Login details are;&lt;/p&gt;\r\n&lt;p&gt;Username: $EMAILID&lt;/p&gt;\r\n&lt;p&gt;Password : $PASSWORD&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Note:&amp;nbsp;&lt;/strong&gt;Don&#039;t forget to reset password after login!&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Best Regards&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Gaurav Singh&lt;/p&gt;', 1, '2024-05-27 12:48:58 PM', 1, 1, '2024-05-27 12:48:58 PM', 'Welcome $FULLNAME to APNA LEAD!', 'CUSTOM_VARIABLES', '', ''),
(31, 'Bulk Email Module ki testing kr raha hu', 'BULK_EMAIL_MODULE_KI_TESTING_KR_RAHA_HU', '&lt;p&gt;Hello &lt;strong&gt;$FULLNAME,&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Ye ek testing mail hain jo ki bulk email sender ko testing ke time bheja ja raha hain. Apko agr ye mail receive hua hain to please app apna unique code ko iss per reply navix365@gmail.com me sent kare.&lt;/p&gt;\r\n&lt;p&gt;Ye template dynamic hain and isme filled data bhi dynamically pick hua hain jo ki ek csv file se upload hua hain.&lt;/p&gt;\r\n&lt;p&gt;Note: Please check attachements, have you receive any attachements or not!&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Your unique code is : $CODE&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Thanks&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Gaurav Singh&lt;/p&gt;', 1, '2024-05-27 03:56:14 PM', 1, 1, '2024-05-27 03:56:14 PM', 'Bhai $FULLNAME - Reply if received (WITH ATTACHEMENTS)', 'CUSTOM_VARIABLES', '', ''),
(32, 'Test Name', 'TEST_NAME', '&lt;p&gt;Hey $FULLNAME,&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2024-05-28 09:28:30 AM', 1, 1, '2024-05-28 09:28:30 AM', 'test name $FULLNAME', 'CUSTOM_VARIABLES', '', ''),
(33, 'RERA CERTIFICATE', 'RERA_CERTIFICATE', '&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Dear $CUSTOMERNAME,&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Application S. No. $APPLICATIONNUMBER&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Congratulations, your application serial&amp;nbsp;&lt;strong&gt;number $APPLICATIONNUMBER &lt;/strong&gt;has been provisionally allotted a Shop in the project &quot;$PROJECTNAME&lt;strong&gt;&quot;&amp;nbsp;Under&amp;nbsp;&quot;Affordable Policy&quot;&lt;/strong&gt;&amp;nbsp;Sector 6 Sohna, Gurugram Haryana, INDIA. The project&#039;s Haryana RERA (HRERA) number is RC/REP/HARERA/GGM/2017/180&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #2c363a; background: white; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;The Unit&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;has been provisionally allotted to you whereas you are requested to complete the 10% amount for the allotment as per the payment schedule. In case your payment is clear, Your Welcome Letter&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;will be issued in 7 working days.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;u&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Please find below the bank details:&lt;/span&gt;&lt;/u&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Account Name -&amp;nbsp;Arete India Projects Private Limited&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Account no&amp;nbsp;- 38268395311&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Bank Name &amp;ndash;&amp;nbsp;STATE&amp;nbsp;BANK&amp;nbsp;OF INDIA&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Branch-&amp;nbsp;New Delhi 110005&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;IFSC code -&amp;nbsp;SBIN0009950&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Please submit the below-mentioned documents along with the duly filled application form. Kindly ignore it if you have already submitted it.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 40.8pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;&quot;&gt;&lt;!-- [if !supportLists]--&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: Verdana; mso-bidi-font-family: Verdana; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;1.&lt;span style=&quot;font: 7.0pt &#039;Times New Roman&#039;;&quot;&gt;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;!--[endif]--&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Photograph&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 40.8pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;&quot;&gt;&lt;!-- [if !supportLists]--&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: Verdana; mso-bidi-font-family: Verdana; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;2.&lt;span style=&quot;font: 7.0pt &#039;Times New Roman&#039;;&quot;&gt;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;!--[endif]--&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;PAN Card&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 40.8pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;&quot;&gt;&lt;!-- [if !supportLists]--&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: Verdana; mso-bidi-font-family: Verdana; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;3.&lt;span style=&quot;font: 7.0pt &#039;Times New Roman&#039;;&quot;&gt;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;!--[endif]--&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Address Proof&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;For any query, please contact Your&amp;nbsp;&lt;strong&gt;Relationship Manager&lt;/strong&gt;:&lt;strong&gt; $&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;color: #205a24; font-family: Verdana, sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 13.3333px;&quot;&gt;&lt;strong&gt;RELATIONSHIPMANAGERNAME&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;strong style=&quot;color: #205a24; font-family: Verdana, sans-serif; font-size: 10pt;&quot;&gt;: $&lt;/strong&gt;&lt;span style=&quot;color: #205a24; font-family: Verdana, sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 13.3333px;&quot;&gt;&lt;strong&gt;RELATIONMANAGERPHONENUMBER&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;strong style=&quot;color: #205a24; font-family: Verdana, sans-serif; font-size: 10pt;&quot;&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; background: #F1C40F; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Note : Subject To Clearance.&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;', 1, '2024-05-28 01:08:30 PM', 1, 1, '2024-05-28 01:08:30 PM', 'Congratulations $APPLICATIONNUMBER, $CUSTOMERNAME', 'CUSTOM_VARIABLES', '', ''),
(34, 'CERTIFICATE (TEST)', 'CERTIFICATE_(TEST)', '&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Dear $CUSTOMERNAME,&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Application S. No. $APPLICATIONNUMBER&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Congratulations, your application serial&amp;nbsp;&lt;strong&gt;number $APPLICATIONNUMBER&amp;nbsp;&lt;/strong&gt;has been provisionally allotted a Shop in the project &quot;$PROJECTNAME&lt;strong&gt;&quot;&amp;nbsp;Under&amp;nbsp;&quot;Affordable Policy&quot;&lt;/strong&gt;&amp;nbsp;Sector 6 Sohna, Gurugram Haryana, INDIA. The project&#039;s Haryana RERA (HRERA) number is RC/REP/HARERA/GGM/2017/180&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #2c363a; background: white; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;The Unit&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;has been provisionally allotted to you whereas you are requested to complete the 10% amount for the allotment as per the payment schedule. In case your payment is clear, Your Welcome Letter&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;will be issued in 7 working days.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;u&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Please find below the bank details:&lt;/span&gt;&lt;/u&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Account Name -&amp;nbsp;Arete India Projects Private Limited&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Account no&amp;nbsp;- 38268395311&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Bank Name &amp;ndash;&amp;nbsp;STATE&amp;nbsp;BANK&amp;nbsp;OF INDIA&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Branch-&amp;nbsp;New Delhi 110005&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;IFSC code -&amp;nbsp;SBIN0009950&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Please submit the below-mentioned documents along with the duly filled application form. Kindly ignore it if you have already submitted it.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 40.8pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: Verdana; mso-bidi-font-family: Verdana; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;1.&lt;span style=&quot;font: 7.0pt &#039;Times New Roman&#039;;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Photograph&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 40.8pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: Verdana; mso-bidi-font-family: Verdana; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;2.&lt;span style=&quot;font: 7.0pt &#039;Times New Roman&#039;;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;PAN Card&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 40.8pt; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: Verdana; mso-bidi-font-family: Verdana; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;3.&lt;span style=&quot;font: 7.0pt &#039;Times New Roman&#039;;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Address Proof&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;For any query, please contact Your&amp;nbsp;&lt;strong&gt;Relationship Manager&lt;/strong&gt;:&lt;strong&gt; $RMNAME&lt;/strong&gt;&lt;/span&gt;&lt;strong style=&quot;color: #205a24; font-family: Verdana, sans-serif; font-size: 10pt;&quot;&gt;: $RMPHONE&lt;/strong&gt;&lt;strong style=&quot;color: #205a24; font-family: Verdana, sans-serif; font-size: 10pt;&quot;&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-bottom-alt: auto; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.0pt; font-family: &#039;Verdana&#039;,sans-serif; mso-fareast-font-family: &#039;Times New Roman&#039;; mso-bidi-font-family: &#039;Times New Roman&#039;; color: #205a24; background: #F1C40F; mso-font-kerning: 0pt; mso-ligatures: none; mso-fareast-language: EN-IN;&quot;&gt;Note : Subject To Clearance.&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;', 1, '2024-05-28 01:35:03 PM', 1, 1, '2024-05-28 01:35:03 PM', 'Congratulations $APPLICATIONNUMBER, $CUSTOMERNAME', 'CUSTOM_VARIABLES', '', ''),
(35, 'NEW TEST EMAIL-TEMPLATE HAIN', 'NEW_TEST_EMAIL-TEMPLATE_HAIN', '&lt;p&gt;Hello &lt;strong&gt;$FULLNAME&lt;/strong&gt; sir,&lt;/p&gt;\r\n&lt;p&gt;Me apko ek test mail bhej raha hu please check krna...&lt;/p&gt;\r\n&lt;p&gt;isko below details dynamic honi chahiye or har mail ke sath change honi chahiye.&lt;/p&gt;\r\n&lt;p&gt;Username : $USERNAME&lt;/p&gt;\r\n&lt;p&gt;Password : $PASSWORD&lt;/p&gt;\r\n&lt;p&gt;RegNo: $REGNO&lt;/p&gt;\r\n&lt;p&gt;RegDate : $REGDATE&lt;/p&gt;\r\n&lt;p&gt;Address : $FULLADDRESS&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Please check above details are received or not.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Thanks&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Gaurav Singh&lt;/p&gt;', 1, '2024-05-30 01:43:44 PM', 1, 1, '2024-05-30 01:43:44 PM', 'BHAI $FULLNAME #REGDATE', 'CUSTOM_VARIABLES', '', ''),
(36, 'TEST 2ND TEMPLATE', 'TEST_2ND_TEMPLATE', '&lt;p&gt;TESt $FULLNAME&lt;/p&gt;\r\n&lt;p&gt;TEST $PHONENUMBER&lt;/p&gt;', 1, '2024-05-31 08:44:46 AM', 1, 1, '2024-05-31 08:44:46 AM', 'MAIL SUBJECT', 'CUSTOM_VARIABLES', '', ''),
(37, 'TEST 4TEG', 'TEST_4TEG', '&lt;p&gt;Hey $FULLNAME&lt;/p&gt;\r\n&lt;p&gt;your registration no is $REGNO&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Thanks&lt;/p&gt;', 1, '2024-05-31 09:15:43 AM', 1, 1, '2024-05-31 09:15:43 AM', 'SUBJECT NAME $RAJUBHAI', 'CUSTOM_VARIABLES', '', ''),
(38, 'TETS EMAILS ', 'TETS_EMAILS_', '&lt;p&gt;hey $FULLNAME&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;We are very thankful to you for completed your registration at $PROJECTNAME having $UNITNUMBER&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Thanks&lt;/p&gt;\r\n&lt;p&gt;Gaurav Singh&lt;/p&gt;', 1, '2024-05-31 09:17:56 AM', 1, 1, '2024-05-31 09:17:56 AM', 'Congratulation! $FULLNAME for $PROJECTNAME', 'CUSTOM_VARIABLES', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `config_mail_template_attachements`
--

CREATE TABLE `config_mail_template_attachements` (
  `config_mail_template_attachment_id` int(10) NOT NULL,
  `config_mail_template_main_id` int(10) NOT NULL,
  `config_mail_template_documents` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_mail_template_attachements`
--

INSERT INTO `config_mail_template_attachements` (`config_mail_template_attachment_id`, `config_mail_template_main_id`, `config_mail_template_documents`) VALUES
(19, 26, 'HSVMNBDNM_0_20_05_2024_01_05_40_pm_.pdf'),
(20, 26, 'HSVMNBDNM_1_20_05_2024_01_05_40_pm_.pdf'),
(21, 26, 'HSVMNBDNM_2_20_05_2024_01_05_40_pm_.pdf'),
(22, 29, 'APNA-LEAD_WELCOME_TEMPLATE_0_24_05_2024_01_05_21_pm_.pdf'),
(23, 31, 'BULK_EMAIL_MODULE_KI_TESTING_KR_RAHA_HU_0_27_05_2024_03_05_31_pm_.png'),
(24, 31, 'BULK_EMAIL_MODULE_KI_TESTING_KR_RAHA_HU_0_27_05_2024_03_05_15_pm_.pdf'),
(25, 33, 'RERA_CERTIFICATE_0_28_05_2024_12_05_47_pm_.jpeg'),
(26, 34, 'CERTIFICATE_(TEST)_1_28_05_2024_01_05_25_pm_.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `config_pgs`
--

CREATE TABLE `config_pgs` (
  `ConfigPgId` int(100) NOT NULL,
  `ConfigPgProvider` varchar(100) NOT NULL,
  `ConfigPgMode` varchar(100) NOT NULL,
  `ConfigPgMerchantId` varchar(500) NOT NULL,
  `ConfigPgMerchantKey` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_pgs`
--

INSERT INTO `config_pgs` (`ConfigPgId`, `ConfigPgProvider`, `ConfigPgMode`, `ConfigPgMerchantId`, `ConfigPgMerchantKey`) VALUES
(1, 'RAZORAPAY', 'jhvjhdsbvj', 'jbcjhbdbfm b', 'qkjbdjkfbvjdbvkdbkjvbdkjbjkbdjkfd vjdbvgjhdfhbvdf'),
(2, 'PAYTM', 'DEV', 'HJvgh1gh3234jh4vgc3j4c3gh123', '#bkjbhv23h2v3gh232vghvc2gv3gh');

-- --------------------------------------------------------

--
-- Table structure for table `config_values`
--

CREATE TABLE `config_values` (
  `ConfigValueId` int(100) NOT NULL,
  `ConfigValueGroupId` varchar(100) NOT NULL,
  `ConfigValueDetails` varchar(100) NOT NULL,
  `ConfigReferenceId` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_values`
--

INSERT INTO `config_values` (`ConfigValueId`, `ConfigValueGroupId`, `ConfigValueDetails`, `ConfigReferenceId`) VALUES
(15, '5', 'Retail Shops', '0'),
(16, '5', 'Residential Plots', '0'),
(17, '5', 'Commercial Space', ''),
(18, '5', 'Farm House', ''),
(19, '5', 'Residential Villas', ''),
(21, '6', 'HIGH', ''),
(22, '6', 'MEDIUM', ''),
(23, '6', 'LOW', ''),
(33, '5', 'SCOs', ''),
(34, '1', 'BH', '0'),
(35, '1', 'TH', ''),
(36, '1', 'SM', ''),
(37, '2', 'FRESH LEAD', ''),
(38, '2', 'FOLLOW UP', ''),
(39, '2', 'JUNK', ''),
(40, '2', 'NOT INTERESTED', ''),
(41, '9', 'Facebook', ''),
(42, '9', 'Instagram', ''),
(43, '9', 'Google Ads', ''),
(44, '9', 'Trade India', ''),
(45, '9', 'India Mart', ''),
(46, '9', '99acre', ''),
(47, '9', 'Housing.in', ''),
(48, '9', 'Others', ''),
(49, '9', 'Self', '0'),
(50, '7', 'Follow Up', ''),
(51, '7', 'NOT Interested', ''),
(52, '7', 'Junk', ''),
(70, '10', 'INFORMATION SHARING', '50'),
(71, '10', 'SITE VISIT PLANNED', '50'),
(72, '10', 'CALL BACK', '50'),
(74, '10', 'SITE VISIT DONE', '50'),
(75, '10', 'LOCATION ISSUE', '51'),
(76, '10', 'BUDGET ISSUE', '51'),
(77, '10', 'JUST WANT AN INFOMRATION', '51'),
(78, '10', 'ALREADY INVESTED', '51'),
(79, '10', 'WRONG NUMBER', '52'),
(80, '10', 'NUMBER NOT UPTO THE MARK', '52'),
(81, '10', 'Others', '50'),
(82, '10', 'Others', '51'),
(83, '10', 'Others', '52'),
(84, '5', 'Residential Flats', '0'),
(85, '5', 'Residential- Low Rise', '0'),
(86, '5', 'Affordable Housing Projects', '0'),
(87, '1', 'Management', '0'),
(89, '10', 'Not Answered', '88'),
(90, '7', 'Sales Closed', '0'),
(91, '10', 'Close', '90'),
(92, '9', 'News Paper ad', '0'),
(93, '10', 'Not Picked', '50'),
(94, '7', 'Ringing', '0'),
(95, '2', 'Ringing', '0'),
(96, '10', 'Ringing', '94'),
(97, '11', 'General Enquiry', '0'),
(98, '11', 'IT Team', '0'),
(99, '11', 'Electrician', '0'),
(100, '11', 'Project Enquiry', '0'),
(101, '11', 'Site Visit', '0'),
(102, '11', 'Payment ', '0'),
(103, '11', 'Job &amp; Interview ', '0'),
(104, '11', 'Courier', '0'),
(111, '12', 'NEW', '0'),
(112, '12', 'Approved', '0'),
(113, '12', 'Please Wait', '0'),
(120, '2', 'Registration', '0'),
(121, '7', 'Registration done', '0'),
(122, '10', 'Registration done', '121'),
(123, '12', 'Selected', '0'),
(124, '12', 'Rejected', '0'),
(125, '7', 'Fresh Leads', '0'),
(126, '10', ' ', '125'),
(127, '2', 'FRESH DATA', '0'),
(128, '13', 'TEST', '0'),
(129, '1', 'SE', '0'),
(130, '1', 'GM', '0'),
(131, '1', 'AVP', '0'),
(132, '1', 'VP', '0');

-- --------------------------------------------------------

--
-- Table structure for table `systemlogs`
--

CREATE TABLE `systemlogs` (
  `LogsId` int(100) NOT NULL,
  `logTitle` varchar(200) NOT NULL,
  `logdesc` varchar(1000) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `systeminfo` varchar(1000) NOT NULL,
  `logtype` varchar(100) NOT NULL,
  `logenv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_email_uploaded_headers`
--

CREATE TABLE `temp_email_uploaded_headers` (
  `temp_email_uploaded_header_id` int(10) NOT NULL,
  `temp_email_upload_handler_id` int(10) NOT NULL,
  `temp_email_upload_header_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_email_uploaded_header_values`
--

CREATE TABLE `temp_email_uploaded_header_values` (
  `temp_email_uploaded_header_value_id` int(100) NOT NULL,
  `temp_email_uploaded_header_main_id` int(10) NOT NULL,
  `temp_email_uploaded_header_value` varchar(255) NOT NULL,
  `temp_email_upload_header_record_value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_email_upload_handler`
--

CREATE TABLE `temp_email_upload_handler` (
  `temp_email_upload_handler_id` int(10) NOT NULL,
  `temp_email_upload_handler_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(100) NOT NULL,
  `UserSalutation` varchar(1000) NOT NULL,
  `UserFullName` varchar(500) NOT NULL,
  `UserPhoneNumber` varchar(100) NOT NULL,
  `UserEmailId` varchar(1000) NOT NULL,
  `UserPassword` varchar(500) NOT NULL,
  `UserCreatedAt` varchar(25) NOT NULL DEFAULT 'current_timestamp(6)',
  `UserUpdatedAt` varchar(25) NOT NULL DEFAULT 'current_timestamp(6)',
  `UserStatus` tinyint(1) NOT NULL DEFAULT 1,
  `UserNotes` longtext NOT NULL,
  `UserCompanyName` varchar(1000) NOT NULL,
  `UserDepartment` varchar(1000) NOT NULL,
  `UserDesignation` varchar(1000) NOT NULL,
  `UserWorkFeilds` varchar(1000) NOT NULL,
  `UserProfileImage` varchar(1000) NOT NULL DEFAULT 'default.png',
  `UserType` varchar(1000) NOT NULL,
  `UserDateOfBirth` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `UserSalutation`, `UserFullName`, `UserPhoneNumber`, `UserEmailId`, `UserPassword`, `UserCreatedAt`, `UserUpdatedAt`, `UserStatus`, `UserNotes`, `UserCompanyName`, `UserDepartment`, `UserDesignation`, `UserWorkFeilds`, `UserProfileImage`, `UserType`, `UserDateOfBirth`) VALUES
(1, 'Mr.', 'Admin', '9318310565', 'gauravsinghigc@gmail.com', '9810', '0000-00-00 00:00:00.00000', '20 Sep, 2023', 1, 'YkVYdnY2YmtTdHBSRVkxbW95bFEyWTl6L2YxNUhpQ1NRK0FFR1BMRnpDN0JnUEdFTzNwb0NJaUptK2V6WDJUTQ==', 'Navix Consultancy Services', 'Sales &amp; Marketing', 'Sales Head', 'Information Technology', 'Profile_Photo__UID_1__02_Jun_2024_11_06_25_36455443785_.jpg', 'SUPER_ADMIN', '2022-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `user_access`
--

CREATE TABLE `user_access` (
  `UserAccessId` int(100) NOT NULL,
  `UserAccessUserId` int(100) NOT NULL,
  `UserAccessName` varchar(100) NOT NULL,
  `UserAccessCreatedAt` datetime(6) NOT NULL,
  `UserAccessUpdatedAt` datetime(6) NOT NULL,
  `UserAccessStatus` varchar(10) DEFAULT 'true',
  `UserAccessNotes` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_access`
--

INSERT INTO `user_access` (`UserAccessId`, `UserAccessUserId`, `UserAccessName`, `UserAccessCreatedAt`, `UserAccessUpdatedAt`, `UserAccessStatus`, `UserAccessNotes`) VALUES
(1, 1, 'SUPER_ADMIN', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'true', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`ConfigsId`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`configurationsid`);

--
-- Indexes for table `config_email_template_headers`
--
ALTER TABLE `config_email_template_headers`
  ADD PRIMARY KEY (`config_email_template_csv_header_id`);

--
-- Indexes for table `config_holidays`
--
ALTER TABLE `config_holidays`
  ADD PRIMARY KEY (`ConfigHolidayid`);

--
-- Indexes for table `config_locations`
--
ALTER TABLE `config_locations`
  ADD PRIMARY KEY (`config_location_id`);

--
-- Indexes for table `config_mail_sender`
--
ALTER TABLE `config_mail_sender`
  ADD PRIMARY KEY (`config_mail_sender_id`);

--
-- Indexes for table `config_mail_templates`
--
ALTER TABLE `config_mail_templates`
  ADD PRIMARY KEY (`config_mail_template_id`);

--
-- Indexes for table `config_mail_template_attachements`
--
ALTER TABLE `config_mail_template_attachements`
  ADD PRIMARY KEY (`config_mail_template_attachment_id`);

--
-- Indexes for table `config_pgs`
--
ALTER TABLE `config_pgs`
  ADD PRIMARY KEY (`ConfigPgId`);

--
-- Indexes for table `config_values`
--
ALTER TABLE `config_values`
  ADD PRIMARY KEY (`ConfigValueId`);

--
-- Indexes for table `systemlogs`
--
ALTER TABLE `systemlogs`
  ADD PRIMARY KEY (`LogsId`);

--
-- Indexes for table `temp_email_uploaded_headers`
--
ALTER TABLE `temp_email_uploaded_headers`
  ADD PRIMARY KEY (`temp_email_uploaded_header_id`);

--
-- Indexes for table `temp_email_uploaded_header_values`
--
ALTER TABLE `temp_email_uploaded_header_values`
  ADD PRIMARY KEY (`temp_email_uploaded_header_value_id`);

--
-- Indexes for table `temp_email_upload_handler`
--
ALTER TABLE `temp_email_upload_handler`
  ADD PRIMARY KEY (`temp_email_upload_handler_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `user_access`
--
ALTER TABLE `user_access`
  ADD PRIMARY KEY (`UserAccessId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `ConfigsId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `configurationsid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `config_email_template_headers`
--
ALTER TABLE `config_email_template_headers`
  MODIFY `config_email_template_csv_header_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `config_holidays`
--
ALTER TABLE `config_holidays`
  MODIFY `ConfigHolidayid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `config_locations`
--
ALTER TABLE `config_locations`
  MODIFY `config_location_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `config_mail_sender`
--
ALTER TABLE `config_mail_sender`
  MODIFY `config_mail_sender_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `config_mail_templates`
--
ALTER TABLE `config_mail_templates`
  MODIFY `config_mail_template_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `config_mail_template_attachements`
--
ALTER TABLE `config_mail_template_attachements`
  MODIFY `config_mail_template_attachment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `config_pgs`
--
ALTER TABLE `config_pgs`
  MODIFY `ConfigPgId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `config_values`
--
ALTER TABLE `config_values`
  MODIFY `ConfigValueId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `systemlogs`
--
ALTER TABLE `systemlogs`
  MODIFY `LogsId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_email_uploaded_headers`
--
ALTER TABLE `temp_email_uploaded_headers`
  MODIFY `temp_email_uploaded_header_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `temp_email_uploaded_header_values`
--
ALTER TABLE `temp_email_uploaded_header_values`
  MODIFY `temp_email_uploaded_header_value_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

--
-- AUTO_INCREMENT for table `temp_email_upload_handler`
--
ALTER TABLE `temp_email_upload_handler`
  MODIFY `temp_email_upload_handler_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;

--
-- AUTO_INCREMENT for table `user_access`
--
ALTER TABLE `user_access`
  MODIFY `UserAccessId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
