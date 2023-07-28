-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2023 at 09:38 AM
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
-- Database: `edoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aemail` varchar(255) NOT NULL,
  `apassword` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aemail`, `apassword`) VALUES
('admin@edoc.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appoid` int(11) NOT NULL,
  `pid` int(10) DEFAULT NULL,
  `apponum` int(3) DEFAULT NULL,
  `scheduleid` int(10) DEFAULT NULL,
  `appodate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appoid`, `pid`, `apponum`, `scheduleid`, `appodate`) VALUES
(1, 1, 1, 1, '2022-06-03'),
(2, 3, 2, 1, '2023-04-28'),
(3, 4, 3, 1, '2023-04-29'),
(13, 5, 1, 10, '2023-05-04'),
(14, 6, 1, 11, '2023-05-04');

-- --------------------------------------------------------

--
-- Table structure for table `awareness`
--

CREATE TABLE `awareness` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `profession` enum('student','employed','unemployed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `awareness`
--

INSERT INTO `awareness` (`id`, `name`, `email`, `phone`, `address`, `profession`) VALUES
(9, 'arya', 'tejaswinitodkar11@gmail.com', 2147483647, 'afafas', 'student'),
(15, 'ayush', 'ayush@gmail.com', 2147483647, 'egweg', 'employed'),
(18, 'Arya Patil', 'slick@gmail.com', 2147483647, 'Upvan', 'unemployed'),
(20, 'HumgmanBabo', 'hungman@gmail.com', 2147483647, 'Babo', 'employed'),
(22, 'Tejaswini T', '21102102.tejaswini.todkar@gmail.com', 2147483647, 'kalyan', 'student'),
(25, 'aditi', 'aditi10@gmail.com', 2147483647, 'Mumbai', 'student'),
(42, 'harshita', 'harshita@gmail.com', 1234567891, 'Thane', 'unemployed'),
(180, 'Arya', 'hello1@gmail.com', 2147483647, '', 'student'),
(181, 'Arya', 'hello1@gmail.com', 123456789, 'thane', 'employed'),
(182, 'asif', 'asif@gmail.com', 1234567891, 'then', 'unemployed'),
(183, 'Arya1', 'arya1@gmail.com', 2147483647, 'Hello', 'employed'),
(184, 'Shreyas', 'shey@gmail.com', 1234567891, 'Thane', 'employed'),
(185, 'Arya', 'patilarya3133@gmail.com', 2147483647, 'B-206,RAMESHWAR NEELKANTH HEIGHTS', 'employed');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `docid` int(11) NOT NULL,
  `docemail` varchar(255) DEFAULT NULL,
  `docname` varchar(255) DEFAULT NULL,
  `docpassword` varchar(255) DEFAULT NULL,
  `docnic` varchar(15) DEFAULT NULL,
  `doctel` varchar(15) DEFAULT NULL,
  `specialties` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`docid`, `docemail`, `docname`, `docpassword`, `docnic`, `doctel`, `specialties`) VALUES
(1, 'doctor@edoc.com', 'Test Doctor', '123', '000000000', '0110000000', 1),
(2, 'Ennikdouma@gmail.com', 'Ennik Douma', '12345', '12345', '038490723', 8),
(5, 'urvi@gmail.com', 'Urvi Shah', '123', '112233', '9889122134', 12),
(4, 'kim@gmail.com', 'Taeyoung Kim', 'kim', '777777', '0765432189', 7);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pid` int(11) NOT NULL,
  `pemail` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `ppassword` varchar(255) DEFAULT NULL,
  `paddress` varchar(255) DEFAULT NULL,
  `pnic` varchar(15) DEFAULT NULL,
  `pdob` date DEFAULT NULL,
  `ptel` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pid`, `pemail`, `pname`, `ppassword`, `paddress`, `pnic`, `pdob`, `ptel`) VALUES
