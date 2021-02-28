-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2020 at 06:40 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `venus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin'),
('', ''),
('admin', 'admin'),
('', ''),
('admin', 'admin'),
('admin ', 'admin'),
('admin ', 'admin'),
('admin ', 'admin'),
('admin', 'admin'),
('admin', 'admin'),
('admin', 'admin'),
('admin', 'admin'),
('admin', 'admin'),
('admin', 'admin'),
('admin', 'admin'),
('admin', 'admin'),
('admin', 'admin'),
('admin', 'admin'),
('admin', 'admin'),
('admin', 'admin'),
('admin', 'admin'),
('admin', 'admin'),
('admin', 'admin'),
('admin', 'admin'),
('admin', 'admin'),
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ambulance`
--

CREATE TABLE `ambulance` (
  `Driverid` varchar(100) NOT NULL,
  `Drivername` varchar(100) NOT NULL,
  `License` varchar(100) NOT NULL,
  `Insurance` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ambulance`
--

INSERT INTO `ambulance` (`Driverid`, `Drivername`, `License`, `Insurance`, `Gender`) VALUES
('1', 'rakav', '1212121', '121', 'male'),
('111', 'wq', 'wqd', 'wqd', 'ww'),
('12', 'q', '1111', '1', 'male'),
('121', 'rakav', '1212121', '1212', 'male'),
('121111', 'qwed', 'qdw', 'qdw', 'qwd');

-- --------------------------------------------------------

--
-- Table structure for table `ambulance_vehicle`
--

CREATE TABLE `ambulance_vehicle` (
  `Vehicleid` varchar(100) NOT NULL,
  `Date` varchar(100) NOT NULL,
  `Amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ambulance_vehicle`
--

INSERT INTO `ambulance_vehicle` (`Vehicleid`, `Date`, `Amount`) VALUES
('11', '12/1/2018', '250'),
('111', '11/1/11', '12'),
('12', '12/1/2018', '2500'),
('1211221', 'sad', 'asdad'),
('12121', '21', '12');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctorid` int(10) NOT NULL,
  `doctorname` varchar(15) NOT NULL,
  `date` varchar(15) NOT NULL,
  `offerotp` varchar(15) NOT NULL,
  `gender` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorid`, `doctorname`, `date`, `offerotp`, `gender`) VALUES
(2, 'sa', '3/3/3', 'sd', 'sd'),
(4, 'asdsad', '3/3/3', 'sdas', 'sda'),
(23, 'sa', '3/3/3', 'sd', 'sd'),
(233, 'hi', '3/3/3', 'sd', 'sd');

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

CREATE TABLE `finance` (
  `TotalAssets` varchar(100) NOT NULL,
  `CurrentAssets` varchar(100) NOT NULL,
  `TotalCash` varchar(100) NOT NULL,
  `AccountBalance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`TotalAssets`, `CurrentAssets`, `TotalCash`, `AccountBalance`) VALUES
('1', '1', '1', '3'),
('121', '1221', '12', '1221'),
('111', '111', '22', '111'),
('11213', '12321', '7887878', '21321');

-- --------------------------------------------------------

--
-- Table structure for table `finance_patient`
--

