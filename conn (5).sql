-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2020 at 03:52 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `conn`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `cart_id` int(5) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pizza_type` varchar(10) DEFAULT NULL,
  `pizza_name` varchar(50) DEFAULT NULL,
  `pizza_cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_list`
--

INSERT INTO `cart_list` (`cart_id`, `email`, `pizza_type`, `pizza_name`, `pizza_cost`) VALUES
(5, 'hiteshcg15@gmail.com', 'Veg', 'Paneer Pepperoni', '249.00'),
(7, 'hiteshcg15@gmail.com', 'Veg', 'Cheesy Tomato N Onion', '499.00'),
(11, NULL, 'Non veg', 'Cheesy Chicken Delight', '499.00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_no` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `cost` int(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_no`, `name`, `email`, `phone`, `quantity`, `cost`, `status`) VALUES
(12, 'hitesh', 'hiteshcg15@gmail.com', 88995566, 2, 200, 'delivered');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `order_id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneno` varchar(50) NOT NULL,
  `pizza_type` varchar(50) DEFAULT NULL,
  `pizza_name` varchar(50) DEFAULT NULL,
  `pizza_cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`order_id`, `email`, `phoneno`, `pizza_type`, `pizza_name`, `pizza_cost`) VALUES
(2, 'hiteshcg15@gmail.com', '9955884466', 'Non veg', 'Tuna N Tomato', '499.00'),
(3, 'hiteshcg15@gmail.com', '9955884466', 'Non veg', 'Tuna N Tomato', '499.00'),
(4, 'hiteshcg15@gmail.com', '9955884466', 'Veg', 'Paneer Pepperoni', '249.00'),
(5, 'hiteshcg15@gmail.com', '9955884466', 'Veg', 'Mushroom Paradise', '399.00');

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `email` varchar(50) DEFAULT NULL,
  `otp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`email`, `otp`) VALUES
('hit1998@gmail.com', 'G9PZiy');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `phoneno` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `phoneno`, `email`, `password`, `address`) VALUES
('admin', '7879845613', 'admin@gmail.com', '12345', 'bangalore'),
('AKASH', '7975701859', 'akashvijay769@gmail.com', '123456', 'bangalore'),
('Hitesh', '9448616359', 'hit1998@gmail.com', '1998', 'Bangalore'),
('Hitesh', '9955884466', 'hiteshcg15@gmail.com', '1234', 'Bangalore'),
('Shalini', '7788559966', 'shalini12@gmail.com', '1234', 'Hassan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_no`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `email` (`email`),
  ADD KEY `phoneno` (`phoneno`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD KEY `email` (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `phoneno` (`phoneno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `cart_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`),
  ADD CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`phoneno`) REFERENCES `user` (`phoneno`);

--
-- Constraints for table `otp`
--
ALTER TABLE `otp`
  ADD CONSTRAINT `otp_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
