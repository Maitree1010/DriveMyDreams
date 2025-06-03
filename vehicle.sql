-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2025 at 05:48 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `image` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `description`, `image`) VALUES
(1, 'Drive My Dreams', '     <p>Welcome  to <b>Drive My Dreams</b>, a revolutionary vehicle rental platform that connects renters with vehicle owners in a seamless and secure way. Whether you need a car for a weekend getaway, a bike for daily commuting, or a luxury vehicle for a special occasion, our platform makes renting easy, affordable, and hassle-free. </p> \r\n<p>At the same time, we empower vehicle owners by providing them with an opportunity to earn by listing their vehicles for rent. Instead of letting your car sit idle, you can put it to good use and generate passive income with full control over availability and pricing.</p>     ', 'images/about.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(100) NOT NULL,
  `propic` varchar(355) CHARACTER SET utf8mb4 NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(11) CHARACTER SET utf8mb4 NOT NULL,
  `otp` varchar(20) NOT NULL,
  `is_expired` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `propic`, `name`, `phone`, `email`, `password`, `otp`, `is_expired`) VALUES
(7, 'images/download (2).jpg', 'MaitreeKherala', '0909090909', 'matu1204@gmail.com', 'Matu@1023', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `image` varchar(355) NOT NULL,
  `date` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `user_id`, `image`, `date`, `title`, `description`) VALUES
(4, 6, 'images/me2.jfif', '10-Mar-2025', 'Hy This Amazing', 'Wow I will get this vehicle is a very pretty for rental service Wow'),
(5, 8, 'images/vimg/Snapchat-1153036895.jpg', '13-Mar-2025', 'Shimala', 'Hay I am rent this vehicle and I will go to Shimla and Manali ðŸ˜Ž'),
(6, 9, 'images/image_1.jpg', '09-Mar-2025', 'surat Chopati', 'hay I am enjoin this travels and very liked ðŸ¥°ðŸ˜‡'),
(8, 11, 'images/vimg/me2.jfif', '15-Mar-2025', 'Hy This Amazing rides', ' hay wow this is very safe vehicle'),
(10, 12, 'images/vimg/bg_2.jpg', '16-Mar-2025', 'parmar mahi', ' hay wow this is very safe vehicle');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(20) NOT NULL,
  `vehicle_id` int(20) DEFAULT NULL,
  `owner_id` int(20) DEFAULT NULL,
  `renter_id` int(20) DEFAULT NULL,
  `pic_location` varchar(150) NOT NULL,
  `rtn_location` varchar(150) NOT NULL,
  `pic_date` date NOT NULL,
  `rtn_date` date NOT NULL,
  `pic_tim` varchar(20) NOT NULL,
  `rtn_tim` varchar(20) NOT NULL,
  `total_cost` decimal(10,2) NOT NULL,
  `drv_lic` varchar(355) NOT NULL,
  `adharcard` varchar(355) NOT NULL,
  `status` varchar(10) NOT NULL,
  `payment` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `vehicle_id`, `owner_id`, `renter_id`, `pic_location`, `rtn_location`, `pic_date`, `rtn_date`, `pic_tim`, `rtn_tim`, `total_cost`, `drv_lic`, `adharcard`, `status`, `payment`) VALUES
