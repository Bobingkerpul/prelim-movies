-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2024 at 08:40 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `korea_e5`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(10) NOT NULL,
  `title` text DEFAULT NULL,
  `genres` text DEFAULT NULL,
  `popularity` float DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `runtime` text DEFAULT NULL,
  `vote_average` text DEFAULT NULL,
  `poster_path` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `genres`, `popularity`, `release_date`, `runtime`, `vote_average`, `poster_path`) VALUES
(22, 'Pirates of the Caribbean: The Curse of the Black Pearl', 'Adventure-Fantasy-Action', 625.521, '2003-07-09', '143', '7.8', 'z8onk7LV9Mmw6zKz4hT6pzzvmvl.jpg'),
(58, 'Pirates of the Caribbean: Dead Man\'s Chest', 'Adventure-Fantasy-Action', 703.69, '2006-07-06', '151', '7.3', 'uXEqmloGyP7UXAiphJUu2v2pcuE.jpg'),
(285, 'Pirates of the Caribbean: At World\'s End', 'Adventure-Fantasy-Action', 651.954, '2007-05-19', '169', '7.2', '2YMnBRh8F6fDGCCEIPk9Hb0cEyB.jpg'),
(671, 'Harry Potter and the Philosopher\'s Stone', 'Adventure-Fantasy', 329.65, '2001-11-16', '152', '7.9', 'wuMc08IPKEatf9rnMNXvIDxqP4W.jpg'),
(1865, 'Pirates of the Caribbean: On Stranger Tides', 'Adventure-Action-Fantasy', 714.278, '2011-05-14', '137', '6.5', 'keGfSvCmYj7CvdRx36OdVrAEibE.jpg'),
(7980, 'The Lovely Bones', 'Fantasy-Drama', 224.791, '2009-02-19', '136', '7', '2077z7jOT8FynMBFZd7OKcbZljy.jpg'),
(9470, 'Kung Fu Hustle', 'Action-Comedy-Crime-Fantasy', 335.497, '2004-02-10', '99', '7.4', 'exbyTbrvRUDKN2mcNEuVor4VFQW.jpg'),
(14836, 'Coraline', 'Animation-Family-Fantasy', 235.496, '2009-02-05', '100', '7.8', 'gPMh5rsVrDDAYMDbTcz6Up1DQ4z.jpg'),
(18491, 'Neon Genesis Evangelion: The End of Evangelion', 'Drama-Science Fiction-Animation-Action', 330.623, '1997-07-19', '87', '8.4', 'j6G24dqI4WgUtChhWjfnI4lnmiK.jpg'),
(19995, 'Avatar', 'Action-Adventure-Fantasy-Science Fiction', 410.262, '2009-12-10', '162', '7.5', 'jRXYjXNq0Cs2TcJjLkki24MLp7u.jpg'),
(20982, 'Naruto Shippuden the Movie', 'Animation-Action-Fantasy', 253.205, '2007-08-04', '94', '7.2', 'vDkct38sSFSWJIATlfJw0l3QOIR.jpg'),
(50014, 'The Help', 'Drama', 336.105, '2011-08-09', '146', '8.2', '7XLSwxpfpPoJyTdJVot6a42TS2V.jpg'),
(166426, 'Pirates of the Caribbean: Dead Men Tell No Tales', 'Adventure-Action-Fantasy', 444.716, '2017-05-23', '129', '6.6', 'qwoGfcg6YUS55nUweKGujHE54Wy.jpg'),
(259316, 'Fantastic Beasts and Where to Find Them', 'Adventure-Fantasy', 292.036, '2016-11-16', '132', '7.3', 'fLsaFKExQt05yqjoAvKsmOMYvJR.jpg'),
(284052, 'Doctor Strange', 'Action-Adventure-Fantasy-Science Fiction', 607.703, '2016-10-25', '115', '7.4', 'uGBVj3bEbCoZbDjjl9wTxcygko1.jpg'),
(294793, 'All the Old Knives', 'Thriller-Action', 1690.88, '2022-04-08', '102', '6', 'g4tMniKxol1TBJrHlAtiDjjlx4Q.jpg'),
(299536, 'Avengers: Infinity War', 'Adventure-Action-Science Fiction', 417.883, '2018-04-25', '149', '8.3', '7WsyChQLEftFiDOVTGkv3hFpyyt.jpg'),
(303857, 'Dragon Ball Z: Resurrection \'F\'', 'Action-Animation-Science Fiction', 294.624, '2015-04-18', '93', '6.8', 'soq3AxjALdBfdPAm8H7yuMmNL5Y.jpg'),
(335787, 'Uncharted', 'Action-Adventure-Family', 9026.36, '2022-02-10', '116', '7.2', 'tlZpSxYuBRoVJBOpUrPdQe9FmFq.jpg'),
(337404, 'Cruella', 'Comedy-Crime-Adventure', 355.182, '2021-05-26', '134', '8.2', 'wToO8opxkGwKgSfJ1JK8tGvkG6U.jpg'),
(338952, 'Fantastic Beasts: The Crimes of Grindelwald', 'Adventure-Fantasy-Drama', 262.668, '2018-11-14', '134', '6.9', 'fMMrl8fD9gRCFJvsx0SuFwkEOop.jpg'),
(338953, 'Fantastic Beasts: The Secrets of Dumbledore', 'Fantasy-Adventure', 1026.1, '2022-04-06', '142', '6.8', 'jrgifaYeUtTnaH7NF5Drkgjg2MB.jpg'),
(370172, 'No Time to Die', 'Adventure-Action-Thriller', 360.645, '2021-09-29', '163', '7.5', 'iUgygt3fscRoKWCV1d0C7FbM9TP.jpg'),
(379686, 'Space Jam: A New Legacy', 'Family-Animation-Comedy-Science Fiction', 303.435, '2021-07-08', '115', '7.1', '5bFK5d3mVTAvBCXi5NPWH0tYjKl.jpg'),
(385128, 'F9', 'Action-Crime-Thriller-Adventure', 388.797, '2021-05-19', '143', '7.3', 'bOFaAXmWWXC3Rbv4u4uM9ZSzRXP.jpg'),
(399566, 'Godzilla vs. Kong', 'Action-Fantasy-Science Fiction', 332.855, '2021-03-24', '113', '7.8', 'pgqgaUx1cJb5oZQQ5v0tNARCeBp.jpg'),
(406759, 'Moonfall', 'Action-Adventure-Science Fiction', 2291.11, '2022-02-03', '130', '6.5', 'odVv1sqVs0KxBXiA8bhIBlPgalx.jpg'),
(414906, 'The Batman', 'Crime-Mystery-Thriller', 8195.6, '2022-03-01', '176', '7.8', '74xTEgt7R36Fpooo50r9T25onhq.jpg'),
(425909, 'Ghostbusters: Afterlife', 'Fantasy-Comedy-Adventure', 693.433, '2021-11-11', '124', '7.7', 'sg4xJaufDiQl7caFEskBtQXfD4x.jpg'),
(436969, 'The Suicide Squad', 'Action-Adventure-Fantasy', 426.89, '2021-07-28', '132', '7.7', 'kb4s0ML0iVZlG6wAKbbs9NAm6X.jpg'),
(438631, 'Dune', 'Science Fiction-Adventure', 395.304, '2021-09-15', '155', '7.9', 'd5NXSklXo0qyIYkgV94XAgMIckC.jpg'),
(438695, 'Sing 2', 'Animation-Comedy-Family-Music', 966.721, '2021-12-01', '110', '8.1', 'aWeKITRFbbwY8txG5uCj4rMCfSP.jpg'),
(447404, 'Pokémon Detective Pikachu', 'Action-Adventure-Fantasy', 174.222, '2019-05-03', '105', '7', 'wgQ7APnFpf1TuviKHXeEe3KnsTV.jpg'),
(451048, 'Jungle Cruise', 'Action-Adventure-Fantasy', 328.733, '2021-07-28', '127', '7.6', '9dKCd55IuTT5QRs989m9Qlb7d2B.jpg'),
(453395, 'Doctor Strange in the Multiverse of Madness', 'Fantasy-Action-Adventure', 967.115, '2022-05-04', '126', '7.2', '9Gtg2DzBhmYamXBS1hKAhiwbBKS.jpg'),
(454626, 'Sonic the Hedgehog', 'Action-Science Fiction-Comedy-Family', 1058.49, '2020-02-12', '99', '7.4', 'aQvJ5WPzZgYVDrxLX4R6cLJCEaQ.jpg'),
(459151, 'The Boss Baby: Family Business', 'Animation-Comedy-Adventure-Family', 573.518, '2021-07-01', '107', '7.6', 'kv2Qk9MKFFQo4WQPaYta599HkJP.jpg'),
(460458, 'Resident Evil: Welcome to Raccoon City', 'Horror-Action-Science Fiction', 709.34, '2021-11-24', '107', '6.2', '7uRbWOXxpWDMtnsd2PF3clu65jc.jpg'),
(460465, 'Mortal Kombat', 'Action-Fantasy-Adventure', 445.649, '2021-04-07', '110', '7.2', 'nkayOAUBUu4mMvyNf9iHSUiPjF1.jpg'),
(476669, 'The King\'s Man', 'Action-Adventure-Thriller-War-Mystery', 758.115, '2021-12-22', '131', '6.9', 'nj5HmHRZsrYQEYYXyAusFv35erP.jpg'),
(482321, 'Ron\'s Gone Wrong', 'Animation-Science Fiction-Family-Comedy', 397.594, '2021-10-15', '107', '8.1', 'plzgQAXIEHm4Y92ktxU6fedUc0x.jpg'),
(497698, 'Black Widow', 'Action-Adventure-Science Fiction', 312.129, '2021-07-07', '134', '7.5', 'qAZ0pzat24kLdO3o8ejmbLxyOac.jpg'),
(505026, 'Death on the Nile', 'Crime-Drama-Mystery-Thriller', 404.488, '2022-02-09', '127', '6.5', 'kVr5zIAFSPRQ57Y1zE7KzmhzdMQ.jpg'),
(508943, 'Luca', 'Animation-Comedy-Family-Fantasy-Adventure', 397.488, '2021-06-17', '95', '7.9', 'jTswp6KyDYKtvC52GbHagrZbGvD.jpg'),
(508947, 'Turning Red', 'Animation-Family-Comedy-Fantasy', 3513.97, '2022-03-10', '100', '7.4', 'qsdjk9oAKSQMWs0Vt5Pyfh6O4GZ.jpg'),
(512195, 'Red Notice', 'Action-Comedy-Crime-Thriller', 510.399, '2021-11-04', '118', '6.8', 'lAXONuqg41NwUMuzMiFvicDET9Y.jpg'),
(516329, 'Antlers', 'Drama-Horror-Mystery', 340.154, '2021-10-28', '99', '6.4', 'cMch3tiexw3FdOEeZxMWVel61Xg.jpg'),
(522016, 'The 355', 'Action-Thriller', 453.028, '2022-01-05', '122', '6', 'uQt2dJFMnJmAp9zLAWNfGilK0BW.jpg'),
(522402, 'Finch', 'Science Fiction-Drama-Adventure', 333.952, '2021-11-04', '115', '8.1', 'jKuDyqx7jrjiR9cDzB5pxzhJAdv.jpg'),
(524434, 'Eternals', 'Science Fiction-Action', 981.809, '2021-11-03', '156', '7.1', 'bcCBq9N1EMo3daNIjWJ8kYvrQm6.jpg'),
(526896, 'Morbius', 'Action-Science Fiction-Fantasy', 760.44, '2022-03-30', '104', '5.9', '6nhwr1LCozBiIN47b8oBEomOADm.jpg'),
(527774, 'Raya and the Last Dragon', 'Animation-Family-Fantasy-Action-Adventure', 258.845, '2021-03-03', '107', '8', 'lPsD10PP4rgUGiGR4CCXA6iY0QQ.jpg'),
(529203, 'The Croods: A New Age', 'Animation-Family-Adventure-Fantasy-Comedy', 277.739, '2020-11-25', '95', '7.6', 'tbVZ3Sq88dZaCANlUcewQuHQOaE.jpg'),
(550988, 'Free Guy', 'Comedy-Action-Adventure-Science Fiction', 401.558, '2021-08-11', '115', '7.7', 'xmbU4JTUm8rsdtn7Y3Fcm30GpeT.jpg'),
(559957, 'Shanghai Fortress', 'Science Fiction-War', 346.306, '2019-08-09', '107', '5.6', 'cODqUZ3XzDz4lkhxw0OnaUSfz8R.jpg'),
(566525, 'Shang-Chi and the Legend of the Ten Rings', 'Action-Adventure-Fantasy', 692.794, '2021-09-01', '132', '7.7', '1BIoJGKbXjdFDAqUEiA2VHqkK1Z.jpg'),
(568124, 'Encanto', 'Animation-Comedy-Family-Fantasy', 1674.85, '2021-11-24', '102', '7.7', '4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg'),
(580489, 'Venom: Let There Be Carnage', 'Science Fiction-Action-Adventure', 1125.91, '2021-09-30', '97', '7', 'rjkmN1dniUHVYAtwuV3Tji7FsDO.jpg'),
(581726, 'Infinite', 'Science Fiction-Action-Thriller', 320.421, '2021-09-09', '106', '6.7', 'niw2AKHz6XmwiRMLWaoyAOAti0G.jpg'),
(585083, 'Hotel Transylvania: Transformania', 'Animation-Family-Fantasy-Comedy-Adventure', 1138.03, '2022-02-25', '87', '7.1', 'teCy1egGQa0y8ULJvlrDHQKnxBL.jpg'),
(585245, 'Clifford the Big Red Dog', 'Family-Adventure-Comedy-Fantasy', 506.338, '2021-11-10', '97', '7.3', 'oifhfVhUcuDjE61V5bS5dfShQrm.jpg'),
(588228, 'The Tomorrow War', 'Action-Science Fiction-Adventure', 277.737, '2021-07-02', '138', '8', '34nDCQZwaEvsy4CFO5hkGRFDCVU.jpg'),
(589754, 'The Last Warrior: Root of Evil', 'Fantasy-Adventure-Comedy', 396.844, '2021-01-01', '120', '7.2', '4qE7mvUYGY5epfcgeJpM6EfHgq5.jpg'),
(589761, 'Chernobyl: Abyss', 'Drama-History-Adventure', 448.138, '2021-04-15', '136', '6.1', 'AmJLuHjxPdIJO6vmymeWADG6jK5.jpg'),
(597208, 'Nightmare Alley', 'Crime-Drama-Thriller', 610.745, '2021-12-02', '150', '7.1', '680klE0dIreQQOyWKFgNnCAJtws.jpg'),
(604822, 'Vanguard', 'Action-Adventure-Crime', 335.656, '2020-09-30', '107', '6.3', 'mKvw1Ic9enfFlCPBNJGiejRPMUO.jpg'),
(606402, 'Yaksha: Ruthless Operations', 'Action', 1866.5, '2022-04-08', '125', '6.2', '7MDgiFOPUCeG74nQsMKJuzTJrtc.jpg'),
(609972, 'Paranormal Activity: Next of Kin', 'Horror-Mystery-Thriller', 316.464, '2021-10-29', '98', '6.5', 'bXAVveHiLotZbWdg3PKGhAzxYKP.jpg'),
(615904, 'Marry Me', 'Romance-Comedy-Music', 344.035, '2022-02-09', '112', '6.9', 'ko1JVbGj4bT8IhCWqjBQ6ZtF2t.jpg'),
(617653, 'The Last Duel', 'Action-Drama-History', 265.358, '2021-10-13', '153', '7.6', 'zjrJE0fpzPvX8saJXj8VNfcjBoU.jpg'),
(619979, 'Deep Water', 'Drama-Mystery-Thriller', 387.632, '2022-03-18', '116', '5.6', '6yRMyWwjuhKg6IU66uiZIGhaSc8.jpg'),
(624860, 'The Matrix Resurrections', 'Science Fiction-Action-Adventure', 621.343, '2021-12-16', '148', '6.7', '8c4a8kE7PizaGQQnditMmI1xbRp.jpg'),
(629542, 'The Bad Guys', 'Animation-Comedy-Action-Family-Crime', 813.826, '2022-03-17', '100', '7.3', '7qop80YfuO0BwJa1uXk1DXUUEwv.jpg'),
(632727, 'Texas Chainsaw Massacre', 'Horror-Thriller', 549.925, '2022-02-18', '83', '5.1', 'meRIRfADEGVo65xgPO6eZvJ0CRG.jpg'),
(634649, 'Spider-Man: No Way Home', 'Action-Adventure-Science Fiction', 4717, '2021-12-15', '148', '8.1', '1g0dhYtq4irTY1GPXvft6k4YLjm.jpg'),
(635302, 'Demon Slayer -Kimetsu no Yaiba- The Movie: Mugen Train', 'Animation-Action-Adventure-Fantasy', 849.467, '2020-10-16', '117', '8.4', 'h8Rb9gBr48ODIwYUttZNYeMWeUU.jpg'),
(637649, 'Wrath of Man', 'Action-Crime-Thriller', 270.623, '2021-04-22', '119', '7.7', 'M7SUK85sKjaStg4TKhlAVyGlz3.jpg'),
(639933, 'The Northman', 'Action-Adventure-Fantasy-Thriller', 547.196, '2022-04-07', '137', '7.7', 'zhLKlUaF1SEpO58ppHIAyENkwgw.jpg'),
(646385, 'Scream', 'Horror-Mystery-Thriller', 652.899, '2022-01-12', '114', '6.8', '1m3W6cpgwuIyjtg5nSnPx7yFkXW.jpg'),
(656663, 'Jackass Forever', 'Comedy-Documentary-Action', 640.172, '2022-02-01', '96', '6.9', 'ugIdyvtAzHWOguD91UjHKoAvfum.jpg'),
(661791, 'The Grandmother', 'Horror', 1248.64, '2022-01-28', '100', '6.1', 'eIUixNvox4U4foL5Z9KbN9HXYSM.jpg'),
(664236, 'Extinct', 'Animation-Comedy-Family-Adventure', 311.741, '2021-02-11', '85', '6.5', 'tRnPT88iD5zgeUPjHqaZznrxk5m.jpg'),
(675353, 'Sonic the Hedgehog 2', 'Action-Science Fiction-Comedy-Family', 4056.25, '2022-03-30', '122', '7.6', '6DrHO1jr3qVrViUO6s6kFiAGM7.jpg'),
(675445, 'PAW Patrol: The Movie', 'Animation-Family-Adventure-Comedy', 492.698, '2021-08-09', '86', '7.5', 'ic0intvXZSfBlYPIvWXpU1ivUCO.jpg'),
(676705, 'Pil\'s Adventures', 'Adventure-Animation-Comedy-Family-Fantasy', 1270.48, '2021-08-11', '89', '6.7', 'abPQVYyNfVuGoFUfGVhlNecu0QG.jpg'),
(682344, 'All Hail', 'Comedy-Drama', 332.183, '2022-03-30', '118', '6.2', '9zVyqx5WKb0iCkk46wDUxuwAiMR.jpg'),
(685274, 'Mobile Suit Gundam Hathaway', 'Animation-Action-Drama-Science Fiction', 288.448, '2021-06-11', '96', '7.6', '6gw8onh4FKsruBA7Oouv01EFxzn.jpg'),
(691683, 'Cheaper by the Dozen', 'Family-Comedy', 308.448, '2022-03-18', '107', '6.3', 'qNRsouZh5zmhaE3n4QpLDXzy1gQ.jpg'),
(696806, 'The Adam Project', 'Action-Adventure-Comedy-Science Fiction', 1395.06, '2022-03-11', '106', '7', 'wFjboE0aFZNbVOF05fzrka9Fqyx.jpg'),
(703771, 'Deathstroke: Knights & Dragons - The Movie', 'Animation-Action-Adventure-Science Fiction', 369.937, '2020-08-04', '87', '6.9', 'vFIHbiy55smzi50RmF8LQjmpGcx.jpg'),
(726684, 'Miraculous World: Shanghai ? The Legend of Ladydragon', 'Animation-Comedy-Family-Adventure', 268.898, '2021-05-15', '52', '7.9', 'qQ0VKsGRQ2ofAmswGNzZnvC1xPE.jpg'),
(739413, 'Mother/Android', 'Science Fiction-Thriller', 329.853, '2021-12-17', '111', '5.8', 'rO3nV9d1wzHEWsC7xgwxotjZQpM.jpg'),
(739993, 'Metal Lords', 'Comedy-Drama-Music', 505.904, '2022-04-08', '97', '6.8', 'r97txZRmBb75SGsIAWqmplWJnO3.jpg'),
(752623, 'The Lost City', 'Action-Adventure-Comedy-Romance', 445.287, '2022-03-24', '112', '7', 'neMZH82Stu91d3iqvLdNQfqPPyl.jpg'),
(753232, 'The Commando', 'Action-Crime-Thriller', 654.696, '2022-01-07', '93', '6.6', 'mn1GYIQ1tvFuuu0YBNZBvrHyrkO.jpg'),
(755812, 'Miraculous World: New York, United HeroeZ', 'Animation-Family-Comedy-Adventure-TV Movie', 257.721, '2020-11-21', '55', '8.3', '9YbyvcrHmY2SVbdfXpb8mC4Fy0g.jpg'),
(756403, 'Riverdance: The Animated Adventure', 'Animation-Fantasy-Music-Adventure-Comedy-Family', 285.788, '2021-05-28', '86', '5.3', 'i6TRDlVuuEXMyLSlIkDd8YhBN0r.jpg'),
(760868, 'Black Crab', 'Action-Thriller', 1116.7, '2022-03-18', '109', '6.3', 'mcIYHZYwUbvhvUt8Lb5nENJ7AlX.jpg'),
(760926, 'Gold', 'Thriller-Action', 1034.68, '2022-01-13', '97', '6.4', 'ejXBuNLvK4kZ7YcqeKqUWnCxdJq.jpg'),
(762433, 'Zeros and Ones', 'Thriller-War', 288.46, '2021-11-18', '85', '5.2', 'a6balsDWCFMHPaPT6rFoBpNjR6z.jpg'),
(763285, 'Ambulance', 'Action-Thriller-Crime', 1619.6, '2022-03-16', '136', '6.9', 'zT5ynZ0UR6HFfWQSRf2uKtqCyWD.jpg'),
(763788, 'Dangerous', 'Action-Thriller', 265.089, '2021-11-05', '99', '6.3', 'vTtkQGC7qKlSRQJZYtAWAmYdH0A.jpg'),
(765119, 'The Bubble', 'Comedy', 414.322, '2022-03-25', '126', '4.9', 'edYk5TSowZIDv138bCpF5ls3XI5.jpg'),
(766907, 'American Siege', 'Action-Thriller-Crime-Drama', 492.569, '2022-01-07', '90', '5.9', 'daeVrgyj0ue8qb3AHyU3UeCwoZz.jpg'),
(767825, 'Moonshot', 'Comedy-Romance-Science Fiction', 280.117, '2022-05-05', '104', '9', 'thqgzBPEDYQX0taszVus5nYMtTZ.jpg'),
(768744, 'My Hero Academia: World Heroes\' Mission', 'Animation-Action-Fantasy-Adventure', 986.116, '2021-08-06', '105', '7.3', '4NUzcKtYPKkfTwKsLjwNt8nRIXV.jpg'),
(770254, 'Back to the Outback', 'Animation-Family-Adventure-Comedy', 308.277, '2021-12-03', '92', '7.6', 'zNXNRLH5wJprUG6B1olaBTNZOjy.jpg'),
(774741, 'Diary of a Wimpy Kid', 'Animation-Comedy-Family', 339.765, '2021-12-03', '58', '6.4', 'obg6lWuNaZkoSlwrVG4VVk4SmT.jpg'),
(774825, 'The Ice Age Adventures of Buck Wild', 'Animation-Comedy-Adventure-Family', 1039.05, '2022-01-28', '82', '6.9', 'zzXFM4FKDG7l1ufrAkwQYv2xvnh.jpg'),
(783461, 'Looop Lapeta', 'Action-Comedy-Crime', 532.53, '2022-02-04', '131', '6.2', 'onGdT8sYi89drvSJyEJnft97rOq.jpg'),
(785521, 'Battle: Freestyle', 'Romance-Drama', 333.723, '2022-04-01', '88', '5.1', '6D6QumiHEhnpZG12Ibjy2BxA6n4.jpg'),
(790525, 'Forever Out of My League', 'Romance-Comedy', 343.726, '2022-01-31', '104', '5.6', '1zhsT17wTXAw5IxK9rSLtftu7Aw.jpg'),
(791373, 'Zack Snyder\'s Justice League', 'Action-Adventure-Fantasy-Science Fiction', 315.339, '2021-03-18', '242', '8.3', 'tnAuB8q5vv7Ax9UAEje5Xi4BXik.jpg'),
(799876, 'The Outfit', 'Drama-Thriller-Crime', 2752.08, '2022-02-25', '105', '7', 'ieOVuwnoFC49m7bekmdQ4AynciS.jpg'),
(800407, 'Dancing on Glass', 'Drama', 434.346, '2022-04-08', '137', '5.9', 'ppF495JNP6poCCEAm4xM1nJEZzD.jpg'),
(800510, 'Kimi', 'Thriller', 683.045, '2022-02-10', '89', '6.2', 'okNgwtxIWzGsNlR3GsOS0i0Qgbn.jpg'),
(801071, 'The Jack in the Box: Awakening', 'Horror', 760.256, '2022-02-24', '89', '6.1', '3Ib8vlWTrAKRrTWUrTrZPOMW4jp.jpg'),
(803114, 'The Requin', 'Thriller', 832.596, '2022-01-28', '89', '4.8', 'i0z8g2VRZP3dhVvvSMilbOZMKqR.jpg'),
(810693, 'Jujutsu Kaisen 0', 'Animation-Action-Adventure-Mystery', 359.272, '2021-12-24', '105', '7.6', '3pTwMUEavTzVOh6yLN0aEwR7uSy.jpg'),
(811592, 'One Shot', 'Action', 379.595, '2021-11-05', '97', '6.8', '3OXiTjU30gWtqxmx4BU9RVp2OTv.jpg'),
(818647, 'Through My Window', 'Romance-Drama', 444.427, '2022-02-04', '112', '7.6', '6gg7fvKc1ZxP9yCczweSxIGYp4S.jpg'),
(818750, 'The In Between', 'Romance-Science Fiction-Drama', 844.068, '2022-02-11', '116', '7', '7RcyjraM1cB1Uxy2W9ZWrab4KCw.jpg'),
(823625, 'Blacklight', 'Action-Thriller', 1635.72, '2022-02-10', '104', '6.2', 'bv9dy8mnwftdY2j6gG39gCfSFpV.jpg'),
(826953, 'Better Nate Than Ever', 'Music-Family-Comedy', 290.7, '2022-03-15', '92', '6.8', '55gkFbie2Nbudo21rDpi6zG0XvC.jpg'),
(829358, 'Queen of Spades', 'Horror', 420.91, '2021-06-11', '91', '6.4', '4IKBzVBPLXu9p5cfEfdJjHdlafV.jpg'),
(829920, 'Fate/Grand Order Final Singularity ? Grand Temple of Time: Solomon', 'Animation-Action-Adventure-Fantasy', 415.616, '2021-07-30', '94', '6.3', '1kRgPGHmqSpKdx1dzCjzG6QoYHb.jpg'),
(833425, 'No Exit', 'Horror-Thriller', 1206.75, '2022-02-25', '96', '6.7', '5cnLoWq9o5tuLe1Zq4BTX4LwZ2B.jpg'),
(836225, 'The Exorcism of God', 'Horror', 273.804, '2022-02-10', '98', '6.7', 'hangTmbxpSV4gpHG7MgSlCWSSFa.jpg'),
(840882, 'The Weekend Away', 'Thriller-Mystery', 353.906, '2022-03-03', '91', '5.9', '6MS0QEl7UK2gdFFbHfNwuYlsq4H.jpg'),
(842052, 'Echoes of a Crime', 'Thriller-Horror', 417.574, '2022-01-27', '84', '7.2', '6b0cvhxUtzgOZitexarQTLTHDCU.jpg'),
(843241, 'The Seven Deadly Sins: Cursed by Light', 'Animation-Fantasy', 575.689, '2021-07-02', '79', '7.9', 'k0ThmZQl5nHe4JefC2bXjqtgYp0.jpg'),
(860623, 'Last Man Down', 'Action-Thriller', 762.332, '2021-10-19', '87', '6.3', '4B7liCxNCZIZGONmAMkCnxVlZQV.jpg'),
(870671, 'The Hunting', 'Horror', 400.826, '2022-01-21', '91', '4.9', 'kvhrltQIRp1u84ao9uj52YPaWNY.jpg'),
(871799, 'Pursuit', 'Action-Crime-Thriller', 482.719, '2022-02-18', '92', '5.5', 'oUU6blOmIu155vfIgzML3ZSsDrB.jpg'),
(877183, 'The Simpsons in Plusaversary', 'Animation-Comedy-Fantasy', 473.587, '2021-11-12', '4', '6.7', 'p5jzbffrXuBTjsiwrQ3aOMTrvCj.jpg'),
(886896, 'Save The Trees', 'Animation', 286.312, '2021-12-01', '80', '4.4', 'hdzUP6mV5VlSWVffA4Y18k4LK62.jpg'),
(890656, 'Fistful of Vengeance', 'Action-Crime-Fantasy', 583.573, '2022-02-17', '94', '5.4', '3cccEF9QZgV9bLWyupJO41HSrOV.jpg'),
(892153, 'Tom and Jerry: Cowboy Up!', 'Animation-Comedy-Family-Western', 502.896, '2022-01-24', '75', '7', 'muIaHotSaSUQr0KZCIJOYQEe7y2.jpg'),
(893370, 'Virus:32', 'Horror', 1954.43, '2022-04-21', '90', '7', 'wZiF79hbhLK1U2Pj9bF67NAKXQR.jpg'),
(910596, 'Run Gun', 'Action-Thriller', 429.881, '2022-01-11', '96', '5.1', '4qlq5gPzWDZRfXJC9qgv9SfTThr.jpg'),
(919689, 'War of the Worlds: Annihilation', 'Science Fiction-Action', 1556.31, '2021-12-22', '113', '5.6', '9eiUNsUAw2iwVyMeXNNiNQQad4E.jpg'),
(926899, 'The House', 'Animation-Drama-Comedy-Horror', 502.83, '2022-01-14', '97', '7', 'iZjMFSKCrleKolC1gYcz5Rs8bk1.jpg'),
(928381, 'Restless', 'Action-Thriller-Crime', 917.189, '2022-02-25', '95', '5.9', '9MP21x0OPv0R72obd63tMHssmGt.jpg'),
(928769, 'AI Love You', 'Comedy-Romance-Science Fiction', 252.599, '2022-02-15', '95', '5.5', 'sBiJOvHCSWORnFpc4yItflIkdTi.jpg'),
(928999, 'Desperate Riders', 'Western-Action', 707.205, '2022-02-25', '90', '6.1', '7pYYGm1dWZGkbJuhcuaHD6nE6k7.jpg'),
(938596, 'Bull Shark', 'Horror', 1001.8, '2022-02-05', '80', '5.3', 'wGE4ImqYjJZQi3xFu4I2OLm8m0w.jpg'),
(939243, 'Sonic the Hedgehog 3', 'Action-Adventure-Fantasy', 914.031, '0000-00-00', '0', '0', 'aNSBaYTgPz8QEADi3xiD52X4uVF.jpg'),
(943158, 'Un Rabon Con Corazon', 'Comedy', 229.781, '2022-01-27', '93', '6.6', 'em2LVkDDRcNWLexiQDs5JKGfT0x.jpg'),
(944664, 'Without Saying Goodbye', 'Comedy-Romance', 285.317, '2022-03-18', '96', '6.8', '11SOeFmUEHahuyMOxxT1wdJ3iJs.jpg'),
(949218, 'S.O.S. Mamis: La pelicula', 'Comedy', 308.662, '2022-03-18', '105', '5.9', 'dubFxWUiXW4QzOygVsChYYIuzfx.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
