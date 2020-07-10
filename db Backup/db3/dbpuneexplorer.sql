-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 23, 2018 at 08:59 PM
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
  `Description` varchar(200) DEFAULT NULL,
  `WebsiteName` varchar(200) DEFAULT NULL,
  `WebsiteLink` varchar(200) DEFAULT NULL,
  `Location1` varchar(200) DEFAULT NULL,
  `Location2` varchar(200) DEFAULT NULL,
  `LocationLink` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `ContactNo` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`AId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tblalleducation`
--

INSERT INTO `tblalleducation` (`AId`, `EduName`, `Description`, `WebsiteName`, `WebsiteLink`, `Location1`, `Location2`, `LocationLink`, `Image`, `ContactNo`, `type`) VALUES
(1, 'Mit-WPU', 'MIT World Peace University is a state private university established under Government of Maharashtra Act No. XXXV 2017 and recognized by UGC. It is located in Kothrud Pune.', 'mitwpu.edu.in', 'https://mitwpu.edu.in/', 'Survey No. 124, MIT College Campus, Paud Road, Rambaug\n', ' Colony, Kothrud, Pune, Maharashtra 411038', 'https://goo.gl/maps/NwPGCrdndS92', 'mit.jpg', 2030273400, 1),
(2, 'Mitschool', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234568970, 2),
(3, 'SYMBIOSIS', 'Symbiosis International University, officially Symbiosis International, is a deemed to be university located in Pune, India. The university has 28 academic institutions spread over ten locations in Ba', 'siu.edu.in', 'https://siu.edu.in/', 'Lavale, Mulshi, Pune, Maharashtra 412115', NULL, 'https://goo.gl/maps/N5ZXyjdRTqt', 'sys.jpg', 2039116200, 1),
(4, 'VIT', 'Description Vishwakarma Institute of Technology is an Engineering College located in the Upper Indira Nagar of the Bibwewadi area of Pune, Maharashtra, India. Established in 1983, it is affiliated wit', 'vit.edu', 'http://www.vit.edu/', '666, Upper Indira Nagar, Bibvewadi, Pune, Maharashtra 411037', NULL, 'https://goo.gl/maps/fH5AcJQ3fnJ2', 'vit.jpg', 2024202180, 1);

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
