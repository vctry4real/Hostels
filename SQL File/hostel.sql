-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 10:03 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'anuj.lpu1@gmail.com', 'Test@1234', '2016-04-04 20:31:45', '2016-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blocka`
--

CREATE TABLE `blocka` (
  `id` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_no` text DEFAULT NULL,
  `fees` varchar(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blocka`
--

INSERT INTO `blocka` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(11, 3, 'A001', '120000', '2023-04-10 09:17:20'),
(12, 3, 'A002', '120000', '2023-04-10 09:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `blockb`
--

CREATE TABLE `blockb` (
  `id` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_no` varchar(11) NOT NULL,
  `fees` varchar(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blockb`
--

INSERT INTO `blockb` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(3, 3, 'B001', '120000', '2023-04-10 20:27:52'),
(4, 3, 'B002', '120000', '2023-04-10 20:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(12, NULL, 'csc', 'Computer Science', '2023-03-16 03:54:19'),
(13, NULL, 'phy', 'Physics', '2023-03-16 04:20:26'),
(14, NULL, 'maths.sci', 'Mathematics', '2023-03-16 04:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`) VALUES
(1, 'hello students'),
(2, 'welcome to a new session'),
(4, 'laughing is goood'),
(5, 'Easter break is commencing on the 6/04/2023 to 11/04/2023 lectures resumes the next day after resumption. you are advised to resume on time'),
(6, 'checking to see if i am working, i know i am just kidding '),
(7, 'checking to see if i am working, i know i am just kidding ');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `seater` varchar(100) NOT NULL,
  `feespm` varchar(100) NOT NULL,
  `middleName` varchar(100) NOT NULL,
  `stayfrom` varchar(100) NOT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `regno` varchar(100) DEFAULT NULL,
  `roomno` varchar(100) NOT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `contactno` varchar(100) DEFAULT NULL,
  `egycontactno` varchar(100) DEFAULT NULL,
  `guardianName` varchar(100) DEFAULT NULL,
  `guardianRelation` varchar(100) DEFAULT NULL,
  `guardianContactno` varchar(100) DEFAULT NULL,
  `corresAddress` varchar(100) DEFAULT NULL,
  `corresCIty` varchar(100) DEFAULT NULL,
  `corresState` varchar(100) DEFAULT NULL,
  `pmntAddress` varchar(100) DEFAULT NULL,
  `pmntCity` varchar(100) DEFAULT NULL,
  `pmnatetState` varchar(100) DEFAULT NULL,
  `postingDate` varchar(100) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `firstName`, `lastName`, `emailid`, `seater`, `feespm`, `middleName`, `stayfrom`, `duration`, `course`, `regno`, `roomno`, `gender`, `contactno`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `pmntAddress`, `pmntCity`, `pmnatetState`, `postingDate`) VALUES
(30, ' Victory', 'barner', 'abraham@gmail.com', '4', '60000', 'MATT', '2023-04-09', '4', 'Physics', 'CRW/SCI/20/', '4', 'female', '80773345749', '090879717236', 'zask', 'kass', '090112246423', 'qwertyu zxcvb', 'Benin city', 'Cross River State', 'qwertyu zxcvb', 'Benin city', 'Cross River State', '2023-04-08 12:32:51');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` text NOT NULL,
  `bedspace` int(11) NOT NULL,
  `feespm` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `middlename` varchar(500) CHARACTER SET latin1 NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` varchar(11) CHARACTER SET latin1 NOT NULL,
  `course` varchar(500) CHARACTER SET latin1 NOT NULL,
  `regno` varchar(11) CHARACTER SET latin1 NOT NULL,
  `roomno` varchar(500) CHARACTER SET latin1 NOT NULL,
  `gender` varchar(250) CHARACTER SET latin1 NOT NULL,
  `contactno` varchar(20) NOT NULL,
  `egycontactno` varchar(20) NOT NULL,
  `guardianName` varchar(500) CHARACTER SET latin1 NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` varchar(20) NOT NULL,
  `corresAdress` varchar(500) CHARACTER SET latin1 NOT NULL,
  `corresCity` varchar(500) CHARACTER SET latin1 NOT NULL,
  `corresState` varchar(500) CHARACTER SET latin1 NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(12, 1, 1, 120000, '2023-03-17 17:31:17'),
(13, 2, 2, 100000, '2023-03-17 17:31:49'),
(14, 3, 3, 80000, '2023-03-17 17:32:10'),
(15, 4, 4, 60000, '2023-03-17 17:32:46'),
(17, 2, 22, 100000, '2023-03-17 23:20:53'),
(19, 4, 567, 12000, '2023-03-18 19:10:39'),
(20, 3, 0, 120000, '2023-04-10 09:19:49');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Abia State'),
(2, 'Adamawa State'),
(3, 'Akwa Ibom State'),
(4, 'Anambra State'),
(5, 'Bauchi State'),
(6, 'Bayelsa State'),
(7, 'Benue State'),
(8, 'Borno State'),
(9, 'Cross River State'),
(10, 'Delta State'),
(11, 'Ebonyi State'),
(12, 'Edo State'),
(13, 'Ekiti State'),
(14, 'Enugu State'),
(15, 'Gombe State'),
(16, 'Imo State'),
(17, 'Jigawa State'),
(18, 'Kaduna State'),
(19, 'Kano State'),
(20, 'Katsina State'),
(21, 'Kebbi State'),
(22, 'Kogi State'),
(23, 'Kwara State'),
(24, 'Lagos State'),
(25, 'Nasarawa State'),
(26, 'Niger State'),
(27, 'Ogun State'),
(28, 'Ondo State'),
(29, 'Osun State'),
(30, 'Oyo State'),
(31, 'Plateau State'),
(32, 'Rivers State'),
(33, 'Sokoto State'),
(34, 'Taraba State'),
(35, 'Yobe State'),
(36, 'Zamfara State'),
(37, 'Abuja(FCT)');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(6, 3, '10806121', 0x3a3a31, '', '', '2020-07-20 14:56:45'),
(7, 4, 'savemepls@gmail.com', 0x3a3a31, '', '', '2023-03-14 11:37:07'),
(8, 5, 'sweetadam@gmail.com', 0x3a3a31, '', '', '2023-03-15 14:43:33'),
(9, 5, 'sweetadam@gmail.com', 0x3a3a31, '', '', '2023-03-15 18:25:05'),
(10, 5, 'sweetadam@gmail.com', 0x3a3a31, '', '', '2023-03-16 12:48:33'),
(11, 8, 'gabiturner@gmail.com', 0x3a3a31, '', '', '2023-03-17 17:29:44'),
(12, 9, 'tessa@gmail.com', 0x3a3a31, '', '', '2023-03-17 18:13:00'),
(13, 8, 'gabiturner@gmail.com', 0x3a3a31, '', '', '2023-03-17 19:16:48'),
(14, 11, 'treqnasion@gmail.com', 0x3a3a31, '', '', '2023-03-18 16:50:42'),
(15, 12, 'idgaf@gmail.com', 0x3a3a31, '', '', '2023-03-18 16:52:22'),
(16, 12, 'idgaf@gmail.com', 0x3a3a31, '', '', '2023-03-18 18:49:47'),
(17, 12, 'idgaf@gmail.com', 0x3a3a31, '', '', '2023-03-18 19:04:17'),
(18, 12, 'idgaf@gmail.com', 0x3a3a31, '', '', '2023-03-18 19:23:48'),
(19, 12, 'idgaf@gmail.com', 0x3a3a31, '', '', '2023-03-18 21:26:21'),
(20, 12, 'idgaf@gmail.com', 0x3a3a31, '', '', '2023-03-20 15:20:43'),
(21, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-03-29 10:15:43'),
(22, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-03-30 20:25:29'),
(23, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-03-31 02:03:08'),
(24, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-04-01 04:15:25'),
(25, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-04-02 11:32:32'),
(26, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-04-02 12:00:57'),
(27, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-04-02 12:38:38'),
(28, 8, 'gabiturner@gmail.com', 0x3a3a31, '', '', '2023-04-02 12:50:23'),
(29, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-04-02 13:13:08'),
(30, 8, 'gabiturner@gmail.com', 0x3a3a31, '', '', '2023-04-02 13:13:27'),
(31, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-04-02 13:13:40'),
(32, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-04-04 10:28:35'),
(33, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-04-04 10:47:31'),
(34, 8, 'gabiturner@gmail.com', 0x3a3a31, '', '', '2023-04-04 11:11:23'),
(35, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-04-04 11:23:11'),
(36, 8, 'gabiturner@gmail.com', 0x3a3a31, '', '', '2023-04-04 13:51:18'),
(37, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-04-05 20:59:28'),
(38, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-04-07 17:02:29'),
(39, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-04-08 07:33:15'),
(40, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-04-08 08:30:25'),
(41, 17, 'abraham@gmail.com', 0x3a3a31, '', '', '2023-04-08 10:10:54'),
(42, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-04-08 11:33:49'),
(43, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-04-08 23:51:56'),
(44, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-04-09 15:37:06'),
(45, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-04-10 15:40:22'),
(46, 16, 'matthew@gmail.com', 0x3a3a31, '', '', '2023-04-11 09:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(16, '30N23SCI', 'Matthew', 'Julius', 'Philip', 'male', 90883823578, 'matthew@gmail.com', 'matthew', '2023-03-29 10:15:14', NULL, NULL),
(17, 'CRW/SCI/20/1489', ' Victory', 'MATT', 'barner', 'female', 80773345749, 'abraham@gmail.com', 'abraham', '2023-04-08 10:09:47', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocka`
--
ALTER TABLE `blocka`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blockb`
--
ALTER TABLE `blockb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blocka`
--
ALTER TABLE `blocka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blockb`
--
ALTER TABLE `blockb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
