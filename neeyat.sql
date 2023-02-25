<<<<<<< HEAD
use  neeyat;

=======
>>>>>>> fa7d1ef9bc6dbabc6a3ab770b27f6a3775db05c4
-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2022 at 01:54 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


<<<<<<< HEAD

=======
>>>>>>> fa7d1ef9bc6dbabc6a3ab770b27f6a3775db05c4
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
<<<<<<< HEAD
-- Database: `shop_db`
=======
-- Database: `neeyat`
>>>>>>> fa7d1ef9bc6dbabc6a3ab770b27f6a3775db05c4
--

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Table structure for table `cart`
--

CREATE TABLE `mentee` (
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `Pincode` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `aoi` varchar(100) NOT NULL
=======
--

CREATE TABLE `mentor` (
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `Pincode` varchar(100) NOT NULL,
  `work` varchar(100) NOT NULL,
  `aadhar` varchar(100) NOT NULL,
  `local` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `aoi` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
>>>>>>> fa7d1ef9bc6dbabc6a3ab770b27f6a3775db05c4
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

<<<<<<< HEAD
CREATE TABLE `mentor` (
  `name` int(100) NOT NULL,
  `gender` int(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `Pincode` varchar(100) NOT NULL,
  `work` varchar(12) NOT NULL,
  `aadhar` varchar(500) NOT NULL
  `local` varchar(500) NOT NULL
  `qualification` varchar(500) NOT NULL
  `aoi` varchar(500) NOT NULL
  `email` varchar(500) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
=======
CREATE TABLE `mentee` (
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `Pincode` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `email` varchar(12) NOT NULL,
  `aoi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `contact` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `chatbot` (
  `id` varchar(100) NOT NULL,
  `messages` varchar(1000) NOT NULL,
  `response` varchar(1000) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




INSERT INTO `chatbot` (`id`, `messages`, `response`) VALUES

(1, 'Hey', 'Hello'),
(2, 'Hi','Hello'),
(3, 'What is your name?','My name is Muaz. i am a chat-bot. How may i help you?'),
(4, 'How can I contact my mentor?', 'You can register yourself and see which mentors are there for your field.'),
(5, 'How to contact mentor?', '1st of all you have to register after that you will get the list of mentors.'),
(6, 'How neeyat works?', ' It works on algo which makes the relation between Mentors and Mentees'),
(7, 'Where to get books?', 'Yes you can visit our book page.'),
(8, 'How to get books?', '1st of all you have to register yourself and after that you can add to cart the books you want'),
(9, 'How can I donate books?', '1st you have to click on photo And upload it and put price on that.'),
(10, 'What will be the time for interaction with mentees or mentor?', 'You can interact with them in between 9 AM to 6 PM.'),
(11, 'Where to meet?', 'It depends on mentor and mentee online or offline'),
(12, 'What is the procedure for registration as a mentee?', 'You have to fill a form and after that you will be redirected to the list of mentors'),
(13, 'What is neeyat?', 'It is a website which helps underprivileged students an oppurtunity to study.'),
(14, 'Can I learn for my JEE entrance exam also?', 'You can get Mentor for that also'),
(15, 'Can a person older than 18 also learn through this?', 'No its just for under privileged kids'),
(16, 'Can I donate money?', 'Yes!!! You can visit our donate page'),
(17, 'Can I get physics by HC Verma book?', 'Yes!!! You can visit our book page');
(18, 'Hello', 'Hi');


