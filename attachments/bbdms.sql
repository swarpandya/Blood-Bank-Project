-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2018 at 04:31 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) CHARACTER SET latin1 NOT NULL,
  `Password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2018-03-28 11:25:12');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `MobileNumber` char(11) CHARACTER SET latin1 DEFAULT NULL,
  `EmailId` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `Gender` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Address` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `Message` mediumtext CHARACTER SET latin1,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Fenil surani', '9727292107', 'fenilsurani411@gmail.com', 'Male', 20, 'o+', ' bdhdh dhf hd h', ' d hd hd fh d', '2018-09-28 20:14:16', 1),
(2, 'Swar Pandya', '9876987645', 'swarpandya@gmail.com', 'Male', 23, 'AB-', 'Sama saavli road', ' fsdf', '2018-09-28 20:48:11', 1),
(3, 'Mihir Raval', '42352352352', '', 'Male', 23, 'A+', 'Karelibaug', 'N/A', '2018-09-29 07:21:21', 1),
(4, 'Rohan Shah ', '123456789', 'rohan@rohan.com', 'Male', 26, 'AB-', NULL, 'N/A', '2018-03-23 07:21:42', 1),
(5, 'Mansi Patel', '789456136', 'test@test.com', 'Female', 23, 'B+', 'Test Demo', '', '2018-03-29 09:00:18', 1),
(6, 'Nishi', '9876543210', 'nishi@nishi.com', 'Female', 19, 'O-', 'Waghodia Road', 'I Love to donate blood. ', '2018-03-28 17:39:11', 1),
(7, 'frenisha', '8140195068', 'frenisha26@yahoo.com', 'Female', 24, 'AB+', 'hdxjyjhxjgxgjxgjygxyjgxjywgx', ' wfyfxyxfx', '2018-03-30 11:05:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(7, 'o+', '2018-09-28 17:27:47'),
(8, 'B-', '2018-09-28 17:27:53'),
(9, 'O-', '2018-09-28 17:27:56'),
(10, 'A+', '2018-09-28 18:27:05'),
(11, 'A-', '2018-09-28 18:27:12'),
(12, 'O+', '2018-09-28 18:27:19'),
(13, 'AB+', '2018-09-28 18:27:24'),
(14, 'AB-', '2018-09-28 18:27:29'),
(15, 'B+', '2018-09-28 17:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext CHARACTER SET latin1,
  `EmailId` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `ContactNo` char(11) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Ajwa Road, Vadodara', 'test@test.com', '9727292107');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `EmailId` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `ContactNumber` char(11) CHARACTER SET latin1 DEFAULT NULL,
  `Message` longtext CHARACTER SET latin1,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Mihir', 'webhostingamigo@gmail.com', '2147483647', 'I need to donate my Blood', '2018-09-29 10:03:07', 1),
(2, 'Raval', 'webhostingamigo@gmail.com', '42342342', 'drftghjk', '2018-03-28 21:17:09', NULL),
(3, 'Aditya', 'webhostingamigo@gmail.com', '42342342', 'fgherty', '2018-09-28 21:21:30', NULL),
(4, 'Jenny', 'sdfsdf@gmail.com', '75787875545', 'Donate', '2018-09-29 07:19:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `type` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `detail` longtext CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<span class=\"Y0NH2b CLPzrc\">It is also needed for regular transfusions \r\nfor people with conditions such as thalassaemia and sickle cell disease \r\nand is used to make products such as clotting factors for people with \r\nhaemophilia. There is a constant need for regular <b>blood</b> supply because <b>blood</b> can <b>be</b> stored for only a limited time before use.</span>'),
(3, 'About Us ', 'aboutus', '<div>\r\n		E-Blood Bank is aimed at promoting the awareness of blood \r\ndonation among the public. It is committed to stay ahead&nbsp;of all \r\nlinguistic-rational-religious-political differences and shall be fully \r\nfocusing its objectives in health care activities, with&nbsp;technology \r\nsupport.<br>\r\n		&nbsp;</div>\r\n	<div>\r\n		E-Blood bank is registered as per The TCLSCS Registration.&nbsp;Initial operation of E-Blood Bank shall be limited to Vadodara and in the coming years its\r\n services shall be available all over&nbsp;India.</div>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
