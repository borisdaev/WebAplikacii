-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2023 at 05:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `surname`, `username`, `password`) VALUES
(1, 'Boris', 'Daev', 'BorisDaev', 'BorisDaev'),
(2, 'petar', 'daev', 'petardaev', 'petardaev'),
(20, 'admin', 'admin', 'adminadmin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `picture`, `active`) VALUES
(3, 'protein', 'category_3.jpg', 'yes'),
(4, 'creatine', 'category_4.jpg', 'yes'),
(14, 'shirts', 'category_100.jpg', 'yes'),
(15, 'novo', 'category_101.jpg', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`id`, `name`, `picture`, `description`) VALUES
(1, 'bench_press', 'equipments_40.jpg', 'The bench press is a compound exercise that targets the muscles of the upper body. It involves lying on a bench and pressing weight upward using either a barbell or a pair of dumbbells. During a bench press, you lower the weight down to chest level and then press upwards while extending your arms.'),
(2, 'deadlift', 'equipments_41.jpg', 'The deadlift is a movement in which your hips hinge backward to lower down and pick up a weighted barbell or kettlebell from the floor. Your back is flat throughout the movement. Some benefits of performing deadlifts include strengthening and gaining more definition in your upper and lower back, glutes, and hamstrings.'),
(3, 'lat_pulldown', 'equipments_42.jpg', 'The lat pull down machine is designed for the purpose of compound exercise, specifically exercise meant to both develop and then stress the lat muscle, which is short for lattisimus dorsi.');

-- --------------------------------------------------------

--
-- Table structure for table `kosnicka`
--

CREATE TABLE `kosnicka` (
  `id` int(10) UNSIGNED NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `productID` int(10) UNSIGNED NOT NULL,
  `isporacano` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kosnicka`
--

INSERT INTO `kosnicka` (`id`, `userID`, `productID`, `isporacano`) VALUES
(1, 1, 10, 'yes'),
(2, 1, 10, 'yes'),
(3, 1, 10, 'yes'),
(5, 44, 30, 'yes'),
(6, 1, 11, 'yes'),
(9, 1, 20, 'yes'),
(11, 44, 11, 'yes'),
(23, 44, 20, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(15) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `active` varchar(10) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `categoryID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `name`, `price`, `picture`, `active`, `featured`, `categoryID`) VALUES
(10, 'Elm & Rye Protein Supplement', 1300, 'product_10.jpg', 'yes', 'yes', 3),
(11, 'Jacked Factory Authentic Whey Protein Powder', 3000, 'product_11.jpg', 'yes', 'yes', 3),
(20, 'Thorne Creatine', 2000, 'product_20.png', 'yes', 'yes', 4),
(21, 'Klean Athlete Klean Creatine', 3500, 'product_21.jpg', 'yes', '', 4),
(30, 'CollectiveMK-LogoShirt', 400, 'product_30.jpg', 'yes', 'yes', 5),
(33, 'novprodukt', 2222, 'product_10.jpg', 'yes', '', 5),
(37, 'novproizovd', 1000, 'product_10.jpg', 'yes', '', 15),
(38, 'bluza', 300, 'product_10.jpg', 'yes', '', 14);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(10) UNSIGNED NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phoneNumber` varchar(50) DEFAULT NULL,
  `kosnickaID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `city`, `name`, `surname`, `email`, `password`, `phoneNumber`, `kosnickaID`) VALUES
(1, 'Veles', 'Filip', 'Kamcev', 'kamcev@gmail.com', 'Filip1234!', '078000333', 1),
(44, 'Veles', 'Stefan', 'Daev', 'borce-daev@hotmail.com', 'borce1234', '070134567', 5),
(46, 'Veles', 'Boris', 'Daev', 'borce-daev@hotmail.com', 'borceborce', '070345345', 5),
(47, 'veles', 'petar', 'daev', 'borce-daev@hotmail.com', 'novonovo', '070333444', 5),
(48, 'novo', 'novo', 'novo', 'borce-daev@hotmail.com', 'novonovo', 'novo', 5),
(49, 'Veles', 'Boris', 'Daev', 'borce-daev@hotmail.com', 'newnew12', '070314355', 5),
(50, 'skopje', 'web', 'app', 'borce-daev@hotmail.com', 'novonovo', '070333144', 5),
(51, 'Veles', 'Boris', 'Daev', 'borce-daev@hotmail.com', 'novonovo123', '070333144', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kosnicka`
--
ALTER TABLE `kosnicka`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kosnicka`
--
ALTER TABLE `kosnicka`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
