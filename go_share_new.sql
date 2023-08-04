-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2023 at 11:21 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `go_share_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `log_id` int(11) NOT NULL,
  `time` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `complaint_id` int(11) NOT NULL,
  `complaint` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`log_id`, `time`, `date`, `complaint_id`, `complaint`) VALUES
(17, '1:31 PM', '2023-08-04', 1, 'Ride not completed 😣'),
(17, '1:43 PM', '2023-08-04', 2, 'Not finished ride😐');

-- --------------------------------------------------------

--
-- Table structure for table `goods_movement`
--

CREATE TABLE `goods_movement` (
  `gm_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `starting_point` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `vehicle_no` varchar(9) NOT NULL,
  `goodsType` varchar(100) NOT NULL,
  `weightLeft` varchar(100) NOT NULL,
  `vehModel` varchar(100) NOT NULL,
  `time` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goods_movement`
--

INSERT INTO `goods_movement` (`gm_id`, `log_id`, `starting_point`, `destination`, `vehicle_no`, `goodsType`, `weightLeft`, `vehModel`, `time`, `date`, `status`) VALUES
(1, 17, 'calicut', 'malprm', 'kl 60 456', 'grossary', '30kg', 'mini van', '2:00 AM', '2023-08-04', ''),
(2, 17, 'palkd', 'mlprm', 'kl502444', 'vegitables', '60kg', 'mini lorry', '3:03 AM', '2023-08-11', '');

-- --------------------------------------------------------

--
-- Table structure for table `group_trip`
--

CREATE TABLE `group_trip` (
  `gt_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `mobile_no` bigint(20) NOT NULL,
  `starting_point` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `vehicle_no` varchar(15) NOT NULL,
  `vehicle_type` varchar(20) NOT NULL,
  `group_name` varchar(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `group_trip`
--

INSERT INTO `group_trip` (`gt_id`, `log_id`, `first_name`, `last_name`, `mobile_no`, `starting_point`, `destination`, `vehicle_no`, `vehicle_type`, `group_name`, `date`) VALUES
(1, 17, '', '', 0, 'kochi', 'goa', 'kl 50 556', 'bolero', 'Goa warrio', '2023-08-18'),
(2, 17, '', '', 0, 'mlprm', 'ooty', 'kl 67445', 'vagnor', 'ooty trips', '2023-08-25');

-- --------------------------------------------------------

--
-- Table structure for table `help`
--

CREATE TABLE `help` (
  `h_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `lat` double NOT NULL,
  `long` double NOT NULL,
  `message` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `locality` varchar(20) NOT NULL,
  `street` varchar(25) NOT NULL,
  `sublocality` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `help`
--

INSERT INTO `help` (`h_id`, `log_id`, `lat`, `long`, `message`, `date`, `locality`, `street`, `sublocality`) VALUES
(1, 17, 10.9778368, 76.2026434, 'Please help me 😭', '2023-08-04 13:34:20', 'Angadipuram', 'X6H3+533', 'Chanthully Paadam'),
(2, 17, 10.9778368, 76.2026434, 'Please help me 😭', '2023-08-04 13:34:20', 'Angadipuram', 'X6H3+533', 'Chanthully Paadam'),
(3, 17, 10.9779281, 76.2026072, 'Any one help me', '2023-08-04 13:35:33', 'Angadipuram', 'X6H3+52P', 'Chanthully Paadam'),
(4, 17, 10.9779281, 76.2026072, 'Any one help me', '2023-08-04 13:35:33', 'Angadipuram', 'X6H3+52P', 'Chanthully Paadam'),
(5, 17, 10.97793, 76.202602, 'Help😢', '2023-08-04 14:47:55', 'Angadipuram', 'X6H3+52P', 'Chanthully Paadam'),
(6, 17, 10.97793, 76.202602, 'Help😢', '2023-08-04 14:47:55', 'Angadipuram', 'X6H3+52P', 'Chanthully Paadam'),
(7, 17, 10.9779288, 76.2026049, 'Please help😩', '2023-08-04 14:49:24', 'Angadipuram', 'X6H3+52P', 'Chanthully Paadam');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `locality` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `sublocality` varchar(50) NOT NULL,
  `subadminstrative` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `locality`, `street`, `sublocality`, `subadminstrative`, `latitude`, `longitude`) VALUES
(1, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '', ''),
(2, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '', ''),
(3, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(4, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(5, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(6, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(7, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(8, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(9, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(10, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(11, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(12, 'Angadipuram', 'X6H3+52P', 'Chanthully Paadam', '', '10.9779707', '76.2026113'),
(13, 'Angadipuram', 'X6H3+52P', 'Chanthully Paadam', '', '10.9779707', '76.2026113'),
(14, 'Angadipuram', 'X6H3+533', 'Chanthully Paadam', '', '10.9779133', '76.2026252'),
(15, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(16, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(17, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(18, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(19, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(20, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(21, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(22, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(23, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(24, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(25, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(26, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(27, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(28, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(29, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(30, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(31, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(32, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(33, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(34, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(35, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(36, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(37, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(38, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(39, 'Angadipuram', 'X6H3+52P', 'Chanthully Paadam', '', '10.9779236', '76.2026005'),
(40, 'Angadipuram', 'X6H3+533', 'Chanthully Paadam', '', '10.9779161', '76.2026115'),
(41, 'Angadipuram', 'X6H3+533', 'Chanthully Paadam', '', '10.9779161', '76.2026115'),
(42, 'Angadipuram', 'X6H3+533', 'Chanthully Paadam', '', '10.9779161', '76.2026115'),
(43, 'Angadipuram', 'X6H3+52P', 'Chanthully Paadam', '', '10.9779461', '76.2026206'),
(44, 'Alanallur-II', '27PR+FHV', '', '', '11.0367141', '76.2915779'),
(45, 'Alanallur-II', '27PR+FHV', '', '', '11.0367142', '76.2915782');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `log_id` int(11) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`log_id`, `email`, `password`) VALUES
(1, 'haris@gmail.com', 'haris@123'),
(2, '7788995544', '12345678'),
(10, 'manu@gmail.com', 'manu@123'),
(11, 'sneha@gmail.com', 'sneha'),
(12, 'athira@gmail.com', 'athira'),
(13, 'arya@gmail.com', 'arya'),
(14, 'hari@gmail.com', 'hari'),
(15, 'ladhi@gmail.com', 'ladhi'),
(16, '', ''),
(17, 'alana@gmail.com', 'allu@123');

-- --------------------------------------------------------

--
-- Table structure for table `my_rides`
--

CREATE TABLE `my_rides` (
  `log_id` int(11) NOT NULL,
  `ride_id` int(11) NOT NULL,
  `time` varchar(10) NOT NULL,
  `date` varchar(15) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `my_rides`
--

INSERT INTO `my_rides` (`log_id`, `ride_id`, `time`, `date`, `destination`, `status`) VALUES
(1, 7, '10:29 AM', '2023-07-05', 'calicut', '');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `offer_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `voucher` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`offer_id`, `log_id`, `company_name`, `voucher`) VALUES
(1, 17, 'trends', 'dis2.webp'),
(2, 17, 'adidas', 'dsicount.webp');

-- --------------------------------------------------------

--
-- Table structure for table `offer_pool`
--

CREATE TABLE `offer_pool` (
  `log_id` int(11) NOT NULL,
  `pool_id` int(11) NOT NULL,
  `starting_point` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `vehicle_no` varchar(9) NOT NULL,
  `time` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `licenceno` varchar(45) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offer_pool`
--

INSERT INTO `offer_pool` (`log_id`, `pool_id`, `starting_point`, `destination`, `vehicle_no`, `time`, `date`, `licenceno`, `status`) VALUES
(17, 1, 'plkd', 'mlprm', 'kl 50 876', '11:15 AM', '2023-08-04', '', 'completed'),
(17, 2, 'pmna', 'calicut', 'kl 67890', '3:00 AM', '2023-08-05', '', 'completed'),
(17, 3, 'kochi', 'mlprm', 'kl 56566', '6:44 AM', '2023-08-15', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `register_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `dp` longblob DEFAULT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` varchar(50) DEFAULT 'Add email',
  `mobile_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`register_id`, `log_id`, `dp`, `first_name`, `last_name`, `email`, `mobile_no`) VALUES
(1, 1, 0x73696e752e6a7067, 'muhammed', 'Thanseer', 'thanzeetnz83@gmail.com', '9874562101'),
(2, 2, '', 'peter', 'griffin', NULL, '8541201010'),
(6, 10, NULL, 'manu', 'm', 'manu@gmail.com', '9847483647'),
(7, 11, NULL, 'sneha', 'e', 'sneha@gmail.com', '9012445501'),
(8, 12, NULL, 'athira', 'k', 'athira@gmail.com', '9754978451'),
(9, 13, NULL, 'Arya ', 'ko', 'arya@gmail.com', '9608574123'),
(10, 14, NULL, 'harideep', 'h', 'hari@gmail.com', '9876421354'),
(11, 15, NULL, 'ladhi', 'mp', 'ladhi@gmail.com', '9633085278'),
(12, 16, NULL, '', '', '', ''),
(13, 17, NULL, 'alana', 'k', 'alana@gmail.com', '7559916846');

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `rent_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile_no` bigint(10) NOT NULL,
  `price` int(11) NOT NULL,
  `vehicle_no` varchar(10) NOT NULL,
  `vehicle_model` varchar(15) NOT NULL,
  `vehicle_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`rent_id`, `name`, `mobile_no`, `price`, `vehicle_no`, `vehicle_model`, `vehicle_image`) VALUES
(1, 'manu', 8943397231, 1000, 'KL11V5433', 'I10 neos', 'Hyundai-Grand-i10-Nios-200120231541.jpg'),
(3, 'john', 9765636725, 2000, 'kl 51 900', 'baleno', 'baleno1.webp'),
(4, 'allu', 7434322932, 2500, '786565434', 'lancer', 'car.jpg'),
(5, 'nabu', 7559916846, 233, 'KL534123', 'vagnor', 'car.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `log_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `review` varchar(50) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`log_id`, `review_id`, `date`, `review`, `rating`) VALUES
(17, 1, '2023-08-04 14:13:18', 'Very good 😀', 0),
(17, 2, '2023-08-04 14:13:18', 'Very good 😀', 5),
(17, 3, '2023-08-04 14:13:18', 'Very good 😀', 5),
(17, 4, '2023-08-04 14:13:43', 'I like very much', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `goods_movement`
--
ALTER TABLE `goods_movement`
  ADD PRIMARY KEY (`gm_id`);

--
-- Indexes for table `group_trip`
--
ALTER TABLE `group_trip`
  ADD PRIMARY KEY (`gt_id`);

--
-- Indexes for table `help`
--
ALTER TABLE `help`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `my_rides`
--
ALTER TABLE `my_rides`
  ADD PRIMARY KEY (`ride_id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `offer_pool`
--
ALTER TABLE `offer_pool`
  ADD PRIMARY KEY (`pool_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`register_id`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`rent_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `goods_movement`
--
ALTER TABLE `goods_movement`
  MODIFY `gm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `group_trip`
--
ALTER TABLE `group_trip`
  MODIFY `gt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `help`
--
ALTER TABLE `help`
  MODIFY `h_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `my_rides`
--
ALTER TABLE `my_rides`
  MODIFY `ride_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offer_pool`
--
ALTER TABLE `offer_pool`
  MODIFY `pool_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `register_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent`
  MODIFY `rent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
