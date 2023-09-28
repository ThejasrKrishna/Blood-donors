-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2023 at 05:16 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `slno` smallint(20) NOT NULL,
  `Username` char(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`slno`, `Username`, `Password`) VALUES
(1, 'Prajwal P', '18b18067'),
(2, 'Ranjith BS', '18b18075'),
(3, 'Prajwal GC', '18b18066'),
(4, 'Prajwal TM', '18b18068');

-- --------------------------------------------------------

--
-- Table structure for table `bdo1`
--

CREATE TABLE `bdo1` (
  `slno` smallint(6) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Name` char(20) NOT NULL,
  `Country` char(10) NOT NULL,
  `State` char(20) NOT NULL,
  `City` char(20) NOT NULL,
  `Location` char(20) NOT NULL,
  `Pincode` bigint(6) NOT NULL,
  `Bloodgroup` varchar(5) NOT NULL,
  `Age` smallint(3) NOT NULL,
  `Lastdonateddate` date NOT NULL,
  `Gender` char(10) NOT NULL,
  `Mobileno` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bdo1`
--

INSERT INTO `bdo1` (`slno`, `Email`, `Name`, `Country`, `State`, `City`, `Location`, `Pincode`, `Bloodgroup`, `Age`, `Lastdonateddate`, `Gender`, `Mobileno`) VALUES
(3, 'ranjithbs235@gmail.c', 'Ranjith B S', 'Tumkur', 'Karnataka', 'Tumkur', 'ssit', 572106, 'B+ve', 21, '2021-08-15', 'M', 9739476293),
(15, 'prajwaltm235@gmail.c', 'prajwal tm', 'INDIA', 'KARNATAKA', 'Tumkur', 'ss puram', 544408, 'A-ve', 21, '2021-08-18', 'M', 9876765443);

-- --------------------------------------------------------

--
-- Table structure for table `fb`
--

CREATE TABLE `fb` (
  `slno` smallint(20) NOT NULL,
  `Name` char(20) NOT NULL,
  `Feedback` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fb`
--

INSERT INTO `fb` (`slno`, `Name`, `Feedback`) VALUES
(1, 'abc', 'aaa'),
(2, 'john', 'good'),
(3, 'iot', 'average...'),
(4, 'hhh', 'qrtu'),
(5, 'ppp', 'prajju'),
(6, 'kjh', 'kgk'),
(7, 'pramod gangier', 'good'),
(8, 'abc', 'dhmfhjj'),
(9, 'qwerty', 'aertthh'),
(10, 'wert', 'aertthh'),
(11, 'gyfdyhtyc fuyfffyf h', 'ryufuguigui good'),
(12, 'Ranjith B S', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `slno` bigint(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Name` char(20) NOT NULL,
  `Country` char(20) NOT NULL,
  `State` char(20) NOT NULL,
  `City` char(20) NOT NULL,
  `Location` char(20) NOT NULL,
  `Pincode` bigint(6) NOT NULL,
  `Bloodgroup` varchar(6) NOT NULL,
  `Age` smallint(2) NOT NULL,
  `Lastdonateddate` date NOT NULL,
  `Gender` enum('m','f') NOT NULL,
  `Mobileno` bigint(12) NOT NULL,
  `Securitykey` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`slno`, `Email`, `Name`, `Country`, `State`, `City`, `Location`, `Pincode`, `Bloodgroup`, `Age`, `Lastdonateddate`, `Gender`, `Mobileno`, `Securitykey`) VALUES
(30, 'ranjith@gmail.com', 'RANJITH B S', 'India', 'karnataka', 'tumkur', 'urukere', 572106, 'B+ve', 20, '2021-02-14', 'm', 9739002301, 'ranjith@555'),
(32, 'harsha@gamil.com', 'Harsha HM', 'India', 'karnataka', 'tumkur', 'urukere', 572106, 'B+ve', 20, '2021-02-03', 'm', 9876543204, 'harsha'),
(37, 'prajwalchintuvc@gmai', 'prajwal G C', 'india', 'karnataka', 'tumkur', 'oorkere', 572106, 'O+ve', 20, '2021-02-03', 'm', 6364648228, 'chintu'),
(38, 'ppraju946@gmail.com', 'prajwal TM', 'india', 'karnataka', 'tumkur', 'uparhalli', 572102, 'B+ve', 20, '2021-02-06', 'm', 7483920074, 'vasista'),
(62, 'qwerty@gmail.com', 'qwerty', 'india', 'karnataka', 'dharwad', 'cbt', 580001, 'b+ve', 23, '2021-08-25', 'm', 9874561230, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `bdo1`
--
ALTER TABLE `bdo1`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `fb`
--
ALTER TABLE `fb`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`slno`),
  ADD UNIQUE KEY `Securitykey` (`Securitykey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `slno` smallint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bdo1`
--
ALTER TABLE `bdo1`
  MODIFY `slno` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `fb`
--
ALTER TABLE `fb`
  MODIFY `slno` smallint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reg`
--
ALTER TABLE `reg`
  MODIFY `slno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
