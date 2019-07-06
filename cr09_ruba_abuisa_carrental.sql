-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2019 at 02:29 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr09_ruba_abuisa_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `agency_site`
--

CREATE TABLE `agency_site` (
  `AGENCY_ID` int(11) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `URL` char(1) DEFAULT NULL,
  `PHONE` int(11) NOT NULL,
  `EMPLOYEES` char(1) DEFAULT NULL,
  `PAYMENT_METHOD` varchar(10) NOT NULL,
  `customer_CUSTOMER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `CAR_ID` int(11) NOT NULL,
  `TYPE` varchar(20) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `carDescription` varchar(50) DEFAULT NULL,
  `carKeys` int(11) NOT NULL,
  `startlocation_LOCATION_ID` int(11) DEFAULT NULL,
  `customer_CUSTOMER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`CAR_ID`, `TYPE`, `Date`, `carDescription`, `carKeys`, `startlocation_LOCATION_ID`, `customer_CUSTOMER_ID`) VALUES
(1, 'AUDI', '0000-00-00', 'COLOR BLACK', 4, NULL, 0),
(2, 'MERCEDES', '0000-00-00', 'FULL OPTION AND COLOR BLACK', 4, NULL, 0),
(3, 'MAZDA', '0000-00-00', 'MANUALL', 2, NULL, 0),
(4, 'VOLKSWWAGEN', '0000-00-00', 'COLOR RED', 5, NULL, 0),
(5, 'peugeot', '0000-00-00', 'FRENCH', 5, NULL, 0),
(6, 'CADILLAK', '0000-00-00', 'FULL OPTION', 3, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cardescription`
--

CREATE TABLE `cardescription` (
  `SEATS` int(11) NOT NULL,
  `TANKTYPE` char(1) DEFAULT NULL,
  `SPEED` int(11) NOT NULL,
  `car_CAR_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_type`
--

CREATE TABLE `certificate_type` (
  `NAME` varchar(20) NOT NULL,
  `TYPE` char(1) DEFAULT NULL,
  `customer_CUSTOMER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `CHARGESDATE` date DEFAULT NULL,
  `PRICE` int(11) NOT NULL,
  `REASON` varchar(50) NOT NULL,
  `start_location2_LOCATION2_ID` int(11) DEFAULT NULL,
  `customer_CUSTOMER_ID` int(11) NOT NULL,
  `charges_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `charges`
--

INSERT INTO `charges` (`CHARGESDATE`, `PRICE`, `REASON`, `start_location2_LOCATION2_ID`, `customer_CUSTOMER_ID`, `charges_ID`) VALUES
('0000-00-00', 100, 'CAR DAMAGED', NULL, 0, 0),
('0000-00-00', 200, 'CAR DAMAGED AND BROCKEN WINDOWS', NULL, 0, 0),
('0000-00-00', 10, 'FORGETT KEYS', NULL, 0, 0),
('0000-00-00', 1000, 'DOOR DAMAGED', NULL, 0, 0),
('0000-00-00', 100, 'BROCKEN LIGHT', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_ID` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `AGE` int(11) NOT NULL,
  `ADDRESS` char(25) DEFAULT NULL,
  `drivingCertificateType` varchar(11) DEFAULT NULL,
  `paymentMethod` varchar(10) DEFAULT NULL,
  `PHONE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_ID`, `NAME`, `AGE`, `ADDRESS`, `drivingCertificateType`, `paymentMethod`, `PHONE`) VALUES
