-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2023 at 05:46 AM
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
-- Database: `sarbeshwor`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminpanel_bhetghat`
--

CREATE TABLE `adminpanel_bhetghat` (
  `id` bigint(20) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `mobileno` varchar(50) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `timeofday` varchar(100) DEFAULT NULL,
  `waytoreach` varchar(100) DEFAULT NULL,
  `preferreddate` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `receipt` varchar(100) DEFAULT NULL,
  `wvno` varchar(50) DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminpanel_bhetghat`
--

INSERT INTO `adminpanel_bhetghat` (`id`, `name`, `email`, `mobileno`, `gender`, `timeofday`, `waytoreach`, `preferreddate`, `address`, `message`, `receipt`, `wvno`, `timestamp`) VALUES
(28, 'Inshan Bhattarai', 'inshanbhattarai2045@gmail.com', '9863520797', 'Male', 'Morning', 'Phone', '2023-10-07', 'Thapagaun', 'Test Message', '', '9876543210', '2023-10-05 11:46:12.885911');

-- --------------------------------------------------------

--
-- Table structure for table `adminpanel_contactus`
--

CREATE TABLE `adminpanel_contactus` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `message` longtext DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminpanel_contactus`
--

INSERT INTO `adminpanel_contactus` (`id`, `name`, `email`, `number`, `message`, `timestamp`) VALUES
(16, 'Inshan Bhattarai', 'inshanbhattarai2045@gmail.com', '9863520797', 'Test Message', '2023-10-05 10:42:40.753676');

-- --------------------------------------------------------

--
-- Table structure for table `adminpanel_course`
--

CREATE TABLE `adminpanel_course` (
  `id` bigint(20) NOT NULL,
  `name` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `dateofbirth` date NOT NULL,
  `mobileno` varchar(50) NOT NULL,
  `email` varchar(300) NOT NULL,
  `education` varchar(100) DEFAULT NULL,
  `prof` varchar(100) DEFAULT NULL,
  `courselevel` varchar(150) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `timestamp` datetime(6) DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminpanel_course`
--

INSERT INTO `adminpanel_course` (`id`, `name`, `address`, `gender`, `dateofbirth`, `mobileno`, `email`, `education`, `prof`, `courselevel`, `nationality`, `timestamp`) VALUES
(15, 'Inshan Bhattarai', 'Thapagaun', 'Male', '2022-11-09', '9863520797', 'inshanbhattarai2045@gmail.com', 'Bachelor', 'Developer', 'Course1', 'Nepalese', '2023-10-05 11:43:33.191484');

-- --------------------------------------------------------

--
-- Table structure for table `adminpanel_globalsettings`
--

