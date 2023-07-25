-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2023 at 06:03 AM
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
-- Database: `signaturejsc`
--

-- --------------------------------------------------------

--
-- Table structure for table `configholesgolfcourse`
--

CREATE TABLE `configholesgolfcourse` (
  `config_hole_golf_course_id` int(11) NOT NULL,
  `golf_course_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `total_hole` int(11) DEFAULT NULL,
  `total_par` int(11) DEFAULT NULL,
  `slope` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configholesgolfcourse`
--

INSERT INTO `configholesgolfcourse` (`config_hole_golf_course_id`, `golf_course_id`, `name`, `total_hole`, `total_par`, `slope`, `createdAt`, `updatedAt`) VALUES
(5, 35, 'Final test OK Vip pro', 18, 70, 90, '2023-07-19 07:22:56', '2023-07-21 10:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `total_prize` float DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `total_round` int(11) NOT NULL,
  `event_date` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `main_photo` varchar(255) DEFAULT NULL,
  `public` tinyint(1) DEFAULT 0,
  `color` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `config_hole_golf_course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `old_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `name`, `type`, `total_prize`, `description`, `total_round`, `event_date`, `start_date`, `end_date`, `logo`, `address`, `main_photo`, `public`, `color`, `createdAt`, `updatedAt`, `config_hole_golf_course_id`, `user_id`, `old_user_id`) VALUES
(67, 'Nhatdn', 'Stroke play', NULL, NULL, 2, NULL, '2023-07-20', '2023-07-20', '1689817524847-126424007.png', NULL, '1689817533860-549052283.jpeg', 0, 'green', '2022-07-19 08:06:50', '2023-07-21 08:49:14', 5, 2, 3),
(68, 'Space inside AIbay Stadium', 'Stroke play', NULL, NULL, 2, NULL, '2023-07-25', '2023-07-25', NULL, NULL, NULL, 0, '#262D48', '2023-07-24 07:01:13', '2023-07-24 07:01:13', 5, 2, NULL),
(69, 'Final test', 'Stroke play', NULL, NULL, 1, NULL, '2023-07-25', '2023-07-25', NULL, NULL, NULL, 0, '#262D48', '2023-07-24 07:47:45', '2023-07-24 07:47:45', 5, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currentscores`
--

CREATE TABLE `currentscores` (
  `id` int(11) NOT NULL,
  `num_putt` int(11) DEFAULT NULL,
  `hole_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `score_type` varchar(255) DEFAULT NULL,
  `round_num` int(11) DEFAULT NULL,
  `match_num` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `player_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currentscores`
--

INSERT INTO `currentscores` (`id`, `num_putt`, `hole_id`, `course_id`, `score_type`, `round_num`, `match_num`, `createdAt`, `updatedAt`, `player_id`) VALUES
(57, 3, 731, 67, 'Birdie', 1, NULL, '2023-07-19 09:33:30', '2023-07-19 09:33:30', 1647),
(58, 8, 736, 67, 'D.Bogey+', 1, NULL, '2023-07-19 09:33:51', '2023-07-19 10:48:14', 1660),
(59, 1, 735, 67, 'Eagle', 1, NULL, '2023-07-21 08:08:25', '2023-07-21 08:10:09', 1738);

-- --------------------------------------------------------

--
-- Table structure for table `golfcourses`
--

CREATE TABLE `golfcourses` (
  `golf_course_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `golfcourses`
--

INSERT INTO `golfcourses` (`golf_course_id`, `name`, `address`, `createdAt`, `updatedAt`) VALUES
(35, 'Sân này chưa có tên', '16/19 Nguyễn Văn Nghi, Phường 5, Gò Vấp, Tp HCM', '2023-07-18 03:43:57', '2023-07-21 10:03:21'),
(37, 'Nhatdn', '16/19 Nguyễn Văn Nghi, Phường 5, Gò Vấp, Tp HCM', '2023-07-18 08:17:23', '2023-07-18 08:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `holes`
--

CREATE TABLE `holes` (
  `hole_id` int(11) NOT NULL,
  `hole_num` int(11) NOT NULL,
  `par` int(11) NOT NULL,
  `yards` float NOT NULL,
  `main_photo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `config_hole_golf_course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `holes`
--

INSERT INTO `holes` (`hole_id`, `hole_num`, `par`, `yards`, `main_photo`, `createdAt`, `updatedAt`, `config_hole_golf_course_id`) VALUES
(731, 1, 4, 337, NULL, '2023-07-19 09:14:32', '2023-07-19 09:14:32', 5),
(732, 2, 3, 183, NULL, '2023-07-19 09:14:32', '2023-07-19 09:14:32', 5),
(733, 3, 4, 376, NULL, '2023-07-19 09:14:32', '2023-07-19 09:14:32', 5),
(734, 4, 3, 147, NULL, '2023-07-19 09:14:32', '2023-07-19 09:14:32', 5),
(735, 5, 5, 615, NULL, '2023-07-19 09:14:32', '2023-07-19 09:14:32', 5),
(736, 6, 5, 542, NULL, '2023-07-19 09:14:32', '2023-07-19 09:14:32', 5),
(737, 7, 3, 171, NULL, '2023-07-19 09:14:32', '2023-07-19 09:14:32', 5),
(738, 8, 4, 412, NULL, '2023-07-19 09:14:32', '2023-07-19 09:14:32', 5),
(739, 9, 4, 424, NULL, '2023-07-19 09:14:32', '2023-07-19 09:14:32', 5),
(740, 10, 5, 579, NULL, '2023-07-19 09:14:32', '2023-07-19 09:14:32', 5),
(741, 11, 3, 135, NULL, '2023-07-19 09:14:32', '2023-07-19 09:14:32', 5),
(742, 12, 4, 382, NULL, '2023-07-19 09:14:32', '2023-07-19 09:14:32', 5),
(743, 13, 4, 386, NULL, '2023-07-19 09:14:32', '2023-07-19 09:14:32', 5),
(744, 14, 4, 340, NULL, '2023-07-19 09:14:32', '2023-07-19 09:14:32', 5),
(745, 15, 3, 207, NULL, '2023-07-19 09:14:32', '2023-07-19 09:14:32', 5),
(746, 16, 5, 621, NULL, '2023-07-19 09:14:32', '2023-07-19 09:14:32', 5),
(747, 17, 4, 419, NULL, '2023-07-19 09:14:32', '2023-07-19 09:14:32', 5),
(748, 18, 3, 430, NULL, '2023-07-19 09:14:32', '2023-07-19 09:14:32', 5);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matchplayclubs`
--

CREATE TABLE `matchplayclubs` (
  `matchplay_club_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `last_win` varchar(255) DEFAULT '0',
  `win_by_playoff` varchar(255) DEFAULT '0',
  `total_player` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT 'host',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matchplayscores`
--

CREATE TABLE `matchplayscores` (
  `id` int(11) NOT NULL,
  `matchplay_group_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `num_putt` int(11) DEFAULT NULL,
  `hole_num` int(11) DEFAULT NULL,
  `round_num` int(11) DEFAULT NULL,
  `match_num` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matchplayteamplayers`
--

CREATE TABLE `matchplayteamplayers` (
  `id` int(11) NOT NULL,
  `matchplay_team_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matchplayteams`
--

CREATE TABLE `matchplayteams` (
  `matchplay_team_id` int(11) NOT NULL,
  `matchplay_club_id` int(11) DEFAULT NULL,
  `match_num` int(11) DEFAULT NULL,
  `round_num` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `total_player` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matchplayversuses`
--

CREATE TABLE `matchplayversuses` (
  `matchplay_versus_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `round_num` int(11) DEFAULT NULL,
  `match_num` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `host` int(11) DEFAULT NULL,
  `guest` int(11) DEFAULT NULL,
  `tee` int(11) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `finished` tinyint(1) DEFAULT 0,
  `winner` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matchs`
--

CREATE TABLE `matchs` (
  `match_id` int(11) NOT NULL,
  `match_num` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `round_num` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penalties`
--

CREATE TABLE `penalties` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `round_id` int(11) DEFAULT NULL,
  `hole_id` int(11) DEFAULT NULL,
  `num_putt` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playerfinishround`
--

CREATE TABLE `playerfinishround` (
  `player_id` int(11) NOT NULL,
  `round_num` int(11) NOT NULL,
  `finished` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playerfinishround`
--

INSERT INTO `playerfinishround` (`player_id`, `round_num`, `finished`, `createdAt`, `updatedAt`) VALUES
(486, 1, 1, '2023-05-31 16:46:39', '2023-05-31 16:46:39'),
(486, 2, 1, '2023-05-31 16:46:38', '2023-05-31 16:46:38'),
(594, 1, 1, '2023-04-27 07:17:01', '2023-04-27 07:17:01'),
(595, 1, 1, '2023-04-27 07:59:57', '2023-04-27 07:59:57'),
(596, 1, 1, '2023-04-27 07:09:12', '2023-04-27 07:09:12'),
(597, 1, 1, '2023-04-27 07:20:14', '2023-04-27 07:20:14'),
(598, 1, 1, '2023-04-27 07:59:48', '2023-04-27 07:59:48'),
(599, 1, 1, '2023-04-27 07:59:41', '2023-04-27 07:59:41'),
(600, 1, 1, '2023-04-27 07:17:52', '2023-04-27 07:17:52'),
(601, 1, 1, '2023-04-27 07:59:50', '2023-04-27 07:59:50'),
(602, 1, 1, '2023-04-27 07:59:43', '2023-04-27 07:59:43'),
(603, 1, 1, '2023-04-27 07:19:14', '2023-04-27 07:19:14'),
(604, 1, 1, '2023-04-27 07:59:34', '2023-04-27 07:59:34'),
(605, 1, 1, '2023-04-27 07:59:38', '2023-04-27 07:59:38'),
(606, 1, 1, '2023-04-27 07:59:53', '2023-04-27 07:59:53'),
(607, 1, 1, '2023-04-27 07:59:45', '2023-04-27 07:59:45'),
(608, 1, 1, '2023-04-27 08:00:24', '2023-04-27 08:00:24'),
(609, 1, 1, '2023-04-27 08:01:35', '2023-04-27 08:01:35'),
(610, 1, 1, '2023-04-27 08:00:30', '2023-04-27 08:00:30'),
(611, 1, 1, '2023-04-27 08:01:27', '2023-04-27 08:01:27'),
(612, 1, 1, '2023-04-27 08:00:44', '2023-04-27 08:00:44'),
(613, 1, 1, '2023-04-27 08:01:38', '2023-04-27 08:01:38'),
(614, 1, 1, '2023-04-27 08:00:56', '2023-04-27 08:00:56'),
(615, 1, 1, '2023-04-27 08:00:16', '2023-04-27 08:00:16'),
(616, 1, 1, '2023-04-27 08:00:19', '2023-04-27 08:00:19'),
(617, 1, 1, '2023-04-27 08:02:16', '2023-04-27 08:02:16'),
(617, 2, 1, '2023-04-28 06:46:24', '2023-04-28 06:46:24'),
(618, 1, 1, '2023-04-27 08:01:46', '2023-04-27 08:01:46'),
(619, 1, 1, '2023-04-27 08:02:04', '2023-04-27 08:02:04'),
(620, 1, 1, '2023-04-27 08:01:30', '2023-04-27 08:01:30'),
(621, 1, 1, '2023-04-27 08:02:19', '2023-04-27 08:02:19'),
(622, 1, 1, '2023-04-27 07:13:49', '2023-04-27 07:13:49'),
(623, 1, 1, '2023-04-27 08:00:21', '2023-04-27 08:00:21'),
(624, 1, 1, '2023-04-27 08:00:59', '2023-04-27 08:00:59'),
(625, 1, 1, '2023-04-27 08:01:02', '2023-04-27 08:01:02'),
(626, 1, 1, '2023-04-27 08:01:21', '2023-04-27 08:01:21'),
(627, 1, 1, '2023-04-27 08:01:41', '2023-04-27 08:01:41'),
(628, 1, 1, '2023-04-27 08:01:05', '2023-04-27 08:01:05'),
(629, 1, 1, '2023-04-27 08:00:49', '2023-04-27 08:00:49'),
(630, 1, 1, '2023-04-27 08:00:27', '2023-04-27 08:00:27'),
(631, 1, 1, '2023-04-27 07:49:03', '2023-04-27 07:49:03'),
(632, 1, 1, '2023-04-27 08:00:36', '2023-04-27 08:00:36'),
(633, 1, 1, '2023-04-27 08:02:27', '2023-04-27 08:02:27'),
(634, 1, 1, '2023-04-27 08:01:10', '2023-04-27 08:01:10'),
(635, 1, 1, '2023-04-27 08:01:55', '2023-04-27 08:01:55'),
(636, 1, 1, '2023-04-27 08:01:58', '2023-04-27 08:01:58'),
(637, 1, 1, '2023-04-27 08:00:53', '2023-04-27 08:00:53'),
(638, 1, 1, '2023-04-27 08:02:10', '2023-04-27 08:02:10'),
(638, 2, 1, '2023-04-28 06:33:43', '2023-04-28 06:33:43'),
(639, 1, 1, '2023-04-27 08:00:14', '2023-04-27 08:00:14'),
(640, 1, 1, '2023-04-27 08:02:23', '2023-04-27 08:02:23'),
(641, 1, 1, '2023-04-27 07:58:17', '2023-04-27 07:58:17'),
(642, 1, 1, '2023-04-27 08:02:01', '2023-04-27 08:02:01'),
(642, 2, 1, '2023-04-28 06:37:51', '2023-04-28 06:37:51'),
(643, 1, 1, '2023-04-27 08:01:14', '2023-04-27 08:01:14'),
(644, 1, 1, '2023-04-27 08:02:13', '2023-04-27 08:02:13'),
(645, 1, 1, '2023-04-27 08:01:18', '2023-04-27 08:01:18'),
(646, 1, 1, '2023-04-27 07:50:16', '2023-04-27 07:50:16'),
(647, 1, 1, '2023-04-27 08:02:07', '2023-04-27 08:02:07'),
(648, 1, 1, '2023-04-27 08:01:51', '2023-04-27 08:01:51'),
(649, 1, 1, '2023-04-27 08:00:39', '2023-04-27 08:00:39'),
(650, 1, 1, '2023-04-27 08:01:25', '2023-04-27 08:01:25'),
(651, 1, 1, '2023-04-27 08:00:42', '2023-04-27 08:00:42'),
(652, 1, 1, '2023-04-27 07:53:02', '2023-04-27 07:53:02'),
(653, 1, 1, '2023-04-27 08:04:10', '2023-04-27 08:04:10'),
(653, 2, 1, '2023-04-28 06:43:20', '2023-04-28 06:43:20'),
(654, 1, 1, '2023-04-27 08:04:14', '2023-04-27 08:04:14'),
(654, 2, 1, '2023-04-28 06:46:42', '2023-04-28 06:46:42'),
(655, 1, 1, '2023-04-27 08:04:26', '2023-04-27 08:04:26'),
(655, 2, 1, '2023-04-28 06:48:51', '2023-04-28 06:48:51'),
(656, 1, 1, '2023-04-27 08:04:31', '2023-04-27 08:04:31'),
(656, 2, 1, '2023-04-28 06:47:41', '2023-04-28 06:47:41'),
(657, 1, 1, '2023-04-27 08:04:20', '2023-04-27 08:04:20'),
(657, 2, 1, '2023-04-28 06:45:15', '2023-04-28 06:45:15'),
(658, 1, 1, '2023-04-27 08:03:34', '2023-04-27 08:03:34'),
(658, 2, 1, '2023-04-28 06:41:46', '2023-04-28 06:41:46'),
(659, 1, 1, '2023-04-27 08:03:38', '2023-04-27 08:03:38'),
(659, 2, 1, '2023-04-28 06:40:42', '2023-04-28 06:40:42'),
(660, 1, 1, '2023-04-27 08:04:17', '2023-04-27 08:04:17'),
(660, 2, 1, '2023-04-28 06:44:35', '2023-04-28 06:44:35'),
(661, 1, 1, '2023-04-27 08:03:31', '2023-04-27 08:03:31'),
(661, 2, 1, '2023-04-28 06:41:06', '2023-04-28 06:41:06'),
(662, 1, 1, '2023-04-27 08:04:29', '2023-04-27 08:04:29'),
(662, 2, 1, '2023-04-28 06:48:05', '2023-04-28 06:48:05'),
(663, 1, 1, '2023-04-27 08:04:24', '2023-04-27 08:04:24'),
(663, 2, 1, '2023-04-28 06:48:52', '2023-04-28 06:48:52'),
(664, 1, 1, '2023-04-27 08:04:12', '2023-04-27 08:04:12'),
(664, 2, 1, '2023-04-28 06:42:26', '2023-04-28 06:42:26'),
(665, 1, 1, '2023-04-27 07:04:44', '2023-04-27 07:04:44'),
(665, 2, 1, '2023-04-28 06:46:07', '2023-04-28 06:46:07'),
(666, 1, 1, '2023-04-27 08:05:26', '2023-04-27 08:05:26'),
(666, 2, 1, '2023-04-28 06:34:20', '2023-04-28 06:34:20'),
(667, 1, 1, '2023-04-27 08:05:29', '2023-04-27 08:05:29'),
(667, 2, 1, '2023-04-28 06:33:04', '2023-04-28 06:33:04'),
(668, 1, 1, '2023-04-27 08:05:12', '2023-04-27 08:05:12'),
(668, 2, 1, '2023-04-28 06:27:48', '2023-04-28 06:27:48'),
(669, 1, 1, '2023-04-27 08:05:21', '2023-04-27 08:05:21'),
(669, 2, 1, '2023-04-28 06:32:07', '2023-04-28 06:32:07'),
(670, 1, 1, '2023-04-27 08:05:14', '2023-04-27 08:05:14'),
(670, 2, 1, '2023-04-28 06:31:00', '2023-04-28 06:31:00'),
(671, 1, 1, '2023-04-27 08:05:32', '2023-04-27 08:05:32'),
(671, 2, 1, '2023-04-28 06:33:34', '2023-04-28 06:33:34'),
(672, 1, 1, '2023-04-27 08:05:02', '2023-04-27 08:05:02'),
(672, 2, 1, '2023-04-28 06:26:02', '2023-04-28 06:26:02'),
(673, 1, 1, '2023-04-27 08:05:17', '2023-04-27 08:05:17'),
(673, 2, 1, '2023-04-28 06:31:34', '2023-04-28 06:31:34'),
(674, 1, 1, '2023-04-27 08:05:04', '2023-04-27 08:05:04'),
(674, 2, 1, '2023-04-28 06:27:11', '2023-04-28 06:27:11'),
(675, 1, 1, '2023-04-27 08:05:37', '2023-04-27 08:05:37'),
(675, 2, 1, '2023-04-28 06:35:26', '2023-04-28 06:35:26'),
(676, 1, 1, '2023-04-27 08:05:34', '2023-04-27 08:05:34'),
(676, 2, 1, '2023-04-28 06:35:52', '2023-04-28 06:35:52'),
(677, 1, 1, '2023-04-27 08:05:07', '2023-04-27 08:05:07'),
(677, 2, 1, '2023-04-28 06:26:42', '2023-04-28 06:26:42'),
(678, 1, 1, '2023-04-27 08:05:24', '2023-04-27 08:05:24'),
(678, 2, 1, '2023-04-28 06:32:38', '2023-04-28 06:32:38'),
(679, 1, 1, '2023-04-27 08:05:19', '2023-04-27 08:05:19'),
(679, 2, 1, '2023-04-28 06:34:44', '2023-04-28 06:34:44'),
(694, 1, 1, '2023-05-24 17:11:25', '2023-05-24 17:11:25'),
(694, 2, 0, '2023-05-24 17:12:25', '2023-05-24 17:12:43'),
(695, 1, 1, '2023-05-25 03:49:27', '2023-05-27 16:13:48'),
(695, 2, 1, '2023-05-27 04:21:27', '2023-05-27 16:13:47'),
(695, 3, 1, '2023-05-27 16:13:56', '2023-05-27 16:13:56'),
(708, 1, 1, '2023-05-29 07:54:23', '2023-05-31 16:16:30'),
(721, 1, 0, '2023-05-31 08:52:26', '2023-05-31 08:52:50'),
(810, 1, 1, '2023-06-27 07:24:20', '2023-06-27 07:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `player_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `vga` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status_day` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `birth` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `turnpro` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `driverev` varchar(255) DEFAULT NULL,
  `putting` varchar(255) DEFAULT NULL,
  `best` varchar(255) DEFAULT NULL,
  `birthplace` varchar(255) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Normal',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`player_id`, `course_id`, `fullname`, `country`, `age`, `sex`, `code`, `vga`, `club`, `group`, `avatar`, `status_day`, `note`, `birth`, `height`, `turnpro`, `weight`, `driverev`, `putting`, `best`, `birthplace`, `is_show`, `level`, `ranking`, `status`, `createdAt`, `updatedAt`) VALUES
(1637, 67, 'Doãn Văn Định', 'VN', 41, 1, NULL, 'VNM-087', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', 2, 'Normal', '2023-07-19 09:20:02', '2023-07-21 08:10:28'),
(1638, 67, 'Nguyễn Văn Quang', 'VN', 39, 1, NULL, 'VNM-035', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30796', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1639, 67, 'Nguyễn Chí Thanh', 'VN', 34, 1, NULL, 'VNM-022', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32866', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1640, 67, 'Huỳnh Trí Dũng', 'VN', 42, 1, NULL, 'VNM-113', NULL, 'BẢNG NAM', NULL, NULL, NULL, '29640', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1641, 67, 'Trần Văn Hoàng', 'VN', 59, 1, NULL, 'VNM-098', NULL, 'BẢNG NAM', NULL, NULL, NULL, '23441', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1642, 67, 'Lê Văn Hưng', 'VN', 29, 1, NULL, 'VNM-075', NULL, 'BẢNG NAM', NULL, NULL, NULL, '34573', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1643, 67, 'Đinh Song Hài', 'VN', 35, 1, NULL, 'VNM-004', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32371', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1644, 67, 'Tăng Nhơn Phú', 'VN', 34, 1, NULL, 'VNM-086', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32529', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1645, 67, 'Phạm Minh Đức', 'VN', 36, 1, NULL, 'VNM-002', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1646, 67, 'Phạm Văn Nghiêm', 'VN', 40, 1, NULL, 'VNM-005', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30504', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1647, 67, 'Nguyễn Văn Long', 'VN', 36, 1, NULL, 'VNM-020', NULL, 'BẢNG NAM', NULL, NULL, NULL, '31842', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1648, 67, 'Nguyễn Văn Toàn', 'VN', 40, 1, NULL, 'VNM-007', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30357', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1649, 67, 'Võ Tá Thuỷ', 'VN', 40, 1, NULL, 'VNM-118', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30460', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1650, 67, 'Bùi Đăng Khoa', 'VN', 32, 1, NULL, 'VNM-088', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33526', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1651, 67, 'Nguyễn Văn Hưng (1980)', 'VN', 43, 1, NULL, 'VNM-028', NULL, 'BẢNG NAM', NULL, NULL, NULL, '29449', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1652, 67, 'Trịnh Xuân Tú', 'VN', 48, 1, NULL, 'VNM-115', NULL, 'BẢNG NAM', NULL, NULL, NULL, '27736', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1653, 67, 'Lê Hữu Giang', 'VN', 39, 1, NULL, 'VNM-043', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30693', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1654, 67, 'Doãn Văn Trung', 'VN', 26, 1, NULL, 'VNM-120', NULL, 'BẢNG NAM', NULL, NULL, NULL, '35692', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1655, 67, 'Phạm Vũ Minh Long', 'VN', 32, 1, NULL, 'VNM-121', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33402', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1656, 67, 'Lê Việt Cường', 'VN', 40, 1, NULL, 'VNM-066', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30539', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1657, 67, 'Nguyễn Xuân Lộc', 'VN', 29, 1, NULL, 'VNM-122', NULL, 'BẢNG NAM', NULL, NULL, NULL, '34444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1658, 67, 'Trần Lưu Sơn', 'VN', 54, 1, NULL, 'VNM-014', NULL, 'BẢNG NAM', NULL, NULL, NULL, '25447', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1659, 67, 'Trương Chí Quân', 'VN', 25, 1, NULL, 'VNM-041', NULL, 'BẢNG NAM', NULL, NULL, NULL, '35840', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-21 08:10:32'),
(1660, 67, 'Lê Đại Dương', 'VN', 29, 1, NULL, 'VNM-051', NULL, 'BẢNG NAM', NULL, NULL, NULL, '34462', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', 1, 'Normal', '2023-07-19 09:20:02', '2023-07-21 08:10:32'),
(1661, 67, 'Lê Xuân Trường', 'VN', 38, 1, NULL, 'VNM-050', NULL, 'BẢNG NAM', NULL, NULL, NULL, '31355', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1662, 67, 'Lai Thế Cường', 'VN', 44, 1, NULL, 'VNM-068', NULL, 'BẢNG NAM', NULL, NULL, NULL, '28955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1663, 67, 'Nguyễn Trung Thu', 'VN', 39, 1, NULL, 'VNM-012', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30881', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1664, 67, 'Hồ Khắc Luận', 'VN', 40, 1, NULL, 'VNM-124', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30622', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1665, 67, 'Ngô Quốc Phi', 'VN', 33, 1, NULL, 'VNM-116', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1666, 67, 'Nguyễn Hữu Quyết', 'VN', 33, 1, NULL, 'VNM-052', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32938', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1667, 67, 'Trần Lê Duy Nhất', 'VN', 34, 1, NULL, 'VNM-003', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32829', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1668, 67, 'Đào Văn Hoàn', 'VN', 33, 1, NULL, 'VNM-089', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33066', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1669, 67, 'Đỗ Hồng Giang', 'VN', 33, 1, NULL, 'VNM-097', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32953', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1670, 67, 'Bùi Văn Hoành', 'VN', 34, 1, NULL, 'VNM-102', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32665', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1671, 67, 'Nguyễn Thế Anh 97', 'VN', 26, 1, NULL, 'VNM-064', NULL, 'BẢNG NAM', NULL, NULL, NULL, '35463', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1672, 67, 'Nguyễn Tuấn Kiệt', 'VN', 32, 1, NULL, 'VNM-092', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33470', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1673, 67, 'Nguyễn Hoàng Hảo', 'VN', 39, 1, NULL, 'VNM-095', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30876', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1674, 67, 'Nguyễn Thanh Hải', 'VN', 32, 1, NULL, 'VNM-011', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33353', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1675, 67, 'Vũ Anh Nguyện', 'VN', 36, 1, NULL, 'VNM-031', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1676, 67, 'Phạm Minh Tuấn', 'VN', 52, 1, NULL, 'VNM-129', NULL, 'BẢNG NAM', NULL, NULL, NULL, '26217', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1677, 67, 'Nguyễn Anh Tuấn (Tuấn Hà Tĩnh)', 'VN', 33, 1, NULL, 'VNM-042', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33095', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1678, 67, 'Nguyễn Thành Nguyên', 'VN', 34, 1, NULL, 'VNM-010', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32747', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1679, 67, 'Đào Hồng Lĩnh', 'VN', 31, 1, NULL, 'VNM-128', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33631', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1680, 67, 'Nguyễn Đình Châu', 'VN', 54, 1, NULL, 'VNM_0001A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '25342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1681, 67, 'Adam Jobes', 'GB', 36, 1, NULL, 'GRB-109', NULL, 'BẢNG NAM', NULL, NULL, NULL, '31960', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1682, 67, 'Jerram Chudleigh', 'AU', 40, 1, NULL, 'AUS-114', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30539', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1683, 67, 'Lâm Jim', 'US', 59, 1, NULL, 'USA-112', NULL, 'BẢNG NAM', NULL, NULL, NULL, '23441', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1684, 67, 'Bean Kim( Kim Soobin)', 'KR', 31, 1, NULL, 'KOR-081', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33677', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1685, 67, 'Choi Kyuyoung', 'KR', 42, 1, NULL, 'KOR-006', NULL, 'BẢNG NAM', NULL, NULL, NULL, '29945', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1686, 67, 'Eric Sung (Sung Il Kwon)', 'KR', 31, 1, NULL, 'KOR-082', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33828', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1687, 67, 'Jay Park (Park Ji Woon)', 'KR', 36, 1, NULL, 'KOR-117', NULL, 'BẢNG NAM', NULL, NULL, NULL, '31807', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1688, 67, 'Brian Jung', 'KR', 38, 1, NULL, 'KOR-119', NULL, 'BẢNG NAM', NULL, NULL, NULL, '31348', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1689, 67, 'Lee Kyu Han', 'KR', 43, 1, NULL, 'VNM-079', NULL, 'BẢNG NAM', NULL, NULL, NULL, '29221', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1690, 67, 'Son Min Ho', 'KR', 46, 1, NULL, 'KOR-071', NULL, 'BẢNG NAM', NULL, NULL, NULL, '28425', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1691, 67, 'Hyun Ju Young (Justin)', 'CA', 37, 1, NULL, 'CAN-123', NULL, 'BẢNG NAM', NULL, NULL, NULL, '31714', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1692, 67, 'Park Sangho', 'KR', 44, 1, NULL, 'KOR-034', NULL, 'BẢNG NAM', NULL, NULL, NULL, '28960', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1693, 67, 'Park Seo Jun', 'KR', 48, 1, NULL, 'KOR-008', NULL, 'BẢNG NAM', NULL, NULL, NULL, '27489', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1694, 67, 'Park Jung Min', 'KR', 37, 1, NULL, 'KOR-080', NULL, 'BẢNG NAM', NULL, NULL, NULL, '31701', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1695, 67, 'Mark William Chambers', 'AU', 55, 1, NULL, 'AUS-125', NULL, 'BẢNG NAM', NULL, NULL, NULL, '25071', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1696, 67, 'Boonmee Topan', 'TH', 44, 1, NULL, 'THA-016', NULL, 'BẢNG NAM', NULL, NULL, NULL, '28909', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1697, 67, 'Lee Ho Jun', 'KR', 43, 1, NULL, 'KOR-110', NULL, 'BẢNG NAM', NULL, NULL, NULL, '29570', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1698, 67, 'Joel Troy', 'AU', 27, 1, NULL, 'AUS-013', NULL, 'BẢNG NAM', NULL, NULL, NULL, '35198', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1699, 67, 'Jin Sung Ha', 'KR', 38, 1, NULL, 'KOR-032', NULL, 'BẢNG NAM', NULL, NULL, NULL, '31344', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1700, 67, 'Huang Chun Hao', 'TW', 43, 1, NULL, 'TAI-103', NULL, 'BẢNG NAM', NULL, NULL, NULL, '29501', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1701, 67, 'Kim Woo Jin', 'KR', 43, 1, NULL, 'KOR-047', NULL, 'BẢNG NAM', NULL, NULL, NULL, '29233', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1702, 67, 'Varuth Nguyễn', 'TH', 24, 1, NULL, 'THA-130', NULL, 'BẢNG NAM', NULL, NULL, NULL, '36225', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1703, 67, 'Matthew Higino', 'ZA', 24, 1, NULL, 'ZAF-131', NULL, 'BẢNG NAM', NULL, NULL, NULL, '36490', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1704, 67, 'Kim Yong Rok', 'KR', 48, 1, NULL, 'KOR-033', NULL, 'BẢNG NAM', NULL, NULL, NULL, '27491', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1705, 67, 'Kim Ho Yong', 'KR', 39, 1, NULL, 'KOR-132', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30801', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1706, 67, 'Nguyễn Quang Trí', 'VN', 19, 1, NULL, 'VNM-134', NULL, 'BẢNG NAM', NULL, NULL, NULL, '38183', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1707, 67, 'Kang Seung Kyun', 'KR', 44, 1, NULL, 'KOR_0091P        ', NULL, 'BẢNG NAM', NULL, NULL, NULL, '8/31/1979', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1708, 67, 'Phạm Văn Hiển', 'VN', 61, 1, NULL, 'VNM_0002A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '22746', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1709, 67, 'Lê Đình Thắng', 'VN', 47, 1, NULL, 'VNM_0003A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '27882', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1710, 67, 'Trần Lam', 'VN', 19, 1, NULL, 'VNM_0004A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '38077', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1711, 67, 'Nguyễn Tuấn Anh', 'VN', 14, 1, NULL, 'VNM_0005A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '40012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1712, 67, 'Đỗ Dương Gia Minh', 'VN', 14, 1, NULL, 'VNM_0006A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '39821', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1713, 67, 'Nguyễn Đặng Minh', 'VN', 18, 1, NULL, 'VNM_0007A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '38587', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1714, 67, 'Trần Tấn Hoàng', 'VN', 27, 1, NULL, 'VNM_0008A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '35183', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1715, 67, 'Nguyễn Anh Minh', 'VN', 16, 1, NULL, 'VNM_0009A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '39263', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1716, 67, 'Trần Hữu Tài', 'VN', 30, 1, NULL, 'VNM_0010A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '34286', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1717, 67, 'Phạm Nam', 'VN', 17, 1, NULL, 'VNM_0011A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '39039', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1718, 67, 'Nguyễn Trọng Hoàng', 'VN', 13, 1, NULL, 'VNM_0012A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '40378', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1719, 67, 'Lê Quý An Duy', 'VN', 33, 1, NULL, 'VNM_0013A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1720, 67, 'Đặng Quang Đức', 'VN', 48, 1, NULL, 'VNM_0014A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '27402', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1721, 67, 'Phạm Văn Minh', 'VN', 26, 1, NULL, 'VNM_0015A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '35669', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1722, 67, 'Đỗ Anh Đức', 'VN', 51, 1, NULL, 'VNM_0016A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '26491', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1723, 67, 'Hoàng Ngọc Quý', 'VN', 51, 1, NULL, 'VNM_0017A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '26302', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1724, 67, 'Đỗ Hồng Hải', 'VN', 50, 1, NULL, 'VNM_0018A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '26974', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1725, 67, 'Mai Đức Thủy', 'VN', 44, 1, NULL, 'VNM_0019A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '29043', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1726, 67, 'Lê Văn Huân', 'VN', 26, 1, NULL, 'VNM_0020A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '35568', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1727, 67, 'Trần Thế Dũng', 'VN', 49, 1, NULL, 'VNM_0021A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '27306', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1728, 67, 'Nguyễn Bá Phúc', 'VN', 49, 1, NULL, 'VNM_0022A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '27246', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1729, 67, 'Phan Như Cường', 'VN', 50, 1, NULL, 'VNM_0023A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '26922', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1730, 67, 'Tạ Mạnh Tiến', 'VN', 48, 1, NULL, 'VNM_0024A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '27527', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1731, 67, 'Nguyễn Văn Huynh', 'VN', 46, 1, NULL, 'VNM_0025A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '28426', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1732, 67, 'Đinh Viết Sinh', 'VN', 48, 1, NULL, 'VNM_0026A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '27642', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1733, 67, 'Andrew Hùng Phạm', 'VN', 60, 1, NULL, 'VNM_0027A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '23270', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1734, 67, 'Nguyễn Vũ Đức Anh', 'VN', 23, 1, NULL, 'VNM_0028A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '36689', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1735, 67, 'Võ Gia Thống', 'VN', 21, 1, NULL, 'VNM_0029A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '37500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1736, 67, 'Vũ Tường Huy', 'VN', 20, 1, NULL, 'VNM_0030A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '37738', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1737, 67, 'Lê Khánh Hưng', 'VN', 15, 1, NULL, 'VNM_0031A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '39651', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1738, 67, 'Deniz Akar', 'DE', 15, 1, NULL, 'DEU_0032A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '39593', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', 3, 'Normal', '2023-07-19 09:20:02', '2023-07-21 08:10:36'),
(1739, 67, 'JIN KIM ( KIM JIN SEONG)', 'KR', 26, 1, NULL, 'KOR-135', NULL, 'BẢNG NAM', NULL, NULL, NULL, '35691', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1740, 67, 'Nguyễn Bảo Long', 'VN', 18, 1, NULL, 'VNM_0033A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '38444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1741, 67, 'Nguyễn Minh Đức', 'VN', 20, 1, NULL, 'VNM_0034A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '37682', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1742, 67, 'Phạm Trường Giang', 'VN', 35, 1, NULL, 'VNM_0088P', NULL, 'BẢNG NAM', NULL, NULL, NULL, '06/30/1988', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1743, 67, 'Nguyễn Huy Thục', 'VN', 39, 1, NULL, '	VNM_0089P', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30834', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1744, 67, 'Lê Hải Linh', 'VN', 35, 1, NULL, 'VNM_0090A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32363', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-19 09:20:02', '2023-07-19 09:20:02'),
(1745, 67, 'Doãn Văn Định', 'VN', 41, 1, NULL, 'VNM-087', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1746, 67, 'Nguyễn Văn Quang', 'VN', 39, 1, NULL, 'VNM-035', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30796', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1747, 67, 'Nguyễn Chí Thanh', 'VN', 34, 1, NULL, 'VNM-022', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32866', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1748, 67, 'Huỳnh Trí Dũng', 'VN', 42, 1, NULL, 'VNM-113', NULL, 'BẢNG NAM', NULL, NULL, NULL, '29640', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1749, 67, 'Trần Văn Hoàng', 'VN', 59, 1, NULL, 'VNM-098', NULL, 'BẢNG NAM', NULL, NULL, NULL, '23441', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1750, 67, 'Lê Văn Hưng', 'VN', 29, 1, NULL, 'VNM-075', NULL, 'BẢNG NAM', NULL, NULL, NULL, '34573', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1751, 67, 'Đinh Song Hài', 'VN', 35, 1, NULL, 'VNM-004', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32371', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1752, 67, 'Tăng Nhơn Phú', 'VN', 34, 1, NULL, 'VNM-086', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32529', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1753, 67, 'Phạm Minh Đức', 'VN', 36, 1, NULL, 'VNM-002', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1754, 67, 'Phạm Văn Nghiêm', 'VN', 40, 1, NULL, 'VNM-005', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30504', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1755, 67, 'Nguyễn Văn Long', 'VN', 36, 1, NULL, 'VNM-020', NULL, 'BẢNG NAM', NULL, NULL, NULL, '31842', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1756, 67, 'Nguyễn Văn Toàn', 'VN', 40, 1, NULL, 'VNM-007', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30357', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1757, 67, 'Võ Tá Thuỷ', 'VN', 40, 1, NULL, 'VNM-118', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30460', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1758, 67, 'Bùi Đăng Khoa', 'VN', 32, 1, NULL, 'VNM-088', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33526', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1759, 67, 'Nguyễn Văn Hưng (1980)', 'VN', 43, 1, NULL, 'VNM-028', NULL, 'BẢNG NAM', NULL, NULL, NULL, '29449', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1760, 67, 'Trịnh Xuân Tú', 'VN', 48, 1, NULL, 'VNM-115', NULL, 'BẢNG NAM', NULL, NULL, NULL, '27736', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1761, 67, 'Lê Hữu Giang', 'VN', 39, 1, NULL, 'VNM-043', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30693', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1762, 67, 'Doãn Văn Trung', 'VN', 26, 1, NULL, 'VNM-120', NULL, 'BẢNG NAM', NULL, NULL, NULL, '35692', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1763, 67, 'Phạm Vũ Minh Long', 'VN', 32, 1, NULL, 'VNM-121', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33402', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1764, 67, 'Lê Việt Cường', 'VN', 40, 1, NULL, 'VNM-066', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30539', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1765, 67, 'Nguyễn Xuân Lộc', 'VN', 29, 1, NULL, 'VNM-122', NULL, 'BẢNG NAM', NULL, NULL, NULL, '34444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1766, 67, 'Trần Lưu Sơn', 'VN', 54, 1, NULL, 'VNM-014', NULL, 'BẢNG NAM', NULL, NULL, NULL, '25447', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1767, 67, 'Trương Chí Quân', 'VN', 25, 1, NULL, 'VNM-041', NULL, 'BẢNG NAM', NULL, NULL, NULL, '35840', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1768, 67, 'Lê Đại Dương', 'VN', 29, 1, NULL, 'VNM-051', NULL, 'BẢNG NAM', NULL, NULL, NULL, '34462', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1769, 67, 'Lê Xuân Trường', 'VN', 38, 1, NULL, 'VNM-050', NULL, 'BẢNG NAM', NULL, NULL, NULL, '31355', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1770, 67, 'Lai Thế Cường', 'VN', 44, 1, NULL, 'VNM-068', NULL, 'BẢNG NAM', NULL, NULL, NULL, '28955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1771, 67, 'Nguyễn Trung Thu', 'VN', 39, 1, NULL, 'VNM-012', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30881', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1772, 67, 'Hồ Khắc Luận', 'VN', 40, 1, NULL, 'VNM-124', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30622', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1773, 67, 'Ngô Quốc Phi', 'VN', 33, 1, NULL, 'VNM-116', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1774, 67, 'Nguyễn Hữu Quyết', 'VN', 33, 1, NULL, 'VNM-052', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32938', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1775, 67, 'Trần Lê Duy Nhất', 'VN', 34, 1, NULL, 'VNM-003', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32829', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1776, 67, 'Đào Văn Hoàn', 'VN', 33, 1, NULL, 'VNM-089', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33066', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1777, 67, 'Đỗ Hồng Giang', 'VN', 33, 1, NULL, 'VNM-097', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32953', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1778, 67, 'Bùi Văn Hoành', 'VN', 34, 1, NULL, 'VNM-102', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32665', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1779, 67, 'Nguyễn Thế Anh 97', 'VN', 26, 1, NULL, 'VNM-064', NULL, 'BẢNG NAM', NULL, NULL, NULL, '35463', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1780, 67, 'Nguyễn Tuấn Kiệt', 'VN', 32, 1, NULL, 'VNM-092', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33470', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1781, 67, 'Nguyễn Hoàng Hảo', 'VN', 39, 1, NULL, 'VNM-095', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30876', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1782, 67, 'Nguyễn Thanh Hải', 'VN', 32, 1, NULL, 'VNM-011', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33353', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1783, 67, 'Vũ Anh Nguyện', 'VN', 36, 1, NULL, 'VNM-031', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1784, 67, 'Phạm Minh Tuấn', 'VN', 52, 1, NULL, 'VNM-129', NULL, 'BẢNG NAM', NULL, NULL, NULL, '26217', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1785, 67, 'Nguyễn Anh Tuấn (Tuấn Hà Tĩnh)', 'VN', 33, 1, NULL, 'VNM-042', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33095', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1786, 67, 'Nguyễn Thành Nguyên', 'VN', 34, 1, NULL, 'VNM-010', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32747', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1787, 67, 'Đào Hồng Lĩnh', 'VN', 31, 1, NULL, 'VNM-128', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33631', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1788, 67, 'Nguyễn Đình Châu', 'VN', 54, 1, NULL, 'VNM_0038A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '25342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1789, 67, 'Adam Jobes', 'GB', 36, 1, NULL, 'GRB-109', NULL, 'BẢNG NAM', NULL, NULL, NULL, '31960', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1790, 67, 'Jerram Chudleigh', 'AU', 40, 1, NULL, 'AUS-114', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30539', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1791, 67, 'Lâm Jim', 'US', 59, 1, NULL, 'USA-112', NULL, 'BẢNG NAM', NULL, NULL, NULL, '23441', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1792, 67, 'Bean Kim( Kim Soobin)', 'KR', 31, 1, NULL, 'KOR-081', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33677', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1793, 67, 'Choi Kyuyoung', 'KR', 42, 1, NULL, 'KOR-006', NULL, 'BẢNG NAM', NULL, NULL, NULL, '29945', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1794, 67, 'Eric Sung (Sung Il Kwon)', 'KR', 31, 1, NULL, 'KOR-082', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33828', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1795, 67, 'Jay Park (Park Ji Woon)', 'KR', 36, 1, NULL, 'KOR-117', NULL, 'BẢNG NAM', NULL, NULL, NULL, '31807', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1796, 67, 'Brian Jung', 'KR', 38, 1, NULL, 'KOR-119', NULL, 'BẢNG NAM', NULL, NULL, NULL, '31348', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1797, 67, 'Lee Kyu Han', 'KR', 43, 1, NULL, 'VNM-079', NULL, 'BẢNG NAM', NULL, NULL, NULL, '29221', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1798, 67, 'Son Min Ho', 'KR', 46, 1, NULL, 'KOR-071', NULL, 'BẢNG NAM', NULL, NULL, NULL, '28425', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1799, 67, 'Hyun Ju Young (Justin)', 'CA', 37, 1, NULL, 'CAN-123', NULL, 'BẢNG NAM', NULL, NULL, NULL, '31714', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1800, 67, 'Park Sangho', 'KR', 44, 1, NULL, 'KOR-034', NULL, 'BẢNG NAM', NULL, NULL, NULL, '28960', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1801, 67, 'Park Seo Jun', 'KR', 48, 1, NULL, 'KOR-008', NULL, 'BẢNG NAM', NULL, NULL, NULL, '27489', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1802, 67, 'Park Jung Min', 'KR', 37, 1, NULL, 'KOR-080', NULL, 'BẢNG NAM', NULL, NULL, NULL, '31701', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1803, 67, 'Mark William Chambers', 'AU', 55, 1, NULL, 'AUS-125', NULL, 'BẢNG NAM', NULL, NULL, NULL, '25071', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1804, 67, 'Boonmee Topan', 'TH', 44, 1, NULL, 'THA-016', NULL, 'BẢNG NAM', NULL, NULL, NULL, '28909', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1805, 67, 'Lee Ho Jun', 'KR', 43, 1, NULL, 'KOR-110', NULL, 'BẢNG NAM', NULL, NULL, NULL, '29570', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1806, 67, 'Joel Troy', 'AU', 27, 1, NULL, 'AUS-013', NULL, 'BẢNG NAM', NULL, NULL, NULL, '35198', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1807, 67, 'Jin Sung Ha', 'KR', 38, 1, NULL, 'KOR-032', NULL, 'BẢNG NAM', NULL, NULL, NULL, '31344', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1808, 67, 'Huang Chun Hao', 'TW', 43, 1, NULL, 'TAI-103', NULL, 'BẢNG NAM', NULL, NULL, NULL, '29501', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1809, 67, 'Kim Woo Jin', 'KR', 43, 1, NULL, 'KOR-047', NULL, 'BẢNG NAM', NULL, NULL, NULL, '29233', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1810, 67, 'Varuth Nguyễn', 'TH', 24, 1, NULL, 'THA-130', NULL, 'BẢNG NAM', NULL, NULL, NULL, '36225', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1811, 67, 'Matthew Higino', 'ZA', 24, 1, NULL, 'ZAF-131', NULL, 'BẢNG NAM', NULL, NULL, NULL, '36490', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1812, 67, 'Kim Yong Rok', 'KR', 48, 1, NULL, 'KOR-033', NULL, 'BẢNG NAM', NULL, NULL, NULL, '27491', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1813, 67, 'Kim Ho Yong', 'KR', 39, 1, NULL, 'KOR-132', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30801', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1814, 67, 'Nguyễn Quang Trí', 'VN', 19, 1, NULL, 'VNM-134', NULL, 'BẢNG NAM', NULL, NULL, NULL, '38183', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1815, 67, 'Kang Seung Kyun', 'KR', 44, 1, NULL, 'KOR_0091P        ', NULL, 'BẢNG NAM', NULL, NULL, NULL, '8/31/1979', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1816, 67, 'Phạm Văn Hiển', 'VN', 61, 1, NULL, 'VNM_0039A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '22746', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1817, 67, 'Lê Đình Thắng', 'VN', 47, 1, NULL, 'VNM_0040A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '27882', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1818, 67, 'Trần Lam', 'VN', 19, 1, NULL, 'VNM_0041A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '38077', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1819, 67, 'Nguyễn Tuấn Anh', 'VN', 14, 1, NULL, 'VNM_0042A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '40012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1820, 67, 'Đỗ Dương Gia Minh', 'VN', 14, 1, NULL, 'VNM_0043A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '39821', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1821, 67, 'Nguyễn Đặng Minh', 'VN', 18, 1, NULL, 'VNM_0044A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '38587', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1822, 67, 'Trần Tấn Hoàng', 'VN', 27, 1, NULL, 'VNM_0045A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '35183', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1823, 67, 'Nguyễn Anh Minh', 'VN', 16, 1, NULL, 'VNM_0046A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '39263', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1824, 67, 'Trần Hữu Tài', 'VN', 30, 1, NULL, 'VNM_0047A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '34286', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1825, 67, 'Phạm Nam', 'VN', 17, 1, NULL, 'VNM_0048A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '39039', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1826, 67, 'Nguyễn Trọng Hoàng', 'VN', 13, 1, NULL, 'VNM_0049A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '40378', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1827, 67, 'Lê Quý An Duy', 'VN', 33, 1, NULL, 'VNM_0050A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '33174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1828, 67, 'Đặng Quang Đức', 'VN', 48, 1, NULL, 'VNM_0051A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '27402', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1829, 67, 'Phạm Văn Minh', 'VN', 26, 1, NULL, 'VNM_0052A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '35669', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1830, 67, 'Đỗ Anh Đức', 'VN', 51, 1, NULL, 'VNM_0053A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '26491', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1831, 67, 'Hoàng Ngọc Quý', 'VN', 51, 1, NULL, 'VNM_0054A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '26302', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1832, 67, 'Đỗ Hồng Hải', 'VN', 50, 1, NULL, 'VNM_0055A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '26974', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1833, 67, 'Mai Đức Thủy', 'VN', 44, 1, NULL, 'VNM_0056A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '29043', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1834, 67, 'Lê Văn Huân', 'VN', 26, 1, NULL, 'VNM_0057A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '35568', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1835, 67, 'Trần Thế Dũng', 'VN', 49, 1, NULL, 'VNM_0058A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '27306', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1836, 67, 'Nguyễn Bá Phúc', 'VN', 49, 1, NULL, 'VNM_0059A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '27246', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1837, 67, 'Phan Như Cường', 'VN', 50, 1, NULL, 'VNM_0060A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '26922', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1838, 67, 'Tạ Mạnh Tiến', 'VN', 48, 1, NULL, 'VNM_0061A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '27527', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1839, 67, 'Nguyễn Văn Huynh', 'VN', 46, 1, NULL, 'VNM_0062A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '28426', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1840, 67, 'Đinh Viết Sinh', 'VN', 48, 1, NULL, 'VNM_0063A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '27642', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1841, 67, 'Andrew Hùng Phạm', 'VN', 60, 1, NULL, 'VNM_0064A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '23270', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1842, 67, 'Nguyễn Vũ Đức Anh', 'VN', 23, 1, NULL, 'VNM_0065A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '36689', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1843, 67, 'Võ Gia Thống', 'VN', 21, 1, NULL, 'VNM_0066A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '37500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1844, 67, 'Vũ Tường Huy', 'VN', 20, 1, NULL, 'VNM_0067A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '37738', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1845, 67, 'Lê Khánh Hưng', 'VN', 15, 1, NULL, 'VNM_0068A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '39651', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1846, 67, 'Deniz Akar', 'DE', 15, 1, NULL, 'DEU_0069A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '39593', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1847, 67, 'JIN KIM ( KIM JIN SEONG)', 'KR', 26, 1, NULL, 'KOR-135', NULL, 'BẢNG NAM', NULL, NULL, NULL, '35691', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1848, 67, 'Nguyễn Bảo Long', 'VN', 18, 1, NULL, 'VNM_0070A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '38444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1849, 67, 'Nguyễn Minh Đức', 'VN', 20, 1, NULL, 'VNM_0071A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '37682', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1850, 67, 'Phạm Trường Giang', 'VN', 35, 1, NULL, 'VNM_0088P', NULL, 'BẢNG NAM', NULL, NULL, NULL, '06/30/1988', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1851, 67, 'Nguyễn Huy Thục', 'VN', 39, 1, NULL, '	VNM_0089P', NULL, 'BẢNG NAM', NULL, NULL, NULL, '30834', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55'),
(1852, 67, 'Lê Hải Linh', 'VN', 35, 1, NULL, 'VNM_0090A', NULL, 'BẢNG NAM', NULL, NULL, NULL, '32363', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amateur', NULL, 'Normal', '2023-07-24 07:53:55', '2023-07-24 07:53:55');

-- --------------------------------------------------------

--
-- Table structure for table `rounds`
--

CREATE TABLE `rounds` (
  `round_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `round_num` int(11) DEFAULT NULL,
  `finished` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rounds`
--

INSERT INTO `rounds` (`round_id`, `course_id`, `round_num`, `finished`, `createdAt`, `updatedAt`) VALUES
(188, 67, 1, 0, '2023-07-19 08:06:50', '2023-07-19 08:06:50'),
(189, 67, 2, 0, '2023-07-19 08:06:50', '2023-07-19 08:06:50'),
(190, 68, 1, 0, '2023-07-24 07:01:13', '2023-07-24 07:01:13'),
(191, 68, 2, 0, '2023-07-24 07:01:13', '2023-07-24 07:01:13'),
(192, 69, 1, 0, '2023-07-24 07:47:45', '2023-07-24 07:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `hole_id` int(11) DEFAULT NULL,
  `round_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `num_putt` int(11) DEFAULT NULL,
  `score_type` varchar(255) DEFAULT NULL,
  `match_num` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `course_id`, `hole_id`, `round_id`, `player_id`, `num_putt`, `score_type`, `match_num`, `createdAt`, `updatedAt`) VALUES
(11119, 67, 731, 188, 1660, 1, 'Eagle', NULL, '2023-07-19 09:59:05', '2023-07-19 09:59:05'),
(11120, 67, 731, 188, 1738, 1, 'Eagle', NULL, '2023-07-21 08:08:54', '2023-07-21 08:08:54'),
(11121, 67, 732, 188, 1738, 3, 'PAR', NULL, '2023-07-21 08:09:24', '2023-07-21 08:09:36'),
(11122, 67, 733, 188, 1738, 1, 'Eagle', NULL, '2023-07-21 08:09:31', '2023-07-21 08:09:31'),
(11123, 67, 734, 188, 1738, 1, 'Eagle', NULL, '2023-07-21 08:09:53', '2023-07-21 08:10:04'),
(11124, 67, 735, 188, 1738, 1, 'Eagle', NULL, '2023-07-21 08:10:18', '2023-07-21 08:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230711065851-add-column-owner-in-courses-table.js'),
('20230711081539-add-column-manager-in-golfsource-table.js'),
('20230712084219-unique-username-in-users-table.js'),
('20230713034650-add-blacklist-column-in-user-table.js'),
('20230713043643-update-manager-column-in-golfsource-table.js');

-- --------------------------------------------------------

--
-- Table structure for table `teetimegroupplayers`
--

CREATE TABLE `teetimegroupplayers` (
  `id` int(11) NOT NULL,
  `teetime_group_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teetimegroupplayers`
--

INSERT INTO `teetimegroupplayers` (`id`, `teetime_group_id`, `player_id`, `createdAt`, `updatedAt`) VALUES
(145, 49, 145, '2023-02-10 07:09:45', '2023-02-10 07:09:45'),
(146, 49, 148, '2023-02-10 07:09:45', '2023-02-10 07:09:45'),
(147, 49, 151, '2023-02-10 07:09:45', '2023-02-10 07:09:45'),
(148, 50, 146, '2023-02-10 07:09:45', '2023-02-10 07:09:45'),
(149, 50, 149, '2023-02-10 07:09:45', '2023-02-10 07:09:45'),
(150, 50, 152, '2023-02-10 07:09:45', '2023-02-10 07:09:45'),
(151, 51, 147, '2023-02-10 07:09:45', '2023-02-10 07:09:45'),
(152, 51, 150, '2023-02-10 07:09:45', '2023-02-10 07:09:45'),
(153, 51, 153, '2023-02-10 07:09:45', '2023-02-10 07:09:45'),
(154, 52, 154, '2023-02-13 07:24:18', '2023-02-13 07:24:18'),
(155, 52, 155, '2023-02-13 07:24:18', '2023-02-13 07:24:18'),
(156, 52, 156, '2023-02-13 07:24:18', '2023-02-13 07:24:18'),
(157, 53, 157, '2023-02-13 07:24:18', '2023-02-13 07:24:18'),
(158, 53, 158, '2023-02-13 07:24:18', '2023-02-13 07:24:18'),
(159, 53, 159, '2023-02-13 07:24:18', '2023-02-13 07:24:18'),
(160, 54, 160, '2023-02-13 07:24:18', '2023-02-13 07:24:18'),
(161, 54, 161, '2023-02-13 07:24:18', '2023-02-13 07:24:18'),
(162, 55, 507, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(163, 55, 509, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(164, 56, 514, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(165, 56, 505, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(166, 56, 511, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(167, 57, 513, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(168, 57, 501, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(169, 57, 503, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(170, 58, 515, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(171, 58, 517, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(172, 58, 508, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(173, 59, 510, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(174, 59, 502, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(175, 59, 518, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(176, 60, 512, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(177, 60, 506, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(178, 60, 516, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(179, 61, 427, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(180, 61, 460, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(181, 62, 445, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(182, 62, 521, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(183, 62, 452, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(184, 63, 421, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(185, 63, 433, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(186, 63, 478, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(187, 64, 491, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(188, 64, 462, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(189, 64, 405, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(190, 65, 464, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(191, 65, 440, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(192, 65, 486, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(193, 66, 463, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(194, 66, 484, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(195, 66, 436, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(196, 67, 400, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(197, 67, 450, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(198, 67, 519, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(199, 68, 408, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(200, 68, 472, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(201, 68, 465, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(202, 69, 410, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(203, 69, 417, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(204, 70, 419, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(205, 70, 474, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(206, 70, 425, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(207, 71, 488, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(208, 71, 468, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(209, 71, 424, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(210, 72, 459, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(211, 72, 504, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(212, 72, 403, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(213, 73, 446, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(214, 73, 466, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(215, 73, 489, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(216, 74, 448, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(217, 74, 476, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(218, 74, 431, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(219, 75, 429, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(220, 75, 449, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(221, 75, 480, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(222, 76, 461, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(223, 76, 451, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(224, 76, 499, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(225, 77, 437, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(226, 77, 496, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(227, 77, 441, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(228, 78, 406, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(229, 78, 523, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(230, 78, 458, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(231, 79, 495, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(232, 79, 444, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(233, 79, 457, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(234, 80, 401, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(235, 80, 490, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(236, 80, 524, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(237, 81, 487, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(238, 81, 428, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(239, 81, 409, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(240, 82, 494, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(241, 82, 414, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(242, 82, 456, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(243, 83, 443, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(244, 83, 482, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(245, 83, 467, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(246, 84, 423, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(247, 84, 471, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(248, 84, 498, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(249, 85, 416, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(250, 85, 520, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(251, 85, 411, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(252, 86, 430, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(253, 86, 477, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(254, 86, 455, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(255, 87, 475, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(256, 87, 453, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(257, 87, 404, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(258, 88, 481, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(259, 88, 426, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(260, 88, 439, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(261, 89, 485, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(262, 89, 454, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(263, 89, 434, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(264, 90, 525, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(265, 90, 413, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(266, 90, 492, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(267, 91, 493, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(268, 91, 420, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(269, 91, 522, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(270, 92, 470, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(271, 92, 418, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(272, 92, 402, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(273, 93, 435, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(274, 93, 447, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(275, 93, 479, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(276, 94, 422, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(277, 94, 497, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(278, 94, 469, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(279, 95, 432, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(280, 95, 407, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(281, 95, 473, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(282, 96, 483, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(283, 96, 438, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(284, 96, 415, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(285, 97, 500, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(286, 97, 412, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(287, 97, 442, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(288, 98, 515, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(289, 98, 517, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(290, 98, 508, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(291, 99, 510, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(292, 99, 502, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(293, 99, 518, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(294, 100, 512, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(295, 100, 506, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(296, 100, 516, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(297, 101, 507, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(298, 101, 509, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(299, 102, 514, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(300, 102, 505, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(301, 102, 511, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(302, 103, 513, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(303, 103, 501, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(304, 103, 503, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(305, 104, 481, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(306, 104, 426, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(307, 104, 439, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(308, 105, 485, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(309, 105, 454, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(310, 105, 434, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(311, 106, 525, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(312, 106, 413, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(313, 106, 492, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(314, 107, 493, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(315, 107, 420, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(316, 107, 522, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(317, 108, 470, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(318, 108, 418, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(319, 108, 402, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(320, 109, 435, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(321, 109, 447, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(322, 109, 479, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(323, 110, 422, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(324, 110, 497, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(325, 110, 469, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(326, 111, 432, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(327, 111, 407, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(328, 111, 473, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(329, 112, 483, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(330, 112, 438, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(331, 112, 415, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(332, 113, 500, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(333, 113, 412, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(334, 113, 442, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(335, 114, 401, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(336, 114, 490, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(337, 114, 524, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(338, 115, 487, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(339, 115, 428, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(340, 115, 409, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(341, 116, 494, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(342, 116, 414, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(343, 116, 456, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(344, 117, 443, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(345, 117, 482, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(346, 117, 467, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(347, 118, 423, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(348, 118, 471, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(349, 118, 498, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(350, 119, 416, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(351, 119, 520, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(352, 119, 411, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(353, 120, 430, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(354, 120, 477, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(355, 120, 455, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(356, 121, 475, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(357, 121, 453, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(358, 121, 404, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(359, 122, 410, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(360, 122, 417, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(361, 122, 457, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(362, 123, 419, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(363, 123, 474, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(364, 123, 425, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(365, 124, 488, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(366, 124, 468, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(367, 124, 424, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(368, 125, 459, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(369, 125, 504, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(370, 125, 403, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(371, 126, 446, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(372, 126, 466, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(373, 126, 489, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(374, 127, 448, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(375, 127, 476, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(376, 127, 431, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(377, 128, 429, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(378, 128, 449, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(379, 128, 480, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(380, 129, 461, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(381, 129, 451, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(382, 129, 499, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(383, 130, 437, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(384, 130, 496, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(385, 130, 441, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(386, 131, 406, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(387, 131, 523, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(388, 131, 458, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(389, 132, 427, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(390, 132, 460, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(391, 132, 495, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(392, 133, 445, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(393, 133, 521, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(394, 133, 452, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(395, 134, 421, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(396, 134, 433, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(397, 134, 478, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(398, 135, 491, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(399, 135, 462, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(400, 135, 405, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(401, 136, 464, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(402, 136, 440, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(403, 136, 486, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(404, 137, 463, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(405, 137, 484, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(406, 137, 436, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(407, 138, 400, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(408, 138, 450, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(409, 138, 519, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(410, 139, 408, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(411, 139, 472, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(412, 139, 465, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(413, 140, 510, '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(414, 140, 515, '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(415, 140, 512, '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(416, 141, 513, '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(417, 141, 503, '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(418, 141, 506, '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(419, 142, 514, '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(420, 142, 501, '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(421, 142, 509, '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(422, 143, 511, '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(423, 143, 505, '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(424, 143, 502, '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(425, 144, 431, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(426, 144, 427, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(427, 144, 452, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(428, 145, 467, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(429, 145, 460, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(430, 145, 432, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(431, 146, 476, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(432, 146, 400, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(433, 146, 461, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(434, 147, 479, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(435, 147, 445, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(436, 147, 401, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(437, 148, 423, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(438, 148, 404, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(439, 148, 419, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(440, 149, 465, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(441, 149, 447, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(442, 149, 524, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(443, 150, 429, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(444, 150, 408, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(445, 150, 416, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(446, 151, 472, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(447, 151, 435, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(448, 151, 406, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(449, 152, 473, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(450, 152, 430, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(451, 152, 455, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(452, 153, 499, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(453, 153, 422, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(454, 153, 477, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(455, 154, 450, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(456, 154, 469, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(457, 154, 457, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(458, 155, 504, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(459, 155, 485, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(460, 155, 463, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(461, 156, 410, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(462, 156, 451, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(463, 156, 475, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(464, 157, 411, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(465, 157, 414, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(466, 157, 415, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(467, 158, 421, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(468, 158, 439, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(469, 158, 426, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(470, 159, 495, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(471, 159, 433, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(472, 159, 484, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(473, 160, 402, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(474, 160, 482, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(475, 160, 466, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(476, 161, 512, '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(477, 161, 515, '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(478, 161, 506, '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(479, 162, 513, '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(480, 162, 503, '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(481, 162, 510, '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(482, 163, 514, '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(483, 163, 509, '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(484, 163, 501, '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(485, 164, 505, '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(486, 164, 502, '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(487, 164, 511, '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(488, 165, 427, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(489, 165, 421, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(490, 165, 410, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(491, 166, 451, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(492, 166, 524, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(493, 166, 469, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(494, 167, 401, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(495, 167, 465, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(496, 167, 466, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(497, 168, 432, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(498, 168, 450, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(499, 168, 467, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(500, 169, 419, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(501, 169, 447, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(502, 169, 457, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(503, 170, 416, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(504, 170, 400, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(505, 170, 445, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(506, 171, 473, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(507, 171, 461, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(508, 171, 408, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(509, 172, 472, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(510, 172, 455, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(511, 172, 429, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(512, 173, 435, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(513, 173, 406, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(514, 173, 430, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(515, 174, 499, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(516, 174, 422, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(517, 174, 477, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(518, 175, 463, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(519, 175, 423, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(520, 176, 495, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(521, 176, 414, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(522, 176, 402, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(523, 177, 439, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(524, 177, 411, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(525, 177, 452, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(526, 178, 431, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(527, 178, 460, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(528, 178, 479, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(529, 179, 475, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(530, 179, 504, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(531, 179, 485, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(532, 180, 404, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(533, 180, 476, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(534, 180, 484, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(535, 181, 426, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(536, 181, 482, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(537, 181, 415, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(538, 182, 641, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(539, 182, 619, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(540, 182, 631, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(541, 183, 642, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(542, 183, 634, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(543, 183, 613, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(544, 184, 624, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(545, 184, 644, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(546, 184, 621, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(547, 185, 628, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(548, 185, 620, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(549, 185, 610, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(550, 186, 633, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(551, 186, 622, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(552, 186, 639, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(553, 187, 648, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(554, 187, 629, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(555, 187, 638, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(556, 188, 612, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(557, 188, 618, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(558, 188, 635, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(559, 189, 614, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(560, 189, 617, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(561, 189, 623, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(562, 190, 627, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(563, 190, 646, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(564, 190, 608, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(565, 191, 625, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(566, 191, 630, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(567, 191, 636, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(568, 192, 640, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(569, 192, 611, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(570, 192, 645, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(571, 193, 626, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(572, 193, 649, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(573, 193, 650, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(574, 194, 609, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(575, 194, 643, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(576, 194, 632, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(577, 195, 637, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(578, 195, 616, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(579, 195, 615, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(580, 196, 651, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(581, 196, 652, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(582, 197, 647, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(583, 198, 607, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(584, 198, 606, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(585, 199, 605, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(586, 199, 604, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(587, 199, 599, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(588, 200, 601, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(589, 200, 602, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(590, 200, 596, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(591, 201, 603, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(592, 201, 598, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(593, 201, 595, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(594, 202, 597, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(595, 202, 600, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(596, 202, 594, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(597, 203, 656, '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(598, 204, 655, '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(599, 204, 662, '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(600, 204, 654, '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(601, 205, 653, '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(602, 205, 660, '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(603, 205, 657, '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(604, 206, 658, '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(605, 206, 663, '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(606, 206, 665, '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(607, 207, 664, '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(608, 207, 659, '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(609, 207, 661, '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(610, 208, 676, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(611, 208, 679, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(612, 209, 675, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(613, 209, 666, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(614, 209, 669, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(615, 210, 673, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(616, 210, 678, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(617, 210, 670, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(618, 211, 671, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(619, 211, 667, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(620, 211, 668, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(621, 212, 672, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(622, 212, 674, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(623, 212, 677, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(624, 213, 635, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(625, 213, 636, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(626, 214, 631, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(627, 214, 648, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(628, 215, 618, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(629, 215, 646, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(630, 216, 613, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(631, 216, 627, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(632, 216, 650, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(633, 217, 652, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(634, 217, 620, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(635, 217, 611, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(636, 218, 634, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(637, 218, 645, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(638, 218, 626, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(639, 219, 643, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(640, 219, 624, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(641, 220, 628, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(642, 220, 614, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(643, 220, 625, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(644, 221, 637, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(645, 221, 629, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(646, 222, 622, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(647, 222, 612, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(648, 223, 649, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(649, 223, 632, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(650, 223, 651, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(651, 224, 610, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(652, 224, 630, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(653, 225, 608, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(654, 225, 623, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(655, 226, 616, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(656, 226, 615, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(657, 226, 639, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(658, 227, 619, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(659, 227, 642, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(660, 227, 647, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(661, 228, 644, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(662, 228, 638, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(663, 229, 617, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(664, 230, 621, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(665, 230, 640, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(666, 231, 641, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(667, 231, 633, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(668, 232, 609, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(669, 233, 599, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(670, 234, 602, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(671, 235, 605, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(672, 236, 604, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(673, 237, 597, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(674, 238, 603, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(675, 239, 600, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(676, 240, 594, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(677, 241, 607, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(678, 242, 598, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(679, 242, 606, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(680, 243, 601, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(681, 244, 596, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(682, 245, 595, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(683, 246, 675, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(684, 246, 676, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(685, 247, 671, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(686, 248, 667, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(687, 249, 666, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(688, 249, 669, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(689, 249, 678, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(690, 250, 679, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(691, 251, 673, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(692, 251, 670, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(693, 252, 668, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(694, 253, 677, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(695, 253, 672, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(696, 253, 674, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(697, 254, 656, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(698, 254, 662, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(699, 255, 655, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(700, 256, 665, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(701, 256, 657, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(702, 257, 654, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(703, 257, 660, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(704, 258, 653, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(705, 258, 664, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(706, 259, 658, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(707, 260, 659, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(708, 260, 661, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(709, 261, 663, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(710, 262, 699, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(711, 262, 707, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(712, 262, 705, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(713, 263, 694, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(714, 263, 704, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(715, 263, 706, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(716, 264, 697, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(717, 264, 698, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(718, 264, 700, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(719, 265, 702, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(720, 265, 695, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(721, 265, 696, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(722, 266, 703, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(723, 266, 701, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(724, 267, 711, '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(725, 268, 710, '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(726, 268, 717, '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(727, 268, 709, '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(728, 269, 708, '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(729, 269, 715, '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(730, 269, 712, '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(731, 270, 713, '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(732, 270, 718, '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(733, 270, 720, '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(734, 271, 719, '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(735, 271, 714, '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(736, 271, 716, '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(737, 272, 734, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(738, 272, 733, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(739, 273, 732, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(740, 273, 731, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(741, 273, 726, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(742, 274, 728, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(743, 274, 729, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(744, 274, 723, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(745, 275, 730, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(746, 275, 725, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(747, 275, 722, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(748, 276, 724, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(749, 276, 727, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(750, 276, 721, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(751, 277, 1520, '2023-06-27 09:18:14', '2023-06-27 09:18:14'),
(752, 277, 1521, '2023-06-27 09:18:14', '2023-06-27 09:18:14'),
(753, 278, 1522, '2023-06-27 09:18:14', '2023-06-27 09:18:14'),
(754, 278, 1523, '2023-06-27 09:18:14', '2023-06-27 09:18:14'),
(755, 279, 1515, '2023-06-27 09:19:13', '2023-06-27 09:19:13'),
(756, 279, 1516, '2023-06-27 09:19:13', '2023-06-27 09:19:13'),
(757, 279, 1517, '2023-06-27 09:19:13', '2023-06-27 09:19:13'),
(758, 280, 1518, '2023-06-27 09:19:13', '2023-06-27 09:19:13'),
(759, 280, 1519, '2023-06-27 09:19:13', '2023-06-27 09:19:13'),
(760, 281, 1498, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(761, 281, 1499, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(762, 281, 1500, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(763, 282, 1501, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(764, 282, 1502, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(765, 282, 1503, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(766, 283, 1504, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(767, 283, 1505, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(768, 283, 1506, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(769, 284, 1507, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(770, 284, 1508, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(771, 284, 1509, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(772, 285, 1510, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(773, 285, 1511, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(774, 285, 1512, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(775, 286, 1513, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(776, 286, 1514, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(777, 287, 1548, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(778, 287, 1546, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(779, 288, 1539, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(780, 288, 1532, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(781, 289, 1544, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(782, 289, 1534, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(783, 289, 1529, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(784, 290, 1530, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(785, 290, 1524, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(786, 290, 1541, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(787, 291, 1538, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(788, 291, 1540, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(789, 291, 1536, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(790, 292, 1542, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(791, 292, 1527, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(792, 292, 1533, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(793, 293, 1545, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(794, 293, 1531, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(795, 293, 1547, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(796, 294, 1537, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(797, 294, 1551, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(798, 294, 1526, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(799, 295, 1549, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(800, 295, 1550, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(801, 295, 1525, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(802, 296, 1535, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(803, 296, 1543, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(804, 296, 1528, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(805, 297, 1552, '2023-07-01 05:58:05', '2023-07-01 05:58:05'),
(806, 297, 1555, '2023-07-01 05:58:05', '2023-07-01 05:58:05'),
(807, 298, 1554, '2023-07-01 05:58:05', '2023-07-01 05:58:05'),
(808, 298, 1553, '2023-07-01 05:58:05', '2023-07-01 05:58:05'),
(809, 298, 1556, '2023-07-01 05:58:05', '2023-07-01 05:58:05'),
(810, 299, 1557, '2023-07-01 05:58:05', '2023-07-01 05:58:05'),
(811, 299, 1558, '2023-07-01 05:58:05', '2023-07-01 05:58:05'),
(812, 299, 1559, '2023-07-01 05:58:05', '2023-07-01 05:58:05'),
(813, 300, 1527, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(814, 300, 1533, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(815, 301, 1551, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(816, 301, 1529, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(817, 302, 1540, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(818, 302, 1544, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(819, 302, 1530, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(820, 303, 1547, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(821, 303, 1549, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(822, 303, 1531, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(823, 304, 1526, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(824, 304, 1536, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(825, 304, 1525, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(826, 305, 1535, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(827, 305, 1542, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(828, 305, 1528, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(829, 306, 1541, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(830, 306, 1543, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(831, 306, 1538, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(832, 307, 1548, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(833, 307, 1546, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(834, 307, 1539, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(835, 308, 1534, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(836, 308, 1537, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(837, 308, 1550, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(838, 309, 1524, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(839, 309, 1545, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(840, 309, 1532, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(841, 310, 1552, '2023-07-02 10:39:00', '2023-07-02 10:39:00'),
(842, 310, 1555, '2023-07-02 10:39:00', '2023-07-02 10:39:00'),
(843, 311, 1556, '2023-07-02 10:39:00', '2023-07-02 10:39:00'),
(844, 311, 1559, '2023-07-02 10:39:00', '2023-07-02 10:39:00'),
(845, 311, 1553, '2023-07-02 10:39:00', '2023-07-02 10:39:00'),
(846, 312, 1558, '2023-07-02 10:39:00', '2023-07-02 10:39:00'),
(847, 312, 1554, '2023-07-02 10:39:00', '2023-07-02 10:39:00'),
(848, 312, 1557, '2023-07-02 10:39:00', '2023-07-02 10:39:00'),
(849, 313, 1565, '2023-07-04 09:24:26', '2023-07-04 09:24:26'),
(850, 313, 1562, '2023-07-04 09:24:26', '2023-07-04 09:24:26'),
(851, 313, 1567, '2023-07-04 09:24:26', '2023-07-04 09:24:26'),
(852, 313, 1571, '2023-07-04 09:24:26', '2023-07-04 09:24:26'),
(853, 314, 1566, '2023-07-04 09:24:26', '2023-07-04 09:24:26'),
(854, 314, 1569, '2023-07-04 09:24:26', '2023-07-04 09:24:26'),
(855, 314, 1560, '2023-07-04 09:24:26', '2023-07-04 09:24:26'),
(856, 314, 1561, '2023-07-04 09:24:26', '2023-07-04 09:24:26'),
(857, 315, 1570, '2023-07-04 09:24:26', '2023-07-04 09:24:26'),
(858, 315, 1563, '2023-07-04 09:24:26', '2023-07-04 09:24:26'),
(859, 315, 1568, '2023-07-04 09:24:26', '2023-07-04 09:24:26'),
(860, 315, 1564, '2023-07-04 09:24:26', '2023-07-04 09:24:26'),
(861, 316, 1577, '2023-07-04 09:27:29', '2023-07-04 09:27:29'),
(862, 316, 1574, '2023-07-04 09:27:29', '2023-07-04 09:27:29'),
(863, 316, 1572, '2023-07-04 09:27:29', '2023-07-04 09:27:29'),
(864, 317, 1575, '2023-07-04 09:27:29', '2023-07-04 09:27:29'),
(865, 317, 1578, '2023-07-04 09:27:29', '2023-07-04 09:27:29'),
(866, 317, 1576, '2023-07-04 09:27:29', '2023-07-04 09:27:29'),
(867, 317, 1573, '2023-07-04 09:27:29', '2023-07-04 09:27:29'),
(868, 318, 1580, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(869, 318, 1590, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(870, 318, 1586, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(871, 319, 1593, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(872, 319, 1585, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(873, 319, 1587, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(874, 319, 1597, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(875, 320, 1584, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(876, 320, 1583, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(877, 320, 1581, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(878, 321, 1596, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(879, 321, 1588, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(880, 321, 1582, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(881, 321, 1589, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(882, 322, 1594, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(883, 322, 1579, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(884, 322, 1592, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(885, 322, 1591, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(886, 323, 1597, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(887, 323, 1579, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(888, 324, 1589, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(889, 324, 1596, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(890, 325, 1594, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(891, 325, 1592, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(892, 325, 1588, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(893, 326, 1585, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(894, 326, 1584, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(895, 326, 1583, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(896, 327, 1582, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(897, 328, 1593, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(898, 328, 1586, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(899, 329, 1581, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(900, 329, 1591, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(901, 329, 1580, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(902, 330, 1590, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(903, 330, 1587, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(904, 331, 1598, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(905, 331, 1611, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(906, 331, 1613, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(907, 331, 1612, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(908, 332, 1600, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(909, 332, 1601, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(910, 332, 1602, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(911, 332, 1603, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(912, 333, 1604, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(913, 333, 1605, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(914, 333, 1606, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(915, 333, 1607, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(916, 334, 1608, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(917, 334, 1609, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(918, 334, 1610, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(919, 334, 1599, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(920, 335, 1635, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(921, 335, 1636, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(922, 335, 1634, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(923, 336, 1628, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(924, 336, 1627, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(925, 336, 1621, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(926, 336, 1616, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(927, 337, 1614, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(928, 337, 1618, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(929, 337, 1633, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(930, 337, 1615, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(931, 338, 1617, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(932, 338, 1631, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(933, 338, 1622, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(934, 338, 1620, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(935, 339, 1625, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(936, 339, 1626, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(937, 339, 1629, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(938, 339, 1619, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(939, 340, 1624, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(940, 340, 1630, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(941, 340, 1632, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(942, 340, 1623, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(943, 341, 1564, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(944, 342, 1568, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(945, 342, 1563, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(946, 343, 1569, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(947, 344, 1570, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(948, 345, 1561, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(949, 346, 1566, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(950, 347, 1560, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(951, 347, 1562, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(952, 348, 1571, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(953, 348, 1565, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(954, 348, 1567, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(955, 349, 1576, '2023-07-05 14:31:56', '2023-07-05 14:31:56'),
(956, 350, 1575, '2023-07-05 14:31:56', '2023-07-05 14:31:56'),
(957, 351, 1573, '2023-07-05 14:31:56', '2023-07-05 14:31:56'),
(958, 351, 1578, '2023-07-05 14:31:56', '2023-07-05 14:31:56'),
(959, 352, 1572, '2023-07-05 14:31:56', '2023-07-05 14:31:56'),
(960, 353, 1577, '2023-07-05 14:31:56', '2023-07-05 14:31:56');
INSERT INTO `teetimegroupplayers` (`id`, `teetime_group_id`, `player_id`, `createdAt`, `updatedAt`) VALUES
(961, 354, 1574, '2023-07-05 14:31:56', '2023-07-05 14:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `teetimegroups`
--

CREATE TABLE `teetimegroups` (
  `teetime_group_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `round_id` int(11) DEFAULT NULL,
  `group_num` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teetimegroups`
--

INSERT INTO `teetimegroups` (`teetime_group_id`, `course_id`, `round_id`, `group_num`, `createdAt`, `updatedAt`) VALUES
(49, 2, 5, 1, '2023-02-10 07:09:45', '2023-02-10 07:09:45'),
(50, 2, 5, 2, '2023-02-10 07:09:45', '2023-02-10 07:09:45'),
(51, 2, 5, 3, '2023-02-10 07:09:45', '2023-02-10 07:09:45'),
(52, 4, 12, 1, '2023-02-13 07:24:18', '2023-02-13 07:24:18'),
(53, 4, 12, 2, '2023-02-13 07:24:18', '2023-02-13 07:24:18'),
(54, 4, 12, 3, '2023-02-13 07:24:18', '2023-02-13 07:24:18'),
(55, 8, 26, 9, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(56, 8, 26, 10, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(57, 8, 26, 11, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(58, 8, 26, 31, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(59, 8, 26, 32, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(60, 8, 26, 33, '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(61, 9, 30, 1, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(62, 9, 30, 2, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(63, 9, 30, 3, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(64, 9, 30, 4, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(65, 9, 30, 5, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(66, 9, 30, 6, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(67, 9, 30, 7, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(68, 9, 30, 8, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(69, 9, 30, 12, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(70, 9, 30, 13, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(71, 9, 30, 14, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(72, 9, 30, 15, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(73, 9, 30, 16, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(74, 9, 30, 17, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(75, 9, 30, 18, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(76, 9, 30, 19, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(77, 9, 30, 20, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(78, 9, 30, 21, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(79, 9, 30, 22, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(80, 9, 30, 23, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(81, 9, 30, 24, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(82, 9, 30, 25, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(83, 9, 30, 26, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(84, 9, 30, 27, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(85, 9, 30, 28, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(86, 9, 30, 29, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(87, 9, 30, 30, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(88, 9, 30, 34, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(89, 9, 30, 35, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(90, 9, 30, 36, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(91, 9, 30, 37, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(92, 9, 30, 38, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(93, 9, 30, 39, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(94, 9, 30, 40, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(95, 9, 30, 41, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(96, 9, 30, 42, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(97, 9, 30, 43, '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(98, 8, 28, 19, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(99, 8, 28, 20, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(100, 8, 28, 21, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(101, 8, 28, 40, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(102, 8, 28, 41, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(103, 8, 28, 42, '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(104, 9, 32, 1, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(105, 9, 32, 2, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(106, 9, 32, 3, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(107, 9, 32, 4, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(108, 9, 32, 5, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(109, 9, 32, 6, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(110, 9, 32, 7, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(111, 9, 32, 8, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(112, 9, 32, 9, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(113, 9, 32, 10, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(114, 9, 32, 11, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(115, 9, 32, 12, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(116, 9, 32, 13, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(117, 9, 32, 14, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(118, 9, 32, 15, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(119, 9, 32, 16, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(120, 9, 32, 17, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(121, 9, 32, 18, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(122, 9, 32, 22, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(123, 9, 32, 23, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(124, 9, 32, 24, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(125, 9, 32, 25, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(126, 9, 32, 26, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(127, 9, 32, 27, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(128, 9, 32, 28, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(129, 9, 32, 29, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(130, 9, 32, 30, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(131, 9, 32, 31, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(132, 9, 32, 32, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(133, 9, 32, 33, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(134, 9, 32, 34, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(135, 9, 32, 35, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(136, 9, 32, 36, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(137, 9, 32, 37, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(138, 9, 32, 38, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(139, 9, 32, 39, '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(140, 8, 27, 18, '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(141, 8, 27, 19, '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(142, 8, 27, 20, '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(143, 8, 27, 21, '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(144, 9, 31, 1, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(145, 9, 31, 2, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(146, 9, 31, 3, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(147, 9, 31, 4, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(148, 9, 31, 5, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(149, 9, 31, 6, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(150, 9, 31, 7, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(151, 9, 31, 8, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(152, 9, 31, 9, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(153, 9, 31, 10, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(154, 9, 31, 11, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(155, 9, 31, 12, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(156, 9, 31, 13, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(157, 9, 31, 14, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(158, 9, 31, 15, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(159, 9, 31, 16, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(160, 9, 31, 17, '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(161, 8, 29, 18, '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(162, 8, 29, 19, '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(163, 8, 29, 20, '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(164, 8, 29, 21, '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(165, 9, 33, 1, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(166, 9, 33, 2, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(167, 9, 33, 3, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(168, 9, 33, 4, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(169, 9, 33, 5, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(170, 9, 33, 6, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(171, 9, 33, 7, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(172, 9, 33, 8, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(173, 9, 33, 9, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(174, 9, 33, 10, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(175, 9, 33, 11, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(176, 9, 33, 12, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(177, 9, 33, 13, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(178, 9, 33, 14, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(179, 9, 33, 15, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(180, 9, 33, 16, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(181, 9, 33, 17, '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(182, 14, 51, 1, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(183, 14, 51, 2, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(184, 14, 51, 3, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(185, 14, 51, 4, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(186, 14, 51, 5, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(187, 14, 51, 6, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(188, 14, 51, 7, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(189, 14, 51, 8, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(190, 14, 51, 9, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(191, 14, 51, 10, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(192, 14, 51, 11, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(193, 14, 51, 12, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(194, 14, 51, 13, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(195, 14, 51, 14, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(196, 14, 51, 15, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(197, 14, 51, 16, '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(198, 13, 49, 16, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(199, 13, 49, 17, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(200, 13, 49, 18, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(201, 13, 49, 19, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(202, 13, 49, 20, '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(203, 15, 53, 21, '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(204, 15, 53, 26, '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(205, 15, 53, 27, '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(206, 15, 53, 28, '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(207, 15, 53, 29, '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(208, 16, 55, 21, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(209, 16, 55, 22, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(210, 16, 55, 23, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(211, 16, 55, 24, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(212, 16, 55, 25, '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(213, 14, 52, 1, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(214, 14, 52, 2, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(215, 14, 52, 3, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(216, 14, 52, 4, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(217, 14, 52, 5, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(218, 14, 52, 6, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(219, 14, 52, 7, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(220, 14, 52, 8, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(221, 14, 52, 9, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(222, 14, 52, 10, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(223, 14, 52, 11, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(224, 14, 52, 12, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(225, 14, 52, 13, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(226, 14, 52, 14, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(227, 14, 52, 15, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(228, 14, 52, 16, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(229, 14, 52, 17, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(230, 14, 52, 18, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(231, 14, 52, 19, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(232, 14, 52, 29, '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(233, 13, 50, 1, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(234, 13, 50, 2, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(235, 13, 50, 3, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(236, 13, 50, 7, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(237, 13, 50, 9, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(238, 13, 50, 10, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(239, 13, 50, 12, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(240, 13, 50, 13, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(241, 13, 50, 16, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(242, 13, 50, 17, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(243, 13, 50, 18, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(244, 13, 50, 19, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(245, 13, 50, 29, '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(246, 16, 56, 21, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(247, 16, 56, 22, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(248, 16, 56, 23, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(249, 16, 56, 24, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(250, 16, 56, 25, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(251, 16, 56, 26, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(252, 16, 56, 27, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(253, 16, 56, 28, '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(254, 15, 54, 20, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(255, 15, 54, 21, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(256, 15, 54, 22, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(257, 15, 54, 23, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(258, 15, 54, 25, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(259, 15, 54, 26, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(260, 15, 54, 27, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(261, 15, 54, 29, '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(262, 19, 63, 1, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(263, 19, 63, 2, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(264, 19, 63, 3, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(265, 19, 63, 4, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(266, 19, 63, 5, '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(267, 20, 67, 21, '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(268, 20, 67, 26, '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(269, 20, 67, 27, '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(270, 20, 67, 28, '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(271, 20, 67, 29, '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(272, 21, 69, 16, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(273, 21, 69, 17, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(274, 21, 69, 18, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(275, 21, 69, 19, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(276, 21, 69, 20, '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(277, 48, 124, 9, '2023-06-27 09:18:14', '2023-06-27 09:18:14'),
(278, 48, 124, 10, '2023-06-27 09:18:14', '2023-06-27 09:18:14'),
(279, 47, 121, 7, '2023-06-27 09:19:13', '2023-06-27 09:19:13'),
(280, 47, 121, 8, '2023-06-27 09:19:13', '2023-06-27 09:19:13'),
(281, 46, 118, 1, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(282, 46, 118, 2, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(283, 46, 118, 3, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(284, 46, 118, 4, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(285, 46, 118, 5, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(286, 46, 118, 6, '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(287, 49, 127, 1, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(288, 49, 127, 2, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(289, 49, 127, 3, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(290, 49, 127, 4, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(291, 49, 127, 5, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(292, 49, 127, 6, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(293, 49, 127, 7, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(294, 49, 127, 11, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(295, 49, 127, 12, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(296, 49, 127, 13, '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(297, 50, 130, 8, '2023-07-01 05:58:05', '2023-07-01 05:58:05'),
(298, 50, 130, 9, '2023-07-01 05:58:05', '2023-07-01 05:58:05'),
(299, 50, 130, 10, '2023-07-01 05:58:05', '2023-07-01 05:58:05'),
(300, 49, 128, 1, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(301, 49, 128, 2, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(302, 49, 128, 3, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(303, 49, 128, 4, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(304, 49, 128, 5, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(305, 49, 128, 6, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(306, 49, 128, 7, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(307, 49, 128, 11, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(308, 49, 128, 12, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(309, 49, 128, 13, '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(310, 50, 131, 8, '2023-07-02 10:39:00', '2023-07-02 10:39:00'),
(311, 50, 131, 9, '2023-07-02 10:39:00', '2023-07-02 10:39:00'),
(312, 50, 131, 10, '2023-07-02 10:39:00', '2023-07-02 10:39:00'),
(313, 51, 133, 8, '2023-07-04 09:24:26', '2023-07-04 09:24:26'),
(314, 51, 133, 9, '2023-07-04 09:24:26', '2023-07-04 09:24:26'),
(315, 51, 133, 10, '2023-07-04 09:24:26', '2023-07-04 09:24:26'),
(316, 52, 136, 1, '2023-07-04 09:27:29', '2023-07-04 09:27:29'),
(317, 52, 136, 2, '2023-07-04 09:27:29', '2023-07-04 09:27:29'),
(318, 53, 139, 3, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(319, 53, 139, 4, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(320, 53, 139, 5, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(321, 53, 139, 6, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(322, 53, 139, 7, '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(323, 53, 140, 1, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(324, 53, 140, 3, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(325, 53, 140, 4, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(326, 53, 140, 5, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(327, 53, 140, 6, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(328, 53, 140, 7, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(329, 53, 140, 8, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(330, 53, 140, 9, '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(331, 54, 142, 11, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(332, 54, 142, 12, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(333, 54, 142, 13, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(334, 54, 142, 14, '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(335, 55, 144, 16, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(336, 55, 144, 17, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(337, 55, 144, 18, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(338, 55, 144, 19, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(339, 55, 144, 20, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(340, 55, 144, 21, '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(341, 51, 134, 1, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(342, 51, 134, 2, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(343, 51, 134, 3, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(344, 51, 134, 4, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(345, 51, 134, 6, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(346, 51, 134, 7, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(347, 51, 134, 9, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(348, 51, 134, 10, '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(349, 52, 137, 2, '2023-07-05 14:31:56', '2023-07-05 14:31:56'),
(350, 52, 137, 5, '2023-07-05 14:31:56', '2023-07-05 14:31:56'),
(351, 52, 137, 6, '2023-07-05 14:31:56', '2023-07-05 14:31:56'),
(352, 52, 137, 7, '2023-07-05 14:31:56', '2023-07-05 14:31:56'),
(353, 52, 137, 8, '2023-07-05 14:31:56', '2023-07-05 14:31:56'),
(354, 52, 137, 10, '2023-07-05 14:31:56', '2023-07-05 14:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `teetimes`
--

CREATE TABLE `teetimes` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `round_id` int(11) DEFAULT NULL,
  `teetime_group_id` int(11) DEFAULT NULL,
  `tee` int(11) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teetimes`
--

INSERT INTO `teetimes` (`id`, `course_id`, `round_id`, `teetime_group_id`, `tee`, `time`, `createdAt`, `updatedAt`) VALUES
(49, 2, 5, 49, 1, '07:10', '2023-02-10 07:09:45', '2023-02-10 07:09:45'),
(50, 2, 5, 50, 1, '07:21', '2023-02-10 07:09:45', '2023-02-10 07:09:45'),
(51, 2, 5, 51, 1, '07:32', '2023-02-10 07:09:45', '2023-02-10 07:09:45'),
(52, 4, 12, 52, 1, '07:10', '2023-02-13 07:24:18', '2023-02-13 07:24:18'),
(53, 4, 12, 53, 1, '07:21', '2023-02-13 07:24:18', '2023-02-13 07:24:18'),
(54, 4, 12, 54, 1, '07:32', '2023-02-13 07:24:18', '2023-02-13 07:24:18'),
(55, 8, 26, 55, 1, '01:02', '2023-02-20 09:43:31', '2023-07-14 06:40:09'),
(56, 8, 26, 56, 1, '08:00', '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(57, 8, 26, 57, 1, '08:09', '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(58, 8, 26, 58, 1, '12:21', '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(59, 8, 26, 59, 1, '12:30', '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(60, 8, 26, 60, 1, '12:39', '2023-02-20 09:43:31', '2023-02-20 09:43:31'),
(61, 9, 30, 61, 1, '06:30', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(62, 9, 30, 62, 1, '06:39', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(63, 9, 30, 63, 1, '06:48', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(64, 9, 30, 64, 1, '06:57', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(65, 9, 30, 65, 1, '07:06', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(66, 9, 30, 66, 1, '7:15', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(67, 9, 30, 67, 1, '7:33', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(68, 9, 30, 68, 1, '7:42', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(69, 9, 30, 69, 10, '06:30', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(70, 9, 30, 70, 10, '06:39', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(71, 9, 30, 71, 10, '06:48', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(72, 9, 30, 72, 10, '06:57', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(73, 9, 30, 73, 10, '07:06', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(74, 9, 30, 74, 10, '07:15', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(75, 9, 30, 75, 10, '07:33', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(76, 9, 30, 76, 10, '07:42', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(77, 9, 30, 77, 10, '07:51', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(78, 9, 30, 78, 10, '08:00', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(79, 9, 30, 79, 10, '08:09', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(80, 9, 30, 80, 1, '11:00', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(81, 9, 30, 81, 1, '11:09', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(82, 9, 30, 82, 1, '11:18', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(83, 9, 30, 83, 1, '11:27', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(84, 9, 30, 84, 1, '11:36', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(85, 9, 30, 85, 1, '11:45', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(86, 9, 30, 86, 1, '12:03', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(87, 9, 30, 87, 1, '12:12', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(88, 9, 30, 88, 10, '11:00', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(89, 9, 30, 89, 10, '11:09', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(90, 9, 30, 90, 10, '11:18', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(91, 9, 30, 91, 10, '11:27', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(92, 9, 30, 92, 10, '11:36', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(93, 9, 30, 93, 10, '11:45', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(94, 9, 30, 94, 10, '12:03', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(95, 9, 30, 95, 10, '12:12', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(96, 9, 30, 96, 10, '12:21', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(97, 9, 30, 97, 10, '12:30', '2023-02-20 10:31:13', '2023-02-20 10:31:13'),
(98, 8, 28, 98, 10, '00:00', '2023-02-21 13:38:42', '2023-07-18 02:31:04'),
(99, 8, 28, 99, 10, '11:55', '2023-02-21 13:38:42', '2023-07-18 02:31:13'),
(100, 8, 28, 100, 10, '15:07', '2023-02-21 13:38:42', '2023-07-18 02:31:19'),
(101, 8, 28, 101, 10, '12:12', '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(102, 8, 28, 102, 10, '12:21', '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(103, 8, 28, 103, 10, '12:30', '2023-02-21 13:38:42', '2023-02-21 13:38:42'),
(104, 9, 32, 104, 1, '06:30', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(105, 9, 32, 105, 1, '06:39', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(106, 9, 32, 106, 1, '06:48', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(107, 9, 32, 107, 1, '06:57', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(108, 9, 32, 108, 1, '07:06', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(109, 9, 32, 109, 1, '07:15', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(110, 9, 32, 110, 1, '07:24', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(111, 9, 32, 111, 1, '07:33', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(112, 9, 32, 112, 1, '07:42', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(113, 9, 32, 113, 1, '07:51', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(114, 9, 32, 114, 10, '06:30', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(115, 9, 32, 115, 10, '06:39', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(116, 9, 32, 116, 10, '06:48', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(117, 9, 32, 117, 10, '06:57', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(118, 9, 32, 118, 10, '07:06', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(119, 9, 32, 119, 10, '07:15', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(120, 9, 32, 120, 10, '07:24', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(121, 9, 32, 121, 10, '07:33', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(122, 9, 32, 122, 1, '11:00', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(123, 9, 32, 123, 1, '11:09', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(124, 9, 32, 124, 1, '11:18', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(125, 9, 32, 125, 1, '11:27', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(126, 9, 32, 126, 1, '11:36', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(127, 9, 32, 127, 1, '11:45', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(128, 9, 32, 128, 1, '11:54', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(129, 9, 32, 129, 1, '12:03', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(130, 9, 32, 130, 1, '12:12', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(131, 9, 32, 131, 1, '12:21', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(132, 9, 32, 132, 10, '11:00', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(133, 9, 32, 133, 10, '11:09', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(134, 9, 32, 134, 10, '11:18', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(135, 9, 32, 135, 10, '11:27', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(136, 9, 32, 136, 10, '11:36', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(137, 9, 32, 137, 10, '11:45', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(138, 9, 32, 138, 10, '11:54', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(139, 9, 32, 139, 10, '12:03', '2023-02-21 14:14:29', '2023-02-21 14:14:29'),
(140, 8, 27, 140, 10, '08:18', '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(141, 8, 27, 141, 10, '08:27', '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(142, 8, 27, 142, 10, '08:36', '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(143, 8, 27, 143, 10, '08:45', '2023-02-22 13:40:11', '2023-02-22 13:40:11'),
(144, 9, 31, 144, 1, '07:15', '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(145, 9, 31, 145, 1, '07:24', '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(146, 9, 31, 146, 1, '07:33', '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(147, 9, 31, 147, 1, '07:42', '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(148, 9, 31, 148, 1, '07:51', '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(149, 9, 31, 149, 1, '08:00', '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(150, 9, 31, 150, 1, '08:09', '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(151, 9, 31, 151, 1, '08:18', '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(152, 9, 31, 152, 1, '08:27', '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(153, 9, 31, 153, 1, '08:36', '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(154, 9, 31, 154, 10, '07:15', '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(155, 9, 31, 155, 10, '07:24', '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(156, 9, 31, 156, 10, '07:33', '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(157, 9, 31, 157, 10, '07:42', '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(158, 9, 31, 158, 10, '07:51', '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(159, 9, 31, 159, 10, '08:00', '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(160, 9, 31, 160, 10, '08:09', '2023-02-22 13:44:24', '2023-02-22 13:44:24'),
(161, 8, 29, 161, 10, '08:03', '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(162, 8, 29, 162, 10, '08:12', '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(163, 8, 29, 163, 10, '08:21', '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(164, 8, 29, 164, 10, '08:30', '2023-02-23 15:34:02', '2023-02-23 15:34:02'),
(165, 9, 33, 165, 1, '07:00', '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(166, 9, 33, 166, 1, '07:09', '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(167, 9, 33, 167, 1, '07:18', '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(168, 9, 33, 168, 1, '07:27', '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(169, 9, 33, 169, 1, '07:36', '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(170, 9, 33, 170, 1, '07:45', '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(171, 9, 33, 171, 1, '07:54', '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(172, 9, 33, 172, 1, '08:03', '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(173, 9, 33, 173, 1, '08:12', '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(174, 9, 33, 174, 1, '08:21', '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(175, 9, 33, 175, 10, '07:00', '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(176, 9, 33, 176, 10, '07:09', '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(177, 9, 33, 177, 10, '07:18', '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(178, 9, 33, 178, 10, '07:27', '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(179, 9, 33, 179, 10, '07:36', '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(180, 9, 33, 180, 10, '07:45', '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(181, 9, 33, 181, 10, '07:54', '2023-02-23 15:36:39', '2023-02-23 15:36:39'),
(182, 14, 51, 182, 1, '7:00', '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(183, 14, 51, 183, 1, '7:08', '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(184, 14, 51, 184, 1, '7:16', '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(185, 14, 51, 185, 1, '7:24', '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(186, 14, 51, 186, 1, '7:32', '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(187, 14, 51, 187, 1, '7:40', '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(188, 14, 51, 188, 1, '7:48', '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(189, 14, 51, 189, 1, '7:56', '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(190, 14, 51, 190, 1, '8:04', '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(191, 14, 51, 191, 1, '8:12', '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(192, 14, 51, 192, 1, '8:20', '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(193, 14, 51, 193, 1, '8:28', '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(194, 14, 51, 194, 1, '8:36', '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(195, 14, 51, 195, 1, '8:44', '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(196, 14, 51, 196, 10, '6:56', '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(197, 14, 51, 197, 10, '7:04', '2023-04-26 10:00:35', '2023-04-26 10:00:35'),
(198, 13, 49, 198, 10, '7:04', '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(199, 13, 49, 199, 10, '7:12', '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(200, 13, 49, 200, 10, '7:20', '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(201, 13, 49, 201, 10, '7:28', '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(202, 13, 49, 202, 10, '7:36', '2023-04-26 10:03:00', '2023-04-26 10:03:00'),
(203, 15, 53, 203, 10, '7:44', '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(204, 15, 53, 204, 10, '8:24', '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(205, 15, 53, 205, 10, '8:32', '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(206, 15, 53, 206, 10, '8:40', '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(207, 15, 53, 207, 10, '8:48', '2023-04-26 10:04:18', '2023-04-26 10:04:18'),
(208, 16, 55, 208, 10, '7:44', '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(209, 16, 55, 209, 10, '7:52', '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(210, 16, 55, 210, 10, '8:00', '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(211, 16, 55, 211, 10, '8:08', '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(212, 16, 55, 212, 10, '8:16', '2023-04-26 10:05:11', '2023-04-26 10:05:11'),
(213, 14, 52, 213, 1, '7:04', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(214, 14, 52, 214, 1, '7:12', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(215, 14, 52, 215, 1, '7:20', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(216, 14, 52, 216, 1, '7:28', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(217, 14, 52, 217, 1, '7:36', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(218, 14, 52, 218, 1, '7:44', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(219, 14, 52, 219, 1, '7:52', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(220, 14, 52, 220, 1, '8:00', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(221, 14, 52, 221, 1, '8:08', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(222, 14, 52, 222, 1, '8:16', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(223, 14, 52, 223, 1, '8:24', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(224, 14, 52, 224, 1, '8:32', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(225, 14, 52, 225, 1, '8:40', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(226, 14, 52, 226, 1, '8:48', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(227, 14, 52, 227, 10, '7:00', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(228, 14, 52, 228, 10, '7:08', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(229, 14, 52, 229, 10, '7:16', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(230, 14, 52, 230, 10, '7:24', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(231, 14, 52, 231, 10, '7:32', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(232, 14, 52, 232, 10, '8:52', '2023-04-27 10:13:23', '2023-04-27 10:13:23'),
(233, 13, 50, 233, 1, '7:04', '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(234, 13, 50, 234, 1, '7:12', '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(235, 13, 50, 235, 1, '7:20', '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(236, 13, 50, 236, 1, '7:52', '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(237, 13, 50, 237, 1, '8:08', '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(238, 13, 50, 238, 1, '8:16', '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(239, 13, 50, 239, 1, '8:32', '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(240, 13, 50, 240, 1, '8:40', '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(241, 13, 50, 241, 10, '7:08', '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(242, 13, 50, 242, 10, '7:16', '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(243, 13, 50, 243, 10, '7:24', '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(244, 13, 50, 244, 10, '7:32', '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(245, 13, 50, 245, 10, '8:52', '2023-04-27 10:28:30', '2023-04-27 10:28:30'),
(246, 16, 56, 246, 10, '7:48', '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(247, 16, 56, 247, 10, '7:56', '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(248, 16, 56, 248, 10, '8:04', '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(249, 16, 56, 249, 10, '8:12', '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(250, 16, 56, 250, 10, '8:20', '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(251, 16, 56, 251, 10, '8:28', '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(252, 16, 56, 252, 10, '8:36', '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(253, 16, 56, 253, 10, '8:44', '2023-04-27 10:29:47', '2023-04-27 10:29:47'),
(254, 15, 54, 254, 10, '7:40', '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(255, 15, 54, 255, 10, '7:48', '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(256, 15, 54, 256, 10, '7:56', '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(257, 15, 54, 257, 10, '8:04', '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(258, 15, 54, 258, 10, '8:20', '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(259, 15, 54, 259, 10, '8:28', '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(260, 15, 54, 260, 10, '8:36', '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(261, 15, 54, 261, 10, '8:52', '2023-04-27 10:30:17', '2023-04-27 10:30:17'),
(262, 19, 63, 262, 1, '07:10', '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(263, 19, 63, 263, 1, '07:21', '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(264, 19, 63, 264, 1, '07:32', '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(265, 19, 63, 265, 1, '07:43', '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(266, 19, 63, 266, 1, '07:54', '2023-05-23 04:24:01', '2023-05-23 04:24:01'),
(267, 20, 67, 267, 10, '7:44', '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(268, 20, 67, 268, 10, '8:24', '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(269, 20, 67, 269, 10, '8:32', '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(270, 20, 67, 270, 10, '8:40', '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(271, 20, 67, 271, 10, '8:48', '2023-05-23 04:49:03', '2023-05-23 04:49:03'),
(272, 21, 69, 272, 10, '7:04', '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(273, 21, 69, 273, 10, '7:12', '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(274, 21, 69, 274, 10, '7:20', '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(275, 21, 69, 275, 10, '7:28', '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(276, 21, 69, 276, 10, '7:36', '2023-05-31 02:47:36', '2023-05-31 02:47:36'),
(277, 48, 124, 277, 10, '07:40', '2023-06-27 09:18:14', '2023-06-27 09:18:14'),
(278, 48, 124, 278, 10, '07:40', '2023-06-27 09:18:14', '2023-06-27 09:18:14'),
(279, 47, 121, 279, 10, '07:45', '2023-06-27 09:19:13', '2023-06-27 09:19:13'),
(280, 47, 121, 280, 10, '07:48', '2023-06-27 09:19:13', '2023-06-27 09:19:13'),
(281, 46, 118, 281, 1, '07:30', '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(282, 46, 118, 282, 1, '07:35', '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(283, 46, 118, 283, 1, '07:40', '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(284, 46, 118, 284, 1, '07:45', '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(285, 46, 118, 285, 1, '07:50', '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(286, 46, 118, 286, 1, '08:00', '2023-06-27 09:19:24', '2023-06-27 09:19:24'),
(287, 49, 127, 287, 1, '07:00', '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(288, 49, 127, 288, 1, '07:10', '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(289, 49, 127, 289, 1, '07:20', '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(290, 49, 127, 290, 1, '07:30', '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(291, 49, 127, 291, 1, '07:40', '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(292, 49, 127, 292, 1, '07:50', '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(293, 49, 127, 293, 1, '08:00', '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(294, 49, 127, 294, 10, '07:30', '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(295, 49, 127, 295, 10, '07:40', '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(296, 49, 127, 296, 10, '07:50', '2023-07-01 05:55:14', '2023-07-01 05:55:14'),
(297, 50, 130, 297, 10, '07:00', '2023-07-01 05:58:05', '2023-07-01 05:58:05'),
(298, 50, 130, 298, 10, '07:10', '2023-07-01 05:58:05', '2023-07-01 05:58:05'),
(299, 50, 130, 299, 10, '07:20', '2023-07-01 05:58:05', '2023-07-01 05:58:05'),
(300, 49, 128, 300, 1, '07:00', '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(301, 49, 128, 301, 1, '07:10', '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(302, 49, 128, 302, 1, '07:20', '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(303, 49, 128, 303, 1, '07:30', '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(304, 49, 128, 304, 1, '07:40', '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(305, 49, 128, 305, 1, '07:50', '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(306, 49, 128, 306, 1, '08:00', '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(307, 49, 128, 307, 10, '07:30', '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(308, 49, 128, 308, 10, '07:40', '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(309, 49, 128, 309, 10, '07:50', '2023-07-02 10:36:50', '2023-07-02 10:36:50'),
(310, 50, 131, 310, 10, '07:00', '2023-07-02 10:39:00', '2023-07-02 10:39:00'),
(311, 50, 131, 311, 10, '07:10', '2023-07-02 10:39:00', '2023-07-02 10:39:00'),
(312, 50, 131, 312, 10, '07:20', '2023-07-02 10:39:00', '2023-07-02 10:39:00'),
(313, 51, 133, 313, 1, '08:10', '2023-07-04 09:24:26', '2023-07-04 09:24:26'),
(314, 51, 133, 314, 1, '08:20', '2023-07-04 09:24:26', '2023-07-04 09:24:26'),
(315, 51, 133, 315, 1, '08:30', '2023-07-04 09:24:26', '2023-07-04 09:24:26'),
(316, 52, 136, 316, 1, '07:00', '2023-07-04 09:27:29', '2023-07-04 09:27:29'),
(317, 52, 136, 317, 1, '07:10', '2023-07-04 09:27:29', '2023-07-04 09:27:29'),
(318, 53, 139, 318, 1, '07:20', '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(319, 53, 139, 319, 1, '07:30', '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(320, 53, 139, 320, 1, '07:40', '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(321, 53, 139, 321, 1, '07:50', '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(322, 53, 139, 322, 1, '08:00', '2023-07-04 09:35:56', '2023-07-04 09:35:56'),
(323, 53, 140, 323, 1, '07:00', '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(324, 53, 140, 324, 1, '07:20', '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(325, 53, 140, 325, 1, '07:30', '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(326, 53, 140, 326, 1, '07:40', '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(327, 53, 140, 327, 1, '07:50', '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(328, 53, 140, 328, 1, '08:00', '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(329, 53, 140, 329, 1, '08:10', '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(330, 53, 140, 330, 1, '08:20', '2023-07-05 14:22:09', '2023-07-05 14:22:09'),
(331, 54, 142, 331, 10, '07:00', '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(332, 54, 142, 332, 10, '07:10', '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(333, 54, 142, 333, 10, '07:20', '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(334, 54, 142, 334, 10, '07:30', '2023-07-05 14:25:50', '2023-07-05 14:25:50'),
(335, 55, 144, 335, 10, '07:50', '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(336, 55, 144, 336, 10, '08:00', '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(337, 55, 144, 337, 10, '08:10', '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(338, 55, 144, 338, 10, '08:20', '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(339, 55, 144, 339, 10, '08:30', '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(340, 55, 144, 340, 10, '08:40', '2023-07-05 14:29:39', '2023-07-05 14:29:39'),
(341, 51, 134, 341, 1, '07:00', '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(342, 51, 134, 342, 1, '07:10', '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(343, 51, 134, 343, 1, '07:20', '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(344, 51, 134, 344, 1, '07:30', '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(345, 51, 134, 345, 1, '07:50', '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(346, 51, 134, 346, 1, '08:00', '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(347, 51, 134, 347, 1, '08:20', '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(348, 51, 134, 348, 1, '08:30', '2023-07-05 14:30:44', '2023-07-05 14:30:44'),
(349, 52, 137, 349, 1, '07:10', '2023-07-05 14:31:56', '2023-07-05 14:31:56'),
(350, 52, 137, 350, 1, '07:40', '2023-07-05 14:31:56', '2023-07-05 14:31:56'),
(351, 52, 137, 351, 1, '07:50', '2023-07-05 14:31:56', '2023-07-05 14:31:56'),
(352, 52, 137, 352, 1, '08:00', '2023-07-05 14:31:56', '2023-07-05 14:31:56'),
(353, 52, 137, 353, 1, '08:10', '2023-07-05 14:31:56', '2023-07-05 14:31:56'),
(354, 52, 137, 354, 1, '08:30', '2023-07-05 14:31:56', '2023-07-05 14:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `blacklisted` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `user_id`, `type`, `blacklisted`, `createdAt`, `updatedAt`) VALUES
(249, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTY4NTM0MDg5MSwiZXhwIjoxNjg3OTMyODkxLCJ0eXBlIjoicmVmcmVzaCJ9.73q35sFLFjJADPnhJeDr2aw1HneZiIc7Hrdk0iVa44c', NULL, 'refresh', 0, '2023-05-29 06:14:51', '2023-05-29 06:14:51'),
(250, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTY5MDE4NTEwMywiZXhwIjoyMDUwMTg1MTAzLCJ0eXBlIjoiYWNjZXNzIiwicm9sZSI6ImFkbWluIn0.cW-ydup1hnybWTywL3S1ioZsGPvdDSRi2JYG26X74OA', 1, 'access', 0, '2023-05-29 06:44:26', '2023-07-24 07:51:43'),
(251, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE1MSwiaWF0IjoxNjg1MzQ2NDY4LCJleHAiOjE2ODU3Nzg0NjgsInR5cGUiOiJhY2Nlc3MifQ.BNSfvdK35fH75PM6wHY7mAFM7c5YZT-o63SYhEXWvbY', 151, 'access', 0, '2023-05-29 07:47:48', '2023-05-29 07:47:48'),
(252, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE3MCwiaWF0IjoxNjg1NTQ5NzY0LCJleHAiOjE2ODU5ODE3NjQsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY2FkZGllIn0.xWfQQF-VV69EzRCMF_6OD15A0pi4FmHofnzMjvE-xec', 170, 'access', 0, '2023-05-29 07:49:46', '2023-05-31 16:16:04'),
(253, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE3MiwiaWF0IjoxNjg1NDk5NjczLCJleHAiOjE2ODU5MzE2NzMsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY2FkZGllIn0.eWToQN5YjSYtj-JVnfiHXd9qEPDR3QLCsIDtam0fl_A', 172, 'access', 0, '2023-05-31 02:21:13', '2023-05-31 02:21:13'),
(255, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI2MCwiaWF0IjoxNjg1NTUxNzUxLCJleHAiOjE2ODU5ODM3NTEsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY2FkZGllIn0.D6dyfePX7RAV1gFcQMvXtAyrYo2bVxGZYcyEmoXUiv0', 260, 'access', 0, '2023-05-31 16:49:11', '2023-05-31 16:49:11'),
(256, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI4NCwiaWF0IjoxNjg1NTUxODQ0LCJleHAiOjE2ODU5ODM4NDQsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY2FkZGllIn0.ZHeN0bvXixeA2WMQ2lqlsRX7j0G4LlkOCwdifnjyolc', 284, 'access', 0, '2023-05-31 16:50:44', '2023-05-31 16:50:44'),
(257, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE5NywiaWF0IjoxNjg1NjQwMTM3LCJleHAiOjE2ODYwNzIxMzcsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY2FkZGllIn0.1wqiwiM9gf70bIGM6m2eGjEcmmoWMSuQ440HAHLD_5Y', 197, 'access', 0, '2023-05-31 17:06:31', '2023-06-01 17:22:17'),
(258, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjMwNiwiaWF0IjoxNjg1NTk1Njg5LCJleHAiOjE2ODYwMjc2ODksInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY2FkZGllIn0.Zaefvg3TARtt2PT9ylaR0RCB9LO9_H5IvUgn6rt6l8o', 306, 'access', 0, '2023-06-01 02:40:33', '2023-06-01 05:01:29'),
(259, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEzNCwiaWF0IjoxNjg2ODE5NjExLCJleHAiOjE2ODcyNTE2MTEsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY2FkZGllIn0.w0juKsoppvUy8rLXpFBy7P99iEsl7gSW9K4UNWA7X6k', 134, 'access', 0, '2023-06-01 03:23:21', '2023-06-15 09:00:11'),
(260, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjM0OCwiaWF0IjoxNjg1NTk1NzQzLCJleHAiOjE2ODYwMjc3NDMsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY2FkZGllIn0.K9Q8OAZUg1mOULyLXXkSIlDgfE86Ul_94C-PVBdRRkw', 348, 'access', 0, '2023-06-01 04:58:43', '2023-06-01 05:02:23'),
(262, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjM4MywiaWF0IjoxNjg1NjAwNjg4LCJleHAiOjE2ODYwMzI2ODgsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY2FkZGllIn0.tcER0UX91gFs0jngDLncPNdw8aQfUBMHP0L7_5gGwF0', 383, 'access', 0, '2023-06-01 06:24:48', '2023-06-01 06:24:48'),
(263, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjM5MSwiaWF0IjoxNjg1NjQwMDYzLCJleHAiOjE2ODYwNzIwNjMsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY2FkZGllIn0.HZGV_zBjmoaQlU-hPZBJWxu2b-gk7j5FhSGljMU7f5c', 391, 'access', 0, '2023-06-01 16:35:59', '2023-06-01 17:21:03'),
(264, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE5OCwiaWF0IjoxNjg1NjM4NzgyLCJleHAiOjE2ODYwNzA3ODIsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY2FkZGllIn0.TsxW2t9MNFLWJxzJucgO37R7DdzYHLjXZcFFObwJpXU', 198, 'access', 0, '2023-06-01 16:38:39', '2023-06-01 16:59:42'),
(265, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjM5MywiaWF0IjoxNjg1NjcxMTM1LCJleHAiOjE2ODYxMDMxMzUsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY2FkZGllIn0.F92HRffJPBqVNvCDnfZgxCoRwCGcjKmfdMYxmVEZcSM', 393, 'access', 0, '2023-06-01 17:16:38', '2023-06-02 01:58:55'),
(266, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjM5NCwiaWF0IjoxNjg2ODIwNTM3LCJleHAiOjE2ODcyNTI1MzcsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY2FkZGllIn0.L-VnEvlT9w7yyBj7z3GHYYe7d5_oRlFstTuLQ8b4-14', 394, 'access', 0, '2023-06-15 09:15:37', '2023-06-15 09:15:37'),
(267, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQzNCwiaWF0IjoxNjg2ODgwNDQxLCJleHAiOjE2ODczMTI0NDEsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY2FkZGllIn0.qhEyogg-s7xk_emUcaYyDRKRB78fquk2qpFd1GEhTlc', 434, 'access', 0, '2023-06-16 01:54:01', '2023-06-16 01:54:01'),
(268, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ1MiwiaWF0IjoxNjg2ODg2OTEwLCJleHAiOjE2ODczMTg5MTAsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY2FkZGllIn0.kJkXuvsTNuCK7rFgLfhak6XrS6S5pRCdGuqkAaKjkcA', 452, 'access', 0, '2023-06-16 03:41:50', '2023-06-16 03:41:50'),
(269, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MCwiaWF0IjoxNjg3NDk1NjczLCJleHAiOjE2OTAwODc2NzMsInR5cGUiOiJyZWZyZXNoIn0.yO-UAl7XsSmMk_vKm7uk6XNe9JmIHB6KExyfK6B0cIU', NULL, 'refresh', 0, '2023-06-23 04:47:53', '2023-06-23 04:47:53'),
(270, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MCwiaWF0IjoxNjg4NDUwMDc4LCJleHAiOjE2ODkwNTAwNzgsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiYWRtaW4ifQ.wa1yQDJc07lHNAsM7cfDNJeC_apsXNR0Ic1T_j8PnM0', 470, 'access', 0, '2023-06-23 05:04:34', '2023-07-04 05:54:38'),
(271, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MSwiaWF0IjoxNjg3ODUwMzQ2LCJleHAiOjE2ODg0NTAzNDYsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY291cnNlX3VzZXIifQ.13TUox_EGAWSJvWZBX_W2BVx5KZSq9IAkZzaiZem-i0', 471, 'access', 0, '2023-06-23 05:06:05', '2023-06-27 07:19:06'),
(272, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MCwiaWF0IjoxNjg3NDk4NDYxLCJleHAiOjE2OTAwOTA0NjEsInR5cGUiOiJyZWZyZXNoIn0.7xohQew1njDTHfLoK2sE7GHzIil7Wa_j0QA9t4ZvtJc', NULL, 'refresh', 0, '2023-06-23 05:34:21', '2023-06-23 05:34:21'),
(273, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MCwiaWF0IjoxNjg3NDk4NjAxLCJleHAiOjE2OTAwOTA2MDEsInR5cGUiOiJyZWZyZXNoIn0.foRUT0hYqhI5f0SbCvm3sPqqrf-GwH2c-sqarjorMXE', NULL, 'refresh', 0, '2023-06-23 05:36:41', '2023-06-23 05:36:41'),
(274, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MCwiaWF0IjoxNjg3NDk4OTYwLCJleHAiOjE2OTAwOTA5NjAsInR5cGUiOiJyZWZyZXNoIn0.MaH_3Vi92rMkFgyMlhpMjEO7-qAd913ONk-31Bbn7LY', NULL, 'refresh', 0, '2023-06-23 05:42:40', '2023-06-23 05:42:40'),
(275, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MCwiaWF0IjoxNjg3NDk4OTc3LCJleHAiOjE2OTAwOTA5NzcsInR5cGUiOiJyZWZyZXNoIn0.WfqB6QtjkrIXA2uB1n9uuhKTdi0nAwHtOM25ABp89IU', NULL, 'refresh', 0, '2023-06-23 05:42:57', '2023-06-23 05:42:57'),
(276, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MCwiaWF0IjoxNjg3NDk5MDk1LCJleHAiOjE2OTAwOTEwOTUsInR5cGUiOiJyZWZyZXNoIn0.XUlthu7qfXN-M8kSEb_MgHNH2p9CtVIjDkGIzNxu5Y4', NULL, 'refresh', 0, '2023-06-23 05:44:55', '2023-06-23 05:44:55'),
(277, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MCwiaWF0IjoxNjg3NDk5MzM2LCJleHAiOjE2OTAwOTEzMzYsInR5cGUiOiJyZWZyZXNoIn0.NhOWDdLW7dRz5C_DkFFSbr93yfO_GaN3eSQOFLSFyxI', NULL, 'refresh', 0, '2023-06-23 05:48:56', '2023-06-23 05:48:56'),
(278, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MCwiaWF0IjoxNjg3NDk5MzM2LCJleHAiOjE2OTAwOTEzMzYsInR5cGUiOiJyZWZyZXNoIn0.NhOWDdLW7dRz5C_DkFFSbr93yfO_GaN3eSQOFLSFyxI', NULL, 'refresh', 0, '2023-06-23 05:48:56', '2023-06-23 05:48:56'),
(279, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MCwiaWF0IjoxNjg3NDk5MzM2LCJleHAiOjE2OTAwOTEzMzYsInR5cGUiOiJyZWZyZXNoIn0.NhOWDdLW7dRz5C_DkFFSbr93yfO_GaN3eSQOFLSFyxI', NULL, 'refresh', 0, '2023-06-23 05:48:56', '2023-06-23 05:48:56'),
(280, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MCwiaWF0IjoxNjg3NDk5MzM2LCJleHAiOjE2OTAwOTEzMzYsInR5cGUiOiJyZWZyZXNoIn0.NhOWDdLW7dRz5C_DkFFSbr93yfO_GaN3eSQOFLSFyxI', NULL, 'refresh', 0, '2023-06-23 05:48:56', '2023-06-23 05:48:56'),
(281, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MCwiaWF0IjoxNjg3NDk5MzM2LCJleHAiOjE2OTAwOTEzMzYsInR5cGUiOiJyZWZyZXNoIn0.NhOWDdLW7dRz5C_DkFFSbr93yfO_GaN3eSQOFLSFyxI', NULL, 'refresh', 0, '2023-06-23 05:48:56', '2023-06-23 05:48:56'),
(282, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MCwiaWF0IjoxNjg3NDk5NDQyLCJleHAiOjE2OTAwOTE0NDIsInR5cGUiOiJyZWZyZXNoIn0.z3XFDgMW9pmB4xJ77_g9ImsSFgRYz3vo5ChiBj5Sh8c', NULL, 'refresh', 0, '2023-06-23 05:50:42', '2023-06-23 05:50:42'),
(283, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MCwiaWF0IjoxNjg3NDk5NTYyLCJleHAiOjE2OTAwOTE1NjIsInR5cGUiOiJyZWZyZXNoIn0.bslX7UChn48N1lFYZKyffjFc8rMmS9H-2h_sQqEBRDk', NULL, 'refresh', 0, '2023-06-23 05:52:42', '2023-06-23 05:52:42'),
(284, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MCwiaWF0IjoxNjg3NTAwMzI5LCJleHAiOjE2OTAwOTIzMjksInR5cGUiOiJyZWZyZXNoIn0.RNU2nRuLRBuE5F1vEXG_xNXN1x2dq8wSCudM8gVZVO8', NULL, 'refresh', 0, '2023-06-23 06:05:29', '2023-06-23 06:05:29'),
(285, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MCwiaWF0IjoxNjg3NTAxMDA4LCJleHAiOjE2OTAwOTMwMDgsInR5cGUiOiJyZWZyZXNoIn0.UGfN7TsTxGeL5lUfcBHjAjCXK46REyJqwIh5udXzjb8', NULL, 'refresh', 0, '2023-06-23 06:16:48', '2023-06-23 06:16:48'),
(286, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTY4NzUwMTcwNywiZXhwIjoxNjkwMDkzNzA3LCJ0eXBlIjoicmVmcmVzaCJ9.cGh0VC8MzJj83ZYluXs9ZYuv613J9oLd_Io0K8RYEv0', NULL, 'refresh', 0, '2023-06-23 06:28:27', '2023-06-23 06:28:27'),
(287, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTY4NzUwMTc3NSwiZXhwIjoxNjkwMDkzNzc1LCJ0eXBlIjoicmVmcmVzaCJ9.W3YdaWRn3wBV4fgLAHtIMY3S6du6J25l6h1nbH8OwFQ', NULL, 'refresh', 0, '2023-06-23 06:29:35', '2023-06-23 06:29:35'),
(288, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTY4NzUwMTg3NiwiZXhwIjoxNjkwMDkzODc2LCJ0eXBlIjoicmVmcmVzaCJ9.svIEOEYyLpLwXZfKhe8EbLncLg2ff_gpdfay1fnh8Xo', NULL, 'refresh', 0, '2023-06-23 06:31:16', '2023-06-23 06:31:16'),
(289, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTY4NzUwMTk1MiwiZXhwIjoxNjkwMDkzOTUyLCJ0eXBlIjoicmVmcmVzaCJ9.21kxM1iKzaAqkqHVgmmc6vbFCsONZ2TiUh4s8W6ijYk', NULL, 'refresh', 0, '2023-06-23 06:32:32', '2023-06-23 06:32:32'),
(290, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MCwiaWF0IjoxNjg3NTAxOTY4LCJleHAiOjE2OTAwOTM5NjgsInR5cGUiOiJyZWZyZXNoIn0.RoPkB7MYtFFLmE1LT51jqFdULcPRzMQqaV6k2Xlr0ak', NULL, 'refresh', 0, '2023-06-23 06:32:48', '2023-06-23 06:32:48'),
(291, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQ3MiwiaWF0IjoxNjg3NjYwMjA2LCJleHAiOjE2ODgyNjAyMDYsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY291cnNlX3VzZXIifQ.nZ4YbEtRdFbjrE6yQ8PNsj13jZhiQYKwSoq-IsmmtSg', 472, 'access', 0, '2023-06-23 15:12:50', '2023-06-25 02:30:06'),
(292, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjc4OSwiaWF0IjoxNjg3ODQ5Mjk1LCJleHAiOjE2ODg0NDkyOTUsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY291cnNlX3VzZXIifQ.avwQkEGx6tSUhRVcGDN4LgP8fqTnmUqgxTOm1EST3bo', 789, 'access', 0, '2023-06-27 07:01:35', '2023-06-27 07:01:35'),
(293, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjc5MSwiaWF0IjoxNjg3ODUwMzYzLCJleHAiOjE2ODg0NTAzNjMsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY291cnNlX3VzZXIifQ.AnGWBkWUTIT_W0hgeeo1GUgY5QT1gr1bXqN-Obt8FuQ', 791, 'access', 0, '2023-06-27 07:19:23', '2023-06-27 07:19:23'),
(294, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjc5MiwiaWF0IjoxNjg3ODU1OTE2LCJleHAiOjE2ODg0NTU5MTYsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY291cnNlX3VzZXIifQ.aAl1uCtLTh17urYJCtTXphe4pwwdTEGwpFoGvsMNyF8', 792, 'access', 0, '2023-06-27 07:55:58', '2023-06-27 08:51:56'),
(295, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjc5MywiaWF0IjoxNjg3OTQwNTE0LCJleHAiOjE2ODg1NDA1MTQsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY291cnNlX3VzZXIifQ.9pXAEUfBG9ZKsu83X9cPPJt3DudHI7p48CsBUj14qdI', 793, 'access', 0, '2023-06-27 08:49:21', '2023-06-28 08:21:54'),
(297, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjc5NCwiaWF0IjoxNjg4MzYxMDE4LCJleHAiOjE2ODg3OTMwMTgsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY2FkZGllIn0.u3r4OXCnfs3Yxxxc0Q3ZaiAf7chrRuQQ3jzfAgkZC_c', 794, 'access', 0, '2023-06-30 07:18:20', '2023-07-03 05:10:18'),
(298, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjM4MSwiaWF0IjoxNjg4MjYzOTkyLCJleHAiOjE2ODg2OTU5OTIsInR5cGUiOiJhY2Nlc3MiLCJyb2xlIjoiY2FkZGllIn0.1nAcpj5lFNzvVLg6QENUzBMlYt1ifCDbkyQwrOov7lE', 381, 'access', 0, '2023-06-30 09:40:49', '2023-07-02 02:13:12'),
(299, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjIsImlhdCI6MTY4OTkyOTc3NCwiZXhwIjoyMDQ5OTI5Nzc0LCJ0eXBlIjoiYWNjZXNzIiwicm9sZSI6ImFkbWluIn0.iwcP-9GCMs_QkceSQoXFAqppnC5zrvTfcIeQ5QvAOGA', 2, 'access', 0, '2023-07-11 03:29:10', '2023-07-21 08:56:14'),
(300, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI1LCJpYXQiOjE2ODkwNDk3MTgsImV4cCI6MTY4OTQ4MTcxOCwidHlwZSI6ImFjY2VzcyIsInJvbGUiOiJjYWRkaWUifQ.eE6q0FkmjyFHNxoN0ZomIWWNNTuFsP1MirGC4EEBiQg', 25, 'access', 0, '2023-07-11 04:28:37', '2023-07-11 04:28:38'),
(301, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI0LCJpYXQiOjE2ODkwNDk4MzAsImV4cCI6MTY4OTQ4MTgzMCwidHlwZSI6ImFjY2VzcyIsInJvbGUiOiJjYWRkaWUifQ.IEHihzEJfnbH4T1wUcvW_711LGbQBRh_qX1TvGJD8vM', 24, 'access', 0, '2023-07-11 04:30:29', '2023-07-11 04:30:30'),
(302, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEzMzQsImlhdCI6MTY4OTMyNDc3MSwiZXhwIjoyMDQ5MzI0NzcxLCJ0eXBlIjoiYWNjZXNzIiwicm9sZSI6ImFkbWluIn0.2K5X8yKZsRYBLX7kj835t7avVyNQ6jriH9FwLId7Cz4', 1334, 'access', 0, '2023-07-11 07:32:28', '2023-07-14 08:52:51'),
(303, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEzNDQsImlhdCI6MTY4OTIxODcyNSwiZXhwIjoyMDQ5MjE4NzI1LCJ0eXBlIjoiYWNjZXNzIiwicm9sZSI6ImNvdXJzZV91c2VyIn0.xVrVOrIua0PULFSfghjLaRHOdKi1mBaaN405-jsXtVQ', 1344, 'access', 0, '2023-07-13 03:24:35', '2023-07-13 03:25:25'),
(304, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjAsImlhdCI6MTY4OTY0NjgxMywiZXhwIjoyMDQ5NjQ2ODEzLCJ0eXBlIjoiYWNjZXNzIiwicm9sZSI6ImFkbWluIn0.8kewENheCrpUk5Klgcio7xbH6C-Rs4qpRzDWjsnel3g', 0, 'access', 0, '2023-07-17 07:56:21', '2023-07-18 02:20:13'),
(305, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEzNDgsImlhdCI6MTY4OTY0Njc5MywiZXhwIjoyMDQ5NjQ2NzkzLCJ0eXBlIjoiYWNjZXNzIiwicm9sZSI6ImFkbWluIn0.14ukk5v1xDDroxLaALRVuM34EVeWSvJQ7A-cLJuPRUI', 1348, 'access', 0, '2023-07-17 10:10:37', '2023-07-18 02:19:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `is_super` tinyint(1) DEFAULT 0,
  `course_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `blacklisted` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `golf_course_id` int(11) DEFAULT NULL,
  `old_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role`, `is_super`, `course_id`, `type`, `blacklisted`, `createdAt`, `updatedAt`, `golf_course_id`, `old_user_id`) VALUES
(1, 'admin', '$2a$10$Ih5.3xICt6lrkc3uBMC81.Kiaka518LptdqS0.40TGAfqeJ/x4hMK', 'admin', 1, NULL, NULL, 0, '2023-02-10 01:03:48', '2023-02-10 01:03:50', NULL, NULL),
(2, 'nhatdn', '$2a$10$oY1g0W6kDDZKlU1MVTgXjuQC.xquWJ8c.NzRVdDWH1b0QL0m4InYq', 'admin', 0, 35, NULL, 0, '2023-07-18 03:41:30', '2023-07-21 08:49:14', 35, NULL),
(3, 'ndn', '$2a$10$k5eRZkhaHqvETIiONLRbSekILJTCd38fqSoQdXoferT8CePPF5kB2', 'admin', 0, NULL, NULL, 0, '2023-07-20 02:35:41', '2023-07-21 08:49:05', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `configholesgolfcourse`
--
ALTER TABLE `configholesgolfcourse`
  ADD PRIMARY KEY (`config_hole_golf_course_id`),
  ADD KEY `golf_course_id` (`golf_course_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `courses_old_user_id_foreign_idx` (`old_user_id`),
  ADD KEY `config_hole_golf_course_id` (`config_hole_golf_course_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `currentscores`
--
ALTER TABLE `currentscores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hole_id` (`hole_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `golfcourses`
--
ALTER TABLE `golfcourses`
  ADD PRIMARY KEY (`golf_course_id`);

--
-- Indexes for table `holes`
--
ALTER TABLE `holes`
  ADD PRIMARY KEY (`hole_id`),
  ADD KEY `config_hole_golf_course_id` (`config_hole_golf_course_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `images_course_id_type` (`course_id`,`type`);

--
-- Indexes for table `matchplayclubs`
--
ALTER TABLE `matchplayclubs`
  ADD PRIMARY KEY (`matchplay_club_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `matchplayscores`
--
ALTER TABLE `matchplayscores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matchplayteamplayers`
--
ALTER TABLE `matchplayteamplayers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matchplay_team_id` (`matchplay_team_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `matchplayteams`
--
ALTER TABLE `matchplayteams`
  ADD PRIMARY KEY (`matchplay_team_id`),
  ADD KEY `matchplay_club_id` (`matchplay_club_id`);

--
-- Indexes for table `matchplayversuses`
--
ALTER TABLE `matchplayversuses`
  ADD PRIMARY KEY (`matchplay_versus_id`),
  ADD KEY `matchplayversuses_round_num` (`round_num`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `matchs`
--
ALTER TABLE `matchs`
  ADD PRIMARY KEY (`match_id`);

--
-- Indexes for table `penalties`
--
ALTER TABLE `penalties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playerfinishround`
--
ALTER TABLE `playerfinishround`
  ADD PRIMARY KEY (`player_id`,`round_num`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `players_course_id_code` (`course_id`,`code`),
  ADD KEY `players_course_id_fullname` (`course_id`,`fullname`);

--
-- Indexes for table `rounds`
--
ALTER TABLE `rounds`
  ADD PRIMARY KEY (`round_id`),
  ADD KEY `rounds_course_id_round_num` (`course_id`,`round_num`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `hole_id` (`hole_id`),
  ADD KEY `round_id` (`round_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `teetimegroupplayers`
--
ALTER TABLE `teetimegroupplayers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teetime_group_id` (`teetime_group_id`);

--
-- Indexes for table `teetimegroups`
--
ALTER TABLE `teetimegroups`
  ADD PRIMARY KEY (`teetime_group_id`);

--
-- Indexes for table `teetimes`
--
ALTER TABLE `teetimes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teetime_group_id` (`teetime_group_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `users_old_user_id_foreign_idx` (`old_user_id`),
  ADD KEY `golf_course_id` (`golf_course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `configholesgolfcourse`
--
ALTER TABLE `configholesgolfcourse`
  MODIFY `config_hole_golf_course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `currentscores`
--
ALTER TABLE `currentscores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `golfcourses`
--
ALTER TABLE `golfcourses`
  MODIFY `golf_course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `holes`
--
ALTER TABLE `holes`
  MODIFY `hole_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=749;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `matchplayclubs`
--
ALTER TABLE `matchplayclubs`
  MODIFY `matchplay_club_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `matchplayscores`
--
ALTER TABLE `matchplayscores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matchplayteamplayers`
--
ALTER TABLE `matchplayteamplayers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1102;

--
-- AUTO_INCREMENT for table `matchplayteams`
--
ALTER TABLE `matchplayteams`
  MODIFY `matchplay_team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1117;

--
-- AUTO_INCREMENT for table `matchplayversuses`
--
ALTER TABLE `matchplayversuses`
  MODIFY `matchplay_versus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=559;

--
-- AUTO_INCREMENT for table `matchs`
--
ALTER TABLE `matchs`
  MODIFY `match_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penalties`
--
ALTER TABLE `penalties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1853;

--
-- AUTO_INCREMENT for table `rounds`
--
ALTER TABLE `rounds`
  MODIFY `round_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11125;

--
-- AUTO_INCREMENT for table `teetimegroupplayers`
--
ALTER TABLE `teetimegroupplayers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=962;

--
-- AUTO_INCREMENT for table `teetimegroups`
--
ALTER TABLE `teetimegroups`
  MODIFY `teetime_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `teetimes`
--
ALTER TABLE `teetimes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `configholesgolfcourse`
--
ALTER TABLE `configholesgolfcourse`
  ADD CONSTRAINT `configholesgolfcourse_ibfk_1` FOREIGN KEY (`golf_course_id`) REFERENCES `golfcourses` (`golf_course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_3` FOREIGN KEY (`config_hole_golf_course_id`) REFERENCES `configholesgolfcourse` (`config_hole_golf_course_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_old_user_id_foreign_idx` FOREIGN KEY (`old_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `currentscores`
--
ALTER TABLE `currentscores`
  ADD CONSTRAINT `currentscores_ibfk_703` FOREIGN KEY (`hole_id`) REFERENCES `holes` (`hole_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `currentscores_ibfk_704` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `holes`
--
ALTER TABLE `holes`
  ADD CONSTRAINT `holes_ibfk_1` FOREIGN KEY (`config_hole_golf_course_id`) REFERENCES `configholesgolfcourse` (`config_hole_golf_course_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `matchplayclubs`
--
ALTER TABLE `matchplayclubs`
  ADD CONSTRAINT `matchplayclubs_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matchplayteamplayers`
--
ALTER TABLE `matchplayteamplayers`
  ADD CONSTRAINT `matchplayteamplayers_ibfk_701` FOREIGN KEY (`matchplay_team_id`) REFERENCES `matchplayteams` (`matchplay_team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matchplayteamplayers_ibfk_702` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`);

--
-- Constraints for table `matchplayteams`
--
ALTER TABLE `matchplayteams`
  ADD CONSTRAINT `matchplayteams_ibfk_1` FOREIGN KEY (`matchplay_club_id`) REFERENCES `matchplayclubs` (`matchplay_club_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `matchplayversuses`
--
ALTER TABLE `matchplayversuses`
  ADD CONSTRAINT `matchplayversuses_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rounds`
--
ALTER TABLE `rounds`
  ADD CONSTRAINT `rounds_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_ibfk_1748` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `scores_ibfk_1749` FOREIGN KEY (`hole_id`) REFERENCES `holes` (`hole_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `scores_ibfk_1750` FOREIGN KEY (`round_id`) REFERENCES `rounds` (`round_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `scores_ibfk_1751` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teetimegroupplayers`
--
ALTER TABLE `teetimegroupplayers`
  ADD CONSTRAINT `teetimegroupplayers_ibfk_1` FOREIGN KEY (`teetime_group_id`) REFERENCES `teetimegroups` (`teetime_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teetimes`
--
ALTER TABLE `teetimes`
  ADD CONSTRAINT `teetimes_ibfk_1` FOREIGN KEY (`teetime_group_id`) REFERENCES `teetimegroups` (`teetime_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`golf_course_id`) REFERENCES `golfcourses` (`golf_course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_old_user_id_foreign_idx` FOREIGN KEY (`old_user_id`) REFERENCES `courses` (`old_user_id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
