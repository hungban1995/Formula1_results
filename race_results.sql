-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2023 at 06:24 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `race_results`
--

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(10) NOT NULL,
  `pos` int(10) NOT NULL,
  `driver` varchar(100) NOT NULL,
  `nationality` varchar(10) NOT NULL,
  `car` varchar(200) NOT NULL,
  `pts` int(10) NOT NULL,
  `year_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `pos`, `driver`, `nationality`, `car`, `pts`, `year_id`) VALUES
(293, 1, 'Max Verstappen', 'NED', '\n                Red Bull Racing Honda RBPT\n            ', 170, 4),
(294, 2, 'Sergio Perez', 'MEX', '\n                Red Bull Racing Honda RBPT\n            ', 117, 4),
(295, 3, 'Fernando Alonso', 'ESP', '\n                Aston Martin Aramco Mercedes\n            ', 99, 4),
(296, 4, 'Lewis Hamilton', 'GBR', '\n                Mercedes\n            ', 87, 4),
(297, 5, 'George Russell', 'GBR', '\n                Mercedes\n            ', 65, 4),
(298, 6, 'Carlos Sainz', 'ESP', '\n                Ferrari\n            ', 58, 4),
(299, 7, 'Charles Leclerc', 'MON', '\n                Ferrari\n            ', 42, 4),
(300, 8, 'Lance Stroll', 'CAN', '\n                Aston Martin Aramco Mercedes\n            ', 35, 4),
(301, 9, 'Esteban Ocon', 'FRA', '\n                Alpine Renault\n            ', 25, 4),
(302, 10, 'Pierre Gasly', 'FRA', '\n                Alpine Renault\n            ', 15, 4),
(303, 11, 'Lando Norris', 'GBR', '\n                McLaren Mercedes\n            ', 12, 4),
(304, 12, 'Nico Hulkenberg', 'GER', '\n                Haas Ferrari\n            ', 6, 4),
(305, 13, 'Oscar Piastri', 'AUS', '\n                McLaren Mercedes\n            ', 5, 4),
(306, 14, 'Valtteri Bottas', 'FIN', '\n                Alfa Romeo Ferrari\n            ', 4, 4),
(307, 15, 'Zhou Guanyu', 'CHN', '\n                Alfa Romeo Ferrari\n            ', 4, 4),
(308, 16, 'Yuki Tsunoda', 'JPN', '\n                AlphaTauri Honda RBPT\n            ', 2, 4),
(309, 17, 'Kevin Magnussen', 'DEN', '\n                Haas Ferrari\n            ', 2, 4),
(310, 18, 'Alexander Albon', 'THA', '\n                Williams Mercedes\n            ', 1, 4),
(311, 19, 'Nyck De Vries', 'NED', '\n                AlphaTauri Honda RBPT\n            ', 0, 4),
(312, 20, 'Logan Sargeant', 'USA', '\n                Williams Mercedes\n            ', 0, 4),
(313, 1, 'Max Verstappen', 'NED', '\n                Red Bull Racing RBPT\n            ', 454, 3),
(314, 2, 'Charles Leclerc', 'MON', '\n                Ferrari\n            ', 308, 3),
(315, 3, 'Sergio Perez', 'MEX', '\n                Red Bull Racing RBPT\n            ', 305, 3),
(316, 4, 'George Russell', 'GBR', '\n                Mercedes\n            ', 275, 3),
(317, 5, 'Carlos Sainz', 'ESP', '\n                Ferrari\n            ', 246, 3),
(318, 6, 'Lewis Hamilton', 'GBR', '\n                Mercedes\n            ', 240, 3),
(319, 7, 'Lando Norris', 'GBR', '\n                McLaren Mercedes\n            ', 122, 3),
(320, 8, 'Esteban Ocon', 'FRA', '\n                Alpine Renault\n            ', 92, 3),
(321, 9, 'Fernando Alonso', 'ESP', '\n                Alpine Renault\n            ', 81, 3),
(322, 10, 'Valtteri Bottas', 'FIN', '\n                Alfa Romeo Ferrari\n            ', 49, 3),
(323, 11, 'Daniel Ricciardo', 'AUS', '\n                McLaren Mercedes\n            ', 37, 3),
(324, 12, 'Sebastian Vettel', 'GER', '\n                Aston Martin Aramco Mercedes\n            ', 37, 3),
(325, 13, 'Kevin Magnussen', 'DEN', '\n                Haas Ferrari\n            ', 25, 3),
(326, 14, 'Pierre Gasly', 'FRA', '\n                AlphaTauri RBPT\n            ', 23, 3),
(327, 15, 'Lance Stroll', 'CAN', '\n                Aston Martin Aramco Mercedes\n            ', 18, 3),
(328, 16, 'Mick Schumacher', 'GER', '\n                Haas Ferrari\n            ', 12, 3),
(329, 17, 'Yuki Tsunoda', 'JPN', '\n                AlphaTauri RBPT\n            ', 12, 3),
(330, 18, 'Zhou Guanyu', 'CHN', '\n                Alfa Romeo Ferrari\n            ', 6, 3),
(331, 19, 'Alexander Albon', 'THA', '\n                Williams Mercedes\n            ', 4, 3),
(332, 20, 'Nicholas Latifi', 'CAN', '\n                Williams Mercedes\n            ', 2, 3),
(333, 21, 'Nyck De Vries', 'NED', '\n                Williams Mercedes\n            ', 2, 3),
(334, 22, 'Nico Hulkenberg', 'GER', '\n                Aston Martin Aramco Mercedes\n            ', 0, 3),
(335, 1, 'Max Verstappen', 'NED', '\n                Red Bull Racing Honda\n            ', 396, 2),
(336, 2, 'Lewis Hamilton', 'GBR', '\n                Mercedes\n            ', 388, 2),
(337, 3, 'Valtteri Bottas', 'FIN', '\n                Mercedes\n            ', 226, 2),
(338, 4, 'Sergio Perez', 'MEX', '\n                Red Bull Racing Honda\n            ', 190, 2),
(339, 5, 'Carlos Sainz', 'ESP', '\n                Ferrari\n            ', 165, 2),
(340, 6, 'Lando Norris', 'GBR', '\n                McLaren Mercedes\n            ', 160, 2),
(341, 7, 'Charles Leclerc', 'MON', '\n                Ferrari\n            ', 159, 2),
(342, 8, 'Daniel Ricciardo', 'AUS', '\n                McLaren Mercedes\n            ', 115, 2),
(343, 9, 'Pierre Gasly', 'FRA', '\n                AlphaTauri Honda\n            ', 110, 2),
(344, 10, 'Fernando Alonso', 'ESP', '\n                Alpine Renault\n            ', 81, 2),
(345, 11, 'Esteban Ocon', 'FRA', '\n                Alpine Renault\n            ', 74, 2),
(346, 12, 'Sebastian Vettel', 'GER', '\n                Aston Martin Mercedes\n            ', 43, 2),
(347, 13, 'Lance Stroll', 'CAN', '\n                Aston Martin Mercedes\n            ', 34, 2),
(348, 14, 'Yuki Tsunoda', 'JPN', '\n                AlphaTauri Honda\n            ', 32, 2),
(349, 15, 'George Russell', 'GBR', '\n                Williams Mercedes\n            ', 16, 2),
(350, 16, 'Kimi Räikkönen', 'FIN', '\n                Alfa Romeo Racing Ferrari\n            ', 10, 2),
(351, 17, 'Nicholas Latifi', 'CAN', '\n                Williams Mercedes\n            ', 7, 2),
(352, 18, 'Antonio Giovinazzi', 'ITA', '\n                Alfa Romeo Racing Ferrari\n            ', 3, 2),
(353, 19, 'Mick Schumacher', 'GER', '\n                Haas Ferrari\n            ', 0, 2),
(354, 20, 'Robert Kubica', 'POL', '\n                Alfa Romeo Racing Ferrari\n            ', 0, 2),
(355, 21, 'Nikita Mazepin', 'RAF', '\n                Haas Ferrari\n            ', 0, 2),
(356, 1, 'Lewis Hamilton', 'GBR', '\n                Mercedes\n            ', 347, 1),
(357, 2, 'Valtteri Bottas', 'FIN', '\n                Mercedes\n            ', 223, 1),
(358, 3, 'Max Verstappen', 'NED', '\n                Red Bull Racing Honda\n            ', 214, 1),
(359, 4, 'Sergio Perez', 'MEX', '\n                Racing Point BWT Mercedes\n            ', 125, 1),
(360, 5, 'Daniel Ricciardo', 'AUS', '\n                Renault\n            ', 119, 1),
(361, 6, 'Carlos Sainz', 'ESP', '\n                McLaren Renault\n            ', 105, 1),
(362, 7, 'Alexander Albon', 'THA', '\n                Red Bull Racing Honda\n            ', 105, 1),
(363, 8, 'Charles Leclerc', 'MON', '\n                Ferrari\n            ', 98, 1),
(364, 9, 'Lando Norris', 'GBR', '\n                McLaren Renault\n            ', 97, 1),
(365, 10, 'Pierre Gasly', 'FRA', '\n                AlphaTauri Honda\n            ', 75, 1),
(366, 11, 'Lance Stroll', 'CAN', '\n                Racing Point BWT Mercedes\n            ', 75, 1),
(367, 12, 'Esteban Ocon', 'FRA', '\n                Renault\n            ', 62, 1),
(368, 13, 'Sebastian Vettel', 'GER', '\n                Ferrari\n            ', 33, 1),
(369, 14, 'Daniil Kvyat', 'RUS', '\n                AlphaTauri Honda\n            ', 32, 1),
(370, 15, 'Nico Hulkenberg', 'GER', '\n                Racing Point BWT Mercedes\n            ', 10, 1),
(371, 16, 'Kimi Räikkönen', 'FIN', '\n                Alfa Romeo Racing Ferrari\n            ', 4, 1),
(372, 17, 'Antonio Giovinazzi', 'ITA', '\n                Alfa Romeo Racing Ferrari\n            ', 4, 1),
(373, 18, 'George Russell', 'GBR', '\n                Williams Mercedes\n            ', 3, 1),
(374, 19, 'Romain Grosjean', 'FRA', '\n                Haas Ferrari\n            ', 2, 1),
(375, 20, 'Kevin Magnussen', 'DEN', '\n                Haas Ferrari\n            ', 1, 1),
(376, 21, 'Nicholas Latifi', 'CAN', '\n                Williams Mercedes\n            ', 0, 1),
(377, 22, 'Jack Aitken', 'GBR', '\n                Williams Mercedes\n            ', 0, 1),
(378, 23, 'Pietro Fittipaldi', 'BRA', '\n                Haas Ferrari\n            ', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `races`
--

CREATE TABLE `races` (
  `id` int(10) NOT NULL,
  `grand` text NOT NULL,
  `date` text NOT NULL,
  `winner` text NOT NULL,
  `car` text NOT NULL,
  `laps` varchar(10) NOT NULL,
  `time` varchar(20) NOT NULL,
  `year_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `races`
