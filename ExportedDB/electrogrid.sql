-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 08:19 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electrogrid`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `billID` int(20) NOT NULL,
  `billCode` varchar(20) NOT NULL,
  `electricityAccountNo` varchar(15) NOT NULL,
  `billMonth` varchar(10) NOT NULL,
  `units` varchar(10) NOT NULL,
  `paymentAmount` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`billID`, `billCode`, `electricityAccountNo`, `billMonth`, `units`, `paymentAmount`) VALUES
(13, 'BL004', 'AC50042', 'June', '14.0', '700.0'),
(14, 'BL005', 'AC50047', 'July', '12.0', '600.0'),
(16, 'BL007', 'AC50057', 'Sep', '20.0', '1000.0'),
(17, 'BL008', 'AC50062', 'Oct', '45.0', '2250.0'),
(18, 'BL009', 'AC50064', 'Nov', '49.0', '2450.0'),
(19, 'BL010', 'AC50066', 'Dec', '35.0', '1750.0'),
(22, 'BL011', 'AC50090', 'June', '25.0', '1250.0'),
(25, 'BL011', 'AC50095', 'May', '34.0', '1700.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`billID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `billID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
