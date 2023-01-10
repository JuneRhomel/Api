-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2023 at 01:46 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenites_table`
--

CREATE TABLE `amenites_table` (
  `amenites_0` text NOT NULL,
  `amenites_1` text NOT NULL,
  `amenites_2` text NOT NULL,
  `amenites_3` text NOT NULL,
  `amenites_4` text NOT NULL,
  `amenites_5` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `amenites_table`
--

INSERT INTO `amenites_table` (`amenites_0`, `amenites_1`, `amenites_2`, `amenites_3`, `amenites_4`, `amenites_5`) VALUES
('Free WiFi', 'Pet friendly', 'The best bathrobe by our friends at wings+horns', 'Really comfy hypoallergenic mattresses', 'Original artwork from local artists and Ace friend...', 'Locally made and vintage furniture');

-- --------------------------------------------------------

--
-- Table structure for table `booking _info`
--

CREATE TABLE `booking _info` (
  `id` int(11) NOT NULL,
  `fullname` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `number` varchar(11) NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `checkIn` date NOT NULL,
  `checkOut` date NOT NULL,
  `booked_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking _info`
--

INSERT INTO `booking _info` (`id`, `fullname`, `email`, `number`, `adults`, `children`, `checkIn`, `checkOut`, `booked_time`) VALUES
(5, 'June Rhomel Guico Mandigma ', 'junemandigma@gmail.com ', '09266210532', 1, 3, '2023-01-19', '2023-01-16', '2023-01-10 08:37:21'),
(6, 'awow ', 'mandigmajonel65@gmail.com ', '09266210532', 1, 3, '2023-01-31', '2023-01-29', '2023-01-10 09:35:54'),
(7, 'June Rhomel Guico Mandigma ', '27junerhomel@gmail.com ', '09266210532', 5, 3, '2023-01-24', '2023-01-30', '2023-01-10 11:33:44'),
(8, 'June Rhomel Guico Mandigma ', 'junemandigma@gmail.com ', '09266210532', 5, 1, '2023-01-18', '2023-01-25', '2023-01-10 11:35:28');

-- --------------------------------------------------------

--
-- Table structure for table `general_info`
--

CREATE TABLE `general_info` (
  `id` int(11) NOT NULL,
  `room_Info` int(11) NOT NULL,
  `guest_info` int(11) NOT NULL,
  `booking_info` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_info`
--

INSERT INTO `general_info` (`id`, `room_Info`, `guest_info`, `booking_info`) VALUES
(11, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `guest_info`
--

CREATE TABLE `guest_info` (
  `guest_id` int(11) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(120) NOT NULL,
  `address` varchar(120) NOT NULL,
  `date-of-birth` date NOT NULL,
  `email` varchar(300) NOT NULL,
  `number` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest_info`
--

INSERT INTO `guest_info` (`guest_id`, `first_name`, `last_name`, `address`, `date-of-birth`, `email`, `number`) VALUES
(1, 'June Rhomel', 'Mandigma', 'Batangas', '2023-01-19', 'junemandigma@gmail.com', '09266210532'),
(5, 'June Rhomel', 'Mandigma', 'Purok 1, Conde Labac, Batangas City', '2023-01-18', 'junemandigma@gmail.com', '09266210532');

-- --------------------------------------------------------

--
-- Table structure for table `room_info`
--

CREATE TABLE `room_info` (
  `room_id` int(11) NOT NULL,
  `room_type` varchar(150) NOT NULL,
  `rate` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `description` longtext NOT NULL,
  `amenites` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_info`
--

INSERT INTO `room_info` (`room_id`, `room_type`, `rate`, `image`, `description`, `amenites`) VALUES
(0, 'Superior Deluxe Front', 100, 'https://acehotel.com/portland/wp-content/uploads/sites/11/2021/08/portland_superior_deluxe_corner1-996x711.jpeg', 'The big one in the front. Our most luxurious and spacious spaces, with approximately 500 sq ft, a king bed and plenty of space to lounge or work. Wrap-around couches convert into two twin beds and there’s a private bath with clawfoot tub or large shower. Hardwood floors, classic views of Southwest Portland and original art and detailing. Record player with vintage vinyl.', 1),
(1, 'Superior Deluxe Corner', 99, 'https://acehotel.com/portland/wp-content/uploads/sites/11/2021/08/portland_superior_deluxe_corner1-996x711.jpeg', 'The big one. Our most luxurious and spacious spaces, with approximately 500 sq ft, a king bed and plenty of space to lounge or work. Wrap-around couches convert into two twin beds and there’s a private bath with clawfoot tub or large shower. Hardwood floors, classic views of Southwest Portland and original art and detailing. Record player with vintage vinyl.', 2),
(2, 'Superior Deluxe Back', 80, 'https://acehotel.com/portland/wp-content/uploads/sites/11/2021/08/ace-hotel-portland-superior-deluxe-back-996x711.jpeg', 'The big one in the back. Our most luxurious spots, Superior Deluxe rooms are 500 sq ft and sleep up to four. This one’s got one queen bed and a double sleeper sofa, plus a partition separating the bedroom and living room. Hardwood floors, classic views of Southwest Portland and original art and detailing.', 3),
(3, 'Standard Back', 80, 'https://acehotel.com/portland/wp-content/uploads/sites/11/2021/08/ace-hotel-portland-standard-back-996x711.jpeg', 'Standard Back rooms are outfit with a queen bed, original art and TV. Private bath with either a stand-up shower or clawfoot tub. 250 sq ft.', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking _info`
--
ALTER TABLE `booking _info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_info`
--
ALTER TABLE `general_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_Info` (`room_Info`),
  ADD KEY `guest_info` (`guest_info`),
  ADD KEY `booking_info` (`booking_info`);

--
-- Indexes for table `guest_info`
--
ALTER TABLE `guest_info`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `room_info`
--
ALTER TABLE `room_info`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `amenites` (`amenites`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking _info`
--
ALTER TABLE `booking _info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `general_info`
--
ALTER TABLE `general_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `guest_info`
--
ALTER TABLE `guest_info`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_info`
--
ALTER TABLE `room_info`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
