-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 06:48 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `billdetails`
--

CREATE TABLE `billdetails` (
  `bill_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `item_qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billdetails`
--

INSERT INTO `billdetails` (`bill_id`, `food_id`, `item_qty`) VALUES
(1, 19, 1),
(1, 20, 1),
(2, 42, 2),
(3, 42, 2),
(4, 37, 1),
(4, 38, 1),
(4, 40, 1),
(5, 37, 1),
(5, 40, 1),
(6, 37, 1),
(6, 38, 1),
(6, 39, 1),
(7, 37, 1),
(7, 38, 1),
(8, 37, 3),
(8, 38, 3),
(9, 1, 1),
(9, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `billstatus`
--

CREATE TABLE `billstatus` (
  `bill_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bill_phone` varchar(255) DEFAULT NULL,
  `bill_address` text DEFAULT NULL,
  `bill_when` varchar(255) DEFAULT NULL,
  `bill_method` varchar(255) DEFAULT NULL,
  `bill_discount` int(11) DEFAULT NULL,
  `bill_delivery` int(11) DEFAULT NULL,
  `bill_total` int(11) DEFAULT NULL,
  `bill_paid` varchar(255) DEFAULT NULL,
  `bill_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billstatus`
--

INSERT INTO `billstatus` (`bill_id`, `user_id`, `bill_phone`, `bill_address`, `bill_when`, `bill_method`, `bill_discount`, `bill_delivery`, `bill_total`, `bill_paid`, `bill_status`) VALUES
(1, 1, '84123456789', 'mars', '2023-03-04T20:34', 'cash', 4, 15, 23, 'false', 1),
(2, 2, '84123456789', 'Mars', '2023-03-05T00:59', 'cash', 0, 15, 21, 'false', 1),
(3, 2, '84123456789', 'mars', '2023-03-05T01:03', 'cash', 0, 15, 21, 'false', 1),
(4, 1, '84919337853', 'mars', '2023-03-05T09:04', 'cash', 1, 15, 29, 'false', 1),
(5, 1, '84919337853', 'mars', '2023-03-05T10:39', 'cash', 1, 15, 24, 'false', 1),
(6, 1, '84123456789', 'Lovely Mars planet', '2023-03-05T10:59', 'cash', 0, 15, 30, 'false', 1),
(7, 1, '84123456789', 'mars', '2023-03-05T11:44', 'cash', 0, 15, 25, 'false', 1),
(8, 1, '84123456789', 'mars', '2023-03-05T17:42', 'cash', 0, 15, 45, 'false', 1),
(9, 1, '84879887978', 'mmfgf', '2023-06-09T21:16', 'cash', 0, 15, 39, 'false', 1);

-- --------------------------------------------------------

--
-- Table structure for table `booktable`
--

CREATE TABLE `booktable` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `book_phone` varchar(255) DEFAULT NULL,
  `book_people` int(11) DEFAULT NULL,
  `book_tables` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_when` varchar(255) DEFAULT NULL,
  `book_note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `item_qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `food_id` int(11) NOT NULL,
  `food_name` varchar(255) DEFAULT NULL,
  `food_star` varchar(255) DEFAULT NULL,
  `food_vote` varchar(255) DEFAULT NULL,
  `food_price` varchar(255) DEFAULT NULL,
  `food_discount` varchar(255) DEFAULT NULL,
  `food_desc` varchar(255) DEFAULT NULL,
  `food_status` varchar(255) DEFAULT NULL,
  `food_type` varchar(255) DEFAULT NULL,
  `food_category` varchar(255) DEFAULT NULL,
  `food_src` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `food_name`, `food_star`, `food_vote`, `food_price`, `food_discount`, `food_desc`, `food_status`, `food_type`, `food_category`, `food_src`) VALUES
