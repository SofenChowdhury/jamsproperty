-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: faisalsarker.mysql.pythonanywhere-services.com    Database: faisalsarker$jamsproperty
-- ------------------------------------------------------
-- Server version	5.7.28-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `About_aboutus`
--

DROP TABLE IF EXISTS `About_aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `About_aboutus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `sub_title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `About_aboutus`
--

LOCK TABLES `About_aboutus` WRITE;
/*!40000 ALTER TABLE `About_aboutus` DISABLE KEYS */;
INSERT INTO `About_aboutus` VALUES (1,'About Us','Jamsproperty, one of the largest property portal, deals with every aspect of the consumers’ needs in the real estate industry.','It is an online forum where buyers, sellers and brokers/agents can exchange information about real estate properties quickly, effectively and inexpensively. At jamsproperty.com, you can advertise a property, search for a property, browse through properties, build your own property microsite, and keep yourself updated with the latest news and trends making headlines in the realty sector.','assets/uploads/aboutus/bene-office-furniture-II-1024x678.jpg');
/*!40000 ALTER TABLE `About_aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `About_companyvideo`
--

DROP TABLE IF EXISTS `About_companyvideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `About_companyvideo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `video_poster` varchar(100) DEFAULT NULL,
  `status` int(11),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `About_companyvideo`
--