CREATE TABLE `adminpanel_globalsettings` (
  `id` bigint(20) NOT NULL,
  `Sitename` varchar(100) NOT NULL,
  `Sitecontact` varchar(100) NOT NULL,
  `Siteemail` varchar(254) NOT NULL,
  `Siteaddress` varchar(500) NOT NULL,
  `Sitedescription` varchar(500) NOT NULL,
  `Siteaddress1` varchar(300) NOT NULL,
  `Siteaddress2` varchar(300) NOT NULL,
  `Sitefacebooklink` varchar(300) NOT NULL,
  `Sitecontactdetail` varchar(300) NOT NULL,
  `Siteyoutubelink` varchar(300) NOT NULL,
  `Sitebox` varchar(300) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `back_image` varchar(100) DEFAULT NULL,
  `brochure` varchar(100) DEFAULT NULL,
  `brochure_name` varchar(100) DEFAULT NULL,
  `Sitelink1` varchar(300) NOT NULL,
  `Sitelink2` varchar(300) NOT NULL,
  `Sitelink3` varchar(300) NOT NULL,
  `Sitelink4` varchar(300) NOT NULL,
  `Sitelink5` varchar(300) NOT NULL,
  `Sitetwitterlink` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminpanel_globalsettings`
--

INSERT INTO `adminpanel_globalsettings` (`id`, `Sitename`, `Sitecontact`, `Siteemail`, `Siteaddress`, `Sitedescription`, `Siteaddress1`, `Siteaddress2`, `Sitefacebooklink`, `Sitecontactdetail`, `Siteyoutubelink`, `Sitebox`, `logo`, `back_image`, `brochure`, `brochure_name`, `Sitelink1`, `Sitelink2`, `Sitelink3`, `Sitelink4`, `Sitelink5`, `Sitetwitterlink`) VALUES
(1, 'सर्वेश्वर ज्योतिष तथा वास्तु सेवा केन्द्र ', '+977-984-9679838', 'jyotishparamarsh3@gmail.com', 'पशुपतिनाथ रोड, काठमाडौं ४४६६०', '\"चिना हेरेर फलादेश गर्ने , जन्मसमयको आधारमा तुरुतै चिना निर्माण गरि online बाट पनि जानकारी दिइनेछ।\" ', 'contact@sarbeshwar.com', 'Pashupati Nath Road, Kathmandu 44660', 'https://www.facebook.com/10Astro/', 'सम्पर्क गर्नुहोस', '', 'द्रुत लिङ्क', 'Global/calligraphy-884267_1280.png', 'Global/astrology1.jpg', 'brochure/illust58-6869-01.jpg', NULL, 'आजको राशिफल', 'प्रोफाइल', 'सेवाहरू', 'ज्योतिष सिक्नुहोस', 'भेट्ने समयको लागी क्लिक गर्नुहोस्', '');

-- --------------------------------------------------------

--
-- Table structure for table `adminpanel_navigation`
--

CREATE TABLE `adminpanel_navigation` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `position` int(11) NOT NULL,
  `page_type` varchar(50) DEFAULT NULL,
  `title` varchar(1000) NOT NULL,
  `short_desc` longtext DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `bannerimage` varchar(100) DEFAULT NULL,
  `meta_title` varchar(100) DEFAULT NULL,
  `meta_keyword` varchar(100) DEFAULT NULL,
  `icon_image` longtext DEFAULT NULL,
  `slider_image` varchar(100) DEFAULT NULL,
  `brochure` varchar(100) DEFAULT NULL,
  `Parent_id` bigint(20) DEFAULT NULL,
  `photodate` date NOT NULL,
  `video_file` varchar(100) NOT NULL,
  `desc1` longtext DEFAULT NULL,
  `timestamp` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminpanel_navigation`
--

INSERT INTO `adminpanel_navigation` (`id`, `name`, `caption`, `status`, `position`, `page_type`, `title`, `short_desc`, `desc`, `bannerimage`, `meta_title`, `meta_keyword`, `icon_image`, `slider_image`, `brochure`, `Parent_id`, `photodate`, `video_file`, `desc1`, `timestamp`) VALUES
(1, 'हाम्रोबारे', '', 'Publish', 2, 'Group', '', '', 'None', '', '', '', '', '', '', NULL, '2023-09-05', '', NULL, '2023-10-07 10:19:47.490857'),
(2, 'पोर्टफोलियो', 'गृह पृष्ठ', 'Publish', 1, 'Portfolio', 'हाम्रोबारे', '<p><span style=\"color: rgb(107, 114, 128); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">ज्योतिष भनेको सौर्यमण्डलमा रहेका ताराहरू र ग्रहहरूको आपसी सम्बन्धबाट प्राप्तहुने किरण अथवा तरङ्गलाई सुक्ष्म गणितीय सूत्रबाट अध्ययन गरेर त्यसको यस पृथ्वीमा विद्यमान जड र चेतन माथि पर्ने प्रभावको अध्ययन र विश्लेषण गर्ने अद्वितीय विज्ञान हो। वेदको प्राकट्य संगै अपौरूषेय रूपमा स्थापित ज्योतिष शास्त्र वेदको आँखाको रूपमा रहेको छ। वेदमा सम्पूर्ण ज्ञान विज्ञान निहित रहेको कुरा कतिपय पश्चिमा विद्वानहरूले पनि स्वीकार गरेका छन्। ज्योतिष भनेको सौर्यमण्डलमा रहेका ताराहरू र ग्रहहरूको आपसी सम्बन्धबाट प्राप्तहुने किरण अथवा तरङ्गलाई सुक्ष्म गणितीय सूत्रबाट अध्ययन गरेर त्यसको यस पृथ्वीमा विद्यमान जड र चेतन माथि पर्ने प्रभावको अध्ययन र विश्लेषण गर्ने अद्वितीय विज्ञान हो। वेदको प्राकट्य संगै अपौरूषेय रूपमा स्थापित ज्योतिष शास्त्र वेदको आँखाको रूपमा रहेको छ। वेदमा सम्पूर्ण ज्ञान विज्ञान निहित रहेको कुरा कतिपय पश्चिमा विद्वानहरूले पनि स्वीकार गरेका छन्।</span><br></p>', 'None', 'about/slider1_ndNVDby.jpeg', 'हाम्रो पोर्टफोलियो', '', '', 'about/aboutus_2zXUeGz.jpeg', '', 1, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(3, 'प्रोफाइल', 'गृहपृष्‍ठ', 'Publish', 2, 'Group', 'हाम्रोबारे', '<span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">ज्योतिषशास्त्र परिचय ‘ज्योतिर्यस्य स ज्योतिषः’ अर्थात् प्रकाशित पार्ने द्युत् धातुमा इसुन् प्रत्यय लागेर अनुबन्धलोपपूर्वक ज्योतिष शब्दको निर्माण हुन्छ । यसैगरी उज्यालो अर्थ प्रदान गर्ने ज्योतिस् शब्दमा घञ् प्रत्यय लागेर पनि पाणिनीय व्याकरणअनुसार ज्योतिष शब्द निष्पन्न हुन्छ ।आकाशमा रहेका जति पनि उज्याला तेजपुञ्जछन् ती सबैलाई ज्योति भनिन्छ । ती मध्ये सधैँ एकरूपका रहने नक्षत्र हुन् ।</span>', 'None', 'about/profileImage_4EVnsZF.jpeg', 'Sarbeshwar Profile', '', '', 'about/slider1_pGFKfeJ.jpeg', '', 1, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(4, 'हाम्रा सेवाहरु', '', 'Publish', 3, 'Group', '', '', NULL, '', '', '', '', '', '', NULL, '2023-09-21', '', NULL, '2023-10-07 10:19:47.490857'),
(5, 'Service', 'गृहपृष्‍ठ', 'Publish', 1, 'Service', 'हाम्रा सेवाहरु', '', 'None', 'about/slider1_ypd3VMU.jpeg', 'हाम्रा सेवाहरु', '', '', '', '', 4, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(6, 'मुहूर्त निर्धारण', 'गृहपृष्‍ठ', 'Publish', 2, 'ServiceData', 'थप पढ्नुहोस्', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">मुहूर्त एक समय मापन एकाई हो। वर्तमान नेपाली भाषामा यस शब्दलाई कुनै कार्यलाई आरम्भ गर्ने शुभ साईतलाई भनिन्छ । कुनैपनि कार्य शुभ समयमा शुरु गर्नाले त्यस बाट अपेक्षित फल प्राप्त गर्न सकिन्छ । हामीले शुरु गर्ने कुनै पनि महत्वपूर्ण कार्यमा मुहूर्त ख्याल गर्नु आवश्यक छ । अशुभ मुहर्तमा शुरु गरिएका कार्य हरुमा विघ्न बाधाहरु आउँछन कार्य असफल हुन्छ । समयमा नै सम्पन्न हुन नसक्ने, विचमा समस्या आउने, धेरै धनसम्पती खर्च हुने तर कार्य पुरा नहुने, व्यक्तिलाई दुर्घटना चोटपटक एवं रोग लागेर मृत्यु समेत हुन सक्छ । यदि तपाई कुनै महत्वपूर्ण कार्य वा संस्कार सम्पन्न गर्न चाहनुहुन्छ भने शुभ मुहूर्त हेराउन हामीलाई सम्पर्क गर्न सक्नुहुनेछ । हामी तपाई लाई पञ्चांग लगायत ग्रह नक्षत्रको अवस्था विश्लेषण गरि उपयुक्त मुहुर्त निर्धारण गर्न सहयोग गर्नेछौं । सम्पर्क नं ९८४२२१९७३५, ९८१९०८३६२९</span><br></p>', 'None', '', 'हाम्रा सेवाहरु', 'मुहूर्त निर्धारण', '', 'about/rudri.jpg', '', 4, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(7, 'सम्पूर्ण वास्तु परामर्श', 'गृहपृष्‍ठ', 'Publish', 3, 'ServiceData', 'थप पढ्नुहोस्', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">मुहूर्त एक समय मापन एकाई हो। वर्तमान नेपाली भाषामा यस शब्दलाई कुनै कार्यलाई आरम्भ गर्ने शुभ साईतलाई भनिन्छ । कुनैपनि कार्य शुभ समयमा शुरु गर्नाले त्यस बाट अपेक्षित फल प्राप्त गर्न सकिन्छ । हामीले शुरु गर्ने कुनै पनि महत्वपूर्ण कार्यमा मुहूर्त ख्याल गर्नु आवश्यक छ । अशुभ मुहर्तमा शुरु गरिएका कार्य हरुमा विघ्न बाधाहरु आउँछन कार्य असफल हुन्छ । समयमा नै सम्पन्न हुन नसक्ने, विचमा समस्या आउने, धेरै धनसम्पती खर्च हुने तर कार्य पुरा नहुने, व्यक्तिलाई दुर्घटना चोटपटक एवं रोग लागेर मृत्यु समेत हुन सक्छ । यदि तपाई कुनै महत्वपूर्ण कार्य वा संस्कार सम्पन्न गर्न चाहनुहुन्छ भने शुभ मुहूर्त हेराउन हामीलाई सम्पर्क गर्न सक्नुहुनेछ । हामी तपाई लाई पञ्चांग लगायत ग्रह नक्षत्रको अवस्था विश्लेषण गरि उपयुक्त मुहुर्त निर्धारण गर्न सहयोग गर्नेछौं । सम्पर्क नं ९८४२२१९७३५, ९८१९०८३६२९</span><br></p>', 'None', '', 'हाम्रा सेवाहरु', 'सम्पूर्ण वास्तु परामर्श', '', 'about/vastupuja.jpg', '', 4, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(8, 'अरिष्ट ग्रह तथा योग शान्ती', 'गृहपृष्‍ठ', 'Publish', 4, 'ServiceData', 'थप पढ्नुहोस्', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">मुहूर्त एक समय मापन एकाई हो। वर्तमान नेपाली भाषामा यस शब्दलाई कुनै कार्यलाई आरम्भ गर्ने शुभ साईतलाई भनिन्छ । कुनैपनि कार्य शुभ समयमा शुरु गर्नाले त्यस बाट अपेक्षित फल प्राप्त गर्न सकिन्छ । हामीले शुरु गर्ने कुनै पनि महत्वपूर्ण कार्यमा मुहूर्त ख्याल गर्नु आवश्यक छ । अशुभ मुहर्तमा शुरु गरिएका कार्य हरुमा विघ्न बाधाहरु आउँछन कार्य असफल हुन्छ । समयमा नै सम्पन्न हुन नसक्ने, विचमा समस्या आउने, धेरै धनसम्पती खर्च हुने तर कार्य पुरा नहुने, व्यक्तिलाई दुर्घटना चोटपटक एवं रोग लागेर मृत्यु समेत हुन सक्छ । यदि तपाई कुनै महत्वपूर्ण कार्य वा संस्कार सम्पन्न गर्न चाहनुहुन्छ भने शुभ मुहूर्त हेराउन हामीलाई सम्पर्क गर्न सक्नुहुनेछ । हामी तपाई लाई पञ्चांग लगायत ग्रह नक्षत्रको अवस्था विश्लेषण गरि उपयुक्त मुहुर्त निर्धारण गर्न सहयोग गर्नेछौं । सम्पर्क नं ९८४२२१९७३५, ९८१९०८३६२९</span><br></p>', 'None', '', 'हाम्रा सेवाहरु', 'अरिष्ट ग्रह तथा योग शान्ती', '', 'about/grahashanti.jpg', '', 4, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(9, 'चिना एवं जन्मकुण्डली निर्माण', 'गृहपृष्‍ठ', 'Publish', 5, 'ServiceData', 'थप पढ्नुहोस्', '<span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">मुहूर्त एक समय मापन एकाई हो। वर्तमान नेपाली भाषामा यस शब्दलाई कुनै कार्यलाई आरम्भ गर्ने शुभ साईतलाई भनिन्छ । कुनैपनि कार्य शुभ समयमा शुरु गर्नाले त्यस बाट अपेक्षित फल प्राप्त गर्न सकिन्छ । हामीले शुरु गर्ने कुनै पनि महत्वपूर्ण कार्यमा मुहूर्त ख्याल गर्नु आवश्यक छ । अशुभ मुहर्तमा शुरु गरिएका कार्य हरुमा विघ्न बाधाहरु आउँछन कार्य असफल हुन्छ । समयमा नै सम्पन्न हुन नसक्ने, विचमा समस्या आउने, धेरै धनसम्पती खर्च हुने तर कार्य पुरा नहुने, व्यक्तिलाई दुर्घटना चोटपटक एवं रोग लागेर मृत्यु समेत हुन सक्छ । यदि तपाई कुनै महत्वपूर्ण कार्य वा संस्कार सम्पन्न गर्न चाहनुहुन्छ भने शुभ मुहूर्त हेराउन हामीलाई सम्पर्क गर्न सक्नुहुनेछ । हामी तपाई लाई पञ्चांग लगायत ग्रह नक्षत्रको अवस्था विश्लेषण गरि उपयुक्त मुहुर्त निर्धारण गर्न सहयोग गर्नेछौं । सम्पर्क नं ९८४२२१९७३५, ९८१९०८३६२९</span>', 'None', '', 'हाम्रा सेवाहरु', 'चिना एवं जन्मकुण्डली निर्माण', '', 'about/service3.jpeg', '', 4, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(10, 'ज्योतिष सिक्नुहोस', 'गृहपृष्ठ ', 'Publish', 4, 'Group', 'ज्योतिष सिक्नुहोस', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">ज्योतिष भनेको सौर्यमण्डलमा रहेका ताराहरू र ग्रहहरूको आपसी सम्बन्धबाट प्राप्तहुने किरण अथवा तरङ्गलाई सुक्ष्म गणितीय सूत्रबाट अध्ययन गरेर त्यसको यस पृथ्वीमा विद्यमान जड र चेतन माथि पर्ने प्रभावको अध्ययन र विश्लेषण गर्ने अद्वितीय विज्ञान हो। वेदको प्राकट्य संगै अपौरूषेय रूपमा स्थापित ज्योतिष शास्त्र वेदको आँखाको रूपमा रहेको छ। वेदमा सम्पूर्ण ज्ञान विज्ञान निहित रहेको कुरा कतिपय पश्चिमा विद्वानहरूले पनि स्वीकार गरेका छन्। त्यो ज्ञान र विज्ञानलाई अध्ययन गर्नको लागि ज्योतिषरूपी चक्षुको आवश्यकता छ। यदि तपाई घर बसी बसी नेपाल भरी एवं विश्वको जुन सुकै ठाउँ बाट अनलाईन सेवा मार्फत ज्योतिष एवं वास्तुशास्त्र सम्बन्धि ज्ञान लिन सक्नु हुनेछ । हामी बिज्ञ ज्योतिषी हरु बाट अनलाईन कक्षा मार्फत तपाईलाई ज्योतिष शास्त्रको सैद्धान्तिक एवं व्यावहारिक पक्षहरु सिकाउने छौं । तपाईले पुरा गरेको अवधि र ज्ञानका आधारमा प्रमाण पत्र पनि उपलब्ध गराउनेछौं । यदि तपाई पनि ज्योतिष शास्त्र एवं वास्तुशास्त्रबारे विद्या आर्जन गरि यसलाई पेशा बनाउन चाहानुहुन्छ वा यस विषमा बिज्ञता हाँसिल गर्न चाहानुहुन्छ भने हामी लाई सम्पर्क गर्नुहोस । सम्पर्क नं ९७७–९८४२२१९७३५ (यो नम्बरमा भाईबर, इमो, ह्वाटसप, बोटिम उपलब्ध छ) ९७७ – ९८१९०८३६२९ । इमेल – nepaljyotish.com@gmail.com, contact@nepaljyotish.com</span><br></p>', 'None', 'about/profileBg_mptH6IW.webp', 'सेवाहरु', '', '', 'about/slider1_Dm76EEZ.jpeg', '', NULL, '2023-09-14', '', NULL, '2023-10-07 10:19:47.490857'),
(11, 'गृहपृष्ठ', '', 'Publish', 1, 'Group', '', '', NULL, '', '', '', '', '', '', NULL, '2023-09-07', '', NULL, '2023-10-07 10:19:47.490857'),
(12, 'Aboutus', 'हाम्रोबारे', 'Publish', 1, 'Aboutus', 'थप पढ्नुहोस्', '<p><font color=\"#6b7280\" face=\"-apple-system, BlinkMacSystemFont, Segoe UI, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol\"><span style=\"font-size: 20px;\">ज्योतिष भनेको सौर्यमण्डलमा रहेका ताराहरू र ग्रहहरूको आपसी सम्बन्धबाट प्राप्तहुने किरण अथवा तरङ्गलाई सुक्ष्म गणितीय सूत्रबाट अध्ययन गरेर त्यसको यस पृथ्वीमा विद्यमान जड र चेतन माथि पर्ने प्रभावको अध्ययन र विश्लेषण गर्ने अद्वितीय विज्ञान हो। वेदको प्राकट्य संगै अपौरूषेय रूपमा स्थापित ज्योतिष शास्त्र वेदको आँखाको रूपमा रहेको छ। वेदमा सम्पूर्ण ज्ञान विज्ञान निहित रहेको कुरा कतिपय पश्चिमा विद्वानहरूले पनि स्वीकार गरेका छन्। ज्योतिष भनेको सौर्यमण्डलमा रहेका ताराहरू र ग्रहहरूको आपसी सम्बन्धबाट प्राप्तहुने किरण अथवा तरङ्गलाई सुक्ष्म गणितीय सूत्रबाट अध्ययन गरेर त्यसको यस पृथ्वीमा विद्यमान जड र चेतन माथि पर्ने प्रभावको अध्ययन र विश्लेषण गर्ने अद्वितीय विज्ञान हो। वेदको प्राकट्य संगै अपौरूषेय रूपमा स्थापित ज्योतिष शास्त्र वेदको आँखाको रूपमा रहेको छ। वेदमा सम्पूर्ण ज्ञान विज्ञान निहित रहेको कुरा कतिपय पश्चिमा विद्वानहरूले पनि स्वीकार गरेका छन्।</span></font><br></p>', 'None', '', '', '', '', 'about/aboutus.jpeg', '', 11, '2000-01-20', '', '', '2023-10-07 10:19:47.490857'),
(13, 'Banner', '', 'Publish', 2, 'Group', '', '', NULL, '', '', '', '', '', '', 11, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(14, 'Banner', 'भेट्ने समयको लागी क्लिक गर्नुहोस्', 'Publish', 1, 'Banner', '\'ज्योतिर्यस्य स ज्योतिष:\'', '', 'None', '', '', '', '', '', '', 13, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(15, 'BannerData1', '', 'Publish', 2, 'BannerData', '', '', 'None', 'about/slider1_NxwUYiC.jpeg', '', '', '', '', '', 13, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(16, 'BannerData2', '', 'Publish', 3, 'BannerData', '', '', NULL, 'about/bannerImage1.jpg', '', '', '', '', '', 13, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(18, 'BannerData3', '', 'Publish', 4, 'BannerData', '', '', NULL, 'about/bannerimage3.jpg', '', '', '', '', '', 13, '0000-00-00', '', NULL, '2023-10-07 10:19:47.490857'),
(19, 'CourseHome', 'ज्योतिष शास्त्र सिक्नुहोस्', 'Publish', 3, 'CourseHome', 'ज्योतिषशास्त्र परिचय', '<p><br></p>', 'None', 'about/360animatecourse.png', 'थप पढ्नुहोस्', '', '', '', '', 11, '2000-01-20', '', '‘ज्योतिर्यस्य स ज्योतिषः’ अर्थात् प्रकाशित पार्ने द्युत् धातुमा इसुन् प्रत्यय लागेर अनुबन्धलोपपूर्वक ज्योतिष शब्दको निर्माण हुन्छ । यसैगरी उज्यालो अर्थ प्रदान गर्ने ज्योतिस् शब्दमा घञ् प्रत्यय लागेर पनि पाणिनीय व्याकरणअनुसार ज्योतिष शब्द निष्पन्न हुन्छ ।आकाशमा रहेका जति पनि उज्याला तेजपुञ्जछन् ती सबैलाई ज्योति भनिन्छ । ती मध्ये सधैँ एकरूपका रहने नक्षत्र हुन् ।', '2023-10-07 10:19:47.490857'),
(20, 'LatestNews', '', 'Publish', 4, 'Group', '', '', NULL, '', '', '', '', '', '', 11, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(21, 'LatestNews', 'गृहपृष्ठ', 'Publish', 1, 'LatestNews', 'नवीनतम समाचार', '', 'None', 'about/slider1_KWbURfx.jpeg', '', '', '', '', '', 20, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(22, 'LatestNewsData1', 'थप पढ्नुहोस्', 'Publish', 2, 'LatestNewsData', 'News Heading 1', '<span style=\"color: rgb(17, 24, 39); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">वेदको प्राकट्य संगै अपौरूषेय रूपमा स्थापित ज्योतिष शास्त्र वेदको आँखाको रूपमा रहेको छ। वेदमा सम्पूर्ण ज्ञान विज्ञान निहित रहेको कुरा कतिपय पश्चिमा विद्वानहरूले पनि स्वीकार गरेका</span>', 'None', '', 'थप पढ्नुहोस्', '', '', 'about/news1.jpeg', '', 20, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(23, 'LatestNewsData2', 'गृहपृष्ठ', 'Publish', 3, 'LatestNewsData', 'News Heading 2', '<p><span style=\"color: rgb(17, 24, 39); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">वेदको प्राकट्य संगै अपौरूषेय रूपमा स्थापित ज्योतिष शास्त्र वेदको आँखाको रूपमा रहेको छ। वेदमा सम्पूर्ण ज्ञान विज्ञान निहित रहेको कुरा कतिपय पश्चिमा विद्वानहरूले पनि स्वीकार गरेका</span><br></p>', 'None', '', 'थप पढ्नुहोस्', '', '', 'about/news2.jpeg', '', 20, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(24, 'LatestNewsData3', 'गृहपृष्ठ', 'Publish', 4, 'LatestNewsData', 'News Heading 3', '<p><span style=\"color: rgb(17, 24, 39); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">वेदको प्राकट्य संगै अपौरूषेय रूपमा स्थापित ज्योतिष शास्त्र वेदको आँखाको रूपमा रहेको छ। वेदमा सम्पूर्ण ज्ञान विज्ञान निहित रहेको कुरा कतिपय पश्चिमा विद्वानहरूले पनि स्वीकार गरेका</span><br></p>', 'None', '', 'थप पढ्नुहोस्', '', '', 'about/news3.webp', '', 20, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(25, 'LatestNewsData4', 'गृहपृष्ठ', 'Publish', 5, 'LatestNewsData', 'News Heading 4', '<p><span style=\"color: rgb(17, 24, 39); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">वेदको प्राकट्य संगै अपौरूषेय रूपमा स्थापित ज्योतिष शास्त्र वेदको आँखाको रूपमा रहेको छ। वेदमा सम्पूर्ण ज्ञान विज्ञान निहित रहेको कुरा कतिपय पश्चिमा विद्वानहरूले पनि स्वीकार गरेका</span><br></p>', 'None', '', 'थप पढ्नुहोस्', '', '', 'about/news4.jpeg', '', 20, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(26, 'Service', '', 'Publish', 5, 'Group', '', '', NULL, '', '', '', '', '', '', 11, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(27, 'ServiceHome', 'हाम्रा सेवाहरु', 'Publish', 1, 'ServiceHome', '', '', 'None', '', 'सबै हेर्नुहोस्', '', '', '', '', 26, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(28, 'ServiceHomeData1', 'थप पढ्नुहोस्', 'Publish', 2, 'ServiceHomeData', 'मुहूर्त निर्धारण', '<div style=\"color: rgb(212, 212, 212); font-family: Consolas, &quot;Courier New&quot;, monospace; font-size: 14px; line-height: 19px; white-space: pre;\"><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px; white-space: normal;\">मुहूर्त एक समय मापन एकाई हो। वर्तमान नेपाली भाषामा यस शब्दलाई कुनै कार्यलाई आरम्भ गर्ने शुभ साईतलाई भनिन्छ । कुनैपनि कार्य शुभ समयमा शुरु गर्नाले त्यस बाट अपेक्षित फल प्राप्त गर्न सकिन्छ । हामीले शुरु गर्ने कुनै पनि महत्वपूर्ण कार्यमा मुहूर्त ख्याल गर्नु आवश्यक छ । अशुभ मुहर्तमा शुरु गरिएका कार्य हरुमा विघ्न बाधाहरु आउँछन कार्य असफल हुन्छ । समयमा नै सम्पन्न हुन नसक्ने, विचमा समस्या आउने, धेरै धनसम्पती खर्च हुने तर कार्य पुरा नहुने, व्यक्तिलाई दुर्घटना चोटपटक एवं रोग लागेर मृत्यु समेत हुन सक्छ । यदि तपाई कुनै महत्वपूर्ण कार्य वा संस्कार सम्पन्न गर्न चाहनुहुन्छ भने शुभ मुहूर्त हेराउन हामीलाई सम्पर्क गर्न सक्नुहुनेछ । हामी तपाई लाई पञ्चांग लगायत ग्रह नक्षत्रको अवस्था विश्लेषण गरि उपयुक्त मुहुर्त निर्धारण गर्न सहयोग गर्नेछौं । सम्पर्क नं ९८४२२१९७३५, ९८१९०८३६२९</span><span style=\"background-color: rgb(30, 30, 30);\"><br></span></div>', NULL, '', '', '', '', 'about/rudri_nJfIP59.jpg', '', 26, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(29, 'ServiceHomeData2', 'थप पढ्नुहोस्', 'Publish', 3, 'ServiceHomeData', 'सम्पूर्ण वास्तु परामर्श', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">मुहूर्त एक समय मापन एकाई हो। वर्तमान नेपाली भाषामा यस शब्दलाई कुनै कार्यलाई आरम्भ गर्ने शुभ साईतलाई भनिन्छ । कुनैपनि कार्य शुभ समयमा शुरु गर्नाले त्यस बाट अपेक्षित फल प्राप्त गर्न सकिन्छ । हामीले शुरु गर्ने कुनै पनि महत्वपूर्ण कार्यमा मुहूर्त ख्याल गर्नु आवश्यक छ । अशुभ मुहर्तमा शुरु गरिएका कार्य हरुमा विघ्न बाधाहरु आउँछन कार्य असफल हुन्छ । समयमा नै सम्पन्न हुन नसक्ने, विचमा समस्या आउने, धेरै धनसम्पती खर्च हुने तर कार्य पुरा नहुने, व्यक्तिलाई दुर्घटना चोटपटक एवं रोग लागेर मृत्यु समेत हुन सक्छ । यदि तपाई कुनै महत्वपूर्ण कार्य वा संस्कार सम्पन्न गर्न चाहनुहुन्छ भने शुभ मुहूर्त हेराउन हामीलाई सम्पर्क गर्न सक्नुहुनेछ । हामी तपाई लाई पञ्चांग लगायत ग्रह नक्षत्रको अवस्था विश्लेषण गरि उपयुक्त मुहुर्त निर्धारण गर्न सहयोग गर्नेछौं । सम्पर्क नं ९८४२२१९७३५, ९८१९०८३६२९</span><br></p>', NULL, '', '', '', '', 'about/vastupuja_wP3KE2b.jpg', '', 26, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(30, 'ServiceHomeData3', 'थप पढ्नुहोस्', 'Publish', 4, 'ServiceHomeData', 'अरिष्ट ग्रह तथा योग शान्ती', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">मुहूर्त एक समय मापन एकाई हो। वर्तमान नेपाली भाषामा यस शब्दलाई कुनै कार्यलाई आरम्भ गर्ने शुभ साईतलाई भनिन्छ । कुनैपनि कार्य शुभ समयमा शुरु गर्नाले त्यस बाट अपेक्षित फल प्राप्त गर्न सकिन्छ । हामीले शुरु गर्ने कुनै पनि महत्वपूर्ण कार्यमा मुहूर्त ख्याल गर्नु आवश्यक छ । अशुभ मुहर्तमा शुरु गरिएका कार्य हरुमा विघ्न बाधाहरु आउँछन कार्य असफल हुन्छ । समयमा नै सम्पन्न हुन नसक्ने, विचमा समस्या आउने, धेरै धनसम्पती खर्च हुने तर कार्य पुरा नहुने, व्यक्तिलाई दुर्घटना चोटपटक एवं रोग लागेर मृत्यु समेत हुन सक्छ । यदि तपाई कुनै महत्वपूर्ण कार्य वा संस्कार सम्पन्न गर्न चाहनुहुन्छ भने शुभ मुहूर्त हेराउन हामीलाई सम्पर्क गर्न सक्नुहुनेछ । हामी तपाई लाई पञ्चांग लगायत ग्रह नक्षत्रको अवस्था विश्लेषण गरि उपयुक्त मुहुर्त निर्धारण गर्न सहयोग गर्नेछौं । सम्पर्क नं ९८४२२१९७३५, ९८१९०८३६२९</span><br></p>', NULL, 'about/grahashanti_3SI3XSF.jpg', '', '', '', 'about/grahashanti_5YdgXBN.jpg', '', 26, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(31, 'ServiceHomeData4', 'थप पढ्नुहोस्', 'Publish', 5, 'ServiceHomeData', 'चिना एवं जन्मकुण्डली निर्माण', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">मुहूर्त एक समय मापन एकाई हो। वर्तमान नेपाली भाषामा यस शब्दलाई कुनै कार्यलाई आरम्भ गर्ने शुभ साईतलाई भनिन्छ । कुनैपनि कार्य शुभ समयमा शुरु गर्नाले त्यस बाट अपेक्षित फल प्राप्त गर्न सकिन्छ । हामीले शुरु गर्ने कुनै पनि महत्वपूर्ण कार्यमा मुहूर्त ख्याल गर्नु आवश्यक छ । अशुभ मुहर्तमा शुरु गरिएका कार्य हरुमा विघ्न बाधाहरु आउँछन कार्य असफल हुन्छ । समयमा नै सम्पन्न हुन नसक्ने, विचमा समस्या आउने, धेरै धनसम्पती खर्च हुने तर कार्य पुरा नहुने, व्यक्तिलाई दुर्घटना चोटपटक एवं रोग लागेर मृत्यु समेत हुन सक्छ । यदि तपाई कुनै महत्वपूर्ण कार्य वा संस्कार सम्पन्न गर्न चाहनुहुन्छ भने शुभ मुहूर्त हेराउन हामीलाई सम्पर्क गर्न सक्नुहुनेछ । हामी तपाई लाई पञ्चांग लगायत ग्रह नक्षत्रको अवस्था विश्लेषण गरि उपयुक्त मुहुर्त निर्धारण गर्न सहयोग गर्नेछौं । सम्पर्क नं ९८४२२१९७३५, ९८१९०८३६२९</span><br></p>', NULL, 'about/service3_23Rk6XA.jpeg', '', '', '', 'about/service3_j6MrBzN.jpeg', '', 26, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(32, 'Testimonial', '', 'Publish', 6, 'Group', '', '', NULL, '', '', '', '', '', '', 11, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(33, 'Testimonial', 'प्रशंसापत्र', 'Publish', 1, 'Testimonial', '', '', NULL, 'about/testimonialbg.jpg', '', '', '', 'about/testimonialbg_HBX5h3G.jpg', '', 32, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(34, 'शर्बेश्वर ज्योतिष संस्था', '', 'Publish', 2, 'TestimonialData', 'ज्योतिष भनेको सौर्यमण्डलमा रहेका ताराहरू र ग्रहहरूको आपसी सम्बन्धबाट प्राप्तहुने किरण अथवा तरङ्गलाई सुक्ष्म गणितीय सूत्रबाट अध्ययन गरेर त्यसको यस पृथ्वीमा विद्यमान जड र चेतन माथि पर्ने प्रभावको अध्ययन र विश्लेषण गर्ने अद्वितीय विज्ञान हो। वेदको प्राकट्य संगै अपौरूषेय रूपमा स्थापित ज्योतिष शास्त्र वेदको आँखाको रूपमा रहेको छ |', '<h3 style=\"line-height: 19px;\"><br></h3>', 'None', '', '', '', '', 'about/visionImage.png', '', 32, '2000-01-20', '', 'ज्योतिष भनेको सौर्यमण्डलमा रहेका ताराहरू र ग्रहहरूको आपसी सम्बन्धबाट प्राप्तहुने किरण अथवा तरङ्गलाई सुक्ष्म गणितीय सूत्रबाट अध्ययन गरेर त्यसको यस पृथ्वीमा विद्यमान जड र चेतन माथि पर्ने प्रभावको अध्ययन र विश्लेषण गर्ने अद्वितीय विज्ञान हो। वेदको प्राकट्य संगै अपौरूषेय रूपमा स्थापित ज्योतिष शास्त्र वेदको आँखाको रूपमा रहेको छ |', '2023-10-07 10:19:47.490857'),
(35, 'शर्बेश्वर ज्योतिष संस्था', '', 'Publish', 3, 'TestimonialData', '', '', 'None', '', '', '', '', 'about/testimonuser_dNjYkGt.jpeg', '', 32, '2000-01-20', '', 'ज्योतिष भनेको सौर्यमण्डलमा रहेका ताराहरू र ग्रहहरूको आपसी सम्बन्धबाट प्राप्तहुने किरण अथवा तरङ्गलाई सुक्ष्म गणितीय सूत्रबाट अध्ययन गरेर त्यसको यस पृथ्वीमा विद्यमान जड र चेतन माथि पर्ने प्रभावको अध्ययन र विश्लेषण गर्ने अद्वितीय विज्ञान हो। वेदको प्राकट्य संगै अपौरूषेय रूपमा स्थापित ज्योतिष शास्त्र वेदको आँखाको रूपमा रहेको छ |', '2023-10-07 10:19:47.490857'),
(36, 'शर्बेश्वर ज्योतिष संस्था', '', 'Publish', 4, 'TestimonialData', '', '', 'None', '', '', '', '', 'about/testimonuser_Vfi0NBH.jpeg', '', 32, '2000-01-20', '', 'ज्योतिष भनेको सौर्यमण्डलमा रहेका ताराहरू र ग्रहहरूको आपसी सम्बन्धबाट प्राप्तहुने किरण अथवा तरङ्गलाई सुक्ष्म गणितीय सूत्रबाट अध्ययन गरेर त्यसको यस पृथ्वीमा विद्यमान जड र चेतन माथि पर्ने प्रभावको अध्ययन र विश्लेषण गर्ने अद्वितीय विज्ञान हो। वेदको प्राकट्य संगै अपौरूषेय रूपमा स्थापित ज्योतिष शास्त्र वेदको आँखाको रूपमा रहेको छ |', '2023-10-07 10:19:47.490857'),
(37, 'राशिफल', '', 'Publish', 7, 'Group', '', '', NULL, '', '', '', '', '', '', 11, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(38, 'राशिफल Main', '', 'Publish', 1, 'Rashifal', '', '', NULL, '', '', '', '', '', '', 37, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(39, 'Daily Rashifal', 'थप पढ्नुहोस्', 'Publish', 2, 'DailyRashifalHome', 'दैनिक राशिफल', '<div style=\"font-family: Consolas, &quot;Courier New&quot;, monospace; font-size: 14px; line-height: 19px; white-space: pre;\"><div style=\"\"><p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></p></div></div>', 'None', '', '', '', '', '', '', 37, '2000-01-20', '', 'सिद्धान्त ज्योतिषशास्त्रको मूल हो । जसलाई गणित पनि भनिन्छ। यही सिद्धान्तकै आधारमा सम्पूर्ण आकाशीय ग्रहपिण्डको अवस्थिति पत्ता लगाउन सकिन्छ । गणितका सम्पूर्ण गणना प्रक्रिय यस अन्तर्गत हुने गर्दछन् ।', '2023-10-07 10:19:47.490857'),
(40, 'Weekly Rashifal', 'थप पढ्नुहोस्', 'Publish', 3, 'WeeklyRashifalHome', 'साप्ताहिक राशिफल', '<p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal; font-family: Consolas, &quot;Courier New&quot;, monospace; white-space: pre; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></p>', 'None', '', '', '', '', '', '', 37, '2000-01-20', '', 'सिद्धान्त ज्योतिषशास्त्रको मूल हो । जसलाई गणित पनि भनिन्छ। यही सिद्धान्तकै आधारमा सम्पूर्ण आकाशीय ग्रहपिण्डको अवस्थिति पत्ता लगाउन सकिन्छ । गणितका सम्पूर्ण गणना प्रक्रिय यस अन्तर्गत हुने गर्दछन् ।', '2023-10-07 10:19:47.490857'),
(41, 'Monthly Rashifal', 'थप पढ्नुहोस्', 'Publish', 4, 'MonthlyRashifalHome', 'मासिक राशिफल', '<p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal; font-family: Consolas, &quot;Courier New&quot;, monospace; white-space: pre; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></p>', 'None', '', '', '', '', '', '', 37, '2000-01-20', '', 'सिद्धान्त ज्योतिषशास्त्रको मूल हो । जसलाई गणित पनि भनिन्छ। यही सिद्धान्तकै आधारमा सम्पूर्ण आकाशीय ग्रहपिण्डको अवस्थिति पत्ता लगाउन सकिन्छ । गणितका सम्पूर्ण गणना प्रक्रिय यस अन्तर्गत हुने गर्दछन् ।', '2023-10-07 10:19:47.490857'),
(42, 'Yearly Rashifal', 'थप पढ्नुहोस्', 'Publish', 5, 'YearlyRashifalHome', 'वार्षिक राशिफल', '<p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal; font-family: Consolas, &quot;Courier New&quot;, monospace; white-space: pre; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></p>', 'None', '', '', '', '', '', '', 37, '2000-01-20', '', 'सिद्धान्त ज्योतिषशास्त्रको मूल हो । जसलाई गणित पनि भनिन्छ। यही सिद्धान्तकै आधारमा सम्पूर्ण आकाशीय ग्रहपिण्डको अवस्थिति पत्ता लगाउन सकिन्छ । गणितका सम्पूर्ण गणना प्रक्रिय यस अन्तर्गत हुने गर्दछन् ।', '2023-10-07 10:19:47.490857'),
(43, 'राशिफल', '', 'Publish', 5, 'Group', '', '', NULL, '', '', '', '', '', '', NULL, '2023-09-22', '', NULL, '2023-10-07 10:19:47.490857'),
(44, 'आजको राशिफल', 'गृहपृष्ठ', 'Publish', 1, 'DailyRashifal', 'राशिफल', '', NULL, '', '', '', '', 'about/slider1_rrLuEtl.jpeg', '', 43, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(45, 'साप्ताहिक राशिफल', 'गृहपृष्ठ', 'Publish', 3, 'WeeklyRashifal', 'राशिफल', '', 'None', '', '', '', '', 'about/slider1_wFzKUQb.jpeg', '', 43, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(46, 'मासिक राशिफल', 'गृहपृष्ठ', 'Publish', 5, 'MonthlyRashifal', 'राशिफल', '', 'None', '', '', '', '', 'about/slider1_FXhL23N.jpeg', '', 43, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(47, 'वार्षिक राशिफल', 'गृहपृष्ठ', 'Publish', 7, 'YearlyRashifal', 'राशिफल', '', 'None', '', '', '', '', 'about/slider1_fgTuake.jpeg', '', 43, '2000-01-20', '', NULL, '2023-10-07 10:19:47.490857'),
(49, 'ग्यालेरी', '', 'Publish', 6, 'Group', '', '', NULL, '', '', '', '', '', '', NULL, '2023-09-22', '', NULL, '2023-10-07 10:19:47.490857'),
(50, 'फोटो ग्यालेरी', '', 'Publish', 1, 'Group', '', '', NULL, '', '', '', '', '', '', 49, '0000-00-00', '', NULL, '2023-10-07 10:19:47.490857'),
(59, 'भिडियो ग्यालेरी', 'गृहपृष्ठ', 'Publish', 2, 'Group', 'Video', '', NULL, '', 'ग्यालेरी', '', '', 'about/photoGallery1_k8xbeYQ.jpeg', '', 49, '0000-00-00', '', NULL, '2023-10-07 10:19:47.490857'),
(60, 'भिडियो ग्यालेरी', 'गृहपृष्ठ', 'Publish', 1, 'Video', '', '', NULL, '', 'ग्यालेरी', '', '', 'about/slider1_qdzm9Cj.jpeg', '', 59, '2023-09-03', 'videos/video1_XR6pEZV.mp4', NULL, '2023-10-07 10:19:47.490857'),
(61, 'Sarbeshwor Jyotish', '', 'Publish', 2, 'VideoData', '', '', 'None', '', 'ग्यालेरी', '', '', 'about/slider1_jruCBFU.jpeg', '', 59, '2023-09-06', 'videos/video1_uLQ87h3.mp4', 'None', '2023-10-07 10:19:47.490857'),
(75, 'Guruji 1', '', 'Publish', 4, 'PhotoData', '', '', 'None', '', '', '', '', 'about/photoGallery13_Ftqr5Fv.jpg', '', 50, '2023-10-02', '', NULL, '2023-10-07 10:19:47.490857'),
(76, 'Sarbeshwor Guruji', '', 'Publish', 2, 'PhotoData', '', '', 'None', '', '', '', '', 'about/photoGallery17_JusTAvc.jpg', '', 50, '2023-09-09', '', 'None', '2023-10-07 10:19:47.490857'),
(77, 'Guruji 1', '', 'Publish', 5, 'PhotoData', '', '', 'None', '', '', '', '', 'about/photoGallery11_Ln5dSqA.jpg', '', 50, '2023-10-01', '', NULL, '2023-10-07 10:19:47.490857'),
(78, 'फोटो ग्यालेरी', 'गृहपृष्ठ', 'Publish', 1, 'Photo', 'ग्यालेरी', '', 'None', '', '', '', '', 'about/slider1_EUBBRAz.jpeg', '', 50, '0000-00-00', '', 'None', '2023-10-07 10:19:47.490857'),
(79, 'सम्पर्क', 'गृहपृष्ठ', 'Publish', 7, 'Contact', 'सम्पर्क गर्नुहोस', '', NULL, '', 'हाम्रो सम्पर्क', '', '', 'about/slider1_V7unEZw.jpeg', '', NULL, '2023-09-22', '', NULL, '2023-10-07 10:19:47.490857'),
(81, 'भेट्ने समयको लागी क्लिक गर्नुहोस्', 'Home', 'Publish', 5, 'Group', 'गुरु सँग परामर्ष लिन कृपया यो फर्म भर्नुहोस', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; border-width: 0px; border-style: solid; border-color: var(--chakra-colors-chakra-border-color); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; overflow-wrap: break-word;\"><br></p>', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; border-width: 0px; border-style: solid; border-color: var(--chakra-colors-chakra-border-color); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; overflow-wrap: break-word;\">राष्ट्रीय एवं अन्तराष्ट्रिय स्तरमा ख्याती प्राप्त व्यक्तित्व बरिष्ठ ज्योतिष एवं वास्तुविद ज्योतिष पण्डित श्री हरिप्रसाद भण्डारी बिगत १७ वर्ष देखि ज्योतिषशास्त्र एवं वास्तुशास्त्रका ज्ञाताका रुपमा कार्य गदै आउनु भएको छ । हजारौं व्यक्तिले गुरुजी बाट परामर्श एवं मार्गदर्शन लिएर आफ्नो जिवनमा आई परेका बिभिन्न क्षेत्रका समस्याहरुको समाधान पाएर जिवन लाई व्यवस्थित तथा सफल बनाउनु भएको छ।</p><p class=\"pt-4\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; padding-top: 1rem; border-width: 0px; border-style: solid; border-color: var(--chakra-colors-chakra-border-color); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; overflow-wrap: break-word;\">Now people can take astrology &amp; Vastu consultation by phone and internet call using viber, IMO, Whatsapp and facebook Messanger call. You can share your problems related to personal life, career, finance, health, education, family matters, love affair, Vastu for Home and Offices. Mobile no – 0977- 9842219735, 0977- 9819083629 . Viber – 0977 9842219735, Facebook.com/ Nepaljyotish.com, E-mail- hp.bhandari9@gmail.com.</p>', '', '', '', '', '', '', 13, '2023-09-27', '', NULL, '2023-10-07 10:19:47.490857'),
(82, 'भेट्ने समयको लागी क्लिक गर्नुहोस्', 'गृहपृष्ठ', 'Publish', 1, 'Appointment', 'गुरु सँग परामर्ष लिन कृपया यो फर्म भर्नुहोस', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; border-width: 0px; border-style: solid; border-color: var(--chakra-colors-chakra-border-color); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; overflow-wrap: break-word;\">राष्ट्रीय एवं अन्तराष्ट्रिय स्तरमा ख्याती प्राप्त व्यक्तित्व बरिष्ठ ज्योतिष एवं वास्तुविद ज्योतिष पण्डित श्री हरिप्रसाद भण्डारी बिगत १७ वर्ष देखि ज्योतिषशास्त्र एवं वास्तुशास्त्रका ज्ञाताका रुपमा कार्य गदै आउनु भएको छ । हजारौं व्यक्तिले गुरुजी बाट परामर्श एवं मार्गदर्शन लिएर आफ्नो जिवनमा आई परेका बिभिन्न क्षेत्रका समस्याहरुको समाधान पाएर जिवन लाई व्यवस्थित तथा सफल बनाउनु भएको छ।</p><p class=\"pt-4\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; padding-top: 1rem; border-width: 0px; border-style: solid; border-color: var(--chakra-colors-chakra-border-color); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; overflow-wrap: break-word;\">Now people can take astrology &amp; Vastu consultation by phone and internet call using viber, IMO, Whatsapp and facebook Messanger call. You can share your problems related to personal life, career, finance, health, education, family matters, love affair, Vastu for Home and Offices. Mobile no – 0977- 9842219735, 0977- 9819083629 . Viber – 0977 9842219735, Facebook.com/ Nepaljyotish.com, E-mail- hp.bhandari9@gmail.com.</p>', '', '', 'भेट्ने समय मिलाउ', '', '', 'about/slider1_qas8n4F.jpeg', '', 81, '2023-09-27', '', 'None', '2023-10-07 10:19:47.490857'),
(83, 'Khalti/ Esewa', 'Bank Receipt', 'Publish', 2, 'Appointment1', 'Scan to Pay through Fonepay', '<p style=\"border-width: 0px; border-style: solid; border-color: var(--chakra-colors-chakra-border-color); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; overflow-wrap: break-word; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium; background-color: rgb(255, 255, 255);\">सेवा शुल्क भुक्तानी गर्न तलको कुनै माध्यम प्रायोग गर्नुहोस सेवा सुल्क १०००</p><div><br></div>', '<p class=\"py-4 text-xl\" style=\"border-width: 0px; border-style: solid; border-color: var(--chakra-colors-chakra-border-color); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; overflow-wrap: break-word; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 1rem; padding-bottom: 1rem; font-size: 1.25rem; line-height: 1.75rem; color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; background-color: rgb(255, 255, 255);\">Khalti/ Esewa : 9803123456</p><p class=\"font-semibold\" style=\"border-width: 0px; border-style: solid; border-color: var(--chakra-colors-chakra-border-color); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; overflow-wrap: break-word; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: 600; color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium; background-color: rgb(255, 255, 255);\">Bank A/C :</p><p style=\"border-width: 0px; border-style: solid; border-color: var(--chakra-colors-chakra-border-color); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; overflow-wrap: break-word; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium; background-color: rgb(255, 255, 255);\">0211105032821017</p><p style=\"border-width: 0px; border-style: solid; border-color: var(--chakra-colors-chakra-border-color); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; overflow-wrap: break-word; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium; background-color: rgb(255, 255, 255);\">Sarbeswor Sanstha</p><p style=\"border-width: 0px; border-style: solid; border-color: var(--chakra-colors-chakra-border-color); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; overflow-wrap: break-word; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium; background-color: rgb(255, 255, 255);\">Agricultural Development Bank ltd</p><p style=\"border-width: 0px; border-style: solid; border-color: var(--chakra-colors-chakra-border-color); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; overflow-wrap: break-word; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium; background-color: rgb(255, 255, 255);\">Branch. Kirtipur, Nepal</p>', '', '0211105032821017', 'Sarbeswor Sanstha', '', 'about/sampleqr.webp', '', 81, '2023-09-27', '', 'None', '2023-10-07 10:19:47.490857'),
(95, 'Weekly Rashifal Zodiac', '', 'Publish', 4, 'Group', '', '', '', '', '', '', '', '', '', 43, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(96, 'Monthly Rashifal Zodiac', '', 'Publish', 6, 'Group', '', '', '', '', '', '', '', '', '', 43, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(97, 'Yearly Rashifal Zodiac', '', 'Publish', 8, 'Group', '', '', '', '', '', '', '', '', '', 43, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857');
INSERT INTO `adminpanel_navigation` (`id`, `name`, `caption`, `status`, `position`, `page_type`, `title`, `short_desc`, `desc`, `bannerimage`, `meta_title`, `meta_keyword`, `icon_image`, `slider_image`, `brochure`, `Parent_id`, `photodate`, `video_file`, `desc1`, `timestamp`) VALUES
(110, 'मेष', '', 'Publish', 1, 'WeeklyRashifalZodiac', 'चु, चे, चो, ला, लि, लु, ले, लो, अ (Aries)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">आय आर्जनका मार्गमा स्पष्ट निणर्य गर्ने समय हो । कुनै नयाँ अवसर प्राप्त हुने तथा धन र मान बढ्ने सङ्केत छ । आम्दानीको स्रोतमा बढोत्तरी हुने दिन हो, कुनै नयाँ कारोवारप्रति कुनै आकर्षण छ भने लगानी बढाउँदा फाइदा नै हुनेछ । इच्छा र योजना अनुसार सबै कामहरू सम्पन्न हुनेछन् । पारिवारिक वातावरण पनि सकारात्मक नै देखिन्छ, तर अहङ्कार र घमण्डलाई कन्ट्रोल गर्ने समय हो ।</span><br></p>', '', '', '', '', '', 'about/aries_mucVPdt.png', '', 95, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(111, 'बृष', '', 'Publish', 2, 'WeeklyRashifalZodiac', 'इ, उ, ए, ओ, बा, बि, बु, बे, बो (Taurus)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">पठनपाठनका अतिरिक्त क्यारियर र पेसाप्रतिको सोच सल्बलाउन सक्छ, अध्ययनरअध्यापनप्रति जाँगर बढ्ने समय छ । कर्मसिद्धिको समय छ, कार्यक्षेत्रमा जानकार र अनुभवीको तथा घरमा मातापिताको आशीर्वाद प्राप्त गरेमा हरेक काममा सफलता पाउन सक्नुहुन्छ । दिन नरमाइलो छैन, यद्यपि काममा सक्दो मिहिनेत गर्ने दिन हो, अन्त्यसम्म व्यस्त रहनु पर्नेछ, तर मिहिनेत गरेअनुसार प्रतिफल पनि राम्रै हुनेछ ।</span><br></p>', '', '', '', '', '', 'about/taurus_Js7WICF.png', '', 95, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(112, 'मिथुन', '', 'Publish', 3, 'WeeklyRashifalZodiac', 'का, कि, कु, घ, ङ, छ, के, को, ह (Gemini)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">पारिवारिक वा सामाजिक काममा व्यस्त रहँदा बेफुर्सदिलो भइने समय छ, तर अचानक पार्टनरसँग भेटघाट हुँदा मन फुरुङ्ग बन्नेछ । आय आर्जनका मार्गमा स्पष्ट निणर्य गर्ने समय हो । कुनै नयाँ अवसर प्राप्त हुने तथा धन र मान बढ्ने सङ्केत छ । धार्मिकरसामाजिक काममा समय दिनुपर्दा बाहिर अलमलिने दिन हो, तर पनि आफ्नो कामप्रतिको लगनशीलताका कारण कारोबारमा कुनै प्रभाव पर्नेछैन ।</span><br></p>', '', '', '', '', '', 'about/gemini_7n2S3BW.png', '', 95, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(113, 'कर्कट', '', 'Publish', 4, 'WeeklyRashifalZodiac', 'हि, हु, हे, हो, डा, डि, डु, डे, डो (Cancer)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">झिनामसिना काम र घरेलु समस्यामा अलमलिंदा अलमलिंदै आजको दिन बित्नेछ, तर भान्साको काममा वा आगो र हातहतियारको प्रयोगमा निकै सचेतता अपनाउनु होला । नयाँ र नौलो विषयवस्तुको जानकारी लिन सकिने दिन हो, तर जुनसुकै कुरामा हडबड र शीघ्रता हानिकारक बन्नसक्छ । कसैको चित्त दुखाएर धन वा प्रतिष्ठा प्राप्त गर्ने कोशिस गर्नुहुँदैन । दुराशा र महत्त्वाकाङ्क्षाले केवल निराशामात्र बढ्दछ । आफ्नो काम र लक्ष्यप्रति विश्वस्त हुनु ठीक हुन्छ।</span><br></p>', '', '', '', '', '', 'about/cancer_JCn2VHh.png', '', 95, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(114, 'सिंह', '', 'Publish', 5, 'WeeklyRashifalZodiac', 'मा, मि, मु, मे, मो, टा, टि, टु, टे (Leo)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">मन हलुका र शरीर तन्दुरुस्त रहने दिन हो, तर रामरमाइलो त्यागेर आफ्नो काम र प्राथमिकताउपर ध्यान दिनुहोला । पार्टनरको भावनालाई कदर गर्दै आज कतै रेस्टुरेन्ट वा भोजनालयमा गएर समय बिताउनु राम्रो हुन्छ । एक्लै घोरिरहन मन लाग्छ, व्यक्तित्वमा घमण्ड र अहङ्कारले प्रवेश गर्ने समय छ, तर आज संयम भएर अर्काका कुरा सुनेको राम्रो हुन्छ ।</span><br></p>', '', '', '', '', '', 'about/leo_TmxzZaE.png', '', 95, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(115, 'कन्या', '', 'Publish', 6, 'WeeklyRashifalZodiac', 'टो, प, पि, पु, ष, ण, ठ, पे, पो (Virgo)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">भेटघाट र मिलनको समय छ, तर बेकारका कुराकानी र ख्यालठट्टाले आपसी दूरी बढ्नसक्छ । कुनै न कुनै अप्ठ्यारोले पछ्याइरहने परिस्थिति छ, आत्मीयजन वा साथीभाइको भूमिका पनि चित्त बुझ्दो देखिंदैन, मानसिक तनाव र बोझ बढेको अनुभूति हुनेछ । थोरै लाभका लागि समेत धेरै मिहिनेत गर्नुपर्ने परिस्थिति देखिन्छ । खासगरी इलेक्ट्रिकल, सञ्चार र धातुका कारोबारीको व्यवसाय उत्तम रहनेछ ।</span><br></p>', '', '', '', '', '', 'about/virgo_dUZ6Wj7.png', '', 95, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(116, 'तुला', '', 'Publish', 7, 'WeeklyRashifalZodiac', 'र, रि, रु, रे, रो, ता, ति, तु, ते (Libra)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">अध्ययनप्रति गम्भीर भइने छ, परीक्षा, प्रतियोगिता वा अन्तर्वार्ता आदिको तैयारीमा हुनुहुन्छ भने अझ कस्सिएर प्रयास गर्ने समय हो । मिहिनेत अनुसार राम्रो रिजल्ट निकाल्न सकिने छ । बौद्धिक क्षमताको प्रस्फुटन हुनाले सृजनात्मक सफलता मिल्नेछ, आँटेको काम सजिलै सम्पादन हुनेछ । छोराछोरीको खुसीका लागि पनि आज समय निकाल्नु बुद्धिमानी हुनेछ । कार्य सम्पादनमा सहजता र शीघ्रता हुनेछ, सीप वा योग्यता बढाउने अवसर मिल्नेछ । घरपरिवार वा प्रेयसीका लागि पनि केही समय छुट्याउनुपर्ने हुन्छ ।</span><br></p>', '', '', '', '', '', 'about/libra_pFLjFGM.png', '', 95, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(117, 'बृश्चिक', '', 'Publish', 8, 'WeeklyRashifalZodiac', 'तो, ना, नि, नु, ने, नो, या, यि, यु (Scorpio)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">घरपरिवारबाट सुखद समाचार सुन्न पाउनु हुनेछ । घुमघाम र मनोरञ्जनको मौका मिल्ने वा योजना बन्ने समय छ । प्रतियोगी र प्रतिस्पद्र्धी कमजोर भएको दिन हो । प्राथमिकताका आधारमा काम गर्न नसक्दा पछि परिने समय हो, अतः कुनै महत्त्वपूर्ण निणर्य लिनुअघि अनुभवी वा जानकार व्यक्तिको सल्लाह लिएर अघि बढ्नु होला । सुखसुविधा वा सजावटका सामान वा भाँडाकुडा खरिद गर्न अनुकूल समय छ । पारिवारिक वातावरण राम्रै छ, तर घरव्यवहार र दैनिक कामधन्दामा निकै खट्नुपर्ने परिस्थिति छ ।</span><br></p>', '', '', '', '', '', 'about/scorpio_unHN3T3.png', '', 95, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(118, 'धनु', '', 'Publish', 9, 'WeeklyRashifalZodiac', 'ये, यो, भ, भि, भु, ध, फा, ढ, भे (Sagittarius)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">कारोबारमा मन्दी देखिएको छ भने थप मिहिनेत गर्नुहोस्, लगनशील बन्नसके विभिन्न अवसर प्राप्त हुनुका साथै दैनिक आम्दानीमा परिवर्तन आउनसक्छ । पारिवारिक सौहाद्र्रता र सद्भावमा बृद्धि हुनेछ, परिवारका सदस्यहरू र आफ्ना साथीभाइसँगको भेटघाटले आनन्द र मनोरञ्जन प्रदान गर्नेछ । सहकार्यको भावना विकसित हुनेछ, पुराना साथीभाइसित भेटघाट हुने तथा पढाइरलेखाइ र उन्नत भविष्यका बारेमा छलफल हुनसक्छ ।</span><br></p>', '', '', '', '', '', 'about/sagittatius_LQx4Fmg.png', '', 95, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(119, 'मकर', '', 'Publish', 10, 'WeeklyRashifalZodiac', 'भो, ज, जि, खि, खु, खे, खो, गा, गि (Capricorn)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">आम्दानी बढ्ने र उठ्नुपर्ने रकम हातलागी हुने दिन हो, सेयरमा रूचि छ भने अनुभवीको राय लिएर लगानी गर्न सक्नुहुन्छ । कार्यक्षेत्रमा परिवर्तनको धारणा आउनसक्छ, आयका मार्ग सुचारु गर्न र थप आयश्रोत बढाउन चिन्तन गर्ने समय छ । सकेसम्म समुचित कार्यका लागि कम बोलेको ठीक हुन्छ, तर बोल्न नपाए पनि हाउभाउ र सङ्केतका आधारमा काम निकाल्न सकिने छ ।</span><br></p>', '', '', '', '', '', 'about/capricorn_5SVTBUi.png', '', 95, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(120, 'कुम्भ', '', 'Publish', 11, 'WeeklyRashifalZodiac', 'गु, गे, गो, सा, सि, सु, से, सो, द (Aquarius)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">प्रतिष्ठामा बृद्धि हुने दिन हो, आफूभित्रको निणर्यक्षमता र व्यवस्थापकीय कौशलता प्रदर्शन गर्दै छुट्टै पहिचान स्थापना गरिने छ । भविष्यका योजनाहरूको मूल्याङ्कन गर्दै दृढ इच्छाशक्तिका साथमा काममा जुट्नु ठीक हुन्छ । काममा प्रगति हुने समय छ, तर एकोहोरोपन, जिद्दीपन र घमण्ड आजका शत्रु हुन् भनेर आफूलाई संयम बनाएर काम गर्ने दिन हो । पार्टनरको इच्छा र भावना बुझ्न सकेमा उत्साह बढ्न गई मन चङ्गा हुने दिन छ, साथै आफ्नो रूप सौन्दर्य र व्यक्तित्वमा निखार आउने समय हो ।</span><br></p>', '', '', '', '', '', 'about/aquarius_08ihoAI.png', '', 95, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(121, 'मीन', '', 'Publish', 12, 'WeeklyRashifalZodiac', 'दि, दु, थ, झ, ञ, दे, दो, च, चि (Pisces)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">तरल पदार्थको कारोवार, खाद्य पदार्थ, सौन्दर्य प्रसाधनका वस्तुहरू र फलफूलरतरकारीको व्यवसायमा विशेष लाभ हुने दिन हो । सुखसुविधाका सामाग्रीप्रति आकर्षण बढ्नेछ, तर आर्थिक पक्ष बाधक बन्ने समय हो । आवश्यक पर्दा ऋण वा सरसापटी लिनुपर्ने बाध्यता देखिन्छ । एउटै रुटिन र एउटै वातावरणदेखि दिक्क लाग्ने दिन हो, आज कार्यशैलीमा परिवर्तन गरी नयाँ कुरो सिक्ने इच्छा जाग्नेछ ।</span><br></p>', '', '', '', '', '', 'about/pisces_c9tIO7O.png', '', 95, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(122, 'मेष', '', 'Publish', 1, 'MonthlyRashifalZodiac', 'चु, चे, चो, ला, लि, लु, ले, लो, अ (Aries)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">आय आर्जनका मार्गमा स्पष्ट निणर्य गर्ने समय हो । कुनै नयाँ अवसर प्राप्त हुने तथा धन र मान बढ्ने सङ्केत छ । आम्दानीको स्रोतमा बढोत्तरी हुने दिन हो, कुनै नयाँ कारोवारप्रति कुनै आकर्षण छ भने लगानी बढाउँदा फाइदा नै हुनेछ । इच्छा र योजना अनुसार सबै कामहरू सम्पन्न हुनेछन् । पारिवारिक वातावरण पनि सकारात्मक नै देखिन्छ, तर अहङ्कार र घमण्डलाई कन्ट्रोल गर्ने समय हो ।</span><br></p>', '', '', '', '', '', 'about/aries_LQHtZsf.png', '', 96, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(123, 'बृष', '', 'Publish', 2, 'MonthlyRashifalZodiac', 'इ, उ, ए, ओ, बा, बि, बु, बे, बो (Taurus)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">पठनपाठनका अतिरिक्त क्यारियर र पेसाप्रतिको सोच सल्बलाउन सक्छ, अध्ययनरअध्यापनप्रति जाँगर बढ्ने समय छ । कर्मसिद्धिको समय छ, कार्यक्षेत्रमा जानकार र अनुभवीको तथा घरमा मातापिताको आशीर्वाद प्राप्त गरेमा हरेक काममा सफलता पाउन सक्नुहुन्छ । दिन नरमाइलो छैन, यद्यपि काममा सक्दो मिहिनेत गर्ने दिन हो, अन्त्यसम्म व्यस्त रहनु पर्नेछ, तर मिहिनेत गरेअनुसार प्रतिफल पनि राम्रै हुनेछ ।</span><br></p>', '', '', '', '', '', 'about/taurus_03m939J.png', '', 96, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(124, 'मिथुन', '', 'Publish', 3, 'MonthlyRashifalZodiac', 'का, कि, कु, घ, ङ, छ, के, को, ह (Gemini)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">पारिवारिक वा सामाजिक काममा व्यस्त रहँदा बेफुर्सदिलो भइने समय छ, तर अचानक पार्टनरसँग भेटघाट हुँदा मन फुरुङ्ग बन्नेछ । आय आर्जनका मार्गमा स्पष्ट निणर्य गर्ने समय हो । कुनै नयाँ अवसर प्राप्त हुने तथा धन र मान बढ्ने सङ्केत छ । धार्मिकरसामाजिक काममा समय दिनुपर्दा बाहिर अलमलिने दिन हो, तर पनि आफ्नो कामप्रतिको लगनशीलताका कारण कारोबारमा कुनै प्रभाव पर्नेछैन ।</span><br></p>', '', '', '', '', '', 'about/gemini_WZQKe15.png', '', 96, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(125, 'कर्कट', '', 'Publish', 4, 'MonthlyRashifalZodiac', 'हि, हु, हे, हो, डा, डि, डु, डे, डो (Cancer)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">झिनामसिना काम र घरेलु समस्यामा अलमलिंदा अलमलिंदै आजको दिन बित्नेछ, तर भान्साको काममा वा आगो र हातहतियारको प्रयोगमा निकै सचेतता अपनाउनु होला । नयाँ र नौलो विषयवस्तुको जानकारी लिन सकिने दिन हो, तर जुनसुकै कुरामा हडबड र शीघ्रता हानिकारक बन्नसक्छ । कसैको चित्त दुखाएर धन वा प्रतिष्ठा प्राप्त गर्ने कोशिस गर्नुहुँदैन । दुराशा र महत्त्वाकाङ्क्षाले केवल निराशामात्र बढ्दछ । आफ्नो काम र लक्ष्यप्रति विश्वस्त हुनु ठीक हुन्छ।</span><br></p>', '', '', '', '', '', 'about/cancer_5q7phTe.png', '', 96, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(126, 'सिंह', '', 'Publish', 5, 'MonthlyRashifalZodiac', 'मा, मि, मु, मे, मो, टा, टि, टु, टे (Leo)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">मन हलुका र शरीर तन्दुरुस्त रहने दिन हो, तर रामरमाइलो त्यागेर आफ्नो काम र प्राथमिकताउपर ध्यान दिनुहोला । पार्टनरको भावनालाई कदर गर्दै आज कतै रेस्टुरेन्ट वा भोजनालयमा गएर समय बिताउनु राम्रो हुन्छ । एक्लै घोरिरहन मन लाग्छ, व्यक्तित्वमा घमण्ड र अहङ्कारले प्रवेश गर्ने समय छ, तर आज संयम भएर अर्काका कुरा सुनेको राम्रो हुन्छ ।</span><br></p>', '', '', '', '', '', 'about/leo_O2Mnm3m.png', '', 96, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(127, 'कन्या', '', 'Publish', 6, 'MonthlyRashifalZodiac', 'टो, प, पि, पु, ष, ण, ठ, पे, पो (Virgo)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">भेटघाट र मिलनको समय छ, तर बेकारका कुराकानी र ख्यालठट्टाले आपसी दूरी बढ्नसक्छ । कुनै न कुनै अप्ठ्यारोले पछ्याइरहने परिस्थिति छ, आत्मीयजन वा साथीभाइको भूमिका पनि चित्त बुझ्दो देखिंदैन, मानसिक तनाव र बोझ बढेको अनुभूति हुनेछ । थोरै लाभका लागि समेत धेरै मिहिनेत गर्नुपर्ने परिस्थिति देखिन्छ । खासगरी इलेक्ट्रिकल, सञ्चार र धातुका कारोबारीको व्यवसाय उत्तम रहनेछ ।</span><br></p>', '', '', '', '', '', 'about/virgo_nWAmAT5.png', '', 96, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(128, 'तुला', '', 'Publish', 7, 'MonthlyRashifalZodiac', 'र, रि, रु, रे, रो, ता, ति, तु, ते (Libra)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">अध्ययनप्रति गम्भीर भइने छ, परीक्षा, प्रतियोगिता वा अन्तर्वार्ता आदिको तैयारीमा हुनुहुन्छ भने अझ कस्सिएर प्रयास गर्ने समय हो । मिहिनेत अनुसार राम्रो रिजल्ट निकाल्न सकिने छ । बौद्धिक क्षमताको प्रस्फुटन हुनाले सृजनात्मक सफलता मिल्नेछ, आँटेको काम सजिलै सम्पादन हुनेछ । छोराछोरीको खुसीका लागि पनि आज समय निकाल्नु बुद्धिमानी हुनेछ । कार्य सम्पादनमा सहजता र शीघ्रता हुनेछ, सीप वा योग्यता बढाउने अवसर मिल्नेछ । घरपरिवार वा प्रेयसीका लागि पनि केही समय छुट्याउनुपर्ने हुन्छ ।</span><br></p>', '', '', '', '', '', 'about/libra_LDDVPHi.png', '', 96, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(129, 'बृश्चिक', '', 'Publish', 8, 'MonthlyRashifalZodiac', 'तो, ना, नि, नु, ने, नो, या, यि, यु (Scorpio)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">घरपरिवारबाट सुखद समाचार सुन्न पाउनु हुनेछ । घुमघाम र मनोरञ्जनको मौका मिल्ने वा योजना बन्ने समय छ । प्रतियोगी र प्रतिस्पद्र्धी कमजोर भएको दिन हो । प्राथमिकताका आधारमा काम गर्न नसक्दा पछि परिने समय हो, अतः कुनै महत्त्वपूर्ण निणर्य लिनुअघि अनुभवी वा जानकार व्यक्तिको सल्लाह लिएर अघि बढ्नु होला । सुखसुविधा वा सजावटका सामान वा भाँडाकुडा खरिद गर्न अनुकूल समय छ । पारिवारिक वातावरण राम्रै छ, तर घरव्यवहार र दैनिक कामधन्दामा निकै खट्नुपर्ने परिस्थिति छ ।</span><br></p>', '', '', '', '', '', 'about/scorpio_UH8bMp1.png', '', 96, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(130, 'धनु', '', 'Publish', 9, 'MonthlyRashifalZodiac', 'ये, यो, भ, भि, भु, ध, फा, ढ, भे (Sagittarius)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">कारोबारमा मन्दी देखिएको छ भने थप मिहिनेत गर्नुहोस्, लगनशील बन्नसके विभिन्न अवसर प्राप्त हुनुका साथै दैनिक आम्दानीमा परिवर्तन आउनसक्छ । पारिवारिक सौहाद्र्रता र सद्भावमा बृद्धि हुनेछ, परिवारका सदस्यहरू र आफ्ना साथीभाइसँगको भेटघाटले आनन्द र मनोरञ्जन प्रदान गर्नेछ । सहकार्यको भावना विकसित हुनेछ, पुराना साथीभाइसित भेटघाट हुने तथा पढाइरलेखाइ र उन्नत भविष्यका बारेमा छलफल हुनसक्छ ।</span><br></p>', '', '', '', '', '', 'about/sagittatius_YPuTuhv.png', '', 96, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(131, 'मकर', '', 'Publish', 10, 'MonthlyRashifalZodiac', 'भो, ज, जि, खि, खु, खे, खो, गा, गि (Capricorn)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">आम्दानी बढ्ने र उठ्नुपर्ने रकम हातलागी हुने दिन हो, सेयरमा रूचि छ भने अनुभवीको राय लिएर लगानी गर्न सक्नुहुन्छ । कार्यक्षेत्रमा परिवर्तनको धारणा आउनसक्छ, आयका मार्ग सुचारु गर्न र थप आयश्रोत बढाउन चिन्तन गर्ने समय छ । सकेसम्म समुचित कार्यका लागि कम बोलेको ठीक हुन्छ, तर बोल्न नपाए पनि हाउभाउ र सङ्केतका आधारमा काम निकाल्न सकिने छ ।</span><br></p>', '', '', '', '', '', 'about/capricorn_LY8aAWY.png', '', 96, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(132, 'कुम्भ', '', 'Publish', 11, 'MonthlyRashifalZodiac', 'गु, गे, गो, सा, सि, सु, से, सो, द (Aquarius)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">प्रतिष्ठामा बृद्धि हुने दिन हो, आफूभित्रको निणर्यक्षमता र व्यवस्थापकीय कौशलता प्रदर्शन गर्दै छुट्टै पहिचान स्थापना गरिने छ । भविष्यका योजनाहरूको मूल्याङ्कन गर्दै दृढ इच्छाशक्तिका साथमा काममा जुट्नु ठीक हुन्छ । काममा प्रगति हुने समय छ, तर एकोहोरोपन, जिद्दीपन र घमण्ड आजका शत्रु हुन् भनेर आफूलाई संयम बनाएर काम गर्ने दिन हो । पार्टनरको इच्छा र भावना बुझ्न सकेमा उत्साह बढ्न गई मन चङ्गा हुने दिन छ, साथै आफ्नो रूप सौन्दर्य र व्यक्तित्वमा निखार आउने समय हो ।</span><br></p>', '', '', '', '', '', 'about/aquarius_x9gqjwL.png', '', 96, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(133, 'मीन', '', 'Publish', 12, 'MonthlyRashifalZodiac', 'दि, दु, थ, झ, ञ, दे, दो, च, चि (Pisces)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">तरल पदार्थको कारोवार, खाद्य पदार्थ, सौन्दर्य प्रसाधनका वस्तुहरू र फलफूलरतरकारीको व्यवसायमा विशेष लाभ हुने दिन हो । सुखसुविधाका सामाग्रीप्रति आकर्षण बढ्नेछ, तर आर्थिक पक्ष बाधक बन्ने समय हो । आवश्यक पर्दा ऋण वा सरसापटी लिनुपर्ने बाध्यता देखिन्छ । एउटै रुटिन र एउटै वातावरणदेखि दिक्क लाग्ने दिन हो, आज कार्यशैलीमा परिवर्तन गरी नयाँ कुरो सिक्ने इच्छा जाग्नेछ ।</span><br></p>', '', '', '', '', '', 'about/pisces_aLtqazp.png', '', 96, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(134, 'मेष', '', 'Publish', 1, 'YearlyRashifalZodiac', 'चु, चे, चो, ला, लि, लु, ले, लो, अ (Aries)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">आय आर्जनका मार्गमा स्पष्ट निणर्य गर्ने समय हो । कुनै नयाँ अवसर प्राप्त हुने तथा धन र मान बढ्ने सङ्केत छ । आम्दानीको स्रोतमा बढोत्तरी हुने दिन हो, कुनै नयाँ कारोवारप्रति कुनै आकर्षण छ भने लगानी बढाउँदा फाइदा नै हुनेछ । इच्छा र योजना अनुसार सबै कामहरू सम्पन्न हुनेछन् । पारिवारिक वातावरण पनि सकारात्मक नै देखिन्छ, तर अहङ्कार र घमण्डलाई कन्ट्रोल गर्ने समय हो ।</span><br></p>', '', '', '', '', '', 'about/aries_AJxmEiw.png', '', 97, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(135, 'बृष', '', 'Publish', 2, 'YearlyRashifalZodiac', 'इ, उ, ए, ओ, बा, बि, बु, बे, बो (Taurus)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">पठनपाठनका अतिरिक्त क्यारियर र पेसाप्रतिको सोच सल्बलाउन सक्छ, अध्ययनरअध्यापनप्रति जाँगर बढ्ने समय छ । कर्मसिद्धिको समय छ, कार्यक्षेत्रमा जानकार र अनुभवीको तथा घरमा मातापिताको आशीर्वाद प्राप्त गरेमा हरेक काममा सफलता पाउन सक्नुहुन्छ । दिन नरमाइलो छैन, यद्यपि काममा सक्दो मिहिनेत गर्ने दिन हो, अन्त्यसम्म व्यस्त रहनु पर्नेछ, तर मिहिनेत गरेअनुसार प्रतिफल पनि राम्रै हुनेछ ।</span><br></p>', '', '', '', '', '', 'about/taurus_Cz3rKhg.png', '', 97, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(136, 'मिथुन', '', 'Publish', 3, 'YearlyRashifalZodiac', 'का, कि, कु, घ, ङ, छ, के, को, ह (Gemini)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">पारिवारिक वा सामाजिक काममा व्यस्त रहँदा बेफुर्सदिलो भइने समय छ, तर अचानक पार्टनरसँग भेटघाट हुँदा मन फुरुङ्ग बन्नेछ । आय आर्जनका मार्गमा स्पष्ट निणर्य गर्ने समय हो । कुनै नयाँ अवसर प्राप्त हुने तथा धन र मान बढ्ने सङ्केत छ । धार्मिकरसामाजिक काममा समय दिनुपर्दा बाहिर अलमलिने दिन हो, तर पनि आफ्नो कामप्रतिको लगनशीलताका कारण कारोबारमा कुनै प्रभाव पर्नेछैन ।</span><br></p>', '', '', '', '', '', 'about/gemini_jWU32oq.png', '', 97, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(137, 'कर्कट', '', 'Publish', 4, 'YearlyRashifalZodiac', 'हि, हु, हे, हो, डा, डि, डु, डे, डो (Cancer)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">झिनामसिना काम र घरेलु समस्यामा अलमलिंदा अलमलिंदै आजको दिन बित्नेछ, तर भान्साको काममा वा आगो र हातहतियारको प्रयोगमा निकै सचेतता अपनाउनु होला । नयाँ र नौलो विषयवस्तुको जानकारी लिन सकिने दिन हो, तर जुनसुकै कुरामा हडबड र शीघ्रता हानिकारक बन्नसक्छ । कसैको चित्त दुखाएर धन वा प्रतिष्ठा प्राप्त गर्ने कोशिस गर्नुहुँदैन । दुराशा र महत्त्वाकाङ्क्षाले केवल निराशामात्र बढ्दछ । आफ्नो काम र लक्ष्यप्रति विश्वस्त हुनु ठीक हुन्छ।</span><br></p>', '', '', '', '', '', 'about/cancer_yGbZWFQ.png', '', 97, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(138, 'सिंह', '', 'Publish', 5, 'YearlyRashifalZodiac', 'मा, मि, मु, मे, मो, टा, टि, टु, टे (Leo)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">मन हलुका र शरीर तन्दुरुस्त रहने दिन हो, तर रामरमाइलो त्यागेर आफ्नो काम र प्राथमिकताउपर ध्यान दिनुहोला । पार्टनरको भावनालाई कदर गर्दै आज कतै रेस्टुरेन्ट वा भोजनालयमा गएर समय बिताउनु राम्रो हुन्छ । एक्लै घोरिरहन मन लाग्छ, व्यक्तित्वमा घमण्ड र अहङ्कारले प्रवेश गर्ने समय छ, तर आज संयम भएर अर्काका कुरा सुनेको राम्रो हुन्छ ।</span><br></p>', '', '', '', '', '', 'about/leo_yPYuw2a.png', '', 97, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(139, 'कन्या', '', 'Publish', 6, 'YearlyRashifalZodiac', 'टो, प, पि, पु, ष, ण, ठ, पे, पो (Virgo)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">भेटघाट र मिलनको समय छ, तर बेकारका कुराकानी र ख्यालठट्टाले आपसी दूरी बढ्नसक्छ । कुनै न कुनै अप्ठ्यारोले पछ्याइरहने परिस्थिति छ, आत्मीयजन वा साथीभाइको भूमिका पनि चित्त बुझ्दो देखिंदैन, मानसिक तनाव र बोझ बढेको अनुभूति हुनेछ । थोरै लाभका लागि समेत धेरै मिहिनेत गर्नुपर्ने परिस्थिति देखिन्छ । खासगरी इलेक्ट्रिकल, सञ्चार र धातुका कारोबारीको व्यवसाय उत्तम रहनेछ ।</span><br></p>', '', '', '', '', '', 'about/virgo_xcBk1pm.png', '', 97, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(140, 'तुला', '', 'Publish', 7, 'YearlyRashifalZodiac', 'र, रि, रु, रे, रो, ता, ति, तु, ते (Libra)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">अध्ययनप्रति गम्भीर भइने छ, परीक्षा, प्रतियोगिता वा अन्तर्वार्ता आदिको तैयारीमा हुनुहुन्छ भने अझ कस्सिएर प्रयास गर्ने समय हो । मिहिनेत अनुसार राम्रो रिजल्ट निकाल्न सकिने छ । बौद्धिक क्षमताको प्रस्फुटन हुनाले सृजनात्मक सफलता मिल्नेछ, आँटेको काम सजिलै सम्पादन हुनेछ । छोराछोरीको खुसीका लागि पनि आज समय निकाल्नु बुद्धिमानी हुनेछ । कार्य सम्पादनमा सहजता र शीघ्रता हुनेछ, सीप वा योग्यता बढाउने अवसर मिल्नेछ । घरपरिवार वा प्रेयसीका लागि पनि केही समय छुट्याउनुपर्ने हुन्छ ।</span><br></p>', '', '', '', '', '', 'about/libra_5VC92oe.png', '', 97, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(141, 'बृश्चिक', '', 'Publish', 8, 'YearlyRashifalZodiac', 'तो, ना, नि, नु, ने, नो, या, यि, यु (Scorpio)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">घरपरिवारबाट सुखद समाचार सुन्न पाउनु हुनेछ । घुमघाम र मनोरञ्जनको मौका मिल्ने वा योजना बन्ने समय छ । प्रतियोगी र प्रतिस्पद्र्धी कमजोर भएको दिन हो । प्राथमिकताका आधारमा काम गर्न नसक्दा पछि परिने समय हो, अतः कुनै महत्त्वपूर्ण निणर्य लिनुअघि अनुभवी वा जानकार व्यक्तिको सल्लाह लिएर अघि बढ्नु होला । सुखसुविधा वा सजावटका सामान वा भाँडाकुडा खरिद गर्न अनुकूल समय छ । पारिवारिक वातावरण राम्रै छ, तर घरव्यवहार र दैनिक कामधन्दामा निकै खट्नुपर्ने परिस्थिति छ ।</span><br></p>', '', '', '', '', '', 'about/scorpio_oy5rbeu.png', '', 97, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(142, 'धनु', '', 'Publish', 9, 'YearlyRashifalZodiac', 'ये, यो, भ, भि, भु, ध, फा, ढ, भे (Sagittarius)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">कारोबारमा मन्दी देखिएको छ भने थप मिहिनेत गर्नुहोस्, लगनशील बन्नसके विभिन्न अवसर प्राप्त हुनुका साथै दैनिक आम्दानीमा परिवर्तन आउनसक्छ । पारिवारिक सौहाद्र्रता र सद्भावमा बृद्धि हुनेछ, परिवारका सदस्यहरू र आफ्ना साथीभाइसँगको भेटघाटले आनन्द र मनोरञ्जन प्रदान गर्नेछ । सहकार्यको भावना विकसित हुनेछ, पुराना साथीभाइसित भेटघाट हुने तथा पढाइरलेखाइ र उन्नत भविष्यका बारेमा छलफल हुनसक्छ ।</span><br></p>', '', '', '', '', '', 'about/sagittatius_gdLWADy.png', '', 97, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(143, 'मकर', '', 'Publish', 10, 'YearlyRashifalZodiac', 'भो, ज, जि, खि, खु, खे, खो, गा, गि (Capricorn)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">आम्दानी बढ्ने र उठ्नुपर्ने रकम हातलागी हुने दिन हो, सेयरमा रूचि छ भने अनुभवीको राय लिएर लगानी गर्न सक्नुहुन्छ । कार्यक्षेत्रमा परिवर्तनको धारणा आउनसक्छ, आयका मार्ग सुचारु गर्न र थप आयश्रोत बढाउन चिन्तन गर्ने समय छ । सकेसम्म समुचित कार्यका लागि कम बोलेको ठीक हुन्छ, तर बोल्न नपाए पनि हाउभाउ र सङ्केतका आधारमा काम निकाल्न सकिने छ ।</span><br></p>', '', '', '', '', '', 'about/capricorn_8RaeoQA.png', '', 97, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(144, 'कुम्भ', '', 'Publish', 11, 'YearlyRashifalZodiac', 'गु, गे, गो, सा, सि, सु, से, सो, द (Aquarius)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">प्रतिष्ठामा बृद्धि हुने दिन हो, आफूभित्रको निणर्यक्षमता र व्यवस्थापकीय कौशलता प्रदर्शन गर्दै छुट्टै पहिचान स्थापना गरिने छ । भविष्यका योजनाहरूको मूल्याङ्कन गर्दै दृढ इच्छाशक्तिका साथमा काममा जुट्नु ठीक हुन्छ । काममा प्रगति हुने समय छ, तर एकोहोरोपन, जिद्दीपन र घमण्ड आजका शत्रु हुन् भनेर आफूलाई संयम बनाएर काम गर्ने दिन हो । पार्टनरको इच्छा र भावना बुझ्न सकेमा उत्साह बढ्न गई मन चङ्गा हुने दिन छ, साथै आफ्नो रूप सौन्दर्य र व्यक्तित्वमा निखार आउने समय हो ।</span><br></p>', '', '', '', '', '', 'about/aquarius_x1XrEY8.png', '', 97, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(145, 'मीन', '', 'Publish', 12, 'YearlyRashifalZodiac', 'दि, दु, थ, झ, ञ, दे, दो, च, चि (Pisces)', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: medium;\">तरल पदार्थको कारोवार, खाद्य पदार्थ, सौन्दर्य प्रसाधनका वस्तुहरू र फलफूलरतरकारीको व्यवसायमा विशेष लाभ हुने दिन हो । सुखसुविधाका सामाग्रीप्रति आकर्षण बढ्नेछ, तर आर्थिक पक्ष बाधक बन्ने समय हो । आवश्यक पर्दा ऋण वा सरसापटी लिनुपर्ने बाध्यता देखिन्छ । एउटै रुटिन र एउटै वातावरणदेखि दिक्क लाग्ने दिन हो, आज कार्यशैलीमा परिवर्तन गरी नयाँ कुरो सिक्ने इच्छा जाग्नेछ ।</span><br></p>', '', '', '', '', '', 'about/pisces_ZMB0Kpi.png', '', 97, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(146, 'प्रोफाइल', 'गृहपृष्‍ठ', 'Publish', 1, 'Profile', 'हाम्रोबारे', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">ज्योतिषशास्त्र परिचय ‘ज्योतिर्यस्य स ज्योतिषः’ अर्थात् प्रकाशित पार्ने द्युत् धातुमा इसुन् प्रत्यय लागेर अनुबन्धलोपपूर्वक ज्योतिष शब्दको निर्माण हुन्छ । यसैगरी उज्यालो अर्थ प्रदान गर्ने ज्योतिस् शब्दमा घञ् प्रत्यय लागेर पनि पाणिनीय व्याकरणअनुसार ज्योतिष शब्द निष्पन्न हुन्छ ।आकाशमा रहेका जति पनि उज्याला तेजपुञ्जछन् ती सबैलाई ज्योति भनिन्छ । ती मध्ये सधैँ एकरूपका रहने नक्षत्र हुन् ।</span><br></p>', '', 'about/slider1_PncbQVz.jpeg', 'हाम्रा ज्योतिषी सदस्यहरू', '', '', 'about/profileImage_iBVLpP3.jpeg', '', 3, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(147, 'MemberHead1', '9808123456', 'Publish', 2, 'ProfileMembers', 'Manager', '', '', '', 'example@gmail.com', '', '', 'about/profileImage_c7mDLxO.jpeg', '', 3, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(148, 'MemberHead2', '9808123456', 'Publish', 3, 'ProfileMembers', 'Assistant Manager', '', '', '', 'example@gmail.com', '', '', 'about/profileImage_muJysEn.jpeg', '', 3, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(149, 'MemberHead3', '9808123456', 'Publish', 4, 'ProfileMembers', 'Operation Incharge', '', '', '', 'example@gmail.com', '', '', 'about/profileImage_mu4DXIv.jpeg', '', 3, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(150, 'MemberHead4', '9808123456', 'Publish', 5, 'ProfileMembers', 'Accountant', '', '', '', 'example@gmail.com', '', '', 'about/profileImage_xXKRmS9.jpeg', '', 3, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(151, 'ज्योतिष सिक्नुहोस', 'गृहपृष्ठ ', 'Publish', 1, 'Course', 'ज्योतिष सिक्नुहोस', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">ज्योतिष भनेको सौर्यमण्डलमा रहेका ताराहरू र ग्रहहरूको आपसी सम्बन्धबाट प्राप्तहुने किरण अथवा तरङ्गलाई सुक्ष्म गणितीय सूत्रबाट अध्ययन गरेर त्यसको यस पृथ्वीमा विद्यमान जड र चेतन माथि पर्ने प्रभावको अध्ययन र विश्लेषण गर्ने अद्वितीय विज्ञान हो। वेदको प्राकट्य संगै अपौरूषेय रूपमा स्थापित ज्योतिष शास्त्र वेदको आँखाको रूपमा रहेको छ। वेदमा सम्पूर्ण ज्ञान विज्ञान निहित रहेको कुरा कतिपय पश्चिमा विद्वानहरूले पनि स्वीकार गरेका छन्। त्यो ज्ञान र विज्ञानलाई अध्ययन गर्नको लागि ज्योतिषरूपी चक्षुको आवश्यकता छ। यदि तपाई घर बसी बसी नेपाल भरी एवं विश्वको जुन सुकै ठाउँ बाट अनलाईन सेवा मार्फत ज्योतिष एवं वास्तुशास्त्र सम्बन्धि ज्ञान लिन सक्नु हुनेछ । हामी बिज्ञ ज्योतिषी हरु बाट अनलाईन कक्षा मार्फत तपाईलाई ज्योतिष शास्त्रको सैद्धान्तिक एवं व्यावहारिक पक्षहरु सिकाउने छौं । तपाईले पुरा गरेको अवधि र ज्ञानका आधारमा प्रमाण पत्र पनि उपलब्ध गराउनेछौं । यदि तपाई पनि ज्योतिष शास्त्र एवं वास्तुशास्त्रबारे विद्या आर्जन गरि यसलाई पेशा बनाउन चाहानुहुन्छ वा यस विषमा बिज्ञता हाँसिल गर्न चाहानुहुन्छ भने हामी लाई सम्पर्क गर्नुहोस । सम्पर्क नं ९७७–९८४२२१९७३५ (यो नम्बरमा भाईबर, इमो, ह्वाटसप, बोटिम उपलब्ध छ) ९७७ – ९८१९०८३६२९ । इमेल – nepaljyotish.com@gmail.com, contact@nepaljyotish.com</span><br></p>', '', 'about/profileBg_dIXJipP.webp', 'हाम्रो विषयहरु', 'कृपया फारम भर्नुहोस्', '', 'about/slider1_BqjdHIM.jpeg', '', 10, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(152, 'Course1', '', 'Publish', 2, 'Course Data', '', '<span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">त्यो ज्ञान र विज्ञानलाई अध्ययन गर्नको लागि ज्योतिषरूपी चक्षुको आवश्यकता छ । यदि तपाई घर बसी बसी नेपाल भरी एवं विश्वको जुन सुकै ठाउँ बाट अनलाईन सेवा मार्फत ज्योतिष एवं वास्तुशास्त्र सम्बन्धि ज्ञान लिन सक्नु हुनेछ । हामी बिज्ञ ज्योतिषी हरु बाट अनलाईन कक्षा मार्फत तपाईलाई ज्योतिष शास्त्रको सैद्धान्तिक एवं व्यावहारिक पक्षहरु सिकाउने छौं । तपाईले पुरा गरेको अवधि र ज्ञानका आधारमा प्रमाण पत्र पनि उपलब्ध गराउनेछौं ।</span>', '', '', '', '', '', '', '', 10, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(153, 'Course2', '', 'Publish', 3, 'Course Data', '', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">त्यो ज्ञान र विज्ञानलाई अध्ययन गर्नको लागि ज्योतिषरूपी चक्षुको आवश्यकता छ । यदि तपाई घर बसी बसी नेपाल भरी एवं विश्वको जुन सुकै ठाउँ बाट अनलाईन सेवा मार्फत ज्योतिष एवं वास्तुशास्त्र सम्बन्धि ज्ञान लिन सक्नु हुनेछ । हामी बिज्ञ ज्योतिषी हरु बाट अनलाईन कक्षा मार्फत तपाईलाई ज्योतिष शास्त्रको सैद्धान्तिक एवं व्यावहारिक पक्षहरु सिकाउने छौं । तपाईले पुरा गरेको अवधि र ज्ञानका आधारमा प्रमाण पत्र पनि उपलब्ध गराउनेछौं ।</span><br></p>', '', '', '', '', '', '', '', 10, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(154, 'Course3', '', 'Publish', 4, 'Course Data', '', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">त्यो ज्ञान र विज्ञानलाई अध्ययन गर्नको लागि ज्योतिषरूपी चक्षुको आवश्यकता छ । यदि तपाई घर बसी बसी नेपाल भरी एवं विश्वको जुन सुकै ठाउँ बाट अनलाईन सेवा मार्फत ज्योतिष एवं वास्तुशास्त्र सम्बन्धि ज्ञान लिन सक्नु हुनेछ । हामी बिज्ञ ज्योतिषी हरु बाट अनलाईन कक्षा मार्फत तपाईलाई ज्योतिष शास्त्रको सैद्धान्तिक एवं व्यावहारिक पक्षहरु सिकाउने छौं । तपाईले पुरा गरेको अवधि र ज्ञानका आधारमा प्रमाण पत्र पनि उपलब्ध गराउनेछौं ।</span><br></p>', '', '', '', '', '', '', '', 10, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(155, 'Course4', '', 'Publish', 5, 'Course Data', '', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">त्यो ज्ञान र विज्ञानलाई अध्ययन गर्नको लागि ज्योतिषरूपी चक्षुको आवश्यकता छ । यदि तपाई घर बसी बसी नेपाल भरी एवं विश्वको जुन सुकै ठाउँ बाट अनलाईन सेवा मार्फत ज्योतिष एवं वास्तुशास्त्र सम्बन्धि ज्ञान लिन सक्नु हुनेछ । हामी बिज्ञ ज्योतिषी हरु बाट अनलाईन कक्षा मार्फत तपाईलाई ज्योतिष शास्त्रको सैद्धान्तिक एवं व्यावहारिक पक्षहरु सिकाउने छौं । तपाईले पुरा गरेको अवधि र ज्ञानका आधारमा प्रमाण पत्र पनि उपलब्ध गराउनेछौं ।</span><br></p>', '', '', '', '', '', '', '', 10, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(156, 'Course5', '', 'Publish', 6, 'Course Data', '', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">त्यो ज्ञान र विज्ञानलाई अध्ययन गर्नको लागि ज्योतिषरूपी चक्षुको आवश्यकता छ । यदि तपाई घर बसी बसी नेपाल भरी एवं विश्वको जुन सुकै ठाउँ बाट अनलाईन सेवा मार्फत ज्योतिष एवं वास्तुशास्त्र सम्बन्धि ज्ञान लिन सक्नु हुनेछ । हामी बिज्ञ ज्योतिषी हरु बाट अनलाईन कक्षा मार्फत तपाईलाई ज्योतिष शास्त्रको सैद्धान्तिक एवं व्यावहारिक पक्षहरु सिकाउने छौं । तपाईले पुरा गरेको अवधि र ज्ञानका आधारमा प्रमाण पत्र पनि उपलब्ध गराउनेछौं ।</span><br></p>', '', '', '', '', '', '', '', 10, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(157, 'Course6', '', 'Publish', 7, 'Course Data', '', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">त्यो ज्ञान र विज्ञानलाई अध्ययन गर्नको लागि ज्योतिषरूपी चक्षुको आवश्यकता छ । यदि तपाई घर बसी बसी नेपाल भरी एवं विश्वको जुन सुकै ठाउँ बाट अनलाईन सेवा मार्फत ज्योतिष एवं वास्तुशास्त्र सम्बन्धि ज्ञान लिन सक्नु हुनेछ । हामी बिज्ञ ज्योतिषी हरु बाट अनलाईन कक्षा मार्फत तपाईलाई ज्योतिष शास्त्रको सैद्धान्तिक एवं व्यावहारिक पक्षहरु सिकाउने छौं । तपाईले पुरा गरेको अवधि र ज्ञानका आधारमा प्रमाण पत्र पनि उपलब्ध गराउनेछौं ।</span><br></p>', '', '', '', '', '', '', '', 10, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(158, 'Course7', '', 'Publish', 8, 'Course Data', '', '<p><span style=\"color: rgb(26, 32, 44); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20px;\">त्यो ज्ञान र विज्ञानलाई अध्ययन गर्नको लागि ज्योतिषरूपी चक्षुको आवश्यकता छ । यदि तपाई घर बसी बसी नेपाल भरी एवं विश्वको जुन सुकै ठाउँ बाट अनलाईन सेवा मार्फत ज्योतिष एवं वास्तुशास्त्र सम्बन्धि ज्ञान लिन सक्नु हुनेछ । हामी बिज्ञ ज्योतिषी हरु बाट अनलाईन कक्षा मार्फत तपाईलाई ज्योतिष शास्त्रको सैद्धान्तिक एवं व्यावहारिक पक्षहरु सिकाउने छौं । तपाईले पुरा गरेको अवधि र ज्ञानका आधारमा प्रमाण पत्र पनि उपलब्ध गराउनेछौं ।</span><br></p>', '', '', '', '', '', '', '', 10, '2012-12-12', '', NULL, '2023-10-07 10:19:47.490857'),
(159, 'Sarbeshwor Guruji', '', 'Publish', 3, 'PhotoData', '', '', '', '', '', '', '', 'about/grahashanti_lF98SUx.jpg', '', 50, '2023-10-04', '', NULL, '2023-10-07 10:19:47.490857'),
(168, 'Sashank Guruji', '', 'Publish', 6, 'PhotoData', '', '', '', '', '', '', '', 'about/holiday-1_Gr5FZY4.jpg', '', 50, '2023-10-07', '', '', '2023-10-07 14:59:24.651237'),
(169, 'Janjyoti Guruaamaa', '', 'Publish', 8, 'PhotoData', '', '', '', '', '', '', '', 'about/home-two-des-4_POXL2Gw.png', '', 50, '2023-10-07', '', '', '2023-10-07 15:03:40.027713'),
(170, 'Janjyoti Guruaamaa', '', 'Publish', 10, 'PhotoData', '', '', '', '', '', '', '', 'about/holiday-2_T8wT0Mb.jpg', '', 50, '2023-10-07', '', '', '2023-10-07 15:12:00.609333'),
(171, 'Sashank Joytish', '', 'Publish', 2, 'VideoData', '', '', '', '', '', '', '', 'about/photoGallery11_A11Wieu.jpg', '', 59, '2023-10-10', '', '', '2023-10-10 03:57:15.357430'),
(172, 'Guru Purnima', '', 'Publish', 3, 'VideoData', '', '<p><br></p>', '<p><br></p>', '', '', '', '', 'about/photoGallery1_ezqNiE7.jpeg', '', 59, '2023-10-14', 'videos/video1_u72Ui37.mp4', '', '2023-10-11 03:37:23.028932');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add contact us', 7, 'add_contactus'),
(26, 'Can change contact us', 7, 'change_contactus'),
(27, 'Can delete contact us', 7, 'delete_contactus'),
(28, 'Can view contact us', 7, 'view_contactus'),
(29, 'Can add global settings', 8, 'add_globalsettings'),
(30, 'Can change global settings', 8, 'change_globalsettings'),
(31, 'Can delete global settings', 8, 'delete_globalsettings'),
(32, 'Can view global settings', 8, 'view_globalsettings'),
(33, 'Can add navigation', 9, 'add_navigation'),
(34, 'Can change navigation', 9, 'change_navigation'),
(35, 'Can delete navigation', 9, 'delete_navigation'),
(36, 'Can view navigation', 9, 'view_navigation'),
(37, 'Can add attachment', 10, 'add_attachment'),
(38, 'Can change attachment', 10, 'change_attachment'),
(39, 'Can delete attachment', 10, 'delete_attachment'),
(40, 'Can view attachment', 10, 'view_attachment'),
(41, 'Can add latest news data', 11, 'add_latestnewsdata'),
(42, 'Can change latest news data', 11, 'change_latestnewsdata'),
(43, 'Can delete latest news data', 11, 'delete_latestnewsdata'),
(44, 'Can view latest news data', 11, 'view_latestnewsdata'),
(45, 'Can add photo data', 12, 'add_photodata'),
(46, 'Can change photo data', 12, 'change_photodata'),
(47, 'Can delete photo data', 12, 'delete_photodata'),
(48, 'Can view photo data', 12, 'view_photodata'),
(49, 'Can add service data', 13, 'add_servicedata'),
(50, 'Can change service data', 13, 'change_servicedata'),
(51, 'Can delete service data', 13, 'delete_servicedata'),
(52, 'Can view service data', 13, 'view_servicedata'),
(53, 'Can add testimonial data', 14, 'add_testimonialdata'),
(54, 'Can change testimonial data', 14, 'change_testimonialdata'),
(55, 'Can delete testimonial data', 14, 'delete_testimonialdata'),
(56, 'Can view testimonial data', 14, 'view_testimonialdata'),
(57, 'Can add course', 15, 'add_course'),
(58, 'Can change course', 15, 'change_course'),
(59, 'Can delete course', 15, 'delete_course'),
(60, 'Can view course', 15, 'view_course'),
(61, 'Can add bhetghat', 16, 'add_bhetghat'),
(62, 'Can change bhetghat', 16, 'change_bhetghat'),
(63, 'Can delete bhetghat', 16, 'delete_bhetghat'),
(64, 'Can view bhetghat', 16, 'view_bhetghat');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$p0hn3YDQ1w22UCukRXVnjF$07OOlnZxAX/0goPnNGoNvncVmiR4/pOUUKubXjzj0YQ=', '2023-10-01 10:10:51.598752', 1, 'rohinshan', '', '', 'rohinshan@gmail.com', 1, 1, '2023-09-13 06:13:30.816035'),
(2, 'pbkdf2_sha256$600000$U1gMhOTr0KP2jzefibjz3D$FQkcqlSWYDqRBaf64d9fq05IavB8PWwLOH2zcSFHAz8=', '2023-10-11 03:42:47.856677', 1, 'inshan', '', '', 'inshan@gmail.com', 1, 1, '2023-09-21 06:01:13.234110');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-09-13 06:19:33.844961', '1', 'Inshan', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-09-13 06:29:34.031629', '1', 'add', 1, '[{\"added\": {}}]', 8, 1),
(3, '2023-09-16 22:26:39.926344', '1', 'Course object (1)', 1, '[{\"added\": {}}]', 15, 1),
(4, '2023-09-16 22:47:09.453546', '1', 'asdf', 3, '', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(16, 'adminpanel', 'bhetghat'),
(7, 'adminpanel', 'contactus'),
(15, 'adminpanel', 'course'),
(8, 'adminpanel', 'globalsettings'),
(11, 'adminpanel', 'latestnewsdata'),
(9, 'adminpanel', 'navigation'),
(12, 'adminpanel', 'photodata'),
(13, 'adminpanel', 'servicedata'),
(14, 'adminpanel', 'testimonialdata'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'django_summernote', 'attachment'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-09-13 06:08:15.604171'),
(2, 'auth', '0001_initial', '2023-09-13 06:08:16.985460'),
(3, 'admin', '0001_initial', '2023-09-13 06:08:17.269816'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-09-13 06:08:17.299319'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-13 06:08:17.348814'),
(6, 'adminpanel', '0001_initial', '2023-09-13 06:08:17.695516'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-09-13 06:08:17.952699'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-09-13 06:08:18.181603'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-09-13 06:08:18.311393'),
(10, 'auth', '0004_alter_user_username_opts', '2023-09-13 06:08:18.363392'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-09-13 06:08:18.577577'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-09-13 06:08:18.590577'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-09-13 06:08:18.649076'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-09-13 06:08:18.792361'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-09-13 06:08:18.907628'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-09-13 06:08:19.030493'),
(17, 'auth', '0011_update_proxy_permissions', '2023-09-13 06:08:19.105992'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-09-13 06:08:19.243941'),
(19, 'django_summernote', '0001_initial', '2023-09-13 06:08:19.309930'),
(20, 'django_summernote', '0002_update-help_text', '2023-09-13 06:08:19.329931'),
(21, 'django_summernote', '0003_alter_attachment_id', '2023-09-13 06:08:19.453727'),
(22, 'sessions', '0001_initial', '2023-09-13 06:08:19.617418'),
(23, 'adminpanel', '0002_alter_contactus_number', '2023-09-13 06:54:20.844171'),
(24, 'adminpanel', '0003_latestnewsdata_photodata_servicedata_testimonialdata_and_more', '2023-09-13 07:55:58.310704'),
(25, 'adminpanel', '0002_rename_siteinstagram_globalsettings_sitecontactdetail_and_more', '2023-09-14 05:46:53.740428'),
(26, 'adminpanel', '0003_rename_siteaddress_globalsettings_siteaddress_and_more', '2023-09-14 06:05:18.309683'),
(27, 'adminpanel', '0004_alter_navigation_page_type', '2023-09-14 06:51:50.932628'),
(28, 'adminpanel', '0005_rename_photodate_navigation_photodate', '2023-09-14 07:09:25.846392'),
(29, 'adminpanel', '0006_alter_navigation_photodate', '2023-09-14 07:13:53.729341'),
(30, 'adminpanel', '0007_alter_navigation_photodate', '2023-09-14 07:14:41.744555'),
(31, 'adminpanel', '0008_alter_navigation_photodate', '2023-09-14 07:15:28.680772'),
(32, 'adminpanel', '0009_alter_navigation_page_type', '2023-09-15 05:46:11.901249'),
(33, 'adminpanel', '0010_alter_navigation_page_type', '2023-09-15 09:52:18.576407'),
(34, 'adminpanel', '0011_course', '2023-09-15 10:42:33.885730'),
(35, 'adminpanel', '0012_alter_navigation_page_type', '2023-09-17 06:00:29.975744'),
(36, 'adminpanel', '0013_alter_navigation_page_type', '2023-09-17 06:26:14.878259'),
(37, 'adminpanel', '0014_alter_navigation_page_type', '2023-09-17 06:43:51.453776'),
(38, 'adminpanel', '0015_alter_navigation_page_type', '2023-09-17 08:21:10.536663'),
(39, 'adminpanel', '0016_alter_navigation_page_type', '2023-09-17 10:56:44.561801'),
(40, 'adminpanel', '0002_alter_navigation_page_type', '2023-09-21 09:54:02.191123'),
(41, 'adminpanel', '0003_rename_sitelicence_globalsettings_siteaddress1_and_more', '2023-09-22 06:07:14.593635'),
(42, 'adminpanel', '0004_alter_navigation_photodate', '2023-09-22 06:18:02.983961'),
(43, 'adminpanel', '0005_alter_navigation_photodate', '2023-09-22 07:02:33.968828'),
(44, 'adminpanel', '0007_alter_navigation_page_type', '2023-09-23 13:36:35.483903'),
(45, 'adminpanel', '0008_alter_navigation_page_type', '2023-09-27 06:34:43.526734'),
(46, 'adminpanel', '0009_bhetghat', '2023-09-27 09:55:24.455889'),
(47, 'adminpanel', '0011_alter_bhetghat_receipt', '2023-09-28 07:45:38.679125'),
(48, 'adminpanel', '0012_remove_bhetghat_payment_alter_bhetghat_receipt', '2023-09-28 07:47:39.521072'),
(49, 'adminpanel', '0013_alter_bhetghat_receipt', '2023-09-28 08:18:01.972158'),
(50, 'adminpanel', '0014_alter_navigation_photodate', '2023-10-02 09:34:07.826244'),
(51, 'adminpanel', '0015_alter_navigation_photodate', '2023-10-02 09:38:19.557819'),
(52, 'adminpanel', '0016_alter_navigation_photodate', '2023-10-02 09:58:48.789086'),
(53, 'adminpanel', '0017_alter_navigation_photodate', '2023-10-02 10:00:46.147703'),
(54, 'adminpanel', '0018_remove_bhetghat_preferredtime_bhetghat_wvno_and_more', '2023-10-02 15:32:24.187622'),
(55, 'adminpanel', '0019_globalsettings_sitelink5', '2023-10-03 09:40:47.020179'),
(56, 'adminpanel', '0020_globalsettings_sitelink6', '2023-10-03 09:43:37.925372'),
(57, 'adminpanel', '0021_rename_sitelink6_globalsettings_sitetwitterlink', '2023-10-03 10:12:06.113057'),
(58, 'adminpanel', '0002_contactus_timestamp', '2023-10-05 10:39:59.324055'),
(59, 'adminpanel', '0003_alter_contactus_timestamp', '2023-10-05 10:41:38.885895'),
(60, 'adminpanel', '0002_alter_course_education_alter_course_nationality_and_more', '2023-10-05 11:35:39.182583'),
(61, 'adminpanel', '0003_alter_course_education_alter_course_nationality_and_more', '2023-10-05 11:38:10.459794'),
(62, 'adminpanel', '0002_alter_course_courselevel', '2023-10-05 11:43:28.120865'),
(63, 'adminpanel', '0003_navigation_desc1', '2023-10-07 05:42:21.513775'),
(64, 'adminpanel', '0004_navigation_timestamp', '2023-10-07 10:19:47.550058'),
(65, 'adminpanel', '0005_alter_navigation_timestamp', '2023-10-07 11:28:21.162809'),
(66, 'adminpanel', '0006_alter_navigation_timestamp', '2023-10-07 14:31:58.010096');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2c1mjme2mn0aga1rhv9jtz6kq0kie48h', '.eJxVjEEOwiAQRe_C2hAKQ6Eu3XsGMjNMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJU1ZnZdXpdyPkh9Qd5DvW26x5rusykd4VfdCmr3OW5-Vw_w4KtvKtQdDGjobgRw6GxHUG2JIPPUOMAtFkgwYwOme8EOceHOVhRA8MElm9P9q8N_g:1qodIe:dXkNJc89Bo4QoDqjDQdIiT4SeBxh-mDecLD-wkW5-lo', '2023-10-20 05:22:56.552475'),
('3n4a8izx46giysiyui30dk2ppyvobxzt', '.eJxVjDsOwjAQBe_iGlnxf0NJzxks27uLA8iR4qRC3B0ipYD2zcx7iZi2tcat0xInFGehxOl3y6k8qO0A76ndZlnmti5TlrsiD9rldUZ6Xg7376CmXr-10QCGkY0hHwYH5EeTAHKwaVSABYNF9pYD2jIoYE0us86oi7NWKSfeH9jzN7g:1qhg1L:AcyatoI8k9qpIWU_VsciFA5teKF3fMhOzXF8h9bY9bU', '2023-10-01 00:52:19.339912'),
('cgxptpn1dudi8sxepcbwf8h4p9u7ae42', '.eJxVjDsOwjAQBe_iGlnxf0NJzxks27uLA8iR4qRC3B0ipYD2zcx7iZi2tcat0xInFGehxOl3y6k8qO0A76ndZlnmti5TlrsiD9rldUZ6Xg7376CmXr-10QCGkY0hHwYH5EeTAHKwaVSABYNF9pYD2jIoYE0us86oi7NWKSfeH9jzN7g:1qheY1:zUZWAHXpWbfezJKdYYZ5RrHZIpIIZP-TdRHFl0oQUNE', '2023-09-30 23:17:57.943021'),
('dhv8nuroyytq0c10chj62yle7rntmfb4', '.eJxVjDsOwjAQBe_iGlnxf0NJzxks27uLA8iR4qRC3B0ipYD2zcx7iZi2tcat0xInFGehxOl3y6k8qO0A76ndZlnmti5TlrsiD9rldUZ6Xg7376CmXr-10QCGkY0hHwYH5EeTAHKwaVSABYNF9pYD2jIoYE0us86oi7NWKSfeH9jzN7g:1qhgCW:itCJIX8eFsSSQ7hvyw_vdMxTVhcmLCLyBBCLjgol58s', '2023-10-01 01:03:52.883834'),
('gpwq2b39km7wbjr5hr4newrg7qi0ybzv', '.eJxVjDsOwjAQBe_iGlnxf0NJzxks27uLA8iR4qRC3B0ipYD2zcx7iZi2tcat0xInFGehxOl3y6k8qO0A76ndZlnmti5TlrsiD9rldUZ6Xg7376CmXr-10QCGkY0hHwYH5EeTAHKwaVSABYNF9pYD2jIoYE0us86oi7NWKSfeH9jzN7g:1qmtPX:z7mKOad33_nsP6bv_LK2Ms5_3_fDd3P_qQqhXbkIY2s', '2023-10-15 10:10:51.602605'),
('gq01myah4xu6mq6r1jit8ekcd7qfr4t7', '.eJxVjEEOwiAQRe_C2hAKQ6Eu3XsGMjNMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJU1ZnZdXpdyPkh9Qd5DvW26x5rusykd4VfdCmr3OW5-Vw_w4KtvKtQdDGjobgRw6GxHUG2JIPPUOMAtFkgwYwOme8EOceHOVhRA8MElm9P9q8N_g:1qnBAc:2q5UDkGz6FWPVVGgR6T_OQCOuoEHsjMEfn2OlHy_mJE', '2023-10-16 05:08:38.123889'),
('mdk3j3zc4vqboy4ujk70pql5k5ggtdo4', '.eJxVjEEOwiAQRe_C2hAKQ6Eu3XsGMjNMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJU1ZnZdXpdyPkh9Qd5DvW26x5rusykd4VfdCmr3OW5-Vw_w4KtvKtQdDGjobgRw6GxHUG2JIPPUOMAtFkgwYwOme8EOceHOVhRA8MElm9P9q8N_g:1qqQ7T:z2nH2UUmumpARyIaLZpLJqGrPCEwCsxYaKM3-CEY6ys', '2023-10-25 03:42:47.899377'),
('p04feztnt1foe5evzmjwzonc66lwd2pd', '.eJxVjEEOwiAQRe_C2hAKQ6Eu3XsGMjNMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJU1ZnZdXpdyPkh9Qd5DvW26x5rusykd4VfdCmr3OW5-Vw_w4KtvKtQdDGjobgRw6GxHUG2JIPPUOMAtFkgwYwOme8EOceHOVhRA8MElm9P9q8N_g:1qnDTM:l9yO4hzVyl87fbsFBgDFxOJihsoSJVpR1fL3Wkd4a5I', '2023-10-16 07:36:08.752695'),
('ugo5khge555g6irzntfl9c1kxgiq0bu7', '.eJxVjDsOwjAQBe_iGlnxf0NJzxks27uLA8iR4qRC3B0ipYD2zcx7iZi2tcat0xInFGehxOl3y6k8qO0A76ndZlnmti5TlrsiD9rldUZ6Xg7376CmXr-10QCGkY0hHwYH5EeTAHKwaVSABYNF9pYD2jIoYE0us86oi7NWKSfeH9jzN7g:1qk3K2:JuC0J37rIah92xGevU41zNrrfSHf6zHcuIvsjes-Bj8', '2023-10-07 14:09:26.485534'),
('v3zpz9ms2sf8qckcq5nlb3jwtqp6cemn', '.eJxVjEEOwiAQRe_C2hAKQ6Eu3XsGMjNMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJU1ZnZdXpdyPkh9Qd5DvW26x5rusykd4VfdCmr3OW5-Vw_w4KtvKtQdDGjobgRw6GxHUG2JIPPUOMAtFkgwYwOme8EOceHOVhRA8MElm9P9q8N_g:1qnugy:DMK7ln3F29tr1b_Z_V64AcXlhPdbEL_rHwmKQq-fE1E', '2023-10-18 05:45:04.350092'),
('v9jvlxeci0r1j00wkmseedphh71ubzrt', '.eJxVjEEOwiAQRe_C2hAKQ6Eu3XsGMjNMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJU1ZnZdXpdyPkh9Qd5DvW26x5rusykd4VfdCmr3OW5-Vw_w4KtvKtQdDGjobgRw6GxHUG2JIPPUOMAtFkgwYwOme8EOceHOVhRA8MElm9P9q8N_g:1qp4YG:aOAufU_HESnTG22cbauReLGxU7l6jD1suGn2yQn3tJA', '2023-10-21 10:28:52.385927'),
('xdm108jdkw6xageot7y79bt3tuipnt7a', '.eJxVjDsOwjAQBe_iGlnxf0NJzxks27uLA8iR4qRC3B0ipYD2zcx7iZi2tcat0xInFGehxOl3y6k8qO0A76ndZlnmti5TlrsiD9rldUZ6Xg7376CmXr-10QCGkY0hHwYH5EeTAHKwaVSABYNF9pYD2jIoYE0us86oi7NWKSfeH9jzN7g:1qmopm:D4X2xl9ZpyaCUp_W1fnxsD44l4DGACpC_W3ppxL7R0s', '2023-10-15 05:17:38.809949'),
('zs8q7i7of4vn1y2s2bjp5wmghzi2v5j4', '.eJxVjDsOwjAQBe_iGlnxf0NJzxks27uLA8iR4qRC3B0ipYD2zcx7iZi2tcat0xInFGehxOl3y6k8qO0A76ndZlnmti5TlrsiD9rldUZ6Xg7376CmXr-10QCGkY0hHwYH5EeTAHKwaVSABYNF9pYD2jIoYE0us86oi7NWKSfeH9jzN7g:1qgMAd:4j-oZ1sl-bwIoXhBhI3ZD--L_X7BrCV6PlTkbWgCUbM', '2023-09-27 09:28:27.543004'),
('zx8rqnf6u5cdviszchtjas5b3sv1lt8a', '.eJxVjDsOwjAQBe_iGlnxf0NJzxks27uLA8iR4qRC3B0ipYD2zcx7iZi2tcat0xInFGehxOl3y6k8qO0A76ndZlnmti5TlrsiD9rldUZ6Xg7376CmXr-10QCGkY0hHwYH5EeTAHKwaVSABYNF9pYD2jIoYE0us86oi7NWKSfeH9jzN7g:1qhe4T:PBQereSzbzrA1QbeZl1BXoWPltcVQA7oAUj90593MjU', '2023-09-30 22:47:25.286876');

-- --------------------------------------------------------

--
-- Table structure for table `django_summernote_attachment`
--

CREATE TABLE `django_summernote_attachment` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `uploaded` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminpanel_bhetghat`
--
ALTER TABLE `adminpanel_bhetghat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminpanel_contactus`
--
ALTER TABLE `adminpanel_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminpanel_course`
--
ALTER TABLE `adminpanel_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminpanel_globalsettings`
--
ALTER TABLE `adminpanel_globalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminpanel_navigation`
--
ALTER TABLE `adminpanel_navigation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminpanel_navigatio_Parent_id_f4af713b_fk_adminpane` (`Parent_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `django_summernote_attachment`
--
ALTER TABLE `django_summernote_attachment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminpanel_bhetghat`
--
ALTER TABLE `adminpanel_bhetghat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `adminpanel_contactus`
--
ALTER TABLE `adminpanel_contactus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `adminpanel_course`
--
ALTER TABLE `adminpanel_course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `adminpanel_globalsettings`
--
ALTER TABLE `adminpanel_globalsettings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminpanel_navigation`
--
ALTER TABLE `adminpanel_navigation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `django_summernote_attachment`
--
ALTER TABLE `django_summernote_attachment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adminpanel_navigation`
--
ALTER TABLE `adminpanel_navigation`
  ADD CONSTRAINT `adminpanel_navigatio_Parent_id_f4af713b_fk_adminpane` FOREIGN KEY (`Parent_id`) REFERENCES `adminpanel_navigation` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
