-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Nov 17, 2021 at 10:06 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `playground`
--

-- --------------------------------------------------------

--
-- Table structure for table `ridings`
--

CREATE TABLE `ridings` (
  `id` int(11) NOT NULL,
  `ridingNumber` int(11) DEFAULT NULL,
  `englishName` varchar(255) DEFAULT NULL,
  `totalVoters` int(11) DEFAULT NULL,
  `totalPolls` int(11) DEFAULT NULL,
  `previousElectedPartyCode` varchar(10) DEFAULT NULL,
  `resultStatus` text,
  `isCandidateElected` int(1) DEFAULT '0',
  `pollsReported` int(11) DEFAULT NULL,
  `totalVotesReported` int(11) DEFAULT NULL,
  `lastResultTime` datetime DEFAULT NULL,
  `candidateVotesLead` int(11) DEFAULT NULL,
  `leadingPartyId` int(11) DEFAULT NULL,
  `leadingPartyCode` varchar(10) DEFAULT NULL,
  `leadingPartyVotes` int(11) DEFAULT NULL,
  `leadingPartyVotesPercentage` varchar(6) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ridings`
--

INSERT INTO `ridings` (`id`, `ridingNumber`, `englishName`, `totalVoters`, `totalPolls`, `previousElectedPartyCode`, `resultStatus`, `isCandidateElected`, `pollsReported`, `totalVotesReported`, `lastResultTime`, `candidateVotesLead`, `leadingPartyId`, `leadingPartyCode`, `leadingPartyVotes`, `leadingPartyVotesPercentage`, `created_at`, `updated_at`) VALUES
(22150, 1, 'Baie Verte-Green Bay', 9468, 5, 'LIB', 'FinalResult,Elected,ReElected', 1, 5, 4145, '2021-03-28 14:30:26', 0, 3214, 'LIB', 2158, '0.52', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22151, 2, 'Bonavista', 8787, 4, 'PC', 'FinalResult,Elected,ReElected', 1, 4, 3693, '2021-03-28 14:30:26', 0, 3213, 'PC', 2117, '0.57', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22152, 3, 'Burgeo-La Poile', 6828, 3, 'LIB', 'FinalResult,Elected,ReElected', 1, 3, 2287, '2021-03-28 14:30:26', 0, 3214, 'LIB', 1992, '0.87', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22153, 4, 'Burin-Grand Bank', 8405, 5, 'LIB', 'FinalResult,Elected', 1, 5, 4474, '2021-03-28 14:30:26', 0, 3214, 'LIB', 2666, '0.6', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22154, 5, 'Cape St. Francis', 8862, 5, 'PC', 'FinalResult,Elected', 1, 5, 5561, '2021-03-28 14:30:26', 0, 3213, 'PC', 3476, '0.63', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22155, 6, 'Carbonear-Trinity-Bay de Verde', 10756, 7, 'LIB', 'FinalResult,Elected,ReElected', 1, 7, 5763, '2021-03-28 14:30:26', 0, 3214, 'LIB', 3892, '0.68', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22156, 7, 'Cartwright-L\'Anse au Clair', 2907, 4, 'LIB', 'FinalResult,Elected,ReElected', 1, 4, 1022, '2021-03-28 14:30:26', 0, 3214, 'LIB', 973, '0.95', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22157, 8, 'Conception Bay East-Bell Island', 10856, 8, 'PC', 'FinalResult,Elected,ReElected', 1, 8, 5722, '2021-03-28 14:30:26', 0, 3213, 'PC', 3215, '0.56', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22158, 9, 'Conception Bay South', 8959, 6, 'PC', 'FinalResult,Elected,ReElected', 1, 6, 5365, '2021-03-28 14:30:27', 0, 3213, 'PC', 3063, '0.57', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22159, 10, 'Corner Brook', 10148, 4, 'LIB', 'FinalResult,Elected,ReElected', 1, 4, 3897, '2021-03-28 14:30:27', 0, 3214, 'LIB', 2593, '0.67', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22160, 11, 'Exploits', 9021, 4, 'PC', 'FinalResult,Elected,ReElected', 1, 4, 4819, '2021-03-28 14:30:27', 0, 3213, 'PC', 2641, '0.55', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22161, 12, 'Ferryland', 9782, 5, 'PC', 'FinalResult,Elected,ReElected', 1, 5, 6109, '2021-03-28 14:30:27', 0, 3213, 'PC', 3197, '0.52', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22162, 13, 'Fogo Island-Cape Freels', 9996, 5, 'LIB', 'FinalResult,Elected,ReElected', 1, 5, 4113, '2021-03-28 14:30:27', 0, 3214, 'LIB', 2511, '0.61', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22163, 14, 'Fortune Bay-Cape La Hune', 5342, 3, 'LIB', 'FinalResult,Elected,ReElected', 1, 3, 2738, '2021-03-28 14:30:27', 0, 3214, 'LIB', 1868, '0.68', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22164, 15, 'Gander', 9303, 5, 'LIB', 'FinalResult,Elected,ReElected', 1, 5, 4734, '2021-03-28 14:30:27', 0, 3214, 'LIB', 3358, '0.71', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22165, 16, 'Grand Falls-Windsor-Buchans', 9211, 5, 'PC', 'FinalResult,Elected,ReElected', 1, 5, 4617, '2021-03-28 14:30:27', 0, 3213, 'PC', 2735, '0.59', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22166, 17, 'Harbour Grace-Port de Grave', 10173, 7, 'LIB', 'FinalResult,Elected,ReElected', 1, 7, 4788, '2021-03-28 14:30:27', 0, 3214, 'LIB', 3404, '0.71', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22167, 18, 'Harbour Main', 10026, 4, 'PC', 'FinalResult,Elected,ReElected', 1, 4, 5838, '2021-03-28 14:30:27', 0, 3213, 'PC', 3180, '0.54', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22168, 19, 'Humber-Bay of Islands', 10045, 3, 'IND', 'FinalResult,Elected,ReElected', 1, 3, 4173, '2021-03-28 14:30:28', 0, 3218, 'IND', 2988, '0.72', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22169, 20, 'Humber-Gros Morne', 9041, 6, 'LIB', 'FinalResult,Elected,ReElected', 1, 6, 4437, '2021-03-28 14:30:28', 0, 3214, 'LIB', 2838, '0.64', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22170, 21, 'Labrador West', 6019, 3, 'NDP', 'FinalResult,Elected,ReElected', 1, 3, 2716, '2021-03-28 14:30:28', 0, 3215, 'NDP', 1359, '0.5', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22171, 22, 'Lake Melville', 6000, 6, 'LIB', 'FinalResult,Elected,ElectedWithGain', 1, 6, 2292, '2021-03-28 14:30:28', 0, 3218, 'IND', 1143, '0.5', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22172, 23, 'Lewisporte-Twillingate', 9831, 4, 'LIB', 'FinalResult,Elected,ReElected', 1, 4, 4153, '2021-03-28 14:30:28', 0, 3214, 'LIB', 2593, '0.62', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22173, 24, 'Mount Pearl North', 9815, 5, 'PC', 'FinalResult,Elected,ElectedWithGain', 1, 5, 5200, '2021-03-28 14:30:28', 0, 3214, 'LIB', 2428, '0.47', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22174, 25, 'Mount Pearl-Southlands', 10277, 5, 'IND', 'FinalResult,Elected,ReElected', 1, 5, 5780, '2021-03-28 14:30:28', 0, 3218, 'IND', 3445, '0.6', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22175, 26, 'Mount Scio', 8755, 6, 'LIB', 'FinalResult,Elected,ReElected', 1, 6, 4315, '2021-03-28 14:30:28', 0, 3214, 'LIB', 2011, '0.47', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22176, 27, 'Placentia-St. Mary\'s', 8938, 5, 'LIB', 'FinalResult,Elected,ReElected', 1, 5, 5019, '2021-03-28 14:30:28', 0, 3214, 'LIB', 2552, '0.51', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22177, 28, 'Placentia West-Bellevue', 9261, 5, 'PC', 'FinalResult,Elected,ReElected', 1, 5, 5458, '2021-03-28 14:30:29', 0, 3213, 'PC', 2965, '0.54', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22178, 29, 'St. Barbe-L\'Anse aux Meadows', 8804, 5, 'LIB', 'FinalResult,Elected', 1, 5, 4642, '2021-03-28 14:30:29', 0, 3214, 'LIB', 2375, '0.51', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22179, 30, 'St. George\'s-Humber', 8980, 6, 'LIB', 'FinalResult,Elected,ReElected', 1, 6, 4134, '2021-03-28 14:30:29', 0, 3214, 'LIB', 2420, '0.59', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22180, 31, 'St. John\'s Centre', 9771, 5, 'NDP', 'FinalResult,Elected,ReElected', 1, 5, 3801, '2021-03-28 14:30:29', 0, 3215, 'NDP', 1991, '0.52', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22181, 32, 'St. John\'s East-Quidi Vidi', 10755, 5, 'NDP', 'FinalResult,Elected,ElectedWithGain,TightRace', 1, 5, 5697, '2021-03-28 14:30:29', 0, 3214, 'LIB', 2447, '0.43', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22182, 33, 'St. John\'s West', 9170, 6, 'LIB', 'FinalResult,Elected,ReElected', 1, 6, 4633, '2021-03-28 14:30:29', 0, 3214, 'LIB', 2679, '0.58', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22183, 34, 'Stephenville-Port au Port', 9156, 5, 'PC', 'FinalResult,Elected,ReElected', 1, 5, 4158, '2021-03-28 14:30:29', 0, 3213, 'PC', 2481, '0.6', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22184, 35, 'Terra Nova', 9342, 4, 'PC', 'FinalResult,Elected,ReElected', 1, 4, 5333, '2021-03-28 14:30:29', 0, 3213, 'PC', 2837, '0.53', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22185, 36, 'Topsail-Paradise', 10428, 6, 'PC', 'FinalResult,Elected,ReElected', 1, 6, 6001, '2021-03-28 14:30:29', 0, 3213, 'PC', 3036, '0.51', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22186, 37, 'Torngat Mountains', 2019, 4, 'PC', 'FinalResult,Elected,ReElected', 1, 4, 473, '2021-03-28 14:30:29', 0, 3213, 'PC', 420, '0.89', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22187, 38, 'Virginia Waters-Pleasantville', 9863, 6, 'LIB', 'FinalResult,Elected,ReElected', 1, 6, 5840, '2021-03-28 14:30:29', 0, 3214, 'LIB', 3481, '0.6', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22188, 39, 'Waterford Valley', 9915, 4, 'LIB', 'FinalResult,Elected,ReElected', 1, 4, 5378, '2021-03-28 14:30:30', 0, 3214, 'LIB', 3592, '0.67', '2021-11-17 17:04:54', '2021-11-17 17:04:54'),
(22189, 40, 'Windsor Lake', 9163, 6, 'PC', 'FinalResult,Elected,ElectedWithGain', 1, 6, 5314, '2021-03-28 14:30:30', 0, 3214, 'LIB', 2688, '0.51', '2021-11-17 17:04:54', '2021-11-17 17:04:54');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
