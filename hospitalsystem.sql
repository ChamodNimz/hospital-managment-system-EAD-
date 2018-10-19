-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2018 at 12:59 PM
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
  `special_notes` varchar(500) NOT NULL,
  `admit_date` date NOT NULL,
  `release_date` date NOT NULL,
  `floor_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `channellings`
--

CREATE TABLE `channellings` (
  `channel_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `desease_type` varchar(40) NOT NULL,
  `doc_name` varchar(30) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `hospital` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doc_id` int(11) NOT NULL,
  `doc_name` varchar(30) NOT NULL,
  `doc_specialty` varchar(40) NOT NULL,
  `doc_hospital` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE `floors` (
  `floor_no` int(11) NOT NULL,
  `floor_specialty` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `p_address` text NOT NULL,
  `p_nic` varchar(10) NOT NULL,
  `p_gender` varchar(8) NOT NULL,
  `password` varchar(15) NOT NULL,
  `telephone` varchar(12) NOT NULL,
  `p_fname` varchar(30) NOT NULL,
  `p_lname` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'ECG', '2018-10-19', 'Chamod', 'Nimsara', '0712221111', 0, 'chamodnimsaradx@gmail.com', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE `ward` (
  `w_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `w_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  ADD PRIMARY KEY (`ref_no`);

--
-- Indexes for table `channellings`
--
ALTER TABLE `channellings`
  ADD PRIMARY KEY (`channel_id`),
  ADD UNIQUE KEY `doc_id` (`doc_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`floor_no`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

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
  MODIFY `ref_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `channellings`
--
ALTER TABLE `channellings`
  MODIFY `channel_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `floor_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ward`
--
ALTER TABLE `ward`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
