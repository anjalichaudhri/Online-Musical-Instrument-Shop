-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2019 at 06:05 PM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bakeryjava`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `bookingid` int(11) NOT NULL AUTO_INCREMENT,
  `bookingdate` varchar(50) DEFAULT NULL,
  `customername` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `giftid` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bookingid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `booking`
--


-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `contactid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`contactid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `contact`
--



-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `feedbackid` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `mobileno` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `ymsg` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`feedbackid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackid`, `name`, `mobileno`, `email`, `date`, `ymsg`) VALUES
(4, 'harish', '9229465037', 'harish@gmail.com', '13/02/2019', 'lmsns'),
(5, 'harish', '9229465037', 'harish@gmail.com', '12/11/2019', 'hello bbbb');

-- --------------------------------------------------------

--
-- Table structure for table `gift`
--

CREATE TABLE IF NOT EXISTS `gift` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `image` longblob,
  `category` varchar(200) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `gift`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `user_type` varchar(45) NOT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `user_name`, `email`, `password`, `user_type`, `contact_no`, `city`, `address`) VALUES
(1, 'pankaj', 'panjwani', 'pankaj', 'pankajpanjwani41@gmail.com', 'pankaj', 'admin', '8602768216', 'Bhopal', 'Indrapuri'),
(2, 'harish', 'panjwani', 'harish', 'harish@gmail.com', 'harish', 'student', '9229465037', 'Bhopal', 'Indrapuri'),
(3, 'ashok', 'panjwani', 'ashok', 'ashok@gmail.com', 'ashok', 'student', '8602768216', 'bhopal', 'ayodhya nagar'),
(4, 'sagar', 'panjwani', 'sagar', 'sagar@gmail.com', 'sagar', 'student', '9229465037', 'Bhopal', 'Piplani'),
(5, 'abc', 'xyz', 'abc', 'abc@gmail.com', 'abc', 'student', '9229456037', 'Bhopal', 'Indrapuri'),
(6, 'aaa', 'aaa', 'aaa', 'aaa@gmail.com', 'aaa', 'student', '9229465037', 'Bhopal', 'ayodhya nagar'),
(7, 'deepak', 'patel', 'deepak', 'deepak@gmail.com', 'deepak', 'student', '8602768216', 'bhopal', 'mp nagar'),
(8, 'sss', 'sss', 'sss', 'sss@gmail.com', 'sss', 'student', '9229465037', 'bhopal', 'ayodhya nagar'),
(9, 'deepak', 'deepak', 'deepak', 'deepak@yahoo.in', 'deepak', 'student', '990', 'deepak', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
