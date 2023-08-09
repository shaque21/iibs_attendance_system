-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2023 at 05:07 PM
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
-- Database: `student_attendance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_list`
--

CREATE TABLE `attendance_list` (
  `id` int(30) NOT NULL,
  `class_subject_id` int(30) NOT NULL,
  `doc` date NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_list`
--

INSERT INTO `attendance_list` (`id`, `class_subject_id`, `doc`, `date_created`) VALUES
(1, 1, '2020-10-28', '2020-10-28 20:06:37'),
(2, 1, '2023-08-09', '2023-08-09 17:42:30'),
(3, 3, '2023-08-09', '2023-08-09 18:26:27'),
(4, 3, '2023-08-01', '2023-08-09 18:26:41'),
(5, 3, '2023-08-04', '2023-08-09 18:26:53'),
(6, 7, '2023-08-09', '2023-08-09 19:20:04'),
(7, 7, '2023-08-02', '2023-08-09 19:20:10'),
(8, 7, '2023-08-03', '2023-08-09 19:20:31'),
(9, 8, '2023-08-09', '2023-08-09 19:38:44'),
(10, 8, '2023-08-05', '2023-08-09 19:38:56'),
(11, 8, '2023-08-04', '2023-08-09 19:39:07'),
(12, 8, '2023-08-10', '2023-08-09 19:44:24'),
(13, 5, '2023-08-10', '2023-08-09 19:45:40'),
(14, 9, '2023-08-09', '2023-08-09 19:51:38'),
(15, 10, '2023-08-09', '2023-08-09 19:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_record`
--

CREATE TABLE `attendance_record` (
  `id` int(30) NOT NULL,
  `attendance_id` int(30) NOT NULL,
  `student_id` int(30) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '0=absent,1=present,2=late',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_record`
--

INSERT INTO `attendance_record` (`id`, `attendance_id`, `student_id`, `type`, `date_created`) VALUES
(1, 1, 1, 1, '2020-10-28 20:06:37'),
(2, 1, 2, 2, '2020-10-28 20:06:37'),
(3, 2, 1, 1, '2023-08-09 17:42:30'),
(4, 2, 2, 0, '2023-08-09 17:42:30'),
(5, 3, 3, 1, '2023-08-09 18:26:27'),
(6, 3, 4, 2, '2023-08-09 18:26:27'),
(7, 4, 3, 1, '2023-08-09 18:26:41'),
(8, 4, 4, 1, '2023-08-09 18:26:41'),
(9, 5, 3, 1, '2023-08-09 18:26:53'),
(10, 5, 4, 1, '2023-08-09 18:26:53'),
(11, 6, 11, 1, '2023-08-09 19:20:04'),
(12, 6, 12, 1, '2023-08-09 19:20:04'),
(13, 7, 11, 0, '2023-08-09 19:20:10'),
(14, 7, 12, 0, '2023-08-09 19:20:10'),
(15, 8, 11, 1, '2023-08-09 19:20:31'),
(16, 8, 12, 1, '2023-08-09 19:20:31'),
(17, 9, 13, 1, '2023-08-09 19:38:44'),
(18, 9, 14, 0, '2023-08-09 19:38:44'),
(19, 10, 13, 1, '2023-08-09 19:38:56'),
(20, 10, 14, 2, '2023-08-09 19:38:56'),
(21, 11, 13, 0, '2023-08-09 19:39:07'),
(22, 11, 14, 1, '2023-08-09 19:39:07'),
(23, 12, 13, 1, '2023-08-09 19:44:24'),
(24, 12, 14, 1, '2023-08-09 19:44:24'),
(25, 12, 15, 1, '2023-08-09 19:44:24'),
(26, 13, 5, 1, '2023-08-09 19:45:40'),
(27, 13, 6, 1, '2023-08-09 19:45:40'),
(28, 13, 7, 1, '2023-08-09 19:45:40'),
(29, 14, 16, 1, '2023-08-09 19:51:38'),
(30, 15, 16, 1, '2023-08-09 19:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(30) NOT NULL,
  `course_id` int(30) NOT NULL,
  `level` varchar(50) NOT NULL,
  `section` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=Inactive',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `course_id`, `level`, `section`, `status`, `date_created`) VALUES
(4, 6, '4th year', '8th semester', 1, '2023-08-09 18:35:57'),
(5, 6, '2nd year', '3rd semester', 1, '2023-08-09 18:38:14'),
(6, 7, '1st year', '1st semester', 1, '2023-08-09 19:14:32'),
(7, 6, '1st year', '1st semester', 1, '2023-08-09 19:32:37'),
(8, 6, '3rd year', '6th semester', 1, '2023-08-09 19:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `class_subject`
--

CREATE TABLE `class_subject` (
  `id` int(30) NOT NULL,
  `class_id` int(30) NOT NULL,
  `subject_id` int(30) NOT NULL,
  `faculty_id` int(30) NOT NULL,
  `student_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_subject`
--

INSERT INTO `class_subject` (`id`, `class_id`, `subject_id`, `faculty_id`, `student_ids`, `date_created`) VALUES
(1, 2, 1, 1, '', '0000-00-00 00:00:00'),
(2, 1, 2, 1, '', '0000-00-00 00:00:00'),
(6, 6, 7, 3, '', '2023-08-09 19:16:59'),
(7, 6, 7, 4, '', '2023-08-09 19:19:39'),
(8, 7, 8, 5, '', '2023-08-09 19:38:06'),
(10, 8, 9, 2, '', '2023-08-09 19:55:24');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(30) NOT NULL,
  `course` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `description`, `date_created`) VALUES
(6, 'CSE', 'Computer Science & Engineering', '2023-08-09 18:22:03'),
(7, 'BBA', 'Bachelor of Business Administration(BBA) is a four-year degree course providing practical and theoretical experience in management, business and administration.', '2023-08-09 19:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(30) NOT NULL,
  `id_no` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `id_no`, `name`, `email`, `contact`, `address`, `date_created`) VALUES
(2, '1010', 'Samsul Haque', 'hshamsul894@gmail.com', '+8801627309821', '20/1,Rojoni Bose Lane', '2023-08-09 17:41:20'),
(4, '5050', 'Salim Reja', 'salim@gmail.com', '+8801627309821', '20/1,Rojoni Bose Lane', '2023-08-09 19:19:20'),
(5, '2020', 'Mahmudul Hasan', 'mahmudul@gmail.com', '+880162736363', 'Mugda, Basabo, Dhaka', '2023-08-09 19:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(30) NOT NULL,
  `id_no` varchar(50) NOT NULL,
  `class_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `id_no`, `class_id`, `name`, `date_created`) VALUES
(5, '111', 4, 'Iqbal', '2023-08-09 18:39:01'),
(6, '112', 4, 'Sohel', '2023-08-09 18:39:18'),
(7, '113', 4, 'Nayem', '2023-08-09 18:39:34'),
(8, '331', 5, 'Rakib', '2023-08-09 18:40:33'),
(9, '332', 5, 'Rial', '2023-08-09 18:40:47'),
(10, '334', 5, 'Shammi', '2023-08-09 18:41:11'),
(11, 'B-1101', 6, 'Shorna Akter', '2023-08-09 19:15:28'),
(12, 'B-1102', 6, 'Ariful Islam', '2023-08-09 19:15:55'),
(13, 'C-1101', 7, 'Md. Kaium', '2023-08-09 19:35:14'),
(14, 'C-1102', 7, 'Sumon Khan', '2023-08-09 19:35:44'),
(15, 'C-1103', 7, 'Fahmida Akter', '2023-08-09 19:41:20'),
(16, '3101', 8, 'Mukul Hasan', '2023-08-09 19:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(30) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject`, `description`, `date_created`) VALUES
(4, 'SAD', 'System Analysis & Design', '2023-08-09 18:22:37'),
(5, 'OOP', 'Object Oriented Programming', '2023-08-09 18:42:14'),
(6, 'Cryptography', 'CSE 4th year 8th semester course', '2023-08-09 19:13:32'),
(7, 'BBA-1', 'BBA 1st year 1st semester course', '2023-08-09 19:14:06'),
(8, 'Structured Programming Language ', 'This subject(SPL) will be taken by the faculty member Mahmudul Hasan ', '2023-08-09 19:37:52'),
(9, 'Theory of Computation', 'This subject(TOC) will be taken by the faculty member Samsul Haque', '2023-08-09 19:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Student Attendance Management System(IIBS)', 'iibs2011@gmail.comm', '+8801536362525', '1603344720_1602738120_pngtree-purple-hd-business-banner-image_5493.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Staff',
  `faculty_id` int(30) NOT NULL COMMENT 'for faculty user only'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `faculty_id`) VALUES
(1, 'Administrator', 'admin', '0192023a7bbd73250516f069df18b500', 1, 0),
(3, 'Samsul Haque', 'hshamsul894@gmail.com', '1e48c4420b7073bc11916c6c1de226bb', 3, 2),
(5, 'Salim Reja', 'salim@gmail.com', '8977ecbb8cb82d77fb091c7a7f186163', 3, 4),
(6, 'Mahmudul Hasan', 'mahmudul@gmail.com', '7b7a53e239400a13bd6be6c91c4f6c4e', 3, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_list`
--
ALTER TABLE `attendance_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_record`
--
ALTER TABLE `attendance_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_subject`
--
ALTER TABLE `class_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_list`
--
ALTER TABLE `attendance_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `attendance_record`
--
ALTER TABLE `attendance_record`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `class_subject`
--
ALTER TABLE `class_subject`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
