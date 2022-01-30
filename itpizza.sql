-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2022 at 08:44 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itpizza`
--

-- --------------------------------------------------------

--
-- Table structure for table `flavours`
--

CREATE TABLE `flavours` (
  `id` int(11) NOT NULL,
  `flavour_name` varchar(225) NOT NULL,
  `flavour_ingredients` varchar(225) NOT NULL,
  `pizza_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flavours`
--

INSERT INTO `flavours` (`id`, `flavour_name`, `flavour_ingredients`, `pizza_image`) VALUES
(1, 'Tikka Pizza', 'Mashrooms, Jalepeno, Chicken, Onions, Olives, Pizza Sauce', '\\images\\c2.jpg'),
(2, 'Supereme Pizza', 'Black Pepper, Jalepeno, Chicken, Onions, Olives, Pizza Sauce', '\\images\\c2.jpg'),
(3, 'Cheese Crust', 'Onions, Mashroom, Hot Sauce, Mozrella Cheese, Olives, Pizza Sauce, Fries', '\\images\\c2.jpg'),
(4, 'Hot and Spicy', 'Red spice, Onions, Olives, Mashrooms, Black Pepper, Capsicum', '\\images\\c2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ipusers`
--

CREATE TABLE `ipusers` (
  `id` int(50) NOT NULL,
  `name` text NOT NULL,
  `cardno` varchar(50) NOT NULL,
  `mobileno` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `doissue` date NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ipusers`
--

INSERT INTO `ipusers` (`id`, `name`, `cardno`, `mobileno`, `address`, `doissue`, `password`, `email`) VALUES
(1, 'Suleman Mushtaq', 'A123', '03024917493', '', '0000-00-00', '12345655', 'sulemanmushtaq3@gmail.com'),
(2, 'Raza', 'A1234', '03024917493', '', '2022-01-07', '123', 'sulemanmushtaq3@gmail.com'),
(3, 'Raza', 'A123', '03024917493', 'Gali # 2', '0000-00-00', 'S123', 'sulemanmushtaq3@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pizza_price`
--

CREATE TABLE `pizza_price` (
  `id` int(11) NOT NULL,
  `flavour_id` int(11) NOT NULL,
  `size` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pizza_price`
--

INSERT INTO `pizza_price` (`id`, `flavour_id`, `size`, `price`) VALUES
(1, 1, 'Small', 640),
(2, 1, 'Medium', 1080),
(3, 1, 'Large', 1500),
(4, 1, 'Extra Large', 2000),
(5, 2, 'Small', 640),
(6, 2, 'Medium', 1080),
(7, 2, 'Large', 1500),
(8, 2, 'Extra Large', 2000),
(9, 3, 'Small', 640),
(10, 3, 'Medium', 1080),
(11, 3, 'Large', 1500),
(12, 2, 'Extra Large', 2000),
(13, 4, 'Small', 640),
(14, 4, 'Medium', 1080),
(15, 4, 'Large', 1500),
(16, 4, 'Extra Large', 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flavours`
--
ALTER TABLE `flavours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ipusers`
--
ALTER TABLE `ipusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pizza_price`
--
ALTER TABLE `pizza_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pizza_price_ibfk_1` (`flavour_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flavours`
--
ALTER TABLE `flavours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ipusers`
--
ALTER TABLE `ipusers`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pizza_price`
--
ALTER TABLE `pizza_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pizza_price`
--
ALTER TABLE `pizza_price`
  ADD CONSTRAINT `pizza_price_ibfk_1` FOREIGN KEY (`flavour_id`) REFERENCES `flavours` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
