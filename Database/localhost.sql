-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 26, 2021 at 04:14 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmonitoring`
--
CREATE DATABASE IF NOT EXISTS `dbmonitoring` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbmonitoring`;

-- --------------------------------------------------------

--
-- Table structure for table `panel1_lora`
--

CREATE TABLE `panel1_lora` (
  `id` int(11) NOT NULL,
  `tegangan` float(3,1) NOT NULL,
  `arus` float(5,1) NOT NULL,
  `daya` float(5,2) NOT NULL,
  `lux` int(5) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `panel1_lora`
--

INSERT INTO `panel1_lora` (`id`, `tegangan`, `arus`, `daya`, `lux`, `tanggal`) VALUES
(1, 12.0, 13.0, 14.00, 120, '2021-09-22 16:08:46'),
(2, 12.0, 12.0, 13.00, 100, '2021-09-22 16:13:42'),
(3, 13.0, 12.0, 13.00, 120, '2021-09-22 16:16:11'),
(4, 12.0, 15.0, 20.00, 89, '2021-09-22 16:17:05'),
(5, 14.0, 15.0, 16.00, 120, '2021-09-23 01:27:41');

-- --------------------------------------------------------

--
-- Table structure for table `panel1_mcu`
--

CREATE TABLE `panel1_mcu` (
  `id` int(11) NOT NULL,
  `tegangan` float(3,1) NOT NULL,
  `arus` float(5,1) NOT NULL,
  `daya` float(5,2) NOT NULL,
  `lux` int(5) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `panel1_xbee`
--

CREATE TABLE `panel1_xbee` (
  `id` int(15) NOT NULL,
  `tegangan` float(3,1) NOT NULL,
  `arus` float(5,1) NOT NULL,
  `daya` float(4,2) NOT NULL,
  `lux` int(5) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `panel2_lora`
--

CREATE TABLE `panel2_lora` (
  `id` int(11) NOT NULL,
  `tegangan` float(3,1) NOT NULL,
  `arus` float(5,1) NOT NULL,
  `daya` float(5,2) NOT NULL,
  `lux` int(5) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `panel2_mcu`
--

CREATE TABLE `panel2_mcu` (
  `id` int(11) NOT NULL,
  `tegangan` float(3,1) NOT NULL,
  `arus` float(5,1) NOT NULL,
  `daya` float(5,2) NOT NULL,
  `lux` int(5) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `panel2_nrf`
--

CREATE TABLE `panel2_nrf` (
  `id` int(11) NOT NULL,
  `tegangan` float(3,1) NOT NULL,
  `arus` float(5,1) NOT NULL,
  `daya` float(5,2) NOT NULL,
  `lux` int(5) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `panel2_xbee`
--

CREATE TABLE `panel2_xbee` (
  `id` int(11) NOT NULL,
  `tegangan` float(3,1) NOT NULL,
  `arus` float(5,1) NOT NULL,
  `daya` float(5,2) NOT NULL,
  `lux` int(5) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `panel3_lora`
--

CREATE TABLE `panel3_lora` (
  `id` int(11) NOT NULL,
  `tegangan` float(3,1) NOT NULL,
  `arus` float(5,1) NOT NULL,
  `daya` float(5,2) NOT NULL,
  `lux` int(5) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `panel3_mcu`
--

CREATE TABLE `panel3_mcu` (
  `id` int(11) NOT NULL,
  `tegangan` float(3,1) NOT NULL,
  `arus` float(5,1) NOT NULL,
  `daya` float(5,2) NOT NULL,
  `lux` int(5) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `panel3_nrf`
--

CREATE TABLE `panel3_nrf` (
  `id` int(11) NOT NULL,
  `tegangan` float(3,1) NOT NULL,
  `arus` float(5,1) NOT NULL,
  `daya` float(5,2) NOT NULL,
  `lux` int(10) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `panel3_xbee`
--

CREATE TABLE `panel3_xbee` (
  `id` int(11) NOT NULL,
  `tegangan` float(3,1) NOT NULL,
  `arus` float(5,1) NOT NULL,
  `daya` float(5,2) NOT NULL,
  `lux` int(5) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sensor`
--

CREATE TABLE `tb_sensor` (
  `id` int(15) NOT NULL,
  `tegangan` float(3,1) NOT NULL,
  `arus` float(11,1) NOT NULL,
  `daya` float(4,2) NOT NULL,
  `lux` int(10) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_sensor`
--

INSERT INTO `tb_sensor` (`id`, `tegangan`, `arus`, `daya`, `lux`, `tanggal`) VALUES
(1, 4.6, 6.7, 0.03, 224, '2021-09-23 06:33:23'),
(2, 4.6, 6.8, 0.03, 224, '2021-09-23 06:33:24'),
(3, 4.6, 6.6, 0.03, 224, '2021-09-23 06:33:25'),
(4, 4.6, 6.7, 0.03, 224, '2021-09-23 06:33:26'),
(5, 4.6, 6.6, 0.03, 224, '2021-09-23 06:33:27'),
(6, 4.6, 6.8, 0.03, 224, '2021-09-23 06:33:28'),
(7, 4.6, 6.7, 0.03, 224, '2021-09-23 06:33:30'),
(8, 4.6, 6.7, 0.03, 224, '2021-09-23 06:33:31'),
(9, 4.6, 6.5, 0.03, 224, '2021-09-23 06:33:32'),
(10, 4.6, 6.5, 0.03, 224, '2021-09-23 06:33:33'),
(11, 4.6, 6.6, 0.03, 224, '2021-09-23 06:33:34'),
(12, 4.6, 6.7, 0.03, 224, '2021-09-23 06:33:35'),
(13, 4.6, 6.5, 0.03, 224, '2021-09-23 06:33:36'),
(14, 4.6, 6.3, 0.03, 224, '2021-09-23 06:33:37'),
(15, 4.6, 6.6, 0.03, 224, '2021-09-23 06:33:38'),
(16, 4.6, 6.5, 0.03, 224, '2021-09-23 06:33:39'),
(17, 4.6, 6.6, 0.03, 224, '2021-09-23 06:33:40'),
(18, 4.6, 6.4, 0.03, 224, '2021-09-23 06:33:42'),
(19, 4.6, 6.7, 0.03, 224, '2021-09-23 06:33:43'),
(20, 4.6, 6.7, 0.03, 224, '2021-09-23 06:33:44'),
(21, 4.6, 6.6, 0.03, 224, '2021-09-23 06:33:45'),
(22, 4.6, 6.7, 0.03, 224, '2021-09-23 06:33:46'),
(23, 4.6, 6.6, 0.03, 224, '2021-09-23 06:33:47'),
(24, 4.6, 6.8, 0.03, 224, '2021-09-23 06:33:52'),
(25, 4.6, 6.8, 0.03, 224, '2021-09-23 06:33:52'),
(26, 4.6, 6.5, 0.03, 224, '2021-09-23 06:33:54'),
(27, 4.6, 6.4, 0.03, 224, '2021-09-23 06:33:55'),
(28, 4.6, 6.5, 0.03, 224, '2021-09-23 06:33:56'),
(29, 4.6, 6.3, 0.03, 224, '2021-09-23 06:33:57'),
(30, 4.6, 6.4, 0.03, 224, '2021-09-23 06:33:58'),
(31, 4.6, 6.5, 0.03, 224, '2021-09-23 06:33:59'),
(32, 4.6, 6.5, 0.03, 224, '2021-09-23 06:34:00'),
(33, 4.6, 6.6, 0.03, 224, '2021-09-23 06:34:01'),
(34, 4.6, 6.6, 0.03, 224, '2021-09-23 06:34:02'),
(35, 4.6, 6.5, 0.03, 224, '2021-09-23 06:34:03'),
(36, 4.6, 6.3, 0.03, 224, '2021-09-23 06:34:05'),
(37, 4.6, 6.6, 0.03, 224, '2021-09-23 06:34:06'),
(38, 4.6, 6.4, 0.03, 224, '2021-09-23 06:34:07'),
(39, 4.6, 6.5, 0.03, 224, '2021-09-23 06:34:08'),
(40, 4.6, 6.6, 0.03, 224, '2021-09-23 06:34:09'),
(41, 4.6, 6.7, 0.03, 224, '2021-09-23 06:34:10'),
(42, 4.6, 6.5, 0.03, 224, '2021-09-23 06:34:11'),
(43, 4.6, 6.6, 0.03, 224, '2021-09-23 06:34:12'),
(44, 4.6, 6.7, 0.03, 224, '2021-09-23 06:34:13'),
(45, 4.6, 6.3, 0.03, 224, '2021-09-23 06:34:14'),
(46, 4.6, 6.4, 0.03, 224, '2021-09-23 06:34:15'),
(47, 4.6, 6.7, 0.03, 224, '2021-09-23 06:34:16'),
(48, 4.6, 6.5, 0.03, 224, '2021-09-23 06:34:18'),
(49, 4.6, 6.5, 0.03, 224, '2021-09-23 06:34:19'),
(50, 4.6, 6.5, 0.03, 224, '2021-09-23 06:34:20'),
(51, 4.6, 6.6, 0.03, 224, '2021-09-23 06:34:21'),
(52, 4.6, 6.5, 0.03, 224, '2021-09-23 06:34:22'),
(53, 4.6, 6.4, 0.03, 224, '2021-09-23 06:34:23'),
(54, 4.6, 6.6, 0.03, 224, '2021-09-23 06:34:24'),
(55, 4.6, 6.6, 0.03, 224, '2021-09-23 06:34:25'),
(56, 4.6, 6.7, 0.03, 224, '2021-09-23 06:34:26'),
(57, 4.6, 6.5, 0.03, 224, '2021-09-23 06:34:27'),
(58, 4.6, 6.6, 0.03, 224, '2021-09-23 06:34:28'),
(59, 4.6, 6.7, 0.03, 223, '2021-09-23 06:34:30'),
(60, 4.6, 6.6, 0.03, 222, '2021-09-23 06:34:31'),
(61, 4.6, 6.6, 0.03, 222, '2021-09-23 06:34:32'),
(62, 4.6, 6.5, 0.03, 221, '2021-09-23 06:34:33'),
(63, 4.6, 6.6, 0.03, 222, '2021-09-23 06:34:34'),
(64, 4.6, 6.4, 0.03, 224, '2021-09-23 06:34:35'),
(65, 4.6, 6.5, 0.03, 224, '2021-09-23 06:34:36'),
(66, 4.6, 6.5, 0.03, 224, '2021-09-23 06:34:37'),
(67, 4.6, 6.4, 0.03, 224, '2021-09-23 06:34:38'),
(68, 4.6, 6.4, 0.03, 223, '2021-09-23 06:34:39'),
(69, 4.6, 6.4, 0.03, 223, '2021-09-23 06:34:41'),
(70, 4.6, 6.3, 0.03, 223, '2021-09-23 06:34:41'),
(71, 4.6, 6.5, 0.03, 223, '2021-09-23 06:34:43'),
(72, 4.6, 6.3, 0.03, 224, '2021-09-23 06:34:44'),
(73, 4.6, 6.4, 0.03, 224, '2021-09-23 06:34:45'),
(74, 4.6, 6.7, 0.03, 224, '2021-09-23 06:34:46'),
(75, 4.6, 6.6, 0.03, 223, '2021-09-23 06:34:47'),
(76, 4.6, 6.4, 0.03, 224, '2021-09-23 06:34:48'),
(77, 4.6, 6.5, 0.03, 224, '2021-09-23 06:34:49'),
(78, 4.6, 6.6, 0.03, 224, '2021-09-23 06:34:50'),
(79, 4.6, 6.5, 0.03, 224, '2021-09-23 06:34:51'),
(80, 4.6, 6.7, 0.03, 224, '2021-09-23 06:34:52'),
(81, 4.6, 6.6, 0.03, 224, '2021-09-23 06:34:53'),
(82, 4.6, 6.4, 0.03, 224, '2021-09-23 06:34:55'),
(83, 4.6, 6.6, 0.03, 224, '2021-09-23 06:34:56'),
(84, 4.6, 6.4, 0.03, 224, '2021-09-23 06:34:57'),
(85, 4.6, 6.4, 0.03, 223, '2021-09-23 06:34:58'),
(86, 4.6, 6.7, 0.03, 224, '2021-09-23 06:34:59'),
(87, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:00'),
(88, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:01'),
(89, 4.6, 6.3, 0.03, 224, '2021-09-23 06:35:02'),
(90, 4.6, 6.5, 0.03, 224, '2021-09-23 06:35:03'),
(91, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:05'),
(92, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:05'),
(93, 4.6, 6.7, 0.03, 224, '2021-09-23 06:35:07'),
(94, 4.6, 6.5, 0.03, 224, '2021-09-23 06:35:08'),
(95, 4.6, 6.5, 0.03, 224, '2021-09-23 06:35:09'),
(96, 4.6, 6.3, 0.03, 224, '2021-09-23 06:35:10'),
(97, 4.6, 6.5, 0.03, 224, '2021-09-23 06:35:11'),
(98, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:12'),
(99, 4.6, 6.5, 0.03, 224, '2021-09-23 06:35:13'),
(100, 4.6, 6.5, 0.03, 224, '2021-09-23 06:35:14'),
(101, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:15'),
(102, 4.6, 6.5, 0.03, 224, '2021-09-23 06:35:17'),
(103, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:18'),
(104, 4.6, 6.5, 0.03, 224, '2021-09-23 06:35:19'),
(105, 4.6, 6.7, 0.03, 224, '2021-09-23 06:35:20'),
(106, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:21'),
(107, 4.6, 6.5, 0.03, 224, '2021-09-23 06:35:22'),
(108, 4.6, 6.3, 0.03, 224, '2021-09-23 06:35:23'),
(109, 4.6, 6.6, 0.03, 224, '2021-09-23 06:35:24'),
(110, 4.6, 6.2, 0.03, 224, '2021-09-23 06:35:25'),
(111, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:26'),
(112, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:27'),
(113, 4.6, 6.3, 0.03, 224, '2021-09-23 06:35:28'),
(114, 4.6, 6.7, 0.03, 224, '2021-09-23 06:35:30'),
(115, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:31'),
(116, 4.6, 6.7, 0.03, 224, '2021-09-23 06:35:32'),
(117, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:33'),
(118, 4.6, 6.5, 0.03, 224, '2021-09-23 06:35:34'),
(119, 4.6, 6.5, 0.03, 224, '2021-09-23 06:35:35'),
(120, 4.6, 6.2, 0.03, 224, '2021-09-23 06:35:36'),
(121, 4.6, 6.7, 0.03, 224, '2021-09-23 06:35:37'),
(122, 4.6, 6.8, 0.03, 224, '2021-09-23 06:35:38'),
(123, 4.6, 6.6, 0.03, 224, '2021-09-23 06:35:40'),
(124, 4.6, 6.5, 0.03, 224, '2021-09-23 06:35:41'),
(125, 4.6, 6.6, 0.03, 224, '2021-09-23 06:35:42'),
(126, 4.6, 6.5, 0.03, 224, '2021-09-23 06:35:43'),
(127, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:44'),
(128, 4.6, 6.6, 0.03, 224, '2021-09-23 06:35:45'),
(129, 4.6, 6.5, 0.03, 224, '2021-09-23 06:35:46'),
(130, 4.6, 6.3, 0.03, 224, '2021-09-23 06:35:47'),
(131, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:48'),
(132, 4.6, 6.5, 0.03, 224, '2021-09-23 06:35:49'),
(133, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:50'),
(134, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:52'),
(135, 4.6, 6.6, 0.03, 224, '2021-09-23 06:35:52'),
(136, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:54'),
(137, 4.6, 6.5, 0.03, 224, '2021-09-23 06:35:55'),
(138, 4.6, 6.6, 0.03, 224, '2021-09-23 06:35:56'),
(139, 4.6, 6.3, 0.03, 194, '2021-09-23 06:35:57'),
(140, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:58'),
(141, 4.6, 6.4, 0.03, 224, '2021-09-23 06:35:59'),
(142, 4.6, 6.4, 0.03, 224, '2021-09-23 06:36:00'),
(143, 4.6, 6.6, 0.03, 224, '2021-09-23 06:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `username` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'upt', 'upt', 'upt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `panel1_lora`
--
ALTER TABLE `panel1_lora`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel1_mcu`
--
ALTER TABLE `panel1_mcu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel1_xbee`
--
ALTER TABLE `panel1_xbee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel2_lora`
--
ALTER TABLE `panel2_lora`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel2_mcu`
--
ALTER TABLE `panel2_mcu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel2_nrf`
--
ALTER TABLE `panel2_nrf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel2_xbee`
--
ALTER TABLE `panel2_xbee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel3_lora`
--
ALTER TABLE `panel3_lora`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel3_mcu`
--
ALTER TABLE `panel3_mcu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel3_nrf`
--
ALTER TABLE `panel3_nrf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel3_xbee`
--
ALTER TABLE `panel3_xbee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_sensor`
--
ALTER TABLE `tb_sensor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `panel1_lora`
--
ALTER TABLE `panel1_lora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `panel1_mcu`
--
ALTER TABLE `panel1_mcu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel1_xbee`
--
ALTER TABLE `panel1_xbee`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel2_lora`
--
ALTER TABLE `panel2_lora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel2_mcu`
--
ALTER TABLE `panel2_mcu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel2_nrf`
--
ALTER TABLE `panel2_nrf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel2_xbee`
--
ALTER TABLE `panel2_xbee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel3_lora`
--
ALTER TABLE `panel3_lora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel3_mcu`
--
ALTER TABLE `panel3_mcu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel3_nrf`
--
ALTER TABLE `panel3_nrf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel3_xbee`
--
ALTER TABLE `panel3_xbee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_sensor`
--
ALTER TABLE `tb_sensor`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"dbmonitoring\",\"table\":\"panel3_xbee\"},{\"db\":\"dbmonitoring\",\"table\":\"panel3_mcu\"},{\"db\":\"dbmonitoring\",\"table\":\"panel3_nrf\"},{\"db\":\"dbmonitoring\",\"table\":\"panel3_lora\"},{\"db\":\"dbmonitoring\",\"table\":\"panel1_lora\"},{\"db\":\"dbmonitoring\",\"table\":\"panel1_mcu\"},{\"db\":\"dbmonitoring\",\"table\":\"panel1_xbee\"},{\"db\":\"dbmonitoring\",\"table\":\"panel2_lora\"},{\"db\":\"dbmonitoring\",\"table\":\"panel2_mcu\"},{\"db\":\"dbmonitoring\",\"table\":\"panel2_nrf\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'dbmonitoring', 'tb_sensor', '{\"sorted_col\":\"`tb_sensor`.`id`  DESC\"}', '2021-09-22 14:56:54');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-09-26 14:13:54', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
--
-- Database: `tutorial`
--
CREATE DATABASE IF NOT EXISTS `tutorial` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tutorial`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`) VALUES
(1, 'yssyogesh', 'Yogesh Singh', '12345'),
(2, 'bsonarika', 'Sonarika Bhadoria', '12345'),
(3, 'vishal', 'Vishal Sahu', '12345'),
(4, 'vijay', 'Vijay mourya', '12345');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
