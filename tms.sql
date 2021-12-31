-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 08, 2021 at 07:03 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(3, 'admin', 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `useremail` varchar(100) DEFAULT NULL,
  `fromdate` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `useremail`, `fromdate`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(12, NULL, 'abcd@gmail.com', '2021-04-14', '2021-04-07 20:01:37', 0, NULL, NULL),
(13, NULL, 'abcd@gmail.com', '2021-04-14', '2021-04-07 20:05:41', 0, NULL, NULL),
(14, NULL, 'abcd@gmail.com', '2021-04-14', '2021-04-07 20:45:16', 0, NULL, NULL),
(15, NULL, 'abcd@gmail.com', '2021-04-14', '2021-04-08 03:08:59', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(5, 'abcd', 'abcd@gmail.com', '8455544554', 'Package enquiry', 'South Indian', '2021-04-08 03:04:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` longtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(8, NULL, NULL, NULL, '2021-04-07 19:19:27', NULL, NULL),
(9, NULL, NULL, NULL, '2021-04-07 19:31:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '										<p align=\"justify\"><div class=\"MoreLessDiv\" style=\"margin: 0px 0px 10px; outline: 0px; padding: 0px; box-sizing: border-box; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: &quot;Lato Regular&quot;; font-size: 14px; vertical-align: baseline; color: rgb(51, 51, 51); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></div></p><div class=\"row fs-15\" id=\"tncContentDiv\" style=\"margin: 0px; outline: 0px; padding: 0px; box-sizing: border-box; border: 0px; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; clear: both; color: rgb(51, 51, 51); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><p style=\"font-size: 14.994px; margin: 0px; outline: 0px; padding: 0px; box-sizing: border-box; border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline;\"><span style=\"font-family: &quot;times new roman&quot;;\">If we change or cancel your holiday We do plan the arrangements in advance. It is unlikely that we will have to make any changes to your travel arrangements. Occasionally, we may have to make changes and we reserve the right to do so at any time. If there are any changes, we will advise you of them at the earliest possible date. We also reserve the right under any circumstances to cancel your travel arrangements by assigning reasons to you. If we are unable to provide the booked travel arrangements due to reasons beyond our control (e.g. bad weather):We shall first try to offer alternative dates for the tour if the tour hasn\'t already commenced. If the tour has already commenced, then we shall refund the booking price/fee charged to you on a pro-rata basis depending on the portion of the tour utilized by you. In all circumstances, however, our liability shall be limited to refunding to you the price we charged as tour fees. If you want to change your holiday plan After confirmation of services, if you wish to change your travel arrangements in any way (e.g. your chosen departure date or accommodation), we will do our utmost to make these changes but it may not always be possible. Any request for changes must be in writing from the person who made the booking. All cost incurred due to amendment will be borne by you. If you have a complaint If you face any problem during your holiday, please inform the relevant supplier (e.g. your hotelier, transporter etc.) and/or our representative immediately who will endeavour to set things right. If your complaint is not resolved locally, please follow this up within 28 days of your return home by writing to us, with your booking reference and all other relevant information. However, please be advised that while we are happy to assist you in the redressal of your complaint, if any, we will be able to extend only our best efforts in managing/coordinating your complaint with the respective service provider. All third party service providers are independent contractors who are at no time under our control or supervision. All booking vouchers and tickets will be provided 3 days before departure.</span></p><p style=\"font-size: 14.994px; margin: 0px; outline: 0px; padding: 0px; box-sizing: border-box; border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline;\"><span style=\"font-family: &quot;times new roman&quot;;\"><br></span></p><p style=\"font-size: 14.994px; margin: 0px; outline: 0px; padding: 0px; box-sizing: border-box; border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline;\"><span style=\"font-family: &quot;times new roman&quot;;\">Inclusions:</span></p><p style=\"font-size: 14.994px; margin: 0px; outline: 0px; padding: 0px; box-sizing: border-box; border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline;\"><span style=\"font-family: &quot;times new roman&quot;;\"><br></span></p><p style=\"font-size: 13px; margin-bottom: 0px; color: rgb(0, 0, 0); line-height: 22px; padding: 0px 0px 10px; text-align: justify;\"><span style=\"font-size: 16px; font-family: &quot;times new roman&quot;;\">1. Accommodation as per plan.</span></p><p style=\"font-size: 13px; margin-bottom: 0px; color: rgb(0, 0, 0); line-height: 22px; padding: 0px 0px 10px; text-align: justify;\"><span style=\"font-size: 16px; font-family: &quot;times new roman&quot;;\">2. All inter transfer &amp; sightseeing as per Itinerary by Suitable NON AC Vehicle.</span></p><p style=\"font-size: 13px; margin-bottom: 0px; color: rgb(0, 0, 0); line-height: 22px; padding: 0px 0px 10px; text-align: justify;\"><span style=\"font-size: 16px; font-family: &quot;times new roman&quot;;\">PLS. NOTE THAT VEHICLE WILL NOT BE ON DISPOSAL. IT WILL BE PROVIDED AS PER ITINERARY AND POINT TO POINT BASIS</span></p><p style=\"font-size: 13px; margin-bottom: 0px; color: rgb(0, 0, 0); line-height: 22px; padding: 0px 0px 10px; text-align: justify;\"><span style=\"font-size: 16px; font-family: &quot;times new roman&quot;;\">&nbsp;3. News paper and bottled water on arrival.</span></p><p style=\"font-size: 13px; margin-bottom: 0px; color: rgb(0, 0, 0); line-height: 22px; padding: 0px 0px 10px; text-align: justify;\"><span style=\"font-size: 16px; font-family: &quot;times new roman&quot;;\">4. All parking and permit charges.</span></p><p style=\"font-size: 13px; margin-bottom: 0px; color: rgb(0, 0, 0); line-height: 22px; padding: 0px 0px 10px; text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: 16px;\">5. Assistance on arrival.</span></p><p style=\"font-size: 13px; margin-bottom: 0px; color: rgb(0, 0, 0); line-height: 22px; padding: 0px 0px 10px; text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: 16px;\"><br></span></p><div style=\"\"><span style=\"font-family: &quot;trebuchet ms&quot;, helvetica, sans-serif;\">Exclusions:</span></div><div style=\"\"><span style=\"font-family: &quot;trebuchet ms&quot;, helvetica, sans-serif;\"><br></span></div><div style=\"\"><p style=\"margin-bottom: 0px; color: rgb(0, 0, 0); font-size: 13px; line-height: 22px; padding: 0px 0px 10px; text-align: justify; font-family: Shanti, Helvetica, sans-serif;\"><span style=\"font-family: &quot;trebuchet ms&quot;, helvetica, sans-serif;\"><span style=\"font-size: 16px;\">1. Government Service Tax as applicable on the above rates</span></span></p><p style=\"margin-bottom: 0px; color: rgb(0, 0, 0); font-size: 13px; line-height: 22px; padding: 0px 0px 10px; text-align: justify; font-family: Shanti, Helvetica, sans-serif;\"><span style=\"font-family: &quot;trebuchet ms&quot;, helvetica, sans-serif;\"><span style=\"font-size: 16px;\">2. Airfare, Train Fare, Insurance Premium etc.</span></span></p><p style=\"margin-bottom: 0px; color: rgb(0, 0, 0); font-size: 13px; line-height: 22px; padding: 0px 0px 10px; text-align: justify; font-family: Shanti, Helvetica, sans-serif;\"><span style=\"font-family: &quot;trebuchet ms&quot;, helvetica, sans-serif;\"><span style=\"font-size: 16px;\">3. Entry Fee to Any Monument, Park, Museum, Monastery or any other visiting places.</span></span></p><p style=\"margin-bottom: 0px; color: rgb(0, 0, 0); font-size: 13px; line-height: 22px; padding: 0px 0px 10px; text-align: justify; font-family: Shanti, Helvetica, sans-serif;\"><span style=\"font-family: &quot;trebuchet ms&quot;, helvetica, sans-serif;\"><span style=\"font-size: 16px;\">4. Payment for service provided on personal basis</span></span></p><p style=\"margin-bottom: 0px; color: rgb(0, 0, 0); font-size: 13px; line-height: 22px; padding: 0px 0px 10px; text-align: justify; font-family: Shanti, Helvetica, sans-serif;\"><span style=\"font-family: &quot;trebuchet ms&quot;, helvetica, sans-serif;\"><span style=\"font-size: 16px;\">5. Expenses incurred due to mishap, landslide, strikes, political unrest etc. In such cases extra will &nbsp; &nbsp;be charged as per actual</span></span></p><p style=\"margin-bottom: 0px; color: rgb(0, 0, 0); font-size: 13px; line-height: 22px; padding: 0px 0px 10px; text-align: justify; font-family: Shanti, Helvetica, sans-serif;\"><span style=\"font-family: &quot;trebuchet ms&quot;, helvetica, sans-serif;\"><span style=\"font-size: 16px;\">6. Cost for services which is not mentioned in “Inclusions”</span></span></p><p style=\"margin-bottom: 0px; color: rgb(0, 0, 0); font-size: 13px; line-height: 22px; padding: 0px 0px 10px; text-align: justify; font-family: Shanti, Helvetica, sans-serif;\"><span style=\"font-size: 16px;\">7. Personal expenses on items such as Laundry, Soft &amp; Hard Drinks, Bottle Water, Incidentals, &nbsp; Porterage, and Bell-Boy charges, Tips etc.</span></p><p style=\"margin-bottom: 0px; color: rgb(0, 0, 0); font-size: 13px; line-height: 22px; padding: 0px 0px 10px; text-align: justify; font-family: Shanti, Helvetica, sans-serif;\">&nbsp;</p></div></div>\r\n										'),
(2, 'privacy', '<p style=\"margin-bottom: 0px; color: rgb(0, 0, 0); font-size: 13px; line-height: 22px; padding: 0px 0px 10px; text-align: justify; font-family: Shanti, Helvetica, sans-serif;\"><font style=\"font-size: 16px; font-style: inherit; font-weight: inherit; background-color: rgb(242, 236, 225); color: rgb(85, 85, 85); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif; text-align: start; vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Mellow Trips is committed to maintaining the privacy of personal information that you provide to us when using the Mellow Trips Website. </font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">This Privacy Policy describes how we treat personal information received about you when you visit www.mellowtrips.com. </font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">We may make content or services from other web sites including our co-branded web sites available to you from links located on </font></font></font><a href=\"https://www.journeytours.com/\" style=\"border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline; color: rgb(2, 116, 190); transition-duration: 0.2s; transition-timing-function: linear; box-shadow: none;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">https://www.mellowtrips.com</font></font></font></a><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> . </font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">These other web sites are not subject to this Privacy Policy. </font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">We recommend that you review the privacy policy at each such web site to determine how that site protects your privacy.</font></font></font></font><span style=\"font-size: 16px; font-style: inherit; font-weight: inherit; background-color: rgb(242, 236, 225); color: rgb(85, 85, 85); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif; text-align: start;\">&nbsp;</span><br></p><div class=\"elementor-element elementor-element-316836e elementor-widget elementor-widget-text-editor\" data-id=\"316836e\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"box-sizing: border-box; border: 0px; font-size: 16px; font-style: normal; font-weight: 400; margin: 0px 0px 20px; outline: 0px; padding: 0px; vertical-align: baseline; position: relative; width: 1120px; color: rgb(85, 85, 85); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(242, 236, 225); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"elementor-widget-container\" style=\"box-sizing: border-box; border: 0px; font-size: 16px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><div class=\"elementor-text-editor elementor-clearfix\" style=\"box-sizing: border-box; border: 0px; font-size: 16px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><font style=\"vertical-align: inherit;\"></font></div></div></div>'),
(3, 'aboutus', '<p style=\"margin-right: auto; margin-bottom: 26px; margin-left: auto; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 19px; line-height: 28px; overflow-wrap: break-word; color: rgb(0, 0, 0);\">Mellow Trips</p><p style=\"margin-right: auto; margin-bottom: 26px; margin-left: auto; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 19px; line-height: 28px; overflow-wrap: break-word; color: rgb(0, 0, 0);\">“Travel is the main thing you purchase that makes you more extravagant”. We, at Mellow Trips website, swear by this and put stock in satisfying travel dreams that make you perpetually rich constantly. We have been moving excellent encounters for a considerable length of time through our cutting edge planned occasion bundles and other fundamental travel administrations. We rouse our clients to carry on with a rich life, brimming with extraordinary travel encounters.</p><p data-slot-rendered-dynamic=\"true\" style=\"margin-right: auto; margin-bottom: 26px; margin-left: auto; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 19px; line-height: 28px; overflow-wrap: break-word; color: rgb(0, 0, 0);\">Through our exceptionally curated occasion bundles, we need to take you on an adventure where you personally enjoy with the stunning magnificence of India and far off terrains. We need you to observe sensational scenes that are a long ways past your creative ability.</p><div><br></div>'),
(11, 'contact', '										<div style=\"text-align: justify;\"><span style=\"font-size: x-large;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Address: Nagar Residency, Bhayander(W) ,Thane</span><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: x-large;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: x-large;\">Phone: +91 9004735542</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: x-large;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: x-large;\">Email: thesachin161@gmail.com</span></div>\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` longtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Persons` int(10) NOT NULL,
  `Duration` varchar(30) NOT NULL,
  `Hotel` varchar(50) NOT NULL,
  `Pickup` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`, `Persons`, `Duration`, `Hotel`, `Pickup`) VALUES
(1, 'Manali Holiday Package', 'Family Package', 'Manali, Himachal Pradesh', 40000, 'Meals, Accommodation, Pickup and Drop, Sightseeing', 'Detailed Day Wise Itinerary :\r\n\r\nDay 1 - Delhi - Manali (580 Kms/11-12 hrs.)\r\nArrive in Delhi by Air or Train. After reaching in Delhi go to Ramakrishna Ashram Metro Station, ( on yourown) at 5:30 PM. At sharp 6:00 PM Depart from Delhi to Manali. Travel by overnight bus from Delhi to Manali (12 - 14 Hours). Soulful Manali offers something special for everyone. It gives peace for mediators, inspiration to Artists, Daring Activities for Adventure Seekers etc. On the way to Manali you experience the cool breeze of Manali already taking all your stress away, soothing you from calmness in the environment and surprising you by presenting its jaw- downed landscapes. Overall It an excellent place for holiday.\r\n\r\nDay 2 - Arrival In Manali &amp; Local City Tour (3-4Hrs)\r\nReach Manali at , Meet our representative at Manali Volvo Stand and transfer to the hotel. After fresh up, proceed to half day city tour of Manali which includes- Hadimba Devi Temple :- It chief central of interest in Manali , dedicated to the goddess Hadimba , the Wife of Bheema of Mahabharata Fame, This is wooden temple, In the dense forest of magnificent deodar, is about 2.5 Kms from the Mall. It is a pleasant stroll to the temple which was built in 1553 A.D. Vashisht (3.5 kms from Mall) :- Hot Sulphur Water springs - which is widely believed as an effective skin diseases healer and posses various medical properties . Nearby it , is the pyramidal stone temple dedicated to vashisht Muni & lord Rama temple. Tibetan-Monastery (0.5 Kms) :- This Gadhan Thekchoking Gompa dominates the Tibetan area builtin 1969. The main attraction of the monastery is the handicrafts of Tibetan artistry and the carpets that are woven and sold in the monastery Club House (2 Kms from Mall) :- Club house is famous for a amusement activities like skating, Disco Theque, auditorium etc.. Van Vihar : Which Is A Municipal Garden Is Situated In Front Of The Tibetan Market On Mall Road. In The Lake Located Within The Park, Tourists Can Option For Boating. The Park Is Adorned With Big Deodar Trees. Later in the evening free to explore the Shopping Malls (Mall Road & IBEX Market)& Van Vihar of Manali. Dinner & Overnight.\r\n\r\nDay 3 - MANALI FULL DAY TOUR SOLANG VALLEY / ROTHANG PASS\r\nAfter breakfast proceed to Visit Solang Valley. Solang Valley is famous for its natural beauty and adventure sports. On can enjoy Paragliding, Zorbing, Snow scooter, Horse riding and rope way ride there(Cost not included). Later back to hotel. Diner and Overnight stay at hotel. or Rohtang Pass(Up to Snow Point in case Rohtang is closed due to landslide/ Snowfall & Rothang is closed on Tuesday) After breakfast excursion to Rohatang Pass. Situated at an altitude of 3979 mtrs above sea level and 51 kms outside Manali is the mighty Rohtang Pass . Excursion to visit Kothi Gorge, Marhi, Gulaba. Rothang Pass is outstandingly beautiful and is an ideal spot to view the majestic snow covered Himalayas, serene natural surroundings, pristine lake and fairy white snow round the year . Evening at Leisure. O/N Hotel. Kindly note that only limited number of vehicles are allowed to visit Rohtang w.e.f. 18th May 2016 due to restrictions append by NGT vehicles visiting Rohtang. Any arrangement to Rohtang sight seen will be payable directly by guest on getting permission only. If client wants to go to Rohtang then he can pay the difference amount and go to Rohtang. Rohtang is not included in tour.\r\n\r\nDay 4 - Manali (Full Day Trip to Kullu (45Kms) Kasol (75KM ) Manikaran (80Kms )\r\nMorning after breakfast you will be pickup from hotel and transfer to Manikaran. At 1737 mts., on the right bank of river Parvati is Manikaran. This place is famous for hot sulphur springs revered by both Hindus & Sikhs pilgrimages. The water of the spring is also said to be radio-active which cures many skin diseases. According to an ancient saying Manikaran is also connected with Lord Shiva and his divine concert Goddess Parvati. On the way also visit Kasol Valley Charmingly Manikaran located on open space with slopes down to a broad expanse of clear white sand at edge of the river Parvati, Vaishno Temple which is a small cave and shrine with an image of goddess Vaishno devi. Other temples are dedicated to lord Shiva, Rama and Krishna, and visit Kullu Shawl factory. On this day you can also take enjoy of water rafting at Babeli Kullu. Evening drive back to hotel. Night Stay and Dinner in hotel at Manali.\r\n\r\nDay 5 - Manali - Delhi Departure. (By cab)\r\nMorning enjoy the breakfast and check out from the hotel at 12 noon (Luggage can be kept at reception or bell desk. Afternoon enjoys at leisure or can take stroll down the mall (Own cost ) in Manali and enjoy shopping antiques, shawls and handicrafts. Evening catch the from Manali at 4.00 PM to proceed Delhi. Overnight Journey.\r\n\r\nDay 6 - Manali - Delhi Departure. (By cab)\r\nArrival at Delhi, the glorious tour to the heavenly Manali comes to an end. In this way your visit to one of the paradise on earth located amidst the lofty Himalayas ends offering your glorious memories to cherish for lifetime.', 'Manali.jpeg', '2021-04-07 18:09:54', '2021-04-07 18:11:58', 5, '5 nights', 'Hotel Shambhala', 'Ramakrishna Ashram Metro Station,Delhi'),
(17, 'Goa Holiday Package', 'Family Package', 'Goa', 25000, 'Meals, Accommodation, Pickup and Drop, Sightseeing', 'DETAILED DAY WISE ITINERARY\r\n\r\nDay 1 - Arrive at Goa Airport\r\nYou will get a warm welcome by our representative when you arrive at Goa Airport/Railway station/Bus stop.You will then escort to your pre-booked hotel for Initial check-in process (standard check-in time is 14:00 hrs).After some relaxation you may self-explore the beaches/market area nearby your hotel and then overnight stay at your hotel. Only pick will be provided this day, unless or otherwise specified in itinerary.\r\n\r\n \r\nDay 2 - North Goa Sightseeing by Private Vehicle\r\nAFTER A WONDERFUL MORNING YOU CAN HAVE YOUR BREAKFAST & GET READY AND DRIVE TOWARD NORTH GOA PART FOR YOUR SIGHTSEEING, POINTS WHICH WILL BE COVERED WILL AS PER BELOW FORT AGAUDA CANDOLIM BEACH CALANGUTE BEACH LUNCH BREAK AT GOA RESTAURANT (AT OWN COST) BAGA BEACH ANJUNA BEACH VAGATOR BEACH COPRA FORT\r\n\r\n \r\nDay 3 - South Goa Sightseeing by Private Vehicle\r\nAFTER A WONDERFUL MORNING YOU CAN HAVE YOUR BREAKFAST & GET READY AND DRIVE TOWARD SOUTH GOA PART FOR YOUR SIGHTSEEING, POINTS WHICH WILL BE COVERED WILL AS PER BELOW PANJIM CITY CHURCHES OLD GOA MIRAMAR BEACH BASILICA OF BOM JESUS TIRUPATI BALAJI TEMPLE MANGESHI TEMPLE SAHAKARI SPICE FARM BOAT CRUISE AT MANDOVI RIVER\r\n\r\n \r\nDay 4 - Back to Home with sweet memories\r\nMorning breakfast and check out of the hotel and proceed to Airport / Railway Station to catch your onward Journey. Tour Ends', 'goa.jpg', '2021-04-07 18:17:39', NULL, 4, '3 nights', 'Lambana Resorts', 'Goa Airport/Railway station/Bus stop'),
(18, 'Glorious Kashmir Package', 'Family Package', 'Kashmir,Jammu and Kashmir', 60000, 'Meals, Accommodation, Pickup and Drop, Sightseeing', 'Detailed Day Wise Itinerary\r\nDay 1 - Arrive in Srinagar (Local Srinagar)\r\nArrive at Srinagar Airport and head to the hotel. Take a sightseeing tour to the Mughal Garden that includes a visit to Shalimar Bagh, Nishat Bagh, Tulip Gardens, Botanical Gardens, Chashme Shahi and Pari Mahal. Dinner and overnight stay would be arranged at the hotel, in Srinagar.\r\n\r\nDay 2 - In Srinagar - Day Excursion to Sonamarg (79.6 km / 1.5 hours)\r\nRelish a lip-smacking breakfast and embark on a full-day excursion to Sonamarg, popular for trout and mahseer fishing in summers. You may opt for a pony ride to one of the glaciers (on your own payment). Return to the hotel in Srinagar late in the evening and enjoy a delectable dinner along with a comfortable overnight stay.\r\n\r\nDay 3 - In Srinagar - Day Excursion to Gulmarg (56.9 km / 1.5 hours, one way)\r\nIn the morning, post breakfast, leave for Gulmarg, known for the best ski slopes in the world and highest golf course with 18 holes. If weather permits, take a view of Nanga Parbat, and enjoy a cable car ride (Gondola - the 8-minute Ropeway) up to Khilanmarg. Return to the hotel in Srinagar late in the evening. Dinner and overnight stay will be at the hotel, in Srinagar.\r\n\r\nDay 4 - In Srinagar - Srinagar to Pahalgam (86.9 km / 2.5 hours, one way)\r\nIn the morning, leave for Pahalgam. En route, visit the Awantipora ruins. Check in at the hotel and after some rest, take a stroll to Baisaran. Visit Chandanwadi (at your own cost), the Snow Point (14 Km) at your own cost or enjoy a pony ride at your own cost. A hearty dinner and a pleasant overnight stay will be arranged at the hotel, in Pahalgam.\r\n\r\nDay 5 - In Pahalgam - Pahalgam to Srinagar - Shikara Ride (88.9 km / 1 hour 55 min)\r\nAfter a sumptuous breakfast, return to Srinagar. In the evening, visit the remaining important places in Srinagar and enjoy a Shikara Ride, on Dal Lake. An appetizing dinner and a pleasant overnight stay will be at the Deluxe Houseboat.\r\n\r\nDay 6 - Return Home with Happy Memories\r\nAfter a tummy-filling breakfast, visit remaining places in Srinagar and head to Srinagar Airport to board your onward flight.', 'kashmir.jpeg', '2021-04-07 18:22:07', NULL, 5, '5 nights', 'Hotel the Regency', 'Srinagar Airport, Kashmir'),
(19, 'Mysore & Ooty  Package', 'Couple Package', 'Mysore-Karnataka  &  Ooty-Tamil Nadu', 20000, 'Meals, Accommodation, Pickup and Drop, Sightseeing', 'Detailed Day Wise Itinerary\r\n\r\nDay 1 - Bengaluru - Mysore (150 Kms / approx. 3 to 4 hours)\r\nUpon arrival in Bangalore, you will be met our Representative. After doing necessary formalities (should not take more than 5-10 minutes), our representative will hand over the vehicle to you at the airport or nearby pick up location and brief you about the important aspects of Self Drive cars. (Transportation to be arranged by yourself to the nearest pick up location).\r\n\r\nUpon receiving your Self Drive vehicle, head straight to Mysore.Arrive Mysore and check into your pre-booked hotel.\r\n\r\nLater, enjoy a half-day sightseeing tour of Mysore, known as the \'City Of Palaces\'. Visit the Brindavan Gardens… spread over 150 acres, these beautiful gardens are laid out below the Krishnaraja Sagar dam built across the river Cauvery. The gardens are famous for the illuminated dancing fountains that come to life after sunset. Explore the Mysore Palace… built in the Indo-Saracenic style, the Palace is a treasure house of exquisite carvings and works of art from all over the world. Next, visit Chamundi Hill. Half-way up to the top is Nandi, Lord Shiva\'s Bull - a majestic 4.8 meter monolith. At the top is the 12th century temple of Chamundeshwari, the patron goddess of the Wodeyars. The summit offers a panoramic view of Mysore\'s lakes, parks and palaces.Return to hotel for overnight stay in Mysore.\r\n\r\nDay 2 - Mysore - Ooty (157 Kms / 3 to 4 hours)\r\nAfter breakfast, drive to Ooty - Known as the ‘Queen of Hill Stations’. Nestled in the Nilgiri Hills, Ooty is a feast for the eyes, with its lofty, eucalyptus covered mountains, dense forests, and acres and acres of tea estates.\r\nUpon arrival, check in at your pre booked hotel.Full day is at leisure.Overnight stay at Ooty hotel.\r\n\r\n\r\nDay 3 - Ooty\r\nToday, enjoy a stroll around the Botanical Gardens, covering an area of 22 acres. The garden comprises varieties of tree species, grass carpet, ferns, multi-coloured flowering plants, orchids, nurseries and flowerbeds laid out in Italian style. Visit Doddabetta Peak the highest point (2623 meters) in the Nilgiris, at the junction of the Western and Eastern Ghats. The top of the peak offers beautiful vistas of the Nilgiri Hills. To conclude your tour, explore Raj Bhavan. Built in 1877 by the Duke of Buckingham, Government House or Raj Bhavan is a sprawling, cream-coloured mansion, overlooking the Botanical Gardens.Return to hotel for overnight stay.\r\n\r\nDay 4 - Ooty - Bengaluru (279 Kms / approx. 6 to 7 hours)\r\nAfter breakfast, drive back to Bengaluru. Upon your arrival in Bangalore, handover the car and complete the necessary checks/formalities.', 'Mysore.jpeg', '2021-04-07 18:31:44', NULL, 2, '3 nights', 'The Qurom &  Mount n Mist', 'Bangalore Airport/ Railway Station'),
(20, 'Darjeeling Tour Package', 'Couple Package', 'Darjeeling, West Bengal', 25000, 'Meals, Accommodation, Pickup and Drop, Sightseeing', 'Detailed Day Wise Itinerary\r\n\r\nDay 1 - Bagdogra / New Jalpaiguri - Gangtok\r\nWelcome on arrival at Bagdogra Airport / New Jalpaiguri Railway Station and transfer to Gangtok (114kms/4.5hrs), At an altitude of 5500ft Gangtok is the capital of the state of Sikkim is a beautiful and clean town promising of the best monasteries and landscapes. Evening free for individual activity and leisure, overnight at hotel.\r\n\r\n\r\nDay 2 - Excursion Trip to Tsomgo Lake and Baba Mandir\r\nAM start for a half day trip to Tsomgo lake (12400ft), which is only 32kms from Gangtok City, the lake is almost about 1Km long, oval in shape and 15 mtrs deep. The lake is considered sacred by the local people, further 12Kms is Baba Mandir dedicated to the memory of soldier Harbhajan Singh. Evening free for individual activity and leisure, overnight at hotel.\r\n\r\n\r\nDay 3 - Gangtok - Pelling\r\nBreakfast at the hotel and drive to Pelling. Located at a distance of 120 kms from Gangtok Pelling is another serene, mountain villagewhich lies in the western districts of Sikkim. This village is situated at an altitude of 2000mts(approx) and commands a spectacular view of Mt.Kanchenjunga. Overnight at hotel.\r\n\r\n\r\nDay 4 - Pelling Sightseeing\r\nBreakfast at the hotel full day city tour visiting Khechipalri Lake, Rimbi Falls, KanchenjungsFalls, Orange Garden, Pemayangste Monastery and Rabtense Ruins. Overnight at hotel.\r\n\r\nDay 5 - Pemayangtse to Darjeeling\r\nMorning transfer to Darjeeling. Once the summer capital of India, Darjeeling is a land of infinite variety and charm. It will cater you a mix-experience of lively nature & charming Himalayan people. It is the place of Dorje, the mystic thunderbolt of the Lama- Religion. Surrounded by Tea gardens, this little town faces some of the Himalayas highest peaks. Take a rest and then a walk around town to appreciate the new culture you are in. Overnight at Hotel.\r\n\r\n\r\nDay 6 - Darjeeling Local Sightseeing two points (04 AM to 07 AM) and best points (9.30 AM to 1.30 PM or 2.00 PM to 6.00 PM)\r\nEarly morning start for Tiger Hill to watch the spectacular sunrise and its amazing effects on the Mt. Kanchendzonga (World’s 3rd highest peak), Visit Ghoom Monastery (SUBJECT TO AVAILABILITY). Breakfast at the Hotel followed by half day local Best points sightseeing covering Padmaja N. Zoological Garden (Closed on Thursday), Himalayan Mountaineering Institute (Closed on Thursday), Tibetan Refugee Self-help Center (Closed on Sunday), Ropeway (entry fees not included), walk around visit to the Mall and Local Market (Closed on Thursday). Evening Free for shopping & individual activity, overnight at hotel.\r\n\r\n\r\nDay 7 - Transfer to Kalimpong and later Local Sightseeing\r\nMorning after breakfast transfer to Kalimpong (54kms/2hrs) and later the Local Sight Seeing In and Around Kalimpong City, Covering Zong Dog Palri Fo- Brong Monastery (Durpin Dara Monastery ), Flower & Orchid Nurseries, Dello Hill. Evening free for individual activity. Overnight at Hotel.\r\n\r\n\r\nDay 8 - Kalimpong - Bagdogra / New Jalpaiguri\r\nMorning after breakfast departure transfer to New Jalpaiguri Railway Station / Bagdogra Airport (75 Kms / 03 Hours).Tour Ends.', 'Darjeeling.jpeg', '2021-04-07 18:37:53', NULL, 2, '7 nights', 'Hotel Ninnama  & Sinclairs Hotels & Resorts 3 Star', 'Bagdogra Airport / New Jalpaiguri Railway Sta'),
(21, 'Try', 'try', 'try', 2000, 'try', 'try', '5.jpg', '2021-04-08 03:16:45', NULL, 6, '9', 'try', 'try');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(12, 'abc', '894567158', 'abc@gmail.com', 'e2fc714c4727ee9395f324cd2e7f331f', '2021-04-07 19:19:27', NULL),
(13, 'abcd', '6745545554', 'abcd@gmail.com', 'e2fc714c4727ee9395f324cd2e7f331f', '2021-04-07 19:31:56', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
