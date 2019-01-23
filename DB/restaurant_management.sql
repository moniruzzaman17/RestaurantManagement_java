-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2017 at 07:31 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_id` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_id`, `name`, `user_name`, `password`) VALUES
(1, 'Jannatul Ferdous Mim', 'mim786', '786');

-- --------------------------------------------------------

--
-- Table structure for table `daily_cost`
--

CREATE TABLE `daily_cost` (
  `sl` int(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `rice` varchar(20) NOT NULL,
  `flour` varchar(20) NOT NULL,
  `meat` varchar(20) NOT NULL,
  `veg` varchar(20) NOT NULL,
  `drinks` varchar(20) NOT NULL,
  `others` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_cost`
--

INSERT INTO `daily_cost` (`sl`, `date`, `rice`, `flour`, `meat`, `veg`, `drinks`, `others`) VALUES
(1, '1.2.2017', '100', '200', '25', '3', '12', '500'),
(2, '04-Apr-2017', '500', '56', '56', '56', '644', '45'),
(3, '04-Apr-2017', '456', '456', '456', '4556', '455', '4545');

-- --------------------------------------------------------

--
-- Table structure for table `employeer_registration`
--

CREATE TABLE `employeer_registration` (
  `name` varchar(30) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `e_mail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeer_registration`
--

INSERT INTO `employeer_registration` (`name`, `user_name`, `password`, `e_mail`) VALUES
('Josim Uddin', 'josim74', 'js54632', 'josimuddin74@gmail.com'),
('Josim', 'josim786', '786', 'sf'),
('Jannatul Ferdous Mim', 'mim12', 'mim786', 'mim12@gmail.com'),
('Moon', 'moon1997', 'kdf54551', 'moon@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `sell_cost`
--

CREATE TABLE `sell_cost` (
  `sl` int(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `sell_cost` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sell_cost`
--

INSERT INTO `sell_cost` (`sl`, `date`, `sell_cost`) VALUES
(1, '04-Apr-2017', '138.11'),
(2, '04-Apr-2017', '59569.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `daily_cost`
--
ALTER TABLE `daily_cost`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `employeer_registration`
--
ALTER TABLE `employeer_registration`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `sell_cost`
--
ALTER TABLE `sell_cost`
  ADD PRIMARY KEY (`sl`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `admin_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `daily_cost`
--
ALTER TABLE `daily_cost`
  MODIFY `sl` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sell_cost`
--
ALTER TABLE `sell_cost`
  MODIFY `sl` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