--

INSERT INTO `races` (`id`, `grand`, `date`, `winner`, `car`, `laps`, `time`, `year_id`) VALUES
(15, 'Austria', '05 Jul 2020', 'Valtteri Bottas BOT', 'Mercedes', '71', '1:30:55.739', 1),
(16, 'Styria', '12 Jul 2020', 'Lewis Hamilton HAM', 'Mercedes', '71', '1:22:50.683', 1),
(17, 'Hungary', '19 Jul 2020', 'Lewis Hamilton HAM', 'Mercedes', '70', '1:36:12.473', 1),
(18, 'Great Britain', '02 Aug 2020', 'Lewis Hamilton HAM', 'Mercedes', '52', '1:28:01.283', 1),
(19, '70th Anniversary', '09 Aug 2020', 'Max Verstappen', 'Red Bull Racing Honda', '52', '1:19:41.993', 1),
(20, 'Spain', '16 Aug 2020', 'Lewis Hamilton HAM', 'Mercedes', '66', '1:31:45.279', 1),
(21, 'Belgium', '30 Aug 2020', 'Lewis Hamilton HAM', 'Mercedes', '44', '1:24:08.761', 1),
(22, 'Italy', '06 Sep 2020', 'Pierre Gasly GAS', 'AlphaTauri Honda', '53', '1:47:06.056', 1),
(23, 'Tuscany', '13 Sep 2020', 'Lewis Hamilton HAM', 'Mercedes', '59', '2:19:35.060', 1),
(24, 'Russia', '27 Sep 2020', 'Valtteri Bottas BOT', 'Mercedes', '53', '1:34:00.364', 1),
(25, 'Eifel', '11 Oct 2020', 'Lewis Hamilton HAM', 'Mercedes', '60', '1:35:49.641', 1),
(26, 'Portugal', '25 Oct 2020', 'Lewis Hamilton HAM', 'Mercedes', '66', '1:29:56.828', 1),
(27, 'Emilia Romagna', '01 Nov 2020', 'Lewis Hamilton HAM', 'Mercedes', '63', '1:28:32.430', 1),
(28, 'Turkey', '15 Nov 2020', 'Lewis Hamilton HAM', 'Mercedes', '58', '1:42:19.313', 1),
(29, 'Bahrain', '29 Nov 2020', 'Lewis Hamilton HAM', 'Mercedes', '57', '2:59:47.515', 1),
(30, 'Sakhir', '06 Dec 2020', 'Sergio Perez ', 'Racing Point BWT Mercedes', '87', '1:31:15.114', 1),
(31, 'Abu Dhabi', '13 Dec 2020', 'Max Verstappen', 'Red Bull Racing Honda', '55', '1:36:28.645', 1),
(32, 'Bahrain', '28 Mar 2021', 'Lewis Hamilton HAM', 'Mercedes', '56', '1:32:03.897', 2),
(33, 'Emilia Romagna', '18 Apr 2021', 'Max Verstappen', 'Red Bull Racing Honda', '63', '2:02:34.598', 2),
(34, 'Portugal', '02 May 2021', 'Lewis Hamilton HAM', 'Mercedes', '66', '1:34:31.421', 2),
(35, 'Spain', '09 May 2021', 'Lewis Hamilton HAM', 'Mercedes', '66', '1:33:07.680', 2),
(36, 'Monaco', '23 May 2021', 'Max Verstappen', 'Red Bull Racing Honda', '78', '1:38:56.820', 2),
(37, 'Azerbaijan', '06 Jun 2021', 'Sergio Perez ', 'Red Bull Racing Honda', '51', '2:13:36.410', 2),
(38, 'France', '20 Jun 2021', 'Max Verstappen', 'Red Bull Racing Honda', '53', '1:27:25.770', 2),
(39, 'Styria', '27 Jun 2021', 'Max Verstappen', 'Red Bull Racing Honda', '71', '1:22:18.925', 2),
(40, 'Austria', '04 Jul 2021', 'Max Verstappen', 'Red Bull Racing Honda', '71', '1:23:54.543', 2),
(41, 'Great Britain', '18 Jul 2021', 'Lewis Hamilton HAM', 'Mercedes', '52', '1:58:23.284', 2),
(42, 'Hungary', '01 Aug 2021', 'Esteban Ocon OCO', 'Alpine Renault', '70', '2:04:43.199', 2),
(43, 'Belgium', '29 Aug 2021', 'Max Verstappen', 'Red Bull Racing Honda', '1', '0:03:27.071', 2),
(44, 'Netherlands', '05 Sep 2021', 'Max Verstappen', 'Red Bull Racing Honda', '72', '1:30:05.395', 2),
(45, 'Italy', '12 Sep 2021', 'Daniel Ricciardo RIC', 'McLaren Mercedes', '53', '1:21:54.365', 2),
(46, 'Russia', '26 Sep 2021', 'Lewis Hamilton HAM', 'Mercedes', '53', '1:30:41.001', 2),
(47, 'Turkey', '10 Oct 2021', 'Valtteri Bottas BOT', 'Mercedes', '58', '1:31:04.103', 2),
(48, 'United States ', '24 Oct 2021', 'Max Verstappen', 'Red Bull Racing Honda', '56', '1:34:36.552', 2),
(49, 'Mexico', '07 Nov 2021', 'Max Verstappen', 'Red Bull Racing Honda', '71', '1:38:39.086', 2),
(50, 'Brazil', '14 Nov 2021', 'Lewis Hamilton HAM', 'Mercedes', '71', '1:32:22.851', 2),
(51, 'Qatar', '21 Nov 2021', 'Lewis Hamilton HAM', 'Mercedes', '57', '1:24:28.471', 2),
(52, 'Saudi Arabia', '05 Dec 2021', 'Lewis Hamilton HAM', 'Mercedes', '50', '2:06:15.118', 2),
(53, 'Abu Dhabi', '12 Dec 2021', 'Max Verstappen', 'Red Bull Racing Honda', '58', '1:30:17.345', 2),
(54, 'Bahrain', '20 Mar 2022', 'Charles Leclerc LEC', 'Ferrari', '57', '1:37:33.584', 3),
(55, 'Saudi Arabia', '27 Mar 2022', 'Max Verstappen', 'Red Bull Racing RBPT', '50', '1:24:19.293', 3),
(56, 'Australia', '10 Apr 2022', 'Charles Leclerc LEC', 'Ferrari', '58', '1:27:46.548', 3),
(57, 'Emilia Romagna', '24 Apr 2022', 'Max Verstappen', 'Red Bull Racing RBPT', '63', '1:32:07.986', 3),
(58, 'Miami ', '08 May 2022', 'Max Verstappen', 'Red Bull Racing RBPT', '57', '1:34:24.258', 3),
(59, 'Spain', '22 May 2022', 'Max Verstappen', 'Red Bull Racing RBPT', '66', '1:37:20.475', 3),
(60, 'Monaco', '29 May 2022', 'Sergio Perez ', 'Red Bull Racing RBPT', '64', '1:56:30.265', 3),
(61, 'Azerbaijan', '12 Jun 2022', 'Max Verstappen', 'Red Bull Racing RBPT', '51', '1:34:05.941', 3),
(62, 'Canada', '19 Jun 2022', 'Max Verstappen', 'Red Bull Racing RBPT', '70', '1:36:21.757', 3),
(63, 'Great Britain', '03 Jul 2022', 'Carlos Sainz SAI', 'Ferrari', '52', '2:17:50.311', 3),
(64, 'Austria', '10 Jul 2022', 'Charles Leclerc LEC', 'Ferrari', '71', '1:24:24.312', 3),
(65, 'France', '24 Jul 2022', 'Max Verstappen', 'Red Bull Racing RBPT', '53', '1:30:02.112', 3),
(66, 'Hungary', '31 Jul 2022', 'Max Verstappen', 'Red Bull Racing RBPT', '70', '1:39:35.912', 3),
(67, 'Belgium', '28 Aug 2022', 'Max Verstappen', 'Red Bull Racing RBPT', '44', '1:25:52.894', 3),
(68, 'Netherlands', '04 Sep 2022', 'Max Verstappen', 'Red Bull Racing RBPT', '72', '1:36:42.773', 3),
(69, 'Italy', '11 Sep 2022', 'Max Verstappen', 'Red Bull Racing RBPT', '53', '1:20:27.511', 3),
(70, 'Singapore', '02 Oct 2022', 'Sergio Perez ', 'Red Bull Racing RBPT', '59', '2:02:20.238', 3),
(71, 'Japan', '09 Oct 2022', 'Max Verstappen', 'Red Bull Racing RBPT', '28', '3:01:44.004', 3),
(72, 'United States ', '23 Oct 2022', 'Max Verstappen', 'Red Bull Racing RBPT', '56', '1:42:11.687', 3),
(73, 'Mexico', '30 Oct 2022', 'Max Verstappen', 'Red Bull Racing RBPT', '71', '1:38:36.729', 3),
(74, 'Brazil', '13 Nov 2022', 'George Russell RUS', 'Mercedes', '71', '1:38:34.044', 3),
(75, 'Abu Dhabi', '20 Nov 2022', 'Max Verstappen', 'Red Bull Racing RBPT', '58', '1:27:45.914', 3),
(76, 'Bahrain', '05 Mar 2023', 'Max Verstappen', 'Red Bull Racing Honda RBPT', '57', '1:33:56.736', 4),
(77, 'Saudi Arabia', '19 Mar 2023', 'Sergio Perez ', 'Red Bull Racing Honda RBPT', '50', '1:21:14.894', 4),
(78, 'Australia', '02 Apr 2023', 'Max Verstappen', 'Red Bull Racing Honda RBPT', '58', '2:32:38.371', 4),
(79, 'Azerbaijan', '30 Apr 2023', 'Sergio Perez ', 'Red Bull Racing Honda RBPT', '51', '1:32:42.436', 4),
(80, 'Miami ', '07 May 2023', 'Max Verstappen', 'Red Bull Racing Honda RBPT', '57', '1:27:38.241', 4),
(81, 'Monaco', '28 May 2023', 'Max Verstappen', 'Red Bull Racing Honda RBPT', '78', '1:48:51.980', 4),
(82, 'Spain', '04 Jun 2023', 'Max Verstappen', 'Red Bull Racing Honda RBPT', '66', '1:27:57.940', 4);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) NOT NULL,
  `pos` int(10) NOT NULL,
  `team` varchar(50) NOT NULL,
  `pts` int(50) NOT NULL,
  `year_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `pos`, `team`, `pts`, `year_id`) VALUES
(1, 1, 'Mercedes', 573, 1),
(2, 2, 'Red Bull Racing Honda', 319, 1),
(3, 3, 'McLaren Renault', 202, 1),
(4, 4, 'Racing Point BWT Mercedes', 195, 1),
(5, 5, 'Renault', 181, 1),
(6, 6, 'Ferrari', 131, 1),
(7, 7, 'AlphaTauri Honda', 107, 1),
(8, 8, 'Alfa Romeo Racing Ferrari', 8, 1),
(9, 9, 'Haas Ferrari', 3, 1),
(10, 10, 'Williams Mercedes', 0, 1),
(11, 1, 'Mercedes', 614, 2),
(12, 2, 'Red Bull Racing Honda', 586, 2),
(13, 3, 'Ferrari', 324, 2),
(14, 4, 'McLaren Mercedes', 275, 2),
(15, 5, 'Alpine Renault', 155, 2),
(16, 6, 'AlphaTauri Honda', 142, 2),
(17, 7, 'Aston Martin Mercedes', 77, 2),
(18, 8, 'Williams Mercedes', 23, 2),
(19, 9, 'Alfa Romeo Racing Ferrari', 13, 2),
(20, 10, 'Haas Ferrari', 0, 2),
(21, 1, 'Red Bull Racing RBPT', 759, 3),
(22, 2, 'Ferrari', 554, 3),
(23, 3, 'Mercedes', 515, 3),
(24, 4, 'Alpine Renault', 173, 3),
(25, 5, 'McLaren Mercedes', 159, 3),
(26, 6, 'Alfa Romeo Ferrari', 55, 3),
(27, 7, 'Aston Martin Aramco Mercedes', 55, 3),
(28, 8, 'Haas Ferrari', 37, 3),
(29, 9, 'AlphaTauri RBPT', 35, 3),
(30, 10, 'Williams Mercedes', 8, 3),
(31, 1, 'Red Bull Racing Honda RBPT', 287, 4),
(32, 2, 'Mercedes', 152, 4),
(33, 3, 'Aston Martin Aramco Mercedes', 134, 4),
(34, 4, 'Ferrari', 100, 4),
(35, 5, 'Alpine Renault', 40, 4),
(36, 6, 'McLaren Mercedes', 17, 4),
(37, 7, 'Haas Ferrari', 8, 4),
(38, 8, 'Alfa Romeo Ferrari', 8, 4),
(39, 9, 'AlphaTauri Honda RBPT', 2, 4),
(40, 10, 'Williams Mercedes', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(11) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `year`) VALUES
(1, '2020'),
(2, '2021'),
(3, '2022'),
(4, '2023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `races`
--
ALTER TABLE `races`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `races`
--
ALTER TABLE `races`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
