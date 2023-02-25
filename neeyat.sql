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


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `neeyat`
--

-- --------------------------------------------------------

--
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

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
(1, 'Hey', 'Welcome to Neeyat'),
(2, 'Hi','Welcome to Neeyat'),
(3, 'what is your name', 'urfu'),
(4, 'What can you do', 2),
(7, 'what is PHP', 4),
(8, 'What is ChatBot', 5),
(9, 'hi', 6),
(10, 'hello', 6),
(11, 'yow', 6),
(12, 'good day', 6),
(14, 'sample', 7),
(15, 'what topic can I ask', 8);