-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 23, 2018 at 07:06 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbpuneexplorer`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblalleducation`
--

CREATE TABLE IF NOT EXISTS `tblalleducation` (
  `AId` int(11) NOT NULL AUTO_INCREMENT,
  `EduName` varchar(100) NOT NULL,
  `ContactNo` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`AId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblalleducation`
--

INSERT INTO `tblalleducation` (`AId`, `EduName`, `ContactNo`, `type`) VALUES
(1, 'Mit', 2147483647, 1),
(2, 'Mitschool', 1234568970, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbleducation`
--

CREATE TABLE IF NOT EXISTS `tbleducation` (
  `EduId` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  PRIMARY KEY (`EduId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbleducation`
--

INSERT INTO `tbleducation` (`EduId`, `Name`) VALUES
(1, 'College'),
(2, 'School');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE IF NOT EXISTS `tbluser` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `Email` text NOT NULL,
  `Phone` text NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`UserID`, `Email`, `Phone`) VALUES
(1, 'c@gmail.com', '7'),
(2, 'bhaskar4diu@gmail.com', '9998852887'),
(3, 'blu4diu@gmail.com', '7652625417');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
