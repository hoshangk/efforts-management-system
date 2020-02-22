-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2020 at 11:54 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(4) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` enum('open','closed',',') NOT NULL DEFAULT 'open',
  `role` varchar(15) NOT NULL,
  `resource` varchar(25) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `title`, `description`, `status`, `role`, `resource`, `added_on`) VALUES
(1, 'My First Django Project', 'dfghjkl', 'closed', 'developer', 'dharmendra', '2020-02-20 22:16:47'),
(2, 'My Second Django Project', 'asdfghjk cnjksacja\r\nnasncas\r\nanlkxdcsadan', 'closed', 'developer', 'dharmendra', '2020-02-20 22:24:31'),
(3, 'My Third Blog', 'absdba\r\nckasdncjas\r\nncaslcasjdaskndkasn', 'open', 'operation', 'operation', '2020-02-20 22:26:42'),
(4, 'My First Project', 'bakjsbcfjas\r\nn lsdnckdsnv\r\nncsdcsfdnodn', 'open', 'developer', 'Select Resource', '2020-02-20 22:27:29'),
(5, 'Adhar', 'dsfsdvcsdvcadcdsc', 'open', 'on', 'Harshita', '2020-02-21 00:16:19'),
(6, 'My Third Blog', 'vxsczxc', 'open', 'on', 'Harshita', '2020-02-21 00:18:45'),
(7, 'My Second Projectkcjaajs', 'vcdavcdacdavc', 'open', 'designer', 'Bhagyashree', '2020-02-21 00:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `projects_hours_log`
--

CREATE TABLE `projects_hours_log` (
  `Id` int(4) NOT NULL,
  `project_id` int(4) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `resource` varchar(25) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `total_hrs` int(2) DEFAULT NULL,
  `total_minutes` int(2) DEFAULT NULL,
  `status` enum('closed','open','','') DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `updated_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects_hours_log`
--

INSERT INTO `projects_hours_log` (`Id`, `project_id`, `title`, `resource`, `date`, `start_time`, `end_time`, `total_hrs`, `total_minutes`, `status`, `remarks`, `updated_on`) VALUES
(1, 1, 'My First Django Project', 'bhagyashree', '2020-02-21', '16:23:11', '18:23:11', 2, 0, 'closed', 'Design Done', '2020-02-21 20:24:28'),
(2, 1, 'My First Django Project', 'dharmendra', '2020-02-21', '11:00:00', '12:00:00', 1, 0, 'open', 'Home Page Done', '2020-02-21 20:27:39'),
(3, 2, 'My Second Django Project', 'dharmendra', '2020-02-21', '14:00:00', '15:00:00', 2, 30, 'closed', 'Form Development Done.', '2020-02-21 20:29:27'),
(4, 2, 'My Second Django Project', 'hitendra', '2020-02-21', '14:00:00', '15:00:00', 2, 30, 'closed', 'Project Closed', '2020-02-21 20:51:03'),
(8, 2, 'My Second Django Project', 'hitendra', '2020-02-21', '11:00:00', '13:20:00', 3, 50, 'open', 'Added Content', '2020-02-21 20:54:03'),
(14, 2, 'My Second Django Project', 'dharmendra', '2020-02-21', '18:00:00', '19:00:00', 3, 35, 'open', 'Done', '2020-02-21 21:49:40'),
(15, 2, 'My Second Django Project', 'dharmendra', '2020-02-21', '18:00:00', '19:00:00', 5, 25, 'closed', 'Done', '2020-02-21 21:51:10'),
(16, 2, 'My Second Django Project', 'dharmendra', '2020-02-21', '18:00:00', '19:00:00', 1, 0, 'closed', 'Done', '2020-02-21 21:54:34'),
(17, 2, 'My Second Django Project', 'dharmendra', '2020-02-21', '18:00:00', '19:00:00', 1, 0, 'closed', 'Done', '2020-02-21 21:55:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(15) DEFAULT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`) VALUES
(1, 'hoshang', 'hoshangkaranjekar@gmail.com', 'developer', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'manish', 'manishp@gmail.com', 'designer', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'admin', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(4, 'dharmendra', 'dharmendra@webdunia.net', 'developer', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `projects_hours_log`
--
ALTER TABLE `projects_hours_log`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `projects_hours_log`
--
ALTER TABLE `projects_hours_log`
  MODIFY `Id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
