-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2019 at 10:51 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olc`
--

-- --------------------------------------------------------

--
-- Table structure for table `allfiles`
--

CREATE TABLE `allfiles` (
  `fno` int(15) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `fdate` date DEFAULT NULL,
  `sname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allfiles`
--

INSERT INTO `allfiles` (`fno`, `fname`, `fdate`, `sname`) VALUES
(11, 'AJP Assignment - 1.pdf', '2019-02-20', ''),
(12, 'AJP Assignment - 1.pdf', '2019-02-20', ''),
(13, 'AJP Assignment - 1 (1).pdf', '2019-02-20', ''),
(14, 'Mid Question Bank (1).pdf', '2019-02-20', ''),
(15, 'AJP Assignment - 1.pdf', '2019-02-20', ''),
(16, 'AJP Assignment - 1.pdf', '2019-02-20', ''),
(17, 'New Doc 2018-07-25 - Copy.pdf', '2019-02-25', ''),
(18, 'New Doc 2018-07-25.pdf', '2019-02-25', ''),
(19, 'New Doc 2018-07-25.pdf', '2019-02-25', 'php'),
(20, 'New Doc 2018-07-25 - Copy.pdf', '2019-02-25', 'java'),
(21, 'Unit-II Introduction to  Andro', '2019-03-06', 'nma'),
(22, '528919_1491881430.pdf', '2019-03-07', 'abc'),
(23, '512120_1489396519.pdf', '2019-03-13', 'maths'),
(24, 'cmTutorial_TRIGGER_MYSQL.docx', '2019-03-13', ''),
(25, 'AJP Assignment - 2.pdf', '2019-03-13', 'maths'),
(26, 'AJP - Mid Question Bank with S', '2019-03-14', 'java');

-- --------------------------------------------------------

--
-- Table structure for table `asignup`
--

CREATE TABLE `asignup` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `phone_number` int(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asignup`
--

INSERT INTO `asignup` (`first_name`, `last_name`, `phone_number`, `email`, `password`) VALUES
('chetan', 'modhvadiya', 2147483647, 'cm@gmail.com', '123'),
('s', 'p', 2147483647, 'sp@gmail.com', '123'),
('Gautam', 'Nayak', 2147483647, 'gn@g.com', '111');

-- --------------------------------------------------------

--
-- Table structure for table `be`
--

