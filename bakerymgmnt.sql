-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2021 at 10:26 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bakerymgmnt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE IF NOT EXISTS `admin_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart_whish_list_products`
--

CREATE TABLE IF NOT EXISTS `cart_whish_list_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` varchar(30) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `base_price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `request_by` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE IF NOT EXISTS `customer_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`id`, `name`, `mobile`, `email`, `password`, `status`) VALUES
(1, 'Piya', '9876543211', 'piya@gmail.com', '1122', 'Active'),
(2, 'Raj', '9812453217', 'raj@gmail.com', '4545', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` varchar(200) NOT NULL,
  `stars` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `feedback`, `stars`, `email`) VALUES
(1, 'Nice once...', '4', 'piya@gmail.com'),
(2, 'Great deal.', '4', 'raj@gmail.com'),
(3, 'Superb', '4', 'raj@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE IF NOT EXISTS `payment_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `totalPrice` varchar(200) NOT NULL,
  `card_no` varchar(200) NOT NULL,
  `month_year` varchar(200) NOT NULL,
  `cvv` varchar(200) NOT NULL,
  `payment_by` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Payment Done',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `totalPrice`, `card_no`, `month_year`, `cvv`, `payment_by`, `status`) VALUES
(9, '1150', '8765430', '11/12', '123', 'piya@gmail.com', 'Payment Done'),
(10, '850', '1234567890', '11/21', '231', 'piya@gmail.com', 'Payment Done'),
(11, '350', '876543', '11/12', '123', 'piya@gmail.com', 'Payment Done'),
(12, '800', '1234567890', '11/11', '142', 'piya@gmail.com', 'Payment Done'),
(13, '1000', '1234567890', '11/11', '789', 'piya@gmail.com', 'Payment Done'),
(14, '700', '1234567890', '11/21', '102', 'raj@gmail.com', 'Payment Done'),
(15, '1400', '1234567890', '11/12', '345', 'raj@gmail.com', 'Payment Done');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE IF NOT EXISTS `product_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(1000) DEFAULT NULL,
  `p_name` varchar(100) DEFAULT NULL,
  `specification` text,
  `file_name` varchar(30) DEFAULT NULL,
  `base_price` varchar(30) DEFAULT NULL,
  `mfg_date` varchar(30) DEFAULT NULL,
  `exp_date` varchar(30) DEFAULT NULL,
  `upload_by` varchar(30) DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Not_Sell',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `category`, `p_name`, `specification`, `file_name`, `base_price`, `mfg_date`, `exp_date`, `upload_by`, `status`) VALUES
(7, 'Cake', 'Cake', 'Black Forest', 'Cake1.jpeg', '500', '2021-09-25', '2021-09-27', 'Admin', 'Not_Sell'),
(8, 'Khari', 'Bread', 'Bread', 'Cake.jpeg', '350', '2021-09-25', '2021-09-28', 'Admin', 'Not_Sell'),
(9, 'Bread', 'Bread', 'Bread', 'Cake.jpeg', '400', '2021-09-25', '2021-09-28', 'Admin', 'Not_Sell'),
(11, 'Cake', 'IceCake', 'Black Forest', 'SayaliCake.png', '450', '2021-09-25', '2021-09-27', 'Admin', 'Not_Sell');

-- --------------------------------------------------------

--
-- Table structure for table `seller_details`
--

CREATE TABLE IF NOT EXISTS `seller_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `seller_details`
--

INSERT INTO `seller_details` (`id`, `fname`, `email`, `mobile`, `password`) VALUES
(1, 'Cakes', 'Cakes@gmail.com', '8900890089', '123456');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
