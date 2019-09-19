-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2019 at 08:42 PM
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
-- Database: `a8_babiarzp`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_data`
--

CREATE TABLE `order_data` (
  `ID` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `post_code` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `dur_aa` int(20) NOT NULL,
  `dur_aaa` int(20) NOT NULL,
  `ener_aa` int(20) NOT NULL,
  `shippingCost` int(20) NOT NULL,
  `tax` int(20) NOT NULL,
  `total` int(20) NOT NULL,
  `last_edited` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_data`
--

INSERT INTO `order_data` (`ID`, `name`, `email`, `phone`, `address`, `city`, `post_code`, `province`, `dur_aa`, `dur_aaa`, `ener_aa`, `shippingCost`, `tax`, `total`, `last_edited`) VALUES
(1, 'John Doe', 'test@test.com', '123-123-1233', '123 aaaa ave', 'asdasd', 'N2E 0G2', 'Ontario', 2, 0, 2, 0, 0, 0, '2019-04-05 20:56:51'),
(2, 'John Doe', 'admin@test.com', '123-123-1233', '123 aaaa ave', 'asdasd', 'N2E 0G2', 'Ontario', 1, 0, 0, 0, 0, 0, '2019-04-05 20:56:37'),
(3, 'John Doe', 'admin@test.com', '123-123-1231', '123 aaaa ave', 'asasd', 'N2E 0G2', 'Ontario', 5, 0, 2, 0, 0, 0, '2019-04-05 20:56:54'),
(7, 'Pawel Babiarz', 'pkatawoda@hotmail.com', '6472103507', '1223 Alexandra Ave', 'Mississauga', 'l5e 2a4', '9', 1, 0, 3, 25, 1, 136, '2019-04-05 21:18:05'),
(13, 'swag', 'swag@swag.com', '1231231233', '123 asd ave', 'asdasd', 'w1w 1w1', '1', 2, 0, 3, 30, 1, 152, '2019-04-05 22:03:56'),
(17, 'Pawel Babiarz', 'pkatawoda@hotmail.com', '6472103507', '1223 Alexandra Ave', 'Mississauga', 'l5e 2a4', '9', 1, 0, 0, 30, 1, 57, '2019-04-05 22:53:08'),
(18, 'Pawel Babiarz', 'pkatawoda@hotmail.com', '6472103507', '1223 Alexandra Ave', 'Mississauga', 'l5e 2a4', '10', 1, 0, 0, 20, 1, 46, '2019-04-06 14:15:54'),
(19, 'mojojojo', 'asd@asd.asd', '1231231233', '123 qwe ave', 'qweqwe', 'e1e 1e1', 'Newfoundland', 2, 0, 0, 20, 1, 69, '2019-04-06 14:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `ud_id` int(11) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  `name` varchar(500) COLLATE utf8_bin NOT NULL,
  `email` varchar(500) COLLATE utf8_bin NOT NULL,
  `phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `last_edited` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`ud_id`, `u_id`, `name`, `email`, `phone`, `last_edited`) VALUES
(1, 1, 'John', 'admin@test.com', '123-123-1233', '2019-03-21 18:00:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `user_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` int(11) NOT NULL,
  `last_edited` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `name`, `username`, `password`, `role`, `last_edited`) VALUES
(1, 'Admin', 'admin', 'admin', 1, '2019-03-21 18:00:51'),
(2, 'Pawel Babiarz', 'pkatawoda@hotmail.com', '1231233', 2, '2019-04-05 22:02:18'),
(3, 'swag', 'swag@swag.com', 'swag', 2, '2019-04-05 22:03:56'),
(7, 'Pawel Babiarz', 'pkatawoda@hotmail.com', '1231233', 2, '2019-04-05 22:53:08'),
(8, 'Pawel Babiarz', 'pkatawoda@hotmail.com', '1231233', 2, '2019-04-06 14:15:54'),
(9, 'mojojojo', 'asd@asd.asd', 'asdasd', 2, '2019-04-06 14:18:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_data`
--
ALTER TABLE `order_data`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`ud_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_data`
--
ALTER TABLE `order_data`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `ud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
