-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2018 at 10:03 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admits`
--

CREATE TABLE `admits` (
  `ref_no` int(11) NOT NULL,
  `ward_no` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `special_notes` varchar(500) NOT NULL,
  `admit_date` date NOT NULL,
  `release_date` date DEFAULT NULL,
  `floor_no` int(11) NOT NULL,
  `doc_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admits`
--

INSERT INTO `admits` (`ref_no`, `ward_no`, `p_id`, `reason`, `special_notes`, `admit_date`, `release_date`, `floor_no`, `doc_name`) VALUES
(36, 1, 3, 'saddasd', 'dsadd', '2018-10-16', '2018-10-28', 1, 'Dr Doluweera'),
(38, 1, 6, 'asas', 'asasa', '2018-10-10', '2018-10-27', 1, 'Dr Keerthi Alwis'),
(39, 1, 8, 'sss', 'sssss', '2018-10-17', NULL, 1, 'Dr Doluweera');

-- --------------------------------------------------------

--
-- Table structure for table `channellings`
--

CREATE TABLE `channellings` (
  `channel_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `desease_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channellings`
--

INSERT INTO `channellings` (`channel_id`, `doc_id`, `date`, `desease_type`) VALUES
(1, 16, '2018-10-10', 'dfdf'),
(2, 10, '2018-10-10', 'jjj'),
(3, 14, '2018-10-11', 'dss asffd'),
(11, 9, '2018-10-03', 'hhh'),
(12, 10, '2018-10-10', 'xxxx');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doc_id` int(11) NOT NULL,
  `doc_name` varchar(30) NOT NULL,
  `doc_specialty` varchar(40) NOT NULL,
  `telephone` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `time` time NOT NULL,
  `apt_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doc_id`, `doc_name`, `doc_specialty`, `telephone`, `email`, `time`, `apt_count`) VALUES
(9, 'Dr someonw', 'cardiologist', '0712221133', 'asdC@gail.com', '08:30:00', 0),
(10, 'Dr Keerthi Alwis', 'cardiologist', '0712221111', 'Keersthix@gmail.com', '11:01:00', 91),
(14, 'Dr Dananjaya', 'Hematologist', '0712227777', 'chamodnimsaradx@gmail.com', '08:30:00', 0),
(16, 'Dr muunasinghe', 'cardiologist', '1231231231', 'munashinge@gmail.com', '12:30:00', 0),
(20, 'Dr Dananjaya eeee', 'cardiologist', '0112755257', 'asdC@gail.com', '15:00:00', 0),
(21, 'apt test doc', 'cardiologist', '1231231231', 'chamodnimsaradx@gmail.com', '09:00:00', 0),
(22, 'vvvvv', 'cardiologist', '0712221111', 'chamodnimsaradx@gmail.com', '12:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `p_address` varchar(255) NOT NULL,
  `p_nic` varchar(10) NOT NULL,
  `p_gender` varchar(8) NOT NULL,
  `password` varchar(15) NOT NULL,
  `telephone` varchar(12) NOT NULL,
  `p_fname` varchar(30) NOT NULL,
  `p_lname` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `reg_date` date NOT NULL,
  `admit_flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `p_address`, `p_nic`, `p_gender`, `password`, `telephone`, `p_fname`, `p_lname`, `email`, `reg_date`, `admit_flag`) VALUES
(3, 'vbvbvbvb', 'bvbvb', 'bvb', 'vbvb', 'vbvbv', 'vbvb', 'vbvbv', 'vbbvb', '2018-10-02', 2),
(6, 'cxc', 'xcxcxc', 'male', 'xxcc', '0712221111', 'xcx', 'cxcx', 'chamodnimsara@gmail.com', '2018-10-27', 2),
(7, '221/b/backers street ', '123123123v', 'male', '123', '0112755257', 'official patient', 'lastname', 'chamodnimsaradx@gmail.com', '2018-10-27', 1),
(8, 'zzzz', 'zzzzz', 'male', 'zzzz', '1231231231', 'zzzz', 'zzzz', 'chamodnimsara@gmail.com', '2018-10-27', 1),
(9, '221b/b baker\'s street', '123123123v', 'male', '123123', '1231231231', 'final ', 'test', 'chamodnimsara@gmail.com', '2018-10-27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `patient_releases`
--

CREATE TABLE `patient_releases` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_releases`
--

INSERT INTO `patient_releases` (`id`, `p_id`, `total`) VALUES
(5, 6, 595000),
(6, 3, 420000);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `t_id` int(11) NOT NULL,
  `test_name` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `telephone` varchar(30) NOT NULL,
  `total` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `issue_flag` int(11) NOT NULL,
  `paid_flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`t_id`, `test_name`, `date`, `f_name`, `l_name`, `telephone`, `total`, `email`, `issue_flag`, `paid_flag`) VALUES
(1, 'ECG', '2018-10-19', 'Chamod', 'Nimsara', '0712221111', 0, 'chamodnimsaradx@gmail.com', 1, 1),
(7, 'ECG', '2018-10-19', 'someone', 'fdfsfd', 'sdfsd', 0, 'chamodnimsaradx@gmail.com', 1, 1),
(8, 'ECG', '2018-10-19', '333', 'Nimsara', '0712221111', 0, 'chamodnimsaradx@gmail.com', 0, 0),
(9, 'ECG', '2018-10-20', 'Chamod', 'Nimsara', '0712221111', 4000, 'chamodnimsaradx@gmail.com', 0, 0),
(10, 'CAT Scan', '2018-10-20', 'Chamod', 'asdsd', '0112755257', 12000, 'chamodnimsaradx@gmail.com', 0, 0),
(11, 'Blood test', '2018-10-20', 'asdsad', 'XZX', '0112755257', 1500, 'asdC@gail.com', 0, 0),
(13, 'Blood test', '2018-10-20', 'asdsad', 'asdsa', '0712221111', 1500, 'chamodnimsaradx@gmail.com', 0, 0),
(14, 'ECG', '2018-10-20', 'Chamod', 'Nimsara', '0712221111', 4000, 'chamodnimsaradx@gmail.com', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE `ward` (
  `w_id` int(11) NOT NULL,
  `w_name` varchar(30) NOT NULL,
  `room_count` int(11) NOT NULL,
  `available_rooms` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`w_id`, `w_name`, `room_count`, `available_rooms`, `price`) VALUES
(1, 'Psyco ward', 30, 13, 35000),
(2, 'Cardiology ward', 100, 38, 40000),
(3, 'Accident and Emergency', 120, 97, 35000),
(4, 'ICU', 30, 10, 23000),
(7, 'Diagnostic imaging', 100, 19, 25000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `admits`
--
ALTER TABLE `admits`
  ADD PRIMARY KEY (`ref_no`),
  ADD UNIQUE KEY `p_id` (`p_id`);

--
-- Indexes for table `channellings`
--
ALTER TABLE `channellings`
  ADD PRIMARY KEY (`channel_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `patient_releases`
--
ALTER TABLE `patient_releases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admits`
--
ALTER TABLE `admits`
  MODIFY `ref_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `channellings`
--
ALTER TABLE `channellings`
  MODIFY `channel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `patient_releases`
--
ALTER TABLE `patient_releases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `ward`
--
ALTER TABLE `ward`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admits`
--
ALTER TABLE `admits`
  ADD CONSTRAINT `patient_id foreign key` FOREIGN KEY (`p_id`) REFERENCES `patient` (`patient_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
