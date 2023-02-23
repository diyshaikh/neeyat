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
-- Table structure for table `cart`
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