(1, 'RUBA ABUISA', 21, 'VIENNA', 'B', 'MASTER CAR', 935074175),
(2, 'ISA ABUISA', 63, 'VIENNA', 'B1', 'CASH', 955220829),
(3, 'IYAD ABUISA', 63, 'DAMASCUS', 'B2', 'CASH', 2147483647),
(4, 'ISA ABUISA', 63, 'DAMASCUS', 'B3', 'CASH', 90000000),
(5, 'ISA ABUISA', 63, 'VIENNA', 'B4', 'CASH', 945454555),
(6, 'YAZAN ABUISA', 63, 'DAMASCUS', 'B', 'CASH', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `description`
--

CREATE TABLE `description` (
  `NUMBER` int(11) NOT NULL,
  `ADDRESS` varchar(30) NOT NULL,
  `FLOORS` int(11) NOT NULL,
  `CAPACITY` int(11) NOT NULL,
  `startlocation_LOCATION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `NAME` varchar(20) NOT NULL,
  `SALARY` int(11) NOT NULL,
  `PHONE` int(11) NOT NULL,
  `startlocation_LOCATION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `RESERVATION_ID` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `reservationDate` date NOT NULL,
  `CHARGES` int(11) NOT NULL,
  `SINGLE_INVOICE` char(1) DEFAULT NULL,
  `agency_site_AGENCY_ID` int(11) DEFAULT NULL,
  `customer_CUSTOMER_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`RESERVATION_ID`, `NAME`, `reservationDate`, `CHARGES`, `SINGLE_INVOICE`, `agency_site_AGENCY_ID`, `customer_CUSTOMER_ID`) VALUES
(1, 'RUBA', '0000-00-00', 200, NULL, NULL, NULL),
(2, 'ISA', '0000-00-00', 250, NULL, NULL, NULL),
(3, 'IYAD', '0000-00-00', 500, NULL, NULL, NULL),
(4, 'AHMAD', '0000-00-00', 200, NULL, NULL, NULL),
(5, 'RAGHAD', '0000-00-00', 2000, NULL, NULL, NULL),
(6, 'RUBA', '0000-00-00', 200, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `singlr_invoice`
--

CREATE TABLE `singlr_invoice` (
  `DATE1` date DEFAULT NULL,
  `PRICE` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `customer_CUSTOMER_ID` int(11) DEFAULT NULL,
  `reservation_reservation_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `startlocation`
--

CREATE TABLE `startlocation` (
  `LOCATION_ID` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `OPENING_TIME` time DEFAULT NULL,
  `DESCRIPTION` varchar(100) NOT NULL,
  `EMPLOYEES` varchar(100) NOT NULL,
  `reservation_reservation_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `start_location2`
--

CREATE TABLE `start_location2` (
  `LOCATION2_ID` int(11) NOT NULL,
  `OPENING_TIME` time DEFAULT NULL,
  `CHARGES` int(11) DEFAULT NULL,
  `PAYMENTMETHODE` varchar(5) DEFAULT NULL,
  `car_CAR_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agency_site`
--
ALTER TABLE `agency_site`
  ADD PRIMARY KEY (`AGENCY_ID`),
  ADD KEY `customer_CUSTOMER_ID` (`customer_CUSTOMER_ID`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`CAR_ID`),
  ADD KEY `startlocation_LOCATION_ID` (`startlocation_LOCATION_ID`);

--
-- Indexes for table `cardescription`
--
ALTER TABLE `cardescription`
  ADD KEY `car_CAR_ID` (`car_CAR_ID`);

--
-- Indexes for table `certificate_type`
--
ALTER TABLE `certificate_type`
  ADD KEY `customer_CUSTOMER_ID` (`customer_CUSTOMER_ID`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD KEY `start_location2_LOCATION2_ID` (`start_location2_LOCATION2_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_ID`);

--
-- Indexes for table `description`
--
ALTER TABLE `description`
  ADD KEY `startlocation_LOCATION_ID` (`startlocation_LOCATION_ID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD KEY `startlocation_LOCATION_ID` (`startlocation_LOCATION_ID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`RESERVATION_ID`),
  ADD KEY `agency_site_AGENCY_ID` (`agency_site_AGENCY_ID`),
  ADD KEY `customer_CUSTOMER_ID` (`customer_CUSTOMER_ID`);

--
-- Indexes for table `singlr_invoice`
--
ALTER TABLE `singlr_invoice`
  ADD KEY `customer_CUSTOMER_ID` (`customer_CUSTOMER_ID`),
  ADD KEY `reservation_reservation_ID` (`reservation_reservation_ID`);

--
-- Indexes for table `startlocation`
--
ALTER TABLE `startlocation`
  ADD PRIMARY KEY (`LOCATION_ID`),
  ADD KEY `reservation_reservation_ID` (`reservation_reservation_ID`);

--
-- Indexes for table `start_location2`
--
ALTER TABLE `start_location2`
  ADD PRIMARY KEY (`LOCATION2_ID`),
  ADD KEY `car_CAR_ID` (`car_CAR_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agency_site`
--
ALTER TABLE `agency_site`
  ADD CONSTRAINT `agency_site_ibfk_1` FOREIGN KEY (`customer_CUSTOMER_ID`) REFERENCES `customer` (`customer_ID`);

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`startlocation_LOCATION_ID`) REFERENCES `startlocation` (`LOCATION_ID`);

--
-- Constraints for table `cardescription`
--
ALTER TABLE `cardescription`
  ADD CONSTRAINT `cardescription_ibfk_1` FOREIGN KEY (`car_CAR_ID`) REFERENCES `car` (`CAR_ID`);

--
-- Constraints for table `certificate_type`
--
ALTER TABLE `certificate_type`
  ADD CONSTRAINT `certificate_type_ibfk_1` FOREIGN KEY (`customer_CUSTOMER_ID`) REFERENCES `customer` (`customer_ID`);

--
-- Constraints for table `charges`
--
ALTER TABLE `charges`
  ADD CONSTRAINT `charges_ibfk_1` FOREIGN KEY (`start_location2_LOCATION2_ID`) REFERENCES `start_location2` (`LOCATION2_ID`);

--
-- Constraints for table `description`
--
ALTER TABLE `description`
  ADD CONSTRAINT `description_ibfk_1` FOREIGN KEY (`startlocation_LOCATION_ID`) REFERENCES `startlocation` (`LOCATION_ID`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`startlocation_LOCATION_ID`) REFERENCES `startlocation` (`LOCATION_ID`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`agency_site_AGENCY_ID`) REFERENCES `agency_site` (`AGENCY_ID`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`customer_CUSTOMER_ID`) REFERENCES `customer` (`customer_ID`);

--
-- Constraints for table `singlr_invoice`
--
ALTER TABLE `singlr_invoice`
  ADD CONSTRAINT `singlr_invoice_ibfk_1` FOREIGN KEY (`customer_CUSTOMER_ID`) REFERENCES `customer` (`customer_ID`),
  ADD CONSTRAINT `singlr_invoice_ibfk_2` FOREIGN KEY (`reservation_reservation_ID`) REFERENCES `reservation` (`RESERVATION_ID`);

--
-- Constraints for table `startlocation`
--
ALTER TABLE `startlocation`
  ADD CONSTRAINT `startlocation_ibfk_1` FOREIGN KEY (`reservation_reservation_ID`) REFERENCES `reservation` (`RESERVATION_ID`);

--
-- Constraints for table `start_location2`
--
ALTER TABLE `start_location2`
  ADD CONSTRAINT `start_location2_ibfk_1` FOREIGN KEY (`car_CAR_ID`) REFERENCES `car` (`CAR_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
