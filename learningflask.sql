-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2025 at 05:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learningflask`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `message` varchar(50) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(80) NOT NULL,
  `content` text NOT NULL,
  `img_file` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `name` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`, `name`, `email`) VALUES
(30, 'Developed India ', 'Where Tradition Flows Into Technology', 'developed-IndiaDeveloped-India-Where-Tradition-Flows-Into-Technology25-09-30-220', 'India is rapidly transforming into a developed nation, blending its rich cultural heritage with cutting-edge technology. From smart cities and bullet trains to space exploration and digital infrastructure, the country is making remarkable strides across every sector. Yet, amidst this progress, India continues to honor its traditions, proving that development doesn’t mean forgetting our roots—it means evolving with them. \r\n\r\nAs we move toward Vision 2047, the dream of a fully developed, inclusive, and self-reliant India becomes clearer. This vision isn’t just about economic growth—it’s about empowering every citizen, embracing sustainability, and building a future where tradition and innovation walk hand in hand.', 'MridulAnand_25-09-30-223031_developed_india.png', '2025-09-30 22:02:00', 'Mridul Anand', 'mridul@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `password` text NOT NULL,
  `verify_status` tinyint(1) NOT NULL,
  `profile_photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`sno`, `name`, `email`, `date`, `password`, `verify_status`, `profile_photo`) VALUES
(1, 'Mridul Anand', 'mridul@gmail.com', '2025-09-20 18:36:52', 'scrypt:32768:8:1$92oF0nGMKmeomTAR$b1ee9a88e72c912c2574577d7840f367d307590281a102a6ebb0787aeeb0de8f662499602051733dd4a8d6b5803545def126e02b40c51cac58eaadf0a5c2cc77', 1, 'admin@gmail.com_Screenshot_2025-09-13_150217.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