LOCK TABLES `About_companyvideo` WRITE;
/*!40000 ALTER TABLE `About_companyvideo` DISABLE KEYS */;
INSERT INTO `About_companyvideo` VALUES (1,'Test','assets/uploads/video/company/Creative_Percept__-_Corporate_Video.mp4','assets/uploads/video/company/snap_screen_20200421232348.png',0),(7,'Test','','assets/uploads/video/company/snap_screen_20200421232348_v3ce74G.png',0),(9,'Test','assets/uploads/video/company/Creative_Percept__-_Corporate_Video_SAqo6N1.mp4','',0);
/*!40000 ALTER TABLE `About_companyvideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `About_contactus`
--

DROP TABLE IF EXISTS `About_contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `About_contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `fb` varchar(200) NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `insta` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(100) NOT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `About_contactus`
--

LOCK TABLES `About_contactus` WRITE;
/*!40000 ALTER TABLE `About_contactus` DISABLE KEYS */;
INSERT INTO `About_contactus` VALUES (1,'Contact Us','assets/uploads/setup/101_hvRVj7k.png','https://www.facebook.com/jamsproperty.com','https://www.youtube.com/channel/UCuno8JW0lkVTbzyxy_tTWeA?view_as=subscriber','','01880088226, 01880088227, 01880088228, 01880088229','info@jamsproperty.com','Adept N.R Complex, Ka 5/2 (6th Floor), Bashandhara Road, Vatara, Baridhara Dhaka-1229, Bangladesh','Dhaka','Bangladesh','10:00:00.000000','18:00:00.000000');
/*!40000 ALTER TABLE `About_contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `About_faq`
--

DROP TABLE IF EXISTS `About_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `About_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `About_faq`
--

LOCK TABLES `About_faq` WRITE;
/*!40000 ALTER TABLE `About_faq` DISABLE KEYS */;
INSERT INTO `About_faq` VALUES (1,'Water Garden','');
/*!40000 ALTER TABLE `About_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `About_finencialsupport`
--

DROP TABLE IF EXISTS `About_finencialsupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `About_finencialsupport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `sub_title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `About_finencialsupport`
--

LOCK TABLES `About_finencialsupport` WRITE;
/*!40000 ALTER TABLE `About_finencialsupport` DISABLE KEYS */;
INSERT INTO `About_finencialsupport` VALUES (1,'Financial Support','We provide you property related financial informational support','Financial Documentation Process','');
/*!40000 ALTER TABLE `About_finencialsupport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `About_legalsupport`
--

DROP TABLE IF EXISTS `About_legalsupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `About_legalsupport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `sub_title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `About_legalsupport`
--

LOCK TABLES `About_legalsupport` WRITE;
/*!40000 ALTER TABLE `About_legalsupport` DISABLE KEYS */;
INSERT INTO `About_legalsupport` VALUES (1,'Legal Information','Property related information','Property legal information','');
/*!40000 ALTER TABLE `About_legalsupport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `About_testimonial`
--

DROP TABLE IF EXISTS `About_testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `About_testimonial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(100) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `About_testimonial`
--

LOCK TABLES `About_testimonial` WRITE;
/*!40000 ALTER TABLE `About_testimonial` DISABLE KEYS */;
INSERT INTO `About_testimonial` VALUES (1,'Mohammad Shahadat Hossain','Chairman','assets/uploads/sliders/1.jpg','hello everyone');
/*!40000 ALTER TABLE `About_testimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Advertisement_advertisement`
--

DROP TABLE IF EXISTS `Advertisement_advertisement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Advertisement_advertisement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_title` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `ad_image` varchar(100) NOT NULL,
  `ad_placement` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Advertisement_advertisement`
--

LOCK TABLES `Advertisement_advertisement` WRITE;
/*!40000 ALTER TABLE `Advertisement_advertisement` DISABLE KEYS */;
INSERT INTO `Advertisement_advertisement` VALUES (3,'Covid-19','JamsProperty','assets/uploads/advertisement/IMG-20200501-WA0002.jpg',8,1);
/*!40000 ALTER TABLE `Advertisement_advertisement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CompanyType_companytypes`
--

DROP TABLE IF EXISTS `CompanyType_companytypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CompanyType_companytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Company_type_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CompanyType_companytypes`
--

LOCK TABLES `CompanyType_companytypes` WRITE;
/*!40000 ALTER TABLE `CompanyType_companytypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `CompanyType_companytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Faq_faq`
--

DROP TABLE IF EXISTS `Faq_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Faq_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Faq_faq`
--

LOCK TABLES `Faq_faq` WRITE;
/*!40000 ALTER TABLE `Faq_faq` DISABLE KEYS */;
INSERT INTO `Faq_faq` VALUES (1,'WHAT IS A SELLER\'S MARKET?','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise'),(2,'How long does it take to buy a home?','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise'),(3,'What the first step of the home buying process?','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise');
/*!40000 ALTER TABLE `Faq_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inbox_inbox`
--

DROP TABLE IF EXISTS `Inbox_inbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Inbox_inbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_email` varchar(200) NOT NULL,
  `send_to` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `sendTime` datetime(6) NOT NULL,
  `status` varchar(20) NOT NULL,
  `seenTime` datetime(6) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inbox_inbox`
--

LOCK TABLES `Inbox_inbox` WRITE;
/*!40000 ALTER TABLE `Inbox_inbox` DISABLE KEYS */;
INSERT INTO `Inbox_inbox` VALUES (11,'','','01685871382','Residential #24','testingggggggggg','2020-03-18 10:40:17.089171','3',NULL,NULL),(12,'','','01685871382','Residential #32','another test !!','2020-03-18 10:44:13.292074','3',NULL,NULL),(13,'','','01685871382','Residential #32','i am interested to know about that Property','2020-03-18 10:49:47.498490','3',NULL,NULL),(14,'','','01685871382','Residential #32','again Testing','2020-03-18 10:53:50.988398','3',NULL,NULL),(15,'','','01685871382','Residential #32','I am testing the email part !! \r\nplease Do not replay !!','2020-03-19 03:53:08.039634','3',NULL,NULL),(16,'','','01685871382','Residential #32','sert aerwt ert','2020-03-19 04:09:14.007310','3',NULL,NULL),(17,'','','01685871382','Residential #32','I am Interested about this Property','2020-03-19 04:50:49.563348','3',NULL,NULL),(22,'sales@jamsproperty.com','Faisal.sarker@gmail.com','','Testing ','Hello sir,\r\n\r\ni am notifying you  Bout my company .','2020-03-19 05:28:06.258849','3',NULL,NULL),(23,'sales@jamsproperty.com','','','Testing ','Hello sir,\r\n\r\ni am notifying you  Bout my company .','2020-03-19 05:28:06.266095','3',NULL,NULL),(24,'sales@jamsproperty.com','prince03.nic@gmail.com','','Testing ','Hello sir,\r\n\r\ni am notifying you  Bout my company .','2020-03-19 05:28:06.901565','3',NULL,NULL),(70,'niland.booker@outlook.com','sales@jamsproperty.com','451 2833','Have You Tried Content Samurai?','Name: Booker Niland , Hi,\r\n\r\nWe\'re wondering if you\'ve ever considered taking the content from jamsproperty.com and converting it into videos to promote on Youtube using Content Samurai?\r\n\r\nIt\'s another \'rod in the pond\' in terms of traffic generation, as so many people use Youtube.\r\n\r\nYou can read a bit more about the software here: https://turntextintovideo.com\r\n\r\nKind Regards,\r\nBooker','2020-04-23 22:53:18.255629','0','2020-05-04 15:25:30.976112',NULL),(77,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-14 06:55:45.620691','0',NULL,NULL),(78,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-14 06:57:47.865384','0',NULL,NULL),(79,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-14 08:54:43.624333','0',NULL,NULL),(80,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-14 09:22:57.043300','0',NULL,NULL),(81,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-14 09:22:59.976009','0',NULL,NULL),(82,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-14 09:23:05.020258','0',NULL,NULL),(83,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-14 09:23:07.824967','0',NULL,NULL),(84,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-14 09:23:10.539946','0',NULL,NULL),(85,'sales@jamsproperty.com','meshkat_cse@yahoo.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-14 09:23:13.467277','0','2020-07-10 05:05:00.918673',NULL),(86,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-30 14:57:34.961984','0',NULL,NULL),(87,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-30 14:57:39.827667','0','2020-05-31 04:18:26.176322',NULL),(88,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-30 14:57:44.295641','0',NULL,NULL),(89,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-30 14:57:50.897565','0',NULL,NULL),(90,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-30 14:57:56.651765','0',NULL,NULL),(91,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-30 14:58:02.361502','0',NULL,NULL),(92,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-30 14:58:10.015752','0',NULL,NULL),(93,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-30 14:58:14.897466','0',NULL,NULL),(94,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-31 04:13:21.315067','0',NULL,NULL),(95,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-31 04:13:25.255637','0',NULL,NULL),(96,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-31 04:13:29.098785','0','2020-05-31 04:18:14.526649',NULL),(97,'situsshar@gmail.com','sales@jamsproperty.com','01686010170','5 katha 60/25 feet Corner Plot for Sale  #84','Name: Tushar , I would like to request for your property (ID: #84 ). Please contact me as quick as convenience.','2020-05-31 04:21:59.972725','0','2020-05-31 04:22:34.502641',NULL),(98,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-31 04:48:13.520049','0',NULL,NULL),(99,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-05-31 05:22:39.575831','0',NULL,NULL),(100,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-06-02 04:51:20.612742','0',NULL,NULL),(101,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-06-02 06:11:15.861946','0',NULL,NULL),(102,'claudiauclement@yahoo.com','sales@jamsproperty.com','034633 46 25','DA 96 Do-follow Backlink from Amazon to jamsproperty.com?','Name: Claudia Clement , Hi, We are wondering if you would be interested in our service, where we can provide you with a dofollow link from Amazon (DA 96) back to jamsproperty.com?\r\n\r\nThe price is just $87 per link, via Paypal.\r\n\r\nTo explain what DA is and the benefit for your website, along with a sample of an existing link, please read here: https://pastelink.net/1nm60\r\n\r\nIf you\'d be interested in learning more, reply to this email but please make sure you include the word INTERESTED in the subject line field.\r\n\r\nKind Regards,\r\nClaudia','2020-06-05 20:23:57.972433','0',NULL,NULL),(103,'sales@jamsproperty.com','situsshar@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-06-11 06:37:05.747922','0',NULL,NULL),(104,'sales@jamsproperty.com','mdmoifulislam483@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-06-13 06:47:49.941577','0',NULL,NULL),(105,'sales@jamsproperty.com','mdmoifulislam483@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-06-13 06:47:53.396867','0',NULL,NULL),(106,'sales@jamsproperty.com','mdmoifulislam483@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-06-13 06:47:56.847579','0',NULL,NULL),(107,'sales@jamsproperty.com','mdmoifulislam483@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-06-13 06:48:02.447749','0',NULL,NULL),(108,'sales@jamsproperty.com','mdmoifulislam483@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-06-13 06:48:06.007791','0',NULL,NULL),(109,'sales@jamsproperty.com','mdmoifulislam483@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-06-13 07:12:50.633465','0',NULL,NULL),(110,'sales@jamsproperty.com','mdmoifulislam483@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-06-13 07:21:38.335032','0',NULL,NULL),(111,'sales@jamsproperty.com','mdmoifulislam483@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-06-13 07:21:44.971577','0',NULL,NULL),(112,'sales@jamsproperty.com','mdmoifulislam483@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-06-13 07:21:48.671319','0',NULL,NULL),(113,'sales@jamsproperty.com','mdmoifulislam483@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-06-13 07:21:52.588667','0',NULL,NULL),(114,'sales@jamsproperty.com','mdmoifulislam483@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-06-13 07:21:56.419309','0',NULL,NULL),(115,'entendges@anmail.xyz','sales@jamsproperty.com','83489899433','recommended dosage of cialis Stodia','Name: entendges , Tesco Pharmacy Viagra  https://agenericcialise.com/ - Cialis Cialis Italia Prezzo  <a href=https://agenericcialise.com/#>Generic Cialis</a> Priligy Generico Italia  ','2020-06-19 14:59:19.812273','0',NULL,NULL),(116,'entendges@anmail.xyz','sales@jamsproperty.com','85981431533','where to buy cialis online Stodia','Name: entendges , Forum Levitra Sans Ordonnance  https://bbuycialisss.com/ - buy generic cialis online safely Levitra Prescrizione Medica  <a href=https://bbuycialisss.com/#>buy cialis online forum</a> Can Amoxicillin Cause Stomach Pain  ','2020-06-21 07:05:59.600405','0',NULL,NULL),(117,'tregepral@aqmail.xyz','sales@jamsproperty.com','83786543799','make cialis more effective obessy','Name: quetrease , Discount Progesterone By Money Order Tablet  https://cheapcialisll.com/ - cialis 5 mg Levitra Quand Le Prendre  <a href=https://cheapcialisll.com/#>best cialis online</a> Amoxicillin Vs Cetalopram ','2020-06-22 16:35:57.956067','0',NULL,NULL),(118,'unjunnish@anmail.xyz','sales@jamsproperty.com','85169381169','tadalafil stamina rx Stodia','Name: entendges , Isotretinoin Tab Internet Pharmacy  https://cheapcialisll.com/ - Cheap Cialis viagra feminino  <a href=https://cheapcialisll.com/#>Cialis</a> Stendra Avana Low Price Drugs Overseas ','2020-06-22 20:15:48.679021','0',NULL,NULL),(119,'unjunnish@anmail.xyz','sales@jamsproperty.com','84987986749','generic cialis capsules Stodia','Name: entendges , Acheter Du Cialis Pas Cher  https://agenericcialise.com/ - cialis 5 mg Generic Viagra Sample Pack  <a href=https://agenericcialise.com/#>buy cialis online overnight shipping</a> Cheap Valtrex Canada ','2020-06-23 02:46:50.319205','0',NULL,NULL),(120,'tregepral@aqmail.xyz','sales@jamsproperty.com','87277154563','cialis skin rash obessy','Name: quetrease , Buy Amantadine  https://cheapcialisll.com/ - Cheap Cialis Pharmacy In Canada  <a href=https://cheapcialisll.com/#>Cheap Cialis</a> Viagra En Algerie ','2020-06-26 14:41:01.064731','0',NULL,NULL),(121,'tregepral@aqmail.xyz','sales@jamsproperty.com','87749638385','buy liquid cialis obessy','Name: quetrease , Bull 100 Sildenafil Citrate  https://ascialis.com/ - buy cialis online without prescription Amoxil 500  <a href=https://ascialis.com/#>canadian cialis</a> Discount Generic Dutasteride Real ','2020-06-26 14:55:17.077173','0','2020-07-10 05:05:49.289399',NULL),(122,'anisogy@anmail.xyz','sales@jamsproperty.com','87366613945','tadalafil speed of onset nitsenna','Name: cialis online , Preis Cialis Tadalafil  emailadvam https://ascialis.com/# - canadian cialis unendy Order isotretinoin no rx with free shipping  epitethypomo <a href=https://ascialis.com/#>Cialis</a> undomi Buy Propecia Europe ','2020-07-10 07:15:00.764668','0',NULL,NULL),(123,'anisogy@anmail.xyz','sales@jamsproperty.com','87898717855','is generic cialis the same nitsenna','Name: п»їcialis , Flomax Without Prescription  LonaTync https://acialisd.com/# - Cialis Geteemysuecy Ou Trouver Cialis Sans Ordonnance  Solesild <a href=https://acialisd.com/#>Cialis</a> shouch daily cialis muscle ache ','2020-07-11 07:05:35.580975','0',NULL,NULL),(124,'Spousty@aqmail.xyz','sales@jamsproperty.com','81255772132','tadalafil image grienly','Name: cialis online , In Canada  emailadvam https://ascialis.com/# - cialis without a prescription unendy Shop Provera  epitethypomo <a href=https://ascialis.com/#>Cialis</a> undomi Baclofene Nancy ','2020-07-13 02:14:17.285347','0',NULL,NULL),(125,'anisogy@anmail.xyz','sales@jamsproperty.com','88723117793','why is cialis counterindicated for antifungals nitsenna','Name: cialis online , Amoxil Needs Refrigeration  emailadvam https://ascialis.com/# - buy real cialis online unendy Zithromax Generic Cost  epitethypomo <a href=https://ascialis.com/#>Cialis</a> undomi Kamagra Jelly Orale 10 Bustine ','2020-07-13 06:07:03.024973','0',NULL,NULL),(126,'sales@jamsproperty.com','mdmoifulislam483@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-07-16 05:52:05.719788','0',NULL,NULL),(127,'sales@jamsproperty.com','mdmoifulislam483@gmail.com','','Jams Property Property Alert.','Congratulations sir! Your Property has been : Approved','2020-07-16 05:52:08.299785','0',NULL,NULL),(128,'sales@jamsproperty.com','mdmoifulislam483@gmail.com','','Jams Property Property Alert.','Your Property is : Pending','2020-07-16 05:52:57.326954','0',NULL,NULL),(129,'Spousty@aqmail.xyz','sales@jamsproperty.com','86783736927','avodart cialis clomid diflucan dostinex gluco grienly','Name: buy cialis online reviews , Super Silagra  Gomesmendefe https://bbuycialisss.com/# - discount cialis roatricy Canadian Health Club Viagara  snopornunera <a href=https://bbuycialisss.com/#>Buy Cialis</a> Grourn 2.5 mg cialis ','2020-07-26 18:56:14.094427','0',NULL,NULL),(130,'woolner.bart@yahoo.com','sales@jamsproperty.com','06-23928277','How To Get More Traffic to jamsproperty.com in 2020','Name: Bart Woolner , Hi,\r\n\r\nWe\'re wondering if you\'ve ever considered taking the content from jamsproperty.com and converting it into videos to promote on social media platforms such as Youtube?\r\n\r\nIt\'s another \'rod in the pond\' in terms of traffic generation, as so many people use Youtube.\r\n\r\nYou can read a bit more about the software here: https://bit.ly/302k8GY\r\n\r\nKind Regards,\r\nBart','2020-07-29 16:19:20.889578','0',NULL,NULL),(131,'Spousty@aqmail.xyz','sales@jamsproperty.com','86342636494','cialis overnight no pe grienly','Name: cialis buy online usa , cialis contre indications  emailadvam https://ascialis.com/ - generic cialis for sale unendy Zithromax Typhoid Fever  epitethypomo <a href=https://ascialis.com/#>buy cialis online canada pharmacy</a> undomi Cytotec En Ligne ','2020-08-02 11:56:59.586425','0',NULL,NULL),(132,'Spousty@aqmail.xyz','sales@jamsproperty.com','88391474519','cialis 10mg daily grienly','Name: where to buy cialis online forum , Amoxil Without Script  emailadvam https://ascialis.com/ - where to buy cialis online safely unendy Ed Meds Online Discount Paypal  epitethypomo <a href=https://ascialis.com/#>buy cialis online overnight shipping</a> undomi venta de viagra concepcion ','2020-08-02 12:09:53.622804','0',NULL,NULL),(133,'Pietlessy@afmail.xyz','sales@jamsproperty.com','85553428645','fox news advertisers cialis jeonterry','Name: cialis from usa pharmacy , generic cialis vs brand name cialis  ruiceGuirl https://agencialisto.com/ - can i buy cialis without a prescription Intotaaccorp Propecia Espana Medicamentos Genericos  nignKets <a href=https://agencialisto.com/#>cialis from india</a> Careteaf Amoxicillin Side Effects ','2020-08-09 22:26:52.316434','0',NULL,NULL),(134,'Pietlessy@afmail.xyz','sales@jamsproperty.com','84936437897','real cialis online pharmacy jeonterry','Name: cialis 5mg , Cialis Tadalafil Precio  emailadvam https://artsocialist.com/ - cialis from usa pharmacy unendy Levitra Cialis Comparison  epitethypomo <a href=https://artsocialist.com/#>Cialis</a> undomi Viagra Drug Interactions ','2020-08-15 21:38:45.659781','0',NULL,NULL);
/*!40000 ALTER TABLE `Inbox_inbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Notification_notification`
--

DROP TABLE IF EXISTS `Notification_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Notification_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notify_time` datetime(6) NOT NULL,
  `seen_at` datetime(6) DEFAULT NULL,
  `notify_message` longtext NOT NULL,
  `notify_for_id` int(11) NOT NULL,
  `notify_to_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Notification_notific_notify_for_id_c600f8a2_fk_property_` (`notify_for_id`),
  KEY `Notification_notification_notify_to_id_f116a31e_fk_auth_user_id` (`notify_to_id`),
  CONSTRAINT `Notification_notific_notify_for_id_c600f8a2_fk_property_` FOREIGN KEY (`notify_for_id`) REFERENCES `property_property` (`id`),
  CONSTRAINT `Notification_notification_notify_to_id_f116a31e_fk_auth_user_id` FOREIGN KEY (`notify_to_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Notification_notification`
--

LOCK TABLES `Notification_notification` WRITE;
/*!40000 ALTER TABLE `Notification_notification` DISABLE KEYS */;
INSERT INTO `Notification_notification` VALUES (1,'2020-03-10 09:23:20.069418',NULL,'Thank You for Posting your Property! Your Property is Approved',4,14),(6,'2020-03-15 06:01:00.689844',NULL,'Thank You for Posting your Property! Your Property is in under Review.',6,15),(7,'2020-03-15 06:12:17.095254',NULL,'Thank You for Posting your Property! Your Property is in under Review.',7,15),(8,'2020-03-15 06:19:18.311685',NULL,'Thank You for Posting your Property! Your Property is in under Review.',8,15),(9,'2020-03-15 06:28:33.139624',NULL,'Thank You for Posting your Property! Your Property is in under Review.',9,15),(10,'2020-03-15 06:36:05.943644',NULL,'Thank You for Posting your Property! Your Property is in under Review.',10,15),(11,'2020-03-15 06:47:41.039310',NULL,'Thank You for Posting your Property! Your Property is in under Review.',11,15),(12,'2020-03-15 06:53:20.708187',NULL,'Thank You for Posting your Property! Your Property is in under Review.',12,15),(13,'2020-03-15 06:57:57.959419',NULL,'Thank You for Posting your Property! Your Property is in under Review.',13,15),(14,'2020-03-15 07:08:09.420383',NULL,'Thank You for Posting your Property! Your Property is in under Review.',14,15),(15,'2020-03-15 07:13:31.199349',NULL,'Thank You for Posting your Property! Your Property is in under Review.',15,15),(16,'2020-03-15 07:22:27.974550',NULL,'Thank You for Posting your Property! Your Property is in under Review.',16,15),(17,'2020-03-15 07:40:45.602509',NULL,'Thank You for Posting your Property! Your Property is in under Review.',17,15),(18,'2020-03-15 09:50:32.935144',NULL,'Thank You for Posting your Property! Your Property is in under Review.',18,15),(19,'2020-03-15 10:09:05.841363',NULL,'Thank You for Posting your Property! Your Property is in under Review.',19,15),(20,'2020-03-15 10:15:42.658404',NULL,'Thank You for Posting your Property! Your Property is in under Review.',20,15),(21,'2020-03-15 10:21:12.450875',NULL,'Thank You for Posting your Property! Your Property is in under Review.',21,15),(22,'2020-03-15 10:35:51.436680',NULL,'Thank You for Posting your Property! Your Property is Approved',6,15),(23,'2020-03-15 11:16:29.517871',NULL,'Thank You for Posting your Property! Your Property is in under Review.',22,15),(24,'2020-03-15 11:22:10.429253',NULL,'Thank You for Posting your Property! Your Property is in under Review.',23,15),(25,'2020-03-15 11:28:57.284273',NULL,'Thank You for Posting your Property! Your Property is in under Review.',24,15),(26,'2020-03-15 11:36:49.721087',NULL,'Thank You for Posting your Property! Your Property is in under Review.',25,15),(27,'2020-03-15 11:54:26.613309',NULL,'Thank You for Posting your Property! Your Property is in under Review.',26,15),(28,'2020-03-15 12:00:17.920107',NULL,'Thank You for Posting your Property! Your Property is in under Review.',27,15),(29,'2020-03-15 12:04:08.688927',NULL,'Thank You for Posting your Property! Your Property is in under Review.',28,15),(30,'2020-03-15 12:06:32.012264',NULL,'Thank You for Posting your Property! Your Property is in under Review.',29,15),(31,'2020-03-15 12:11:03.028399',NULL,'Thank You for Posting your Property! Your Property is in under Review.',30,15),(32,'2020-03-15 12:23:53.156627',NULL,'Thank You for Posting your Property! Your Property is in under Review.',31,15),(33,'2020-03-15 12:26:24.336144',NULL,'Thank You for Posting your Property! Your Property is in under Review.',32,15),(34,'2020-03-15 12:31:22.789103',NULL,'Thank You for Posting your Property! Your Property is in under Review.',33,15),(35,'2020-03-18 03:06:17.023873',NULL,'Thank You for Posting your Property! Your Property is Approved',12,15),(37,'2020-03-18 03:06:53.257209',NULL,'Thank You for Posting your Property! Your Property is Approved',7,15),(38,'2020-03-18 03:07:30.590431',NULL,'Thank You for Posting your Property! Your Property is Approved',8,15),(39,'2020-03-18 03:07:36.411426',NULL,'Thank You for Posting your Property! Your Property is Approved',9,15),(40,'2020-03-18 03:07:41.866884',NULL,'Thank You for Posting your Property! Your Property is Approved',10,15),(41,'2020-03-18 10:16:38.425143',NULL,'Thank You for Posting your Property! Your Property is Approved',11,15),(42,'2020-03-18 10:16:47.914031',NULL,'Thank You for Posting your Property! Your Property is Pending',12,15),(43,'2020-03-18 10:16:58.953453',NULL,'Thank You for Posting your Property! Your Property is Approved',33,15),(44,'2020-03-18 10:17:09.409855',NULL,'Thank You for Posting your Property! Your Property is Approved',12,15),(45,'2020-03-18 10:17:21.588960',NULL,'Thank You for Posting your Property! Your Property is Approved',13,15),(46,'2020-03-18 10:17:31.494022',NULL,'Thank You for Posting your Property! Your Property is Approved',14,15),(47,'2020-03-18 10:17:47.312013',NULL,'Thank You for Posting your Property! Your Property is Approved',15,15),(48,'2020-03-18 10:17:56.860436',NULL,'Thank You for Posting your Property! Your Property is Approved',16,15),(49,'2020-03-18 10:18:06.165155',NULL,'Thank You for Posting your Property! Your Property is Approved',17,15),(50,'2020-03-18 10:18:15.598368',NULL,'Thank You for Posting your Property! Your Property is Approved',18,15),(51,'2020-03-18 10:18:25.612106',NULL,'Thank You for Posting your Property! Your Property is Approved',19,15),(52,'2020-03-18 10:18:36.375551',NULL,'Thank You for Posting your Property! Your Property is Approved',20,15),(53,'2020-03-18 10:18:50.887401',NULL,'Thank You for Posting your Property! Your Property is Approved',21,15),(54,'2020-03-18 10:18:59.523788',NULL,'Thank You for Posting your Property! Your Property is Approved',22,15),(55,'2020-03-18 10:19:10.650347',NULL,'Thank You for Posting your Property! Your Property is Approved',32,15),(56,'2020-03-18 10:19:15.850419',NULL,'Thank You for Posting your Property! Your Property is Approved',23,15),(57,'2020-03-18 10:19:32.286876',NULL,'Thank You for Posting your Property! Your Property is Approved',24,15),(58,'2020-03-18 10:19:41.592514',NULL,'Thank You for Posting your Property! Your Property is Approved',25,15),(59,'2020-03-18 10:19:47.075198',NULL,'Thank You for Posting your Property! Your Property is Approved',26,15),(60,'2020-03-18 10:19:52.131689',NULL,'Thank You for Posting your Property! Your Property is Approved',27,15),(61,'2020-03-18 10:19:57.770848',NULL,'Thank You for Posting your Property! Your Property is Approved',28,15),(62,'2020-03-18 10:20:02.951010',NULL,'Thank You for Posting your Property! Your Property is Approved',29,15),(63,'2020-03-18 10:20:09.335220',NULL,'Thank You for Posting your Property! Your Property is Approved',30,15),(64,'2020-03-18 10:20:15.544898',NULL,'Thank You for Posting your Property! Your Property is Approved',31,15),(65,'2020-03-18 10:26:15.638689',NULL,'Thank You for Posting your Property! Your Property is Pending',33,15),(66,'2020-03-19 03:49:44.102410',NULL,'Thank You for Posting your Property! Your Property is Approved',33,15),(67,'2020-03-21 08:28:18.212038',NULL,'Thank You for Posting your Property! Your Property is Approved',6,15),(68,'2020-03-21 08:32:29.771335',NULL,'Thank You for Posting your Property! Your Property is Approved',6,15),(69,'2020-03-21 08:51:58.174319',NULL,'Thank You for Posting your Property! Your Property is Approved',6,15),(70,'2020-03-21 08:59:49.146051',NULL,'Thank You for Posting your Property! Your Property is Approved',7,15),(71,'2020-03-21 09:00:52.745083',NULL,'Thank You for Posting your Property! Your Property is Approved',8,15),(72,'2020-03-21 09:07:20.557993',NULL,'Thank You for Posting your Property! Your Property is Approved',8,15),(73,'2020-03-21 09:07:21.911053',NULL,'Thank You for Posting your Property! Your Property is Approved',9,15),(74,'2020-03-21 09:08:38.986328',NULL,'Thank You for Posting your Property! Your Property is Approved',10,15),(75,'2020-03-21 09:10:16.467490',NULL,'Thank You for Posting your Property! Your Property is Approved',11,15),(76,'2020-03-21 09:11:11.695940',NULL,'Thank You for Posting your Property! Your Property is Approved',12,15),(77,'2020-03-21 09:11:50.683030',NULL,'Thank You for Posting your Property! Your Property is Approved',13,15),(78,'2020-03-21 09:12:28.577609',NULL,'Thank You for Posting your Property! Your Property is Approved',14,15),(79,'2020-03-21 09:13:09.529428',NULL,'Thank You for Posting your Property! Your Property is Approved',15,15),(80,'2020-03-21 09:13:51.486652',NULL,'Thank You for Posting your Property! Your Property is Approved',16,15),(81,'2020-03-21 09:14:35.731016',NULL,'Thank You for Posting your Property! Your Property is Approved',17,15),(82,'2020-03-21 09:15:26.943131',NULL,'Thank You for Posting your Property! Your Property is Approved',18,15),(83,'2020-03-21 09:16:07.610848',NULL,'Thank You for Posting your Property! Your Property is Approved',19,15),(84,'2020-03-21 09:16:44.618886',NULL,'Thank You for Posting your Property! Your Property is Approved',20,15),(85,'2020-03-21 09:17:30.928790',NULL,'Thank You for Posting your Property! Your Property is Approved',21,15),(86,'2020-03-21 09:18:14.113070',NULL,'Thank You for Posting your Property! Your Property is Approved',22,15),(87,'2020-03-21 09:18:52.495493',NULL,'Thank You for Posting your Property! Your Property is Approved',23,15),(88,'2020-03-21 09:19:25.055033',NULL,'Thank You for Posting your Property! Your Property is Approved',24,15),(89,'2020-03-21 09:20:01.465408',NULL,'Thank You for Posting your Property! Your Property is Approved',25,15),(90,'2020-03-21 09:20:38.945867',NULL,'Thank You for Posting your Property! Your Property is Approved',26,15),(91,'2020-03-21 09:21:19.881316',NULL,'Thank You for Posting your Property! Your Property is Approved',27,15),(92,'2020-03-21 09:24:18.208545',NULL,'Thank You for Posting your Property! Your Property is Approved',28,15),(93,'2020-03-21 09:25:39.679499',NULL,'Thank You for Posting your Property! Your Property is Approved',29,15),(94,'2020-03-21 09:31:22.725492',NULL,'Thank You for Posting your Property! Your Property is Approved',30,15),(95,'2020-03-21 09:35:21.443644',NULL,'Thank You for Posting your Property! Your Property is Approved',31,15),(96,'2020-03-21 09:36:45.194838',NULL,'Thank You for Posting your Property! Your Property is Approved',32,15),(97,'2020-03-21 09:36:46.155432',NULL,'Thank You for Posting your Property! Your Property is Approved',33,15),(98,'2020-03-21 13:32:56.298564',NULL,'Thank You for Posting your Property! Your Property is Approved',31,15),(99,'2020-03-21 13:33:13.357055',NULL,'Thank You for Posting your Property! Your Property is Approved',30,15),(100,'2020-03-21 13:33:34.814173',NULL,'Thank You for Posting your Property! Your Property is Approved',32,15),(101,'2020-03-21 13:33:36.000981',NULL,'Thank You for Posting your Property! Your Property is Approved',33,15),(102,'2020-03-21 14:30:28.290214',NULL,'Thank You for Posting your Property! Your Property is in under Review.',34,15),(103,'2020-03-21 14:35:07.458969',NULL,'Thank You for Posting your Property! Your Property is in under Review.',35,15),(104,'2020-03-21 14:40:30.772171',NULL,'Thank You for Posting your Property! Your Property is in under Review.',36,15),(105,'2020-03-21 15:26:29.186752',NULL,'Thank You for Posting your Property! Your Property is in under Review.',37,15),(106,'2020-03-21 15:33:50.553578',NULL,'Thank You for Posting your Property! Your Property is in under Review.',38,15),(107,'2020-03-21 15:47:09.284751',NULL,'Thank You for Posting your Property! Your Property is in under Review.',39,15),(108,'2020-03-21 16:27:05.770659',NULL,'Thank You for Posting your Property! Your Property is Approved',39,15),(109,'2020-03-21 16:27:06.628692',NULL,'Thank You for Posting your Property! Your Property is Approved',38,15),(110,'2020-03-21 16:27:07.769908',NULL,'Thank You for Posting your Property! Your Property is Approved',37,15),(111,'2020-03-21 16:27:09.321171',NULL,'Thank You for Posting your Property! Your Property is Approved',36,15),(112,'2020-03-21 16:27:10.862668',NULL,'Thank You for Posting your Property! Your Property is Approved',35,15),(113,'2020-03-21 16:27:13.739676',NULL,'Thank You for Posting your Property! Your Property is Approved',34,15),(114,'2020-03-21 19:46:16.317182',NULL,'Thank You for Posting your Property! Your Property is Approved',6,15),(115,'2020-03-21 19:46:17.507987',NULL,'Thank You for Posting your Property! Your Property is Approved',7,15),(116,'2020-03-21 19:46:18.764497',NULL,'Thank You for Posting your Property! Your Property is Approved',8,15),(117,'2020-03-21 19:46:20.276421',NULL,'Thank You for Posting your Property! Your Property is Approved',9,15),(118,'2020-03-21 19:46:22.334925',NULL,'Thank You for Posting your Property! Your Property is Approved',10,15),(119,'2020-03-21 19:46:23.960816',NULL,'Thank You for Posting your Property! Your Property is Approved',11,15),(120,'2020-03-21 19:46:26.684017',NULL,'Thank You for Posting your Property! Your Property is Approved',21,15),(121,'2020-03-21 19:46:30.497233',NULL,'Thank You for Posting your Property! Your Property is Approved',19,15),(122,'2020-03-21 19:46:32.457806',NULL,'Thank You for Posting your Property! Your Property is Approved',18,15),(123,'2020-03-21 19:46:34.852641',NULL,'Thank You for Posting your Property! Your Property is Approved',17,15),(124,'2020-03-21 19:46:36.682192',NULL,'Thank You for Posting your Property! Your Property is Approved',16,15),(125,'2020-03-21 19:46:39.096283',NULL,'Thank You for Posting your Property! Your Property is Approved',15,15),(126,'2020-03-21 19:46:40.450710',NULL,'Thank You for Posting your Property! Your Property is Approved',14,15),(127,'2020-03-21 19:46:42.016611',NULL,'Thank You for Posting your Property! Your Property is Approved',13,15),(128,'2020-03-21 19:46:43.774472',NULL,'Thank You for Posting your Property! Your Property is Approved',12,15),(129,'2020-03-21 19:46:52.084895',NULL,'Thank You for Posting your Property! Your Property is Approved',31,15),(130,'2020-03-21 19:46:53.429611',NULL,'Thank You for Posting your Property! Your Property is Approved',30,15),(131,'2020-03-21 19:46:55.204724',NULL,'Thank You for Posting your Property! Your Property is Approved',29,15),(132,'2020-03-21 19:46:56.395761',NULL,'Thank You for Posting your Property! Your Property is Approved',28,15),(133,'2020-03-21 19:46:58.809127',NULL,'Thank You for Posting your Property! Your Property is Approved',27,15),(134,'2020-03-21 19:47:00.194815',NULL,'Thank You for Posting your Property! Your Property is Approved',26,15),(135,'2020-03-21 19:47:01.351872',NULL,'Thank You for Posting your Property! Your Property is Approved',25,15),(136,'2020-03-21 19:47:02.901917',NULL,'Thank You for Posting your Property! Your Property is Approved',24,15),(137,'2020-03-21 19:47:04.285941',NULL,'Thank You for Posting your Property! Your Property is Approved',23,15),(138,'2020-03-21 19:47:05.700426',NULL,'Thank You for Posting your Property! Your Property is Approved',22,15),(139,'2020-03-21 19:47:08.724803',NULL,'Thank You for Posting your Property! Your Property is Approved',39,15),(140,'2020-03-21 19:47:10.239730',NULL,'Thank You for Posting your Property! Your Property is Approved',38,15),(141,'2020-03-21 19:47:12.180352',NULL,'Thank You for Posting your Property! Your Property is Approved',37,15),(142,'2020-03-21 19:47:14.106211',NULL,'Thank You for Posting your Property! Your Property is Approved',36,15),(143,'2020-03-21 19:47:16.188028',NULL,'Thank You for Posting your Property! Your Property is Approved',35,15),(144,'2020-03-21 19:47:17.685483',NULL,'Thank You for Posting your Property! Your Property is Approved',34,15),(145,'2020-03-21 19:47:20.722267',NULL,'Thank You for Posting your Property! Your Property is Approved',33,15),(146,'2020-03-21 19:47:22.160642',NULL,'Thank You for Posting your Property! Your Property is Approved',32,15),(147,'2020-03-21 19:56:43.007717',NULL,'Thank You for Posting your Property! Your Property is Approved',2,14),(148,'2020-03-21 19:56:46.305646',NULL,'Thank You for Posting your Property! Your Property is Approved',4,14),(150,'2020-03-21 20:04:38.633678',NULL,'Thank You for Posting your Property! Your Property is Approved',2,14),(151,'2020-03-21 20:04:40.574312',NULL,'Thank You for Posting your Property! Your Property is Approved',4,14),(152,'2020-03-21 20:04:42.493378',NULL,'Thank You for Posting your Property! Your Property is Approved',6,15),(153,'2020-03-21 20:04:44.310439',NULL,'Thank You for Posting your Property! Your Property is Approved',7,15),(154,'2020-03-21 20:04:46.939053',NULL,'Thank You for Posting your Property! Your Property is Approved',8,15),(155,'2020-03-21 20:04:48.646663',NULL,'Thank You for Posting your Property! Your Property is Approved',9,15),(156,'2020-03-21 20:04:50.358633',NULL,'Thank You for Posting your Property! Your Property is Approved',10,15),(157,'2020-03-21 20:04:52.183182',NULL,'Thank You for Posting your Property! Your Property is Approved',11,15),(158,'2020-03-21 20:04:55.023470',NULL,'Thank You for Posting your Property! Your Property is Approved',21,15),(159,'2020-03-21 20:04:56.301935',NULL,'Thank You for Posting your Property! Your Property is Approved',20,15),(160,'2020-03-21 20:04:57.913796',NULL,'Thank You for Posting your Property! Your Property is Approved',19,15),(161,'2020-03-21 20:04:59.940626',NULL,'Thank You for Posting your Property! Your Property is Approved',18,15),(162,'2020-03-21 20:05:01.500468',NULL,'Thank You for Posting your Property! Your Property is Approved',17,15),(163,'2020-03-21 20:05:03.857202',NULL,'Thank You for Posting your Property! Your Property is Approved',16,15),(164,'2020-03-21 20:05:05.267925',NULL,'Thank You for Posting your Property! Your Property is Approved',15,15),(165,'2020-03-21 20:05:06.792911',NULL,'Thank You for Posting your Property! Your Property is Approved',14,15),(166,'2020-03-21 20:05:08.421229',NULL,'Thank You for Posting your Property! Your Property is Approved',13,15),(167,'2020-03-21 20:05:10.459958',NULL,'Thank You for Posting your Property! Your Property is Approved',12,15),(168,'2020-03-21 20:09:24.537122',NULL,'Thank You for Posting your Property! Your Property is Approved',31,15),(169,'2020-03-21 20:09:26.406568',NULL,'Thank You for Posting your Property! Your Property is Approved',30,15),(170,'2020-03-21 20:09:27.925281',NULL,'Thank You for Posting your Property! Your Property is Approved',29,15),(171,'2020-03-21 20:09:29.170987',NULL,'Thank You for Posting your Property! Your Property is Approved',28,15),(172,'2020-03-21 20:09:30.733004',NULL,'Thank You for Posting your Property! Your Property is Approved',27,15),(173,'2020-03-21 20:09:31.957611',NULL,'Thank You for Posting your Property! Your Property is Approved',26,15),(174,'2020-03-21 20:09:33.662089',NULL,'Thank You for Posting your Property! Your Property is Approved',25,15),(175,'2020-03-21 20:09:34.728915',NULL,'Thank You for Posting your Property! Your Property is Approved',24,15),(176,'2020-03-21 20:09:36.350615',NULL,'Thank You for Posting your Property! Your Property is Approved',23,15),(177,'2020-03-21 20:09:38.351019',NULL,'Thank You for Posting your Property! Your Property is Approved',22,15),(178,'2020-03-21 20:11:43.449035',NULL,'Thank You for Posting your Property! Your Property is Approved',32,15),(179,'2020-03-21 20:11:45.127112',NULL,'Thank You for Posting your Property! Your Property is Approved',33,15),(180,'2020-03-21 20:11:46.497318',NULL,'Thank You for Posting your Property! Your Property is Approved',34,15),(181,'2020-03-21 20:11:48.390455',NULL,'Thank You for Posting your Property! Your Property is Approved',35,15),(182,'2020-03-21 20:11:50.965606',NULL,'Thank You for Posting your Property! Your Property is Approved',36,15),(183,'2020-03-21 20:11:53.329172',NULL,'Thank You for Posting your Property! Your Property is Approved',37,15),(184,'2020-03-21 20:12:13.896293',NULL,'Thank You for Posting your Property! Your Property is Approved',38,15),(185,'2020-03-21 20:12:14.966255',NULL,'Thank You for Posting your Property! Your Property is Approved',39,15),(186,'2020-03-22 17:52:46.260728',NULL,'Thank You for Posting your Property! Your Property is Approved',11,15),(187,'2020-03-22 17:52:47.688373',NULL,'Thank You for Posting your Property! Your Property is Approved',10,15),(188,'2020-03-22 17:52:49.574032',NULL,'Thank You for Posting your Property! Your Property is Approved',9,15),(189,'2020-03-22 17:52:50.814649',NULL,'Thank You for Posting your Property! Your Property is Approved',8,15),(190,'2020-03-22 17:52:52.210374',NULL,'Thank You for Posting your Property! Your Property is Approved',7,15),(191,'2020-03-22 17:52:54.025448',NULL,'Thank You for Posting your Property! Your Property is Approved',6,15),(192,'2020-03-22 18:50:56.745169',NULL,'Thank You for Posting your Property! Your Property is Approved',32,15),(193,'2020-03-22 18:50:58.161346',NULL,'Thank You for Posting your Property! Your Property is Approved',33,15),(194,'2020-03-22 18:51:00.403056',NULL,'Thank You for Posting your Property! Your Property is Approved',34,15),(195,'2020-03-22 18:51:03.070359',NULL,'Thank You for Posting your Property! Your Property is Approved',35,15),(196,'2020-03-22 18:51:04.012604',NULL,'Thank You for Posting your Property! Your Property is Approved',36,15),(197,'2020-03-22 18:51:05.836108',NULL,'Thank You for Posting your Property! Your Property is Approved',37,15),(198,'2020-03-22 18:51:07.293798',NULL,'Thank You for Posting your Property! Your Property is Approved',38,15),(199,'2020-03-22 18:51:09.342869',NULL,'Thank You for Posting your Property! Your Property is Approved',39,15),(200,'2020-03-22 19:09:13.123984',NULL,'Thank You for Posting your Property! Your Property is Approved',21,15),(201,'2020-03-22 19:09:14.262243',NULL,'Thank You for Posting your Property! Your Property is Approved',20,15),(202,'2020-03-22 19:09:15.576675',NULL,'Thank You for Posting your Property! Your Property is Approved',19,15),(203,'2020-03-22 19:09:16.898029',NULL,'Thank You for Posting your Property! Your Property is Approved',18,15),(204,'2020-03-22 19:09:19.472219',NULL,'Thank You for Posting your Property! Your Property is Approved',17,15),(205,'2020-03-22 19:09:20.606184',NULL,'Thank You for Posting your Property! Your Property is Approved',16,15),(206,'2020-03-22 19:09:21.932372',NULL,'Thank You for Posting your Property! Your Property is Approved',15,15),(207,'2020-03-22 19:09:23.418429',NULL,'Thank You for Posting your Property! Your Property is Approved',14,15),(208,'2020-03-22 19:09:26.323508',NULL,'Thank You for Posting your Property! Your Property is Approved',13,15),(209,'2020-03-22 19:09:27.972603',NULL,'Thank You for Posting your Property! Your Property is Approved',12,15),(210,'2020-03-22 19:09:30.972088',NULL,'Thank You for Posting your Property! Your Property is Approved',31,15),(211,'2020-03-22 19:09:32.183163',NULL,'Thank You for Posting your Property! Your Property is Approved',30,15),(212,'2020-03-22 19:09:36.228730',NULL,'Thank You for Posting your Property! Your Property is Approved',29,15),(213,'2020-03-22 19:09:37.733884',NULL,'Thank You for Posting your Property! Your Property is Approved',28,15),(214,'2020-03-22 19:09:39.554155',NULL,'Thank You for Posting your Property! Your Property is Approved',27,15),(215,'2020-03-22 19:09:41.042831',NULL,'Thank You for Posting your Property! Your Property is Approved',26,15),(216,'2020-03-22 19:09:42.980654',NULL,'Thank You for Posting your Property! Your Property is Approved',25,15),(217,'2020-03-22 19:09:44.065637',NULL,'Thank You for Posting your Property! Your Property is Approved',24,15),(218,'2020-03-22 19:09:46.006789',NULL,'Thank You for Posting your Property! Your Property is Approved',23,15),(219,'2020-03-22 19:09:47.434543',NULL,'Thank You for Posting your Property! Your Property is Approved',22,15),(220,'2020-03-22 20:18:43.823291',NULL,'Thank You for Posting your Property! Your Property is in under Review.',40,15),(221,'2020-03-22 20:24:54.558082',NULL,'Thank You for Posting your Property! Your Property is Approved',40,15),(222,'2020-03-22 20:27:00.809675',NULL,'Thank You for Posting your Property! Your Property is Approved',40,15),(223,'2020-03-22 20:32:53.377848',NULL,'Thank You for Posting your Property! Your Property is in under Review.',41,15),(224,'2020-03-22 20:39:12.104737',NULL,'Thank You for Posting your Property! Your Property is in under Review.',42,15),(225,'2020-03-22 20:45:50.107455',NULL,'Thank You for Posting your Property! Your Property is in under Review.',43,15),(226,'2020-03-22 20:50:40.304550',NULL,'Thank You for Posting your Property! Your Property is in under Review.',44,15),(227,'2020-03-22 20:58:58.590543',NULL,'Thank You for Posting your Property! Your Property is in under Review.',45,15),(228,'2020-03-22 21:05:46.577526',NULL,'Thank You for Posting your Property! Your Property is in under Review.',46,15),(229,'2020-03-22 21:12:52.497416',NULL,'Thank You for Posting your Property! Your Property is in under Review.',47,15),(230,'2020-03-22 21:18:37.029302',NULL,'Thank You for Posting your Property! Your Property is in under Review.',48,15),(231,'2020-03-22 21:24:32.249703',NULL,'Thank You for Posting your Property! Your Property is in under Review.',49,15),(232,'2020-03-22 21:33:50.453602',NULL,'Thank You for Posting your Property! Your Property is in under Review.',50,15),(233,'2020-03-22 21:35:00.813244',NULL,'Thank You for Posting your Property! Your Property is Approved',50,15),(234,'2020-03-22 21:35:01.804201',NULL,'Thank You for Posting your Property! Your Property is Approved',49,15),(235,'2020-03-22 21:35:03.095846',NULL,'Thank You for Posting your Property! Your Property is Approved',48,15),(236,'2020-03-22 21:35:04.869989',NULL,'Thank You for Posting your Property! Your Property is Approved',47,15),(237,'2020-03-22 21:35:05.997405',NULL,'Thank You for Posting your Property! Your Property is Approved',46,15),(238,'2020-03-22 21:35:08.325123',NULL,'Thank You for Posting your Property! Your Property is Approved',45,15),(239,'2020-03-22 21:35:10.480563',NULL,'Thank You for Posting your Property! Your Property is Approved',44,15),(240,'2020-03-22 21:35:12.184470',NULL,'Thank You for Posting your Property! Your Property is Approved',43,15),(241,'2020-03-22 21:35:13.535940',NULL,'Thank You for Posting your Property! Your Property is Approved',42,15),(242,'2020-03-22 21:35:21.642066',NULL,'Thank You for Posting your Property! Your Property is Approved',41,15),(243,'2020-04-08 22:03:25.387157',NULL,'Thank You for Posting your Property! Your Property is in under Review.',51,24),(249,'2020-04-16 19:34:12.900030',NULL,'Your Property is Sold Out',6,15),(255,'2020-04-18 11:46:20.303002',NULL,'Thank You for Posting your Property! Your Property is in under Review.',52,32),(256,'2020-04-18 11:55:47.962844',NULL,'Your Property is Approved',52,32),(260,'2020-04-20 08:24:15.793426',NULL,'Your Property is Approved',52,32),(262,'2020-04-23 16:30:52.840266',NULL,'Your Property is Pending',52,32),(263,'2020-04-23 16:31:03.242518',NULL,'Your Property is Approved',52,32),(265,'2020-04-29 06:41:38.475210',NULL,'Thank You for Posting your Property! Your Property is in under Review.',54,32),(266,'2020-04-29 06:43:12.659179',NULL,'Your Property is Approved',54,32),(267,'2020-04-29 06:43:24.527127',NULL,'Your Property is Approved',51,24),(268,'2020-04-29 06:43:32.546921',NULL,'Your Property is Approved',50,15),(269,'2020-04-29 06:56:53.934462',NULL,'Thank You for Posting your Property! Your Property is in under Review.',55,32),(270,'2020-04-29 07:00:35.155833',NULL,'Thank You for Posting your Property! Your Property is in under Review.',56,32),(271,'2020-04-29 07:04:53.746036',NULL,'Your Property is Approved',56,32),(272,'2020-04-29 07:04:57.967358',NULL,'Your Property is Approved',55,32),(273,'2020-04-29 07:16:46.987975',NULL,'Thank You for Posting your Property! Your Property is in under Review.',57,32),(274,'2020-04-29 07:19:49.898679',NULL,'Thank You for Posting your Property! Your Property is in under Review.',58,32),(275,'2020-04-29 07:23:48.492556',NULL,'Thank You for Posting your Property! Your Property is in under Review.',59,32),(276,'2020-04-29 07:28:29.408925',NULL,'Thank You for Posting your Property! Your Property is in under Review.',60,32),(277,'2020-04-29 07:39:22.017997',NULL,'Your Property is Approved',57,32),(278,'2020-04-29 07:39:26.667505',NULL,'Your Property is Approved',58,32),(279,'2020-04-29 07:39:31.319316',NULL,'Your Property is Approved',59,32),(280,'2020-04-29 07:39:35.983865',NULL,'Your Property is Approved',60,32),(281,'2020-04-29 07:57:06.908567',NULL,'Thank You for Posting your Property! Your Property is in under Review.',61,32),(282,'2020-04-29 07:58:16.904968',NULL,'Your Property is Approved',61,32),(283,'2020-04-29 08:22:10.200807',NULL,'Thank You for Posting your Property! Your Property is in under Review.',62,32),(284,'2020-04-30 09:17:08.819708',NULL,'Thank You for Posting your Property! Your Property is in under Review.',63,32),(285,'2020-04-30 09:53:02.195672',NULL,'Your Property is Approved',63,32),(286,'2020-04-30 09:53:12.407932',NULL,'Your Property is Approved',62,32),(294,'2020-05-02 16:21:55.659152',NULL,'Your Property is Approved',63,32),(295,'2020-05-14 06:54:11.625622',NULL,'Thank You for Posting your Property! Your Property is in under Review.',66,32),(296,'2020-05-14 06:55:44.726670',NULL,'Your Property is Approved',66,32),(297,'2020-05-14 06:57:42.109820',NULL,'Your Property is Approved',66,32),(298,'2020-05-14 07:13:11.649990',NULL,'Thank You for Posting your Property! Your Property is in under Review.',67,32),(299,'2020-05-14 07:13:46.706014',NULL,'Thank You for Posting your Property! Your Property is in under Review.',68,32),(300,'2020-05-14 07:14:39.493952',NULL,'Thank You for Posting your Property! Your Property is in under Review.',69,32),(301,'2020-05-14 07:17:10.864357',NULL,'Thank You for Posting your Property! Your Property is in under Review.',70,32),(302,'2020-05-14 07:24:37.775808',NULL,'Thank You for Posting your Property! Your Property is in under Review.',71,32),(304,'2020-05-14 08:45:31.549672',NULL,'Thank You for Posting your Property! Your Property is in under Review.',73,32),(305,'2020-05-14 08:54:42.898551',NULL,'Your Property is Approved',73,32),(307,'2020-05-14 09:22:56.349791',NULL,'Your Property is Approved',67,32),(308,'2020-05-14 09:22:59.234852',NULL,'Your Property is Approved',68,32),(309,'2020-05-14 09:23:04.369897',NULL,'Your Property is Approved',69,32),(310,'2020-05-14 09:23:07.172168',NULL,'Your Property is Approved',70,32),(311,'2020-05-14 09:23:09.722409',NULL,'Your Property is Approved',71,32),(313,'2020-05-15 09:26:09.568754',NULL,'Thank You for Posting your Property! Your Property is in under Review.',75,32),(314,'2020-05-15 09:28:14.065650',NULL,'Thank You for Posting your Property! Your Property is in under Review.',76,32),(315,'2020-05-15 09:29:20.776767',NULL,'Thank You for Posting your Property! Your Property is in under Review.',77,32),(316,'2020-05-15 09:29:56.313536',NULL,'Thank You for Posting your Property! Your Property is in under Review.',78,32),(317,'2020-05-16 11:05:12.511831',NULL,'Thank You for Posting your Property! Your Property is in under Review.',79,32),(318,'2020-05-16 11:42:10.080149',NULL,'Thank You for Posting your Property! Your Property is in under Review.',80,32),(319,'2020-05-18 04:27:04.162718',NULL,'Thank You for Posting your Property! Your Property is in under Review.',81,32),(320,'2020-05-30 14:55:55.756439',NULL,'Thank You for Posting your Property! Your Property is in under Review.',82,32),(321,'2020-05-30 14:57:33.943429',NULL,'Your Property is Approved',82,32),(322,'2020-05-30 14:57:39.023149',NULL,'Your Property is Approved',81,32),(323,'2020-05-30 14:57:43.655219',NULL,'Your Property is Approved',80,32),(324,'2020-05-30 14:57:50.181258',NULL,'Your Property is Approved',79,32),(325,'2020-05-30 14:57:55.968338',NULL,'Your Property is Approved',78,32),(326,'2020-05-30 14:58:01.704519',NULL,'Your Property is Approved',77,32),(327,'2020-05-30 14:58:09.380838',NULL,'Your Property is Approved',76,32),(328,'2020-05-30 14:58:14.261212',NULL,'Your Property is Approved',75,32),(329,'2020-05-30 15:09:58.141939',NULL,'Thank You for Posting your Property! Your Property is in under Review.',83,32),(330,'2020-05-30 15:14:59.895439',NULL,'Thank You for Posting your Property! Your Property is in under Review.',84,32),(331,'2020-05-30 16:25:24.924829',NULL,'Thank You for Posting your Property! Your Property is in under Review.',85,32),(332,'2020-05-31 04:13:20.495592',NULL,'Your Property is Approved',83,32),(333,'2020-05-31 04:13:24.530439',NULL,'Your Property is Approved',84,32),(334,'2020-05-31 04:13:28.434428',NULL,'Your Property is Approved',85,32),(335,'2020-05-31 04:47:23.367773',NULL,'Thank You for Posting your Property! Your Property is in under Review.',86,32),(336,'2020-05-31 04:48:12.797530',NULL,'Your Property is Approved',86,32),(337,'2020-05-31 05:20:06.423747',NULL,'Thank You for Posting your Property! Your Property is in under Review.',87,32),(338,'2020-05-31 05:22:38.785874',NULL,'Your Property is Approved',87,32),(339,'2020-06-02 04:50:31.714074',NULL,'Thank You for Posting your Property! Your Property is in under Review.',88,32),(340,'2020-06-02 04:51:19.737178',NULL,'Your Property is Approved',88,32),(341,'2020-06-02 06:11:14.989554',NULL,'Your Property is Approved',88,32),(342,'2020-06-11 06:36:25.766632',NULL,'Thank You for Posting your Property! Your Property is in under Review.',89,32),(343,'2020-06-11 06:37:04.614809',NULL,'Your Property is Approved',89,32),(344,'2020-06-11 08:22:05.011065',NULL,'Thank You for Posting your Property! Your Property is in under Review.',90,41),(345,'2020-06-11 08:40:49.825197',NULL,'Thank You for Posting your Property! Your Property is in under Review.',91,41),(346,'2020-06-11 08:45:31.856854',NULL,'Thank You for Posting your Property! Your Property is in under Review.',92,41),(347,'2020-06-11 08:49:44.634184',NULL,'Thank You for Posting your Property! Your Property is in under Review.',93,41),(348,'2020-06-11 08:53:36.734930',NULL,'Thank You for Posting your Property! Your Property is in under Review.',94,41),(349,'2020-06-13 06:47:48.798949',NULL,'Your Property is Approved',90,41),(350,'2020-06-13 06:47:52.679508',NULL,'Your Property is Approved',91,41),(351,'2020-06-13 06:47:56.175427',NULL,'Your Property is Approved',92,41),(352,'2020-06-13 06:48:01.691788',NULL,'Your Property is Approved',93,41),(353,'2020-06-13 06:48:05.323417',NULL,'Your Property is Approved',94,41),(354,'2020-06-13 07:12:49.855438',NULL,'Your Property is Approved',94,41),(355,'2020-06-13 07:21:37.392261',NULL,'Your Property is Approved',94,41),(356,'2020-06-13 07:21:44.315418',NULL,'Your Property is Approved',93,41),(357,'2020-06-13 07:21:47.955498',NULL,'Your Property is Approved',92,41),(358,'2020-06-13 07:21:51.635346',NULL,'Your Property is Approved',91,41),(359,'2020-06-13 07:21:55.779397',NULL,'Your Property is Approved',90,41),(360,'2020-06-14 15:28:23.896084',NULL,'Thank You for Posting your Property! Your Property is in under Review.',95,41),(361,'2020-06-21 11:07:59.065463',NULL,'Thank You for Posting your Property! Your Property is in under Review.',96,41),(362,'2020-07-16 05:49:55.879091',NULL,'Your Property is Approved',95,41),(363,'2020-07-16 05:49:59.543811',NULL,'Your Property is Approved',96,41),(364,'2020-07-16 05:52:56.523802',NULL,'Your Property is Pending',96,41);
/*!40000 ALTER TABLE `Notification_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PropertySettings_category`
--

DROP TABLE IF EXISTS `PropertySettings_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PropertySettings_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(200) NOT NULL,
  `icon` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PropertySettings_category`
--

LOCK TABLES `PropertySettings_category` WRITE;
/*!40000 ALTER TABLE `PropertySettings_category` DISABLE KEYS */;
INSERT INTO `PropertySettings_category` VALUES (1,'DUPLAX HOUSE','assets/uploads/category/2213ef56910629da86b3918f98c86220.png'),(2,'HALF DUPLEX','assets/uploads/category/bd630d692b55a65f54b1af6e51510711.jpeg'),(3,'OFFICE','assets/uploads/category/bene-office-furniture-II-1024x678.jpg'),(4,'APARTMENT','assets/uploads/category/Standard-Apartments-018.jpg'),(5,'COMMERCIAL','assets/uploads/category/images.jpg'),(6,'LAND','assets/uploads/category/25-1429952703-land-home.jpg');
/*!40000 ALTER TABLE `PropertySettings_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PropertySettings_facilities`
--

DROP TABLE IF EXISTS `PropertySettings_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PropertySettings_facilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facilitie_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PropertySettings_facilities`
--

LOCK TABLES `PropertySettings_facilities` WRITE;
/*!40000 ALTER TABLE `PropertySettings_facilities` DISABLE KEYS */;
INSERT INTO `PropertySettings_facilities` VALUES (1,'Balcony/ Terrace'),(2,'Car Parking'),(3,'Security'),(4,'CC-Camera'),(5,'Garden'),(6,'Swimming Pool'),(7,'Furnished');
/*!40000 ALTER TABLE `PropertySettings_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PropertySettings_facing`
--

DROP TABLE IF EXISTS `PropertySettings_facing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PropertySettings_facing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facing_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PropertySettings_facing`
--

LOCK TABLES `PropertySettings_facing` WRITE;
/*!40000 ALTER TABLE `PropertySettings_facing` DISABLE KEYS */;
INSERT INTO `PropertySettings_facing` VALUES (1,'North'),(2,'South'),(3,'East'),(4,'West'),(6,'South West Corner'),(7,'South East Corner'),(8,'North East Corner'),(9,'North West Corner');
/*!40000 ALTER TABLE `PropertySettings_facing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PropertySettings_propertytag`
--

DROP TABLE IF EXISTS `PropertySettings_propertytag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PropertySettings_propertytag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(100) NOT NULL,
  `property_tag_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `PropertySettings_pro_property_tag_type_id_1b4eadb6_fk_PropertyS` (`property_tag_type_id`),
  CONSTRAINT `PropertySettings_pro_property_tag_type_id_1b4eadb6_fk_PropertyS` FOREIGN KEY (`property_tag_type_id`) REFERENCES `PropertySettings_propertytagstype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PropertySettings_propertytag`
--

LOCK TABLES `PropertySettings_propertytag` WRITE;
/*!40000 ALTER TABLE `PropertySettings_propertytag` DISABLE KEYS */;
INSERT INTO `PropertySettings_propertytag` VALUES (1,'Office',2),(2,'Floor',2),(3,'Duplex',2),(4,'Building',2),(5,'Warehouse',2),(6,'Shop',2),(7,'Apartment',2),(8,'Plaza',2),(9,'Plot',2),(10,'Factory',2),(11,'Apartment',3),(12,'Room',3),(13,'Pent-House',3),(14,'Plaza',3),(15,'Plot',3),(16,'Duplex',3),(17,'Building',3),(18,'Commercial',6),(19,'Residencial',6);
/*!40000 ALTER TABLE `PropertySettings_propertytag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PropertySettings_propertytagstype`
--

DROP TABLE IF EXISTS `PropertySettings_propertytagstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PropertySettings_propertytagstype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PropertySettings_propertytagstype`
--

LOCK TABLES `PropertySettings_propertytagstype` WRITE;
/*!40000 ALTER TABLE `PropertySettings_propertytagstype` DISABLE KEYS */;
INSERT INTO `PropertySettings_propertytagstype` VALUES (2,'Commercial','assets/uploads/propertyTag/bene-office-furniture-II-1024x678.jpg'),(3,'Residential','assets/uploads/propertyTag/Standard-Apartments-018.jpg'),(6,'Land','assets/uploads/propertyTag/25-1429952703-land-home.jpg');
/*!40000 ALTER TABLE `PropertySettings_propertytagstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PropertySettings_specification`
--

DROP TABLE IF EXISTS `PropertySettings_specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PropertySettings_specification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specification_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PropertySettings_specification`
--

LOCK TABLES `PropertySettings_specification` WRITE;
/*!40000 ALTER TABLE `PropertySettings_specification` DISABLE KEYS */;
/*!40000 ALTER TABLE `PropertySettings_specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PropertySettings_unit`
--

DROP TABLE IF EXISTS `PropertySettings_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PropertySettings_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PropertySettings_unit`
--

LOCK TABLES `PropertySettings_unit` WRITE;
/*!40000 ALTER TABLE `PropertySettings_unit` DISABLE KEYS */;
INSERT INTO `PropertySettings_unit` VALUES (1,'SQ. FT.'),(2,'KATHA'),(3,'BIGHA');
/*!40000 ALTER TABLE `PropertySettings_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subscriber_subscriber`
--

DROP TABLE IF EXISTS `Subscriber_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subscriber_subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscriber_subscriber`
--

LOCK TABLES `Subscriber_subscriber` WRITE;
/*!40000 ALTER TABLE `Subscriber_subscriber` DISABLE KEYS */;
INSERT INTO `Subscriber_subscriber` VALUES (1,'rajovirul@gmail.com','10.0.0.121'),(4,'meshkat_cse@yahoo.com','10.0.0.121'),(5,'Faisal.sarker@gmail.com','10.0.0.121'),(7,'prince03.nic@gmail.com','10.0.0.121'),(9,'ifty@whitepaper.tech','10.0.0.121'),(10,'faisal@whitepaper.tech','10.0.0.121'),(11,'','10.0.0.121');
/*!40000 ALTER TABLE `Subscriber_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserInfo_userinfo`
--

DROP TABLE IF EXISTS `UserInfo_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserInfo_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(15) NOT NULL,
  `address` longtext,
  `city` varchar(200) NOT NULL,
  `post_code` varchar(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `refference_by` varchar(20) DEFAULT NULL,
  `agent_code` varchar(100) NOT NULL,
  `reg_user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `UserInfo_userinfo_reg_user_id_3248a6a0_fk_auth_user_id` (`reg_user_id`),
  KEY `UserInfo_userinfo_role_id_eaa56539_fk_master_role_id` (`role_id`),
  CONSTRAINT `UserInfo_userinfo_reg_user_id_3248a6a0_fk_auth_user_id` FOREIGN KEY (`reg_user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `UserInfo_userinfo_role_id_eaa56539_fk_master_role_id` FOREIGN KEY (`role_id`) REFERENCES `master_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserInfo_userinfo`
--

LOCK TABLES `UserInfo_userinfo` WRITE;
/*!40000 ALTER TABLE `UserInfo_userinfo` DISABLE KEYS */;
INSERT INTO `UserInfo_userinfo` VALUES (2,'01685871382','97-Noyatola Dhaka Bangladesh','Dhaka','1127','Bangladesh','assets/uploads/user/18.jpg',NULL,'1234',1,1),(5,'01847330009','Badda','Dhaka','1214','Bangladesh','','0','F46CCA',15,1),(10,'+8801713077130','Bashundhara','Dhaka','1229','Bangladesh','','0','4FBD09',24,1),(11,'01737864568','adddress','dhaka','1212','Bangladesh','','0','7BA806',26,1),(12,'01685871382','Mogbazar Dhaka Bangladesh','Dhaka','1227','Bangladesh','assets/uploads/user/1.jpg','0','BD0918',29,1),(13,'8801730490804','Bashundhara, Dhaka Bangladesh','Dhaka','1229','Bangladesh','assets/uploads/user/70443237_425986944684803_534095285089992704_o.jpg','0','15ACAD',30,4),(14,'01682390412','Badda','dhaka','1214','Bangladesh','assets/uploads/user/1_mJ0N3bc.jpg','F46CCA','355959',31,4),(15,'01686010170','Bashundhara','Dhaka','1229','Bangladesh','assets/uploads/user/WhatsApp_Image_2020-04-18_at_3.11.29_PM.jpeg','F46CCA','318666',32,4),(16,'01682390412','Bashundhora','Dhaka','1229','Bangladesh','assets/uploads/user/101.png','F46CCA','2D3B8D',37,4),(17,'1423252453643','','',NULL,NULL,'','Null','1233355',14,1),(18,'01730490804','Bashundhara','Dhaka','1229','Bangladesh','assets/uploads/user/82501500_512177862732377_5273988997880741888_o_phjehrK.jpg','Null','',38,1),(19,'01611425103','House:01,Road:08, Mohammadia housing society Mohammadpu, Dhaka     ','Dhaka ','1207','Bangladesh','','Md.Shahadat Hossain ','50D585',39,1),(20,'01682177878','House # 78, Road # 12/4, Block # J, South Banasree, Dhaka-1219','Dhaka','1205','Bangladesh','assets/uploads/user/64971490_2343629109236332_5951974337450868736_n.jpg','Rafsan','6A1675',41,1),(21,'RS6JC011 www.ya','RS6JC011 www.yandex.ru','RS6JC011 www.yandex.ru','RS6JC011 www.yandex.','Puerto Rico','','RS6JC011 www.yandex.','F08D5D',42,1);
/*!40000 ALTER TABLE `UserInfo_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Wishlist_wishes`
--

DROP TABLE IF EXISTS `Wishlist_wishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Wishlist_wishes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Wishlist_wishes_property_id_0a4e5e56_fk_property_property_id` (`property_id`),
  KEY `Wishlist_wishes_user_id_4e6de422_fk_auth_user_id` (`user_id`),
  CONSTRAINT `Wishlist_wishes_property_id_0a4e5e56_fk_property_property_id` FOREIGN KEY (`property_id`) REFERENCES `property_property` (`id`),
  CONSTRAINT `Wishlist_wishes_user_id_4e6de422_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Wishlist_wishes`
--

LOCK TABLES `Wishlist_wishes` WRITE;
/*!40000 ALTER TABLE `Wishlist_wishes` DISABLE KEYS */;
INSERT INTO `Wishlist_wishes` VALUES (97,61,40),(98,61,40);
/*!40000 ALTER TABLE `Wishlist_wishes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add About Us',1,'add_aboutus'),(2,'Can change About Us',1,'change_aboutus'),(3,'Can delete About Us',1,'delete_aboutus'),(4,'Can view About Us',1,'view_aboutus'),(5,'Can add advertisement',2,'add_advertisement'),(6,'Can change advertisement',2,'change_advertisement'),(7,'Can delete advertisement',2,'delete_advertisement'),(8,'Can view advertisement',2,'view_advertisement'),(9,'Can add faq',3,'add_faq'),(10,'Can change faq',3,'change_faq'),(11,'Can delete faq',3,'delete_faq'),(12,'Can view faq',3,'view_faq'),(13,'Can add category',4,'add_category'),(14,'Can change category',4,'change_category'),(15,'Can delete category',4,'delete_category'),(16,'Can view category',4,'view_category'),(17,'Can add facilities',5,'add_facilities'),(18,'Can change facilities',5,'change_facilities'),(19,'Can delete facilities',5,'delete_facilities'),(20,'Can view facilities',5,'view_facilities'),(21,'Can add facing',6,'add_facing'),(22,'Can change facing',6,'change_facing'),(23,'Can delete facing',6,'delete_facing'),(24,'Can view facing',6,'view_facing'),(25,'Can add property tags type',7,'add_propertytagstype'),(26,'Can change property tags type',7,'change_propertytagstype'),(27,'Can delete property tags type',7,'delete_propertytagstype'),(28,'Can view property tags type',7,'view_propertytagstype'),(29,'Can add specification',8,'add_specification'),(30,'Can change specification',8,'change_specification'),(31,'Can delete specification',8,'delete_specification'),(32,'Can view specification',8,'view_specification'),(33,'Can add unit',9,'add_unit'),(34,'Can change unit',9,'change_unit'),(35,'Can delete unit',9,'delete_unit'),(36,'Can view unit',9,'view_unit'),(37,'Can add property tag',10,'add_propertytag'),(38,'Can change property tag',10,'change_propertytag'),(39,'Can delete property tag',10,'delete_propertytag'),(40,'Can view property tag',10,'view_propertytag'),(41,'Can add property',11,'add_property'),(42,'Can change property',11,'change_property'),(43,'Can delete property',11,'delete_property'),(44,'Can view property',11,'view_property'),(45,'Can add tags',12,'add_tags'),(46,'Can change tags',12,'change_tags'),(47,'Can delete tags',12,'delete_tags'),(48,'Can view tags',12,'view_tags'),(49,'Can add specification',13,'add_specification'),(50,'Can change specification',13,'change_specification'),(51,'Can delete specification',13,'delete_specification'),(52,'Can view specification',13,'view_specification'),(53,'Can add ratings',14,'add_ratings'),(54,'Can change ratings',14,'change_ratings'),(55,'Can delete ratings',14,'delete_ratings'),(56,'Can view ratings',14,'view_ratings'),(57,'Can add property video',15,'add_propertyvideo'),(58,'Can change property video',15,'change_propertyvideo'),(59,'Can delete property video',15,'delete_propertyvideo'),(60,'Can view property video',15,'view_propertyvideo'),(61,'Can add property image',16,'add_propertyimage'),(62,'Can change property image',16,'change_propertyimage'),(63,'Can delete property image',16,'delete_propertyimage'),(64,'Can view property image',16,'view_propertyimage'),(65,'Can add facilities',17,'add_facilities'),(66,'Can change facilities',17,'change_facilities'),(67,'Can delete facilities',17,'delete_facilities'),(68,'Can view facilities',17,'view_facilities'),(69,'Can add testimonial',18,'add_testimonial'),(70,'Can change testimonial',18,'change_testimonial'),(71,'Can delete testimonial',18,'delete_testimonial'),(72,'Can view testimonial',18,'view_testimonial'),(73,'Can add slider',19,'add_slider'),(74,'Can change slider',19,'change_slider'),(75,'Can delete slider',19,'delete_slider'),(76,'Can view slider',19,'view_slider'),(77,'Can add inbox',20,'add_inbox'),(78,'Can change inbox',20,'change_inbox'),(79,'Can delete inbox',20,'delete_inbox'),(80,'Can view inbox',20,'view_inbox'),(81,'Can add subscriber',21,'add_subscriber'),(82,'Can change subscriber',21,'change_subscriber'),(83,'Can delete subscriber',21,'delete_subscriber'),(84,'Can view subscriber',21,'view_subscriber'),(85,'Can add user info',22,'add_userinfo'),(86,'Can change user info',22,'change_userinfo'),(87,'Can delete user info',22,'delete_userinfo'),(88,'Can view user info',22,'view_userinfo'),(89,'Can add city',23,'add_city'),(90,'Can change city',23,'change_city'),(91,'Can delete city',23,'delete_city'),(92,'Can view city',23,'view_city'),(93,'Can add area',24,'add_area'),(94,'Can change area',24,'change_area'),(95,'Can delete area',24,'delete_area'),(96,'Can view area',24,'view_area'),(97,'Can add master',25,'add_master'),(98,'Can change master',25,'change_master'),(99,'Can delete master',25,'delete_master'),(100,'Can view master',25,'view_master'),(101,'Can add role',26,'add_role'),(102,'Can change role',26,'change_role'),(103,'Can delete role',26,'delete_role'),(104,'Can view role',26,'view_role'),(105,'Can add benefits',27,'add_benefits'),(106,'Can change benefits',27,'change_benefits'),(107,'Can delete benefits',27,'delete_benefits'),(108,'Can view benefits',27,'view_benefits'),(109,'Can add safety tips',28,'add_safetytips'),(110,'Can change safety tips',28,'change_safetytips'),(111,'Can delete safety tips',28,'delete_safetytips'),(112,'Can view safety tips',28,'view_safetytips'),(113,'Can add terms condition',29,'add_termscondition'),(114,'Can change terms condition',29,'change_termscondition'),(115,'Can delete terms condition',29,'delete_termscondition'),(116,'Can view terms condition',29,'view_termscondition'),(117,'Can add log entry',30,'add_logentry'),(118,'Can change log entry',30,'change_logentry'),(119,'Can delete log entry',30,'delete_logentry'),(120,'Can view log entry',30,'view_logentry'),(121,'Can add permission',31,'add_permission'),(122,'Can change permission',31,'change_permission'),(123,'Can delete permission',31,'delete_permission'),(124,'Can view permission',31,'view_permission'),(125,'Can add group',32,'add_group'),(126,'Can change group',32,'change_group'),(127,'Can delete group',32,'delete_group'),(128,'Can view group',32,'view_group'),(129,'Can add user',33,'add_user'),(130,'Can change user',33,'change_user'),(131,'Can delete user',33,'delete_user'),(132,'Can view user',33,'view_user'),(133,'Can add content type',34,'add_contenttype'),(134,'Can change content type',34,'change_contenttype'),(135,'Can delete content type',34,'delete_contenttype'),(136,'Can view content type',34,'view_contenttype'),(137,'Can add session',35,'add_session'),(138,'Can change session',35,'change_session'),(139,'Can delete session',35,'delete_session'),(140,'Can view session',35,'view_session'),(141,'Can add notification',36,'add_notification'),(142,'Can change notification',36,'change_notification'),(143,'Can delete notification',36,'delete_notification'),(144,'Can view notification',36,'view_notification'),(145,'Can add finencial support',37,'add_finencialsupport'),(146,'Can change finencial support',37,'change_finencialsupport'),(147,'Can delete finencial support',37,'delete_finencialsupport'),(148,'Can view finencial support',37,'view_finencialsupport'),(149,'Can add legal support',38,'add_legalsupport'),(150,'Can change legal support',38,'change_legalsupport'),(151,'Can delete legal support',38,'delete_legalsupport'),(152,'Can view legal support',38,'view_legalsupport'),(153,'Can add contact us',39,'add_contactus'),(154,'Can change contact us',39,'change_contactus'),(155,'Can delete contact us',39,'delete_contactus'),(156,'Can view contact us',39,'view_contactus'),(157,'Can add faq',40,'add_faq'),(158,'Can change faq',40,'change_faq'),(159,'Can delete faq',40,'delete_faq'),(160,'Can view faq',40,'view_faq'),(161,'Can add testimonial',41,'add_testimonial'),(162,'Can change testimonial',41,'change_testimonial'),(163,'Can delete testimonial',41,'delete_testimonial'),(164,'Can view testimonial',41,'view_testimonial'),(165,'Can add company types',42,'add_companytypes'),(166,'Can change company types',42,'change_companytypes'),(167,'Can delete company types',42,'delete_companytypes'),(168,'Can view company types',42,'view_companytypes'),(169,'Can add wishes',43,'add_wishes'),(170,'Can change wishes',43,'change_wishes'),(171,'Can delete wishes',43,'delete_wishes'),(172,'Can view wishes',43,'view_wishes'),(173,'Can add association',44,'add_association'),(174,'Can change association',44,'change_association'),(175,'Can delete association',44,'delete_association'),(176,'Can view association',44,'view_association'),(177,'Can add code',45,'add_code'),(178,'Can change code',45,'change_code'),(179,'Can delete code',45,'delete_code'),(180,'Can view code',45,'view_code'),(181,'Can add nonce',46,'add_nonce'),(182,'Can change nonce',46,'change_nonce'),(183,'Can delete nonce',46,'delete_nonce'),(184,'Can view nonce',46,'view_nonce'),(185,'Can add user social auth',47,'add_usersocialauth'),(186,'Can change user social auth',47,'change_usersocialauth'),(187,'Can delete user social auth',47,'delete_usersocialauth'),(188,'Can view user social auth',47,'view_usersocialauth'),(189,'Can add partial',48,'add_partial'),(190,'Can change partial',48,'change_partial'),(191,'Can delete partial',48,'delete_partial'),(192,'Can view partial',48,'view_partial'),(193,'Can add company video',49,'add_companyvideo'),(194,'Can change company video',49,'change_companyvideo'),(195,'Can delete company video',49,'delete_companyvideo'),(196,'Can view company video',49,'view_companyvideo');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$FhwLIGkR4ZG6$+fzqtQjPcuY0mV25tQQKc7Cua7kJVDHUQHTtLTfSOik=','2020-07-27 14:48:00.961769',1,'Meshkat','Meshkat','Bhuiyan','meshkat_cse@yahoo.com',1,1,'2020-03-06 19:30:13.000000'),(14,'pbkdf2_sha256$180000$Tjhu47NB4CHL$951lH9iBQTJrn2Mi7yAC+2jWWbM7ul1HOYCq1vLfHbQ=','2020-03-09 10:14:04.758370',0,'sarah','Sarah Shams','','sarah12@gmail.com',1,1,'2020-03-09 10:13:23.960626'),(15,'pbkdf2_sha256$180000$Xq7Vqg9soazn$3UhVoZMUHd5l8fMyMhevnriRv35SqFPZx3NGJLS/eZI=','2020-04-25 07:15:37.694034',1,'ifty','Ifty Khan','','ifty@whitepaper.tech',1,1,'2020-03-11 11:41:54.000000'),(24,'pbkdf2_sha256$180000$JVgBq7iLN2gd$TsCreSdUKtmdh0Geb5toWyW/lfwi96tW5Xc7hcbP+g8=','2020-04-22 09:16:42.995762',1,'faisal.sarker','Faisal Sarker','','faisal.sarker@gmail.com',1,1,'2020-04-08 21:30:04.000000'),(26,'pbkdf2_sha256$180000$veYSaCpi3gwa$JDGc3FPVaPTXslIC+rvaNvkTpiheVGeqxeTrSLqldWg=','2020-04-08 22:04:17.616310',0,'jahan','tamanna','','tamanna.jahan95@gmail.com',1,1,'2020-04-08 22:03:56.697052'),(28,'pbkdf2_sha256$180000$O2UCaysEFlH0$qUIzACZVE5spLzPhMqBMgQlzy9bXHOXd0RXOGNIkZfI=',NULL,0,'tammy','tammy','','nusrat.tamanna1@northsouth.edu',1,1,'2020-04-08 22:07:08.762260'),(29,'pbkdf2_sha256$180000$PbnM1ZUWf1GW$vNs5pWayz4JKNp/pOfBHunm+iZOTYzxEo4SEVFKK5ew=','2020-04-22 20:37:43.482273',0,'Rajo','Rajo','','rajovirul@gmail.com',1,1,'2020-04-09 08:45:32.000000'),(30,'pbkdf2_sha256$180000$djRHz0mTD0FP$k7zChIOsOAPWXlgAFnFJsNy7V86v7AGQ1HOQhsaaSnw=','2020-05-14 09:16:12.669426',0,'Arizul','Arizul','Islam','arizulislam45@gmail.com',1,1,'2020-04-12 09:59:21.000000'),(31,'pbkdf2_sha256$180000$zthbQ5JkLuBU$cGfuRcVuhNtgx4+rDZlRgao0wVauKFM0FKDld+LakIQ=','2020-05-06 12:25:31.864968',0,'Russel','Ibrahim Russel','','iftykhanik6@gmail.com',1,1,'2020-04-12 12:36:20.000000'),(32,'pbkdf2_sha256$180000$OmEvrUVd5SdB$+1GsoHS+3iQ74AVoPHM88loRa91WsQuW+nGnZIKnzFY=','2020-08-06 04:58:27.264136',0,'Tushar','Tushar','','situsshar@gmail.com',1,1,'2020-04-18 09:12:13.000000'),(33,'!IhZkwAO1GdYET3ev62o9TrnQHLoA6sdHL0L5qXn0','2020-04-18 13:46:51.726864',0,'ProffJason','Proff','Jason','',0,1,'2020-04-18 13:46:17.590122'),(34,'!4ec016r6Z5MFU8D3wdJk0mU5emHpmPlawlKcxNUm','2020-04-19 15:51:12.451859',0,'MeshkatulVuiyan','Meshkatul','Vuiyan','',1,1,'2020-04-18 14:40:03.000000'),(35,'!cSsOEleDDQklZcou9kPq2VXKw9MkA8zOm6nJmxOX','2020-04-19 23:43:53.435383',0,'rajovirul','Mishu','bhuiyan','rajovirul@gmail.com',0,1,'2020-04-18 21:54:27.996336'),(36,'!AMsjea8tsx71HZHvs878q5fFyK7UEqQla5DUQjel','2020-04-20 10:00:04.751031',0,'IftyKhan','ifty','khan','',0,1,'2020-04-19 08:35:28.873674'),(37,'pbkdf2_sha256$180000$MLPHQU2wbQUV$y2DkRj5WiLSCxqPiwaCegYwaZc2Mj0snoRCbJdWjPgE=','2020-04-19 15:46:59.000000',0,'Sales','Sales@jams','','sales@jamsproperty.com',1,1,'2020-04-19 15:35:22.000000'),(38,'!zSPvhYlVtD6orPUdd5pFDw3s2xA7dyDETcj4jfTK','2020-06-11 09:04:24.793649',0,'arizulislam45','Sourav','The Perfume','arizulislam804@gmail.com',0,1,'2020-04-29 08:00:22.601258'),(39,'pbkdf2_sha256$180000$nLbP2mjxGZhH$Xj82JT5+g7o0oQuoK1KYJ8v/vc9VLxILQaJqU8X5A9U=',NULL,0,'Ahmed ','Shaikh Bulbul Ahmed   ','','skbulbulahmed05@gmail.com',1,1,'2020-05-01 16:46:37.597427'),(40,'!rDicNTptX3hP9FoJhsYmygoUVh7rk6mpnqi8g6QH','2020-05-24 10:18:03.292271',0,'faisal.sarker7b4c940a72504d90','White','Paper','faisal.sarker@gmail.com',0,1,'2020-05-06 16:14:44.083238'),(41,'pbkdf2_sha256$180000$M2A0QHpRXP1D$XRRRYnuZI08c4CyG0CckmJvmUxjb9SEMVMJ4zuC+euw=','2020-06-26 05:48:05.464707',0,'Moiful483','Md.','Islam','mdmoifulislam483@gmail.com',1,1,'2020-06-11 07:55:45.915421'),(42,'pbkdf2_sha256$180000$WIA0txmEaGSK$glTx7V1hFcl4MRKL9EhXYvbgTobvamoP/rcx+iODfuE=',NULL,0,'RS6JC011 www.yandex.ru','RS6JC011 www.yandex.ru','','VeselovRavil86@list.ru',1,1,'2020-07-13 06:58:17.144749'),(43,'!3Nws7pKYeksCTDoRVWw8H3Op5XW9o7Derihumrbi','2020-08-21 18:43:46.355100',0,'JubayerAhmed','Jubayer','Ahmed','',0,1,'2020-08-21 18:43:46.093300');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (46,1,77),(47,1,78),(48,1,79),(45,1,80),(27,15,23),(28,15,24),(29,15,25),(30,15,26),(31,15,27),(32,15,28),(33,15,29),(34,15,30),(35,15,31),(36,15,32),(37,15,33),(38,15,34),(39,15,35),(40,15,36),(41,15,37),(42,15,38),(43,15,39),(44,15,40),(2,15,77),(3,15,78),(4,15,79),(5,15,80),(67,29,172),(59,30,41),(60,30,42),(61,30,43),(62,30,44),(63,30,61),(64,30,62),(65,30,63),(68,31,13),(69,31,14),(70,31,15),(71,31,16),(72,31,17),(73,31,18),(74,31,19),(75,31,20),(76,31,21),(77,31,22),(78,31,23),(79,31,24),(80,31,25),(81,31,26),(82,31,27),(83,31,28),(84,31,29),(85,31,30),(86,31,31),(87,31,32),(88,31,33),(89,31,34),(90,31,35),(91,31,36),(92,31,37),(93,31,38),(94,31,39),(95,31,40),(96,31,41),(97,31,42),(98,31,43),(99,31,44),(100,31,45),(101,31,46),(102,31,47),(103,31,48),(104,31,49),(105,31,50),(106,31,51),(107,31,52),(108,31,53),(109,31,54),(110,31,55),(111,31,56),(112,31,57),(113,31,58),(114,31,59),(115,31,60),(116,31,61),(117,31,62),(118,31,63),(119,31,64),(120,31,65),(121,31,66),(122,31,67),(123,31,68),(124,32,13),(125,32,14),(126,32,15),(127,32,16),(128,32,17),(129,32,18),(130,32,19),(131,32,20),(132,32,21),(133,32,22),(134,32,23),(135,32,24),(136,32,25),(137,32,26),(138,32,27),(139,32,28),(140,32,29),(141,32,30),(142,32,31),(143,32,32),(144,32,33),(145,32,34),(146,32,35),(147,32,36),(148,32,37),(149,32,38),(150,32,39),(151,32,40),(152,32,41),(153,32,42),(154,32,43),(155,32,44),(156,32,45),(157,32,46),(158,32,47),(159,32,48),(160,32,49),(161,32,50),(162,32,51),(163,32,52),(164,32,53),(165,32,54),(166,32,55),(167,32,56),(168,32,57),(169,32,58),(170,32,59),(171,32,60),(172,32,61),(173,32,62),(174,32,63),(175,32,64),(176,32,65),(177,32,66),(178,32,67),(179,32,68),(181,32,89),(182,32,90),(183,32,91),(184,32,92),(185,32,93),(186,32,94),(187,32,95),(180,32,96),(193,37,77),(194,37,78),(195,37,79),(192,37,80);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-03-06 19:37:37.286750','1','\"One Stop Property Solutions\"',1,'[{\"added\": {}}]',19,1),(2,'2020-03-07 04:13:23.832787','1','OWNER',1,'[{\"added\": {}}]',26,1),(3,'2020-03-07 04:13:52.131740','2','BUILDER',1,'[{\"added\": {}}]',26,1),(4,'2020-03-07 04:14:17.403731','3','AGENT',1,'[{\"added\": {}}]',26,1),(5,'2020-03-07 04:16:47.806893','1','JamsProperty',1,'[{\"added\": {}}]',25,1),(6,'2020-03-07 04:21:47.777715','1','DUPLAX HOUSE',1,'[{\"added\": {}}]',4,1),(7,'2020-03-07 04:25:23.177999','2','HALF DUPLEX',1,'[{\"added\": {}}]',4,1),(8,'2020-03-07 04:26:46.094172','3','OFFICE',1,'[{\"added\": {}}]',4,1),(9,'2020-03-07 04:27:11.238833','4','APARTMENT',1,'[{\"added\": {}}]',4,1),(10,'2020-03-07 04:27:28.375581','5','COMMERCIAL',1,'[{\"added\": {}}]',4,1),(11,'2020-03-07 04:27:46.066549','6','LAND',1,'[{\"added\": {}}]',4,1),(12,'2020-03-07 04:28:47.439115','1','BALCONY OR TERRACE',1,'[{\"added\": {}}]',5,1),(13,'2020-03-07 04:28:57.449101','2','CAR PARKING',1,'[{\"added\": {}}]',5,1),(14,'2020-03-07 04:29:06.600472','3','SECURITY',1,'[{\"added\": {}}]',5,1),(15,'2020-03-07 04:29:16.493549','4','CC-CAM',1,'[{\"added\": {}}]',5,1),(16,'2020-03-07 04:29:26.079287','5','GARDEN',1,'[{\"added\": {}}]',5,1),(17,'2020-03-07 04:29:33.725216','6','SWIMMING POOL',1,'[{\"added\": {}}]',5,1),(18,'2020-03-07 04:29:45.151237','7','FURNITURE FURNISHED',1,'[{\"added\": {}}]',5,1),(19,'2020-03-07 04:30:33.323605','1','NORTH',1,'[{\"added\": {}}]',6,1),(20,'2020-03-07 04:31:28.178512','2','SOUTH',1,'[{\"added\": {}}]',6,1),(21,'2020-03-07 04:31:36.122488','3','EAST',1,'[{\"added\": {}}]',6,1),(22,'2020-03-07 04:31:46.513974','4','WEST',1,'[{\"added\": {}}]',6,1),(23,'2020-03-07 04:33:16.398910','1','OFFICE',1,'[{\"added\": {}}]',7,1),(24,'2020-03-07 04:34:21.670882','2','COMMERCIAL',1,'[{\"added\": {}}]',7,1),(25,'2020-03-07 04:34:45.046298','3','RESIDENTIAL',1,'[{\"added\": {}}]',7,1),(26,'2020-03-07 04:35:06.731849','4','SHOWROOMS & SHOPS',1,'[{\"added\": {}}]',7,1),(27,'2020-03-07 04:35:24.256881','5','LAND',1,'[{\"added\": {}}]',7,1),(28,'2020-03-07 04:35:47.482101','5','LAND',3,'',7,1),(29,'2020-03-07 04:36:02.542515','6','LAND',1,'[{\"added\": {}}]',7,1),(30,'2020-03-07 04:41:27.371343','1','Office',1,'[{\"added\": {}}]',10,1),(31,'2020-03-07 04:41:50.858600','2','Floor',1,'[{\"added\": {}}]',10,1),(32,'2020-03-07 04:42:07.399461','3','Duplex',1,'[{\"added\": {}}]',10,1),(33,'2020-03-07 04:42:23.374425','4','Building',1,'[{\"added\": {}}]',10,1),(34,'2020-03-07 04:42:41.074170','5','Warehouse',1,'[{\"added\": {}}]',10,1),(35,'2020-03-07 04:42:56.211829','6','Shop',1,'[{\"added\": {}}]',10,1),(36,'2020-03-07 04:43:10.220387','7','Apartment',1,'[{\"added\": {}}]',10,1),(37,'2020-03-07 04:43:25.219823','8','Plaza',1,'[{\"added\": {}}]',10,1),(38,'2020-03-07 04:43:38.756315','9','Plot',1,'[{\"added\": {}}]',10,1),(39,'2020-03-07 04:43:55.917832','10','Factory',1,'[{\"added\": {}}]',10,1),(40,'2020-03-07 04:44:14.078475','11','Apartment',1,'[{\"added\": {}}]',10,1),(41,'2020-03-07 04:44:32.794183','12','Room',1,'[{\"added\": {}}]',10,1),(42,'2020-03-07 04:44:52.524724','13','Penthouse',1,'[{\"added\": {}}]',10,1),(43,'2020-03-07 04:45:08.753405','14','Plaza',1,'[{\"added\": {}}]',10,1),(44,'2020-03-07 04:45:24.066392','15','Plot',1,'[{\"added\": {}}]',10,1),(45,'2020-03-07 04:45:40.634757','16','Duplex',1,'[{\"added\": {}}]',10,1),(46,'2020-03-07 04:45:57.674820','17','Building',1,'[{\"added\": {}}]',10,1),(47,'2020-03-07 04:46:54.586568','1','Intercom',1,'[{\"added\": {}}]',8,1),(48,'2020-03-07 04:47:40.784709','1','SQ. FT.',1,'[{\"added\": {}}]',9,1),(49,'2020-03-07 04:47:50.267411','2','KATHA',1,'[{\"added\": {}}]',9,1),(50,'2020-03-07 04:47:59.510950','3','BIGHA',1,'[{\"added\": {}}]',9,1),(51,'2020-03-07 04:52:53.888216','1','Tanvir Ahad',1,'[{\"added\": {}}]',18,1),(52,'2020-03-07 04:54:53.735800','2','Tanvir Ahad',1,'[{\"added\": {}}]',18,1),(53,'2020-03-07 04:56:47.620274','2','SHAHADAT HOSSAIN',2,'[{\"changed\": {\"fields\": [\"Author\", \"Designation\", \"Message\"]}}]',18,1),(54,'2020-03-07 04:57:40.071677','1','DHAKA',1,'[{\"added\": {}}]',23,1),(55,'2020-03-07 04:57:50.782313','2','CHATTOGRAM',1,'[{\"added\": {}}]',23,1),(56,'2020-03-07 04:58:30.027135','1','TIKATOLI',1,'[{\"added\": {}}]',24,1),(57,'2020-03-07 04:58:40.613759','2','OLD-DHAKA',1,'[{\"added\": {}}]',24,1),(58,'2020-03-07 04:58:54.593415','3','MOTIJHIL',1,'[{\"added\": {}}]',24,1),(59,'2020-03-07 04:59:08.954248','4','BASHONDHORA (R/A)',1,'[{\"added\": {}}]',24,1),(60,'2020-03-07 04:59:27.730426','5','NORTH-BADDA',1,'[{\"added\": {}}]',24,1),(61,'2020-03-07 05:00:38.139948','1','WHAT IS A SELLER\'S MARKET?',1,'[{\"added\": {}}]',3,1),(62,'2020-03-07 05:01:06.861432','2','How long does it take to buy a home?',1,'[{\"added\": {}}]',3,1),(63,'2020-03-07 05:01:28.102078','3','What the first step of the home buying process?',1,'[{\"added\": {}}]',3,1),(64,'2020-03-07 08:09:54.635342','2','COMMERCIAL',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',7,1),(65,'2020-03-07 08:10:26.982084','6','LAND',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',7,1),(66,'2020-03-07 08:11:15.671687','3','RESIDENTIAL',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',7,1),(67,'2020-03-07 08:12:24.058115','1','OFFICE',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',7,1),(68,'2020-03-07 08:15:01.068908','4','SHOWROOMS & SHOPS',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',7,1),(69,'2020-03-08 09:13:29.585115','2','Rajo',3,'',33,1),(70,'2020-03-08 09:18:41.000053','3','Rajo',3,'',33,1),(71,'2020-03-08 09:22:19.659386','4','rajo',3,'',33,1),(72,'2020-03-08 09:25:20.192046','5','rajo',3,'',33,1),(73,'2020-03-08 09:30:13.503726','6','RajoVirul',3,'',33,1),(74,'2020-03-08 09:31:55.199804','7','RajoVirul',3,'',33,1),(75,'2020-03-08 09:35:12.116716','8','RajoVirul',3,'',33,1),(76,'2020-03-08 09:42:04.599666','9','RajoVirul',3,'',33,1),(77,'2020-03-08 09:43:01.042193','10','RajoVirul',3,'',33,1),(78,'2020-03-08 09:44:48.472020','11','Rajo',3,'',33,1),(79,'2020-03-08 09:52:09.564051','12','Rajo',3,'',33,1),(80,'2020-03-09 08:35:28.613805','4','RajoVirul',2,'[{\"changed\": {\"fields\": [\"Agent code\"]}}]',22,1),(81,'2020-03-09 08:38:49.964443','4','RajoVirul',2,'[]',22,1),(82,'2020-03-09 09:28:48.950937','4','RajoVirul',2,'[{\"changed\": {\"fields\": [\"Agent code\"]}}]',22,1),(83,'2020-03-09 09:42:06.777225','2','Meshkat',2,'[{\"changed\": {\"fields\": [\"Agent code\"]}}]',22,1),(84,'2020-03-09 11:51:04.055520','1','JamsProperty',2,'[{\"changed\": {\"fields\": [\"Logo\"]}}]',25,1),(85,'2020-03-11 13:10:43.285116','18','Commercial',1,'[{\"added\": {}}]',10,1),(86,'2020-03-11 13:11:19.642872','19','Residencial',1,'[{\"added\": {}}]',10,1),(87,'2020-03-11 13:33:45.809398','4','SHOWROOMS & SHOPS',3,'',7,1),(88,'2020-03-11 13:33:45.815935','1','OFFICE',3,'',7,1),(89,'2020-03-13 04:52:20.961534','1','test',1,'[{\"added\": {}}]',2,1),(90,'2020-03-13 04:53:05.151730','2','test-2',1,'[{\"added\": {}}]',2,1),(91,'2020-03-13 05:34:44.839691','2','test-2',3,'',2,1),(92,'2020-03-13 05:34:44.845435','1','test',3,'',2,1),(93,'2020-03-15 06:14:03.261595','1','Who Are We',1,'[{\"added\": {}}]',1,1),(94,'2020-03-16 04:51:46.587119','16','jubayer',1,'[{\"added\": {}}]',33,1),(95,'2020-03-16 04:52:38.634195','16','jubayer',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Superuser status\"]}}]',33,1),(96,'2020-03-18 07:16:28.468163','15','ifty',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',33,1),(97,'2020-03-20 12:17:49.497786','1','Contact Us',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',25,1),(98,'2020-03-20 12:22:46.623724','1','About Us',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',1,1),(99,'2020-03-20 12:24:40.249958','1','Financial Support',1,'[{\"added\": {}}]',37,1),(100,'2020-03-20 12:25:31.230718','1','Legam Information',1,'[{\"added\": {}}]',38,1),(101,'2020-03-20 12:29:23.230509','1','Legal Information',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',38,1),(102,'2020-03-20 12:59:01.616296','7','Furnished',2,'[{\"changed\": {\"fields\": [\"Facilitie name\"]}}]',5,1),(103,'2020-03-20 12:59:21.601919','6','Swimming Pool',2,'[{\"changed\": {\"fields\": [\"Facilitie name\"]}}]',5,1),(104,'2020-03-20 12:59:38.786238','5','Garden',2,'[{\"changed\": {\"fields\": [\"Facilitie name\"]}}]',5,1),(105,'2020-03-20 12:59:59.885336','4','CC-Camera',2,'[{\"changed\": {\"fields\": [\"Facilitie name\"]}}]',5,1),(106,'2020-03-20 13:00:16.577525','3','Security',2,'[{\"changed\": {\"fields\": [\"Facilitie name\"]}}]',5,1),(107,'2020-03-20 13:00:36.302317','2','Car Parking',2,'[{\"changed\": {\"fields\": [\"Facilitie name\"]}}]',5,1),(108,'2020-03-20 13:01:09.063043','1','Balcony/ Terrace',2,'[{\"changed\": {\"fields\": [\"Facilitie name\"]}}]',5,1),(109,'2020-03-20 14:44:29.649439','1','Contact Us',1,'[{\"added\": {}}]',39,1),(110,'2020-03-20 17:20:24.846611','15','ifty',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',33,1),(111,'2020-03-20 17:21:29.585702','15','ifty',2,'[]',33,1),(112,'2020-03-20 17:43:01.364315','2','Chittagong',2,'[{\"changed\": {\"fields\": [\"City name\"]}}]',23,1),(113,'2020-03-20 17:43:55.985852','1','Dhaka',2,'[{\"changed\": {\"fields\": [\"City name\"]}}]',23,1),(114,'2020-03-20 17:45:00.889881','5','North-Badda',2,'[{\"changed\": {\"fields\": [\"Area name\"]}}]',24,1),(115,'2020-03-20 17:45:45.309335','4','Bashundhara (R/A)',2,'[{\"changed\": {\"fields\": [\"Area name\"]}}]',24,1),(116,'2020-03-20 17:46:16.261226','6','Gulshan',1,'[{\"added\": {}}]',24,1),(117,'2020-03-20 17:46:54.361566','3','Motijheel',2,'[{\"changed\": {\"fields\": [\"Area name\"]}}]',24,1),(118,'2020-03-20 17:47:25.189321','2','Old-Dhaka',2,'[{\"changed\": {\"fields\": [\"Area name\"]}}]',24,1),(119,'2020-03-20 17:48:08.641380','1','Tikatoli',2,'[{\"changed\": {\"fields\": [\"Area name\"]}}]',24,1),(120,'2020-03-20 17:49:46.572147','7','Baridhara',1,'[{\"added\": {}}]',24,1),(121,'2020-03-20 17:50:43.768182','8','Dhanmondi',1,'[{\"added\": {}}]',24,1),(122,'2020-03-20 17:51:21.139957','9','Uttara',1,'[{\"added\": {}}]',24,1),(123,'2020-03-20 17:51:52.741465','10','Lalmatia',1,'[{\"added\": {}}]',24,1),(124,'2020-03-20 17:52:50.527733','11','Mohammadpur',1,'[{\"added\": {}}]',24,1),(125,'2020-03-20 18:03:04.498465','1','Financial Support',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',37,1),(126,'2020-03-20 18:13:15.364834','1','Water Garden',1,'[{\"added\": {}}]',40,1),(127,'2020-03-20 18:14:48.331704','1','Ready Flat',1,'[{\"added\": {}}]',29,1),(128,'2020-03-20 18:41:47.144119','15','ifty',2,'[{\"changed\": {\"fields\": [\"User permissions\", \"Last login\"]}}]',33,1),(129,'2020-03-20 18:44:33.068765','13','Pent-House',2,'[{\"changed\": {\"fields\": [\"Tag name\"]}}]',10,15),(130,'2020-03-20 18:47:24.875682','6','Land',2,'[{\"changed\": {\"fields\": [\"Type name\"]}}]',7,15),(131,'2020-03-20 18:47:44.438286','3','Residential',2,'[{\"changed\": {\"fields\": [\"Type name\"]}}]',7,15),(132,'2020-03-20 18:48:02.322566','2','Commercial',2,'[{\"changed\": {\"fields\": [\"Type name\"]}}]',7,15),(133,'2020-03-20 18:48:42.908291','1','Intercom',3,'',8,1),(134,'2020-03-20 18:52:37.877889','4','West',2,'[{\"changed\": {\"fields\": [\"Facing name\"]}}]',6,15),(135,'2020-03-20 18:52:53.356559','3','East',2,'[{\"changed\": {\"fields\": [\"Facing name\"]}}]',6,15),(136,'2020-03-20 18:53:14.177497','2','South',2,'[{\"changed\": {\"fields\": [\"Facing name\"]}}]',6,15),(137,'2020-03-20 18:53:31.404028','1','North',2,'[{\"changed\": {\"fields\": [\"Facing name\"]}}]',6,15),(138,'2020-03-20 18:56:41.864189','15','ifty',2,'[{\"changed\": {\"fields\": [\"Superuser status\"]}}]',33,1),(139,'2020-03-21 05:36:02.404956','1','Meshkat',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',33,1),(140,'2020-03-21 05:58:53.488885','13','RajoVirul',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',33,1),(141,'2020-03-21 06:00:11.740783','13','RajoVirul',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',33,1),(145,'2020-04-06 07:24:35.629636','20','',3,'',33,1),(146,'2020-04-06 07:24:35.639682','13','RajoVirul',3,'',33,1),(147,'2020-04-08 15:11:20.199882','17','Sales.Jamsproperty',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',33,1),(148,'2020-04-08 15:12:45.332872','17','Sales.Jamsproperty',3,'',33,1),(149,'2020-04-08 15:17:42.901077','21','Rajo',3,'',33,1),(150,'2020-04-08 21:48:16.525210','25','jahan',3,'',33,1),(151,'2020-04-08 21:48:16.532912','22','Mishu',3,'',33,1),(152,'2020-04-08 21:48:16.539072','18','tamanna',3,'',33,1),(153,'2020-04-08 21:48:16.545176','19','test name',3,'',33,1),(154,'2020-04-09 08:43:58.335327','23','Rajo',3,'',33,1),(155,'2020-04-09 10:17:24.817696','24','faisal.sarker',2,'[{\"changed\": {\"fields\": [\"Superuser status\"]}}]',33,1),(156,'2020-04-10 20:44:35.457466','6','',3,'',21,1),(157,'2020-04-12 05:13:18.676946','12','Rajo',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',22,15),(158,'2020-04-12 10:06:05.397723','30','Arizul',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',33,1),(159,'2020-04-12 10:19:36.828141','27','eee',3,'',33,1),(160,'2020-04-12 10:22:53.051802','2','The Property in agreement of 3 months',1,'[{\"added\": {}}]',29,1),(161,'2020-04-12 10:27:57.106379','8','Lift',1,'[{\"added\": {}}]',5,1),(162,'2020-04-12 10:28:58.705777','8','Lift',3,'',5,1),(163,'2020-04-12 13:00:18.665657','15','ifty',2,'[{\"changed\": {\"fields\": [\"Superuser status\"]}}]',33,15),(164,'2020-04-12 13:04:25.441208','15','ifty',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',33,1),(165,'2020-04-12 13:08:30.536469','5','ifty',2,'[{\"changed\": {\"fields\": [\"Agent code\"]}}]',22,1),(166,'2020-04-12 13:10:25.380603','14','Russel',2,'[]',22,1),(167,'2020-04-12 13:33:13.075233','15','ifty',2,'[{\"changed\": {\"fields\": [\"Superuser status\"]}}]',33,1),(168,'2020-04-12 13:43:00.915230','2','The Property in agreement of 3 months',2,'[]',29,15),(169,'2020-04-12 14:07:51.610342','2','The Property in agreement of 3 months',2,'[]',29,15),(170,'2020-04-12 14:22:23.819703','3','gk@gmail.com',3,'',21,1),(171,'2020-04-13 07:46:23.574022','1','hello',1,'[{\"added\": {}}]',2,15),(172,'2020-04-13 07:54:39.933410','1','hello',2,'[]',2,15),(173,'2020-04-13 08:02:11.468378','1','hello',2,'[{\"changed\": {\"fields\": [\"Ad placement\"]}}]',2,15),(174,'2020-04-13 08:06:12.335231','1','hello',3,'',2,15),(175,'2020-04-13 08:24:05.191487','2','hello',1,'[{\"added\": {}}]',2,15),(176,'2020-04-13 10:20:20.875847','1','Mohammad Shahadat Hossain',1,'[{\"added\": {}}]',41,15),(177,'2020-04-16 19:21:07.035120','29','Rajo',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',33,1),(178,'2020-04-16 19:27:06.709752','29','Rajo',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',33,1),(179,'2020-04-18 07:23:09.995157','31','Russel',2,'[{\"changed\": {\"fields\": [\"Superuser status\", \"User permissions\"]}}]',33,15),(180,'2020-04-18 07:34:12.800729','31','Russel',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',33,15),(181,'2020-04-18 07:39:42.205614','31','Russel',2,'[{\"changed\": {\"fields\": [\"Superuser status\"]}}]',33,15),(182,'2020-04-18 08:40:02.220645','31','Russel',2,'[]',33,15),(183,'2020-04-18 08:40:31.716373','31','Russel',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',33,15),(184,'2020-04-18 09:16:13.889440','32','Tushar',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',33,15),(185,'2020-04-18 09:16:15.185288','32','Tushar',2,'[]',33,15),(186,'2020-04-18 11:39:20.391745','32','Tushar',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',33,15),(187,'2020-04-18 11:41:26.366964','12','Aftabnagar',1,'[{\"added\": {}}]',24,32),(188,'2020-04-18 19:20:49.538433','34','MeshkatulVuiyan',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',33,1),(189,'2020-04-19 17:04:34.759375','1','Contact Us',2,'[{\"changed\": {\"fields\": [\"Address\"]}}]',39,1),(190,'2020-04-19 17:33:31.899284','2','hello',3,'',2,15),(191,'2020-04-19 17:51:20.477687','1','Ready Flat',3,'',29,15),(192,'2020-04-21 00:01:00.710110','31','Russel',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',33,15),(193,'2020-04-21 15:58:28.083202','1','Test',1,'[{\"added\": {}}]',49,1),(194,'2020-04-21 17:25:57.070211','1','Test',2,'[]',49,1),(195,'2020-04-21 17:27:45.018098','1','Test',2,'[{\"changed\": {\"fields\": [\"Video Poster\"]}}]',49,1),(196,'2020-04-23 13:51:17.552072','7','Test',1,'[{\"added\": {}}]',49,1),(197,'2020-04-23 14:16:03.342314','9','Test',1,'[{\"added\": {}}]',49,15),(198,'2020-04-23 14:32:04.719889','10','CompanyVideo object (10)',1,'[{\"added\": {}}]',49,1),(199,'2020-04-23 14:33:15.956139','10','CompanyVideo object (10)',3,'',49,1),(200,'2020-04-26 13:29:08.928211','9','CompanyVideo object (9)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',49,1),(201,'2020-04-26 13:35:31.915896','9','CompanyVideo object (9)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',49,1),(202,'2020-04-26 13:44:08.240003','7','CompanyVideo object (7)',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',49,1),(203,'2020-04-29 06:56:47.565057','4','Admin',1,'[{\"added\": {}}]',26,1),(204,'2020-04-29 06:57:41.392285','16','Sales',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',22,1),(205,'2020-04-29 06:59:52.556556','37','Sales',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',33,1),(206,'2020-04-29 07:01:53.879226','15','Tushar',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',22,1),(207,'2020-04-29 07:03:31.496941','14','Russel',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',22,1),(208,'2020-04-29 07:06:16.128935','13','Arizul',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',22,1),(209,'2020-04-29 07:13:18.995531','17','sarah',1,'[{\"added\": {}}]',22,1),(210,'2020-04-30 09:12:41.982749','11','CompanyVideo object (11)',1,'[{\"added\": {}}]',49,15),(211,'2020-04-30 09:13:27.587660','11','CompanyVideo object (11)',3,'',49,15),(212,'2020-04-30 09:14:37.587733','12','CompanyVideo object (12)',1,'[{\"added\": {}}]',49,15),(213,'2020-05-02 15:33:23.756553','12','CompanyVideo object (12)',3,'',49,15),(214,'2020-05-02 23:00:27.960406','3','Covid-19',1,'[{\"added\": {}}]',2,1),(215,'2020-05-02 23:17:47.995858','3','Covid-19',2,'[{\"changed\": {\"fields\": [\"Company\", \"Ad image\"]}}]',2,15),(216,'2020-05-04 15:09:20.466865','31','Russel',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',33,1),(217,'2020-05-14 06:39:44.648245','5','South and East',1,'[{\"added\": {}}]',6,32),(218,'2020-05-14 06:40:18.437242','6','South West',1,'[{\"added\": {}}]',6,32),(219,'2020-05-14 06:40:42.646065','5','South and East',3,'',6,32),(220,'2020-05-14 06:41:05.329533','7','South East',1,'[{\"added\": {}}]',6,32),(221,'2020-05-30 14:59:17.897676','13','Purbachal',1,'[{\"added\": {}}]',24,32),(222,'2020-06-11 08:11:06.035029','14','Banasree',1,'[{\"added\": {}}]',24,32),(223,'2020-07-08 08:58:36.777208','8','North East',1,'[{\"added\": {}}]',6,32),(224,'2020-07-08 08:59:24.050713','9','North West',1,'[{\"added\": {}}]',6,32),(225,'2020-07-08 09:00:05.630840','9','North West Corner',2,'[{\"changed\": {\"fields\": [\"Facing name\"]}}]',6,32),(226,'2020-07-08 09:00:37.966767','8','North East Corner',2,'[{\"changed\": {\"fields\": [\"Facing name\"]}}]',6,32),(227,'2020-07-08 09:01:46.648593','7','South East Corner',2,'[{\"changed\": {\"fields\": [\"Facing name\"]}}]',6,32),(228,'2020-07-08 09:02:02.695501','6','South West Corner',2,'[{\"changed\": {\"fields\": [\"Facing name\"]}}]',6,32);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'About','aboutus'),(49,'About','companyvideo'),(39,'About','contactus'),(40,'About','faq'),(37,'About','finencialsupport'),(38,'About','legalsupport'),(41,'About','testimonial'),(30,'admin','logentry'),(2,'Advertisement','advertisement'),(32,'auth','group'),(31,'auth','permission'),(33,'auth','user'),(42,'CompanyType','companytypes'),(34,'contenttypes','contenttype'),(3,'Faq','faq'),(20,'Inbox','inbox'),(24,'location','area'),(23,'location','city'),(27,'master','benefits'),(25,'master','master'),(26,'master','role'),(28,'master','safetytips'),(29,'master','termscondition'),(36,'Notification','notification'),(17,'property','facilities'),(11,'property','property'),(16,'property','propertyimage'),(15,'property','propertyvideo'),(14,'property','ratings'),(13,'property','specification'),(12,'property','tags'),(4,'PropertySettings','category'),(5,'PropertySettings','facilities'),(6,'PropertySettings','facing'),(10,'PropertySettings','propertytag'),(7,'PropertySettings','propertytagstype'),(8,'PropertySettings','specification'),(9,'PropertySettings','unit'),(35,'sessions','session'),(19,'slider','slider'),(44,'social_django','association'),(45,'social_django','code'),(46,'social_django','nonce'),(48,'social_django','partial'),(47,'social_django','usersocialauth'),(21,'Subscriber','subscriber'),(18,'testimonial','testimonial'),(22,'UserInfo','userinfo'),(43,'Wishlist','wishes');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'About','0001_initial','2020-03-06 19:27:47.161482'),(2,'Advertisement','0001_initial','2020-03-06 19:27:47.205243'),(3,'Advertisement','0002_auto_20200212_0617','2020-03-06 19:27:47.214090'),(4,'Faq','0001_initial','2020-03-06 19:27:47.246806'),(5,'Inbox','0001_initial','2020-03-06 19:27:47.279664'),(6,'PropertySettings','0001_initial','2020-03-06 19:27:47.450175'),(7,'Subscriber','0001_initial','2020-03-06 19:27:47.519784'),(8,'master','0001_initial','2020-03-06 19:27:47.551758'),(9,'master','0002_master_title','2020-03-06 19:27:47.600377'),(10,'master','0003_role','2020-03-06 19:27:47.626773'),(11,'master','0004_auto_20200123_1413','2020-03-06 19:27:47.865585'),(12,'contenttypes','0001_initial','2020-03-06 19:27:47.910184'),(13,'auth','0001_initial','2020-03-06 19:27:48.079026'),(14,'UserInfo','0001_initial','2020-03-06 19:27:48.453511'),(15,'UserInfo','0002_auto_20200203_1638','2020-03-06 19:27:48.617664'),(16,'UserInfo','0003_auto_20200215_0550','2020-03-06 19:27:48.844886'),(17,'admin','0001_initial','2020-03-06 19:27:48.882755'),(18,'admin','0002_logentry_remove_auto_add','2020-03-06 19:27:48.978322'),(19,'admin','0003_logentry_add_action_flag_choices','2020-03-06 19:27:48.991050'),(20,'contenttypes','0002_remove_content_type_name','2020-03-06 19:27:49.090638'),(21,'auth','0002_alter_permission_name_max_length','2020-03-06 19:27:49.137744'),(22,'auth','0003_alter_user_email_max_length','2020-03-06 19:27:49.182258'),(23,'auth','0004_alter_user_username_opts','2020-03-06 19:27:49.195324'),(24,'auth','0005_alter_user_last_login_null','2020-03-06 19:27:49.241594'),(25,'auth','0006_require_contenttypes_0002','2020-03-06 19:27:49.247803'),(26,'auth','0007_alter_validators_add_error_messages','2020-03-06 19:27:49.262948'),(27,'auth','0008_alter_user_username_max_length','2020-03-06 19:27:49.314619'),(28,'auth','0009_alter_user_last_name_max_length','2020-03-06 19:27:49.362028'),(29,'auth','0010_alter_group_name_max_length','2020-03-06 19:27:49.405473'),(30,'auth','0011_update_proxy_permissions','2020-03-06 19:27:49.427103'),(31,'location','0001_initial','2020-03-06 19:27:49.483315'),(32,'master','0005_auto_20200215_0714','2020-03-06 19:27:49.594734'),(33,'property','0001_initial','2020-03-06 19:27:49.871458'),(34,'property','0002_auto_20200213_0546','2020-03-06 19:27:50.661028'),(35,'property','0003_property_property_lebel','2020-03-06 19:27:50.736848'),(36,'sessions','0001_initial','2020-03-06 19:27:50.771100'),(37,'slider','0001_initial','2020-03-06 19:27:50.821490'),(38,'testimonial','0001_initial','2020-03-06 19:27:50.852387'),(39,'property','0004_remove_property_category','2020-03-07 05:11:27.812759'),(40,'property','0005_property_property_code','2020-03-07 05:25:17.129880'),(41,'property','0006_auto_20200307_0525','2020-03-07 05:26:07.725397'),(42,'property','0007_auto_20200307_0528','2020-03-07 05:29:16.060210'),(43,'PropertySettings','0002_propertytagstype_icon','2020-03-07 08:09:04.699139'),(44,'property','0008_property_totalfloor','2020-03-08 03:29:57.833098'),(45,'Inbox','0002_inbox_status','2020-03-08 10:58:20.201611'),(46,'Inbox','0003_inbox_seentime','2020-03-08 11:57:15.327440'),(47,'Notification','0001_initial','2020-03-10 03:49:17.907937'),(48,'Notification','0002_auto_20200310_0433','2020-03-10 04:33:44.075256'),(49,'About','0002_auto_20200315_0644','2020-03-15 06:45:49.045348'),(50,'Inbox','0004_auto_20200318_0942','2020-03-18 09:43:31.203518'),(51,'About','0003_contactus_faq_testimonial','2020-03-20 14:35:03.861339'),(52,'About','0004_auto_20200320_1458','2020-03-20 14:59:16.191605'),(53,'UserInfo','0004_auto_20200406_0316','2020-04-06 03:17:55.927087'),(54,'CompanyType','0001_initial','2020-04-08 10:39:56.938125'),(55,'UserInfo','0005_auto_20200408_2145','2020-04-08 21:46:48.465019'),(56,'UserInfo','0006_auto_20200409_1807','2020-04-09 18:08:21.543416'),(57,'property','0009_auto_20200414_1435','2020-04-14 14:36:43.787787'),(58,'Wishlist','0001_initial','2020-04-14 17:31:23.235403'),(59,'About','0005_auto_20200416_1003','2020-04-16 10:04:34.438459'),(60,'Advertisement','0003_auto_20200416_1003','2020-04-16 10:04:34.449153'),(61,'PropertySettings','0003_auto_20200416_1003','2020-04-16 10:04:34.458693'),(62,'location','0002_auto_20200416_1003','2020-04-16 10:04:34.471689'),(63,'master','0006_auto_20200416_1003','2020-04-16 10:04:34.484946'),(64,'slider','0002_auto_20200416_1003','2020-04-16 10:04:34.494701'),(65,'default','0001_initial','2020-04-16 10:04:36.253060'),(66,'social_auth','0001_initial','2020-04-16 10:04:36.259137'),(67,'default','0002_add_related_name','2020-04-16 10:04:36.417984'),(68,'social_auth','0002_add_related_name','2020-04-16 10:04:36.424607'),(69,'default','0003_alter_email_max_length','2020-04-16 10:04:36.476750'),(70,'social_auth','0003_alter_email_max_length','2020-04-16 10:04:36.482816'),(71,'default','0004_auto_20160423_0400','2020-04-16 10:04:36.504210'),(72,'social_auth','0004_auto_20160423_0400','2020-04-16 10:04:36.510124'),(73,'social_auth','0005_auto_20160727_2333','2020-04-16 10:04:36.540779'),(74,'social_django','0006_partial','2020-04-16 10:04:36.971160'),(75,'social_django','0007_code_timestamp','2020-04-16 10:04:37.132997'),(76,'social_django','0008_partial_timestamp','2020-04-16 10:04:37.282295'),(77,'social_django','0004_auto_20160423_0400','2020-04-16 10:04:37.315301'),(78,'social_django','0002_add_related_name','2020-04-16 10:04:37.322097'),(79,'social_django','0005_auto_20160727_2333','2020-04-16 10:04:37.328286'),(80,'social_django','0003_alter_email_max_length','2020-04-16 10:04:37.334195'),(81,'social_django','0001_initial','2020-04-16 10:04:37.340210'),(82,'Inbox','0005_inbox_parent_id','2020-04-21 13:46:14.232190'),(83,'About','0006_companyvideo','2020-04-21 15:06:19.001942'),(84,'About','0007_auto_20200421_1545','2020-04-21 15:48:53.493657'),(85,'About','0008_companyvideo_video_poster','2020-04-21 17:21:47.828582'),(86,'About','0009_companyvideo_status','2020-04-22 20:55:44.641524'),(87,'About','0010_auto_20200426_1308','2020-04-26 13:09:52.079214'),(88,'property','0010_property_condition','2020-04-30 17:49:02.980939'),(89,'Advertisement','0004_auto_20200503_2049','2020-05-03 20:51:56.136501');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('03ojg4xtw2x7yhsia4sy4d6sf2ahnobf','NGUyOGUxZDQ0ZWYzMzdmMWExZWI1MTc0NTA3M2RkNjRiN2NjNDU3ZTp7ImZhY2Vib29rX3N0YXRlIjoiT2hkc2s4bWVxSWJzaFRydHBFWUV1SWY0d1I4Z01xMk4iLCJfYXV0aF91c2VyX2lkIjoiMTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjE0NGY3YzNlYzZhYzk2NzAxNjE3ZWVhNDg3OWQ3ODgxMzgxY2FlZmEifQ==','2020-05-01 18:33:16.226543'),('0r5z5cojda6cmxsvmxh7k67sm3qb4bx6','ZWEyMmY4YzhlZDk3Zjg1ODRiODA5OTkyMzgxMGYyMzU1ZGJmOGUyMTp7Il9hdXRoX3VzZXJfaWQiOiIzMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjgxYWRmZGVmZWIzMjBjOTM5NmQyN2I0N2Y3NDUxOGY1ZWQwNDYxMyJ9','2020-06-13 14:46:29.259061'),('12tpb31lysh0j04dw2urqe2gebniwrsy','OGY1OTc3OGJkNzEyZGIyOWY0ZDc0MmYwMGRjZGVjN2ZlM2EzZjA4Njp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJuMU13QUZ4dWFGZEJvVkpkTTJvUDF5dGwyTVc3WW1weiJ9','2020-09-01 17:25:41.837989'),('13xd5ojomgqd4eur6bjn0i133l3y19z4','OTMxMGYwOWU1MTViODcwYzY0Zjg3ZjFjODE4MjVjNTg1Mzg3YTY0Nzp7ImZhY2Vib29rX3N0YXRlIjoiTld1WHdmcEZMYXNSdmZjeHVFaUl5MmRDdXdsQkhnc0cifQ==','2020-07-07 14:22:42.991270'),('1v0dld2wnv889arc6wfbhs2ag3lzvxgf','ZmQ4ODZmZTU0NDNhNmNiOWNjMjRkMzExZjFlOTNhZWJkY2ExOTE2ZTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWEzZTQxMmY4OTlkYzA1YTEwMzkzYjJjMjFmMGEzMzQyM2U3ZDYxNyJ9','2020-03-23 10:14:04.764192'),('28iouozjolvwcn7liussfl9yvn3zv2j7','NjRiYWExODgyM2U5MjBiMjQzMzY2Yjc0NmVmZDk2MWRlYzFmMzg4ZDp7ImZhY2Vib29rX3N0YXRlIjoiazhLQVdVTEl5b0l3ZVd4dDRhRkJiQjVQeU94eGRHa0wifQ==','2020-07-23 07:04:08.325038'),('2dahrvzbwuyr4elb4lqpgcd9p6iim11a','NzZmYjdlOTQ1MjE3MWRhMzQwMDBkYzQ3YmI1OGMxMjczMWZkODUxMTp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiIyemlwYTZ6R2VTb3RoYm10S3p1cEpoMXhyeDFaSmxENiJ9','2020-06-07 02:31:13.166303'),('2megv1i19f86azww4xotjx4nyuek4zp4','NzNmNzNjY2Q3NDNiMTRkOWUxZTY3ODk4NTRkNDYxMDBmNGIzNGRhNDp7ImZhY2Vib29rX3N0YXRlIjoiOW50Y0VLU2dNYmV2eUVtaE1wM29Tc0ZtaVBOc0F5bWIifQ==','2020-06-26 16:01:49.262248'),('3h7jzm3l2u247xa3v5w5arhdrh3yq13b','NDE1ZmU5NzUxY2Q1YWE3NTk0NGQ2NTEzNDVjODBlODkzNGJjMTVlYTp7ImZhY2Vib29rX3N0YXRlIjoiMkw0TnFGOFNTQlVMOW5Fbm4xVUlTWVFNSHk1VnNnRXgifQ==','2020-05-21 10:17:42.382524'),('3l9gub19erciuyren9s8ugbwxcoiclsq','MTE5YjAxNGVlZmY4MmQ1ZTIzM2RlMGU2ZDA0NjlkZGU3ZjI1NDY1NTp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJ2eWxsOWJoSm1IYXlOdnd5d2ptUlRaUWxVSEhXTUJTMyIsIl9hdXRoX3VzZXJfaWQiOiI0MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiJlNmU3ZTg4MDI3OWVjZTg2YWExNDdkYmY1ZWQ3ODJhZmEwNWY2NTg3Iiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZ29vZ2xlLW9hdXRoMiJ9','2020-06-07 10:18:03.298926'),('3m02fzm6ikswb1luihspjyoj3o5i6i2u','MTk2MWJhZmVlN2ZjZTM2NDc4NWUxZTcwYWM3ZDg3MTY5MDAyNmYyYzp7Il9hdXRoX3VzZXJfaWQiOiIxNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmEwMTYzYWE4YTBjYTUxNTU5Yzk5MjJjNDYxOTQwOTRjNzI5MDgxMCJ9','2020-04-04 19:51:42.867551'),('4a3ytfe3zulfd8x8emmld1wc44hjldny','NzQ1Yzk1MDNhZjI4OGQ2Y2JkNTA2MDQxYzI1ZDE2YTE0NDI1OWE4YTp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJTR0M3WThmZ2w1MkVXQnp0NnlhUzl1ZnczZGxGd1FWOSJ9','2020-05-14 12:46:28.383295'),('4r9jvb7lq1232bpb2vjkyi8mv6etpowr','NjFmYzhmZGUwMWE5MDg5ODUzYWU0ZjQzZTE3ZWRkZGRhZmRlMTIyMTp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJlbnB6S040RW5GUkdCZGgyc0J2Q2hjc09lSDZ2Q3dhaSIsIl9hdXRoX3VzZXJfaWQiOiIzOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIyNTc5YTkwNDk4NGY0ZGRmMGM5NmUxYjgwNmRkMGM1ZDY4OGU4OWUyIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZ29vZ2xlLW9hdXRoMiIsImZhY2Vib29rX3N0YXRlIjoib2NNN0xEc1VMa2pIYlA0SUNBUVJpSndYeENFMGhFcU0ifQ==','2020-05-13 08:04:29.626948'),('4rteguvbvtkcipfpt33uexmzhik5p12a','ZjU5Njk4ZmZlMTljMTVlN2I5NTFmYjE5YjQyMzMxZTUyMDA0ZDU1MTp7Il9hdXRoX3VzZXJfaWQiOiIyNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDQwMGQ0NGExZTU0ZWQyNGU2YTc3ODBhZDYwZjIyMWQwOTUxMzZiNyJ9','2020-04-22 21:30:57.892124'),('4yoibn8fj7x2cjuk97p0vuqqgnwr6bpj','MDUxMWE1NmZiNmU4NGNjMWE3OTY5YWZhYjAyYjMzZTg1ZTJiNGQxYzp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTQ0ZjdjM2VjNmFjOTY3MDE2MTdlZWE0ODc5ZDc4ODEzODFjYWVmYSJ9','2020-05-03 15:19:53.646564'),('64lipi561k31bk17qcdd92fi6a2d1afh','NDMwYjFlY2M2MTdkMzFlMDQ3NGVlM2U3OWNjMWE0ZjcwYTEwOWU4ODp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiIyQXZmV2RES1Y5SVAwVzdWVG1DenNxSlQyaUlkQkdFNyJ9','2020-05-14 13:44:25.228118'),('64oj898ntsuwp9yftupmexa2fb86c0ww','ODMxYzdlNDAzNTQwZjk0YWY3NTc1MDRkNjFiNTU1MzhjZmJhZWVlMjp7ImZhY2Vib29rX3N0YXRlIjoicHBFeTZiU3VmOXBwOThGOFZHVENEVndGalVOVzZRTWIifQ==','2020-05-02 13:12:01.739440'),('696lsxtfp68eoiir1nhe4kpgxhzep8c5','YzFjMGI3NGQ5YzI4MzczNDRmMWM5ODkyNzIxYzM5Mjk2MDRiZjcwNjp7ImZhY2Vib29rX3N0YXRlIjoicUdkaDN1cFo3V1Yya1NJUXBGWWJmaEpDNmJ3bGkyVlIifQ==','2020-07-02 05:45:01.142320'),('6f91v0zzfygc22wovkdzaes7g4f3ckow','Mjg3ZDhhNmRiOTc0NTM2Zjc0NTNlMWJkOWRkNDE2ZDk4OGNjOTE4ZTp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJVMzgzVkJVZkNnaWlFTzJ3WUNYOUFvTVVSSTBBMnIxOCJ9','2020-05-30 00:29:48.279992'),('6mlzj2gdv4z3u6q3vb5x2k6nvcrnivvs','YjcxOTI0MThkYmFkOTI3ZDQyZDdhNzZlMTExNjljZTQwMjllNDNlNjp7ImZhY2Vib29rX3N0YXRlIjoic3FLZFhjWGxVbU50eEhWVFZWQllUVHI1OEIxOGFDTHYiLCJfYXV0aF91c2VyX2lkIjoiMzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjM5NDMyMDE1YTBiYWY2NDE2NGQ0YmI4MGQzODVhMTkzM2QwM2RlZTkifQ==','2020-05-13 05:44:11.668602'),('6t4p3o52xvwrz6ix4194kv95gu4x1s4c','YzVjOGMxMzQyNjZlMDZjN2VkNDBkZDRiYmQwM2VkY2Y4MzliM2MyMDp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTI2ZTE0MTZmMDdiNDY0MDQ4YmE4MDkyODNjYmE3YTZhMmE1YjY5NiJ9','2020-03-25 11:42:03.030571'),('6vi8umi4kddy92869qjosk0j8eki65j5','MDUxMWE1NmZiNmU4NGNjMWE3OTY5YWZhYjAyYjMzZTg1ZTJiNGQxYzp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTQ0ZjdjM2VjNmFjOTY3MDE2MTdlZWE0ODc5ZDc4ODEzODFjYWVmYSJ9','2020-05-04 10:04:09.110577'),('7akmozsnfpw99lmiyhvxbv8k2evqmz4v','Zjc3MTVjOWU3M2Y5MDI3YWZkNWQ4NDJlNzM2MDQwZjdkZDE3ZjA4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZjZjMDBmYmRiOTlhOTBjMzAxNTZhMTU1MGQxM2I4ODE5MDRlZDVjIn0=','2020-04-03 12:14:47.086591'),('7b0olhe13736cz8fold94oaie1hoiri8','NWQ4ZTlhMzk5YWUzYzQxN2NkYzY4NWI4OTBlY2Q2N2VlMjZmNzc5MTp7Il9hdXRoX3VzZXJfaWQiOiIzMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzk0MzIwMTVhMGJhZjY0MTY0ZDRiYjgwZDM4NWExOTMzZDAzZGVlOSJ9','2020-05-13 06:35:58.242825'),('7jqrllxtg3s9m1wn30zzkiww23xkvjt1','MDUxMWE1NmZiNmU4NGNjMWE3OTY5YWZhYjAyYjMzZTg1ZTJiNGQxYzp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTQ0ZjdjM2VjNmFjOTY3MDE2MTdlZWE0ODc5ZDc4ODEzODFjYWVmYSJ9','2020-04-30 20:25:56.537587'),('83zi2je5e261y74yi4ggmf7lh6scyqyl','MDUxMWE1NmZiNmU4NGNjMWE3OTY5YWZhYjAyYjMzZTg1ZTJiNGQxYzp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTQ0ZjdjM2VjNmFjOTY3MDE2MTdlZWE0ODc5ZDc4ODEzODFjYWVmYSJ9','2020-05-09 07:15:37.702123'),('8i0g8u1yt2f9lohxix6ie94paqxycvhg','MmNjZGRhOGZiYWUwOWJhMzExNjNjZmMzMzQyNDg1MDNhNzUzYjA2ZDp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJxMTZ2bk1HaVZTOEdNMDhsaHJtaThRQVJXQkdReHR5WCJ9','2020-05-14 12:35:21.347179'),('8iigjfkd2d9u0g40zxiyc4raczp2d3zc','MzAyZTBiN2U4YWUxOWQ4YjA5YTIxZDlkN2FjY2IxZThlNTZiYmM5MTp7fQ==','2020-05-02 07:44:19.936687'),('8joxwgnoyxikhrf30tznxa5jpv64u76q','ZDgwOGUxN2VmNGMwYzYwODczMTNkZGVkZjRlNWZkMjM2OWQ1MzFlNTp7ImZhY2Vib29rX3N0YXRlIjoibmxvQWlEZ2hjQjFpbGFQb1c4eWh0bUZ4YjJYZFdXdUMifQ==','2020-05-02 13:11:51.382407'),('9z01i0f2lzhv3apm0d6vv6tvur3wtsjz','NWYyYzA2ODU0Nzc3NWQyNWQxMWE4OGIyMDk1YTM0Yzg2NTlhY2QxODp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJscDRzUE9FZjZISXRBeDlVN0F1ZHJERDB2TUlxcU5hcSIsIl9hdXRoX3VzZXJfaWQiOiIzOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIyNTc5YTkwNDk4NGY0ZGRmMGM5NmUxYjgwNmRkMGM1ZDY4OGU4OWUyIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZ29vZ2xlLW9hdXRoMiJ9','2020-06-25 09:04:24.800331'),('a7wlsy5dzip854j7bbe0j1q79dxaes18','MDUxMWE1NmZiNmU4NGNjMWE3OTY5YWZhYjAyYjMzZTg1ZTJiNGQxYzp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTQ0ZjdjM2VjNmFjOTY3MDE2MTdlZWE0ODc5ZDc4ODEzODFjYWVmYSJ9','2020-04-30 20:36:38.577735'),('ankkp45xmq53gejc90s533g2cicwudh3','NDdkMTQzNTAyMTNmOGZkOGFiZDUwZmU1YmY4N2JmMTA3NjJjYzc4Zjp7ImZhY2Vib29rX3N0YXRlIjoiOGNwUVFCRE50NnpLMXZrQmczMTBab0lYRkVSdzk5Q1kifQ==','2020-06-12 23:25:07.642645'),('blzhwu83xd8fxzv067oxnvgx7j41rawx','ODBhYTA0NjhjMzFmYThiMzAxOGE3MTgxNTEzM2VhY2JkMTZkZWRkYzp7ImZhY2Vib29rX3N0YXRlIjoiZ2hDZktjMzZWRUU0SlhDUVFmdTJFMjRSZzVHUjR1V0siLCJnb29nbGUtb2F1dGgyX3N0YXRlIjoicFdHVlB6aGtGaWZLQmpzMERqN1ZiSWxuU2ozVkRwSnQifQ==','2020-08-03 22:50:29.497149'),('db6sk0wv4frv3bge0cp5uemlpcoigl98','MmM3ZTI3M2YzZmEwMjQ1ZTZhN2YxODkxOGE4N2NhYmE3Zjc2ZTIyZDp7ImZhY2Vib29rX3N0YXRlIjoiVkpYMkY5N1ZkdzZldjZ0M0hMamFYRFNUR05TdmFId0giLCJfYXV0aF91c2VyX2lkIjoiMzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImRhYTE1Y2RlYjQ2MjczODM5ZjYzNWMwY2JlOTQ1OTc1YTFjODYxMTYiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayJ9','2020-05-02 13:46:51.736316'),('dkow0m27xqihu0grqydlxujabfppg40q','MzQyYTZmYmE0Y2NkODk1ZWE4Y2I3ZTg4MjJkZmFmMDkzNzQ4ZDhhMjp7ImZhY2Vib29rX3N0YXRlIjoiMVdCZ2NjM0xPVWUzREpiVXdPNng5bURzNHlZczVSamIifQ==','2020-06-06 08:51:13.288978'),('doh5py4s0ej983q65plcgszd730rbvtb','Zjc3MTVjOWU3M2Y5MDI3YWZkNWQ4NDJlNzM2MDQwZjdkZDE3ZjA4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZjZjMDBmYmRiOTlhOTBjMzAxNTZhMTU1MGQxM2I4ODE5MDRlZDVjIn0=','2020-06-10 04:08:25.609262'),('dt2zrcawcg7cihw58467h51ydea927ov','MzVhYzlkZTRlYjEzYjA3Zjg2MjYzMTBhNWYzN2MwYTUyZmM1N2U0Nzp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJHNEZ0ZjF5TGZKTDV2VFMzYTZ0Um5hSXR6bTZjdU50NSIsIl9hdXRoX3VzZXJfaWQiOiI0MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiJlNmU3ZTg4MDI3OWVjZTg2YWExNDdkYmY1ZWQ3ODJhZmEwNWY2NTg3Iiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZ29vZ2xlLW9hdXRoMiJ9','2020-05-20 16:14:44.224205'),('g7mokwii42gitpl4qkq5j4kqa4aglyum','Zjc3MTVjOWU3M2Y5MDI3YWZkNWQ4NDJlNzM2MDQwZjdkZDE3ZjA4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZjZjMDBmYmRiOTlhOTBjMzAxNTZhMTU1MGQxM2I4ODE5MDRlZDVjIn0=','2020-03-22 06:12:20.522356'),('gam2pzisrj6fu33xz669n6fugnefotkz','MzAwMzI3OTNiOTRhZGFlMjkzZjA2ZWUzMjFjMzQyNTdjM2MyZmVkZTp7Il9hdXRoX3VzZXJfaWQiOiI0MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTg5YjFkYmE0ZDMwMGNjNGFlMDE3YzY3OThkODBkZmY4YjhmMmQ3ZCJ9','2020-07-10 05:48:05.472150'),('gcnmvz3pntgrvbulei7qzxbaqybpyxao','Zjc3MTVjOWU3M2Y5MDI3YWZkNWQ4NDJlNzM2MDQwZjdkZDE3ZjA4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZjZjMDBmYmRiOTlhOTBjMzAxNTZhMTU1MGQxM2I4ODE5MDRlZDVjIn0=','2020-05-18 15:41:56.453020'),('gqnbstspff72fgygbstulny6vrtq29mg','ZjU5Njk4ZmZlMTljMTVlN2I5NTFmYjE5YjQyMzMxZTUyMDA0ZDU1MTp7Il9hdXRoX3VzZXJfaWQiOiIyNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDQwMGQ0NGExZTU0ZWQyNGU2YTc3ODBhZDYwZjIyMWQwOTUxMzZiNyJ9','2020-05-06 09:16:43.005725'),('gyzg6xcwgreoc01moe1gfu7tmzjeaoqz','OTEzZTAwZjUzZWJmY2QyMzBhZWMwYjBlODY0MzQ4MWEzMjZmZmIzZjp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJ4QnlYNlVJbTNKSllKMGhrODc1MXQyTG5GNGpUVEVmciJ9','2020-08-10 08:02:53.912708'),('h461wpq02ga7jyukchvggmxcjysrr38j','YTE4NTY4NjFjNDY1Y2E1YjM2YmVmOGI0MjQ1Y2M2MmE2MDEwNjI0ZDp7ImZhY2Vib29rX3N0YXRlIjoidG1lYnhvOHJVMDJKcE9VWVViMzA3ZTVyclNVQjE2U1IiLCJfYXV0aF91c2VyX2lkIjoiMzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImRhYTE1Y2RlYjQ2MjczODM5ZjYzNWMwY2JlOTQ1OTc1YTFjODYxMTYiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayJ9','2020-05-02 13:46:17.723855'),('h4ae9r69all72gct8k1x1bea39qu2qv9','ZDhhMDMzYWYxOGE2YzA5Y2UzYjE3ZDI2NDk4ZmE2MjlmOWU4ZjYwMDp7ImZhY2Vib29rX3N0YXRlIjoib0ZBc2dGaFFnZFlZOUs0NTNNRHhzdElrRmU4eDB2TzYifQ==','2020-05-02 13:07:12.732749'),('hf9hx12k2beuiwk7t7zt4ymsmg1rtnbe','ODFkYmNkNzA1NTQwNzYyMzhmM2UxNTY1NjQyM2Q5MWMwY2RkYWU5Nzp7ImZhY2Vib29rX3N0YXRlIjoiQ2FTbkE0S0pYZ1JwT1VlMklEa1ZKWTZ5blNPM1pwVE8ifQ==','2020-05-06 11:56:37.004021'),('hgonazn4avri7kdywwshuwnmvotziagg','MDZjMDQxZTQ1YmJmZmVhODBkOWVhMWVkNTY5OTI4MDQ1MjZhNjczYTp7ImZhY2Vib29rX3N0YXRlIjoiUHBwbE55SUpJQmNxN2pDb1E1a2lPN0xBS2FRNlIxM2kifQ==','2020-05-15 04:11:33.071805'),('j2wkh4s8t8n41ou6hg6mkcns4qxxst8r','MjhlODM2NmM2YTVlMDM0MmFmZjE5NGI2YjMyZDY2NTdjZjVkYjFhYzp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJMRkJ5N3h2V1c2RTVXa1RzOWxSdm1kaTJrRDhpQVhRNyJ9','2020-06-01 08:51:34.098240'),('janv05r25lzbz9moc3rir641ky6drdtx','MDUxMWE1NmZiNmU4NGNjMWE3OTY5YWZhYjAyYjMzZTg1ZTJiNGQxYzp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTQ0ZjdjM2VjNmFjOTY3MDE2MTdlZWE0ODc5ZDc4ODEzODFjYWVmYSJ9','2020-04-30 14:19:44.045333'),('jchk5d3rbs0wlogrn2b6nleifumfsr1g','YzVjOGMxMzQyNjZlMDZjN2VkNDBkZDRiYmQwM2VkY2Y4MzliM2MyMDp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTI2ZTE0MTZmMDdiNDY0MDQ4YmE4MDkyODNjYmE3YTZhMmE1YjY5NiJ9','2020-04-10 20:22:10.507113'),('jpqyyld94od5k76opn9c69xn87febaph','Y2QwYjE1OGM2NzMwNWM5OTA4MDhlZTQ3ZjVkM2MzNTQ3NTdjM2E5ODp7ImZhY2Vib29rX3N0YXRlIjoid1BVeVczUjVrVWZMc0ViNk54RXNwd01xdHpWWFZ6NlUifQ==','2020-05-14 19:07:25.451718'),('k3vhc7o80zvs96ivfj77g19wfpt1t4a9','ZWEyMmY4YzhlZDk3Zjg1ODRiODA5OTkyMzgxMGYyMzU1ZGJmOGUyMTp7Il9hdXRoX3VzZXJfaWQiOiIzMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjgxYWRmZGVmZWIzMjBjOTM5NmQyN2I0N2Y3NDUxOGY1ZWQwNDYxMyJ9','2020-05-28 08:43:50.403406'),('kbqjd51j4vvzynpd7x45rzfb1wbyferd','ZWEyMmY4YzhlZDk3Zjg1ODRiODA5OTkyMzgxMGYyMzU1ZGJmOGUyMTp7Il9hdXRoX3VzZXJfaWQiOiIzMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjgxYWRmZGVmZWIzMjBjOTM5NmQyN2I0N2Y3NDUxOGY1ZWQwNDYxMyJ9','2020-06-14 04:12:21.918802'),('khhqef0bibjqq7e74zvctnh8zpjc7lxl','YzVjOGMxMzQyNjZlMDZjN2VkNDBkZDRiYmQwM2VkY2Y4MzliM2MyMDp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTI2ZTE0MTZmMDdiNDY0MDQ4YmE4MDkyODNjYmE3YTZhMmE1YjY5NiJ9','2020-04-03 22:54:25.705467'),('ko5w3e445xul7n725que2sf64tcqd4c9','Zjc3MTVjOWU3M2Y5MDI3YWZkNWQ4NDJlNzM2MDQwZjdkZDE3ZjA4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZjZjMDBmYmRiOTlhOTBjMzAxNTZhMTU1MGQxM2I4ODE5MDRlZDVjIn0=','2020-04-04 16:08:22.102117'),('ldb09sd0thbvk2bghdy56nkicty9jqc6','NWMzZmY2N2IzMWI2OGYyZTE3ZTBkODI2MWJkNWVmNjgxZGYyMWM2Nzp7ImZhY2Vib29rX3N0YXRlIjoiUzQwYWpHUUlxM2xvU2FBa3FuenpZazdpenVwWTgwS20iLCJnb29nbGUtb2F1dGgyX3N0YXRlIjoiV3UxYkJ4aVlnN05oNmJLQjZFdWhBSk82c1JwUkZxc2sifQ==','2020-06-03 07:44:09.070522'),('ldr3s3d2fi3uu42m3389voaj0irwe3fv','ZWEyMmY4YzhlZDk3Zjg1ODRiODA5OTkyMzgxMGYyMzU1ZGJmOGUyMTp7Il9hdXRoX3VzZXJfaWQiOiIzMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjgxYWRmZGVmZWIzMjBjOTM5NmQyN2I0N2Y3NDUxOGY1ZWQwNDYxMyJ9','2020-08-20 04:58:27.278185'),('loxcjggwut2cfi5gy545qhg05zvxeard','ZWEyMmY4YzhlZDk3Zjg1ODRiODA5OTkyMzgxMGYyMzU1ZGJmOGUyMTp7Il9hdXRoX3VzZXJfaWQiOiIzMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjgxYWRmZGVmZWIzMjBjOTM5NmQyN2I0N2Y3NDUxOGY1ZWQwNDYxMyJ9','2020-07-30 05:48:37.161004'),('m95jus0d3lm36jyfux6q2qfabnu2pj5v','ZWEyMmY4YzhlZDk3Zjg1ODRiODA5OTkyMzgxMGYyMzU1ZGJmOGUyMTp7Il9hdXRoX3VzZXJfaWQiOiIzMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjgxYWRmZGVmZWIzMjBjOTM5NmQyN2I0N2Y3NDUxOGY1ZWQwNDYxMyJ9','2020-07-11 07:14:20.264165'),('msy6ruyp7l3afda5ewq7aro9lacoxuvp','M2ZlNDEyZDZiNGQxMWQ4NGM2MDU0MjRkMDZkZDRmMzdlZTYxNjNhZDp7ImZhY2Vib29rX3N0YXRlIjoiMkRkdkR1UU55UTBmYlhkeXJNMmxLdlhTTUVzcmxTVWYiLCJfYXV0aF91c2VyX2lkIjoiNDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImIxZDAyODU1YTAxNjhiMzZkZDFhOTBkZTJjMmExNDI1MjUwOTAzMWIiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayJ9','2020-09-04 18:43:46.517039'),('ntqcxoglhipwc1uabyxyr9twd4vuz3p8','MGRiNjQ5MzA2YjNlOTcwY2ViYWE3N2QyM2I5MDkzODRkOWVlZWU5Njp7ImZhY2Vib29rX3N0YXRlIjoiQlFWOVphekpLUW03TVMxTVhWNmdkQ3FRbEM5eHFibjIifQ==','2020-05-28 11:43:55.091902'),('nxhe91cnxe9qwqje8fjqfxfdfvc741nl','NWM1MGVkOTZkM2RlYjhkMWE2ZTVkY2I2YzlmOWFkNjg5ZWExMWE2Yzp7ImZhY2Vib29rX3N0YXRlIjoiWXcxNDVqMWZxUlA1Q2tzUXdHVWJjR3J6cjJ2TWI4UXkifQ==','2020-05-12 04:12:24.744256'),('o0ah406byqd0e7dvmutkuifum9g4ecpd','Zjc3MTVjOWU3M2Y5MDI3YWZkNWQ4NDJlNzM2MDQwZjdkZDE3ZjA4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZjZjMDBmYmRiOTlhOTBjMzAxNTZhMTU1MGQxM2I4ODE5MDRlZDVjIn0=','2020-04-03 18:36:34.102233'),('o5d7ar8s0z24zqasw83kodn5rc5yowrm','Zjc3MTVjOWU3M2Y5MDI3YWZkNWQ4NDJlNzM2MDQwZjdkZDE3ZjA4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZjZjMDBmYmRiOTlhOTBjMzAxNTZhMTU1MGQxM2I4ODE5MDRlZDVjIn0=','2020-03-28 06:39:05.226637'),('owoy3su8gx5bl8vkfvikdcpd92zrmfhw','NWQ4ZTlhMzk5YWUzYzQxN2NkYzY4NWI4OTBlY2Q2N2VlMjZmNzc5MTp7Il9hdXRoX3VzZXJfaWQiOiIzMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzk0MzIwMTVhMGJhZjY0MTY0ZDRiYjgwZDM4NWExOTMzZDAzZGVlOSJ9','2020-05-13 06:12:49.504581'),('pccdtgnqyto6w1i902ng1wq0qqpjdeb1','Zjc3MTVjOWU3M2Y5MDI3YWZkNWQ4NDJlNzM2MDQwZjdkZDE3ZjA4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZjZjMDBmYmRiOTlhOTBjMzAxNTZhMTU1MGQxM2I4ODE5MDRlZDVjIn0=','2020-04-06 06:40:53.261720'),('ptzyaw4lv4dkudkw28s4tcf8avia4cxu','MTk2MWJhZmVlN2ZjZTM2NDc4NWUxZTcwYWM3ZDg3MTY5MDAyNmYyYzp7Il9hdXRoX3VzZXJfaWQiOiIxNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmEwMTYzYWE4YTBjYTUxNTU5Yzk5MjJjNDYxOTQwOTRjNzI5MDgxMCJ9','2020-03-30 05:02:39.184074'),('q0pm5s9jcpatb99s9ahrzkui4axmi8fj','ZTk4M2FiOWFiMTRhNThiYTViMzI3NDFiYzBjODY3MDQ2NjYxMjczMjp7ImZhY2Vib29rX3N0YXRlIjoiUVROZUhOM3VQamd6YXNWV0Nwc0ZrM04ySzJMNUpwMnkiLCJnb29nbGUtb2F1dGgyX3N0YXRlIjoibnQ2QVJwWFdKNWhYajBNQmprc09DSU9ES1NtRE1JbnEifQ==','2020-06-03 07:11:57.240124'),('q3i8bemwntrz1xtb1ljwirtj6d1ctzo0','YzVjOGMxMzQyNjZlMDZjN2VkNDBkZDRiYmQwM2VkY2Y4MzliM2MyMDp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTI2ZTE0MTZmMDdiNDY0MDQ4YmE4MDkyODNjYmE3YTZhMmE1YjY5NiJ9','2020-04-08 16:54:52.266233'),('qfls2d47xcquvae4rqpj2uvij1l8uzbk','NTdjOTVmM2YzMWU3NjcxYTQyNGIzMjMzZDAyZDA1ZWNjYjYwYjRhODp7ImZhY2Vib29rX3N0YXRlIjoiZ1pmMldHU3NRU1Ztb0cxUmVaQTZFcjA2cFIzekRiZ3UifQ==','2020-05-07 18:27:40.723993'),('qxz4twgev9r7ufjnvm1dh4e2vu3rbgis','Zjc3MTVjOWU3M2Y5MDI3YWZkNWQ4NDJlNzM2MDQwZjdkZDE3ZjA4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZjZjMDBmYmRiOTlhOTBjMzAxNTZhMTU1MGQxM2I4ODE5MDRlZDVjIn0=','2020-08-10 14:48:00.973297'),('rew93f713w9zpaqmjmcyipo0l5om0pu7','ODNlYjIyYWJmZTJlZDkzZjYwMjE1YWE3ZjZjNWUyNmUzODJlMjNlNzp7Il9hdXRoX3VzZXJfaWQiOiIzMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTFiMGM4MWEyYmNiNWRiZjQyNGFhNmJhOTgxMjJkOWEzOWExODhkMCJ9','2020-05-20 12:25:31.873401'),('rob62amp85gutdh64vwcbdwobr0m01rt','Zjc3MTVjOWU3M2Y5MDI3YWZkNWQ4NDJlNzM2MDQwZjdkZDE3ZjA4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZjZjMDBmYmRiOTlhOTBjMzAxNTZhMTU1MGQxM2I4ODE5MDRlZDVjIn0=','2020-03-26 04:38:17.213556'),('s2bzv0o0ecuwt29v83tl2okgxyf2xqrv','Zjc3MTVjOWU3M2Y5MDI3YWZkNWQ4NDJlNzM2MDQwZjdkZDE3ZjA4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZjZjMDBmYmRiOTlhOTBjMzAxNTZhMTU1MGQxM2I4ODE5MDRlZDVjIn0=','2020-04-06 06:40:14.909742'),('s7j4ex0uxuezwq9x1lxfp9zn5kps75x4','Zjc3MTVjOWU3M2Y5MDI3YWZkNWQ4NDJlNzM2MDQwZjdkZDE3ZjA4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZjZjMDBmYmRiOTlhOTBjMzAxNTZhMTU1MGQxM2I4ODE5MDRlZDVjIn0=','2020-04-30 19:19:05.289565'),('sd7qebfhonbho6k1pg9n1ybnnb47wdq6','YTU1YTU4N2ZlYzE1ZTRlZGMyMjE2ZTU1MTAyYjAxY2JkNjE4MmFiMjp7ImZhY2Vib29rX3N0YXRlIjoiMWNNdm5pZExtZ2J1ZWJESGFSNktucDREN2NoVXJBVEciLCJnb29nbGUtb2F1dGgyX3N0YXRlIjoic3hXdUhrdkNDQzhXM2diOXZuamd3dnUxYW05Tjg0TFEifQ==','2020-07-06 10:36:11.260899'),('t3r0wr61j8q049g4m5rjmufq3nv0okxc','OTljOWU5ZDBhODk4NTFiMDYwOTQyZjQxZTQ5OWQ2ODBjMDdmMGM3MDp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODE0MmFiNWNkYWFmOGI3ZTlmODZhNDVjYWZiZWQ3NDc5ZWE5MTQ0MyJ9','2020-03-22 09:53:59.589072'),('t6sngs8fpz9b4s3755d9qyhhboluei0v','ODRkNjFlMzdmZWM5NTc1NmQ3NmE0MmFlMjkxZWFlNTk0N2ExMTZkYjp7ImZhY2Vib29rX3N0YXRlIjoiT1JsNUlmdUk1aTFGaUs5MGc0Z1Y3YjR1QUhqOFBUTGgifQ==','2020-06-19 15:17:14.084141'),('tf5k3x5fk19sgssixew84fprrvcevtbu','NGRjYjM3OWE1Y2FjMjU5N2MwOWVjMjUyNWExNTFmOGJlODM2MWM4ZTp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJ5Q0RJUE5seVRNd05tektKZERkakI2bVhpa0hRT0dFdyJ9','2020-05-12 12:12:40.549963'),('ti0p0axb68qdlse8s4r16dr7kmcj3qty','YTRiNTUyYjg5NzFmMDQ5MzZiNTljODhiMzhiMDA4NTUwZWU0YzM5ODp7ImZhY2Vib29rX3N0YXRlIjoiQmRxSEJQYXVyMGdJaHA3bFN4YmMxdHdGVEsxQTNQaHAifQ==','2020-06-06 21:55:13.916944'),('tvwyrn2oqjtf6qn8okn2j75llygc3zok','Yzc2NDEwNDdkNThiMWU3MTYzY2Q3MTAzYzU1MWQ3ZmU4ZTI0ZmQyNjp7ImZhY2Vib29rX3N0YXRlIjoibkgyd3hOdUFVdUY5UDZST2E2Y0ZIS2JRWXgxeTNYY1QifQ==','2020-08-06 23:19:21.329828'),('tw81fur23uez6xu53z7sdjaolt1h6rbl','OTA4NDJkNDJjYzE0NDc4NGEyMjQ5MzMwZGFjYjRmMzAzOTA2ODgyYjp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMWY5OTA1ZjI4ZGNiYmQ3NGQ2NTFkYzRjNjRmMTZhNjAyMzk3YzU0YSJ9','2020-05-28 09:16:12.675723'),('twzateq6hijixe6oes792xkb1f274faa','NzJlYThiZjYzYTBiZDMyZDcwMjQ5ZDk3MDAyZjg5ZDUyZGFmMWU1Mjp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJsQ1JZUW9oNzZJWUxxNXZiYWNVb1V1bUhmTldOUmdkVCJ9','2020-08-22 03:23:04.293544'),('ucez6cv1m8y6nxew9rhj69hpmrap0uv3','Zjc3MTVjOWU3M2Y5MDI3YWZkNWQ4NDJlNzM2MDQwZjdkZDE3ZjA4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZjZjMDBmYmRiOTlhOTBjMzAxNTZhMTU1MGQxM2I4ODE5MDRlZDVjIn0=','2020-04-01 06:09:09.388990'),('utpjkwi6ftwlo70ajgs91vzu1uh8d6zw','MTc4YzU1MzkzMGUyYzI2ODcyN2Q0N2JiNDUyOWIxYWJjNTU0MTA3Yjp7ImZhY2Vib29rX3N0YXRlIjoiS1l1VDk4bWxMaElWTjd1ZEg2a3NJd1pYVjR4dXA0MG0ifQ==','2020-08-06 03:55:29.099645'),('vdge6eymxkezxnaw53m350ywbohqlrgf','Mzg1MWRkNWI1NjE1ZDVlZTEwZGU1MGM4NDEwMGNlMjk2ZWVjMGZmZDp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJZT2lnZThoMTFjRjdKYTFJYnhqdmN1aWo2NHFRVlBuMSJ9','2020-08-22 03:07:21.148749'),('vttspyu9fkqdpfov8vv6j3gczq6u8jf7','ZjFjMGJhNDg4NzE1OTU0NzliNWMwNjFlYmI0ZTBmYmEzMjNmMjQxZDp7ImZhY2Vib29rX3N0YXRlIjoiQVNlZ0RVVTRmdVZwNWFKdUpmbmdvd0VDdTI3NktNVHQifQ==','2020-07-16 16:58:17.428098'),('w9t74kww4qtklpnm8obpuykoev8uiuvt','Zjc3MTVjOWU3M2Y5MDI3YWZkNWQ4NDJlNzM2MDQwZjdkZDE3ZjA4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZjZjMDBmYmRiOTlhOTBjMzAxNTZhMTU1MGQxM2I4ODE5MDRlZDVjIn0=','2020-04-02 07:41:36.696821'),('x5ww9behgr9lfu7cze6u629uk8jxgqrg','OTdhMzEzMjZmNjg1Njg4Njc5NDJkMzUyZTY5MjBmN2E2OGI3MzgwYzp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJqdWJReVRNS1BYbEI4Tmx0ZUwwZ3lQUDNoaW5Od3JkOCJ9','2020-06-04 01:41:32.047652'),('x9bprnfl7hw7n8aab27fkmmzvd3b9vv2','MjYwY2MyYjFjNzM1YzI2ZTg1NjNiNjdiYTZmMGExZWFlYzBlOGU1Yjp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJRN2hpWEx4SUk4cmdKS3FCNlNqRVFyQVh3ZHNIb2ZQUiJ9','2020-05-15 04:13:37.578452'),('xe2uj1a4ydxi9md4ul3wid4jkbqb4mdg','ZWEyMmY4YzhlZDk3Zjg1ODRiODA5OTkyMzgxMGYyMzU1ZGJmOGUyMTp7Il9hdXRoX3VzZXJfaWQiOiIzMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjgxYWRmZGVmZWIzMjBjOTM5NmQyN2I0N2Y3NDUxOGY1ZWQwNDYxMyJ9','2020-05-30 11:38:48.570824'),('xp5j42ahr76iib5n8w4ccifnazasx81o','MTkwY2U0NTljYjQ4ODliYzc4ZjQ5ZmYyMDVjMTUzMWUwMzFlNTBiZTp7ImZhY2Vib29rX3N0YXRlIjoiYTJsU0hnNlZRRXAwUUgzU0FGN1NBQWRBTUJzU3JOUm4iLCJfYXV0aF91c2VyX2lkIjoiMzgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWxfY29yZS5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjI1NzlhOTA0OTg0ZjRkZGYwYzk2ZTFiODA2ZGQwYzVkNjg4ZTg5ZTIiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayJ9','2020-05-14 10:38:22.124725'),('y5kk5plrfx1ej4l7fkvarykofld8jlbt','Zjc3MTVjOWU3M2Y5MDI3YWZkNWQ4NDJlNzM2MDQwZjdkZDE3ZjA4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZjZjMDBmYmRiOTlhOTBjMzAxNTZhMTU1MGQxM2I4ODE5MDRlZDVjIn0=','2020-05-26 08:16:43.379592'),('yo2jatsu42l0wxitahsw0immvowe7q8k','Y2ViYjI3NDZkNjgyMzhiM2JjMTU4YmFmYWU0MWFkYjI2NWNjYjUzMDp7ImZhY2Vib29rX3N0YXRlIjoiQ29GeU5OMXZGRTNzazBaTHFVbGgxd0xJbHB2RXpTcXoifQ==','2020-06-04 01:36:31.745811'),('ytvjd09p4chq1iq2ldxv0esjtlhpci4e','MWQxZDc2OTljOWEzZjY3ODVmMzM5ZTIzMjNkYWMwMjAxOTM2ODNlYTp7Il9wYXNzd29yZF9yZXNldF90b2tlbiI6IjVmci03OTk3NDA3NTI5MTNjNjg5YzBjMiJ9','2020-05-02 12:19:39.419324'),('yvnoxywqe27o4fo3c9yj3vtcfta9egqy','NDY1ZWI1MjkwZWFkNDNhNTI5ZDdhMjY4N2MxZGYwZGZlZjY2NmJlNDp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJiQjdOTlh0MkpuMFBQQ1Q1UzJqRjlSUjYxY05YeUJLNiJ9','2020-05-06 11:56:45.997375'),('z6mpsudymmll9vzm41tsmztqmzdc8xmk','YzVjOGMxMzQyNjZlMDZjN2VkNDBkZDRiYmQwM2VkY2Y4MzliM2MyMDp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTI2ZTE0MTZmMDdiNDY0MDQ4YmE4MDkyODNjYmE3YTZhMmE1YjY5NiJ9','2020-04-11 14:49:36.553107'),('z85f7b0sa98gf30apv9uqymf8ez24syd','YzA3OGUyMTE0M2U4MDJjMTQ5MDgzYTQzY2IzMTEzY2M3YzNjYTQ5Mjp7Il9wYXNzd29yZF9yZXNldF90b2tlbiI6IjVmZi00MTZmNmQ4MzBlYzgzOWQ5OWVjNCJ9','2020-04-20 06:15:49.301691'),('za8yjqcbf8ikh5uo0ybwtfod43top4jv','ZWEyMmY4YzhlZDk3Zjg1ODRiODA5OTkyMzgxMGYyMzU1ZGJmOGUyMTp7Il9hdXRoX3VzZXJfaWQiOiIzMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjgxYWRmZGVmZWIzMjBjOTM5NmQyN2I0N2Y3NDUxOGY1ZWQwNDYxMyJ9','2020-07-26 07:52:26.016371'),('zb5k5ectbswe69r8tdy9kx0g49jpn9ix','MzM5MDE1ZWE0ZTFkZjgxMmZjMmUxMWMxN2ZmM2Y0Mjk2NmRkZmZjYTp7ImZhY2Vib29rX3N0YXRlIjoiUnNkY2F2MHRIaVJWVm9mT2MzVktKMmZONGg4ZHFncFYifQ==','2020-07-14 21:04:39.041719'),('zvufney4d5fui1nbm2cp5n17edtv2vgm','OTQ0MGFmYzNiYjY4NWUyMDAzZmUyNDM5NGNlNGUxMjJlN2M4MDMwMjp7ImZhY2Vib29rX3N0YXRlIjoienN3R2VscUdBdXNES0ZxNHdRTlB1em15aE5nWGRSbkgifQ==','2020-07-31 01:57:01.140988');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_area`
--

DROP TABLE IF EXISTS `location_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(200) NOT NULL,
  `city_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `location_area_city_id_id_52110307_fk_location_city_id` (`city_id_id`),
  CONSTRAINT `location_area_city_id_id_52110307_fk_location_city_id` FOREIGN KEY (`city_id_id`) REFERENCES `location_city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_area`
--

LOCK TABLES `location_area` WRITE;
/*!40000 ALTER TABLE `location_area` DISABLE KEYS */;
INSERT INTO `location_area` VALUES (1,'Tikatoli',1),(2,'Old-Dhaka',1),(3,'Motijheel',1),(4,'Bashundhara (R/A)',1),(5,'North-Badda',1),(6,'Gulshan',1),(7,'Baridhara',1),(8,'Dhanmondi',1),(9,'Uttara',1),(10,'Lalmatia',1),(11,'Mohammadpur',1),(12,'Aftabnagar',1),(13,'Purbachal',1),(14,'Banasree',1);
/*!40000 ALTER TABLE `location_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_city`
--

DROP TABLE IF EXISTS `location_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_city`
--

LOCK TABLES `location_city` WRITE;
/*!40000 ALTER TABLE `location_city` DISABLE KEYS */;
INSERT INTO `location_city` VALUES (1,'Dhaka'),(2,'Chittagong');
/*!40000 ALTER TABLE `location_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_benefits`
--

DROP TABLE IF EXISTS `master_benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_benefits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_benefits`
--

LOCK TABLES `master_benefits` WRITE;
/*!40000 ALTER TABLE `master_benefits` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_master`
--

DROP TABLE IF EXISTS `master_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(100) NOT NULL,
  `fb` varchar(200) NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `insta` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  `title` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(100) NOT NULL,
  `end_time` time(6) NOT NULL,
  `start_time` time(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_master`
--

LOCK TABLES `master_master` WRITE;
/*!40000 ALTER TABLE `master_master` DISABLE KEYS */;
INSERT INTO `master_master` VALUES (1,'assets/uploads/setup/101.png','https://www.facebook.com/jamsproperty.com','https://www.youtube.com/channel/UCuno8JW0lkVTbzyxy_tTWeA?view_as=subscriber','','01880088226, 01880088227, 01880088228, 01880088229','info@jamsproperty.com','Adept N.R Complex, Ka 5/2 (6th Floor), Bashandhara Road, Vatara, Baridhara Dhaka-1229','Contact Us','Dhaka','Bangladesh','18:00:00.000000','10:00:00.000000');
/*!40000 ALTER TABLE `master_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_role`
--

DROP TABLE IF EXISTS `master_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_role`
--

LOCK TABLES `master_role` WRITE;
/*!40000 ALTER TABLE `master_role` DISABLE KEYS */;
INSERT INTO `master_role` VALUES (1,'OWNER'),(2,'BUILDER'),(3,'AGENT'),(4,'Admin');
/*!40000 ALTER TABLE `master_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_safetytips`
--

DROP TABLE IF EXISTS `master_safetytips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_safetytips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_safetytips`
--

LOCK TABLES `master_safetytips` WRITE;
/*!40000 ALTER TABLE `master_safetytips` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_safetytips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_termscondition`
--

DROP TABLE IF EXISTS `master_termscondition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_termscondition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_termscondition`
--

LOCK TABLES `master_termscondition` WRITE;
/*!40000 ALTER TABLE `master_termscondition` DISABLE KEYS */;
INSERT INTO `master_termscondition` VALUES (2,'The Property in agreement of 3 months');
/*!40000 ALTER TABLE `master_termscondition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_facilities`
--

DROP TABLE IF EXISTS `property_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_facilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Property_id` int(11) NOT NULL,
  `ficilities_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_facilities_Property_id_1a9afac2_fk_property_property_id` (`Property_id`),
  KEY `property_facilities_ficilities_id_a60ca075_fk_PropertyS` (`ficilities_id`),
  CONSTRAINT `property_facilities_Property_id_1a9afac2_fk_property_property_id` FOREIGN KEY (`Property_id`) REFERENCES `property_property` (`id`),
  CONSTRAINT `property_facilities_ficilities_id_a60ca075_fk_PropertyS` FOREIGN KEY (`ficilities_id`) REFERENCES `PropertySettings_facilities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1265 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_facilities`
--

LOCK TABLES `property_facilities` WRITE;
/*!40000 ALTER TABLE `property_facilities` DISABLE KEYS */;
INSERT INTO `property_facilities` VALUES (544,2,1),(545,2,2),(546,2,3),(547,2,4),(548,2,7),(549,4,1),(550,4,2),(551,4,3),(552,4,4),(553,4,7),(708,7,1),(709,7,2),(710,7,3),(711,7,4),(716,9,1),(717,9,2),(718,9,3),(719,9,4),(720,9,7),(721,8,1),(722,8,2),(723,8,3),(724,8,4),(725,10,1),(726,10,2),(727,10,3),(728,10,4),(733,11,1),(734,11,2),(735,11,3),(736,11,4),(737,12,1),(738,12,2),(739,12,3),(740,12,4),(741,13,1),(742,13,2),(743,13,3),(744,13,4),(745,14,1),(746,14,2),(747,14,3),(748,14,4),(749,15,1),(750,15,2),(751,15,3),(752,15,4),(757,16,1),(758,16,2),(759,16,3),(760,16,4),(761,17,1),(762,17,2),(763,17,3),(764,17,4),(769,18,1),(770,18,2),(771,18,3),(772,18,4),(773,19,1),(774,19,2),(775,19,3),(776,19,4),(777,20,1),(778,20,2),(779,20,3),(780,20,4),(781,21,1),(782,21,2),(783,21,3),(784,21,4),(785,22,1),(786,22,2),(787,22,3),(788,22,4),(789,23,1),(790,23,2),(791,23,3),(792,23,4),(793,24,1),(794,24,2),(795,24,3),(796,24,4),(797,25,1),(798,25,2),(799,25,3),(800,25,4),(801,26,1),(802,26,2),(803,26,3),(804,26,4),(805,27,1),(806,27,2),(807,27,3),(808,27,4),(813,28,1),(814,28,2),(815,28,3),(816,28,4),(817,29,1),(818,29,2),(819,29,3),(820,29,4),(821,30,1),(822,30,2),(823,30,3),(824,31,1),(825,31,2),(826,31,3),(827,31,4),(833,39,1),(834,39,2),(835,39,3),(836,39,4),(837,39,5),(838,38,1),(839,38,2),(840,37,1),(841,37,2),(842,37,3),(843,37,4),(844,36,1),(845,36,2),(846,36,3),(847,36,4),(848,36,5),(849,35,1),(850,35,2),(851,35,3),(852,35,4),(853,34,1),(854,34,2),(855,34,3),(856,34,4),(857,33,1),(858,33,2),(859,33,3),(860,33,4),(861,32,1),(862,32,2),(863,32,3),(864,32,4),(873,40,1),(874,40,2),(875,40,3),(876,40,4),(877,41,1),(878,41,2),(879,41,3),(880,42,1),(881,42,2),(882,42,3),(883,42,4),(884,43,1),(885,43,2),(886,43,3),(887,43,4),(888,44,1),(889,44,2),(890,44,3),(891,44,4),(892,45,1),(893,45,2),(894,45,3),(895,45,4),(896,46,1),(897,46,2),(898,46,3),(899,46,4),(900,47,1),(901,47,2),(902,47,3),(903,47,4),(904,48,1),(905,48,2),(906,48,3),(907,48,4),(908,49,1),(909,49,2),(910,49,3),(911,49,4),(912,50,1),(913,50,2),(914,50,3),(915,50,4),(921,51,1),(922,51,2),(923,51,3),(924,51,4),(925,51,5),(958,6,1),(959,6,2),(960,6,3),(961,6,4),(962,6,5),(966,54,1),(967,54,2),(968,54,3),(969,54,4),(970,55,1),(971,55,2),(972,55,3),(973,55,4),(974,56,1),(975,56,2),(976,56,3),(977,56,4),(978,56,5),(979,56,6),(980,57,1),(981,57,2),(982,57,3),(983,57,4),(984,57,5),(985,58,1),(986,58,2),(987,58,3),(988,58,4),(989,58,5),(990,59,1),(991,59,2),(992,59,3),(993,59,4),(994,59,5),(995,60,1),(996,60,2),(997,60,3),(998,60,4),(999,60,5),(1000,61,1),(1001,61,2),(1002,61,3),(1003,61,4),(1004,61,5),(1005,62,1),(1006,62,2),(1007,62,3),(1008,62,4),(1009,62,5),(1011,63,1),(1035,66,1),(1036,66,2),(1037,66,3),(1038,66,4),(1039,66,5),(1040,67,1),(1041,67,2),(1042,67,3),(1043,67,4),(1044,67,5),(1045,68,1),(1046,68,2),(1047,68,3),(1048,68,4),(1049,68,5),(1050,69,1),(1051,69,2),(1052,69,3),(1053,69,4),(1054,69,5),(1055,70,1),(1056,70,2),(1057,70,3),(1058,70,4),(1059,70,5),(1060,71,1),(1061,71,2),(1062,71,3),(1063,71,4),(1064,71,5),(1069,73,1),(1070,73,2),(1071,73,3),(1072,73,4),(1082,75,1),(1083,75,2),(1084,75,3),(1085,75,4),(1086,75,5),(1087,76,1),(1088,76,2),(1089,76,3),(1090,76,4),(1091,76,5),(1092,77,1),(1093,77,2),(1094,77,3),(1095,77,4),(1096,77,5),(1097,78,1),(1098,78,2),(1099,78,3),(1100,78,4),(1101,78,5),(1102,79,1),(1103,79,2),(1104,79,3),(1105,79,4),(1106,79,5),(1107,80,1),(1108,80,2),(1109,80,3),(1110,80,4),(1111,80,5),(1112,81,1),(1113,81,2),(1114,81,3),(1115,81,4),(1116,81,5),(1127,88,1),(1128,88,2),(1129,88,3),(1130,88,4),(1131,88,5),(1181,94,1),(1182,94,2),(1183,94,3),(1184,94,4),(1185,94,5),(1186,94,6),(1187,94,7),(1188,93,1),(1189,93,2),(1190,93,3),(1191,93,4),(1192,93,5),(1193,93,6),(1194,93,7),(1195,92,1),(1196,92,2),(1197,92,3),(1198,92,4),(1199,92,5),(1200,92,6),(1201,92,7),(1202,91,1),(1203,91,2),(1204,91,3),(1205,91,4),(1206,91,5),(1207,91,6),(1208,91,7),(1209,90,1),(1210,90,2),(1211,90,3),(1212,90,4),(1213,90,5),(1214,90,6),(1215,90,7),(1244,95,1),(1245,95,2),(1246,95,3),(1247,95,4),(1248,95,5),(1249,95,6),(1250,95,7),(1258,96,1),(1259,96,2),(1260,96,3),(1261,96,4),(1262,96,5),(1263,96,6),(1264,96,7);
/*!40000 ALTER TABLE `property_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_property`
--

DROP TABLE IF EXISTS `property_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Property_title` varchar(200) NOT NULL,
  `Thumbnail` varchar(100) NOT NULL,
  `Price` double NOT NULL,
  `Size` double NOT NULL,
  `Purpose` varchar(20) NOT NULL,
  `Property_type` varchar(20) NOT NULL,
  `Bed` int(11) NOT NULL,
  `Bath` int(11) NOT NULL,
  `Belcony` int(11) NOT NULL,
  `Car_parking` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Posted_time` datetime(6) NOT NULL,
  `Description` longtext NOT NULL,
  `Area_id` int(11) NOT NULL,
  `City_id` int(11) NOT NULL,
  `Facing_id` int(11) NOT NULL,
  `Posted_by_id` int(11) NOT NULL,
  `Property_tag_type_id` int(11) NOT NULL,
  `Unit_id` int(11) NOT NULL,
  `Property_lebel` varchar(20) NOT NULL,
  `Property_code` varchar(20) NOT NULL,
  `totalFloor` varchar(20) NOT NULL,
  `Holding_no` varchar(255) DEFAULT NULL,
  `Road_no` varchar(255) DEFAULT NULL,
  `Condition` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `property_property_Property_code_638e379c_uniq` (`Property_code`),
  KEY `property_property_Area_id_474235ac_fk_location_area_id` (`Area_id`),
  KEY `property_property_City_id_523cea8c_fk_location_city_id` (`City_id`),
  KEY `property_property_Facing_id_2055bd20_fk_PropertyS` (`Facing_id`),
  KEY `property_property_Posted_by_id_5c1e4cc6_fk_auth_user_id` (`Posted_by_id`),
  KEY `property_property_Property_tag_type_id_e1f0e94f_fk_PropertyS` (`Property_tag_type_id`),
  KEY `property_property_Unit_id_666e2b5b_fk_PropertySettings_unit_id` (`Unit_id`),
  CONSTRAINT `property_property_Area_id_474235ac_fk_location_area_id` FOREIGN KEY (`Area_id`) REFERENCES `location_area` (`id`),
  CONSTRAINT `property_property_City_id_523cea8c_fk_location_city_id` FOREIGN KEY (`City_id`) REFERENCES `location_city` (`id`),
  CONSTRAINT `property_property_Facing_id_2055bd20_fk_PropertyS` FOREIGN KEY (`Facing_id`) REFERENCES `PropertySettings_facing` (`id`),
  CONSTRAINT `property_property_Posted_by_id_5c1e4cc6_fk_auth_user_id` FOREIGN KEY (`Posted_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `property_property_Property_tag_type_id_e1f0e94f_fk_PropertyS` FOREIGN KEY (`Property_tag_type_id`) REFERENCES `PropertySettings_propertytagstype` (`id`),
  CONSTRAINT `property_property_Unit_id_666e2b5b_fk_PropertySettings_unit_id` FOREIGN KEY (`Unit_id`) REFERENCES `PropertySettings_unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_property`
--

LOCK TABLES `property_property` WRITE;
/*!40000 ALTER TABLE `property_property` DISABLE KEYS */;
INSERT INTO `property_property` VALUES (2,'Grandeur Villa','assets/uploads/property/thumbnail/zeroinchinteriorsltd-residence-whitebalance-drawingroo_hpenQ92.jpg',60000,2500,'2','1',4,5,3,3,'Block C, house no 51,','1','2020-03-21 19:59:30.212673','A beautiful villa with a serene environment in a good and quite neighbourhood.',4,1,2,14,3,1,'1st floor','b16854cd-c2b3-4a7f-8','G+1',NULL,NULL,'New'),(4,'The Grace','assets/uploads/property/thumbnail/zeroinchinteriorsltd-residence-whitebalance-drawingroo_qaRKsJ2.jpg',70000,3500,'2','1',4,6,4,3,'Block C, house no 21,','1','2020-03-21 19:59:45.733963','A beautiful villa with a serene environment in a good and quite neighbourhood.',3,1,2,14,3,1,'2nd floor','6cb4199a-0ac8-4d87-8','G+1',NULL,NULL,'New'),(6,'Water Garden','assets/uploads/property/thumbnail/1_SlQBxcM.jpg',40000,1800,'2','1',3,3,3,1,'Bashundhara Block-A, ','2','2020-04-14 15:24:50.610013','Land Details- 5 Katha\r\nWater Garden, Bed Room-03, Dining, Drawing.\r\n',4,1,2,15,3,1,'5th floor','80d0896c-53ce-47f3-8','G+9',' House No-168, Flat  No-b5','Road No-4/A','New'),(7,'Ready Flat','assets/uploads/property/thumbnail/1_v4vVO4X.jpg',45000,3000,'2','1',4,3,4,1,'Bashundhara, R-10,  H-277/A, F-3,  B-A','1','2020-03-22 16:56:37.263090','Ready Flat-Bed Room-4, Batha-03, varenda-4, Drawing, Dining\r\n',4,1,1,15,3,1,'3rd  floor','b7647a02-ca70-4d9e-b','G+7',NULL,NULL,'New'),(8,'Ready Flat','assets/uploads/property/thumbnail/1_2cBsvMQ.jpg',32000,1520,'2','1',3,4,3,1,'Bashundhara,R-09,H-254-55, F-4,  B-A, ','1','2020-03-22 17:43:57.513174','Ready Flat-Bed Room-3, Bath-04, varenda-03, Drawing, Dining\r\n',4,1,1,15,3,1,'4th floor','b3f136fb-fbff-4d39-a','G+9',NULL,NULL,'New'),(9,'Full Furnished','assets/uploads/property/thumbnail/1_8IQfCOA.jpg',76000,1500,'2','1',3,4,3,1,'Gulshan, R-86, H-7/B,F-B6, ','1','2020-03-22 17:42:23.354821','Area-Gulshan 02,\r\nfull furnished, 3 bed, 4 bath, Drawing, Dining servent Bed\r\n\r\n',6,1,2,15,3,1,'6th floor','87fe081c-93ff-4803-9','G+10',NULL,NULL,'New'),(10,'Residential','assets/uploads/property/thumbnail/1_axj2sLZ.jpg',46000,5,'2','1',3,4,3,1,'Bashundhara,R-6, H-291, F-3, , B-B, ','1','2020-03-22 17:51:01.413231','Bed Room-3, Bath-4, Drawing,Dining\r\n',4,1,1,15,3,2,'3rd floor','d16e7c00-cd86-46a2-b','0',NULL,NULL,'New'),(11,'Residential','assets/uploads/property/thumbnail/1_fWGEo8M.jpg',50000,2500,'2','1',4,4,2,1,'Bashundhara, R-07,H-139,F-1, , B-D','1','2020-03-22 17:52:38.441011','Land Details- 5 Katha\r\nBed Room-4, Bath-4, Drawing, Dinning, Veranda-2\r\n',4,1,1,15,3,1,'1st floor','a8851426-dced-4060-8','G+6',NULL,NULL,'New'),(12,'Residential','assets/uploads/property/thumbnail/1_uUvS6LV.jpg',36500,1800,'2','1',3,3,2,1,'Bashundhara,R-7,H-249,F-1, , B-D','1','2020-03-22 17:56:04.136873','Land Details- 5 Katha\r\nBed-3,Bath-3, Drawing, Dinning\r\n',4,1,1,15,3,1,'1st floor','c0cfa904-d02e-46f6-b','G+9',NULL,NULL,'New'),(13,'Residential','assets/uploads/property/thumbnail/1_OCEqNUp.jpg',18000,1250,'2','1',1,1,1,1,'Bashundhara, R-07,H-234, F-5, B-D','1','2020-03-22 17:56:45.148878','Bed-1,Bath-1\r\n',4,1,2,15,3,1,'5th floor','506a5450-dca3-4203-b','G+8',NULL,NULL,'New'),(14,'Residential','assets/uploads/property/thumbnail/1_7Hzuos3.jpg',60000,2700,'2','1',4,4,3,1,'Bashundhara, F-3, B-D','1','2020-03-22 18:10:08.147927','Land Details- 5 Katha\r\nBed-4,Bath-4,Veranda-3\r\n',4,1,2,15,3,1,'3rd floor','f4bfb17e-fdae-469e-9','G+6',NULL,NULL,'New'),(15,'Residential','assets/uploads/property/thumbnail/1_y6mnByR.jpg',30000,1445,'2','1',3,4,2,1,'Bashundhara, F-6, H-207, B-B, R-03','1','2020-03-22 18:10:51.432746','Land Details- 7.5 Katha\r\nBed-3,Bath-4,Drawing,Dining,Veranda-2 & Other facility\r\n',4,1,4,15,3,1,'6th floor','19f83eab-54eb-4943-8','G+6',NULL,NULL,'New'),(16,'Residential','assets/uploads/property/thumbnail/1_XcZERUx.jpg',43500,1800,'2','1',3,4,3,1,'Bashundhara, H-215, F-7, B-B, ','1','2020-03-22 18:13:39.673020','Land Details- 7.5 Katha\r\nBed-3,Bath-4,Drawing,Dining, & Other facility\r\n',4,1,3,15,3,1,'7th floor','f8957218-6855-4027-b','G+7',NULL,NULL,'New'),(17,'Residential','assets/uploads/property/thumbnail/1_iXNLZGx.jpg',115000,1800,'3','1',3,4,3,1,' Bashundhara, H-215, F-2, B-B','1','2020-03-22 18:19:07.046627','Land Details- 7\r\nBed-3,Bath-4,Drawing,Dining, & Other facility\r\n',4,1,3,15,3,1,'2nd floor','64c615c4-65b7-41f8-8','G+7',NULL,NULL,'New'),(18,'Residential','assets/uploads/property/thumbnail/1_BPaiPTS.jpg',44000,10,'2','1',3,4,3,1,'Bashundhara, R-6/B, H-297, F-1, B-B','1','2020-03-22 18:21:36.910080','Bed-3,Bath-4,Drawing,Dining,Veranda-3 & Other facility\r\n',4,1,2,15,3,2,'1st floor','3f310528-decf-4906-8','G+9',NULL,NULL,'New'),(19,'Residential','assets/uploads/property/thumbnail/1_EkIOUWZ.jpg',63000,2200,'2','1',3,3,3,1,'Bashundhara, R-05, H-84, F-3, B-D','1','2020-03-22 18:22:36.732355','Land Details- 5 Katha\r\nBed-3,Bath-3,Drawing, Dinning\r\n',4,1,1,15,3,1,'3rd floor','6620e5ca-24fe-486e-9','G+6',NULL,NULL,'New'),(20,'Residential','assets/uploads/property/thumbnail/1_43G19oX.jpg',27000,5,'2','1',3,3,2,1,'Bashundhara, R-05, H-76, F-0, B-D,  ','1','2020-03-22 18:27:22.970889','Bed-3,Bath-3,Verenda-2Drawing, Dinning\r\n',4,1,2,15,3,2,'0 floor','a8dcad35-1357-4566-9','G+8',NULL,NULL,'New'),(21,'Residential','assets/uploads/property/thumbnail/1_6EatNXQ.jpg',40000,2250,'2','1',3,3,4,1,'Bashundhara, R-08, H-270, F-3, B-D','1','2020-03-22 18:28:23.549254','Land Details- 5 katha\r\nBed-3,Bath-3,Verenda-4,Drawing, Dinning\r\n',4,1,1,15,3,1,'3rd floor','292d374d-be7e-4e38-9','G+8',NULL,NULL,'New'),(22,'Residential','assets/uploads/property/thumbnail/1_Co5NbQE.jpg',90000,4300,'2','1',4,4,3,1,'Bashundhara, R-04, H-64, F-8, B-D','1','2020-03-22 18:29:17.873110','Land Details- 7.5 katha\r\nBed-4,Bath-4,Verenda-3,Drawing, Dinning\r\n',4,1,1,15,3,1,'8th floor','fc449e5d-805d-4c8b-8','G+9',NULL,NULL,'New'),(23,'Residential','assets/uploads/property/thumbnail/1_CWD27xQ.jpg',90000,4300,'2','1',4,4,3,1,'Bashundhara, R-04, H-64, F-9, B-D','1','2020-03-22 18:30:09.923922','Land Details- 7.5 katha\r\nBed-4,Bath-4,Verenda-3,Drawing, Dinning\r\n',4,1,1,15,3,1,'9th floor','be077027-716a-46cf-9','G+9',NULL,NULL,'New'),(24,'Residential','assets/uploads/property/thumbnail/1_EGVn1KW.jpg',23000,1300,'2','1',3,3,2,1,'Bashundhara, R-07, H-123, F-7, B-D','1','2020-03-22 18:31:00.589932','Bed-3,Bath-3,Verenda-2Drawing, Dinning\r\n',4,1,2,15,3,1,'7th floor','f19b06fb-a160-4555-b','G+7',NULL,NULL,'New'),(25,'Residential','assets/uploads/property/thumbnail/1_rVDbhyN.jpg',46000,1950,'2','1',4,3,3,1,'Bashundhara, R-07, H-120, F-2, B-D','1','2020-03-22 18:32:49.186085','Bed-4,Bath-3,Verenda-3,Drawing, Dinning\r\n',4,1,2,15,3,1,'2nd floor','db7a019c-998e-469d-8','G+9',NULL,NULL,'New'),(26,'Residential','assets/uploads/property/thumbnail/1_cKQESR6.jpg',26000,1270,'2','1',3,3,2,1,'Bashundhara, R-07, H-133, F-2, B-D','1','2020-03-22 18:33:54.050280','Land Details- 5 katha\r\nBed-3,Bath-3,Verenda-2Drawing, Dinning\r\n',4,1,2,15,3,1,'2nd floor','7dc0e1ff-d579-4cde-9','G+9',NULL,NULL,'New'),(27,'Residential','assets/uploads/property/thumbnail/1_hq7f9pn.jpg',50000,2300,'2','1',3,4,3,1,'Bashundhara, R-04, H-173, F-3,  B-D','1','2020-03-22 18:34:46.860863','Land Details- 5 Katha\r\nBed-3,Bath-4,Verenda,Drawing, Dinning\r\n',4,1,1,15,3,1,'3rd floor','90011bf7-b02c-4c86-a','G+10',NULL,NULL,'New'),(28,'Residential','assets/uploads/property/thumbnail/1_40PvPyF.jpg',29000,1460,'2','1',3,4,3,1,'Bashundhara, R-04, H-69, F-1, B-D','1','2020-03-22 18:36:47.062610','Land Details- 7.5 katha',4,1,1,15,3,1,'1st floor','0b293c1c-edcc-4b19-8','G+10',NULL,NULL,'New'),(29,'Residential','assets/uploads/property/thumbnail/1_ftWtAzN.jpg',130000,1460,'3','1',3,4,3,1,'Bashundhara, R-04, H-69, F-1, B-D','1','2020-03-22 18:37:46.292598','Land Details- 7.5 katha',4,1,1,15,3,1,'1st floor','2365cccc-cedf-46ce-b','G+10',NULL,NULL,'New'),(30,'Residential','assets/uploads/property/thumbnail/1_wRXIScg.jpg',25000,2223,'2','1',3,4,2,1,'Bashundhara, R-8, H-151, F-2, B-D','1','2020-03-22 18:38:44.532583','Bed-3,Bath-4,Verenda-2,Drawing, Dinning\r\n',4,1,2,15,3,1,'2nd floor','485deea5-9ef8-4a32-9','G+9',NULL,NULL,'New'),(31,'Residential','assets/uploads/property/thumbnail/1_F9kEBSX.jpg',30000,2600,'2','1',3,3,2,1,'Bashundhara,  R-6, H-443, F-3,B-D','1','2020-03-22 18:39:35.997973','Land Details- 5 Katha\r\nBed-3,Bath-3,Verenda-2Drawing, Dinning\r\n',4,1,1,15,3,1,'3rd floor','99e212d9-83b3-46e0-8','G+6',NULL,NULL,'New'),(32,'Residential','assets/uploads/property/thumbnail/1_WdMg6FD.jpg',30000,2600,'2','1',3,3,2,1,'Bashundhara, R-6, H-443, F-4, B-D','1','2020-03-22 18:50:41.352122','Land Details- 5 Katha\r\nBed-3,Bath-3,Verenda-2Drawing, Dinning\r\n',4,1,1,15,3,1,'4th floor','55e8de79-2586-476d-9','G+6',NULL,NULL,'New'),(33,'Residential','assets/uploads/property/thumbnail/1_uSABl9w.jpg',30000,2600,'2','1',3,3,2,1,'Bashundhara, R-6, F-5, H-443, B-D','1','2020-03-22 18:49:40.683606','Land Details- 5 Katha\r\nBed-3,Bath-3,Verenda-2Drawing, Dinning\r\n',4,1,1,15,3,1,'5th floor','2a921dea-b8eb-46c9-8','G+6',NULL,NULL,'New'),(34,'Residential','assets/uploads/property/thumbnail/1_w0l9Tsa.jpg',30000,2600,'2','1',3,3,2,1,'Bashundhara, R-06, H-443, F-3, B-D','1','2020-03-22 18:48:30.060751','Land Details-5 katha\r\nBed-3,Bath-3,Verenda-2Drawing, Dinning\r\n',4,1,1,15,3,1,'3rd floor','2556cab7-1f23-4ea2-8','G+6',NULL,NULL,'New'),(35,'Residential','assets/uploads/property/thumbnail/1_3zQ7OWr.jpg',30000,2600,'2','1',3,3,2,1,'Bashundhara, R-06, H-443, F-4, B-D','1','2020-03-22 18:47:15.416431','Land Details-5 katha\r\nBed-3,Bath-3,Verenda-2Drawing, Dinning',4,1,1,15,3,1,'4th floor','c55f7e1c-1c78-42d0-a','G+6',NULL,NULL,'New'),(36,'Residential','assets/uploads/property/thumbnail/1_ijp41Tx.jpg',30000,2600,'2','1',3,3,2,1,'Bashundhara, R-06, H-443, F-5, B-D','1','2020-03-22 18:46:06.993721','Land Details-5 katha\r\nBed-3,Bath-3,Verenda-2Drawing, Dinning',4,1,1,15,3,1,'5th floor','3ceba7b7-88fd-4427-8','G+6',NULL,NULL,'New'),(37,'Residential','assets/uploads/property/thumbnail/1_Rsr03s2.jpg',74000,2500,'2','1',4,4,3,1,'Bashundhara, R-07, H-125, F-5, B-D','1','2020-03-22 18:44:44.570930','Land Details-5 katha\r\nBed-4,Bath-4,Verenda-3 Drawing, Dinning\r\n',4,1,2,15,3,1,'5th floor','db04cdd8-2b46-4e73-a','G+6',NULL,NULL,'New'),(38,'Residential','assets/uploads/property/thumbnail/1_z0rgKxO.jpg',30000,1450,'2','1',3,3,2,1,'Bashundhara, R-06, H-214, F-2,  B-D','1','2020-03-22 18:43:48.347557','Land Details-5 katha\r\nBed-3,Bath-3,Verenda Drawing, Dinning\r\n',4,1,2,15,3,1,'2nd floor','bf2ebc5a-29ee-4587-9','G+2',NULL,NULL,'New'),(39,'Residential','assets/uploads/property/thumbnail/1_mdpGAlR.jpg',28000,1430,'2','1',3,3,2,1,'Bashundhara, R-06, H-116 ,F-4,  B-D','1','2020-03-22 18:41:34.530730','Bed-3,Bath-3,Verenda Drawing, Dinning\r\n',4,1,1,15,3,1,'4th floor','77f80cb9-a515-4868-9','G+6',NULL,NULL,'New'),(40,'Residential','assets/uploads/property/thumbnail/1_GlY3XBQ.jpg',25500,1100,'2','1',2,2,3,1,'Bashundhara, Road-01, House-32, Flat-08, Block-A','1','2020-03-22 20:25:30.404197','Land Details-5 katha\r\nBed-2, Bath-2, Verenda-3, Drawing Dinning\r\n',4,1,2,15,3,1,'Top floor','4e5ada49-a895-4dc5-8','G+8',NULL,NULL,'New'),(41,'Residential','assets/uploads/property/thumbnail/1_wYnRYI0.jpg',30000,1550,'2','1',3,4,4,1,'Bashundhara, Road-01, House-554, Flat-02, Block-F','1','2020-03-22 20:32:53.377848','Land Details-5 katha\r\nBed-3,Bath-4,Verenda-4,Drawing, Dinning\r\n',4,1,1,15,3,1,'2nd','5dc0ff78-9dba-47f8-9','G+9',NULL,NULL,'New'),(42,'Residential','assets/uploads/property/thumbnail/1_PcUAxVf.jpg',70000,2550,'2','1',4,5,4,1,'Bashundhara, Road-7/A, House-384, Flat-00, Block-D','1','2020-03-22 20:39:12.104737','Rent-70000 with Furniture,50000 without furniture	\r\nBed-4,Bath-5,Drawing,Dinning\r\n\r\n',4,1,4,15,3,1,'0 floor','5f8063dd-8113-4e3e-8','G+1',NULL,NULL,'New'),(43,'Residential','assets/uploads/property/thumbnail/1_OJu3rt6.jpg',31500,1530,'2','1',3,3,3,1,'Bashundhara, Road-02, House-486/487, Flat-04, Block-D','1','2020-03-22 20:45:50.107455','Bed-3,Bath-3 \r\n',4,1,1,15,3,1,'4th floor','f3c3ee92-8186-4828-9','G+5',NULL,NULL,'New'),(44,'Residential','assets/uploads/property/thumbnail/1_s2T4tQB.jpg',70000,2500,'2','1',4,4,4,1,'Bashundhara, Road-04, House-44/E, Flat-00, Block-D','1','2020-03-22 20:50:40.304550','4 bed,4 bath\r\n',4,1,1,15,3,1,'0 floor','259ef609-8ff4-441c-8','G+1',NULL,NULL,'New'),(45,'Residential','assets/uploads/property/thumbnail/1_IeIevWM.jpg',28000,2300,'2','1',3,3,3,1,'Bashundhara, Road-03, House-26/j, Flat-03, Block-D','1','2020-03-22 20:58:58.590543','Bed-3,Bath-3\r\n',4,1,2,15,3,1,'3rd floor','68638035-5df3-4be3-9','G+4',NULL,NULL,'New'),(46,'Residential','assets/uploads/property/thumbnail/1_IEjyj3S.jpg',30000,1560,'2','1',3,3,2,1,'Bashundhara, Road-15, House-476, Flat-05, Block-G','1','2020-03-22 21:05:46.577526','Bed-3,Bath-3,Verenda-2\r\n',4,1,1,15,3,1,'5th floor','e140d5a1-857f-4944-a','G+6',NULL,NULL,'New'),(47,'Residential','assets/uploads/property/thumbnail/1_eSpKxNZ.jpg',30000,1560,'2','1',3,3,2,1,'Bashundhara, Road-15, House-476, Flat-06, Block-G','1','2020-03-22 21:12:52.497416','Bed-3,Bath-3,Verenda-2\r\n',4,1,2,15,3,1,'Top floor','825d4df4-bf8b-4ae2-b','G+6',NULL,NULL,'New'),(48,'Residential','assets/uploads/property/thumbnail/1_rgu1W6c.jpg',9500000,1560,'3','1',3,3,2,1,'Bashundhara, Road-15, House-476, Flat-05, Block-G','1','2020-03-22 21:18:37.029302','Bed-3,Bath-3, Verenda-2\r\n',4,1,1,15,3,1,'5th floor','7d386967-f2ed-4559-b','G+6',NULL,NULL,'New'),(49,'Residential','assets/uploads/property/thumbnail/1_Kg1G1uj.jpg',9500000,1560,'3','1',3,3,2,1,'Bashundhara, Road-15, House-476, Flat-06, Block-G','1','2020-03-22 21:24:32.249703','Bed-3,Bath-3, Verenda-2\r\n',4,1,1,15,3,1,'Top floor','64347f95-e8c1-45da-b','G+6',NULL,NULL,'New'),(50,'Residential','assets/uploads/property/thumbnail/1_XI4Knwh.jpg',25000,1200,'2','1',3,3,3,1,'Bashundhara, Road-02, House-113, Flat-02, Block-A','1','2020-03-22 21:33:50.453602','Bed-3,Bath-2, Verenda-3\r\n',4,1,1,15,3,1,'2nd floor','cd09629c-5ce8-4217-8','G+7',NULL,NULL,'New'),(51,'Flat at Basundhara','assets/uploads/property/thumbnail/location_map_euro_kids.jpg',26000000,2800,'3','1',4,5,3,2,'Block C','1','2020-04-08 22:25:40.221334','American Fittings ',4,1,1,24,3,1,'3rd','4c54dd5f-b1f1-4f46-a','G+10',NULL,NULL,'New'),(52,'Exclusive South Facing 3 Katha Plot','assets/uploads/property/thumbnail/1_5mQIpZT.jpg',5199976,3,'3','1',0,0,0,0,'Sector 02, Block L','1','2020-04-20 08:24:00.131797','Plot Details ',12,1,2,32,3,2,'','d2e01b8c-5672-4e1d-b','0','n/a','6','New'),(54,'New Ready Apartment at D block ','assets/uploads/property/thumbnail/101_1.png',9799978,1550,'3','1',3,3,3,1,'Block D','1','2020-04-29 06:41:38.475210','\r\nThis flat located in the amazing location of Bashundhara r/a which is very convenient as many groceries and school, colleges are located in the nearby area. \r\n\r\n\r\nThis nearly finished apartment presents airy reception that leads out on to a balcony that results in plenty of natural light. The separate kitchen is well proportioned and all three bedrooms are good sized doubles. All-time security with 24 hours CCTV camera observation will be ensured while staying in this room. Also, the apartment provides large parking to keep your vehicle secure. The best part of owning an under-development space is that you have the alternative of customizing it the way you want. The potential outcomes are huge! \r\n\r\nThis ready to customize apartment comes with:\r\n\r\nWest Faced\r\nCovered Area: 4\r\nRoad Size: 20\r\n8 Storied \r\nElectricity Backup\r\nElevator\r\nParking\r\nTerrace\r\nFire Extinguisher\r\nTiled Floor\r\nUtilities (Gas, Water & Electricity)\r\n\r\nCome and pay a visit and Elevate your lifestyle with this amazing Apartment.',4,1,1,32,3,1,'G+2','e90ae76b-bb7d-40d6-b','G+9','229','6','New'),(55,'New Ready Apartment ','assets/uploads/property/thumbnail/101_1_mcKyXWa.png',12000000,1700,'3','1',3,3,3,1,'Block D, Bashundhara R/A, Dhaka','1','2020-04-29 06:56:53.934462','\r\nThis flat located in the amazing location of Bashundhara R/A which is very convenient as many groceries and schools, colleges are located in the nearby area. \r\n\r\n\r\nThis nearly finished apartment presents airy reception that leads out on to a balcony that results in plenty of natural light. The separate kitchen is well proportioned and all three bedrooms are good sized doubles. All-time security with 24 hours CCTV camera observation will be ensured while staying in this room. Also, the apartment provides large parking to keep your vehicle secure. The best part of owning an under-development space is that you have the alternative of customizing it the way you want. The potential outcomes are huge! \r\n\r\nThis ready to customize the apartment comes with:\r\n\r\nNorth Faced\r\nCovered Area: 4\r\nRoad Size: 25\r\n8 Storied \r\nElectricity Backup\r\nElevator\r\nParking\r\nTerrace\r\nFire Extinguisher\r\nTiled Floor\r\nUtilities (Gas, Water & Electricity)\r\n\r\nCome and pay a visit and Elevate your lifestyle with this amazing Apartment.',4,1,1,32,3,1,'G+2','01ae675e-c78a-4f42-b','G+7','227','7','New'),(56,'New Ready Apartment in F Block','assets/uploads/property/thumbnail/101_1_59QOs8r.png',12200000,1700,'3','1',3,3,3,1,'Block F, Bashundhara R/A, Dhaka','1','2020-04-29 07:00:35.155833','This flat located in the amazing location of Bashundhara R/A which is very convenient as many groceries and school, colleges are located in the nearby area. \r\n\r\n\r\nThis nearly finished apartment presents airy reception that leads out on to a balcony that results in plenty of natural light. The separate kitchen is well proportioned and all three bedrooms are good sized doubles. All-time security with 24 hours CCTV camera observation will be ensured while staying in this room. Also, the apartment provides large parking to keep your vehicle secure. The best part of owning an under-development space is that you have the alternative of customizing it the way you want. The potential outcomes are huge! \r\n\r\nThis ready to customize apartment comes with:\r\n\r\nWest Faced\r\nCovered Area: 4\r\nRoad Size: 20\r\n8 Storied \r\nElectricity Backup\r\nElevator\r\nParking\r\nTerrace\r\nFire Extinguisher\r\nTiled Floor\r\nUtilities (Gas, Water & Electricity)\r\n\r\nCome and pay a visit and Elevate your lifestyle with this amazing Apartment.\r\n',4,1,2,32,3,1,'G+8','e6f9ab34-7353-4205-a','G+8','417','19','New'),(57,'New Ready Apartment in G Block','assets/uploads/property/thumbnail/101_1_ecJVaWA.png',10000000,1720,'3','1',3,3,3,1,'Block G, Bashundhara R/A, Dhaka','1','2020-04-29 07:16:46.987975','This flat located in the amazing location of Bashundhara R/A which is very convenient as many groceries and school, colleges are located in the nearby area. \r\n\r\n\r\nThis nearly finished apartment presents airy reception that leads out on to a balcony that results in plenty of natural light. The separate kitchen is well proportioned and all three bedrooms are good sized doubles. All-time security with 24 hours CCTV camera observation will be ensured while staying in this room. Also, the apartment provides large parking to keep your vehicle secure. The best part of owning an under-development space is that you have the alternative of customizing it the way you want. The potential outcomes are huge! \r\n\r\nThis ready to customize apartment comes with:\r\n\r\nWest Faced\r\nCovered Area: 4\r\nRoad Size: 20\r\n8 Storied \r\nElectricity Backup\r\nElevator\r\nParking\r\nTerrace\r\nFire Extinguisher\r\nTiled Floor\r\nUtilities (Gas, Water & Electricity)\r\n\r\nCome and pay a visit and Elevate your lifestyle with this amazing Apartment.\r\n',4,1,2,32,3,1,'G+4','3d436a70-2790-4cd3-b','G+9','n/a','13','New'),(58,'New Ready Apartment in F Block','assets/uploads/property/thumbnail/101_1_u99eqXp.png',13000000,2385,'3','1',3,3,3,1,'Block F, Bashundhara R/A, Dhaka','1','2020-04-29 07:19:49.898679','This flat located in the amazing location of Bashundhara R/A which is very convenient as many groceries and school, colleges are located in the nearby area. \r\n\r\n\r\nThis nearly finished apartment presents airy reception that leads out on to a balcony that results in plenty of natural light. The separate kitchen is well proportioned and all three bedrooms are good sized doubles. All-time security with 24 hours CCTV camera observation will be ensured while staying in this room. Also, the apartment provides large parking to keep your vehicle secure. The best part of owning an under-development space is that you have the alternative of customizing it the way you want. The potential outcomes are huge! \r\n\r\nThis ready to customize apartment comes with:\r\n\r\nWest Faced\r\nCovered Area: 4\r\nRoad Size: 25\r\n10 Storied \r\nElectricity Backup\r\nElevator\r\nParking\r\nTerrace\r\nFire Extinguisher\r\nTiled Floor\r\nUtilities (Gas, Water & Electricity)\r\n\r\nCome and pay a visit and Elevate your lifestyle with this amazing Apartment.\r\n',4,1,4,32,3,1,'G+5','c9a28f17-78fd-4030-8','G+10','n/a','14','New'),(59,'New Ready Apartment in I Block','assets/uploads/property/thumbnail/101_1_GVEAEH5.png',8000000,1230,'3','1',3,3,3,1,'Block I, Bashundhara R/A, Dhaka','1','2020-04-29 07:23:48.492556','This flat located in the amazing location of Bashundhara R/A which is very convenient as many groceries and school, colleges are located in the nearby area. \r\n\r\n\r\nThis nearly finished apartment presents airy reception that leads out on to a balcony that results in plenty of natural light. The separate kitchen is well proportioned and all three bedrooms are good sized doubles. All-time security with 24 hours CCTV camera observation will be ensured while staying in this room. Also, the apartment provides large parking to keep your vehicle secure. The best part of owning an under-development space is that you have the alternative of customizing it the way you want. The potential outcomes are huge! \r\n\r\nThis ready to customize apartment comes with:\r\n\r\nWest Faced\r\nCovered Area: 4\r\nRoad Size: 25\r\n8 Storied \r\nElectricity Backup\r\nElevator\r\nParking\r\nTerrace\r\nFire Extinguisher\r\nTiled Floor\r\nUtilities (Gas, Water & Electricity)\r\n\r\nCome and pay a visit and Elevate your lifestyle with this amazing Apartment.\r\n',4,1,2,32,3,1,'G+1','94e873c4-3e3d-447a-b','G+7','n/a','7','New'),(60,'New Ready Apartment in C Block','assets/uploads/property/thumbnail/101_1_rbaXNqH.png',16500000,2450,'3','1',3,3,3,2,'Block C, Bashundhara R/A, Dhaka','1','2020-04-29 07:28:29.408925','This flat located in the amazing location of Bashundhara R/A which is very convenient as many groceries and school, colleges are located in the nearby area. \r\n\r\n\r\nThis nearly finished apartment presents airy reception that leads out on to a balcony that results in plenty of natural light. The separate kitchen is well proportioned and all three bedrooms are good sized doubles. All-time security with 24 hours CCTV camera observation will be ensured while staying in this room. Also, the apartment provides large parking to keep your vehicle secure. The best part of owning an under-development space is that you have the alternative of customizing it the way you want. The potential outcomes are huge! \r\n\r\nThis ready to customize apartment comes with:\r\n\r\nWest Faced\r\nCovered Area: 4\r\nRoad Size: 25\r\n10 Storied \r\nElectricity Backup\r\nElevator\r\nParking\r\nTerrace\r\nFire Extinguisher\r\nTiled Floor\r\nUtilities (Gas, Water & Electricity)\r\n\r\nCome and pay a visit and Elevate your lifestyle with this amazing Apartment.\r\n',4,1,3,32,3,1,'G+9','ef9df09d-4cc1-4c62-9','G+9','229','14','New'),(61,'Used Ready Apartment in A Block','assets/uploads/property/thumbnail/101_1_XTKQhe3.png',8000000,1610,'3','1',3,3,2,1,'Block A, Bashundhara R/A, Dhaka','1','2020-04-29 07:57:06.908567','This flat located in the amazing location of Bashundhara R/A which is very convenient as many groceries and school, colleges are located in the nearby area. \r\n\r\n\r\nThis nearly finished apartment presents airy reception that leads out on to a balcony that results in plenty of natural light. The separate kitchen is well proportioned and all three bedrooms are good sized doubles. All-time security with 24 hours CCTV camera observation will be ensured while staying in this room. Also, the apartment provides large parking to keep your vehicle secure. The best part of owning an under-development space is that you have the alternative of customizing it the way you want. The potential outcomes are huge! \r\n\r\nThis ready to customize apartment comes with:\r\n\r\nWest Faced\r\nCovered Area: 4\r\nRoad Size: 25\r\n6 Storied \r\nElectricity Backup\r\nElevator\r\nParking\r\nTerrace\r\nFire Extinguisher\r\nTiled Floor\r\nUtilities (Gas, Water & Electricity)\r\n\r\nCome and pay a visit and Elevate your lifestyle with this amazing Apartment.\r\n',4,1,2,32,3,1,'G+2','6ffa8113-1f7b-4ca9-a','G+5','n/a','1','New'),(62,'New Ready Apartment in F Block','assets/uploads/property/thumbnail/101_1_1u85RSe.png',14000000,2150,'3','1',3,3,3,1,'Block G, Bashundhara R/A, Dhaka','1','2020-04-29 08:22:10.200807','This flat located in the amazing location of Bashundhara R/A which is very convenient as many groceries and school, colleges are located in the nearby area. \r\n\r\n\r\nThis nearly finished apartment presents airy reception that leads out on to a balcony that results in plenty of natural light. The separate kitchen is well proportioned and all three bedrooms are good sized doubles. All-time security with 24 hours CCTV camera observation will be ensured while staying in this room. Also, the apartment provides large parking to keep your vehicle secure. The best part of owning an under-development space is that you have the alternative of customizing it the way you want. The potential outcomes are huge! \r\n\r\nThis ready to customize apartment comes with:\r\n\r\nWest Faced\r\nCovered Area: 4\r\nRoad Size: 25\r\n9 Storied \r\nElectricity Backup\r\nElevator\r\nParking\r\nTerrace\r\nFire Extinguisher\r\nTiled Floor\r\nUtilities (Gas, Water & Electricity)\r\n\r\nCome and pay a visit and Elevate your lifestyle with this amazing Apartment.\r\n',4,1,1,32,3,1,'G+4','ce6220da-60e7-46b1-8','G+8','n/a','7','New'),(63,'New Ready Apartment in D block','assets/uploads/property/thumbnail/PicsArt_04-20-09.10.23.jpg',10000000,1850,'3','1',3,3,3,1,'Block D, Bashundhara R A','1','2020-04-30 18:56:43.010074','New',4,1,1,32,3,1,'G+4','0e01720b-695f-456b-8','G+10','229','6','Old'),(66,'New Ready Apartment in F Block','assets/uploads/property/thumbnail/Jams_Rafan_Garden_eBrochure-page-003.jpg',13200000,1750,'3','1',3,3,3,1,'Block F, Bashundhara R/A, Dhaka','1','2020-05-14 06:57:04.627706','New ready apartment in a corner plot, The vacant floor is the top floor in a 9 stored building. South East facing apartment has \r\n-3 bedrooms, \r\n-3 bathrooms, and \r\n-3 balcony \r\n-Close to 300 feet road,\r\n-Close to Mosque\r\n-Close to Hospital\r\n-Close to Viqarunnissa School\r\nClose to Universities\r\n-01 Parking available\r\n\r\nContact us for more details',4,1,7,32,3,1,'G+8','0844ee0e-ccda-43d8-8','G+8','298','17','New'),(67,'New Almost Ready Apartment in G Block','assets/uploads/property/thumbnail/Jams_Oleander_View_01.jpg',10000000,1350,'3','1',3,2,2,1,'Block G, Bashundhara R/A, Dhaka','1','2020-05-14 07:13:11.649990','New ready apartment in a corner plot, The vacant floor is the 4th floor in a 10 stored building. Sout facing apartment has \r\n-3 bedrooms, \r\n-2 bathrooms, and \r\n-3 balcony \r\n-Close to 300 feet road,\r\n-Close to Mosque\r\n-Close to Hospital\r\n-Close to Viqarunnissa School\r\nClose to Universities\r\n-01 Parking available\r\n\r\nContact us for more details.',4,1,2,32,3,1,'G+3','58d70a49-9f23-4718-a','G+9','449,450','17','New'),(68,'New Almost Ready Apartment in G Block','assets/uploads/property/thumbnail/Jams_Oleander_View_01_ChA3vRB.jpg',10000000,1350,'3','1',3,2,2,1,'Block G, Bashundhara R/A, Dhaka','1','2020-05-14 07:13:46.706014','New ready apartment in a corner plot, The vacant floor is the 4th floor in a 10 stored building. Sout facing apartment has \r\n-3 bedrooms, \r\n-2 bathrooms, and \r\n-3 balcony \r\n-Close to 300 feet road,\r\n-Close to Mosque\r\n-Close to Hospital\r\n-Close to Viqarunnissa School\r\nClose to Universities\r\n-01 Parking available\r\n\r\nContact us for more details.',4,1,2,32,3,1,'G+3','95bd78d9-1d9a-416b-8','G+9','449,450','17','New'),(69,'New Almost Ready Apartment in G Block','assets/uploads/property/thumbnail/Jams_Oleander_View_02.jpg',10000000,1350,'3','1',3,2,2,1,'Block G, Bashundhara R/A, Dhaka','1','2020-05-14 07:14:39.493952','New ready apartment in a corner plot, The vacant floor is the 4th floor in a 10 stored building. Sout facing apartment has \r\n-3 bedrooms, \r\n-2 bathrooms, and \r\n-3 balcony \r\n-Close to 300 feet road,\r\n-Close to Mosque\r\n-Close to Hospital\r\n-Close to Viqarunnissa School\r\nClose to Universities\r\n-01 Parking available\r\n\r\nContact us for more details.',4,1,2,32,3,1,'G+3','67830c0c-5fb8-4e69-8','G+9','449,450','17','New'),(70,'New Almost Ready Apartment in G Block','assets/uploads/property/thumbnail/Jams_Oleander_View_02_2jVkeXP.jpg',10000000,1350,'3','1',3,2,3,2,'Block G, Bashundhara R/A, Dhaka','1','2020-05-14 07:17:10.864357','New ready apartment in a corner plot, The vacant floor is the 4th floor in a 10 stored building. South facing apartment has \r\n-3 bedrooms, \r\n-2 bathrooms, and \r\n-3 balcony \r\n-Close to 300 feet road,\r\n-Close to Mosque\r\n-Close to Hospital\r\n-Close to Viqarunnissa School\r\nClose to Universities\r\n-01 Parking available\r\n\r\nContact us for more details.',4,1,2,32,3,1,'G+3','9ea5e005-919a-40c6-9','G+9','449,450','17','New'),(71,'New Almost Ready Apartment in H Block','assets/uploads/property/thumbnail/V4.jpg',14000000,1850,'3','1',3,3,3,1,'Block H, Bashundhara R/A, Dhaka','1','2020-05-14 07:24:37.775808','New almost ready apartment in a corner plot, The vacant floor is the 5th floor in a 10 stored building. South facing apartment has \r\n-3 bedrooms, \r\n-3 bathrooms, and \r\n-3 balcony \r\n-Close to 300 feet road,\r\n-Close to Mosque\r\n-Close to Hospital\r\n-Close to Viqarunnissa School\r\nClose to Universities\r\n-01 Parking available\r\n\r\nContact us for more details.',4,1,2,32,3,1,'G+5','4506bbaa-9df5-4bc1-9','G+9','asha purna','afroza akter road','New'),(73,'New Ready Apartment in D block','assets/uploads/property/thumbnail/IMG_20200512_174010_325.jpg',14000000,1885,'3','1',3,3,3,1,'Block D, Bashundhara R A','1','2020-05-14 08:45:31.549672','Ready new apartment',4,1,4,32,3,1,'G+4','27531ac5-5d62-4767-8','G+8','100','6','New'),(75,'New Almost Ready Apartment in H block','assets/uploads/property/thumbnail/V4_aIGbvUO.jpg',1400000000,1850,'3','1',3,3,3,1,'Block H, Bashundhara R A','1','2020-05-15 09:26:09.568754','Almost ready new apartment in 5th floor in a 10 stored South Facing building, corner plot.\r\n- 60 feet road in front\r\n-Full residential environment\r\n-Close to 300 feet road\r\n- Close to Viqarunnisa School\r\n- Close to Mosques\r\n- Close to Apollo Hospitals\r\n- Close to University\r\n\r\nContact for more information.',4,1,2,32,3,1,'G+5','bf73bca1-8a80-43a5-8','G+9','Asha Purna','Afroza Akter Road','New'),(76,'New Almost Ready Apartment in H block','assets/uploads/property/thumbnail/V4_nElyimQ.jpg',14000000,1850,'3','1',3,3,3,1,'Block H, Bashundhara R A','1','2020-05-15 09:28:14.065650','Almost ready new apartment in 5th floor in a 10 stored South Facing building, corner plot.\r\n- 60 feet road in front\r\n-Full residential environment\r\n-Close to 300 feet road\r\n- Close to Viqarunnisa School\r\n- Close to Mosques\r\n- Close to Apollo Hospitals\r\n- Close to University\r\n\r\nContact for more information.',4,1,2,32,3,1,'G+5','23026b3c-57a4-41b3-a','G+9','Asha Purna','Afroza Akter Road','New'),(77,'New Almost Ready Apartment in H block','assets/uploads/property/thumbnail/V4_IvNIBSY.jpg',14000000,1850,'3','1',3,3,3,1,'Block H, Bashundhara R A','1','2020-05-15 09:29:20.776767','Almost ready new apartment in 5th floor in a 10 stored South Facing building, corner plot.\r\n- 60 feet road in front\r\n-Full residential environment\r\n-Close to 300 feet road\r\n- Close to Viqarunnisa School\r\n- Close to Mosques\r\n- Close to Apollo Hospitals\r\n- Close to University\r\n\r\nContact for more information.',4,1,2,32,3,1,'G+5','79e461fb-f560-4d62-b','G+9','Asha Purna','Afroza Akter Road','New'),(78,'New Almost Ready Apartment in H block','assets/uploads/property/thumbnail/V4_N1xdVcF.jpg',14000000,1850,'3','1',3,3,3,1,'Block H, Bashundhara R A','1','2020-05-15 09:29:56.313536','Almost ready new apartment in 5th floor in a 10 stored South Facing building, corner plot.\r\n- 60 feet road in front\r\n-Full residential environment\r\n-Close to 300 feet road\r\n- Close to Viqarunnisa School\r\n- Close to Mosques\r\n- Close to Apollo Hospitals\r\n- Close to University\r\n\r\nContact for more information.',4,1,2,32,3,1,'G+5','fb2d7e55-3c8c-4116-b','G+9','Asha Purna','Afroza Akter Road','New'),(79,'New Almost Ready Apartment in H block','assets/uploads/property/thumbnail/V4_wBZcOSj.jpg',14000000,1850,'3','1',3,3,3,1,'Block H, Bashundhara R A','1','2020-05-16 11:05:12.511831','New Almost Ready Apartment.',4,1,2,32,3,1,'G+5','fb17244c-0209-4f5f-9','G+9','Asha Purna','Afroza Akter Road','New'),(80,'New Almost Ready Apartment in H Block','assets/uploads/property/thumbnail/V4_0GdjPk2.jpg',14500000,1850,'3','1',3,3,3,1,'Block H, Bashundhara R/A, Dhaka','1','2020-05-16 11:42:10.080149','Almost Ready New Apartment',4,1,2,32,3,1,'G+5','c14460d1-4c8a-4dc4-8','G+9','Asha Purna','Afroza Akter Road','New'),(81,'New Almost Ready Apartment in H block','assets/uploads/property/thumbnail/V4_wtJoiiq.jpg',18000000,2450,'3','1',3,3,3,1,'Block H, Bashundhara R A','1','2020-05-18 04:27:04.162718','New Almost Ready Apartment',4,1,2,32,3,1,'G+5','aeba314d-6ee4-43c1-8','G+9','100','AFROZA AKTER ROAD','New'),(82,'10 Katha Plot for Sale ','assets/uploads/property/thumbnail/vap_4717174838.jpg',5500000,10,'3','1',1,1,1,1,'Block I, Bashundhara R/A, Dhaka','1','2020-05-30 14:55:55.756439','10 Katha Plot for sale, the area is covered on the boundary in I block, Bashundhara Residential Area.\r\n-Near 300 feet road\r\n-Near Hospitals\r\n-Near Mosque\r\n-Near Schools and University\r\n-Ready for residential construction\r\nThe property is up for sale now at the price of 55 lakh taka per Katha.\r\nContact us for details..\r\n',4,1,2,32,3,2,'0','55d8576d-d1d4-467d-9','0','n/a','6','New'),(83,'10 Katha Land for Sale in Purbachal City','assets/uploads/property/thumbnail/vap_4717174838_BLmOpcS.jpg',3500000,10,'3','1',1,1,1,1,'Purbachal, Dhaka','1','2020-05-30 15:09:58.141939','10 Katha Plot for sale, the area is covered on the boundary in Purbachal, Dhaka.\r\n-Near 300 feet road\r\n-Near Hospitals\r\n-Near Mosque\r\n-Near Schools and University\r\n-Ready for residential construction\r\nThe property is up for sale now at the price of 35 lakh taka per Katha.\r\nContact us for details.\r\n',13,1,2,32,3,2,'G+1','9e7d2666-816d-4fe2-8','G+1','n/a','6','New'),(84,'5 katha 60/25 feet Corner Plot for Sale ','assets/uploads/property/thumbnail/vap_4717174838_LOGJShs.jpg',3600000,5,'3','1',1,1,1,1,'Purbachal, Dhaka','1','2020-05-30 15:14:59.895439','10 Katha Plot for sale, the area is covered on the boundary in Purbachal, Dhaka.\r\n-Near 300 feet road\r\n-Near Hospitals\r\n-Near Mosque\r\n-Near Schools and University\r\n-Ready for residential construction\r\nThe property is up for sale now at the price of 36 lakh taka per Katha.\r\nContact us for details..\r\n',13,1,6,32,3,2,'G+1','0015938e-70d1-4555-9','G+1','n/a','6','New'),(85,'5 Stored Commercial Building','assets/uploads/property/thumbnail/Screenshot_2020-05-30_at_10.23.49_PM.png',150000000,6,'3','1',1,1,1,1,'Sector 5, Uttara, Dhaka','1','2020-05-30 16:25:24.924829','5 stored commercial market building up for sale at a negotiable price point.\r\nContact us for more information.',9,1,2,32,2,2,'0','f0468f60-f34a-439b-a','G+5','417','19','Old'),(86,'4 Katha Plot for Sale','assets/uploads/property/thumbnail/vap_4717174838_TGWFTZs.jpg',5000000,4,'3','1',1,1,1,1,'Block L, Bashundhara R/A','1','2020-05-31 04:47:23.367773','4 Katha land covered full area with boundary is up for sale in Bashundhara R/A . The plot is south faced\r\n-Close to 300 Feet Road\r\n-Close to Hospital\r\n-Close to Mosque\r\n-Close to University\r\n-Close to Pocket Gate\r\n\r\nThe price is 50 Lakhs Taka per Katha of total 4 katha.\r\nPlease contact for more details.',4,1,2,32,3,2,'0','42ce3633-dd36-474f-a','G+1','n/a','06','New'),(87,'10 Katha Plot for Sale in Bashundhara R/A','assets/uploads/property/thumbnail/vap_4717174838_TGWFTZs_AeOeOnC.jpg',8000000,10,'3','1',1,1,1,1,'Block I, Bashundhara R/A','1','2020-05-31 05:21:00.254537','10 Katha South Facing Plot for Sale in Block I, Bashundhara R/A.\r\n-Close to 300 feet\r\n-Close to Mosque\r\n-Close to Hospital\r\n-Close to University\r\n\r\nThe plot selling price is 80 lakh taka per katha of total 10 katha land.\r\nPlease contact for more details of the property.',4,1,2,32,3,2,'0','93e2d636-d77c-4b46-9','G+1','n/a','06','New'),(88,'Commercial Building for Sale in Uttara','assets/uploads/property/thumbnail/WhatsApp_Image_2020-02-08_at_4.27.31_PM.jpeg',180000000,18000,'3','1',1,1,1,1,'Sector 06, ','1','2020-06-02 04:52:43.958643','A commercial building is up for sale which is 6 storage building, north facing and beside 60/80 feet corner.\r\nThe building is best for offices, hospitals and hotel which can be redesign at buyers convenient way.\r\neach floor contains 3500 square feet and basic furniture.\r\n\r\nPlease contact us for more details.',9,1,1,32,2,1,'G+1','c125187b-ae39-4757-8','G+5','Plot 13','Isha Kha Road ','Old'),(89,'5 Katha Land for Sale','assets/uploads/property/thumbnail/thumb-816x460-986bd2be72458388b76f23614d3de700.jpg',32500000,5,'3','1',1,1,1,1,'Block I, Bashundhara R/A','1','2020-06-11 06:36:25.766632','This land is 5 katha which stands on 40 feet road south facing plot.\r\n- Near 300 Feet Road\r\n-Near Mosque\r\n- Near Hospitals\r\n-Near University\r\n-Near Restaurant\r\n\r\nThe land is full ready and capable of building house, each katha is for sale for 65 lakh taka.\r\nPlease contact us for more details.',4,1,2,32,3,2,'0','46b60784-e8db-456d-9','G+1','1300','n/a','New'),(90,'1600 sft Handover Project Ready Flat@Banasree','assets/uploads/property/thumbnail/20200215_123941.jpg',7220000,1600,'3','1',4,4,4,1,' Block # J, South Banasree, Dhaka-1219. Nearest By Banasree Ideal School & College and 10 Storied Eastern Shopping Complex, Very Near South Banasree Central Mosque','1','2020-06-13 07:21:20.695155','Project Name: Protik Cherry (E-2)\r\n\r\nName of Company: Protik Developers Limited\r\n\r\nProject Location:  Block # J, South Banasree, Dhaka-1219. Nearest By Banasree Ideal School & College and 10 Storied Eastern Shopping Complex, Very Near South Banasree Central Mosque.\r\n\r\nApartment In Details: Master Bed, Child Bed, Guest Bed, Servant Bed, Servant Toilet, Servant Verandah, Verandah-4, Toilet-4, Dressing Room, Drawing, Dining, Kitchen.\r\n\r\nAvailable Type & Size: Another type & size also available here (E-1600 sft)\r\n\r\nBuilding Facing: South & East Facing\r\n\r\nApartment Floor: 2nd, 3rd, 4th, 5th, 8th & 9th Floor (North Facing)\r\n\r\nPayment Schedule: 20%-30% down Payment & 70%-80% Bank Loan Facilities \r\n\r\nTotal Land Area: 13 Katha\r\n\r\nTotal Apartment: 54 nos\r\n\r\nTotal Car Parking: 54 nos\r\n\r\nTotal Superior Lift & Stair: 2 & 2\r\n\r\nProject Handover Date: June -2019\r\n\r\nRoad Wide: 40”, 50”, 60” feet & 10 Storied Building (South & East Facing)\r\n\r\nParking: Ground Floor & Basement Car Parking	\r\n\r\nAll Others Facilities area at walking Distance\r\n\r\n	Children Play Ground\r\n	Mosque\r\n	Jogging Track\r\n	Swimming Pool\r\n	Gymnasium\r\n	Departmental Store\r\n	4 Community Center\r\n	Solar Panel\r\n	Roof Top Garden\r\n	Sub Station\r\n	10 Association Committee   \r\n	Nursery School\r\n	Medicine Corner\r\n	Bank ATM Booth\r\n	Networking System\r\n\r\nAvailable Public Transport System from this place\r\n\r\nEasy to communicate from Rampura Hatirjheel Project & 10 Storied Eastern Shopping Complex.\r\n\r\nMEMBER REHAB-306 & RAJUK ENLISTED\r\n\r\nHome Loan & Flexible Payment Facilities is Available (DBH, Brac Bank, Sonali Bank, Janata Bank, Agroni Bank, DBBL, SCB, and HSBC)\r\n\r\nOur 70% clients are banker (Sonali Bank, Janata Bank, Agroni Bank, DBBL, SCB, HSBC, EBL, SIBL, UCB, BRAC, One Bank, Trust Bank,)\r\n\r\n\r\nIf you are interested to buy the Flat please Contact us………\r\n\r\n\r\nAdvance Thank’s………….\r\nMd. Moiful Islam\r\nAssistant Manager\r\nProtik Developers Limited\r\n\r\n',14,1,2,41,3,1,'G+8','59e6f275-050e-43d2-b','G+9','78','12/4','New'),(91,'1232 sft New Brand Ready Flat@Banasree','assets/uploads/property/thumbnail/20200215_123941_qFZN2XY.jpg',5600000,1232,'3','1',3,3,3,1,'Block # J, South Banasree, Dhaka-1219. Nearest By Banasree Ideal School & College and 10 Storied Eastern Shopping Complex, Very Near South Banasree Central Mosque','1','2020-06-13 07:19:05.119178','Project Name: Protik Lily (E-1)\r\n\r\nName of Company: Protik Developers Limited\r\n\r\nProject Location: Block # J, South Banasree, Dhaka-1219. Nearest By Banasree Ideal School & College and 10 Storied Eastern Shopping Complex, Very Near South Banasree Central Mosque.\r\n\r\nApartment Details: Master Bed, Child Bed, Guest Bed, Verandha-3, Toilet-3, Drawing, Dining, Kitchen. \r\n\r\nAvailable Type & Size: Another type & size also available here (B-1237 sft) \r\n\r\nBuilding Facing: South & East Facing\r\n\r\nApartment Floor: 1st, 2nd, 3rd, 4th & 9th Floor (South Facing)\r\n\r\nPayment Schedule: 20%-30% down Payment & 70%-80% Bank Loan Facilities \r\n\r\nTotal Land Area: 18 Katha\r\n\r\nTotal Apartment: 70 nos \r\n\r\nTotal Car Parking: 70 nos\r\n\r\nTotal Superior Lift & Stair: 2 & 2\r\n\r\nProject Handover Date: June -2019\r\n\r\nRoad Wide: 40”, 50”, 60” feet & 10 Storied Building (South & East Facing)\r\n\r\nParking: Ground Floor & Basement Car Parking	\r\n\r\nAll Others Facilities area at walking Distance\r\n\r\n	Children Play Ground\r\n	Mosque\r\n	Jogging Track\r\n	Swimming Pool\r\n	Gymnasium\r\n	Departmental Store\r\n	4 Community Center \r\n	Solar Panel\r\n	Roof Top Garden\r\n	Sub Station\r\n	10 Association Committee  \r\n	Nursery School\r\n	Medicine Corner\r\n	Bank ATM Booth\r\n	Networking System\r\n\r\nAvailable Public Transport System from this place\r\n\r\nEasy to communicate from Rampura Hatirjheel Project & 10 Storied Eastern Shopping Complex.\r\n\r\nMEMBER REHAB-306 & RAJUK ENLISTED\r\n\r\nHome Loan & Flexible Payment Facilities is Available (DBH, Brac Bank, Sonali Bank, Janata Bank, Agroni Bank, DBBL, SCB, and HSBC)\r\n\r\nOur 70% clients are banker (Sonali Bank, Janata Bank, Agroni Bank, DBBL, SCB, HSBC, EBL, SIBL, UCB, BRAC, One Bank, Trust Bank,)\r\n\r\n\r\nIf you are interested to buy the Flat please Contact us………\r\n\r\n\r\nAdvance Thank’s………….\r\nMd. Moiful Islam\r\nAssistant Manager\r\nProtik Developers Limited\r\n\r\n\r\n',14,1,2,41,3,1,'G+5','ed632e3b-8a04-42bc-8','G+9','78','12/4','New'),(92,'1355 sft New Brand Ready Flat@Banasree','assets/uploads/property/thumbnail/20200215_125106.jpg',6200000,1355,'3','1',3,3,3,1,'Block # J, South Banasree, Dhaka-1219. Nearest By Banasree Ideal School & College and 10 Storied Eastern Shopping Complex, Very Near South Banasree Central Mosque','1','2020-06-13 07:18:12.947160','Project Name: Protik Cherry (E-2)\r\n\r\nName of Company: Protik Developers Limited\r\n\r\nProject Location: Block # J, South Banasree, Dhaka-1219. Nearest By Banasree Ideal School & College and 10 Storied Eastern Shopping Complex, Very Near South Banasree Central Mosque.\r\n\r\nApartment Details: Master Bed, Child Bed, Guest Bed, Verandha-3, Toilet-3, Drawing, Dining, Kitchen\r\n\r\nAvailable Type & Size: Another type & size also available here (C-1355 sft)\r\n\r\nBuilding Facing: South Facing\r\n\r\nApartment Floor: 1st & 9th Floor \r\n\r\nPayment Schedule: 20%-30% down Payment & 70%-80% Bank Loan Facilities \r\n\r\nTotal Land Area: 13 Katha\r\n\r\nTotal Apartment: 54 nos\r\n\r\nTotal Car Parking: 54 nos\r\n\r\nTotal Superior Lift & Stair: 2 & 2\r\n\r\nProject Handover Date: June -2019\r\n\r\nRoad Wide: 50”, 60” feet & 10 Storied Building (South & East Facing)\r\n\r\nParking: Ground Floor & Basement Car Parking	\r\n\r\nAll Others Facilities area at walking Distance\r\n\r\n	Children Play Ground\r\n	Mosque\r\n	Jogging Track\r\n	Swimming Pool\r\n	Gymnasium\r\n	Departmental Store\r\n	4 Community Center \r\n	Solar Panel\r\n	Roof Top Garden\r\n	Sub Station\r\n	10 Association Committee  \r\n	Nursery School\r\n	Medicine Corner\r\n	Bank ATM Booth\r\n	Networking System\r\n\r\nAvailable Public Transport System from this place\r\n\r\nEasy to communicate from Rampura Hatirjheel Project & 10 Storied Eastern Shopping Complex.\r\n\r\nMEMBER REHAB-306 & RAJUK ENLISTED\r\n\r\nHome Loan & Flexible Payment Facilities is Available (DBH, Brac Bank, Sonali Bank, Janata Bank, Agroni Bank, DBBL, SCB, and HSBC)\r\n\r\nOur 70% clients are banker (Sonali Bank, Janata Bank, Agroni Bank, DBBL, SCB, HSBC, EBL, SIBL, UCB, BRAC, One Bank, Trust Bank,)\r\n\r\n\r\nIf you are interested to buy the Flat please Contact us………\r\n\r\n\r\nAdvance Thank’s………….\r\nMd. Moiful mIslam\r\nAssistant Manager\r\nProtik Developers Limited\r\n',14,1,2,41,3,1,'G+9','a2d32239-664d-43e3-9','G+9','78','12/4','New'),(93,'1120 sft New Brand Ready Flat@Banasree','assets/uploads/property/thumbnail/20200215_124508.jpg',5200000,1120,'3','1',3,2,2,1,' Block # J, South Banasree, Dhaka-1219. Nearest By Banasree Ideal School & College and 10 Storied Eastern Shopping Complex, Very Near South Banasree Central Mosque','1','2020-06-13 07:16:54.777384','Name of Company: Protik Developers Limited\r\n\r\nProject Location:  Block # J, South Banasree, Dhaka-1219. Nearest By Banasree Ideal School & College and 10 Storied Eastern Shopping Complex, Very Near South Banasree Central Mosque.\r\n\r\nApartment Details: Master Bed, Child Bed, Guest Bed, Verandha-2, Toilet-2, Drawing, Dining, Kitchen\r\n\r\nAvailable Type & Size: Another type & size also available here (C-1120 sft)\r\n\r\nBuilding Facing: South & East Facing\r\n\r\nApartment Floor: 2nd, 4th & 7th Floor (Corner & South & West Facing)\r\n\r\nPayment Schedule: 20%-30% down Payment & 70%-80% Bank Loan Facilities \r\n\r\nTotal Land Area: 13 Katha\r\n\r\nTotal Apartment: 54 nos\r\n\r\nTotal Car Parking: 54 nos\r\n\r\nTotal Superior Lift & Stair: 2 & 2\r\n\r\nProject Handover Date: June -2019\r\n\r\nRoad Wide: 40”, 50”, 60” feet & 10 Storied Building (South & East Facing)\r\n\r\nParking: Ground Floor & Basement Car Parking	\r\n\r\nAll Others Facilities area at walking Distance\r\n\r\n	Children Play Ground\r\n	Mosque\r\n	Jogging Track\r\n	Swimming Pool\r\n	Gymnasium\r\n	Departmental Store\r\n	4 Community Center \r\n	Solar Panel\r\n	Roof Top Garden\r\n	Sub Station\r\n	10 Association Committee  \r\n	Nursery School\r\n	Medicine Corner\r\n	Bank ATM Booth\r\n	Networking System\r\n\r\nAvailable Public Transport System from this place\r\n\r\nEasy to communicate from Rampura Hatirjheel Project & 10 Storied Eastern Shopping Complex.\r\n\r\nMEMBER REHAB-306 & RAJUK ENLISTED\r\n\r\nHome Loan & Flexible Payment Facilities is Available (DBH, Brac Bank, Sonali Bank, Janata Bank, Agroni Bank, DBBL, SCB, and HSBC)\r\n\r\nOur 70% clients are banker (Sonali Bank, Janata Bank, Agroni Bank, DBBL, SCB, HSBC, EBL, SIBL, UCB, BRAC, One Bank, Trust Bank,)\r\n\r\n\r\nIf you are interested to buy the Flat please Contact us………\r\n\r\n\r\nAdvance Thank’s………….\r\nMd. Moiful mIslam\r\nAssistant Manager\r\nProtik Developers Limited\r\n',14,1,2,41,3,1,'G+7','5a54aac2-b725-474c-b','G+9','78','12/4','New'),(94,'1553 sft New Brand Ready Flat@Banasree','assets/uploads/property/thumbnail/20200215_124508_BT7VfDA.jpg',7177900,1553,'3','1',4,4,4,1,'Block # J, South Banasree, Dhaka-1219. Nearest By Banasree Ideal School & College and 10 Storied Eastern Shopping Complex, Very Near South Banasree Central Mosque','1','2020-06-13 07:16:02.206163','Project Name: Protik Bokul (D-2)\r\n\r\nName of Company: Protik Developers Limited\r\n\r\nProject Location: Block # J, South Banasree, Dhaka-1219. Nearest By Banasree Ideal School & College and 10 Storied Eastern Shopping Complex, Very Near South Banasree Central Mosque.\r\n\r\nApartment Details: Master Bed, Child Bed, Guest Bed, Verandha-4, Toilet-4, Drawing, Dining, Kitchen, Dressing Room, Servent Bed, Servent Toilet. \r\n\r\nAvailable Type & Size: Another type & size also available here B-1553 sft\r\n\r\nBuilding Facing: South & East Facing\r\n\r\nApartment Floor: 5th & 9th Floor (Front View, South & West Facing)\r\n\r\nPayment Schedule: 20%-30% down Payment & 70%-80% Bank Loan Facilities \r\n\r\nTotal Land Area: 14 Katha\r\n\r\nTotal Apartment: 54 nos\r\n\r\nTotal Car Parking: 54 nos\r\n\r\nTotal Superior Lift & Stair: 2 & 2 \r\n\r\nProject Handover Date: June -2019\r\n\r\nRoad Wide: 40”, 50”, 60” feet & 10 Storied Building (South & East Facing)\r\n\r\nParking: Ground Floor & Basement Car Parking	\r\n\r\nAll Others Facilities area at walking Distance\r\n\r\n	Children Play Ground\r\n	Mosque \r\n	Jogging Track\r\n	Swimming Pool\r\n	Gymnasium\r\n	Departmental Store\r\n	4 Community Center \r\n	Solar Panel\r\n	Roof Top Garden\r\n	Sub Station\r\n	10 Association Committee\r\n	Nursery School\r\n	Medicine Corner\r\n	Bank ATM Booth\r\n	Networking System\r\n\r\nAvailable Public Transport System from this place\r\n\r\nEasy to communicate from Rampura Hatirjheel Project & 10 Storied Eastern Shopping Complex.\r\n\r\nMEMBER REHAB-306 & RAJUK ENLISTED\r\n\r\nHome Loan & Flexible Payment Facilities is Available (DBH, Brac Bank, Sonali Bank, Janata Bank, Agroni Bank, DBBL, SCB, and HSBC)\r\n\r\nOur 70% clients are banker (Sonali Bank, Janata Bank, Agroni Bank, DBBL, SCB, HSBC, EBL, SIBL, UCB, BRAC, One Bank, Trust Bank,)\r\n\r\n\r\nIf you are interested to buy the Flat please Contact us………\r\n\r\n\r\nAdvance Thank’s………….\r\nMd. Moiful Islam\r\nAssistant Manager\r\nProtik Developers Limited\r\n\r\n',14,1,2,41,3,1,'G+5','5c8b53ab-ad5d-4501-a','G+9','78','12/4','New'),(95,'1332 sft Ready Apartment@South Banasree','assets/uploads/property/thumbnail/20191213_153144.jpg',6100000,1332,'3','1',3,3,3,1,'House # 78, Road # 12/4, Block # J, South Banasree, Dhaka-1219','1','2020-06-21 05:22:22.005628','A True Condominium Ready Project\r\n\r\nName of Project: Protik Lily (Ready)\r\n\r\nName of Company: Protik Developers Limited\r\n\r\nProject Address: House # 78, Road # 12/4, Block # J, South Banasree, Dhaka-1219\r\n\r\nBuilding Height: G+9\r\n\r\nApartment Size: 1332 sft (Furnished)\r\n\r\nApartment Details: Master Bed, Child Bed, Guest Bed, Washroom-3, Verandah-3, Drawing, Dining, Kitchen\r\n\r\nApartment Floor: 2nd & 9th Floor\r\n\r\nApartment Facing: South & West\r\n\r\nFacilities: \r\n50% Open Space\r\nChildren Play Ground\r\nMosque\r\nSwimming Pool\r\nGymnasium\r\nDepartmental Store\r\nNursery School\r\nBank ATM Booth\r\nNetworking System\r\n4 Community Center\r\n10 Association Committee \r\nTubewell\r\nMaximum Security Space\r\nGuard Room\r\nWaiting Room\r\nKitchen Room\r\n \r\nPayment Schedule:\r\nBooking Money: 1,00,000 taka\r\nDown Payment: 20%-30% \r\nRest Amount: 70%-80% Bank Loan/Own Source\r\n\r\n\r\nAdvance Thanks........\r\nMd. Moiful Islam\r\nAssistant Manager\r\nProtik Developers Limited\r\nCell Phone: +88016 82 17 78 78\r\nMail: mdmoifulislam483@gmail : \r\n',14,1,2,41,3,1,'G+2','52086e47-c89f-4502-9','G+9','78','12/4','New'),(96,'1570_sft Ful Furnished Ready Flat@Banasree','assets/uploads/property/thumbnail/20200621_152310.heic',7500000,1570,'3','1',3,4,4,1,'House # 78, Road # 12/4, Block # J, South Banasree, Dhaka-1219','0','2020-06-26 05:52:36.896907','A True Condominium Handover Ready Project.\r\n\r\nName of Project: Protik Ruposree Housing Society.\r\n\r\nName of Company: Protik Developers Limited.\r\n\r\nProject Address: House # 78, Road # 12/4, Block # J, South Banasree, Dhaka-1219\r\n\r\nBuilding Height: G+9\r\n\r\nApartment Size: 1570 sft (Furnished)\r\n\r\nApartment Details: Master Bed, Child Bed, Guest Bed, Washroom-3, Verandah-3, Drawing, Dining, Kitchen, Servent Bed, Servent Toilet, Servent Verandah\r\n\r\nApartment Floor: 5th & 9th Floor\r\n\r\nApartment Facing: South & North\r\n\r\nFacilities: \r\n50% Open Space\r\nChildren Play Ground\r\nMosque\r\nSwimming Pool\r\nGymnasium\r\nDepartmental Store\r\nNursery School\r\nBank ATM Booth\r\nNetworking System\r\n4 Community Center\r\n10 Association Committee \r\nTubewell\r\nMaximum Security Space\r\nGuard Room\r\nWaiting Room\r\nKitchen Room\r\n \r\nPrice: 5,000 per sft \r\n\r\nPayment Schedule:\r\nDown Payment: 30% \r\nRest Amount: 80% Bank Loan/Own Source\r\n\r\n\r\nAdvance Thanks........\r\nMd. Moiful Islam\r\nAssistant Manager\r\nProtik Developers Limited\r\nCell Phone: +88016 82 17 78 78\r\nMail: mdmoifulislam483@gmail\r\n',14,1,3,41,3,1,'G+5','bce388b5-ee4f-40eb-8','G+9','78','12/4','New');
/*!40000 ALTER TABLE `property_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_propertyimage`
--

DROP TABLE IF EXISTS `property_propertyimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_propertyimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Image` varchar(100) NOT NULL,
  `Property_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_propertyima_Property_id_id_a3c89094_fk_property_` (`Property_id_id`),
  CONSTRAINT `property_propertyima_Property_id_id_a3c89094_fk_property_` FOREIGN KEY (`Property_id_id`) REFERENCES `property_property` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_propertyimage`
--

LOCK TABLES `property_propertyimage` WRITE;
/*!40000 ALTER TABLE `property_propertyimage` DISABLE KEYS */;
INSERT INTO `property_propertyimage` VALUES (10,'assets/uploads/property/03.jpg',2),(11,'assets/uploads/property/Contemporary-Modern-House-Design-6.1539270983.8601.jpg',2),(12,'assets/uploads/property/Luxury-Modern-Loft-Studio-Apartment-Bangkok-Thailand_1.jpg',2),(13,'assets/uploads/property/Modern-industrial-interior-design-in-beautiful-open-apartment-21.jpg',2),(14,'assets/uploads/property/white-modern-studio-design.jpeg',2),(18,'assets/uploads/property/Luxury-Modern-Loft-Studio-Apartment-Bangkok-Thailand_1_fOEJvwQ.jpg',4),(19,'assets/uploads/property/unnamed.jpg',4),(20,'assets/uploads/property/white-modern-studio-design_wdLMPs1.jpeg',4),(21,'assets/uploads/property/zeroinchinteriorsltd-residence-whitebalance-drawingroom-design-02.jpg',4),(53,'assets/uploads/property/1_t7yMxVB.jpg',6),(54,'assets/uploads/property/1_zapcPSN.jpg',7),(55,'assets/uploads/property/1_4gqOKZa.jpg',8),(56,'assets/uploads/property/1_iZTKYYj.jpg',9),(57,'assets/uploads/property/1_vbpTeil.jpg',10),(58,'assets/uploads/property/1_jI6LqNd.jpg',11),(59,'assets/uploads/property/1_JUXAnWi.jpg',12),(60,'assets/uploads/property/1_HadjzW7.jpg',13),(61,'assets/uploads/property/1_a73o4jN.jpg',14),(62,'assets/uploads/property/1_5XrZ66K.jpg',15),(63,'assets/uploads/property/1_sbZCxxR.jpg',16),(64,'assets/uploads/property/1_HdyTQfV.jpg',17),(65,'assets/uploads/property/1_WhzRv0j.jpg',18),(66,'assets/uploads/property/1_UNalyFp.jpg',19),(67,'assets/uploads/property/1_0FT2VLx.jpg',20),(68,'assets/uploads/property/1_1cYlA4u.jpg',21),(69,'assets/uploads/property/1_zf1olUq.jpg',22),(70,'assets/uploads/property/1_dl8sYaz.jpg',23),(71,'assets/uploads/property/1_0krES9r.jpg',24),(72,'assets/uploads/property/1_i5WGkaL.jpg',25),(73,'assets/uploads/property/1_dDmmOtc.jpg',26),(74,'assets/uploads/property/1_UqV6tN7.jpg',27),(75,'assets/uploads/property/1_7O5LnJP.jpg',28),(76,'assets/uploads/property/1_KlrFQAS.jpg',29),(77,'assets/uploads/property/1_5q3iq7r.jpg',33),(78,'assets/uploads/property/1_DrDcX5I.jpg',32),(79,'assets/uploads/property/1_xsoD8fM.jpg',31),(80,'assets/uploads/property/1_GqF0sv6.jpg',30),(81,'assets/uploads/property/1_KGPyF7k.jpg',34),(82,'assets/uploads/property/1_7slH2vM.jpg',35),(83,'assets/uploads/property/1_WH4naHx.jpg',36),(84,'assets/uploads/property/1_m6EoXP9.jpg',37),(85,'assets/uploads/property/1_qgIQPIt.jpg',38),(86,'assets/uploads/property/1_S5FNSly.jpg',39),(87,'assets/uploads/property/1_IDncksz.jpg',40),(88,'assets/uploads/property/1_8iPyp2q.jpg',41),(89,'assets/uploads/property/1_d4mfxAD.jpg',42),(90,'assets/uploads/property/1_GrwV0Rf.jpg',43),(91,'assets/uploads/property/1_yGH5Ya6.jpg',44),(92,'assets/uploads/property/1_h3JmnnT.jpg',45),(93,'assets/uploads/property/1_93FV6Lz.jpg',46),(94,'assets/uploads/property/1_ozPMB92.jpg',47),(95,'assets/uploads/property/1_B0yD1Se.jpg',48),(96,'assets/uploads/property/1_iUo4aon.jpg',49),(97,'assets/uploads/property/1_TtVzJDu.jpg',50),(98,'assets/uploads/property/location_map_euro_kids.jpg',51),(106,'assets/uploads/property/1_9K4SQUb.jpg',52),(108,'assets/uploads/property/101_1.png',54),(109,'assets/uploads/property/101_1_K8Z95Iv.png',55),(110,'assets/uploads/property/101_1_Mh9GDdn.png',56),(111,'assets/uploads/property/101_1_rMNyj7e.png',57),(112,'assets/uploads/property/101_1_L9IZAvl.png',58),(113,'assets/uploads/property/101_1_JzYhNHe.png',59),(114,'assets/uploads/property/101_1_MyukDH1.png',60),(115,'assets/uploads/property/101_1_jl6PuFw.png',61),(116,'assets/uploads/property/101_1_hwzFxPo.png',62),(117,'assets/uploads/property/PicsArt_04-20-09.10.23.jpg',63),(120,'assets/uploads/property/Jams_Rafan_Garden_eBrochure-page-003.jpg',66),(121,'assets/uploads/property/Jams_Rafan_Garden_eBrochure-page-001.jpg',66),(122,'assets/uploads/property/New_design_Rafan__garden_1.png',66),(123,'assets/uploads/property/Jams_Oleander_View_02.jpg',67),(124,'assets/uploads/property/Jams_Oleander_View_02_WgpYxXC.jpg',68),(125,'assets/uploads/property/Jams_Oleander_View_01.jpg',69),(126,'assets/uploads/property/Jams_Oleander_View_01_D04jVsH.jpg',70),(127,'assets/uploads/property/V1.jpg',71),(129,'assets/uploads/property/IMG_20200512_174010_325.jpg',73),(131,'assets/uploads/property/V1_DX525jh.jpg',75),(132,'assets/uploads/property/V1_3nvZ4uO.jpg',76),(133,'assets/uploads/property/V1_Hl2p28A.jpg',77),(134,'assets/uploads/property/V1_jEW4f25.jpg',78),(135,'assets/uploads/property/V1_bPSC8ER.jpg',79),(136,'assets/uploads/property/V1_1IZ6JAS.jpg',80),(137,'assets/uploads/property/V4.jpg',81),(138,'assets/uploads/property/vap_4717174838.jpg',82),(139,'assets/uploads/property/vap_4717174838_tjNlzIu.jpg',83),(140,'assets/uploads/property/vap_4717174838_TGWFTZs.jpg',84),(141,'assets/uploads/property/Screenshot_2020-05-30_at_10.23.49_PM.png',85),(142,'assets/uploads/property/vap_4717174838_TGWFTZs_kLJICEp.jpg',86),(143,'assets/uploads/property/vap_4717174838_TGWFTZs_sie7IV0.jpg',87),(144,'assets/uploads/property/WhatsApp_Image_2020-02-08_at_4.27.26_PM_1.jpeg',88),(145,'assets/uploads/property/WhatsApp_Image_2020-02-08_at_4.27.26_PM.jpeg',88),(146,'assets/uploads/property/WhatsApp_Image_2020-02-08_at_4.27.27_PM_1.jpeg',88),(147,'assets/uploads/property/WhatsApp_Image_2020-02-08_at_4.27.27_PM.jpeg',88),(148,'assets/uploads/property/WhatsApp_Image_2020-02-08_at_4.27.31_PM_1.jpeg',88),(149,'assets/uploads/property/WhatsApp_Image_2020-02-08_at_4.27.31_PM.jpeg',88),(150,'assets/uploads/property/thumb-816x460-986bd2be72458388b76f23614d3de700.jpg',89),(151,'assets/uploads/property/20190914_173055.jpg',90),(152,'assets/uploads/property/20191213_153144.jpg',90),(153,'assets/uploads/property/20191213_153357.jpg',90),(154,'assets/uploads/property/20191213_160206.jpg',90),(155,'assets/uploads/property/20191213_160409.jpg',90),(156,'assets/uploads/property/20191213_160546.jpg',90),(157,'assets/uploads/property/20191213_160846.jpg',90),(158,'assets/uploads/property/20191213_161330.jpg',90),(159,'assets/uploads/property/20191213_161434.jpg',90),(160,'assets/uploads/property/20190914_173055_UzzWRy0.jpg',91),(161,'assets/uploads/property/20191213_153159.jpg',91),(162,'assets/uploads/property/20191213_153357_LV1Dh8K.jpg',91),(163,'assets/uploads/property/20191213_155053.jpg',91),(164,'assets/uploads/property/20191213_160843.jpg',91),(165,'assets/uploads/property/20191213_160846_yhX2NQt.jpg',91),(166,'assets/uploads/property/20191213_161330_yu4Lt1y.jpg',91),(167,'assets/uploads/property/20191213_161424.jpg',91),(168,'assets/uploads/property/20191213_161530.jpg',91),(169,'assets/uploads/property/20200215_123941.jpg',91),(170,'assets/uploads/property/20191213_153144_lyi0wOR.jpg',92),(171,'assets/uploads/property/20191213_153432.jpg',92),(172,'assets/uploads/property/20191213_155053_fEbDF8d.jpg',92),(173,'assets/uploads/property/20191213_160546_Aqvcf2p.jpg',92),(174,'assets/uploads/property/20191213_161330_4dPy5ka.jpg',92),(175,'assets/uploads/property/20191213_161402.jpg',92),(176,'assets/uploads/property/20191213_161424_4V3leKE.jpg',92),(177,'assets/uploads/property/20191213_161530_BKXzbTb.jpg',92),(178,'assets/uploads/property/20200215_124508.jpg',92),(179,'assets/uploads/property/20200215_125106.jpg',92),(180,'assets/uploads/property/20190914_173055_dT1jdBu.jpg',93),(181,'assets/uploads/property/20191213_152922.jpg',93),(182,'assets/uploads/property/20191213_155053_7qLvLC7.jpg',93),(183,'assets/uploads/property/20191213_160331.jpg',93),(184,'assets/uploads/property/20191213_160437.jpg',93),(185,'assets/uploads/property/20191213_161330_20eAQxc.jpg',93),(186,'assets/uploads/property/20191213_161402_UcjHgnI.jpg',93),(187,'assets/uploads/property/20191213_161424_GsNEXQ0.jpg',93),(188,'assets/uploads/property/20200215_124508_yGOJx6n.jpg',93),(190,'assets/uploads/property/20191213_153144_Q273oPn.jpg',94),(191,'assets/uploads/property/20191213_160331_PYrattE.jpg',94),(192,'assets/uploads/property/20191213_160546_cMeATzl.jpg',94),(193,'assets/uploads/property/20191213_161330_vb6LG9b.jpg',94),(194,'assets/uploads/property/20191213_161402_qauquE4.jpg',94),(195,'assets/uploads/property/20191213_161424_nE1ACsB.jpg',94),(196,'assets/uploads/property/20191213_161530_52ox17f.jpg',94),(197,'assets/uploads/property/20200215_124508_9YNERnH.jpg',94),(199,'assets/uploads/property/20190914_173055_yFrdP29.jpg',95),(200,'assets/uploads/property/20191213_153357_GuvJBe8.jpg',95),(201,'assets/uploads/property/20191213_160223.jpg',95),(203,'assets/uploads/property/20191213_160437_Zdjw4mw.jpg',95),(204,'assets/uploads/property/20191213_160546_YXvFUp2.jpg',95),(205,'assets/uploads/property/20191213_161330_RaXxOfg.jpg',95),(208,'assets/uploads/property/20191213_161530_6hIqdjN.jpg',95),(209,'assets/uploads/property/20200215_123941_LIxvrwE.jpg',95),(210,'assets/uploads/property/20200215_125106_tZv7kqR.jpg',95),(213,'assets/uploads/property/20200621_152500.heic',96),(217,'assets/uploads/property/20200621_152326.heic',96),(219,'assets/uploads/property/20200621_152738.heic',96),(223,'assets/uploads/property/20200621_152747.heic',96),(225,'assets/uploads/property/20200621_152454_KYoqKZt.heic',96);
/*!40000 ALTER TABLE `property_propertyimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_propertyvideo`
--

DROP TABLE IF EXISTS `property_propertyvideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_propertyvideo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_video` varchar(100) NOT NULL,
  `Property_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_propertyvid_Property_id_id_f9300106_fk_property_` (`Property_id_id`),
  CONSTRAINT `property_propertyvid_Property_id_id_f9300106_fk_property_` FOREIGN KEY (`Property_id_id`) REFERENCES `property_property` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_propertyvideo`
--

LOCK TABLES `property_propertyvideo` WRITE;
/*!40000 ALTER TABLE `property_propertyvideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_propertyvideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_ratings`
--

DROP TABLE IF EXISTS `property_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Ratiings` int(11) NOT NULL,
  `Property_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_ratings_Property_id_80e60e59_fk_property_property_id` (`Property_id`),
  CONSTRAINT `property_ratings_Property_id_80e60e59_fk_property_property_id` FOREIGN KEY (`Property_id`) REFERENCES `property_property` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_ratings`
--

LOCK TABLES `property_ratings` WRITE;
/*!40000 ALTER TABLE `property_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_specification`
--

DROP TABLE IF EXISTS `property_specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_specification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Property_id` int(11) NOT NULL,
  `Specification_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_specificati_Property_id_ab98120d_fk_property_` (`Property_id`),
  KEY `property_specificati_Specification_id_64fc0bbc_fk_PropertyS` (`Specification_id`),
  CONSTRAINT `property_specificati_Property_id_ab98120d_fk_property_` FOREIGN KEY (`Property_id`) REFERENCES `property_property` (`id`),
  CONSTRAINT `property_specificati_Specification_id_64fc0bbc_fk_PropertyS` FOREIGN KEY (`Specification_id`) REFERENCES `PropertySettings_specification` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_specification`
--

LOCK TABLES `property_specification` WRITE;
/*!40000 ALTER TABLE `property_specification` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_tags`
--

DROP TABLE IF EXISTS `property_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Property_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_tags_Property_id_aeae0062_fk_property_property_id` (`Property_id`),
  KEY `property_tags_tags_id_29ef534c_fk_PropertyS` (`tags_id`),
  CONSTRAINT `property_tags_Property_id_aeae0062_fk_property_property_id` FOREIGN KEY (`Property_id`) REFERENCES `property_property` (`id`),
  CONSTRAINT `property_tags_tags_id_29ef534c_fk_PropertyS` FOREIGN KEY (`tags_id`) REFERENCES `PropertySettings_propertytag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_tags`
--

LOCK TABLES `property_tags` WRITE;
/*!40000 ALTER TABLE `property_tags` DISABLE KEYS */;
INSERT INTO `property_tags` VALUES (132,2,16),(133,4,13),(171,7,11),(173,9,11),(174,8,11),(175,10,11),(177,11,11),(178,13,11),(179,14,11),(180,15,11),(182,16,11),(183,17,11),(185,18,11),(186,19,11),(187,20,11),(188,21,11),(189,22,11),(190,23,11),(191,24,11),(192,25,11),(193,26,11),(194,27,11),(196,28,11),(197,29,11),(198,30,11),(199,31,11),(201,39,11),(202,38,11),(203,37,11),(204,36,11),(205,35,11),(206,34,11),(207,33,11),(208,32,11),(211,40,7),(212,41,11),(213,42,11),(214,43,11),(215,44,11),(216,45,11),(217,46,11),(218,47,11),(219,48,11),(220,49,11),(221,50,11),(230,6,11),(232,52,19),(234,54,11),(235,55,11),(236,56,11),(237,57,11),(238,58,11),(239,59,11),(240,60,11),(241,61,11),(242,62,11),(244,63,11),(250,67,11),(251,70,11),(252,71,11),(254,73,11),(258,75,11),(259,79,11),(260,80,11),(261,81,11),(262,82,15),(263,83,15),(264,84,15),(265,85,4),(266,86,15),(268,87,15),(271,88,4),(272,89,15),(277,94,11),(278,90,11),(283,95,11),(285,96,11);
/*!40000 ALTER TABLE `property_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_slider`
--

DROP TABLE IF EXISTS `slider_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_slider`
--

LOCK TABLES `slider_slider` WRITE;
/*!40000 ALTER TABLE `slider_slider` DISABLE KEYS */;
INSERT INTO `slider_slider` VALUES (1,'\"One Stop Property Solutions\"','Big Real Estate Market Place in Bangladesh','assets/uploads/sliders/1403962_cBlSYCR.jpg');
/*!40000 ALTER TABLE `slider_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_code`
--

DROP TABLE IF EXISTS `social_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_code_a2393167` (`code`),
  KEY `social_auth_code_timestamp_176b341f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_code`
--

LOCK TABLES `social_auth_code` WRITE;
/*!40000 ALTER TABLE `social_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_partial`
--

DROP TABLE IF EXISTS `social_auth_partial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) unsigned NOT NULL,
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_auth_partial_token_3017fea3` (`token`),
  KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_partial`
--

LOCK TABLES `social_auth_partial` WRITE;
/*!40000 ALTER TABLE `social_auth_partial` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_partial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` (`user_id`),
  CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
INSERT INTO `social_auth_usersocialauth` VALUES (1,'facebook','218044739617163','{\"auth_time\": 1587218268, \"id\": \"218044739617163\", \"expires\": 5183308, \"granted_scopes\": [\"public_profile\"], \"denied_scopes\": null, \"access_token\": \"EAACN0w3ZC0eQBALBjoEe9ZBnz2o3kXWeYecjro6yOpVPD9ZCmsqH5GsZBcvTNM3UqKzx0xbVnKRUZApyZBK6ZBAK2KgZCmeyyt4vBseAzZAkE5odWa82cOEFwqxLMZA4ZCSr4bwo3hbXumzNvMNdkHwqzZA3rPl0pIezBQ5wgSpgAZBX2dglcoX2P03ZCdY3dujurKbDUZD\", \"token_type\": null}',33),(2,'facebook','2862440413822518','{\"auth_time\": 1587311472, \"id\": \"2862440413822518\", \"expires\": 5183980, \"granted_scopes\": [\"public_profile\"], \"denied_scopes\": null, \"access_token\": \"EAACN0w3ZC0eQBAHSLZB2s3XSVP9ZCsVJ5OYVps4Mv7LOHbnGfESp5BS6mZAzRY6dFHcK4O1eNZC8gMUxKvRXnLJLvFZBJXxjZBxqJ9HNBqYLxJvzRZCZA0xGJttUifvDYwZA1H8UEP1ynsD9L03BGxQUZBEiLkw28JOj6ymCiSxuzpX9AZDZD\", \"token_type\": null}',34),(3,'google-oauth2','rajovirul@gmail.com','{\"auth_time\": 1587339833, \"expires\": 3599, \"token_type\": \"Bearer\", \"access_token\": \"ya29.a0Ae4lvC2cW0nu7q_kczIQZm9UHkT6YreBS7yr8IKnMpyGrAknS27xtjmCyznbZSMB1Fd10nRLtIUvLXlgpLRvQOmsSmYd0KstX7zyETxOaU-oot9tySrgz-7zGl13U7PpZhqSc4ENArst3XLDngJSbK1TcsqXDg-ck67k\"}',35),(4,'facebook','3062019150516858','{\"auth_time\": 1587377023, \"id\": \"3062019150516858\", \"expires\": 5183781, \"granted_scopes\": [\"public_profile\"], \"denied_scopes\": null, \"access_token\": \"EAACN0w3ZC0eQBACIH3WbpUtVoLcuJgZAjy4aGBNlZBmZChuEKsMlopyzuoplZCBQKAfOQPF0QhZC2TC5baKOZAIIPEB4ok9tsIYSq9WcepceLgoWbsdduzxbYenbZAymVQywBP0JNOgFEfLPXdKgW0ZCQX1PFuqdGHYJnNevRBYiSCRMdHyWdXaoMJZBo9LjRirCAZD\", \"token_type\": null}',36),(5,'google-oauth2','iftykhanik6@gmail.com','{\"auth_time\": 1587377030, \"expires\": 3599, \"token_type\": \"Bearer\", \"access_token\": \"ya29.a0Ae4lvC1D4xomswQRSqojk0RMOA0XssTDyLFvZsgKb9NECB8w2IiSB8vqfynHlt7DvD3twHy4GDPrz-2khtDWAl1-LB5rTGfaYWgIN4CNPDyBUeRBE_zmH1UbZLmBR0UbZs6rbS2S98f3eYKAy20KlJf5zU3t40uZLU01\"}',36),(6,'google-oauth2','arizulislam45@gmail.com','{\"auth_time\": 1591866264, \"expires\": 3599, \"token_type\": \"Bearer\", \"access_token\": \"ya29.a0AfH6SMBoTC3oqhU4baeLoGTtfFhZgiKZs4UJcJK26QQZWMkNTdVC-RscGbh5wQEKdwSsPxC9rMhsYz9dkikxNnP6MrpFy9f74GCk4aqPSI-TbsZbo3h2ZcIsoXhIQyBTaok7XUjqutzkeYPM2sv6Gb01_KyQfuZ1hYSQow\"}',38),(7,'facebook','575963843020445','{\"auth_time\": 1588243102, \"id\": \"575963843020445\", \"expires\": 5183999, \"granted_scopes\": [\"public_profile\"], \"denied_scopes\": null, \"access_token\": \"EAACN0w3ZC0eQBAJYDKcFt2rHu9tfrF4NDMi5kz7ZChoh6GGctE23TRDHBxoWJyIhHl5HyMYvWx4C5EWYO3msZApn10lSA1WSSEzU29ZAjQYeiUssKSoCzIQUmLbzgv7j2MGgVBCuY8kTQk4MuwxgvXcTrUV9SIhqCwE8VZBimRWmrh6R76NXM\", \"token_type\": null}',38),(8,'google-oauth2','faisal.sarker@gmail.com','{\"auth_time\": 1590315483, \"expires\": 3599, \"token_type\": \"Bearer\", \"access_token\": \"ya29.a0AfH6SMCREsay-TcTQOXrluXejqkkb7pihpzrHi0F9PYiPjCE2UwcBZfaGi49-mfPeC98rhmrcpDKJ8hi7F4jC0hou-N7Qx2ruy4D1hNMv21buoDsnYRSfDseTXF07tl7PrWC38ihpmNbEyAVi3FuqNks4budx_i6GGzf\"}',40),(9,'facebook','3031817603614748','{\"auth_time\": 1598035426, \"id\": \"3031817603614748\", \"expires\": 5183999, \"granted_scopes\": [\"public_profile\"], \"denied_scopes\": null, \"access_token\": \"EAACN0w3ZC0eQBAHvZCPjIdkV4o0dT8kslYZAfm7B5qMFK3kKcJZAokeFQ0STQTYrYBOnvFZCHKjAEP8P06Gxo9jhNKkUDVM04cQLcPeo94AQT8xBkBhQSphWi52AsUsyndOg69ZCOCLQRfZCoHSdJZBbfun6IrpL3oN9eQhfqkZBdPwkrTkP40eWs\", \"token_type\": null}',43);
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonial_testimonial`
--

DROP TABLE IF EXISTS `testimonial_testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonial_testimonial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(100) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonial_testimonial`
--

LOCK TABLES `testimonial_testimonial` WRITE;
/*!40000 ALTER TABLE `testimonial_testimonial` DISABLE KEYS */;
INSERT INTO `testimonial_testimonial` VALUES (1,'Tanvir Ahad','COO - www.jamsproperty.com','assets/uploads/sliders/83490062_10212656109715954_3043282855212875776_n.jpg','Real estate cannot be lost or stolen, nor can it be carried away.'),(2,'SHAHADAT HOSSAIN','Managing Director','assets/uploads/sliders/800px_COLOURBOX13973494.jpg','Real estate is an imperishable asset, ever increasing in value.');
/*!40000 ALTER TABLE `testimonial_testimonial` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-21 19:22:21