(1, 'carne asada tacos', '4.5', '999', '12.00', '0.00', '03 pieces per serving', 'best seller', 'meat', 'taco', 'taco/taco-1.png'),
(2, 'shrimp tacos', '4.5', '999', '15.00', '3.00', '03 pieces per serving', 'best seller', 'meat', 'taco', 'taco/taco-2.png'),
(3, 'barbacoa tacos', '4.5', '500', '12.00', '0.00', '03 pieces per serving', 'best seller', 'meat', 'taco', 'taco/taco-3.png'),
(4, 'tacos al pastor', '4.5', '999', '13.00', '2.00', '03 pieces per serving', 'best seller', 'meat', 'taco', 'taco/taco-4.png'),
(5, 'tinga tacos', '4', '500', '11.00', '0.00', '03 pieces per serving', 'normal', 'meat', 'taco', 'taco/taco-5.png'),
(6, 'campechanos tacos', '4', '500', '11.00', '1.00', '03 pieces per serving', 'new dishes', 'meat', 'taco', 'taco/taco-6.png'),
(7, 'carnitas tacos', '4.5', '500', '14.00', '2.00', '03 pieces per serving', 'seasonal dishes online only', 'meat', 'taco', 'taco/taco-7.png'),
(8, 'vegan tacos', '4.5', '100', '9.00', '2.00', '03 pieces per serving', 'new dishes', 'vegan', 'taco', 'taco/taco-8.png'),
(9, 'wet burrito', '4.5', '600', '14.00', '0.00', '01 roll per serving', 'new dishes', 'meat', 'burrito', 'burrito/burrito-1.png'),
(10, 'poncho burrito', '4.5', '999', '15.00', '3.00', '01 roll per serving', 'best seller', 'meat', 'burrito', 'burrito/burrito-2.png'),
(11, 'bean & cheese burrito', '4.5', '999', '14.00', '0.00', '01 roll per serving', 'best seller', 'vegan', 'burrito', 'burrito/burrito-3.png'),
(12, 'breakfast burrito', '4.5', '999', '12.00', '2.00', '01 roll per serving', 'new dishes', 'meat', 'burrito', 'burrito/burrito-4.png'),
(13, 'california burrito', '4.5', '999', '14.00', '0.00', '01 roll per serving', 'best seller', 'meat', 'burrito', 'burrito/burrito-5.png'),
(14, 'chimichanga', '4', '400', '12.00', '2.00', '01 roll per serving', 'seasonal dishes', 'meat', 'burrito', 'burrito/burrito-6.png'),
(15, 'nacho tots', '4', '699', '12.00', '2.00', '01 tray per serving', 'best seller', 'meat', 'nachos', 'nachos/nachos-1.png'),
(16, 'root beer pork nachos', '4.5', '999', '12.00', '0.00', '01 tray per serving', 'best seller', 'meat', 'nachos', 'nachos/nachos-2.png'),
(17, 'shrimp nachos', '4.5', '999', '17.00', '2.00', '01 tray per serving', 'best seller', 'meat', 'nachos', 'nachos/nachos-3.png'),
(18, 'chicken nachos', '4.5', '999', '11.00', '0.00', '01 tray per serving', 'best seller', 'meat', 'nachos', 'nachos/nachos-4.png'),
(19, 'only nachos', '4', '999', '7.00', '2.00', '01 tray per serving', 'normal', 'vegan', 'nachos', 'nachos/nachos-5.png'),
(20, 'pico de gallo', '4.5', '999', '5.00', '2.00', '01 bowl per serving', 'best seller', 'vegan', 'nachos', 'nachos/salsa-1.png'),
(21, 'salsa guille', '4', '699', '5.00', '2.00', '01 bowl per serving', 'best seller', 'vegan', 'nachos', 'nachos/salsa-2.png'),
(22, 'tomatillo salsa', '4.5', '499', '5.00', '2.00', '01 bowl per serving', 'seasonal dishes', 'vegan', 'nachos', 'nachos/salsa-3.png'),
(23, 'roasted tomato salsa', '4.5', '999', '5.00', '2.00', '01 bowl per serving', 'best seller', 'vegan', 'nachos', 'nachos/salsa-4.png'),
(24, 'guacamole', '4.5', '699', '5.00', '2.00', '01 bowl per serving', 'best seller', 'vegan', 'nachos', 'nachos/salsa-5.png'),
(25, 'corn salad', '3.5', '699', '5.00', '1.00', '01 bowl per serving', 'new dishes seasonal dishes', 'vegan', 'sides', 'side/side-1.png'),
(26, 'keto taquitos', '4.5', '999', '9.00', '0.00', '05 pieces per serving', 'best seller', 'meat', 'sides', 'side/side-2.png'),
(27, 'mexican rice', '4', '200', '5.00', '0.00', '01 bowl per serving', 'normal', 'vegan', 'sides', 'side/side-3.png'),
(28, 'cilantro lime rice', '4', '100', '5.00', '0.00', '01 bowl per serving', 'new dishes', 'vegan', 'sides', 'side/side-4.png'),
(29, 'chicken tortilla soup', '3.5', '299', '10.00', '2.00', '01 bowl per serving', 'new dishes', 'meat', 'sides', 'side/side-5.png'),
(30, 'Churros', '4.5', '999', '7.00', '0.00', '05 pieces per serving', 'best seller', 'vegan', 'dessert', 'dessert/dessert-1.png'),
(31, 'Fried Ice Cream', '4.5', '999', '5.00', '1.00', '01 piece per serving', 'best seller', 'vegan', 'dessert', 'dessert/dessert-2.png'),
(32, 'Dulce de Leche', '4.5', '50', '4.00', '0.00', '01 bowl per serving', 'new dishes', 'vegan', 'dessert', 'dessert/dessert-3.png'),
(33, 'Sweet Corn Cake', '3', '599', '4.00', '1.00', '02 pieces per serving', 'seasonal dishes online only', 'vegan', 'dessert', 'dessert/dessert-4.png'),
(34, 'Sopapillas', '4', '199', '4.00', '0.00', '10 pieces per serving', 'normal', 'vegan', 'dessert', 'dessert/dessert-5.png'),
(35, 'Conchas', '4', '299', '5.00', '0.00', '10 pieces per serving', 'normal', 'vegan', 'dessert', 'dessert/dessert-6.png'),
(36, 'Horchata', '4.5', '999', '4.00', '0.00', '01 glass per serving', 'normal', 'vegan', 'dessert', 'dessert/dessert-7.png'),
(37, 'Margarita', '4.5', '999', '5.00', '0.00', '01 glass per serving', 'best seller', 'vegan', 'drink', 'drink/drink-1.png'),
(38, 'Michelada', '4.5', '999', '5.00', '0.00', '01 glass per serving', 'best seller', 'vegan', 'drink', 'drink/drink-2.png'),
(39, 'paloma', '4.5', '599', '5.00', '0.00', '01 glass per serving', 'new dishes seasonal dishes', 'vegan', 'drink', 'drink/drink-3.png'),
(40, 'Atole', '4', '999', '5.00', '1.00', '01 glass per serving', 'best seller', 'vegan', 'drink', 'drink/drink-4.png'),
(41, 'fruit detox', '3.5', '999', '3.00', '0.00', '01 glass per serving', 'seasonal dishes best seller', 'vegan', 'drink', 'drink/drink-5.png'),
(42, 'Coca cola', '4.5', '9999', '3.00', '0.00', '01 glass per serving', 'best seller', 'vegan', 'drink', 'drink/drink-6.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_birth` varchar(255) DEFAULT NULL,
  `user_gender` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_password`, `user_birth`, `user_gender`) VALUES
(1, 'VISHAL KUMAR SARAIWAL', 'vishalsaraiwal68@gmail.com', '84919337853', 'password@', '2023-02-04', 'male'),
(2, 'Sahiba Longiani', 'longianisahiba@gmail.com', '84123456789', 'Sahiba@123', '2002-02-04', 'female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billdetails`
--
ALTER TABLE `billdetails`
  ADD PRIMARY KEY (`bill_id`,`food_id`);

--
-- Indexes for table `billstatus`
--
ALTER TABLE `billstatus`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `booktable`
--
ALTER TABLE `booktable`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`user_id`,`food_id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booktable`
--
ALTER TABLE `booktable`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