(41, 19, 6, 6, 'ahemdabad', 'ahemdabad', '2025-03-11', '2025-03-20', '21:24', '19:25', '1000.00', 'images/vimg/ic2.jfif', 'images/vimg/ic3.png', 'Unapprove', ''),
(44, 21, 1, 8, 'palitana', 'palitana', '2025-03-18', '2025-03-14', '15:10', '16:14', '100.00', 'images/vimg/ic4.jfif', 'images/vimg/ic3.png', 'Approve', ''),
(45, 19, 6, 7, 'bhavnagar', 'palitana', '2025-03-17', '2025-03-20', '15:35', '16:40', '1000.00', 'images/vimg/ic4.jfif', 'images/vimg/ic3.png', 'Approve', ''),
(47, 21, 1, 11, 'palitana', 'palitana', '2025-03-17', '2025-03-20', '05:23', '06:28', '100.00', 'images/vimg/ic1.png', 'images/vimg/ic2.jfif', '', ''),
(48, 24, 9, 11, 'palitana', 'palitana', '2025-03-17', '2025-03-25', '05:35', '05:36', '100.00', 'images/vimg/ic2.jfif', 'images/vimg/ic3.png', 'Approve', 'success'),
(49, 23, 9, 11, 'palitana', 'palitana', '2025-03-17', '2025-03-18', '05:35', '05:35', '200.00', 'images/vimg/ic2.jfif', 'images/vimg/ic3.png', 'Unapprove', ''),
(50, 22, 9, 11, 'palitana', 'palitana', '2025-03-16', '2025-03-18', '05:39', '02:42', '200.00', 'images/vimg/ic4.jfif', 'images/vimg/ic3.png', 'Approve', ''),
(51, 19, 6, 12, 'palitana', 'palitana', '2025-03-18', '2025-03-28', '08:25', '11:30', '1000.00', 'images/vimg/adhar.png', 'images/vimg/adhar.png', 'Approve', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(20) NOT NULL,
  `user_id` int(30) NOT NULL,
  `blog_id` int(20) NOT NULL,
  `date` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(355) NOT NULL,
  `description` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `blog_id`, `date`, `name`, `image`, `description`) VALUES
(1, 8, 8, '12-Mar-2025', 'Maitri', 'images/maitri.jpg', 'hay really This Vehicle is very Fine'),
(2, 8, 8, '12-Mar-2025', 'Maitri', 'images/maitri.jpg', 'hamm this very fine vehicle'),
(3, 8, 8, 'Sun-Mar-2025', 'Maitri parmar', 'images/maitri.jpg', 'hyy wow i rent this vehicle'),
(4, 8, 8, '09-Mar-2025', 'Maitri', 'images/maitri.jpg', 'Wow this Amazing Post ðŸ˜ŽðŸ™‚'),
(5, 6, 6, '09-Mar-2025', 'MaitreeKherala', 'images/IMG_20250130_131630.jpg', 'wow its very liked and enjoy this sites '),
(6, 9, 6, '09-Mar-2025', 'vandu', 'images/Snapchat-1153036895.jpg', 'thank you So much'),
(7, 6, 5, '09-Mar-2025', 'MaitreeKherala', 'images/IMG_20250130_131630.jpg', 'hyy very nice post'),
(8, 6, 5, '10-Mar-2025', 'Matu', 'images/IMG_20250130_131630.jpg', 'i liked this very fine'),
(9, 6, 8, '11-Mar-2025', 'kk', 'images/IMG_20250130_131630.jpg', 'jsui'),
(12, 6, 8, '12-Mar-2025', 'hemu', 'images/IMG_20250130_131630.jpg', 'hy hy '),
(13, 6, 9, '15-Mar-2025', 'Doraemon', 'images/IMG_20250130_131630.jpg', 'hy this is very nice blog'),
(14, 6, 9, '15-Mar-2025', 'Doraemon', 'images/IMG_20250130_131630.jpg', 'hay you are vary famous '),
(15, 12, 10, '16-Mar-2025', 'maitre', 'images/doraemon.jpg', 'hhh'),
(16, 11, 5, '16-Mar-2025', 'Champ', 'images/matu1.jpg', 'Wow Wonderful View ðŸ¤—ðŸ¥°ðŸ˜®\r\nI Liked Its Blog');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(20) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `phone`, `email`, `address`) VALUES
(1, '1010102323', 'drivemydream1023@gmail.com', '    Navasarod 364270, Palitana Bhavangar  Gujarat  ');

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `owner_id` int(100) NOT NULL,
  `propic` varchar(355) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(11) NOT NULL,
  `otp` varchar(20) NOT NULL,
  `is_expired` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`owner_id`, `propic`, `name`, `phone`, `email`, `password`, `otp`, `is_expired`) VALUES
