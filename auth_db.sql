-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2022 at 04:17 PM
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
-- Database: `auth_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `refreshed_token` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `refreshed_token`, `createdAt`, `updatedAt`) VALUES
(8, 'aam', 'mph562@gmail.com', '$2b$10$4tyG6fe8JuCi511.m9y8g.GhqTg02HR/F3CCLzcx4lrf.p6kKdG7S', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjgsIm5hbWUiOiJhYW0iLCJlbWFpbCI6Im1waDU2MkBnbWFpbC5jb20iLCJpYXQiOjE2NDUwODI5MTUsImV4cCI6MTY0NTE2OTMxNX0.w_KxdXb5bg-GT69W8gGau3nI9jBkHda51UpcO4anFW4', '2022-02-16 14:40:09', '2022-02-17 07:28:35'),
(9, 'aam', 'mph562@gmail.com', '$2b$10$M0VaHDrBxZkMpiIkboo1IO1hwrD21hXwfZIj7y9ouTo7DbAtaGdI.', NULL, '2022-02-17 05:36:21', '2022-02-17 05:36:21'),
(10, 'aam12', 'kmph562@gmail.com', '$2b$10$xcAKEPts6X01Xbzi5CmDMeueGYcXHOS3gsJRtLnxuqiYLh7EfDdgK', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiYWFtMTIiLCJlbWFpbCI6ImttcGg1NjJAZ21haWwuY29tIiwiaWF0IjoxNjQ1MDg3NzY4LCJleHAiOjE2NDUxNzQxNjh9.2qZjxsQa3pmt1y5bUlmRpxH2QNwXe9jxfmSRLtyn8-E', '2022-02-17 05:40:37', '2022-02-17 08:49:28'),
(11, 'asdfsd', 'asdf23@gmail.com', '$2b$10$VuiySZUBZ7KDXL6QfdVgHOtW4EuRaQhVpzoAVrXbqtM25O1oi3kDK', NULL, '2022-02-17 05:43:33', '2022-02-17 05:43:33'),
(13, 'azxcv', 'azxcv43@gmail.com', '$2b$10$v6k5OvaKR.zSuBlaNYPn4O/Zbvytzy902lygm4K7TpAp90NIciqXW', NULL, '2022-02-17 05:51:26', '2022-02-17 05:51:26'),
(14, 'asadsd', 'asdfg7675@gmail.com', '$2b$10$MphijSK9gS2A4qkWi2HLoeSuBzzpg./Vm4Zhx8lIKRZqWMuf8qKny', NULL, '2022-02-17 05:52:44', '2022-02-17 05:52:44'),
(15, 'lkjh', 'lkjh098@gmail.com', '$2b$10$5EAgruftDFAADRASLIQgheOeIcYo7r.DLrWtewx2j7a.Wtl32gC.2', NULL, '2022-02-17 06:15:40', '2022-02-17 08:30:50'),
(16, 'aam122', 'kmph5262@gmail.com', '$2b$10$2r6xrTobbLP6WBfGySDc6u3H5htyzLgp5lVKxa6l0zzFwP1OAgGfm', NULL, '2022-02-17 07:28:11', '2022-02-17 07:28:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