CREATE TABLE `finance_patient` (
  `PatientID` varchar(100) NOT NULL,
  `PatientName` varchar(100) NOT NULL,
  `ConsultantFee` varchar(100) NOT NULL,
  `MedicinePrice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finance_patient`
--

INSERT INTO `finance_patient` (`PatientID`, `PatientName`, `ConsultantFee`, `MedicinePrice`) VALUES
('11', 'wewq', 'dwq', 'qwd'),
('2', 'asd', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `labpatient`
--

CREATE TABLE `labpatient` (
  `patientid` int(10) NOT NULL,
  `patientage` varchar(10) NOT NULL,
  `patientname` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `typeofscan` varchar(10) NOT NULL,
  `scanofdate` varchar(10) NOT NULL,
  `refernameofphysician` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `labpatient`
--

INSERT INTO `labpatient` (`patientid`, `patientage`, `patientname`, `gender`, `typeofscan`, `scanofdate`, `refernameofphysician`) VALUES
(1, '21', 'j', 'jk', 'lk', '2/2/2', 'jkn'),
(2, '21', 'j', 'jk', 'lk', '2/2/2', 'jkn'),
(12, '34', 'j', 'jk', 'lk', '2/2/2', 'jkn'),
(1233, '21', 'hi', 'hi', 'hi', '2/2/2', 'jkn');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(100) NOT NULL,
  `patientID` varchar(100) NOT NULL,
  `patientName` varchar(100) NOT NULL,
  `diseaseName` varchar(100) NOT NULL,
  `consultantName` varchar(100) NOT NULL,
  `patientSection` varchar(100) NOT NULL,
  `blockNo` varchar(100) NOT NULL,
  `wardNo` varchar(100) NOT NULL,
  `bedNo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `patientID`, `patientName`, `diseaseName`, `consultantName`, `patientSection`, `blockNo`, `wardNo`, `bedNo`) VALUES
(1, '12', 'we', 'asd', 'ads', 'sda', '5555555', '2', '2213'),
(2, '12', 'we', 'asd', 'ads', 'sda', '5555555', '2', '2213'),
(3, '1232', 'wedsada', 'asd', 'ads', 'sda', '5555555', '2', '2213');

-- --------------------------------------------------------

--
-- Table structure for table `patientrecord`
--

CREATE TABLE `patientrecord` (
  `visitorno` int(15) NOT NULL,
  `patientname` varchar(15) NOT NULL,
  `mobilenumber` int(10) NOT NULL,
  `dateofbirth` varchar(10) NOT NULL,
  `bloodgroup` varchar(5) NOT NULL,
  `Gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientrecord`
--

INSERT INTO `patientrecord` (`visitorno`, `patientname`, `mobilenumber`, `dateofbirth`, `bloodgroup`, `Gender`) VALUES
(1, 'Eruniya', 789065786, '1998.07.24', 'AB+', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `drugid` varchar(100) NOT NULL,
  `drugname` varchar(100) NOT NULL,
  `drugcolour` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`drugid`, `drugname`, `drugcolour`, `quantity`, `price`) VALUES
('11', 'rakav', 'rakav', 1000, 10000),
('15', 'citrizene', 'white', 1000, 12),
('21', 'SLiit', 'orange', 10, 112),
('212', 'hi', 'orange', 10, 112),
('2165456', 'SLiit', 'orange', 10, 112),
('4', 'SLiit', 'orange', 10, 112),
('456', 'aaa', 'aaahiiiiiii', 21, 1),
('7', 'bnv', 'bnv', 8, 7),
('77', 'SLiit', 'orange', 10, 112);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_supplier`
--

CREATE TABLE `pharmacy_supplier` (
  `Supplier_ID` varchar(20) NOT NULL,
  `Supplier_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy_supplier`
--

INSERT INTO `pharmacy_supplier` (`Supplier_ID`, `Supplier_Name`) VALUES
('1', 'A'),
('1234', 'qwer'),
('18', 'Gobi'),
('2', 'Rakavan'),
('223', 'hkh'),
('3', 'hi'),
('33', 'aaaaaa'),
('3322', 'rarabfgg'),
('334', 'bvcb'),
('7', 'gfhf');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `fname` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `staffid` varchar(100) NOT NULL,
  `datejoined` varchar(100) NOT NULL,
  `divison` varchar(100) NOT NULL,
  `emloyementstatus` varchar(100) NOT NULL,
  `workblockname` varchar(100) NOT NULL,
  `shifttime` varchar(100) NOT NULL,
  `jobname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`fname`, `department`, `staffid`, `datejoined`, `divison`, `emloyementstatus`, `workblockname`, `shifttime`, `jobname`) VALUES
('', '', '', '0000-00-00', '', '', '', '', ''),
('asd', 'asdsa', '1', '0002-02-02', '2', 'sad', 'sad', '7', 'sad'),
('q', 'asdsa', '10', '0002-02-02', '2', 'sad', 'sad', '7', 'sad'),
('Rakav', 'asd', '2', '0002-02-02', '2', 'asd', 'sad', '2', 'sad'),
('Rakav', 'asd', '233', '0002-02-02', '2', 'asd', 'sad', '2', 'sad'),
('wqe', 'sda', '3', '0003-03-03', 'sad', 'sad', 'sad', '3', 'sda'),
('ew', 'weq', '33', '0002-02-02', 'sad', 'asd', 'asd', 'sad', 'asd'),
('sadad', 'sadd', '3333', '2010-03-03', 'sad', 'asd', 'asd', 'sadasd', 'sad'),
('dfgf', 'fdg', '456', '4', 'fd', 'fdgfdg', 'fdgdfg', 'fd', 'fd'),
('a', 'a', '5', '0003-03-03', 's', 's', 's', 's', 's'),
('sad', 'asd', '6', 'dsf', 'dsf', 'dsf', 'ds', 'sf', 'sfd'),
('sad', 'asd', '7', 'dsf', 'dsf', 'dsf', 'ds', 'sf', 'sfd');

-- --------------------------------------------------------

--
-- Table structure for table `staff_personal`
--

CREATE TABLE `staff_personal` (
  `FullName` varchar(100) NOT NULL,
  `Age` varchar(100) NOT NULL,
  `PhoneNumber` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `DateOfBirth` varchar(100) NOT NULL,
  `EmailAddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_personal`
--

INSERT INTO `staff_personal` (`FullName`, `Age`, `PhoneNumber`, `Gender`, `Address`, `DateOfBirth`, `EmailAddress`) VALUES
('rakavvv', '345', '34234', 'sad', 'ads', '3/3/3', 'ass@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD PRIMARY KEY (`Driverid`);

--
-- Indexes for table `ambulance_vehicle`
--
ALTER TABLE `ambulance_vehicle`
  ADD PRIMARY KEY (`Vehicleid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctorid`);

--
-- Indexes for table `labpatient`
--
ALTER TABLE `labpatient`
  ADD PRIMARY KEY (`patientid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patientrecord`
--
ALTER TABLE `patientrecord`
  ADD PRIMARY KEY (`visitorno`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`drugid`);

--
-- Indexes for table `pharmacy_supplier`
--
ALTER TABLE `pharmacy_supplier`
  ADD PRIMARY KEY (`Supplier_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctorid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233334;

--
-- AUTO_INCREMENT for table `labpatient`
--
ALTER TABLE `labpatient`
  MODIFY `patientid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1237;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patientrecord`
--
ALTER TABLE `patientrecord`
  MODIFY `visitorno` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12348;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