(1, 'images/maitri (2).jpg', 'maitri', '123123', 'maitreekherala007@gmail.com', 'Matu@1010', '32823', 1),
(3, 'images/hemu.jpg', 'Himani', '9876101010', 'himani.cct@gmail.com', 'himu@123', '', 0),
(6, 'images/person_1.jpg', 'Happy', '1020366088', 'hemakshi.cct@gmail.com', 'hemu@007', '', 0),
(9, 'images/doraemon.jpg', 'Doraemon', '1023101000', 'parmarmaitri2335@gmail.com', 'Dora@100', '57838', 1);

-- --------------------------------------------------------

--
-- Table structure for table `renters`
--

CREATE TABLE `renters` (
  `renter_id` int(20) NOT NULL,
  `propic` varchar(355) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(11) NOT NULL,
  `otp` varchar(20) NOT NULL,
  `is_expired` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `renters`
--

INSERT INTO `renters` (`renter_id`, `propic`, `name`, `phone`, `email`, `password`, `otp`, `is_expired`) VALUES
(6, 'images/IMG_20250130_131630.jpg', 'Kherala Matu', '123123123', 'maitree.cct@gmail.com', 'Matu@123', '', 0),
(7, 'images/IMG20250131163452.jpg', 'hemu', '123', 'rathodhemu563@gmail.com', 'himatree', '94062', 1),
(8, 'images/maitri.jpg', 'Maitri', '8000', 'parmarmaitri2335@gmail.com', 'Didi@8000', '', 0),
(9, 'images/Snapchat-1153036895.jpg', 'vandna Kherala', '1000200300', 'vandu@1000gmail.com', 'vandu@1000', '', 0),
(11, 'images/matu1.jpg', 'champ', '191010101010', 'maitreekherala007@gmail.com', 'Champ@10231', '', 0),
(12, 'images/doraemon.jpg', 'mahi ', '788797', 'mahi@459gmail.com', 'Mahi@459', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `vehicle_id` int(200) NOT NULL,
  `owner_id` int(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `transmition` varchar(10) NOT NULL,
  `model` varchar(10) NOT NULL,
  `modelname` varchar(100) NOT NULL,
  `price` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `vhimg` varchar(355) NOT NULL,
  `regcrt` varchar(355) NOT NULL,
  `inscrt` varchar(355) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`vehicle_id`, `owner_id`, `address`, `category`, `type`, `transmition`, `model`, `modelname`, `price`, `color`, `vhimg`, `regcrt`, `inscrt`, `status`) VALUES
(19, 6, 'palitana', 'Car (4 Wheelers , Jeep)', 'CNG', 'Automatic', '2003', 'BMW', '1000', 'black', 'images/vimg/bmw.jfif', 'images/vimg/ic2.jfif', 'images/vimg/ic3.png', 'Approve'),
(21, 1, 'palitana', 'Bykes', 'Petrol', 'Automatic', '2012', 'Java', '100', 'Black', 'images/vimg/bjava.jfif', 'images/vimg/ic2.jfif', 'images/vimg/ic1.png', 'Approve'),
(22, 9, 'bhavnagar', 'Bus', 'Petrol', 'Manual', '2000', 'bus', '200', 'white', 'images/vimg/bu1.jpg', 'images/vimg/ic1.png', 'images/vimg/ic2.jfif', 'Approve'),
(23, 9, 'bhavnagar', 'Bus', 'Hybrid', 'Automatic', '2001', 'bus', '200', 'green', 'images/vimg/b3.jfif', 'images/vimg/rc1.jfif', 'images/vimg/ic1.png', ''),
(24, 9, 'bhavnagar', 'Car (4 Wheelers , Jeep)', 'CNG', 'Manual', '2012', 'thar', '100', 'black', 'images/vimg/th1.jfif', 'images/vimg/rc2.jfif', 'images/vimg/ic1.png', 'Approve'),
(30, 9, 'palitana', 'Car (4 Wheelers , Jeep)', 'Petrol', 'Automatic', '2003', 'Enova', '100', 'black', 'images/vimg/car-12.jpg', 'images/vimg/rc1.jpg', 'images/vimg/ic4.jfif', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`owner_id`);

--
-- Indexes for table `renters`
--
ALTER TABLE `renters`
  ADD PRIMARY KEY (`renter_id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `owner_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `renters`
--
ALTER TABLE `renters`
  MODIFY `renter_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `vehicle_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
