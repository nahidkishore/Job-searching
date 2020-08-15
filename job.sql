-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2020 at 10:15 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`Name`, `Email`, `Username`, `Password`) VALUES
('nahid', 'nahidkishore99@gmail.com', 'nahid', 'nahid0002');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `ContactNo` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Org_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`Name`, `Email`, `ContactNo`, `Username`, `Password`, `Org_name`) VALUES
('niloy', 'niloy@gmail.com', '01688815748', 'niloy', 'niloy123', 'it expert'),
('niloy', 'niloy@gmail.com', '01688815748', 'arif', 'niloy123', 'it expert'),
('Raihan', 'raihan@gmail.com', '01688815750', 'Raihan', 'raihan123', 'Sikdar Textile Ltd.'),
('jannat', 'jannat@gmail.com', '01688815751', 'jannat', 'jannat123', 'Bank Asia Ltd.');

-- --------------------------------------------------------

--
-- Table structure for table `job_offer`
--

CREATE TABLE `job_offer` (
  `Job_ID` int(11) NOT NULL,
  `Job_title` varchar(200) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Req_skill` varchar(100) NOT NULL,
  `Salary` varchar(100) NOT NULL,
  `Designation` varchar(100) NOT NULL,
  `Timestamp` date NOT NULL DEFAULT current_timestamp(),
  `Ad_username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_offer`
--

INSERT INTO `job_offer` (`Job_ID`, `Job_title`, `Category`, `Req_skill`, `Salary`, `Designation`, `Timestamp`, `Ad_username`) VALUES
(1, 'PHP Developer', 'IT and Telecommunication', '2 to 4 year(s)', 'Tk. 35000 - 60000 (Monthly)', 'Anywhere in Bangladesh', '2020-03-30', ''),
(2, 'PHP Developer', 'IT and Telecommunication', '2 to 4 year(s)', 'Tk. 35000 - 60000 (Monthly)', 'Anywhere in Bangladesh', '2020-03-30', ''),
(3, '.Net Application Developer', 'IT and Telecommunication', '3 to 7 year(s) .The applicants should have experience in the following area(s): Database Engineer/ D', 'Negotiable', 'Anywhere in Bangladesh', '2020-03-31', 'nahid'),
(4, 'Web Developer', 'Engineer/Architects', 'At least 4 year(s)', 'Tk. 20000 - 25000 (Monthly)', 'Anywhere in Bangladesh', '2020-03-31', 'nahid'),
(5, 'Senior Accountant - Financial Statutory Accounting Services', 'Accounting/Finance/Banking', 'At least 4 year(s)', 'Negotiable', 'Anywhere in Bangladesh', '2020-03-31', 'nahid'),
(6, 'Head of (Marketing &amp; Merchandising)', 'Garments/Textile', 'At least 10 year(s)', 'Negotiable', 'Gazipur (Sreepur)', '2020-03-31', 'nahid'),
(7, 'Assistant General Manager, Quality Assurance &amp; Control', 'Garments/Textile', '10 to 12 year(s)', 'Negotiable', 'Gazipur', '2020-03-31', 'nahid'),
(8, 'Deputy/ Asst. Manager (HR &amp; Admin)', 'Accounting/Finance/Banking', 'At least 4 year(s)', 'Negotiable', 'Dhaka', '2020-03-31', 'nahid'),
(9, 'Manager/ Assistant Manager', 'Accounting/Finance/Banking', 'At least 6 year(s)', 'Negotiable', 'Dhaka', '2020-03-31', 'nahid'),
(10, 'Head of Research and Development', 'Accounting/Finance/Banking', 'At least 10 year(s)', 'Negotiable', 'Anywhere in Bangladesh', '2020-03-31', 'nahid'),
(11, 'Muraquib (Officer)', 'Accounting/Finance/Banking', 'At least 4 year(s)', 'Negotiable', 'Anywhere in Bangladesh', '2020-03-31', 'nahid'),
(12, 'Muraquib (Senior Officer)', 'Accounting/Finance/Banking', 'At least 5 year(s)', 'Negotiable', 'Anywhere in Bangladesh', '2020-03-31', 'nahid');

-- --------------------------------------------------------

--
-- Table structure for table `job_seeker`
--

CREATE TABLE `job_seeker` (
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `ContactNo` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Birthdate` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_seeker`
--

INSERT INTO `job_seeker` (`Name`, `Email`, `ContactNo`, `Username`, `Password`, `Address`, `Gender`, `Birthdate`) VALUES
('nahid', 'nahidkishore99@gmail.com', '01688815749', 'nahid', 'nahid123', 'katiadi', 'male', '31-12-1995'),
('munna', 'mahmudulhasan@gmail.com', '01699996969', 'munna', 'munna123', 'banasree', 'male', '01-01-1990');

-- --------------------------------------------------------

--
-- Table structure for table `job_seeker_qualification`
--

CREATE TABLE `job_seeker_qualification` (
  `js_qualification` varchar(100) NOT NULL,
  `js_username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `Name` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`Name`, `Location`, `Type`) VALUES
('Sikdar Textile Ltd.', '', ''),
('Bank Asia Ltd.', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `Job_ID` int(11) NOT NULL,
  `E_username` varchar(100) NOT NULL,
  `Org_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`Job_ID`, `E_username`, `Org_name`) VALUES
(3, 'arif', 'it expert'),
(4, 'arif', 'it expert'),
(5, 'arif', 'it expert'),
(6, 'Raihan', 'Sikdar Textile Ltd.'),
(7, 'Raihan', 'Sikdar Textile Ltd.'),
(8, 'jannat', 'Bank Asia Ltd.'),
(9, 'jannat', 'Bank Asia Ltd.'),
(10, 'jannat', 'Bank Asia Ltd.'),
(11, 'jannat', 'Bank Asia Ltd.'),
(12, 'jannat', 'Bank Asia Ltd.');

-- --------------------------------------------------------

--
-- Table structure for table `seeks`
--

CREATE TABLE `seeks` (
  `Job_ID` int(11) NOT NULL,
  `js_username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `job_offer`
--
ALTER TABLE `job_offer`
  ADD PRIMARY KEY (`Job_ID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`Job_ID`);

--
-- Indexes for table `seeks`
--
ALTER TABLE `seeks`
  ADD PRIMARY KEY (`Job_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `job_offer`
--
ALTER TABLE `job_offer`
  MODIFY `Job_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `Job_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `seeks`
--
ALTER TABLE `seeks`
  MODIFY `Job_ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
