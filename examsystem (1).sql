-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2017 at 04:33 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adUsername` varchar(10) NOT NULL,
  `adPassword` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adUsername`, `adPassword`) VALUES
('Harshit', 'gfhgds');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseName` text NOT NULL,
  `noOfQuestions` int(5) NOT NULL,
  `TimeLimit` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseName`, `noOfQuestions`, `TimeLimit`) VALUES
('C', 5, 5),
('C++', 5, 5),
('Data Structure', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ques`
--

CREATE TABLE `ques` (
  `Course` text NOT NULL,
  `Ques0` longtext NOT NULL,
  `Ques2` longtext NOT NULL,
  `Ques3` longtext NOT NULL,
  `Ques4` longtext NOT NULL,
  `Ques5` longtext NOT NULL,
  `Ques0Op0` longtext NOT NULL,
  `Ques0Op2` longtext NOT NULL,
  `Ques0Op3` longtext NOT NULL,
  `Ques0Op4` longtext NOT NULL,
  `Ques2Op0` longtext NOT NULL,
  `Ques2Op2` longtext NOT NULL,
  `Ques2Op3` longtext NOT NULL,
  `Ques2Op4` longtext NOT NULL,
  `Ques3Op0` longtext NOT NULL,
  `Ques3Op2` longtext NOT NULL,
  `Ques3Op3` longtext NOT NULL,
  `Ques3Op4` longtext NOT NULL,
  `Ques4Op0` longtext NOT NULL,
  `Ques4Op2` longtext NOT NULL,
  `Ques4Op3` longtext NOT NULL,
  `Ques4Op4` longtext NOT NULL,
  `Ques5Op0` longtext NOT NULL,
  `Ques5Op2` longtext NOT NULL,
  `Ques5Op3` longtext NOT NULL,
  `Ques5Op4` longtext NOT NULL,
  `Correct0` longtext NOT NULL,
  `Correct2` longtext NOT NULL,
  `Correct3` longtext NOT NULL,
  `Correct4` longtext NOT NULL,
  `Correct5` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ques`
--

INSERT INTO `ques` (`Course`, `Ques0`, `Ques2`, `Ques3`, `Ques4`, `Ques5`, `Ques0Op0`, `Ques0Op2`, `Ques0Op3`, `Ques0Op4`, `Ques2Op0`, `Ques2Op2`, `Ques2Op3`, `Ques2Op4`, `Ques3Op0`, `Ques3Op2`, `Ques3Op3`, `Ques3Op4`, `Ques4Op0`, `Ques4Op2`, `Ques4Op3`, `Ques4Op4`, `Ques5Op0`, `Ques5Op2`, `Ques5Op3`, `Ques5Op4`, `Correct0`, `Correct2`, `Correct3`, `Correct4`, `Correct5`) VALUES
('C++', ' Identify the incorrect option', ' What does the following statement mean?\n    int (*fp)(char*);', 'In which of the following we cannot overload the function?', 'How many types of macros are there in c++?', 'What can be passed by non-type template parameters during compile time?', 'enumerators are constants', 'enumerators are user defined types', 'enumerators are same as macros', 'enumerators are same as macros', 'pointer to a pointer', 'pointer to an array of chars', 'pointer to function taking a char* argument and returns an int', 'function taking a char* argument and returning a pointer to int', 'return function', 'caller', 'called function', 'none of the above', '1', '2', '3', '4', 'int', 'float', 'constant expression', 'none of the above', 'enumerators are same as macros', 'pointer to an array of chars', 'return function', '2', 'constant expression'),
('Java', 'Which of these is an incorrect array declaration?', 'Which of these selection statements test only for equality?', 'Which of these keywords is used to refer to member of base class from a sub class?', 'Which of the following statements are incorrect?', 'Which of the following is incorrect statement about packages?', 'int arr[] = new int[5];', 'int [] arr = new int[5];', 'int arr[] = new int[5];', 'int arr[] = int [5] new;', 'if', 'switch', 'if & switch', 'None of the mentioned', 'upper', 'super', 'this', 'none of the above', 'String is a class.', 'Strings in java are mutable.', 'Every string is an object of class String', 'Java defines a peer class of String, called StringBuffer, which allows string to be altered.', 'Package defines a namespace in which classes are stored.', 'A package can contain other package within it.', 'Java uses file system directories to store packages.', 'A package can be renamed without renaming the directory in which the classes are stored.', 'int arr[] = int [5] new;', 'switch', 'super', 'Strings in java are mutable.', 'A package can be renamed without renaming the directory in which the classes are stored.'),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('Data Structure', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `name` text NOT NULL,
  `course` text NOT NULL,
  `correct` int(11) NOT NULL,
  `percentage` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`name`, `course`, `correct`, `percentage`) VALUES
('hkataria11', 'C++', 1, 20),
('hkataria11', 'C++', 1, 20),
('hkataria11', 'Java', 3, 60),
('hkataria11', 'Java', 2, 40),
('hkataria11', 'C++', 0, 0),
('hkataria11', 'C++', 0, 0),
('hkataria11', '', 0, 0),
('hkataria11', 'Java', 0, 0),
('hkataria11', 'C++', 1, 20),
('hkataria11', 'C++', 2, 40),
('hkataria11', 'C++', 4, 80),
('hkataria11', 'C++', 5, 100),
('hkataria11', 'C++', 6, 120),
('hkataria11', 'C++', 7, 140),
('hkataria11', 'C++', 8, 160),
('hkataria11', 'C++', 9, 180),
('hkataria11', 'C++', 10, 200),
('hkataria11', 'C++', 11, 220.00000000000003),
('hkataria11', 'C++', 12, 240),
('hkataria11', 'C++', 13, 260),
('hkataria11', 'C++', 14, 280),
('hkataria11', 'C++', 15, 300),
('hkataria11', 'C++', 1, 20),
('hkataria11', 'C++', 1, 20),
('hkataria11', 'C++', 2, 40),
('hkataria11', 'C++', 1, 40),
('hkataria11', 'C++', 2, 40),
('hkataria11', 'C++', 3, 60),
('hkataria11', 'C++', 5, 100),
('hkataria11', 'Java', 5, 100),
('hkataria11', 'Java', 10, 200),
('hkataria11', 'C++', 4, 80),
('hkataria11', 'Java', 4, 80),
('hkataria11', 'C++', 5, 100),
('hkataria11', 'C++', 5, 100),
('hkataria11', 'C++', 6, 120),
('hkataria11', 'C++', 5, 100),
('hkataria11', 'C++', 10, 200),
('hkataria11', 'C++', 15, 300),
('hkataria11', 'C++', 20, 400),
('hkataria11', 'C++', 25, 500),
('hkataria11', 'C++', 30, 600),
('hkataria11', 'C++', 35, 700),
('hkataria11', 'C++', 40, 800),
('hkataria11', 'C++', 45, 900),
('hkataria11', 'C++', 50, 1000),
('hkataria11', 'C++', 55, 1100),
('hkataria11', 'C++', 60, 1200),
('hkataria11', 'C++', 65, 1300),
('hkataria11', 'C++', 70, 1400),
('hkataria11', 'C++', 75, 1500),
('hkataria11', 'C++', 80, 1600),
('hkataria11', 'C++', 85, 1700),
('hkataria11', 'C++', 0, 0),
('hkataria11', 'C++', 1, 20),
('hkataria11', 'C++', 1, 20),
('hkataria11', 'C++', 2, 40),
('hkataria11', 'C++', 3, 60),
('hkataria11', 'C++', 1, 20);

-- --------------------------------------------------------

--
-- Table structure for table `studentdb3`
--

CREATE TABLE `studentdb3` (
  `Username` varchar(15) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `Name` text NOT NULL,
  `Age` int(5) NOT NULL,
  `Gender` text NOT NULL,
  `Address` varchar(40) NOT NULL,
  `Course` text NOT NULL,
  `College` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentdb3`
--

INSERT INTO `studentdb3` (`Username`, `Password`, `Name`, `Age`, `Gender`, `Address`, `Course`, `College`) VALUES
('hkataria11', 't12345', 'harsh', 20, 'male', 'Sriniwas Puri new delhi', 'Btech', 'IIIT'),
('hhhshs', 't72324', 'hjshjsdh', 23, 'male', 'adjkdjk', 'dakjkjdskj', 'kaskjasjkajks'),
('hkataria12', 't1234656', 'harsh', 20, 'male', 'Sriniwas Puri New Delhi ', 'Btech', 'IIIT'),
('hkatari115', 'hhhttt', 'harsh', 23, 'male', 'sriniwas puri ', 'Btech', 'IIIt');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
