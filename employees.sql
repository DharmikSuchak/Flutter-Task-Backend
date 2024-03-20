-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2024 at 10:55 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employees`
--

-- --------------------------------------------------------

--
-- Table structure for table `list_of_employees`
--

CREATE TABLE `list_of_employees` (
  `Serial_no` int(11) NOT NULL,
  `Name` varchar(11) NOT NULL,
  `Date_of_joining` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `list_of_employees`
--

INSERT INTO `list_of_employees` (`Serial_no`, `Name`, `Date_of_joining`) VALUES
(1, 'Dharmik', '2016-03-03'),
(2, 'Jay', '2020-03-14'),
(3, 'Shivam', '2019-10-21'),
(4, 'Vatsal', '2014-03-07'),
(5, 'Aniket', '2018-03-03'),
(6, 'Paras', '2024-02-13'),
(7, 'Shubham', '2019-03-19'),
(8, 'Jagdish', '2019-10-08'),
(10, 'Archana', '2016-03-16'),
(11, 'Jyoti', '2022-03-23'),
(12, 'Tapu', '2021-03-17'),
(13, 'Sonu', '2014-03-28'),
(14, 'Yoman', '2016-03-27'),
(15, 'Merra', '2021-03-27'),
(16, 'Vivek', '2016-03-29'),
(17, 'Jiyan', '2022-01-11'),
(18, 'Dunki', '2023-11-09'),
(19, 'Ishita', '2023-12-20'),
(20, 'Kaeya', '2021-02-25'),
(22, 'ram', '2016-01-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list_of_employees`
--
ALTER TABLE `list_of_employees`
  ADD PRIMARY KEY (`Serial_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `list_of_employees`
--
ALTER TABLE `list_of_employees`
  MODIFY `Serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
