-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 17, 2025 at 12:20 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dctiedu`
--

-- --------------------------------------------------------

--
-- Table structure for table `students_admission`
--

CREATE TABLE `students_admission` (
  `id` int(10) UNSIGNED NOT NULL,
  `admission_name` varchar(120) NOT NULL,
  `cours_duration` varchar(20) NOT NULL,
  `id_number` varchar(64) DEFAULT NULL,
  `session` varchar(64) DEFAULT NULL,
  `students_bangla_name` varchar(150) DEFAULT NULL,
  `students_english_name` varchar(150) DEFAULT NULL,
  `fathers_bangla_name` varchar(150) DEFAULT NULL,
  `fathers_english_name` varchar(150) DEFAULT NULL,
  `mothers_bangla_name` varchar(150) DEFAULT NULL,
  `mothers_english_name` varchar(150) DEFAULT NULL,
  `mailing_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `religion` varchar(40) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `blood_group` varchar(8) DEFAULT NULL,
  `nationality` varchar(60) DEFAULT 'Bangladeshi',
  `national_id_number` varchar(64) DEFAULT NULL,
  `phone_number` varchar(32) DEFAULT NULL,
  `email_address` varchar(190) DEFAULT NULL,
  `student_photo` varchar(255) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students_admission`
--

INSERT INTO `students_admission` (`id`, `admission_name`, `cours_duration`, `id_number`, `session`, `students_bangla_name`, `students_english_name`, `fathers_bangla_name`, `fathers_english_name`, `mothers_bangla_name`, `mothers_english_name`, `mailing_address`, `permanent_address`, `religion`, `gender`, `date_of_birth`, `blood_group`, `nationality`, `national_id_number`, `phone_number`, `email_address`, `student_photo`, `admission_date`, `created_at`, `updated_at`) VALUES
(1, 'Responsive Web Design', '3 Month', '01', 'March to May', 'টেস্ট ', 'test', 'টেস্ট23', 'test24', 'টেস্ট3', 'test3', 'Dhaka , Bangladesh', 'Mirzapur', 'Islam', 'Male', '2000-11-24', 'ab+', 'Bangladeshi', '12345678', '01771600778', 'help.rezawl71@gmail.com', 'uploads/2__2__6160b26a2fbc59a3.png', '2025-09-17', '2025-09-17 09:05:04', NULL),
(5, 'Digital Marketing', '3 Month', '0112', 'March → July', 'টেস্ট 2', 'test', 'টেস্ট23', 'test240', 'টেস্ট30', 'test30', 'Dhaka , Bangladesh', 'Mirzapur', 'Islam', 'Male', '2016-07-06', '', 'Bangladeshi', 'NID: 2139069090', '01771600778', 'help.rezawl71@gmail.com', 'uploads/photo_6217228283997702540_y_26b788d95db8b11d.jpg', '2025-09-17', '2025-09-17 09:54:00', NULL),
(8, 'Driving cum Auto Mechanics (Driving Training)', '1 Month', '0600', 'January-March', 'টেস্ট 001', 'test001', 'টেস্ট200', 'test200', 'রুজিনা 01', 'dfg', 'Chowdory para, Citissory', 'Mirzapur', 'Islam', 'Female', '2006-10-16', 'ab+', 'Bangladeshi', NULL, '01751327900', 'elp.rezawl71@gmail.com', 'uploads/photo_6217228283997702540_y_2d3d21423ebb5a25.jpg', '2025-09-17', '2025-09-17 10:19:32', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students_admission`
--
ALTER TABLE `students_admission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_id_number` (`id_number`),
  ADD KEY `idx_session` (`session`),
  ADD KEY `idx_admission_date` (`admission_date`),
  ADD KEY `idx_phone` (`phone_number`),
  ADD KEY `idx_email` (`email_address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students_admission`
--
ALTER TABLE `students_admission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
