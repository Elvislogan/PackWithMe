-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2020 at 05:20 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notification`
--

-- --------------------------------------------------------

--
-- Table structure for table `usersemail`
--

CREATE TABLE `usersemail` (
  `id` int(6) UNSIGNED NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usersemail`
--

INSERT INTO `usersemail` (`id`, `email`, `reg_date`) VALUES
(1, 'mathew@gmail.com', '2020-07-15 02:04:46'),
(2, 'elvislogan1@gmail.com', '2020-07-15 02:06:10'),
(3, 'elvislogan1@gmail.com', '2020-07-15 02:06:25'),
(4, 'elvislogan1@gmail.com', '2020-07-15 02:06:47'),
(5, 'elvislogan1@gmail.com', '2020-07-15 02:07:22'),
(6, 'elvislogan1@gmail.com', '2020-07-15 02:07:34'),
(7, 'mathew@gmail.com', '2020-07-15 02:07:45'),
(8, 'dinzy@gmail.com', '2020-07-15 02:09:44'),
(9, 'zurich@gmail.com', '2020-07-15 02:11:49'),
(10, 'har]mmer@gmai.com', '2020-07-15 02:18:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usersemail`
--
ALTER TABLE `usersemail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usersemail`
--
ALTER TABLE `usersemail`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