CREATE TABLE `be` (
  `id` varchar(20) NOT NULL,
  `be_subject` varchar(20) NOT NULL,
  `be_material_name` varchar(20) NOT NULL,
  `be_dept` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `be`
--

INSERT INTO `be` (`id`, `be_subject`, `be_material_name`, `be_dept`, `date`) VALUES
('', 'ac circute', 'Ch-5.docx', 'ec', '2019-03-28');

-- --------------------------------------------------------

--
-- Table structure for table `be_department`
--

CREATE TABLE `be_department` (
  `id` int(20) NOT NULL,
  `be_dept_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `be_department`
--

INSERT INTO `be_department` (`id`, `be_dept_name`) VALUES
(0, 'ec'),
(0, 'ee');

-- --------------------------------------------------------

--
-- Table structure for table `be_subject`
--

CREATE TABLE `be_subject` (
  `id` int(20) NOT NULL,
  `be_subject_name` varchar(20) NOT NULL,
  `be_dept_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `be_subject`
--

INSERT INTO `be_subject` (`id`, `be_subject_name`, `be_dept_name`) VALUES
(0, 'ac circute', 'ec'),
(0, 'dc circuite', 'ee');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sub_of_msg` varchar(200) NOT NULL,
  `msg` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `fname`, `lname`, `email`, `sub_of_msg`, `msg`) VALUES
(8, 'chetan', 'modhvadiya', 'fictisious_ajay@yahoo.com', 'feedback', 'its demo for feedback page .its working..........'),
(9, 'Gautam', 'Nayak', 'gn@gmail.com', 'about maths', 'i have an issue in login........'),
(10, 'smit', 'patel', 'cm@g.c', 'feedback', 'i found one mistake in your material'),
(11, 'sandip', 'patel', 'sandippatel@gmail.com', 'about your work', 'your site is very helpfull to me , i am satisfied '),
(12, 'dhir', 'patel', 'dp@gmail.com', 'databse error', 'sometimes i cannot open this site');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(20) NOT NULL,
  `dept_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `dept_name`) VALUES
(0, 'computer'),
(0, 'civil');

-- --------------------------------------------------------

--
-- Table structure for table `diploma`
--

CREATE TABLE `diploma` (
  `id` int(20) NOT NULL,
  `diploma_subject` varchar(20) NOT NULL,
  `diploma_material_name` varchar(20) NOT NULL,
  `diploma_dept` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diploma`
--

INSERT INTO `diploma` (`id`, `diploma_subject`, `diploma_material_name`, `diploma_dept`, `date`) VALUES
(0, 'java', 'CH-4.docx', 'computer', '2019-03-28'),
(0, 'cpd', 'active directory.pdf', 'civil', '2019-03-28');

-- --------------------------------------------------------

--
-- Table structure for table `diploma_subject`
--

CREATE TABLE `diploma_subject` (
  `id` int(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `diploma_dept` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diploma_subject`
--

INSERT INTO `diploma_subject` (`id`, `sname`, `diploma_dept`) VALUES
(0, 'cpd', 'civil'),
(0, 'java', 'computer');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `first_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`first_name`, `email`, `password`) VALUES
('chetan', 'cm@g.c', '111');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `phone_number` bigint(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`first_name`, `last_name`, `phone_number`, `email`, `password`) VALUES
('Sanju', 'baba', 9099814891, 'sb@g.com', '111'),
('abc', 'efg', 123456789, 'abc@gmail.com', '123'),
('gautam', 'nayak', 2147483647, 'gautam@gmail.com', '123'),
('xyz', 'pqr', 9876543210, 'xyz@gmail.com', '123'),
('s', 'p', 9876543210, 'sp@gmail.com', '123'),
('ac', 'sc', 9865471321, '_ac@gmail.com', '123'),
('chetan', 'modhvadiya', 2147483647, 'cm@gmail.com', '12345678'),
('sandip', 'patel', 9865321470, 'sp@gmail.com', '202cb962ac59075b964b'),
('Ruc', 'Pandya', 9999999999, 'rushi.pandya.162000@gmail.com', 'ruc123'),
('c', 'm ', 9874561230, 'cm@gmail.com', '111');

-- --------------------------------------------------------

--
-- Table structure for table `science12th`
--

CREATE TABLE `science12th` (
  `id` int(20) NOT NULL,
  `science_subject` varchar(20) NOT NULL,
  `science_material_name` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `science12th`
--

INSERT INTO `science12th` (`id`, `science_subject`, `science_material_name`, `date`) VALUES
(0, 'pysics', 'ch1.docx', '2019-03-28'),
(0, 'pysics', 'nma summer 2016.pdf', '2019-03-28');

-- --------------------------------------------------------

--
-- Table structure for table `science12th_subject`
--

CREATE TABLE `science12th_subject` (
  `id` int(20) NOT NULL,
  `sname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `science12th_subject`
--

INSERT INTO `science12th_subject` (`id`, `sname`) VALUES
(0, 'pysics');

-- --------------------------------------------------------

--
-- Table structure for table `ssc10th`
--

CREATE TABLE `ssc10th` (
  `id` int(11) NOT NULL,
  `ssc_subject` varchar(20) NOT NULL,
  `ssc_material_name` varchar(50) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ssc10th`
--

INSERT INTO `ssc10th` (`id`, `ssc_subject`, `ssc_material_name`, `date`) VALUES
(1, 'maths', 'Ch-5.docx', '2019-03-28'),
(2, 'maths', 'nma summer 2016.pdf', '2019-03-28');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sid` int(10) NOT NULL,
  `sname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sid`, `sname`) VALUES
(0, 'english'),
(0, 'maths'),
(0, 'Science');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allfiles`
--
ALTER TABLE `allfiles`
  ADD PRIMARY KEY (`fno`);

--
-- Indexes for table `be_department`
--
ALTER TABLE `be_department`
  ADD PRIMARY KEY (`be_dept_name`);

--
-- Indexes for table `be_subject`
--
ALTER TABLE `be_subject`
  ADD PRIMARY KEY (`be_subject_name`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diploma_subject`
--
ALTER TABLE `diploma_subject`
  ADD PRIMARY KEY (`sname`);

--
-- Indexes for table `science12th_subject`
--
ALTER TABLE `science12th_subject`
  ADD PRIMARY KEY (`sname`);

--
-- Indexes for table `ssc10th`
--
ALTER TABLE `ssc10th`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allfiles`
--
ALTER TABLE `allfiles`
  MODIFY `fno` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ssc10th`
--
ALTER TABLE `ssc10th`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