(1, 'patient@edoc.com', 'Test Patient', '123', 'Sri Lanka', '0000000000', '2000-01-01', '0120000000'),
(2, 'emhashenudara@gmail.com', 'Hashen Udara', '123', 'Sri Lanka', '0110000000', '2022-06-03', '0700000000'),
(3, 'hello@gmail.com', 'suraj yadav', '1234', 'sk', '1234', '2000-12-12', '0123456789'),
(4, 'jyoti@google.com', 'Jyoti Todkar', 'Jyoti123', 'kalyan east', '123456', '2003-07-06', '0705760713'),
(5, 'hello1@gmail.com', 'Arya Patil', 'hello', 'thane', '1234567', '2023-04-25', '0712345678'),
(6, 'teju@gmail.com', 'Tejaswini T', '123', 'kalyan', '777777', '2003-06-03', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `scheduleid` int(11) NOT NULL,
  `docid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `scheduledate` date DEFAULT NULL,
  `scheduletime` time DEFAULT NULL,
  `nop` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`scheduleid`, `docid`, `title`, `scheduledate`, `scheduletime`, `nop`) VALUES
(1, '1', 'Test Session', '2050-01-01', '18:00:00', 50),
(2, '1', '1', '2022-06-10', '20:36:00', 1),
(3, '1', '12', '2022-06-10', '20:33:00', 1),
(4, '1', '1', '2022-06-10', '12:32:00', 1),
(10, '4', 'Encouraging Counselling', '2023-05-09', '09:33:00', 10),
(7, '1', '1', '2022-06-24', '20:36:00', 1),
(11, '5', 'Parenting', '2023-05-14', '14:00:00', 20),
(9, '3', 'Testing', '2023-06-22', '21:31:00', 10);

-- --------------------------------------------------------

--
-- Table structure for table `specialties`
--

CREATE TABLE `specialties` (
  `id` int(2) NOT NULL,
  `sname` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `specialties`
--

INSERT INTO `specialties` (`id`, `sname`) VALUES
(1, 'Depression'),
(2, 'Anxiety'),
(3, 'Relationship Issues'),
(4, 'Stress Management'),
(5, 'Negative Thoughts'),
(6, 'Obsessions'),
(7, 'Trouble Emotions'),
(8, 'Fear & Phobias'),
(9, 'Eating Disorders'),
(10, 'Past Traumas'),
(11, 'Motivation & Goals'),
(12, 'Parenting'),
(13, 'Personal Growth'),
(14, 'Self-Esteem Issues'),
(15, 'Sexual Wellness'),
(16, 'Spiritual Growth'),
(17, 'Addiction Issues'),
(18, 'Sleep Issues'),
(19, 'Anger Management');

-- --------------------------------------------------------

--
-- Table structure for table `webuser`
--

CREATE TABLE `webuser` (
  `email` varchar(255) NOT NULL,
  `usertype` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `webuser`
--

INSERT INTO `webuser` (`email`, `usertype`) VALUES
('admin@edoc.com', 'a'),
('doctor@edoc.com', 'd'),
('patient@edoc.com', 'p'),
('emhashenudara@gmail.com', 'p'),
('hello@gmail.com', 'p'),
('Ennikdouma@gmail.com', 'd'),
('jyoti@google.com', 'p'),
('hello1@gmail.com', 'p'),
('urvi@gmail.com', 'd'),
('kim@gmail.com', 'd'),
('teju@gmail.com', 'p');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aemail`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appoid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `scheduleid` (`scheduleid`);

--
-- Indexes for table `awareness`
--
ALTER TABLE `awareness`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`docid`),
  ADD KEY `specialties` (`specialties`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`scheduleid`),
  ADD KEY `docid` (`docid`);

--
-- Indexes for table `specialties`
--
ALTER TABLE `specialties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webuser`
--
ALTER TABLE `webuser`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `awareness`
--
ALTER TABLE `awareness`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `docid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `scheduleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
