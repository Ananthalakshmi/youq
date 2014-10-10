-- MySQL dump 10.13  Distrib 5.6.15, for Win32 (x86)
--
-- Host: localhost    Database: youqdb
-- ------------------------------------------------------
-- Server version	5.6.15-log

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
-- Current Database: `youqdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `youqdb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `youqdb`;

--
-- Table structure for table `youq_articles`
--

DROP TABLE IF EXISTS `youq_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youq_articles` (
  `article_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `published_date` date NOT NULL,
  `link` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youq_articles`
--

LOCK TABLES `youq_articles` WRITE;
/*!40000 ALTER TABLE `youq_articles` DISABLE KEYS */;
INSERT INTO `youq_articles` VALUES (1,1001,1,'Pretty Front Entry Decorating Ideas for Fall','2014-10-03','http://www.bhg.com/halloween/outdoor-decorations/pretty-front-entry-decorating-ideas-for-fall/');
/*!40000 ALTER TABLE `youq_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youq_authors`
--

DROP TABLE IF EXISTS `youq_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youq_authors` (
  `author_id` int(11) NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `street_address` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `home_phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `creation_date` date NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` date NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youq_authors`
--

LOCK TABLES `youq_authors` WRITE;
/*!40000 ALTER TABLE `youq_authors` DISABLE KEYS */;
INSERT INTO `youq_authors` VALUES (1,'Catherine','','Barker','CBaker','500 Market Street','San Francisco','CA','USA','author-1.png','650-565-8970','408-546-8907','welcome123','catherine.barker@gmail.com',-1,'2014-10-03',-1,'2014-10-03');
/*!40000 ALTER TABLE `youq_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youq_iqs`
--

DROP TABLE IF EXISTS `youq_iqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youq_iqs` (
  `user_id` int(11) NOT NULL,
  `qit_count` int(11) DEFAULT NULL,
  `qtoo_count` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youq_iqs`
--

LOCK TABLES `youq_iqs` WRITE;
/*!40000 ALTER TABLE `youq_iqs` DISABLE KEYS */;
INSERT INTO `youq_iqs` VALUES (1,1,1,14,2);
/*!40000 ALTER TABLE `youq_iqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youq_qits`
--

DROP TABLE IF EXISTS `youq_qits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youq_qits` (
  `qit_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `qit_question` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `qit_votes` int(11) NOT NULL,
  `qit_created_by` int(11) NOT NULL,
  `qit_creation_date` date NOT NULL,
  `qit_updated_by` int(11) NOT NULL,
  `qit_updated_date` date NOT NULL,
  PRIMARY KEY (`qit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youq_qits`
--

LOCK TABLES `youq_qits` WRITE;
/*!40000 ALTER TABLE `youq_qits` DISABLE KEYS */;
INSERT INTO `youq_qits` VALUES (12,1,1,'What are the core benefits?',16,1,'2014-10-08',1,'2014-10-08'),(13,1,1,'Hello',0,1,'2014-10-09',1,'2014-10-09');
/*!40000 ALTER TABLE `youq_qits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youq_qtoos`
--

DROP TABLE IF EXISTS `youq_qtoos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youq_qtoos` (
  `created_by` int(11) NOT NULL,
  `creation_date` date NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updation_date` date NOT NULL,
  `section_id` int(11) NOT NULL,
  `qtoo_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youq_qtoos`
--

LOCK TABLES `youq_qtoos` WRITE;
/*!40000 ALTER TABLE `youq_qtoos` DISABLE KEYS */;
INSERT INTO `youq_qtoos` VALUES (1,'2014-10-09',1,'2014-10-09',1002,15,1,20),(1,'2014-10-09',1,'2014-10-09',1002,14,1,19),(1,'2014-10-09',1,'2014-10-09',1001,12,1,18);
/*!40000 ALTER TABLE `youq_qtoos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youq_sections`
--

DROP TABLE IF EXISTS `youq_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youq_sections` (
  `section_id` int(11) NOT NULL,
  `section_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `creation_date` date NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updation_date` date NOT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youq_sections`
--

LOCK TABLES `youq_sections` WRITE;
/*!40000 ALTER TABLE `youq_sections` DISABLE KEYS */;
INSERT INTO `youq_sections` VALUES (1001,'Halloween',-1,'2014-10-03',-1,'2014-10-03'),(1002,'Food',-1,'2014-10-03',-1,'2014-10-03'),(1003,'Entertainment',-1,'2014-10-03',-1,'2014-10-03'),(1004,'Gardening',-1,'2014-10-03',-1,'2014-10-03');
/*!40000 ALTER TABLE `youq_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youq_users`
--

DROP TABLE IF EXISTS `youq_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youq_users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `street_address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `home_phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_date` date NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youq_users`
--

LOCK TABLES `youq_users` WRITE;
/*!40000 ALTER TABLE `youq_users` DISABLE KEYS */;
INSERT INTO `youq_users` VALUES (1,'John','','Smith','jsmith','welcome123','avatar-5.png','50435 Market Street','San Francisco','CA','USA','john.smith@gmail.com','650-678-7980','650-345-2466','2014-10-03',-1,'2014-10-03',-1),(2,'Valerie','','Dubois','vdubois','welcome123','avatar-1.png','4690 5th Street','San Francisco','CA','USA','valerie.dubois@gmail.com','650-678-7980','650-345-2466','2014-10-03',-1,'2014-10-03',-1),(3,'Jeffrey','','Pollock','jpollock','welcome123','avatar-3.png','560 Market Street','San Jose','CA','USA','jeffrey.pollock@gmail.com','650-678-7980','650-345-2466','2014-10-03',-1,'2014-10-03',-1),(4,'Allyson','','Cunha','acunha','welcome123','avatar-2.png','890 Market Street','New York','NY','USA','allyson.cunha@gmail.com','650-678-7980','650-345-2466','2014-10-03',-1,'2014-10-03',-1),(5,'Cindy','','Castro','ccastro','welcome123','avatar-4.png','4560 Market Street','Oakland','CA','USA','cindy.castro@gmail.com','650-678-7980','650-345-2466','2014-10-03',-1,'2014-10-03',-1),(6,'Michelle','','Lee','mlee','welcome123','avatar-6.png','6800 Market Street','San Francisco','CA','USA','michelle.lee@gmail.com','650-678-7980','650-345-2466','2014-10-03',-1,'2014-10-03',-1),(7,'Luca','','Varallo','lvarallo','welcome123','avatar-7.png','4500 Market Street','San Francisco','CA','USA','luca.varallo@gmail.com','650-678-7980','650-345-2466','2014-10-03',-1,'2014-10-03',-1);
/*!40000 ALTER TABLE `youq_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-09 21:39:42
