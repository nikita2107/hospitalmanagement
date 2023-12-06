-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2021 at 02:39 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalmanagment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `ambulancetb`
--

CREATE TABLE `ambulancetb` (
  `aid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `alternateContact` int(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `email` varchar(30) NOT NULL,
  `userStatus` int(1) NOT NULL,
  `adminStatus` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ambulancetb`
--

INSERT INTO `ambulancetb` (`aid`, `pid`, `name`, `alternateContact`, `address`, `message`, `email`, `userStatus`, `adminStatus`, `status`, `date`) VALUES
(1, 1, 'ram kumar', 1234567890, 'Kalamboli', 'Feeling uneasy', 'ram@gmail.com', 1, 1, 0, '2021-03-14 18:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL,
  `missedStatus` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`, `missedStatus`) VALUES
(4, 1, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '2020-02-14', '10:00:00', 1, 0, 0),
(4, 2, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-02-28', '10:00:00', 1, 0, 0),
(4, 3, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Amit', 1000, '2020-02-19', '03:00:00', 1, 1, 1),
(11, 4, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', '9768946252', 'ashok', 500, '2020-02-29', '20:00:00', 0, 0, 0),
(4, 5, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-02-28', '12:00:00', 1, 0, 0),
(4, 6, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '2020-02-26', '15:00:00', 0, 1, 0),
(5, 9, 'Gautam', 'Shankararam', 'Male', 'gautam@gmail.com', '9070897653', 'Ganesh', 550, '2020-03-19', '20:00:00', 1, 0, 0),
(4, 10, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '2021-02-02', '14:00:00', 1, 0, 0),
(4, 11, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-03-27', '15:00:00', 1, 1, 1),
(9, 12, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Kumar', 800, '2020-03-26', '12:00:00', 1, 1, 1),
(9, 13, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Tiwary', 450, '2020-03-26', '14:00:00', 1, 1, 1),
(1, 16, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'Ayush', 500, '2021-02-24', '18:00:00', 0, 1, 0),
(1, 17, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'Ayush', 500, '2021-02-24', '18:00:00', 1, 0, 0),
(1, 18, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'Ayush', 500, '2021-02-24', '20:00:00', 0, 0, 0),
(1, 19, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'ashok', 500, '2021-02-25', '10:00:00', 1, 1, 1),
(11, 20, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', '9768946252', 'Ayush', 500, '2021-02-25', '10:00:00', 0, 0, 0),
(18, 21, 'ram', 'krishnan', 'Male', 'ram123@gmail.com', '9920161076', 'Heemanshu', 500, '2021-02-25', '18:00:00', 1, 1, 1),
(1, 22, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'Heemanshu', 500, '2021-02-27', '18:00:00', 0, 1, 0),
(1, 23, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'Ayush', 500, '2021-02-26', '16:00:00', 0, 0, 0),
(1, 24, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'Ayush', 500, '2021-02-26', '16:00:00', 1, 0, 0),
(1, 25, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'Ayush', 500, '2021-02-28', '20:00:00', 1, 1, 1),
(1, 26, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'Amit', 1000, '2021-03-15', '12:00:00', 1, 1, 1),
(1, 27, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'Ayush', 500, '2021-03-30', '12:00:00', 1, 1, 1),
(1, 28, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'Ayush', 500, '2021-03-31', '10:00:00', 0, 0, 0),
(1, 29, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'Dinesh', 700, '2021-04-01', '16:00:00', 1, 1, 1),
(1, 30, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'Ayush', 500, '2021-04-01', '18:00:00', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Anu', 'anu@gmail.com', '7896677554', 'Hey Admin'),
(' Viki', 'viki@gmail.com', '9899778865', 'Good Job, Pal'),
('Ananya', 'ananya@gmail.com', '9997888879', 'How can I reach you?'),
('Aakash', 'aakash@gmail.com', '8788979967', 'Love your site'),
('Mani', 'mani@gmail.com', '8977768978', 'Want some coffee?'),
('Karthick', 'karthi@gmail.com', '9898989898', 'Good service'),
('Abbis', 'abbis@gmail.com', '8979776868', 'Love your service'),
('Asiq', 'asiq@gmail.com', '9087897564', 'Love your service. Thank you!'),
('Jane', 'jane@gmail.com', '7869869757', 'I love your service!'),
('Ayush', 'ayush@gmail.com', '1234567890', 'Awesome website'),
('Ayush', 'ayush@gmail.com', '1234567890', 'Awesome website'),
('kakashi', 'ayuh@gmail.com', '1234567890', 'snkjndndlk'),
('kakashi', 'ayuh@gmail.com', '1234567890', 'snkjndndlk'),
('kakashi', 'ayuh@gmail.com', '1234567890', 'snkjndndlk');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL,
  `contact` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`, `contact`) VALUES
('ashok', 'ashok123', 'ashok@gmail.com', 'General', 500, '1234567890'),
('arun', 'arun123', 'arun@gmail.com', 'Cardiologist', 600, '1234567890'),
('Dinesh', 'dinesh123', 'dinesh@gmail.com', 'General', 700, '1234567890'),
('Ganesh', 'ganesh123', 'ganesh@gmail.com', 'Pediatrician', 550, '1234567890'),
('Kumar', 'kumar123', 'kumar@gmail.com', 'Pediatrician', 800, '1234567890'),
('Amit', 'amit123', 'amit@gmail.com', 'Cardiologist', 1000, '1234567890'),
('Tiwary', 'tiwary123', 'tiwary@gmail.com', 'Pediatrician', 450, '1234567890'),
('Ayush', '123', 'ayush@gmail.com', 'Dermatologist', 500, '1234567890'),
('Heemanshu', '123', 'heemanshu@gmail.com', 'Neurologist', 500, '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`) VALUES
(1, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'ram123'),
(2, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '8976897689', 'alia123'),
(3, 'Shahrukh', 'khan', 'Male', 'shahrukh@gmail.com', '8976898463', 'shahrukh123'),
(4, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'kishan123'),
(5, 'Gautam', 'Shankararam', 'Male', 'gautam@gmail.com', '9070897653', 'gautam123'),
(6, 'Sushant', 'Singh', 'Male', 'sushant@gmail.com', '9059986865', 'sushant123'),
(7, 'Nancy', 'Deborah', 'Female', 'nancy@gmail.com', '9128972454', 'nancy123'),
(8, 'Kenny', 'Sebastian', 'Male', 'kenny@gmail.com', '9809879868', 'kenny123'),
(9, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'william123'),
(10, 'Peter', 'Norvig', 'Male', 'peter@gmail.com', '9609362815', 'peter123'),
(11, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', '9768946252', 'shraddha123'),
(15, 'yo', 'yo', 'Male', 'yoy11@gmail.com', '1234567890', '123'),
(18, 'ram', 'krishnan', 'Male', 'ram123@gmail.com', '9920161076', '123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Ganesh', 2, 8, 'Alia', 'Bhatt', '2020-03-21', '10:00:00', 'Severe Fever', 'Nothing', 'Take bed rest'),
('Kumar', 9, 12, 'William', 'Blake', '2020-03-26', '12:00:00', 'Sever fever', 'nothing', 'Paracetamol -> 1 every morning and night'),
('Tiwary', 9, 13, 'William', 'Blake', '2020-03-26', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content'),
('ashok', 11, 4, 'Shraddha', 'Kapoor', '2020-02-29', '20:00:00', 'Cough', 'None', 'Take 2 spoon of benedryll \r\n1 IMR Tablets - After Dinner - 30 Days \r\nHealthy juice'),
('Ayush', 11, 20, 'Shraddha', 'Kapoor', '2021-02-25', '10:00:00', 'Pimples', 'Dust', 'Apply Epiduo cream on face at night\r\nWash face with facewash'),
('Ayush', 1, 18, 'Ram', 'Kumar', '2021-02-24', '20:00:00', 'Head ache', 'None', 'Take adequate Rest\r\nTake Tablets of Diclogem after food\r\nTake Omeg tablet\r\nDrink juice and Electrol powder\r\n'),
('Ayush', 1, 23, 'Ram', 'Kumar', '2021-02-26', '16:00:00', 'Cold', 'None ', 'Benedryl 2 spoon'),
('Ayush', 1, 28, 'Ram', 'Kumar', '2021-03-31', '10:00:00', 'None', 'None', 'Take good sleep \r\nHave healthy breakfast\r\nDo yoga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambulancetb`
--
ALTER TABLE `ambulancetb`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ambulancetb`
--
ALTER TABLE `ambulancetb`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
