-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 01, 2019 at 04:18 AM
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
(2, 'MIT Junior College Of Science & Commerce', 'Since its inception in 1983, MAEER MIT Pune has been associated with quality higher education by creating environments in which teaching – learning has transformed lives. ', 'mitjuniorcollege.edu.in', 'http://mitjuniorcolleges.edu.in/', 'More Vidyalaya Chowk, Paud Road, Mit School ', 'Campus, Paud Road, Pune, Maharashtra 411038', 'https://www.google.com/maps/place/MIT+Junior+College+Of+Science+%26+Commerce/@18.5085365,73.818113,17.65z/data=!4m5!3m4!1s0x3bc2bfa3ac000001:0xf6bf7877b9b9ab98!8m2!3d18.5075484!4d73.8200086', 'mitjj.jpg', 2025467301, 2),
(3, 'SYMBIOSIS', 'Symbiosis International University, officially Symbiosis International, is a deemed to be university located in Pune, India. The university has 28 academic institutions spread over ten locations in Ba', 'siu.edu.in', 'https://siu.edu.in/', 'Lavale, Mulshi, Pune, Maharashtra 412115', NULL, 'https://goo.gl/maps/N5ZXyjdRTqt', 'sys.jpg', 2039116200, 1),
(4, 'VIT', 'Description Vishwakarma Institute of Technology is an Engineering College located in the Upper Indira Nagar of the Bibwewadi area of Pune, Maharashtra, India. Established in 1983, it is affiliated wit', 'vit.edu', 'http://www.vit.edu/', '666, Upper Indira Nagar, Bibvewadi, Pune, Maharashtra 411037', NULL, 'https://goo.gl/maps/fH5AcJQ3fnJ2', 'vit.jpg', 2024202180, 1),
(5, 'Millennium National School', 'Millennium National School is a CBSE affiliated school based in Karvenagar, Pune. We provide excellent sports and hobby options\nto choose from along with provision of healthy, nutritious meals making ', 'myshala.com', 'myshala.com', '18, Hill Side, Karvenagar, Hingane Home Colony, ', 'Karve Nagar, Pune, Maharashtra 411052', 'FRR6+M7 Pune, Maharashtra', 'mi.jpg', 779898202, 2);

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
