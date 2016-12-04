-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2016-12-02 19:33:37
-- 伺服器版本: 10.1.19-MariaDB
-- PHP 版本： 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `comp3421`
--

-- --------------------------------------------------------

--
-- 資料表結構 `attraction`
--

CREATE TABLE `attraction` (
  `attractionID` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `URL` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `attraction`
--

INSERT INTO `attraction` (`attractionID`, `title`, `URL`, `description`, `photo`) VALUES
(1, 'Ocean Park Hong Kong', 'https://www.oceanpark.com.hk/en', 'Ocean Park Hong Kong, commonly known as Ocean Park, is a marine mammal park, oceanarium, animal theme park and amusement park, situated in Wong Chuk Hang and Nam Long Shan in the Southern District of Hong Kong. Opened in 1977 by the then Governor of Hong Kong Sir Murray MacLehose, Ocean Park became popular but by 2005 was unprofitable and widely expected to lose out to the new Hong Kong Disneyland. In 2014, it became the world''s 13th most visited theme park, and the largest theme park in Asia. Half of all visitors now come from mainland China, in growth that parallels rising mainland tourist visitor levels to Hong Kong over the same period.', 'ocean.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `authorsabstracts`
--

CREATE TABLE `authorsabstracts` (
  `abstractID` int(11) NOT NULL,
  `authorID` int(11) NOT NULL,
  `lastname` text COLLATE utf8_unicode_ci NOT NULL,
  `firstname` text COLLATE utf8_unicode_ci NOT NULL,
  `type(PolyU)` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `authorsabstracts`
--

INSERT INTO `authorsabstracts` (`abstractID`, `authorID`, `lastname`, `firstname`, `type(PolyU)`) VALUES
(70017439, 101, 'Lin', 'Chi-Yi', 'n'),
(1570017439, 102, 'Huang', 'Shih-Wen', 'n'),
(1570017439, 103, 'Hsu', 'Hui-Huang', 'n'),
(1570017647, 201, 'Privitera', 'Gianluca', 'n'),
(1570017647, 202, 'Ghidini', 'Giacomo', 'n'),
(1570017647, 203, 'Emmons', 'Stephen P', 'n'),
(1570017647, 204, 'Levine', 'David', 'n'),
(1570017647, 205, 'Bellavista', 'Paolo', 'n'),
(1570017647, 206, 'Smith', 'Jeffrey O.', 'n'),
(1570017651, 301, 'Ma', 'Hua', 'n'),
(1570017651, 302, 'Hu', 'Zhigang', 'n'),
(1570015579, 401, 'Zhu', 'Weiping', 'n'),
(1570015579, 402, 'Cui', 'Xiaohui', 'n'),
(1570015579, 403, 'Hu', 'Cheng', 'n'),
(1570015579, 404, 'Ma', 'Chao', 'n'),
(1570015510, 10, 'Patt', 'Yale N.', 'n');

-- --------------------------------------------------------

--
-- 資料表結構 `events`
--

CREATE TABLE `events` (
  `eventID` int(11) NOT NULL,
  `data` date NOT NULL,
  `begTime` text COLLATE utf8_unicode_ci NOT NULL,
  `endTime` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `venue` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `events`
--

INSERT INTO `events` (`eventID`, `data`, `begTime`, `endTime`, `title`, `venue`) VALUES
(10, '0000-00-00', '7:45', '8:30', 'Registration', 'Silverbox 1-3, Hotel ICON'),
(11, '0000-00-00', '18:30', '21:30', 'Conference Reception Dinner', 'Staff Club, The Hong Kong Polytechnic University'),
(12, '0000-00-00', '8:30', '9:00', 'Opening Ceremony', 'Silverbox 1-3, Hotel ICON'),
(13, '0000-00-00', '9:00', '10:00', 'Keynote Session', 'Silverbox 1-3, Hotel ICON'),
(14, '0000-00-00', '10:00', '10:30', 'Coffee Break', 'Sky Bridge, Hotel ICON'),
(15, '0000-00-00', '10:30', '12:00', 'Parallel Sessions', 'Silverbox 1-3, Hotel ICON'),
(16, '0000-00-00', '12:00', '13:45', 'Lunch', 'Silverbox 4, Hotel ICON'),
(17, '0000-00-00', '13:45', '15:15', 'Parallel Sessions', 'Silverbox 1-3, Hotel ICON'),
(18, '0000-00-00', '15:15', '15:45', 'Coffee Break', 'Sky Bridge, Hotel ICON'),
(19, '0000-00-00', '15:45', '17:30', 'Parallel Sessions', 'Silverbox 1-3, Hotel ICON'),
(20, '0000-00-00', '8:15', '9:00', 'Registration', 'Silverbox 1-3, Hotel ICON'),
(21, '0000-00-00', '18:15', '21:30', 'Conference Banquet', 'Silverbox 4, Hotel ICON'),
(22, '0000-00-00', '9:00', '10:00', 'Keynote Session', 'Silverbox 1-3, Hotel ICON'),
(24, '0000-00-00', '10:00', '10:30', 'Coffee Break', 'Sky Bridge, Hotel ICON'),
(25, '0000-00-00', '10:30', '12:00', 'Parallel Sessions', 'Silverbox 1-3, Hotel ICON'),
(26, '0000-00-00', '12:00', '13:45', 'Lunch', 'Silverbox 4, Hotel ICON'),
(27, '0000-00-00', '13:45', '15:15', 'Parallel Sessions', 'Silverbox 1-3, Hotel ICON'),
(28, '0000-00-00', '15:15', '15:45', 'Coffee Break', 'Sky Bridge, Hotel ICON'),
(29, '0000-00-00', '15:45', '17:30', 'Parallel Sessions', 'Silverbox 1-3, Hotel ICON'),
(30, '0000-00-00', '8:15', '8:45', 'Registration', 'Silverbox 1-3, Hotel ICON'),
(33, '0000-00-00', '8:45', '10:15', 'Parallel Sessions', 'Silverbox 1-3, Hotel ICON'),
(34, '0000-00-00', '10:15', '10:45', 'Coffee Break', 'Sky Bridge, Hotel ICON'),
(35, '0000-00-00', '10:45', '11:00', 'Closing Ceremony', 'Silverbox 1-3, Hotel ICON');

-- --------------------------------------------------------

--
-- 資料表結構 `presentationcsv`
--

CREATE TABLE `presentationcsv` (
  `abstractID` int(11) NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `speaker lastname` text COLLATE utf8_unicode_ci NOT NULL,
  `speaker firstname` text COLLATE utf8_unicode_ci NOT NULL,
  `speakerID` int(11) NOT NULL,
  `photoJpgFilename` text COLLATE utf8_unicode_ci NOT NULL,
  `affiliation` text COLLATE utf8_unicode_ci NOT NULL,
  `begtime` text COLLATE utf8_unicode_ci NOT NULL,
  `endtime` text COLLATE utf8_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `biography` text COLLATE utf8_unicode_ci NOT NULL,
  `abstract` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `presentationcsv`
--

INSERT INTO `presentationcsv` (`abstractID`, `type`, `title`, `speaker lastname`, `speaker firstname`, `speakerID`, `photoJpgFilename`, `affiliation`, `begtime`, `endtime`, `Date`, `biography`, `abstract`) VALUES
(1570015510, 'keynote', 'From DUMB computers to SMART computing', 'Patt', 'Yale N.', 10, 'patt.jpg', 'Yale', '9:00', '10:00', '0000-00-00', 'Yale Patt is the Ernest Cockrell, Jr. Centennial Chair in Engineering and Distinguished University Teaching Professor at The University of Texas at Austin. He directs the research of eight PhD students, while enjoying an active consulting practice with several microprocessor manufacturers. ', 'As the keynote in this first IEEE Conference on Smart Computing, it is useful to ask what smart computing is, and how we can ever get there when we must start with dumb computers, since computers really are electronic idiots that do exactly what they are told to do one very simple step at a time, and do so with very simple structures. The organizers of this conference have correctly recognized that designing and building a smart computing system requires two things: determining what the smart computing system one wants to build is, and harnessing computing technology to build it. In this talk I will try to examine what these two requirements involve, what each of us needs to bring to the table to be effective contributers, and what needs to happen to get us ready to produce smart computing systems.'),
(1570015579, 'parallel', 'Complex Data Collection in Large-scale RFID Systems', 'Zhu', 'Weiping', 401, 'weiping.jpg', 'BJU', '14:45', '15:15', '0000-00-00', 'XXXX', 'YYYY'),
(1570017439, 'parallel', 'A Crowdsourcing Approach to Promote Safe Walking for Visually Impaired People', 'Lin', 'Chi-Yi', 101, 'CYLin.jpg', 'TKU', '13:45', '14:05', '0000-00-00', 'XXXX', 'YYYY'),
(1570017647, 'parallel', 'Soft Real-Time GPRS Traffic Analytics for Commercial M2M Communications Using Spark', 'Privitera', 'Gianluca', 201, 'priv.jpg', 'Messina', '14:05', '14:25', '0000-00-00', 'XXXX', 'YYYY'),
(1570017651, 'parallel', 'Cloud Service Recommendation based on Trust Measurement Using Ternary Interval Numbers', 'Ma', 'Hua', 301, 'hua12.jpg', 'NEU', '14:25', '14:45', '0000-00-00', 'XXXX', 'YYYY');

-- --------------------------------------------------------

--
-- 資料表結構 `surveyquestions`
--

CREATE TABLE `surveyquestions` (
  `quesID` int(11) NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `contents` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `surveyquestions`
--

INSERT INTO `surveyquestions` (`quesID`, `type`, `contents`) VALUES
(101, 'MC', 'Please rate the overall quality of the conference contents'),
(102, 'MC', 'have you been able to interact with other conference participants'),
(103, 'MC', 'Please rate the efficiency of the registration process'),
(104, 'MC', 'Do you consider the venue of the conference siutable'),
(105, 'MC', 'How would you find the beverages and food provided in the conference'),
(106, 'MC', 'Would you consider to join this conference again next year'),
(201, 'open', 'Which keynote presentation you like most?'),
(202, 'open', 'Which parallel session paper you like most?'),
(203, 'open', 'Please suggest what contents/topics that you like to contribute to this conference in future'),
(204, 'open', 'Please suggest how to improve the conference in future');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `attraction`
--
ALTER TABLE `attraction`
  ADD PRIMARY KEY (`attractionID`);

--
-- 資料表索引 `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`eventID`);

--
-- 資料表索引 `presentationcsv`
--
ALTER TABLE `presentationcsv`
  ADD PRIMARY KEY (`abstractID`),
  ADD UNIQUE KEY `speakerID` (`speakerID`);

--
-- 資料表索引 `surveyquestions`
--
ALTER TABLE `surveyquestions`
  ADD PRIMARY KEY (`quesID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
