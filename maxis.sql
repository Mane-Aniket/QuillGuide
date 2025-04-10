-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2025 at 03:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maxis`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_dropdown`
--

CREATE TABLE `admin_dropdown` (
  `oncall_names` varchar(25) DEFAULT NULL,
  `severity` varchar(25) DEFAULT NULL,
  `application` varchar(25) DEFAULT NULL,
  `id` int(20) NOT NULL,
  `submittedby` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `submitted_by` varchar(30) NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `Application` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `bill_prep` time NOT NULL,
  `QA` time NOT NULL,
  `QA_Brite` time NOT NULL,
  `Extract` time NOT NULL,
  `Full_Brite` time NOT NULL,
  `Conf` time NOT NULL,
  `Conf_select` varchar(20) NOT NULL,
  `Full_Brite_select` varchar(20) NOT NULL,
  `id` int(20) NOT NULL,
  `bill_prep_select` varchar(20) NOT NULL,
  `QA_select` varchar(20) NOT NULL,
  `QA_Brite_select` varchar(20) NOT NULL,
  `cycle_code` int(40) NOT NULL,
  `rejects` int(10) DEFAULT NULL,
  `sys_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` date NOT NULL,
  `submittedby` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Open',
  `Extract_select` varchar(20) NOT NULL,
  `population` int(30) NOT NULL,
  `cycle_sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `queries` varchar(300) NOT NULL,
  `replies` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sop`
--

CREATE TABLE `sop` (
  `id` int(11) NOT NULL,
  `Filename` varchar(255) NOT NULL,
  `title` varchar(60) NOT NULL,
  `created_by` varchar(60) NOT NULL,
  `Application` varchar(60) NOT NULL,
  `source_category` varchar(50) NOT NULL,
  `additional_information` text NOT NULL,
  `insert_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supportplan`
--

CREATE TABLE `supportplan` (
  `id` int(11) NOT NULL,
  `name` longblob NOT NULL,
  `team` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_events`
--

CREATE TABLE `table_events` (
  `id` int(11) NOT NULL,
  `start` varchar(100) NOT NULL,
  `end` varchar(80) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_actionitem`
--

CREATE TABLE `tbl_actionitem` (
  `id` int(10) NOT NULL,
  `action_id` int(10) NOT NULL,
  `action_item_title` varchar(50) NOT NULL,
  `Pending_on` varchar(30) NOT NULL,
  `action_item_status` varchar(30) NOT NULL DEFAULT 'Open',
  `ETA` date NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity`
--

CREATE TABLE `tbl_activity` (
  `id` int(11) NOT NULL,
  `Activity_number` varchar(25) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Application` varchar(30) NOT NULL,
  `Implementer` varchar(30) NOT NULL,
  `Details` text NOT NULL,
  `start_time` varchar(25) DEFAULT NULL,
  `end_time` varchar(25) DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `submittedby` varchar(50) DEFAULT 'Open',
  `Env_type` varchar(35) DEFAULT 'Production',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_call`
--

CREATE TABLE `tbl_call` (
  `id` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Application` varchar(35) NOT NULL,
  `Level_escaltion` varchar(35) NOT NULL,
  `Oncall_name` varchar(35) NOT NULL,
  `severity` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `discussion` varchar(120) NOT NULL,
  `submittedby` varchar(50) NOT NULL,
  `duration` varchar(90) NOT NULL,
  `time` time NOT NULL,
  `Details` varchar(100) NOT NULL,
  `insert_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chronology`
--

CREATE TABLE `tbl_chronology` (
  `chro_id` int(30) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `id` int(30) NOT NULL,
  `chrono` text NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `gender` varchar(10) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_eoddump`
--

CREATE TABLE `tbl_eoddump` (
  `job_id` int(11) NOT NULL,
  `Job_name` varchar(50) NOT NULL,
  `Job_rec` varchar(20) NOT NULL,
  `Date` varchar(55) NOT NULL,
  `Start_Time` time NOT NULL,
  `End_Time` time NOT NULL,
  `inserted_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_info`
--

CREATE TABLE `tbl_info` (
  `id` int(11) NOT NULL,
  `Object` varchar(100) NOT NULL,
  `Application` varchar(80) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Severity` varchar(50) NOT NULL,
  `Time_Received` varchar(50) NOT NULL,
  `Related_CI` varchar(50) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_issue`
--

CREATE TABLE `tbl_issue` (
  `id` int(11) NOT NULL,
  `Incident_Number` varchar(35) DEFAULT 'NA',
  `Title` varchar(100) DEFAULT 'NA',
  `Application` varchar(35) NOT NULL,
  `PIC` varchar(35) NOT NULL DEFAULT 'NA',
  `Category` varchar(35) NOT NULL,
  `severity` varchar(35) NOT NULL,
  `date` date NOT NULL,
  `ETA` date DEFAULT NULL,
  `Details` text NOT NULL,
  `shift` varchar(30) NOT NULL,
  `username` varchar(35) NOT NULL,
  `status` varchar(35) DEFAULT 'Open',
  `RCA` text NOT NULL DEFAULT 'Pending',
  `insert_time` datetime NOT NULL DEFAULT current_timestamp(),
  `availability_status` varchar(30) NOT NULL,
  `down_time` time NOT NULL,
  `Service` varchar(30) NOT NULL,
  `time_consumed` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobname_failed`
--

CREATE TABLE `tbl_jobname_failed` (
  `id` int(11) NOT NULL,
  `job_name` varchar(250) DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `resolution` varchar(30) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rca`
--

CREATE TABLE `tbl_rca` (
  `rca_id` varchar(50) DEFAULT NULL,
  `rca_status` varchar(50) DEFAULT NULL,
  `uts` varchar(50) DEFAULT NULL,
  `priority` varchar(50) DEFAULT NULL,
  `rca_summary` varchar(169) DEFAULT NULL,
  `sla_start` datetime DEFAULT NULL,
  `sla_stop` datetime DEFAULT NULL,
  `assigned_group` varchar(50) DEFAULT NULL,
  `rca_create_date` datetime DEFAULT NULL,
  `rca_due_date` datetime DEFAULT NULL,
  `coordinator_group` varchar(50) DEFAULT NULL,
  `ai_id` varchar(50) DEFAULT NULL,
  `ai_status` varchar(50) DEFAULT NULL,
  `ai_summary` varchar(284) DEFAULT NULL,
  `ai_assigned_group` varchar(50) DEFAULT NULL,
  `ai_create_date` datetime DEFAULT NULL,
  `ai_eta` datetime DEFAULT NULL,
  `external_ai` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rpl_eod`
--

CREATE TABLE `tbl_rpl_eod` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `timestramp` datetime NOT NULL DEFAULT current_timestamp(),
  `cease` int(30) NOT NULL,
  `grace` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stuck_order`
--

CREATE TABLE `tbl_stuck_order` (
  `id` int(11) NOT NULL,
  `Activity` varchar(30) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` int(11) NOT NULL,
  `todoTitle` varchar(200) NOT NULL,
  `todoDescription` text NOT NULL,
  `date` date NOT NULL,
  `task_status` varchar(20) NOT NULL DEFAULT 'TBD'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `trn_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_dropdown`
--
ALTER TABLE `admin_dropdown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sop`
--
ALTER TABLE `sop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supportplan`
--
ALTER TABLE `supportplan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_events`
--
ALTER TABLE `table_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_actionitem`
--
ALTER TABLE `tbl_actionitem`
  ADD PRIMARY KEY (`action_id`),
  ADD UNIQUE KEY `action_id` (`action_id`),
  ADD UNIQUE KEY `creation_date` (`creation_date`);

--
-- Indexes for table `tbl_activity`
--
ALTER TABLE `tbl_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_call`
--
ALTER TABLE `tbl_call`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_chronology`
--
ALTER TABLE `tbl_chronology`
  ADD PRIMARY KEY (`chro_id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_eoddump`
--
ALTER TABLE `tbl_eoddump`
  ADD PRIMARY KEY (`job_id`),
  ADD UNIQUE KEY `job_id` (`job_id`);

--
-- Indexes for table `tbl_info`
--
ALTER TABLE `tbl_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_issue`
--
ALTER TABLE `tbl_issue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jobname_failed`
--
ALTER TABLE `tbl_jobname_failed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rpl_eod`
--
ALTER TABLE `tbl_rpl_eod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_stuck_order`
--
ALTER TABLE `tbl_stuck_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
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
-- AUTO_INCREMENT for table `admin_dropdown`
--
ALTER TABLE `admin_dropdown`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sop`
--
ALTER TABLE `sop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supportplan`
--
ALTER TABLE `supportplan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_events`
--
ALTER TABLE `table_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_actionitem`
--
ALTER TABLE `tbl_actionitem`
  MODIFY `action_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_activity`
--
ALTER TABLE `tbl_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_call`
--
ALTER TABLE `tbl_call`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_chronology`
--
ALTER TABLE `tbl_chronology`
  MODIFY `chro_id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_eoddump`
--
ALTER TABLE `tbl_eoddump`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_info`
--
ALTER TABLE `tbl_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_issue`
--
ALTER TABLE `tbl_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_jobname_failed`
--
ALTER TABLE `tbl_jobname_failed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_rpl_eod`
--
ALTER TABLE `tbl_rpl_eod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_stuck_order`
--
ALTER TABLE `tbl_stuck_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
