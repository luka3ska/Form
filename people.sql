-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Sep 29, 2022 at 03:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `people`
--

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `name_surname` varchar(32) NOT NULL,
  `oib` varchar(32) NOT NULL,
  `birth_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `name_surname`, `oib`, `birth_date`) VALUES
(1, 'Darko Krofak', '12345678910', '2001-01-01'),
(2, 'Marko Markovic', '10987654321', '2001-02-02'),
(3, 'Zarko Zarkovic', '11223344556', '2001-03-03'),
(4, 'Milo Hrnic', '99887766554', '2001-04-04'),
(5, 'Maurizio Ivetic', '12323434545', '1999-10-30'),
(6, 'Edin Velic', '98787676565', '1999-07-02'),
(7, 'Luka Triska', '33557744669', '1999-07-07'),
(8, 'Filip Karazija', '88776655993', '1991-02-17'),
(9, 'Leonarda Corkovic', '54356732187', '1991-12-25'),
(10, 'Nina Mohorovic', '67854389064', '1999-08-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
