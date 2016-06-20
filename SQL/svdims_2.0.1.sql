CREATE DATABASE  IF NOT EXISTS `svdmis` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `svdmis`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: svdmis
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.10-MariaDB

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `art_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) NOT NULL,
  `art_topic` varchar(45) DEFAULT NULL,
  `art_discription` varchar(45) DEFAULT NULL,
  `art_qulity` int(11) DEFAULT NULL,
  `art_date` date DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`art_id`),
  KEY `stude_id_idx` (`stu_id`),
  CONSTRAINT `stude_id` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles_vidusarana`
--

DROP TABLE IF EXISTS `articles_vidusarana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles_vidusarana` (
  `art_id` int(11) NOT NULL,
  `vid_id` int(11) NOT NULL,
  `page number` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`art_id`,`vid_id`),
  KEY `vidu_id_idx` (`vid_id`),
  CONSTRAINT `art_id` FOREIGN KEY (`art_id`) REFERENCES `articles` (`art_id`),
  CONSTRAINT `vidu_id` FOREIGN KEY (`vid_id`) REFERENCES `vidusarana` (`vid_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles_vidusarana`
--

LOCK TABLES `articles_vidusarana` WRITE;
/*!40000 ALTER TABLE `articles_vidusarana` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles_vidusarana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(45) DEFAULT NULL,
  `book_publisher` varchar(45) DEFAULT NULL,
  `book_author` varchar(45) DEFAULT NULL,
  `book_discription` varchar(45) DEFAULT NULL,
  `book_ISBN` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_category`
--

DROP TABLE IF EXISTS `book_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_category` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `status` varchar(45) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`book_id`,`cat_id`),
  KEY `cat_id_idx` (`cat_id`),
  KEY `book_id_idx` (`book_id`),
  CONSTRAINT `book_id` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  CONSTRAINT `cat_id` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_category`
--

LOCK TABLES `book_category` WRITE;
/*!40000 ALTER TABLE `book_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(45) DEFAULT NULL,
  `cat_description` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `clz_id` int(11) NOT NULL AUTO_INCREMENT,
  `clz_grade` int(11) DEFAULT NULL,
  `clz_class` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`clz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,2,'a','1','2016-03-26 00:20:10',1,NULL,NULL),(2,2,'b','1','2016-03-26 00:20:10',1,NULL,NULL),(3,3,'a','1','2016-03-26 00:20:10',1,NULL,NULL),(4,3,'b','1','2016-03-26 00:20:10',1,NULL,NULL),(5,4,'a','1','2016-03-26 00:20:10',1,NULL,NULL),(6,4,'b','1','2016-03-26 00:20:10',1,NULL,NULL),(7,6,'c','1','2016-03-26 00:20:10',1,NULL,NULL);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_report`
--

DROP TABLE IF EXISTS `class_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_report` (
  `clz_repo_id` int(11) NOT NULL AUTO_INCREMENT,
  `clz_evaluation_cri_1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_2` int(11) DEFAULT NULL,
  `clz_evaluation_cri_3` int(11) DEFAULT NULL,
  `clz_evaluation_cri_4` int(11) DEFAULT NULL,
  `clz_evaluation_cri_5` int(11) DEFAULT NULL,
  `clz_evaluation_cri_6` int(11) DEFAULT NULL,
  `clz_evaluation_cri_7` int(11) DEFAULT NULL,
  `clz_evaluation_cri_8` int(11) DEFAULT NULL,
  `clz_evaluation_cri_9` int(11) DEFAULT NULL,
  `clz_evaluation_cri_10` int(11) DEFAULT NULL,
  `clz_evaluation_cri_11` int(11) DEFAULT NULL,
  `clz_evaluation_cri_12` int(11) DEFAULT NULL,
  `clz_evaluation_cri_13` int(11) DEFAULT NULL,
  `clz_evaluation_cri_14` int(11) DEFAULT NULL,
  `clz_evaluation_cri_15` int(11) DEFAULT NULL,
  `clz_evaluation_cri_16` int(11) DEFAULT NULL,
  `clz_evaluation_cri_17` int(11) DEFAULT NULL,
  `clz_evaluation_cri_18` int(11) DEFAULT NULL,
  `clz_evaluation_cri_19` int(11) DEFAULT NULL,
  `clz_evaluation_cri_20` int(11) DEFAULT NULL,
  `clz_evaluation_cri_21` int(11) DEFAULT NULL,
  `clz_evaluation_cri_22` int(11) DEFAULT NULL,
  `clz_evaluation_cri_23` int(11) DEFAULT NULL,
  `clz_evaluation_cri_24` int(11) DEFAULT NULL,
  `clz_evaluation_cri_25` int(11) DEFAULT NULL,
  `clz_evaluation_cri_26` int(11) DEFAULT NULL,
  `clz_evaluation_cri_27` int(11) DEFAULT NULL,
  `clz_evaluation_cri_28` int(11) DEFAULT NULL,
  `clz_evaluation_cri_29` int(11) DEFAULT NULL,
  `clz_evaluation_cri_30` int(11) DEFAULT NULL,
  `clz_evaluation_cri_31` int(11) DEFAULT NULL,
  `clz_evaluation_cri_32` int(11) DEFAULT NULL,
  `clz_evaluation_cri_33` int(11) DEFAULT NULL,
  `clz_evaluation_cri_34` int(11) DEFAULT NULL,
  `clz_evaluation_cri_35` int(11) DEFAULT NULL,
  `clz_evaluation_cri_36` int(11) DEFAULT NULL,
  `clz_evaluation_cri_37` int(11) DEFAULT NULL,
  `clz_evaluation_cri_38` int(11) DEFAULT NULL,
  `clz_evaluation_cri_39` int(11) DEFAULT NULL,
  `clz_evaluation_cri_40` int(11) DEFAULT NULL,
  `clz_evaluation_cri_41` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_42` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_43` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_44` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_45` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_46` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_47` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_48` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_49` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_50` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_51` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_52` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_53` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_54` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_55` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_56` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_57` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_58` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_59` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_60` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_61` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_62` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_63` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_64` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_65` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_66` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_67` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_68` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_69` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_70` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_71` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_72` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_73` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_74` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_75` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_76` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_77` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_78` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_79` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_80` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_1_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_2_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_3_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_4_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_5_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_6_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_7_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_8_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_9_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_10_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_11_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_12_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_13_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_14_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_15_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_16_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_17_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_18_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_19_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_20_copy1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_41_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_42_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_43_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_44_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_45_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_46_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_47_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_48_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_49_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_50_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_51_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_52_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_53_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_54_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_55_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_56_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_57_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_58_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_59_copy1` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_60_copy1` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`clz_repo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_report`
--

LOCK TABLES `class_report` WRITE;
/*!40000 ALTER TABLE `class_report` DISABLE KEYS */;
INSERT INTO `class_report` VALUES (1,95,75,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'aaaa41','aaaa42','aaaa43','aaaa44','aaaa45','aaaa46','aaaa47','aaaa48','aaaa49','aaaa50','aaaa51','aaaa52','aaaa53','aaaa54','aaaa55','aaaa56','aaaa57','aaaa58','aaaa59','aaaa60','aaaa61','aaaa62','aaaa63','aaaa64','aaaa65','aaaa66','aaaa67','aaaa68','aaaa69','aaaa70','aaaa71','aaaa72','aaaa73','aaaa74','aaaa75','aaaa76','aaaa77','aaaa78','aaaa79','aaaa80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 13:59:40',1,NULL,NULL),(2,75,80,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'aaaa41','aaaa42','aaaa43','aaaa44','aaaa45','aaaa46','aaaa47','aaaa48','aaaa49','aaaa50','aaaa51','aaaa52','aaaa53','aaaa54','aaaa55','aaaa56','aaaa57','aaaa58','aaaa59','aaaa60','aaaa61','aaaa62','aaaa63','aaaa64','aaaa65','aaaa66','aaaa67','aaaa68','aaaa69','aaaa70','aaaa71','aaaa72','aaaa73','aaaa74','aaaa75','aaaa76','aaaa77','aaaa78','aaaa79','aaaa80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 13:59:49',1,NULL,NULL),(3,75,90,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'aaaa41','aaaa42','aaaa43','aaaa44','aaaa45','aaaa46','aaaa47','aaaa48','aaaa49','aaaa50','aaaa51','aaaa52','aaaa53','aaaa54','aaaa55','aaaa56','aaaa57','aaaa58','aaaa59','aaaa60','aaaa61','aaaa62','aaaa63','aaaa64','aaaa65','aaaa66','aaaa67','aaaa68','aaaa69','aaaa70','aaaa71','aaaa72','aaaa73','aaaa74','aaaa75','aaaa76','aaaa77','aaaa78','aaaa79','aaaa80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 14:00:40',1,NULL,NULL),(4,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'aaaa41','aaaa42','aaaa43','aaaa44','aaaa45','aaaa46','aaaa47','aaaa48','aaaa49','aaaa50','aaaa51','aaaa52','aaaa53','aaaa54','aaaa55','aaaa56','aaaa57','aaaa58','aaaa59','aaaa60','aaaa61','aaaa62','aaaa63','aaaa64','aaaa65','aaaa66','aaaa67','aaaa68','aaaa69','aaaa70','aaaa71','aaaa72','aaaa73','aaaa74','aaaa75','aaaa76','aaaa77','aaaa78','aaaa79','aaaa80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 14:02:56',1,NULL,NULL),(5,25,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'aaaa41','aaaa42','aaaa43','aaaa44','aaaa45','aaaa46','aaaa47','aaaa48','aaaa49','aaaa50','aaaa51','aaaa52','aaaa53','aaaa54','aaaa55','aaaa56','aaaa57','aaaa58','aaaa59','aaaa60','aaaa61','aaaa62','aaaa63','aaaa64','aaaa65','aaaa66','aaaa67','aaaa68','aaaa69','aaaa70','aaaa71','aaaa72','aaaa73','aaaa74','aaaa75','aaaa76','aaaa77','aaaa78','aaaa79','aaaa80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 14:09:19',1,NULL,NULL),(6,75,10,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'aaaa41','aaaa42','aaaa43','aaaa44','aaaa45','aaaa46','aaaa47','aaaa48','aaaa49','aaaa50','aaaa51','aaaa52','aaaa53','aaaa54','aaaa55','aaaa56','aaaa57','aaaa58','aaaa59','aaaa60','aaaa61','aaaa62','aaaa63','aaaa64','aaaa65','aaaa66','aaaa67','aaaa68','aaaa69','aaaa70','aaaa71','aaaa72','aaaa73','aaaa74','aaaa75','aaaa76','aaaa77','aaaa78','aaaa79','aaaa80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 14:09:40',1,NULL,NULL),(7,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'aaaa41','aaaa42','aaaa43','aaaa44','aaaa45','aaaa46','aaaa47','aaaa48','aaaa49','aaaa50','aaaa51','aaaa52','aaaa53','aaaa54','aaaa55','aaaa56','aaaa57','aaaa58','aaaa59','aaaa60','aaaa61','aaaa62','aaaa63','aaaa64','aaaa65','aaaa66','aaaa67','aaaa68','aaaa69','aaaa70','aaaa71','aaaa72','aaaa73','aaaa74','aaaa75','aaaa76','aaaa77','aaaa78','aaaa79','aaaa80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 14:11:40',1,NULL,NULL),(8,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'aaaa41','aaaa42','aaaa43','aaaa44','aaaa45','aaaa46','aaaa47','aaaa48','aaaa49','aaaa50','aaaa51','aaaa52','aaaa53','aaaa54','aaaa55','aaaa56','aaaa57','aaaa58','aaaa59','aaaa60','aaaa61','aaaa62','aaaa63','aaaa64','aaaa65','aaaa66','aaaa67','aaaa68','aaaa69','aaaa70','aaaa71','aaaa72','aaaa73','aaaa74','aaaa75','aaaa76','aaaa77','aaaa78','aaaa79','aaaa80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 14:11:49',1,NULL,NULL),(9,75,0,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'aaaa41','aaaa42','aaaa43','aaaa44','aaaa45','aaaa46','aaaa47','aaaa48','aaaa49','aaaa50','aaaa51','aaaa52','aaaa53','aaaa54','aaaa55','aaaa56','aaaa57','aaaa58','aaaa59','aaaa60','aaaa61','aaaa62','aaaa63','aaaa64','aaaa65','aaaa66','aaaa67','aaaa68','aaaa69','aaaa70','aaaa71','aaaa72','aaaa73','aaaa74','aaaa75','aaaa76','aaaa77','aaaa78','aaaa79','aaaa80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 14:14:22',1,NULL,NULL),(10,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'aaaa41','aaaa42','aaaa43','aaaa44','aaaa45','aaaa46','aaaa47','aaaa48','aaaa49','aaaa50','aaaa51','aaaa52','aaaa53','aaaa54','aaaa55','aaaa56','aaaa57','aaaa58','aaaa59','aaaa60','aaaa61','aaaa62','aaaa63','aaaa64','aaaa65','aaaa66','aaaa67','aaaa68','aaaa69','aaaa70','aaaa71','aaaa72','aaaa73','aaaa74','aaaa75','aaaa76','aaaa77','aaaa78','aaaa79','aaaa80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 14:19:09',1,NULL,NULL),(11,75,50,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 14:41:56',1,NULL,NULL),(12,75,50,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 16:56:37',1,NULL,NULL),(13,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:28:05',1,NULL,NULL),(14,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:28:06',1,NULL,NULL),(15,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:28:06',1,NULL,NULL),(16,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:28:06',1,NULL,NULL),(17,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:28:06',1,NULL,NULL),(18,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:28:06',1,NULL,NULL),(19,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:28:06',1,NULL,NULL),(20,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:28:06',1,NULL,NULL),(21,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:28:06',1,NULL,NULL),(22,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:34:40',1,NULL,NULL),(23,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:34:40',1,NULL,NULL),(24,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:34:40',1,NULL,NULL),(25,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:34:40',1,NULL,NULL),(26,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:34:40',1,NULL,NULL),(27,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:34:40',1,NULL,NULL),(28,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:34:41',1,NULL,NULL),(29,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:34:41',1,NULL,NULL),(30,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:34:41',1,NULL,NULL),(31,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:35:21',1,NULL,NULL),(32,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:35:21',1,NULL,NULL),(33,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:35:21',1,NULL,NULL),(34,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:35:21',1,NULL,NULL),(35,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:35:21',1,NULL,NULL),(36,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:35:21',1,NULL,NULL),(37,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:35:21',1,NULL,NULL),(38,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:35:21',1,NULL,NULL),(39,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:35:22',1,NULL,NULL),(40,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:37:53',1,NULL,NULL),(41,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:37:53',1,NULL,NULL),(42,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:37:53',1,NULL,NULL),(43,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:37:53',1,NULL,NULL),(44,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:37:53',1,NULL,NULL),(45,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:37:53',1,NULL,NULL),(46,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:39:58',1,NULL,NULL),(47,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:39:58',1,NULL,NULL),(48,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:39:58',1,NULL,NULL),(49,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:39:58',1,NULL,NULL),(50,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:39:58',1,NULL,NULL),(51,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:39:58',1,NULL,NULL),(52,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:39:58',1,NULL,NULL),(53,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:39:58',1,NULL,NULL),(54,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:39:58',1,NULL,NULL),(55,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:17',1,NULL,NULL),(56,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:17',1,NULL,NULL),(57,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:17',1,NULL,NULL),(58,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:17',1,NULL,NULL),(59,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:17',1,NULL,NULL),(60,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:17',1,NULL,NULL),(61,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:18',1,NULL,NULL),(62,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:18',1,NULL,NULL),(63,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:18',1,NULL,NULL),(64,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:18',1,NULL,NULL),(65,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:18',1,NULL,NULL),(66,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:18',1,NULL,NULL),(67,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:18',1,NULL,NULL),(68,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:18',1,NULL,NULL),(69,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:18',1,NULL,NULL),(70,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:18',1,NULL,NULL),(71,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:18',1,NULL,NULL),(72,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:18',1,NULL,NULL),(73,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:18',1,NULL,NULL),(74,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:19',1,NULL,NULL),(75,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:19',1,NULL,NULL),(76,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:19',1,NULL,NULL),(77,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:19',1,NULL,NULL),(78,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:19',1,NULL,NULL),(79,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:19',1,NULL,NULL),(80,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:19',1,NULL,NULL),(81,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:19',1,NULL,NULL),(82,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:19',1,NULL,NULL),(83,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:19',1,NULL,NULL),(84,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:19',1,NULL,NULL),(85,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:19',1,NULL,NULL),(86,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:19',1,NULL,NULL),(87,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:19',1,NULL,NULL),(88,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:19',1,NULL,NULL),(89,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:19',1,NULL,NULL),(90,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 17:59:19',1,NULL,NULL),(91,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:19',1,NULL,NULL),(92,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:19',1,NULL,NULL),(93,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:19',1,NULL,NULL),(94,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:19',1,NULL,NULL),(95,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:19',1,NULL,NULL),(96,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:19',1,NULL,NULL),(97,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:19',1,NULL,NULL),(98,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:19',1,NULL,NULL),(99,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:19',1,NULL,NULL),(100,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:19',1,NULL,NULL),(101,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:19',1,NULL,NULL),(102,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:19',1,NULL,NULL),(103,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:20',1,NULL,NULL),(104,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:20',1,NULL,NULL),(105,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:20',1,NULL,NULL),(106,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:20',1,NULL,NULL),(107,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:20',1,NULL,NULL),(108,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:20',1,NULL,NULL),(109,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:20',1,NULL,NULL),(110,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:20',1,NULL,NULL),(111,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:20',1,NULL,NULL),(112,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:20',1,NULL,NULL),(113,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:20',1,NULL,NULL),(114,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:20',1,NULL,NULL),(115,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:20',1,NULL,NULL),(116,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:20',1,NULL,NULL),(117,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:20',1,NULL,NULL),(118,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:21',1,NULL,NULL),(119,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:21',1,NULL,NULL),(120,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:21',1,NULL,NULL),(121,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:21',1,NULL,NULL),(122,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:03:21',1,NULL,NULL),(123,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:39',1,NULL,NULL),(124,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:39',1,NULL,NULL),(125,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:39',1,NULL,NULL),(126,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:39',1,NULL,NULL),(127,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:39',1,NULL,NULL),(128,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:39',1,NULL,NULL),(129,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:39',1,NULL,NULL),(130,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:39',1,NULL,NULL),(131,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:39',1,NULL,NULL),(132,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:39',1,NULL,NULL),(133,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:39',1,NULL,NULL),(134,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:39',1,NULL,NULL),(135,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:40',1,NULL,NULL),(136,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:40',1,NULL,NULL),(137,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:40',1,NULL,NULL),(138,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:40',1,NULL,NULL),(139,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:40',1,NULL,NULL),(140,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:40',1,NULL,NULL),(141,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:40',1,NULL,NULL),(142,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:40',1,NULL,NULL),(143,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:40',1,NULL,NULL),(144,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:40',1,NULL,NULL),(145,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:40',1,NULL,NULL),(146,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:40',1,NULL,NULL),(147,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:40',1,NULL,NULL),(148,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:40',1,NULL,NULL),(149,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:41',1,NULL,NULL),(150,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:41',1,NULL,NULL),(151,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:41',1,NULL,NULL),(152,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:41',1,NULL,NULL),(153,75,50,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:41',1,NULL,NULL),(154,75,50,3,4,5,3,2,4,1,3,3,2,4,3,2,4,3,4,1,2,4,5,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,'41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-17 18:05:41',1,NULL,NULL),(155,75,50,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,1,1,1,1,1,1,1,1,'Yes','Yes','Yes','Yes','Yes','No','No','No','No','Yes','Yes','Yes','Yes','Yes','Yes','Yes','No','No','No','No','No','No','No','No','No','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','No','No',NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Yes','Yes','No','ledak','With Mother','With Mother','By Private vehicale','Yes','Yes','No','Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 06:24:16',1,NULL,NULL),(156,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Yes','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 06:24:16',1,NULL,NULL),(157,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Yes','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 06:24:16',1,NULL,NULL),(158,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 06:24:16',1,NULL,NULL),(159,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 06:24:16',1,NULL,NULL),(160,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 06:24:16',1,NULL,NULL),(161,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 06:24:16',1,NULL,NULL),(162,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 06:24:16',1,NULL,NULL),(163,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 06:24:16',1,NULL,NULL),(164,75,50,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,1,1,1,1,1,'Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes',NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Yes','Yes','aaaaaa','aaaaaaa','With Mother','Un Known','By Private vehicale','Yes','Yes','Yes','Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 07:55:30',1,NULL,NULL),(165,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 07:55:30',1,NULL,NULL),(166,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 07:55:30',1,NULL,NULL),(167,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 07:55:30',1,NULL,NULL),(168,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 07:55:30',1,NULL,NULL),(169,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 07:55:30',1,NULL,NULL),(170,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 07:55:31',1,NULL,NULL),(171,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 07:55:31',1,NULL,NULL),(172,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 07:55:31',1,NULL,NULL),(173,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 07:55:31',1,NULL,NULL),(174,75,50,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 07:55:31',1,NULL,NULL),(175,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 07:55:31',1,NULL,NULL),(176,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 07:55:31',1,NULL,NULL),(177,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','4','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 07:55:31',1,NULL,NULL),(178,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','3','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 07:55:31',1,NULL,NULL),(179,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','2','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 07:55:31',1,NULL,NULL),(180,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','1','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 07:55:31',1,NULL,NULL),(181,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','4','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-18 07:55:31',1,NULL,NULL),(182,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','3','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-27 10:53:31',1,NULL,NULL),(183,75,50,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,1,1,1,1,1,'Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes',NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Yes','Yes','aaaaaa','aaaaaaa','With Mother','Un Known','2','Yes','Yes','Yes','Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-27 10:53:31',1,NULL,NULL),(184,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','1','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-27 10:53:31',1,NULL,NULL),(185,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','4','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-27 10:53:31',1,NULL,NULL),(186,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','3','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-27 10:53:31',1,NULL,NULL),(187,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','Un Known','2','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-27 10:53:31',1,NULL,NULL),(188,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','5','1','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-27 10:53:31',1,NULL,NULL),(189,75,50,1,2,3,4,5,4,3,2,5,5,3,4,2,5,1,3,4,2,3,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','Un Known','1','4','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-27 10:53:31',1,NULL,NULL),(190,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','2','3','3','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-27 10:53:31',1,NULL,NULL),(191,90,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Yes','Yes','No','No','1','2','2','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-27 10:53:31',1,NULL,NULL),(192,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'yes','yes','No','No','5','5','1','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-27 10:53:31',1,NULL,NULL),(193,75,50,5,4,3,2,5,5,5,4,1,2,3,5,4,1,2,3,5,4,4,4,1,5,3,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','yes','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','No','4','1','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-27 10:53:31',1,NULL,NULL),(194,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'yes','yes','No','No','2','6','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-27 10:53:31',1,NULL,NULL),(195,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','yes','No','No','2','5','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-27 10:53:31',1,NULL,NULL),(196,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','yes','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'yes','No','No','No','1','4','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-27 10:53:31',1,NULL,NULL),(197,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,2,3,4,5,6,7,1,2,3,4,5,6,7,8,9,10,11,'yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes','yes',NULL,NULL,NULL,NULL,NULL,1,2,3,4,5,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','1','yes','1','3','Un Known','Yes','Yes','Yes','Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-27 10:53:31',1,NULL,NULL),(198,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'yes','No','No','No','3','1','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-27 10:53:31',1,NULL,NULL),(199,75,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'yes','No','No','No','1','2','Un Known','No','No','No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-04-27 10:53:31',1,NULL,NULL);
/*!40000 ALTER TABLE `class_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copy`
--

DROP TABLE IF EXISTS `copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copy` (
  `copy_id` int(11) NOT NULL AUTO_INCREMENT,
  `copy_book_id` int(11) NOT NULL,
  `copy_publish_year` int(11) DEFAULT NULL,
  `copy_place` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`copy_id`),
  KEY `pla_id_idx` (`copy_place`),
  KEY `book_idnew_idx` (`copy_book_id`),
  CONSTRAINT `book_idnew` FOREIGN KEY (`copy_book_id`) REFERENCES `book` (`book_id`),
  CONSTRAINT `pla_id` FOREIGN KEY (`copy_place`) REFERENCES `place` (`pla_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copy`
--

LOCK TABLES `copy` WRITE;
/*!40000 ALTER TABLE `copy` DISABLE KEYS */;
/*!40000 ALTER TABLE `copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `desies_view`
--

DROP TABLE IF EXISTS `desies_view`;
/*!50001 DROP VIEW IF EXISTS `desies_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `desies_view` AS SELECT 
 1 AS `stu_admission_number`,
 1 AS `dis_found_year`,
 1 AS `dis_name`,
 1 AS `dis_explanation`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `diseases`
--

DROP TABLE IF EXISTS `diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diseases` (
  `dis_id` int(11) NOT NULL AUTO_INCREMENT,
  `dis_name` varchar(45) DEFAULT NULL,
  `dis_explanation` varchar(1500) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`dis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diseases`
--

LOCK TABLES `diseases` WRITE;
/*!40000 ALTER TABLE `diseases` DISABLE KEYS */;
INSERT INTO `diseases` VALUES (1,'Visual Defects','(Long Sighted, Short Sighted)',1,'2016-03-26 00:20:10',1,NULL,NULL),(2,'Hearing Defects','',1,'2016-03-26 00:20:10',1,NULL,NULL),(3,'Heart Diseases','(ASD,VSD)',1,'2016-03-26 00:20:10',1,NULL,NULL),(4,'Rheumatic Fever','',1,'2016-03-26 00:20:10',1,NULL,NULL),(5,'Respiratory Problems','(Asthma, Catarrh)',1,'2016-03-26 00:20:10',1,NULL,NULL),(6,'Physical Deformities','(Deformities in arms and legs)',1,'2016-03-26 00:20:10',1,NULL,NULL),(7,'Mental Problems','(Hyperactive, Abnormal Behavior, Difficulties in learning)',1,'2016-03-26 00:20:10',1,NULL,NULL),(8,'Fits','(Febrile Fits, Epilepsy)',1,'2016-03-26 00:20:10',1,NULL,NULL),(9,'Endocrine Gland Disorders','(Diabetes, Defects of Thyroid Gland)',1,'2016-03-26 00:20:10',1,NULL,NULL),(10,'Other','',1,'2016-03-26 00:20:10',1,NULL,NULL);
/*!40000 ALTER TABLE `diseases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation_reason`
--

DROP TABLE IF EXISTS `donation_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donation_reason` (
  `don_rea_id` int(11) NOT NULL AUTO_INCREMENT,
  `don_rea_name` varchar(45) DEFAULT NULL,
  `don_rea_description` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`don_rea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation_reason`
--

LOCK TABLES `donation_reason` WRITE;
/*!40000 ALTER TABLE `donation_reason` DISABLE KEYS */;
/*!40000 ALTER TABLE `donation_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donations` (
  `don_id` int(11) NOT NULL AUTO_INCREMENT,
  `don_amount` double DEFAULT NULL,
  `don_receipt_id` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `purpose` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`don_id`),
  KEY `don_rea_id_idx` (`purpose`),
  CONSTRAINT `don_rea_id` FOREIGN KEY (`purpose`) REFERENCES `donation_reason` (`don_rea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations`
--

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
/*!40000 ALTER TABLE `donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam` (
  `exm_id` int(11) NOT NULL AUTO_INCREMENT,
  `exm_name` varchar(100) DEFAULT NULL,
  `exm_discription` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`exm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` VALUES (1,'Grade 2 -  First Term Test','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(2,'Grade 2 -  Second Term Test','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(3,'Grade 2 -  Third Term Test','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(4,'Grade 3 -  First Term Test','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(5,'Grade 3 -  Second Term Test','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(6,'Grade 3 -  Third Term Test','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(7,'Grade 4 -  First Term Test','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(8,'Grade 4 -  Second Term Test','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(9,'Grade 4 -  Third Term Test','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(10,'Grade 5 -  First Term Test','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(11,'Grade 5 -  Second Term Test','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(12,'Grade 5 -  Third Term Test','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(13,'Grade 6 - Bodu Aruna Exam','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(14,'Grade 6 - Baudhdha Katayuthu Exam','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(15,'Grade 7 - Bodu Aruna Exam','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(16,'Grade 7 - Baudhdha Katayuthu Exam','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(17,'Grade 8 - Bodu Aruna Exam','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(18,'Grade 8 - Baudhdha Katayuthu Exam','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(19,'Grade 9 - Bodu Aruna Exam','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(20,'Grade 9 - Baudhdha Katayuthu Exam','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(21,'Grade 10 - Bodu Aruna Exam','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(22,'Grade 10 - Baudhdha Katayuthu Exam','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(23,'Awasaana Exam - Baudhdha Charithaya','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(24,'Awasaana Exam - Shasana Ithihasaya','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(25,'Awasaana Exam - Budhdha Dharmaya ha pali bhasha parichaya','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(26,'Awasaana Exam - Baudhdha Sanskruthiya','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(27,'Dharmacharya - Therawadi Bududhame Mulika Iganwim','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(28,'Dharmacharya - Abhidarmaya','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(29,'Dharmacharya - Baudha Vinaya Margaya Ha Pali','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(30,'Dharmacharya - Bauddha Samaja Darshanaya','  ',1,'2016-03-26 00:20:10',1,NULL,NULL),(31,'Dharmacharya - Badudha Sanskruthiya','  ',1,'2016-03-26 00:20:10',1,NULL,NULL);
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `father`
--

DROP TABLE IF EXISTS `father`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `father` (
  `far_id` int(11) NOT NULL AUTO_INCREMENT,
  `far_name` varchar(500) NOT NULL,
  `far_phone_number` varchar(45) DEFAULT NULL,
  `far_adress` varchar(500) DEFAULT NULL,
  `far_email_address` varchar(500) DEFAULT NULL,
  `far_occupation` varchar(500) DEFAULT NULL,
  `far_occupation_type` int(11) DEFAULT NULL,
  `far_office_address` varchar(500) DEFAULT NULL,
  `far_office_phone_number` varchar(45) DEFAULT NULL,
  `far_stu_addmision_number` varchar(45) DEFAULT NULL,
  `far_old_student_number` varchar(45) DEFAULT NULL,
  `far_other_interactions_with_dp` varchar(1500) DEFAULT NULL,
  `far_nic` varchar(45) DEFAULT NULL,
  `far_tea_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`far_id`),
  KEY `occ_type_id_idx` (`far_occupation_type`),
  CONSTRAINT `occ_type_id` FOREIGN KEY (`far_occupation_type`) REFERENCES `occupation_type` (`occ_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `father`
--

LOCK TABLES `father` WRITE;
/*!40000 ALTER TABLE `father` DISABLE KEYS */;
INSERT INTO `father` VALUES (1,'far1','01111','123hhhh','ghasithalakmal@gmail.com','techer',1,'123aaaa','123456789',NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(2,'far2','01111','123hhhh','ghasithalakmal@gmail.com','techer',2,'123aaaa','123456789',NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(3,'far3','01111','123hhhh','ghasithalakmal@gmail.com','techer',1,'123aaaa','123456789',NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(4,'massa father',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-13 05:51:09',1,NULL,NULL),(5,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-13 05:53:04',1,NULL,NULL),(6,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 09:56:28',1,NULL,NULL),(7,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 09:58:55',1,NULL,NULL),(8,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 09:59:25',1,NULL,NULL),(9,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:02:02',1,NULL,NULL),(10,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:02:16',1,NULL,NULL),(11,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:02:43',1,NULL,NULL),(12,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:03:30',1,NULL,NULL),(13,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:04:23',1,NULL,NULL),(14,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:06:10',1,NULL,NULL),(15,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:06:53',1,NULL,NULL),(16,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:07:18',1,NULL,NULL),(17,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:11:45',1,NULL,NULL),(18,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:17:17',1,NULL,NULL),(19,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:18:10',1,NULL,NULL),(20,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:18:21',1,NULL,NULL),(21,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:18:38',1,NULL,NULL),(22,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:19:02',1,NULL,NULL),(23,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:19:22',1,NULL,NULL),(24,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:19:45',1,NULL,NULL),(25,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:22:04',1,NULL,NULL),(26,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:22:33',1,NULL,NULL),(27,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:23:56',1,NULL,NULL),(28,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:24:36',1,NULL,NULL),(29,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:25:09',1,NULL,NULL),(30,'massa farher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:27:19',1,NULL,NULL),(36,'wwwww',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 14:19:15',1,NULL,NULL),(46,'ffffffffffffff',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 15:10:18',1,NULL,NULL),(49,'jjjjjjjjjj',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 15:16:37',1,NULL,NULL),(50,'wwwwwwwwww',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 15:20:03',1,NULL,NULL),(57,'ddddddddddddd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 00:59:33',1,NULL,NULL),(58,'aaaaaaaaaaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 01:02:46',1,NULL,NULL),(59,'aaaaaaaaaaaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 01:03:52',1,NULL,NULL),(60,'aaaaaaaaaaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 01:06:59',1,NULL,NULL),(61,'jjjjjjjjjjjj',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 01:08:49',1,NULL,NULL),(62,'aaaaaaaaaaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 01:09:58',1,NULL,NULL),(63,'ssssssssssss',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 01:11:55',1,NULL,NULL),(64,'ssssssssssss',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 01:16:15',1,NULL,NULL),(65,'ssssssssssss',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 01:17:45',1,NULL,NULL),(66,'wwwwwwwwwww',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 01:18:28',1,NULL,NULL),(68,'aaaaaaaaaaa','','','','',4,'','','','','','',1,1,'2016-04-15 01:20:59',1,NULL,NULL),(69,'aaaaaaaaaaa','','','','',4,'','','','','','',0,1,'2016-04-15 01:21:38',1,NULL,NULL),(70,'aaaaaaaaaaa','','','','',4,'','','','','','',0,1,'2016-04-15 01:22:44',1,NULL,NULL),(71,'aaaaaaaaa','','','','',4,'','','','','','',0,1,'2016-04-15 01:39:31',1,NULL,NULL),(72,'aaaaaaaaaaaaa','','','','',4,'','','','','','',0,1,'2016-04-15 01:41:40',1,NULL,NULL),(73,'Null','','','','',18,'','','','','','',0,1,'2016-06-07 08:11:28',1,NULL,NULL),(74,'null','','','','',18,'','','','','','',0,1,'2016-06-07 08:21:02',1,NULL,NULL);
/*!40000 ALTER TABLE `father` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_9_thurunu_saviya`
--

DROP TABLE IF EXISTS `grade_9_thurunu_saviya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_thurunu_saviya` (
  `ts9_id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `ts9_group` varchar(45) DEFAULT NULL,
  `ts9_daily_attendance` int(11) DEFAULT NULL,
  `ts9_poya_attendance` int(11) DEFAULT NULL,
  `ts9_recomendation` varchar(1500) DEFAULT NULL,
  `ts9_evaluation_cri_1` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_2` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_3` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_4` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_5` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_6` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_7` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_8` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_9` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_10` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_11` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_12` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_13` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_14` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_15` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_16` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_17` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_18` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_19` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_20` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_21` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_22` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_23` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_24` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_25` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_26` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_27` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_28` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_29` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_30` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`ts9_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_thurunu_saviya`
--

LOCK TABLES `grade_9_thurunu_saviya` WRITE;
/*!40000 ALTER TABLE `grade_9_thurunu_saviya` DISABLE KEYS */;
INSERT INTO `grade_9_thurunu_saviya` VALUES (1,2015,'Nandimithra',2,3,'aaaaaaaaaaaa',10,20,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:25:06',1,NULL,NULL),(2,2015,'Nandimithra',2,3,'aaaaaaaaaaaa',10,20,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:26:35',1,NULL,NULL),(3,2015,'Nandimithra',2,3,'aaaaaaaaaaaa',10,20,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:27:50',1,NULL,NULL),(4,2016,'Nandimithra',21,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:35',1,NULL,NULL),(5,2016,'Nandimithra',20,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:35',1,NULL,NULL),(6,2016,'Nandimithra',22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:35',1,NULL,NULL),(7,2016,'Nandimithra',24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:35',1,NULL,NULL),(8,2016,'Nandimithra',23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:35',1,NULL,NULL),(9,2016,'Nandimithra',25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:35',1,NULL,NULL),(10,2016,'Nandimithra',26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:35',1,NULL,NULL),(11,2016,'Nandimithra',27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:35',1,NULL,NULL),(12,2016,'Nandimithra',28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:35',1,NULL,NULL),(13,2016,'Suranimala',20,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:35',1,NULL,NULL),(14,2016,'Suranimala',21,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:35',1,NULL,NULL),(15,2016,'Nandimithra',29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:35',1,NULL,NULL),(16,2016,'Suranimala',22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:35',1,NULL,NULL),(17,2016,'Suranimala',23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:35',1,NULL,NULL),(18,2016,'Suranimala',24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:35',1,NULL,NULL),(19,2016,'Suranimala',25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:35',1,NULL,NULL),(20,2016,'Suranimala',27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:35',1,NULL,NULL),(21,2016,'Suranimala',26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:35',1,NULL,NULL),(22,2016,'Suranimala',28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:36',1,NULL,NULL),(23,2016,'Suranimala',29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:42:36',1,NULL,NULL),(24,2016,'Nandimithra',20,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:01',1,NULL,NULL),(25,2016,'Nandimithra',21,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:01',1,NULL,NULL),(26,2016,'Nandimithra',22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:01',1,NULL,NULL),(27,2016,'Nandimithra',23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:01',1,NULL,NULL),(28,2016,'Nandimithra',24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:01',1,NULL,NULL),(29,2016,'Nandimithra',25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:01',1,NULL,NULL),(30,2016,'Nandimithra',26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:02',1,NULL,NULL),(31,2016,'Nandimithra',27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:02',1,NULL,NULL),(32,2016,'Nandimithra',28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:02',1,NULL,NULL),(33,2016,'Nandimithra',29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:02',1,NULL,NULL),(34,2016,'Suranimala',21,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:02',1,NULL,NULL),(35,2016,'Suranimala',20,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:02',1,NULL,NULL),(36,2016,'Suranimala',22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:02',1,NULL,NULL),(37,2016,'Suranimala',24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:02',1,NULL,NULL),(38,2016,'Suranimala',26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:02',1,NULL,NULL),(39,2016,'Suranimala',27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:02',1,NULL,NULL),(40,2016,'Suranimala',25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:02',1,NULL,NULL),(41,2016,'Suranimala',23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:02',1,NULL,NULL),(42,2016,'Suranimala',28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:02',1,NULL,NULL),(43,2016,'Suranimala',29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 01:45:02',1,NULL,NULL);
/*!40000 ALTER TABLE `grade_9_thurunu_saviya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gread_10_thurunu_saviya`
--

DROP TABLE IF EXISTS `gread_10_thurunu_saviya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gread_10_thurunu_saviya` (
  `ts10_id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `ts10_group` varchar(45) DEFAULT NULL,
  `ts10_daily_attendance` int(11) DEFAULT NULL,
  `ts10_poya_attendance` int(11) DEFAULT NULL,
  `ts10_recomendation` varchar(1500) DEFAULT NULL,
  `ts10_evaluation_cri_1` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_2` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_3` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_4` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_5` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_6` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_7` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_8` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_9` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_10` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_11` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_12` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_13` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_14` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_15` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_16` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_17` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_18` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_19` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_20` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_21` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_22` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_23` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_24` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_25` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_26` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_27` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_28` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_29` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_30` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`ts10_id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gread_10_thurunu_saviya`
--

LOCK TABLES `gread_10_thurunu_saviya` WRITE;
/*!40000 ALTER TABLE `gread_10_thurunu_saviya` DISABLE KEYS */;
INSERT INTO `gread_10_thurunu_saviya` VALUES (1,2016,'Nandimithra',0,0,'0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:10:37',0,NULL,NULL),(2,2015,'Nandimithra',2,3,'aaaaaaaaaaaa',10,20,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:10:45',1,NULL,NULL),(3,2016,'Nandimithra',21,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:56',1,NULL,NULL),(4,2016,'Nandimithra',20,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:56',1,NULL,NULL),(5,2016,'Nandimithra',23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:56',1,NULL,NULL),(6,2016,'Nandimithra',22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:56',1,NULL,NULL),(7,2016,'Nandimithra',24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:56',1,NULL,NULL),(8,2016,'Nandimithra',25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:57',1,NULL,NULL),(9,2016,'Nandimithra',26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:57',1,NULL,NULL),(10,2016,'Nandimithra',28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:57',1,NULL,NULL),(11,2016,'Nandimithra',29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:57',1,NULL,NULL),(12,2016,'Nandimithra',27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:57',1,NULL,NULL),(13,2016,'Suranimala',21,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:57',1,NULL,NULL),(14,2016,'Suranimala',22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:57',1,NULL,NULL),(15,2016,'Suranimala',20,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:57',1,NULL,NULL),(16,2016,'Suranimala',23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:57',1,NULL,NULL),(17,2016,'Suranimala',27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:57',1,NULL,NULL),(18,2016,'Suranimala',24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:57',1,NULL,NULL),(19,2016,'Suranimala',25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:57',1,NULL,NULL),(20,2016,'Suranimala',26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:57',1,NULL,NULL),(21,2016,'Suranimala',28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:57',1,NULL,NULL),(22,2016,'Suranimala',29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:16:57',1,NULL,NULL),(23,2016,'Nandimithra',20,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:36',1,NULL,NULL),(24,2016,'Nandimithra',21,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:36',1,NULL,NULL),(25,2016,'Nandimithra',22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:36',1,NULL,NULL),(26,2016,'Nandimithra',23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:36',1,NULL,NULL),(27,2016,'Nandimithra',24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:36',1,NULL,NULL),(28,2016,'Nandimithra',25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:36',1,NULL,NULL),(29,2016,'Nandimithra',27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:36',1,NULL,NULL),(30,2016,'Nandimithra',26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:36',1,NULL,NULL),(31,2016,'Nandimithra',28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:36',1,NULL,NULL),(32,2016,'Nandimithra',29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:36',1,NULL,NULL),(33,2016,'Suranimala',20,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:36',1,NULL,NULL),(34,2016,'Suranimala',21,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:36',1,NULL,NULL),(35,2016,'Suranimala',23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:36',1,NULL,NULL),(36,2016,'Suranimala',22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:36',1,NULL,NULL),(37,2016,'Suranimala',26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:36',1,NULL,NULL),(38,2016,'Suranimala',24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:36',1,NULL,NULL),(39,2016,'Suranimala',25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:36',1,NULL,NULL),(40,2016,'Suranimala',27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:36',1,NULL,NULL),(41,2016,'Suranimala',28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:37',1,NULL,NULL),(42,2016,'Suranimala',29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:37',1,NULL,NULL),(43,2016,'Nandimithra',22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:50',1,NULL,NULL),(44,2016,'Nandimithra',21,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:50',1,NULL,NULL),(45,2016,'Nandimithra',20,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:50',1,NULL,NULL),(46,2016,'Nandimithra',23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:50',1,NULL,NULL),(47,2016,'Nandimithra',24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:50',1,NULL,NULL),(48,2016,'Nandimithra',25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:50',1,NULL,NULL),(49,2016,'Nandimithra',28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:50',1,NULL,NULL),(50,2016,'Nandimithra',26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:50',1,NULL,NULL),(51,2016,'Nandimithra',27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:50',1,NULL,NULL),(52,2016,'Nandimithra',29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:50',1,NULL,NULL),(53,2016,'Suranimala',20,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:50',1,NULL,NULL),(54,2016,'Suranimala',21,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:50',1,NULL,NULL),(55,2016,'Suranimala',22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:50',1,NULL,NULL),(56,2016,'Suranimala',24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:50',1,NULL,NULL),(57,2016,'Suranimala',23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:51',1,NULL,NULL),(58,2016,'Suranimala',26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:51',1,NULL,NULL),(59,2016,'Suranimala',25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:51',1,NULL,NULL),(60,2016,'Suranimala',27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:51',1,NULL,NULL),(61,2016,'Suranimala',28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:51',1,NULL,NULL),(62,2016,'Suranimala',29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:18:51',1,NULL,NULL),(63,2015,'Nandimithra',2,3,'aaaaaaaaaaaa',10,20,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:20:36',1,NULL,NULL),(64,2016,'Nandimithra',20,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:27:59',1,NULL,NULL),(65,2016,'Nandimithra',21,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:27:59',1,NULL,NULL),(66,2016,'Nandimithra',22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:27:59',1,NULL,NULL),(67,2016,'Nandimithra',23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:27:59',1,NULL,NULL),(68,2016,'Nandimithra',24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:27:59',1,NULL,NULL),(69,2016,'Nandimithra',25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:28:00',1,NULL,NULL),(70,2016,'Nandimithra',27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:28:00',1,NULL,NULL),(71,2016,'Nandimithra',26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:28:00',1,NULL,NULL),(72,2016,'Nandimithra',28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:28:00',1,NULL,NULL),(73,2016,'Nandimithra',29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:28:00',1,NULL,NULL),(74,2016,'Suranimala',20,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:28:00',1,NULL,NULL),(75,2016,'Suranimala',21,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:28:00',1,NULL,NULL),(76,2016,'Suranimala',24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:28:00',1,NULL,NULL),(77,2016,'Suranimala',25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:28:00',1,NULL,NULL),(78,2016,'Suranimala',26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:28:00',1,NULL,NULL),(79,2016,'Suranimala',22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:28:00',1,NULL,NULL),(80,2016,'Suranimala',23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:28:00',1,NULL,NULL),(81,2016,'Suranimala',27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:28:00',1,NULL,NULL),(82,2016,'Suranimala',29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:28:00',1,NULL,NULL),(83,2016,'Suranimala',28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:28:00',1,NULL,NULL),(84,2016,'Nandimithra',20,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:57',1,NULL,NULL),(85,2016,'Nandimithra',22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(86,2016,'Nandimithra',23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(87,2016,'Nandimithra',21,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(88,2016,'Nandimithra',25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(89,2016,'Nandimithra',24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(90,2016,'Nandimithra',26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(91,2016,'Nandimithra',27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(92,2016,'Nandimithra',28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(93,2016,'Suranimala',0,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(94,2016,'Nandimithra',29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(95,2016,'Suranimala',0,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(96,2016,'Suranimala',22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(97,2016,'Suranimala',23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(98,2016,'Suranimala',25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(99,2016,'Suranimala',26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(100,2016,'Suranimala',24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(101,2016,'Suranimala',27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(102,2016,'Suranimala',28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(103,2016,'Suranimala',29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:32:58',1,NULL,NULL),(104,2016,'Nandimithra',20,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:34',1,NULL,NULL),(105,2016,'Nandimithra',22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:34',1,NULL,NULL),(106,2016,'Nandimithra',21,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:34',1,NULL,NULL),(107,2016,'Nandimithra',23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:34',1,NULL,NULL),(108,2016,'Nandimithra',24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:34',1,NULL,NULL),(109,2016,'Nandimithra',25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:34',1,NULL,NULL),(110,2016,'Nandimithra',26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:34',1,NULL,NULL),(111,2016,'Nandimithra',27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:34',1,NULL,NULL),(112,2016,'Nandimithra',28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:35',1,NULL,NULL),(113,2016,'xxxxx',0,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:35',1,NULL,NULL),(114,2016,'Suranimala',0,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:35',1,NULL,NULL),(115,2016,'Nandimithra',29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:35',1,NULL,NULL),(116,2016,'Suranimala',22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:35',1,NULL,NULL),(117,2016,'Suranimala',24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:35',1,NULL,NULL),(118,2016,'Suranimala',23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:35',1,NULL,NULL),(119,2016,'Suranimala',25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:35',1,NULL,NULL),(120,2016,'Suranimala',26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:35',1,NULL,NULL),(121,2016,'Suranimala',27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:35',1,NULL,NULL),(122,2016,'Suranimala',28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:35',1,NULL,NULL),(123,2016,'Suranimala',29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:34:35',1,NULL,NULL),(124,2016,'Nandimithra',20,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:34',1,NULL,NULL),(125,2016,'Nandimithra',21,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:34',1,NULL,NULL),(126,2016,'Nandimithra',24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:34',1,NULL,NULL),(127,2016,'Nandimithra',22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:34',1,NULL,NULL),(128,2016,'Nandimithra',23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:34',1,NULL,NULL),(129,2016,'Nandimithra',25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:34',1,NULL,NULL),(130,2016,'Nandimithra',26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:34',1,NULL,NULL),(131,2016,'Nandimithra',27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:34',1,NULL,NULL),(132,2016,'Nandimithra',28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:34',1,NULL,NULL),(133,2016,'Nandimithra',29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:34',1,NULL,NULL),(134,2016,'Suranimala',20,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:34',1,NULL,NULL),(135,2016,'Suranimala',21,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:34',1,NULL,NULL),(136,2016,'Suranimala',23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:34',1,NULL,NULL),(137,2016,'Suranimala',24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:34',1,NULL,NULL),(138,2016,'Suranimala',22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:34',1,NULL,NULL),(139,2016,'Suranimala',25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:34',1,NULL,NULL),(140,2016,'Suranimala',26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:34',1,NULL,NULL),(141,2016,'Suranimala',27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:35',1,NULL,NULL),(142,2016,'Suranimala',28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:35',1,NULL,NULL),(143,2016,'Suranimala',29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:35:35',1,NULL,NULL),(144,2015,'Nandimithra',2,3,'aaaaaaaaaaaa',10,20,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:47:54',1,NULL,NULL),(145,2015,'Nandimithra',2,3,'aaaaaaaaaaaa',10,20,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-28 02:48:17',1,NULL,NULL),(146,2015,'Nandimithra',2,3,'aaaaaaaaaaaa',10,20,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-29 00:08:41',1,NULL,NULL);
/*!40000 ALTER TABLE `gread_10_thurunu_saviya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gread_11_thurunu_saviya`
--

DROP TABLE IF EXISTS `gread_11_thurunu_saviya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gread_11_thurunu_saviya` (
  `ts11_id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `ts11_pro_id` int(11) DEFAULT NULL,
  `ts11_daily_attendance` int(11) DEFAULT NULL,
  `ts11_poya_attendance` int(11) DEFAULT NULL,
  `ts11_recomendation` varchar(5000) DEFAULT NULL,
  `ts11_evaluation_cri_1` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_2` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_3` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_4` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_5` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_6` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_7` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_8` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_9` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_10` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_11` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_12` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_13` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_14` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_15` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_16` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_17` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_18` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_19` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_20` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`ts11_id`),
  KEY `projectid_idx` (`ts11_pro_id`),
  CONSTRAINT `projectid` FOREIGN KEY (`ts11_pro_id`) REFERENCES `project` (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gread_11_thurunu_saviya`
--

LOCK TABLES `gread_11_thurunu_saviya` WRITE;
/*!40000 ALTER TABLE `gread_11_thurunu_saviya` DISABLE KEYS */;
INSERT INTO `gread_11_thurunu_saviya` VALUES (2,2015,5,0,0,'0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'2016-04-29 02:05:16',0,NULL,NULL),(3,2015,5,0,0,'0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'2016-04-29 02:06:14',0,NULL,NULL),(4,2015,5,2,3,'aaaaaaaaaaaa',10,20,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-29 02:16:49',1,NULL,NULL),(5,2016,4,20,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,1,'2016-04-29 02:29:47',1,NULL,NULL),(6,2016,4,21,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,1,'2016-04-29 02:29:47',1,NULL,NULL),(7,2016,4,22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,1,'2016-04-29 02:29:47',1,NULL,NULL),(8,2016,4,24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,1,'2016-04-29 02:29:47',1,NULL,NULL),(9,2016,4,23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,1,'2016-04-29 02:29:47',1,NULL,NULL),(10,2016,4,25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,1,'2016-04-29 02:29:47',1,NULL,NULL),(11,2016,4,26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,1,'2016-04-29 02:29:48',1,NULL,NULL),(12,2016,4,27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,1,'2016-04-29 02:29:48',1,NULL,NULL),(13,2016,4,28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,1,'2016-04-29 02:29:48',1,NULL,NULL),(14,2016,4,29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,1,'2016-04-29 02:29:48',1,NULL,NULL),(15,2016,6,21,6,'bbb',31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,1,'2016-04-29 02:29:48',1,NULL,NULL),(16,2016,6,20,5,'aaa',11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,1,'2016-04-29 02:29:48',1,NULL,NULL),(17,2016,6,22,7,'ccc',51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,1,'2016-04-29 02:29:48',1,NULL,NULL),(18,2016,6,23,8,'ddd',71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,1,'2016-04-29 02:29:48',1,NULL,NULL),(19,2016,6,24,9,'eee',91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,1,'2016-04-29 02:29:48',1,NULL,NULL),(20,2016,6,25,10,'fff',111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,1,'2016-04-29 02:29:48',1,NULL,NULL),(21,2016,6,26,11,'aaa',131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,1,'2016-04-29 02:29:48',1,NULL,NULL),(22,2016,6,27,12,'bbb',151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,1,'2016-04-29 02:29:48',1,NULL,NULL),(23,2016,6,29,14,'ddd',191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,1,'2016-04-29 02:29:48',1,NULL,NULL),(24,2016,6,28,13,'ccc',171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,1,'2016-04-29 02:29:48',1,NULL,NULL);
/*!40000 ALTER TABLE `gread_11_thurunu_saviya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardian`
--

DROP TABLE IF EXISTS `guardian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardian` (
  `gur_id` int(11) NOT NULL AUTO_INCREMENT,
  `gur_name` varchar(500) NOT NULL,
  `gur_phone_number` varchar(45) DEFAULT NULL,
  `gur_adress` varchar(500) DEFAULT NULL,
  `gur_email_address` varchar(500) DEFAULT NULL,
  `gur_occupation` varchar(500) DEFAULT NULL,
  `gur_occupation_type` int(11) DEFAULT NULL,
  `gur_office_address` varchar(500) DEFAULT NULL,
  `gur_office_phone_number` varchar(45) DEFAULT NULL,
  `gur_stu_addmision_number` varchar(45) DEFAULT NULL,
  `gur_old_student_number` varchar(45) DEFAULT NULL,
  `gur_other_interactions_with_dp` varchar(1500) DEFAULT NULL,
  `gur_nic` varchar(45) DEFAULT NULL,
  `gur_tea_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`gur_id`),
  KEY `ocu_id_idx` (`gur_occupation_type`),
  KEY `gar_tea_id_idx` (`gur_tea_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian`
--

LOCK TABLES `guardian` WRITE;
/*!40000 ALTER TABLE `guardian` DISABLE KEYS */;
INSERT INTO `guardian` VALUES (1,'gar1','123456789','123aaaa','gha@gma.com','aaa',1,'123aaa','123456789',NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(2,'gar2','123456789','123aaaa','gha@gma.com','aaa',2,'123aaa','123456789',NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(3,'gar3','123456789','123aaaa','gha@gma.com','aaa',3,'123aaa','123456789',NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(4,'aaa','aaa','aaa','aaa','aaa',1,'aaa','aaa','aaa','aaa','aaa','aaa',1,1,'2016-04-13 06:25:19',1,NULL,NULL),(5,'massa gurher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-13 06:25:22',1,NULL,NULL),(6,'massa gurher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:27:44',1,NULL,NULL),(7,'massa gurher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:28:15',1,NULL,NULL),(8,'massa gurher','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 10:28:17',1,NULL,NULL),(9,'ddddddddddd','1234567890','123aaaaaaa','','',0,'4','','','','','',0,1,'2016-04-14 14:03:49',1,NULL,NULL),(10,'gggggggg','ggggggggg','ggggggggggg','','ggggggggggggg',0,'2','gggggggggggg','gggggggggggg','gggggggggg','','',0,1,'2016-04-14 14:10:16',1,NULL,NULL),(11,'gggggggg','ggggggggg','ggggggggggg','','ggggggggggggg',0,'2','gggggggggggg','gggggggggggg','gggggggggg','','',0,1,'2016-04-14 14:11:07',1,NULL,NULL),(12,'gggggggg','ggggggggg','ggggggggggg','','ggggggggggggg',0,'2','gggggggggggg','gggggggggggg','gggggggggg','','',0,1,'2016-04-14 14:11:35',1,NULL,NULL),(13,'ggggggg','','','','',0,'4','','','','','',0,1,'2016-04-14 14:15:07',1,NULL,NULL),(14,'g1g1g1g1g','','','','',0,'4','','','','','',0,1,'2016-04-14 14:33:44',1,NULL,NULL),(15,'guraaaaaaaaa','','','','',0,'4','','','','','',0,1,'2016-04-14 14:39:23',1,NULL,NULL),(16,'aaaaaaaaaaaaaaaaaaaaa','','','','',0,'4','','','','','',0,1,'2016-04-14 14:44:20',1,NULL,NULL),(17,'sssssss','','','','',0,'4','','','','','',0,1,'2016-04-14 14:50:47',1,NULL,NULL),(18,'sssssss','','','','',0,'4','','','','','',0,1,'2016-04-14 14:51:09',1,NULL,NULL),(19,'hhhhhhhhhh','','','','',0,'4','','','','','',0,1,'2016-04-14 14:53:07',1,NULL,NULL),(20,'aaaaaaaaaaaa','','','','',0,'4','','','','','',0,1,'2016-04-14 14:54:02',1,NULL,NULL),(21,'aaaaaaaaaaaaaaa','','','','',0,'4','','','','','',0,1,'2016-04-14 14:55:54',1,NULL,NULL),(22,'qqqqqqqqq','','','','',0,'4','','','','','',0,1,'2016-04-14 14:57:34',1,NULL,NULL),(23,'ggggggggggggg','','','','',0,'4','','','','','',0,1,'2016-04-14 15:10:18',1,NULL,NULL),(24,'ccccccccc','','','','',0,'4','','','','','',0,1,'2016-04-14 15:11:53',1,NULL,NULL),(25,'bbbbbbbbbbb','','','','',0,'4','','','','','',0,1,'2016-04-14 15:15:20',1,NULL,NULL),(26,'hhhhhhhhh','','','','',0,'4','','','','','',0,1,'2016-04-14 15:16:37',1,NULL,NULL),(27,'eeeeeeeeee','','','','',0,'4','','','','','',0,1,'2016-04-14 15:20:03',1,NULL,NULL),(28,'cccccccccccc','','','','',0,'4','','','','','',0,1,'2016-04-14 15:25:49',1,NULL,NULL),(29,'ttttttttttttt','','','','',0,'4','','','','','',0,1,'2016-04-14 15:29:13',1,NULL,NULL),(30,'aaaaaaaaaaaaa','','','','',0,'4','','','','','',0,1,'2016-04-15 00:52:22',1,NULL,NULL),(31,'aaaaaaaaaaaaa','','','','',0,'4','','','','','',0,1,'2016-04-15 00:52:48',1,NULL,NULL),(32,'aaaaaaaaaaaaa','','','','',0,'4','','','','','',0,1,'2016-04-15 00:53:31',1,NULL,NULL),(33,'aaaaaaaaaaaaa','','','','',0,'4','','','','','',0,1,'2016-04-15 00:53:40',1,NULL,NULL),(34,'fffffffffff','','','','',0,'4','','','','','',0,1,'2016-04-15 00:59:33',1,NULL,NULL),(35,'aaaaaaaaaaaaaa','','','','',0,'4','','','','','',0,1,'2016-04-15 01:02:46',1,NULL,NULL),(36,'aaaaaaaaaaaaaaa','','','','',0,'4','','','','','',0,1,'2016-04-15 01:03:52',1,NULL,NULL),(37,'aaaaaaaaaaaa','','','','',0,'4','','','','','',0,1,'2016-04-15 01:07:00',1,NULL,NULL),(38,'kkkkkkkkkkkkkkk','','','','',0,'4','','','','','',0,1,'2016-04-15 01:08:50',1,NULL,NULL),(39,'aaaaaaaaaaaaaa','','','','',0,'4','','','','','',0,1,'2016-04-15 01:09:58',1,NULL,NULL),(40,'ggggggggg','','','','',0,'4','','','','','',0,1,'2016-04-15 01:11:55',1,NULL,NULL),(41,'ggggggggg','','','','',0,'4','','','','','',0,1,'2016-04-15 01:16:15',1,NULL,NULL),(42,'ggggggggg','','','','',0,'4','','','','','',0,1,'2016-04-15 01:17:45',1,NULL,NULL),(43,'wwwwwwwwwww','','','','',0,'4','','','','','',0,1,'2016-04-15 01:18:28',1,NULL,NULL),(44,'aaaaaaaaaaaaaa','','','','',0,'4','','','','','',0,1,'2016-04-15 01:20:27',1,NULL,NULL),(45,'aaaaaaaaaaaaaa','','','','',0,'4','','','','','',0,1,'2016-04-15 01:20:59',1,NULL,NULL),(46,'aaaaaaaaaaaaaa','','','','',0,'4','','','','','',0,1,'2016-04-15 01:21:38',1,NULL,NULL),(47,'aaaaaaaaaaaaa','','','','',0,'4','','','','','',0,1,'2016-04-15 01:22:44',1,NULL,NULL),(48,'aaaaaaaaaa','','','','',0,'4','','','','','',0,1,'2016-04-15 01:39:31',1,NULL,NULL),(49,'aaaaaaaaaaaaa','','','','',0,'4','','','','','',0,1,'2016-04-15 01:41:40',1,NULL,NULL),(50,'Null','','','','',0,'18','','','','','',0,1,'2016-06-07 08:11:28',1,NULL,NULL),(51,'null','','','','',0,'18','','','','','',0,1,'2016-06-07 08:21:02',1,NULL,NULL),(52,'Massa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-06-19 09:35:44',1,NULL,NULL);
/*!40000 ALTER TABLE `guardian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lending`
--

DROP TABLE IF EXISTS `lending`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lending` (
  `len_id` int(11) NOT NULL AUTO_INCREMENT,
  `len_mem_id` int(11) NOT NULL,
  `len_copy_id` int(11) NOT NULL,
  `len_borrow_date` date DEFAULT NULL,
  `len_due_date` date DEFAULT NULL,
  `len_retuen_date` date DEFAULT NULL,
  `len_fine` double DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`len_id`),
  KEY `cop_id_idx` (`len_copy_id`),
  KEY `lib_mem_id_idx` (`len_mem_id`),
  CONSTRAINT `cop_id` FOREIGN KEY (`len_copy_id`) REFERENCES `copy` (`copy_id`),
  CONSTRAINT `lib_mem_id` FOREIGN KEY (`len_mem_id`) REFERENCES `member` (`mem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lending`
--

LOCK TABLES `lending` WRITE;
/*!40000 ALTER TABLE `lending` DISABLE KEYS */;
/*!40000 ALTER TABLE `lending` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `mem_id` int(11) NOT NULL AUTO_INCREMENT,
  `mem_cat` varchar(45) DEFAULT NULL,
  `mem_reg_date` date DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`mem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mother`
--

DROP TABLE IF EXISTS `mother`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mother` (
  `mot_id` int(11) NOT NULL AUTO_INCREMENT,
  `mot_name` varchar(500) NOT NULL,
  `mot_phone_number` varchar(45) DEFAULT NULL,
  `mot_adress` varchar(500) DEFAULT NULL,
  `mot_email_address` varchar(500) DEFAULT NULL,
  `mot_occupation` varchar(500) DEFAULT NULL,
  `mot_occupation_type` int(11) DEFAULT NULL,
  `mot_office_address` varchar(500) DEFAULT NULL,
  `mot_office_phone_number` varchar(45) DEFAULT NULL,
  `mot_stu_addmision_number` varchar(45) DEFAULT NULL,
  `mot_old_student_number` varchar(45) DEFAULT NULL,
  `mot_other_interactions_with_dp` varchar(1500) DEFAULT NULL,
  `mot_nic` varchar(45) DEFAULT NULL,
  `mot_tea_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`mot_id`),
  KEY `occ_type_detail_idx` (`mot_occupation_type`),
  KEY `mot_tea_id_idx` (`mot_tea_id`),
  CONSTRAINT `occ_type_detail` FOREIGN KEY (`mot_occupation_type`) REFERENCES `occupation_type` (`occ_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mother`
--

LOCK TABLES `mother` WRITE;
/*!40000 ALTER TABLE `mother` DISABLE KEYS */;
INSERT INTO `mother` VALUES (1,'mot1','123456789','123aaaa','gh@gmail','mmmm',1,'123aaa','123456789',NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(2,'mot2','123456789','123aaaa','gh@gmail','mmmm',3,'123aaa','123456789',NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(3,'mot3','123456789','123aaaa','gh@gmail','mmmm',3,'123aaa','123456789',NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(4,'massa mother','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaaaaa','123456789','aaaa','aaaa','aaaa','921692374V',1,1,'2016-04-13 03:35:30',1,NULL,NULL),(6,'massa mother','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaaaaa','123456789','aaaa','aaaa','aaaa','921692374V',1,1,'2016-04-13 03:36:30',1,NULL,NULL),(7,'massa mother','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaaaaa',NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-13 03:37:02',1,NULL,NULL),(8,'massa mother',NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-13 03:37:16',1,NULL,NULL),(9,'massa mother','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-13 05:51:50',1,NULL,NULL),(10,'massa mother','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaaaaa','123456789','aaaa','aaaa','aaaa','921692374V',1,1,'2016-04-14 10:27:26',1,NULL,NULL),(11,'massa mother','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaaaaa','123456789','aaaa','aaaa','aaaa','921692374V',1,1,'2016-04-14 10:27:29',1,NULL,NULL),(12,'massa mother','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaa','aaa','aaa','aaa','aaa','aaaa',1,1,'2016-04-14 13:42:36',1,NULL,NULL),(21,'massa mother',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 14:49:07',1,NULL,NULL),(30,'massa mother',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 15:00:43',1,NULL,NULL),(31,'massa mother',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 15:00:46',1,NULL,NULL),(33,'ssssssssssss',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 15:05:18',1,NULL,NULL),(34,'qqqq',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 15:06:49',1,NULL,NULL),(35,'dddddddddddddddddd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 15:10:18',1,NULL,NULL),(36,'zzzzzzzzzzz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 15:11:53',1,NULL,NULL),(37,'mmmmmmmmmm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 15:15:20',1,NULL,NULL),(38,'kkkkkkkkk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 15:16:37',1,NULL,NULL),(39,'qqqqqqqqqqq',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 15:20:02',1,NULL,NULL),(40,'aaaaaaaaaaaa','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 15:25:49',1,NULL,NULL),(41,'fffffffff','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 15:29:13',1,NULL,NULL),(42,'massa mother','1234567890','123aaaa','1111aaaaa','aaaaaaaaa',2,'aaaaaa','123456789','aaaa','aaaa','aaaa','921692374V',1,1,'2016-04-15 00:43:23',1,NULL,NULL),(43,'aaaaaaaaaaaaaa','','','','',4,'','',NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 00:52:21',1,NULL,NULL),(44,'aaaaaaaaaaaaaa','','','','',4,'','',NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 00:52:47',1,NULL,NULL),(45,'aaaaaaaaaaaaaa','','','','',4,'','',NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 00:53:31',1,NULL,NULL),(46,'aaaaaaaaaaaaaa','','','','',4,'','',NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 00:53:40',1,NULL,NULL),(48,'aaaaaaaaaaaaa','','','','',4,'','','',NULL,NULL,NULL,NULL,1,'2016-04-15 01:02:46',1,NULL,NULL),(49,'aaaaaaaaaaa','','','','',4,'','','','','',NULL,NULL,1,'2016-04-15 01:03:52',1,NULL,NULL),(50,'aaaaaaaaaa','','','','',4,'','','','','','',NULL,1,'2016-04-15 01:06:59',1,NULL,NULL),(52,'aaaaaaaaaaaa','','','','',4,'','','','','','',1,1,'2016-04-15 01:09:58',1,NULL,NULL),(54,'ssssssssss','','','','',4,'','','','','','',1,1,'2016-04-15 01:16:15',1,NULL,NULL),(55,'ssssssssss','','','','',4,'','','','','','',0,1,'2016-04-15 01:17:45',1,NULL,NULL),(56,'wwwwwwwwwwwwwwwww','','','','',4,'','','','','','',0,1,'2016-04-15 01:18:28',1,NULL,NULL),(57,'aaaaaaaaaaaaaa','','','','',4,'','','','','','',0,1,'2016-04-15 01:20:26',1,NULL,NULL),(58,'aaaaaaaaaaaaaa','','','','',4,'','','','','','',0,1,'2016-04-15 01:20:58',1,NULL,NULL),(59,'aaaaaaaaaaaaaa','','','','',4,'','','','','','',0,1,'2016-04-15 01:21:38',1,NULL,NULL),(60,'aaaaaaaaaaaa','','','','',4,'','','','','','',0,1,'2016-04-15 01:22:44',1,NULL,NULL),(61,'aaaaaaaaaaaa','','','','',4,'','','','','','',0,1,'2016-04-15 01:39:31',1,NULL,NULL),(62,'aaaaaaaaaaaaa','','','','',4,'','','','','','',0,1,'2016-04-15 01:41:40',1,NULL,NULL),(63,'Null','','','','',18,'','','','','','',0,1,'2016-06-07 08:11:28',1,NULL,NULL),(64,'null','','','','',18,'','','','','','',0,1,'2016-06-07 08:21:02',1,NULL,NULL);
/*!40000 ALTER TABLE `mother` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nirmathru_pranama_thurunu_saviya`
--

DROP TABLE IF EXISTS `nirmathru_pranama_thurunu_saviya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nirmathru_pranama_thurunu_saviya` (
  `np_id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `np_pro1_id` int(11) DEFAULT NULL,
  `np_pro2_id` int(11) DEFAULT NULL,
  `np_pro3_id` int(11) DEFAULT NULL,
  `np_pro4_id` int(11) DEFAULT NULL,
  `np_daily_attendance` int(11) DEFAULT NULL,
  `np_poya_attendance` int(11) DEFAULT NULL,
  `np_recomendation` varchar(45) DEFAULT NULL,
  `np_evaluation_cri_1` int(11) DEFAULT NULL,
  `np_evaluation_cri_2` int(11) DEFAULT NULL,
  `np_evaluation_cri_3` int(11) DEFAULT NULL,
  `np_evaluation_cri_4` int(11) DEFAULT NULL,
  `np_evaluation_cri_5` int(11) DEFAULT NULL,
  `np_evaluation_cri_6` int(11) DEFAULT NULL,
  `np_evaluation_cri_7` int(11) DEFAULT NULL,
  `np_evaluation_cri_8` int(11) DEFAULT NULL,
  `np_evaluation_cri_9` int(11) DEFAULT NULL,
  `np_evaluation_cri_10` int(11) DEFAULT NULL,
  `np_evaluation_cri_11` int(11) DEFAULT NULL,
  `np_evaluation_cri_12` int(11) DEFAULT NULL,
  `np_evaluation_cri_13` int(11) DEFAULT NULL,
  `np_evaluation_cri_14` int(11) DEFAULT NULL,
  `np_evaluation_cri_15` int(11) DEFAULT NULL,
  `np_evaluation_cri_16` int(11) DEFAULT NULL,
  `np_evaluation_cri_17` int(11) DEFAULT NULL,
  `np_evaluation_cri_18` int(11) DEFAULT NULL,
  `np_evaluation_cri_19` int(11) DEFAULT NULL,
  `np_evaluation_cri_20` int(11) DEFAULT NULL,
  `np_evaluation_cri_21` int(11) DEFAULT NULL,
  `np_evaluation_cri_22` int(11) DEFAULT NULL,
  `np_evaluation_cri_23` int(11) DEFAULT NULL,
  `np_evaluation_cri_24` int(11) DEFAULT NULL,
  `np_evaluation_cri_25` int(11) DEFAULT NULL,
  `np_evaluation_cri_26` int(11) DEFAULT NULL,
  `np_evaluation_cri_27` int(11) DEFAULT NULL,
  `np_evaluation_cri_28` int(11) DEFAULT NULL,
  `np_evaluation_cri_29` int(11) DEFAULT NULL,
  `np_evaluation_cri_30` int(11) DEFAULT NULL,
  `np_evaluation_cri_31` int(11) DEFAULT NULL,
  `np_evaluation_cri_32` int(11) DEFAULT NULL,
  `np_evaluation_cri_33` int(11) DEFAULT NULL,
  `np_evaluation_cri_34` int(11) DEFAULT NULL,
  `np_evaluation_cri_35` int(11) DEFAULT NULL,
  `np_evaluation_cri_36` int(11) DEFAULT NULL,
  `np_evaluation_cri_37` int(11) DEFAULT NULL,
  `np_evaluation_cri_38` int(11) DEFAULT NULL,
  `np_evaluation_cri_39` int(11) DEFAULT NULL,
  `np_evaluation_cri_40` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`np_id`),
  KEY `pro1_idx` (`np_pro1_id`),
  KEY `pro2_idx` (`np_pro2_id`),
  KEY `pro3_idx` (`np_pro3_id`),
  KEY `pro4_idx` (`np_pro4_id`),
  CONSTRAINT `pro1` FOREIGN KEY (`np_pro1_id`) REFERENCES `project` (`pro_id`),
  CONSTRAINT `pro2` FOREIGN KEY (`np_pro2_id`) REFERENCES `project` (`pro_id`),
  CONSTRAINT `pro3` FOREIGN KEY (`np_pro3_id`) REFERENCES `project` (`pro_id`),
  CONSTRAINT `pro4` FOREIGN KEY (`np_pro4_id`) REFERENCES `project` (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nirmathru_pranama_thurunu_saviya`
--

LOCK TABLES `nirmathru_pranama_thurunu_saviya` WRITE;
/*!40000 ALTER TABLE `nirmathru_pranama_thurunu_saviya` DISABLE KEYS */;
/*!40000 ALTER TABLE `nirmathru_pranama_thurunu_saviya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occupation_type`
--

DROP TABLE IF EXISTS `occupation_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `occupation_type` (
  `occ_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `occ_type_name` varchar(45) DEFAULT NULL,
  `occ_type_description` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`occ_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupation_type`
--

LOCK TABLES `occupation_type` WRITE;
/*!40000 ALTER TABLE `occupation_type` DISABLE KEYS */;
INSERT INTO `occupation_type` VALUES (1,'Businessman','( Large Scale)',1,'2016-03-26 00:20:10',1,NULL,NULL),(2,'Businessman','( Small scale - Less than 25 employees and an',1,'2016-03-26 00:20:10',1,NULL,NULL),(3,'Executive Jobs- Government Sector','(Top Management, Senior Management, Middle Ma',1,'2016-03-26 00:20:10',1,NULL,NULL),(4,'Executive Jobs- Private Sector','(Top Management, Senior Management, Middle Ma',2,'2016-04-06 10:22:59',27,'2016-04-07 13:04:19',27),(5,'Middle-level Officers - Government Sector','(Technical Officer,Management Assistant,Pharm',1,'2016-04-06 10:41:36',27,NULL,NULL),(6,'Middle-level Officers - Private Sector','(Technical Officer,Management Assistant,Pharm',1,'2016-04-07 01:07:55',1,NULL,NULL),(7,'Minor Staff - Government Sector','(Skilled and non-skilled worker categories)',1,'2016-04-07 01:14:32',1,NULL,NULL),(8,'Minor Staff - Private Sector','(Skilled and non-skilled worker categories)',1,'2016-04-07 01:15:16',1,NULL,NULL),(9,'Doctor','(Medical Doctor,Medical Consultants,Dentists)',1,'2016-03-26 00:20:10',1,NULL,NULL),(10,'Engineering and Allied Professions','(Engineers,QS,Architects,',1,'2016-03-26 00:20:10',1,NULL,NULL),(11,'Legal Professionals ','( Lawyer, Judge, Legal Officers)',1,'2016-03-26 00:20:10',1,NULL,NULL),(12,'Teacher','(School, Montessori, Private Tution)',2,'2016-04-06 10:22:59',27,'2016-04-07 13:04:19',27),(13,'Lecturer','(Universities, Higher Education Institutes, T',1,'2016-04-06 10:41:36',27,NULL,NULL),(14,'Scientist','',1,'2016-04-07 01:07:55',1,NULL,NULL),(15,'Defence and Security','(Army, Navy, Air Force, CSD, Police)',1,'2016-04-07 01:14:32',1,NULL,NULL),(16,'IT Professionals','(Software Engineer, QA Engineers,Network Engi',1,'2016-04-07 01:15:16',1,NULL,NULL),(17,'Professional Accountants','',1,'2016-03-26 00:20:10',1,NULL,NULL),(18,'Artists','(Singers, Dancers, Artists,Actors, Musicians)',1,'2016-03-26 00:20:10',1,NULL,NULL),(19,'Media Professionals','(Journalists,Presenters,Producers)',1,'2016-03-26 00:20:10',1,NULL,NULL),(20,'Hospitality Professionals','(Hotel Managers, Chefs)',2,'2016-04-06 10:22:59',27,'2016-04-07 13:04:19',27),(21,'Housewives','',1,'2016-04-06 10:41:36',27,NULL,NULL),(22,'Unemployed','',1,'2016-04-07 01:07:55',1,NULL,NULL),(23,'Businessman','( Medium Scale)',1,'2016-03-26 00:20:10',1,NULL,NULL),(24,'Domestic Enterprises',' ',1,'2016-04-18 14:29:49',NULL,NULL,NULL),(25,'Politicians',' ',1,'2016-04-18 14:29:50',NULL,NULL,NULL);
/*!40000 ALTER TABLE `occupation_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operational_user`
--

DROP TABLE IF EXISTS `operational_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operational_user` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_name` varchar(45) NOT NULL,
  `usr_pwd` varchar(200) NOT NULL,
  `usr_full_name` varchar(45) DEFAULT NULL,
  `usr_email` varchar(45) DEFAULT NULL,
  `usr_phone_number` varchar(45) DEFAULT NULL,
  `usr_category` int(11) NOT NULL DEFAULT '1',
  `usr_api_key` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT '1',
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`usr_id`),
  KEY `usr_cat_idx` (`usr_category`),
  CONSTRAINT `usr_cat` FOREIGN KEY (`usr_category`) REFERENCES `user_category` (`ucat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operational_user`
--

LOCK TABLES `operational_user` WRITE;
/*!40000 ALTER TABLE `operational_user` DISABLE KEYS */;
INSERT INTO `operational_user` VALUES (1,'hasitha','$2a$10$d04ee9b3b685050aea7dauT/ipJNaosa18fQ2q71pQeGS.I9Ev8Du','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'e57598603448df03a0c99652319c6ffc',1,'2016-03-31 03:58:07',1,NULL,NULL),(2,'hasitha2','$2a$10$12b9e5760815de84017d0e83GWRasG1buLYY/pvugSEFv4ZymNyPa','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'fae91e80dcfe44c6677a1ff6c92c6422',2,'2016-03-31 03:59:10',1,'2016-04-01 05:10:48',15),(3,'hasitha3','$2a$10$29da8dfa0ea906224d27au79SUy/MfMM1SP//pqmFf6d8RM4Q.KlG','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'53bf6cfac7dfb5019d03182d932087c9',2,'2016-03-31 03:59:26',1,'2016-04-03 00:35:13',15),(4,'hasitha4','$2a$10$beae54e3281c74299b1c6uL3h7Vju.o972cqOM3xwTEGSIuqIuXre','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'614a961a70965efd7e282b0fd0a88a48',3,'2016-03-31 04:01:18',1,'2016-04-07 01:05:02',1),(5,'hasitha5','$2a$10$e476bedb1afe652f2975bOuBjv.wAZhwj4jkHa.roSmHxPXyWqX9q','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'8578beaab256c8849a16157ab5bcbc0c',1,'2016-03-31 04:03:21',1,NULL,NULL),(6,'hasitha6','$2a$10$99de69dbd7cf054b56753ujCXxujTv1jyzVIoONZj32ooD4I4X6wS','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'04205faf35b50aa0a606ff3c5bd3b134',1,'2016-03-31 04:03:55',2,NULL,NULL),(7,'hasitha7','$2a$10$ee69628d477d496511e38uKbOHw8jq2qw3wRN2D16LNNPVrqFdvw6','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'53d44c8ac5e0c464da46b87e14adc071',1,'2016-03-31 05:49:25',1,NULL,NULL),(8,'hasitha8','$2a$10$48e49283e958d6daa8057usKMeMYnzmo9C4WxSu4WB7z0RzbOlMmS','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'473e5a3c172eacbf8af938e6a5a5816a',3,'2016-03-31 07:08:25',1,'2016-04-01 05:19:33',15),(9,'hasitha9','$2a$10$bee5146a27af46ba9230duZJ/crBJqbZ/SDB/j6fFUsBJa9dUm8WS','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'e27c6f3d3c1d4682675bfe1d23910fc0',1,'2016-03-31 07:09:00',1,NULL,NULL),(10,'hasitha10','$2a$10$5247d84fde55364a41478uS9OcMzSIJujndDIgj7iRUltv2juV86K','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'5b1436444fa6a57833b459e766878d39',3,'2016-03-31 07:09:12',1,'2016-03-31 15:51:41',15),(11,'hasitha11','$2a$10$41f92a88bba4f5e5d4601u6NRyEUW4O4suGMbFBc.mV8CFnnUW0h2','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'3d2bcbc69b8a963d4787704f2a622efe',3,'2016-03-31 07:10:23',1,'2016-03-31 15:52:47',15),(12,'Waruni','$2a$10$bd78e15d747422952fcb0uVVlvHTXE.qrfrhM.SEO1QxhCmBqyOKG','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'94342f3a2fd2c951d0a9a8cd56f3eff0',1,'2016-03-31 07:53:48',1,NULL,NULL),(13,'Waruni2','$2a$10$86a3cca96b6b994479709uqweXtXig43Zym3MGaMwLohebhf5MerS','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'be64f260bca902302f91adcdfb1f2713',1,'2016-03-31 08:01:20',1,NULL,NULL),(14,'Waruni3','$2a$10$d6674ab645980c0e4929fuxW.stODcyY//sTuipzpYK2GEDf0phF6','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'c9b8979e4cad44c8c7dc17ccd602b867',1,'2016-03-31 08:07:38',1,NULL,NULL),(15,'Waruni4','$2a$10$8f91406ae3d642f29e38cOrQFMsTQ0MdmAfQOlYIgfgYIRfS1ZpDu','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'46157968bc86e2bd18d543864885d881',1,'2016-03-31 08:08:47',1,NULL,NULL),(16,'Waruni5','$2a$10$91e1a417969f392a6eba1Oc3LsDXho9I/ym48uprSuzXbHlUF.dUG','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'6119c2bfe9c9c56f5b376b74658a730f',1,'2016-03-31 08:12:11',1,NULL,NULL),(17,'Waruni6','$2a$10$68be338f58f04dd3dbe05uMvO0KUAw9NjsGcoos.Oh1zwZsYvsQLa','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'c5c6b8516aa974ddc0f291f7b04e7e9e',3,'2016-03-31 08:13:04',1,'2016-03-31 14:53:26',15),(18,'Waruni7','$2a$10$6e7d411a25874500f6491uXxKTOJgdFRUXEDj9tidrazbNKkvPGTa','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'86ade512c87681cdaff5a596e64b15c7',3,'2016-03-31 08:13:32',15,'2016-03-31 15:06:53',15),(19,'Waruni8','$2a$10$e77c486b713ee7c9e4ecdu9oY0brQIZBQsiRzoKbd2ynZxQEawul2','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'ae190b27059e980368c6049083eb0523',2,'2016-03-31 13:24:42',15,NULL,NULL),(22,'Waruni8','$2a$10$9b853fdb146842fa0e66eucJwJOU0sW3CRumx7iBmgRBjyknU/0zu','Waruni Samarawickrama new','warunish@gmail.com','0717584228',1,'9596b131f116207898fa4411dd900b17',2,'2016-03-31 13:31:33',15,NULL,NULL),(23,'Waruni8','$2a$10$94e23a57818d0e21ad782uBXt3oxBh/OmjPgdaBgXhYmpxFDr7r82','Waruni Samarawickrama new','warunish@gmail.com','0717584228',1,'bfd1ad25077fb3d01d7e55ce9e5d9d88',3,'2016-03-31 13:38:30',15,'2016-03-31 14:41:55',15),(24,'hasitha2','$2a$10$a10f4a19fad93063b9191eiiM3zRYM7OW1rRmeEyufLvjb4C30Hwu','aaaaaaaaa','ghasithalakmal@gmail.com','0717567855',1,'8f65cf5303781bd6e2c6a4ccf71ac0a9',2,'2016-03-31 16:18:20',15,'2016-04-01 05:10:48',15),(25,'hasitha2','$2a$10$8a4d1fc11a36b4fc147a4ui80tnIKTnM33HNUEuobQFHuLfU0L9gC','Hasitha Lakmal','ghasithalakmal@gmail.com','0756780065',1,'9c754261896170f596a3e131ecf24ef3',2,'2016-03-31 16:21:10',15,'2016-04-01 05:10:48',15),(26,'hasitha2','$2a$10$ef1c4acfe453c94103071uQ45ZlSK.uBHgDFSv3cAgQV4YaHE4sY2','Hasitha Lakmal Gamage','ghasithalakmal@gmail.com','0756780065',1,'c42569a9eb2bfd0a5757e2e5b9956694',2,'2016-03-31 16:29:48',15,'2016-04-01 05:10:48',15),(27,'ucsc1','$2a$10$981b95a7f251955879d90uTCGOoo8mD9p8loxfIpkxfnJoDtc1wyK','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'15522f5f30d795c7405c4f35237367ed',1,'2016-04-01 01:25:32',3,NULL,NULL),(28,'ucsc2','$2a$10$7440ffa7de92bded8d56bu0XnWbyg9Yu7HN2tOjIqo8.fFI5zS4/O','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'d1bb1a710754162bd5552e6cc571f9f6',1,'2016-04-01 01:29:16',3,NULL,NULL),(29,'ucsc3','$2a$10$d8cf55ae89698631106fau5p7b0beN9b75Ea5ruxBINSt4x/b2uea','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'961c1f289c4ae1c9ef9f626339099956',1,'2016-04-01 05:05:14',3,NULL,NULL),(30,'ucsc4','$2a$10$5b63ccc5255aed2a966d8u2xeOrOyDM9N2CeXXz3SEghVE2vspqLa','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'e288534cf8cf72e104359dc2da404781',1,'2016-04-01 05:05:20',3,NULL,NULL),(31,'ucsc5','$2a$10$7320817b99bee29976fb2eF2h6d22YTUgqQz/QjNgw7mDFGU7df.O','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'257911627d8fa314564073c3421cde25',1,'2016-04-01 05:05:25',3,NULL,NULL),(32,'hasitha2','$2a$10$bdda4b37d5f56b19df1bdewUbitZcTF/12Zf9gvnoVLmYFXprejCi','Hasitha Lakmal new','ghasithalakmal@gmail.com','0717584227',1,'b0f36a158b02ffc07b51901913176a34',1,'2016-04-01 05:10:48',15,NULL,NULL),(33,'Hasitha12','$2a$10$a503a142cba66b50855fcebN4BZ0B0Xakd.73vAs0j9fOcOwKEViS','Hasitha Lakmal Gamage','ghasithalakmal@gmail.com','0756780065',1,'a12493b9674cfb5bea03bdc757341555',1,'2016-04-01 05:17:53',3,NULL,NULL),(34,'Hasitha13','$2a$10$eb955fdda41001c3be4eeOG4yq7tyXd8wF3L3wwCwUUWTVS5SjWsa','Hasitha Lakmal Gamage','ghasithalakmal@gmail.com','0756780065',1,'6e3287653a2aa72c5288129ab8e36a8c',1,'2016-04-01 06:44:56',3,NULL,NULL),(35,'Hasitha15','$2a$10$9578051f3530538b3b622u077z/69IOqkaOSbpuT2kXVqtnk91TK6','Hasitha Lakmal Gamage','ghasithalakmal@gmail.com','0756780065',1,'698627760f1061bf41808c2c9120e2f5',3,'2016-04-01 09:58:36',3,'2016-04-01 10:04:28',15),(36,'Hasitha18','$2a$10$ebc34b58e033ded6c0fcbO5I04/hsbkXt5/HzUOKNI4R70ZRPVcw6','Hasitha Lakmal Gamage','ghasithalakmal@gmail.com','0756780065',1,'4b1e8d9b81b1425ee92d0dce5bf46ba7',1,'2016-04-03 00:34:43',3,NULL,NULL),(37,'hasitha3','$2a$10$94929466608d9a5672cb1OdQODEgmo5dyIk8HV3JrerOb8/KM/D/e','Hasitha Lakmal','ghasithalakmal@gmail.com','0717584227',1,'ddd6531252523af43500fff973d82b90',3,'2016-04-03 00:35:13',15,'2016-04-03 00:36:01',15),(38,'svd1','$2a$10$93cf3529950fe376d4199eTTc3605Bk6FJFmh4tLPrDSdV9VvM0b2','Hasitha Lakmal Gamage','ghasithalakmal@gmail.com','0756780065',1,'3a085b628de9c6a3146fec1fec0732f5',1,'2016-04-10 05:02:21',1,NULL,NULL),(39,'svd2','$2a$10$2f30d1eba1b341961eca9OrzPd.JbvbBQsrEiSB7P8s8RFlcSgToa','Gayantha Krishan','ghasithalakmal@gmail.com','0756780065',2,'0437e38f878d58ffa97e37cc625bb54a',1,'2016-04-10 05:02:42',1,NULL,NULL),(40,'svd3','$2a$10$951236dd4553df2ef9768uTCPlG6EnJbP/BLbbbU.1SLf9.6Z8mle','Chaturika Madushani','ghasithalakmal@gmail.com','0756780065',3,'42e7f589a2a07c64886af8e1f0f3bf05',1,'2016-04-10 05:03:05',1,NULL,NULL),(41,'svd4','$2a$10$19eeb19a94b4afe1819cdu2UgqzxEJaOTOBB8DQoRU6Aplc46N0rC','Hiranya Panawanna','ghasithalakmal@gmail.com','0756780065',4,'14cc50e681970dd98f64d0e8df4f8d7b',1,'2016-04-10 05:03:51',1,NULL,NULL),(42,'svd5','$2a$10$bb142c0fc924dd098589cuq1/qf8Wjeyepw.tat6TQiPk36pkadZC','Yashika Gayathri','ghasithalakmal@gmail.com','0756780065',5,'2ca900d54da465231bf96117cbcfc812',1,'2016-04-10 05:04:04',1,NULL,NULL),(43,'svd6','$2a$10$db5c8299f792392e7edffujexkNemZsPF5FwfNmBKeiwURbYt4Q2u','Hasitha Lakmal','ghasithalakmal@gmail.com','0756780065',6,'4d6b47bd9e2c380d8c6c268c38aff83d',1,'2016-04-10 05:04:15',1,NULL,NULL),(44,'svd7','$2a$10$abbe607f99f1a81a013b5Of6NRIFPRnacaHNDOc0c8rvzDauU7AYS','Hasitha Lakmal','ghasithalakmal@gmail.com','0756780065',7,'77d781752952a074b3a1275d1f11cb31',1,'2016-04-10 05:04:19',1,NULL,NULL),(45,'svd8','$2a$10$f8462efdea544fc0e21ccuwI9t226I4N0v5pwi1Y7cOKZYwaKAi76','Hasitha Lakmal','ghasithalakmal@gmail.com','0756780065',8,'592ce30845f9d1007ca63c087d7dc509',1,'2016-04-10 05:04:23',1,NULL,NULL),(46,'svd9','$2a$10$abaa3992cb1696f977ba2uyjb5XgTAiN2nNknW0fdA6Xq9Umcb5I.','Hasitha Lakmal','ghasithalakmal@gmail.com','0756780065',9,'8eb72f6bf0a6bfea2895414e7d88bd16',1,'2016-04-10 05:04:29',1,NULL,NULL),(47,'svd10','$2a$10$68c98dbcad3f5d77784e6ODBcW2H3uNdZtoWe0/CLveD1V/WldD3W','Hasitha Lakmal','ghasithalakmal@gmail.com','0756780065',10,'0a1bfe2d60bd4c248fc96e16c4db1fe6',1,'2016-04-10 05:04:34',1,NULL,NULL),(48,'svd11','$2a$10$e3531b12c9ba2c1acb8cduM9SqbgvoB/Dz.pOxBL0zI6D6wo5eoYC','Hasitha Lakmal','ghasithalakmal@gmail.com','0756780065',11,'bf73e6c63c429416d19e60b30c78e382',1,'2016-04-10 05:04:41',1,NULL,NULL),(49,'svd12','$2a$10$e58a4497e590b18223e20OW/Gb1XTZy.skwgUHcrj25d2wZQZQMwK','Pavith Sulochana','ghasithalakmal@gmail.com','0756780065',12,'ba197b412065771f89808a34109ebb79',1,'2016-04-10 05:26:04',1,NULL,NULL),(50,'massa150','$2a$10$797ccd0e1e8a4ae8a6ce1uBUrL6ak.TO/1apjXHgGPe.B.GInfOu2','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',5,'b2620555c757ff955b983fbdfc500c61',1,'2016-04-11 03:26:27',38,NULL,NULL),(51,'hasitha152','$2a$10$ddd4ea3d219e037c28519u0KXULKdW8h84UpHyMQ53LRsxnJI.dFK','hasitha lak,mal','ghasithalakmal@gmail.com','',3,'e188b7e61ce8cb6ca65530d9c919da8e',1,'2016-04-11 03:29:56',38,NULL,NULL),(52,'hasitha159','$2a$10$aa2b9371cd51264a4444feunVjdpnHxI8KX/b87xM.ikwvuwjtNNK','hasitha lakmal','ghasithalakmal@gmail.com','',1,'240cd2a1bfb0eb4f67ad153eaba4a7f4',1,'2016-04-11 03:35:19',38,NULL,NULL),(53,'hasitha147','$2a$10$1fc2a1b530a059129bfb7eGy26sZ4TqFyQcDlTR9.roSsyyuhIEZ6','hasitha ','ghasithalakmal@gmail.com','',3,'3df5c1c09ea44ad415e6536c49ce67a1',1,'2016-04-11 03:37:11',38,NULL,NULL),(54,'hasitha78','$2a$10$4f4b8c5726b7f56f63f75urf1er/D2kEo5C6V4Lt1ZeIvGzAZX2RK','hasithalakmal','ghasithalakmal@gmail.com','',7,'501ae53ad91d10255787a1adf2628f47',1,'2016-04-11 03:38:46',38,NULL,NULL),(55,'hasitha789','$2a$10$43d73900e545e03d9fce3uvvXNHLzGSig8BKHQpnIjpt82.qqcu0u','hasithalakmal','gha@qwe.com','',4,'bed084e0693bd26858c38f081fc64679',1,'2016-04-11 03:41:01',38,NULL,NULL),(56,'hasith','$2a$10$223e6b0fdcf1d340ea1afuA3.tgRopzWcepjAf4BXmDD7lg3iXYLW','hasith','ghasithalakmal@gmail.com','',1,'42538011466e9b0b1f87cb43448d2f65',1,'2016-04-11 03:41:28',38,NULL,NULL),(57,'hasitha785236','$2a$10$fee2f87c11339e8344780e3s6wmb/ILyUUOaJsdidtms2d6X6WkoK','hasitha lakmal','ghasithalakmal@gmail.com','',3,'e7147978328104a1ff045274f1441e20',1,'2016-04-11 04:22:05',38,NULL,NULL),(58,'hasith152','$2a$10$5199b33fea7e81b89e3bdOEjxAUZx8yl8NeOQ4re0Q15OroMle6ue','hasithalakmal','ghasithalakmal@gmail.com','',3,'c326bc1d15b62fac42ab5d4f1c156119',1,'2016-04-11 05:56:50',38,NULL,NULL),(59,'ucsc123','$2a$10$98676d460266f7a4db179uyhcKefu30tNPAb3.cwncqMI6fqYW7tC','aaaaaaaaa','ghasithalakmal@gmail.com','1234567890',10,'160e092a358633aabf55779162ec7d22',1,'2016-04-15 07:44:31',1,NULL,NULL),(60,'massa78963','$2a$10$4f7302212db7f5b674054uE.DfxPyZNYCNP9gwYfeQJu.dlx0bBg2','aaaaaaaaaaaaa','ghasithalakmal@gmail.com','',5,'8c2d83f80afbfdb1010a481af5641527',1,'2016-04-19 02:03:46',1,NULL,NULL);
/*!40000 ALTER TABLE `operational_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `operational_user_view`
--

DROP TABLE IF EXISTS `operational_user_view`;
/*!50001 DROP VIEW IF EXISTS `operational_user_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `operational_user_view` AS SELECT 
 1 AS `usr_id`,
 1 AS `usr_name`,
 1 AS `usr_pwd`,
 1 AS `usr_full_name`,
 1 AS `usr_email`,
 1 AS `usr_phone_number`,
 1 AS `usr_category`,
 1 AS `usr_api_key`,
 1 AS `ou_status`,
 1 AS `ou_recode_added_at`,
 1 AS `ou_recode_added_by`,
 1 AS `ucat_id`,
 1 AS `ucat_name`,
 1 AS `ucat_description`,
 1 AS `uc_status`,
 1 AS `uc_recode_added_at`,
 1 AS `uc_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `operational_user_view_release`
--

DROP TABLE IF EXISTS `operational_user_view_release`;
/*!50001 DROP VIEW IF EXISTS `operational_user_view_release`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `operational_user_view_release` AS SELECT 
 1 AS `usr_name`,
 1 AS `usr_full_name`,
 1 AS `usr_email`,
 1 AS `usr_phone_number`,
 1 AS `usr_api_key`,
 1 AS `ou_status`,
 1 AS `ou_recode_added_at`,
 1 AS `ucat_name`,
 1 AS `ucat_description`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `place`
--

DROP TABLE IF EXISTS `place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `place` (
  `pla_id` int(11) NOT NULL AUTO_INCREMENT,
  `pla_cupboard` int(11) DEFAULT NULL,
  `cup_shelve` int(11) DEFAULT NULL,
  `cup_description` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`pla_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place`
--

LOCK TABLES `place` WRITE;
/*!40000 ALTER TABLE `place` DISABLE KEYS */;
/*!40000 ALTER TABLE `place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prefect_group`
--

DROP TABLE IF EXISTS `prefect_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prefect_group` (
  `grp_id` int(11) NOT NULL AUTO_INCREMENT,
  `grp_name` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`grp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prefect_group`
--

LOCK TABLES `prefect_group` WRITE;
/*!40000 ALTER TABLE `prefect_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `prefect_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prefect_possition`
--

DROP TABLE IF EXISTS `prefect_possition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prefect_possition` (
  `pos_id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_name` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prefect_possition`
--

LOCK TABLES `prefect_possition` WRITE;
/*!40000 ALTER TABLE `prefect_possition` DISABLE KEYS */;
/*!40000 ALTER TABLE `prefect_possition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prefect_report`
--

DROP TABLE IF EXISTS `prefect_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prefect_report` (
  `prf_repo_id` int(11) NOT NULL AUTO_INCREMENT,
  `prf_is_prf` varchar(45) DEFAULT NULL,
  `prf_section_id` int(11) DEFAULT NULL,
  `prf_group_id` int(11) DEFAULT NULL,
  `prf_possition_id` int(11) DEFAULT NULL,
  `prf_sunday_attendence` int(11) DEFAULT NULL,
  `prf_poyaday_attendence` int(11) DEFAULT NULL,
  `pfr_meeting_attendance` int(11) DEFAULT NULL,
  `prf_extra_work_attendance` int(11) DEFAULT NULL,
  `prf_evaluation_cri_1` int(11) DEFAULT NULL,
  `prf_evaluation_cri_2` int(11) DEFAULT NULL,
  `prf_evaluation_cri_3` int(11) DEFAULT NULL,
  `prf_evaluation_cri_4` int(11) DEFAULT NULL,
  `prf_evaluation_cri_5` int(11) DEFAULT NULL,
  `prf_evaluation_cri_6` int(11) DEFAULT NULL,
  `prf_evaluation_cri_7` int(11) DEFAULT NULL,
  `prf_evaluation_cri_8` int(11) DEFAULT NULL,
  `prf_evaluation_cri_9` int(11) DEFAULT NULL,
  `prf_evaluation_cri_10` int(11) DEFAULT NULL,
  `prf_evaluation_cri_11` int(11) DEFAULT NULL,
  `prf_evaluation_cri_12` int(11) DEFAULT NULL,
  `prf_evaluation_cri_13` int(11) DEFAULT NULL,
  `prf_evaluation_cri_14` int(11) DEFAULT NULL,
  `prf_evaluation_cri_15` int(11) DEFAULT NULL,
  `prf_evaluation_cri_16` int(11) DEFAULT NULL,
  `prf_evaluation_cri_17` int(11) DEFAULT NULL,
  `prf_evaluation_cri_18` int(11) DEFAULT NULL,
  `prf_evaluation_cri_19` int(11) DEFAULT NULL,
  `prf_evaluation_cri_20` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`prf_repo_id`),
  KEY `prf_grp_details_idx` (`prf_group_id`),
  KEY `prf_poss_details_idx` (`prf_possition_id`),
  KEY `prf_section_detail_idx` (`prf_section_id`),
  CONSTRAINT `prf_grp_details` FOREIGN KEY (`prf_group_id`) REFERENCES `prefect_group` (`grp_id`),
  CONSTRAINT `prf_poss_details` FOREIGN KEY (`prf_possition_id`) REFERENCES `prefect_possition` (`pos_id`),
  CONSTRAINT `prf_section_detail` FOREIGN KEY (`prf_section_id`) REFERENCES `prefect_section` (`sec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prefect_report`
--

LOCK TABLES `prefect_report` WRITE;
/*!40000 ALTER TABLE `prefect_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `prefect_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prefect_section`
--

DROP TABLE IF EXISTS `prefect_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prefect_section` (
  `sec_id` int(11) NOT NULL AUTO_INCREMENT,
  `sec_name` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`sec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prefect_section`
--

LOCK TABLES `prefect_section` WRITE;
/*!40000 ALTER TABLE `prefect_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `prefect_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prefect_talant`
--

DROP TABLE IF EXISTS `prefect_talant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prefect_talant` (
  `year` int(11) NOT NULL,
  `prf_repo_id` int(11) NOT NULL,
  `prf_tal_id` int(11) NOT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`year`,`prf_repo_id`,`prf_tal_id`),
  KEY `prf_report_details_idx` (`prf_repo_id`),
  KEY `prf_tal_id_idx` (`prf_tal_id`),
  CONSTRAINT `prf_report_details` FOREIGN KEY (`prf_repo_id`) REFERENCES `prefect_report` (`prf_repo_id`),
  CONSTRAINT `prf_tal_id` FOREIGN KEY (`prf_tal_id`) REFERENCES `talants` (`tal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prefect_talant`
--

LOCK TABLES `prefect_talant` WRITE;
/*!40000 ALTER TABLE `prefect_talant` DISABLE KEYS */;
/*!40000 ALTER TABLE `prefect_talant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(500) DEFAULT NULL,
  `pro_discription` varchar(5000) DEFAULT NULL,
  `pro_year` int(11) DEFAULT NULL,
  `pro_group_num` int(11) DEFAULT NULL,
  `pro_catogory` int(11) DEFAULT NULL,
  `pro_PDF_path` varchar(45) DEFAULT NULL,
  `pro_supervisor_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `supervisor_idx` (`pro_supervisor_id`),
  CONSTRAINT `supervisor` FOREIGN KEY (`pro_supervisor_id`) REFERENCES `projectsupervisor` (`sup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (2,'massa','aaaaaaaa',NULL,NULL,NULL,NULL,1,1,'2016-04-28 04:10:55',NULL,NULL,NULL),(3,'aaaa','aaaaaaaa',NULL,NULL,NULL,NULL,1,1,'2016-04-29 00:17:32',1,NULL,NULL),(4,'massa1','aaaaaaaaaaaaaaa',2016,1,2,NULL,1,1,'2016-04-29 00:51:34',1,NULL,NULL),(5,'aaaa','aaaaaaaa',2015,1,2,NULL,1,1,'2016-04-29 01:17:54',1,NULL,NULL),(6,'aaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaaaa',2016,2,2,NULL,2,1,'2016-04-29 01:44:52',1,NULL,NULL);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_catogory`
--

DROP TABLE IF EXISTS `project_catogory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_catogory` (
  `pro_cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_cat_name` varchar(45) DEFAULT NULL,
  `pro_cat_description` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`pro_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_catogory`
--

LOCK TABLES `project_catogory` WRITE;
/*!40000 ALTER TABLE `project_catogory` DISABLE KEYS */;
INSERT INTO `project_catogory` VALUES (1,'cat1','aaaa',1,'2016-04-29 01:34:02',1,NULL,NULL),(2,'cat2','aaaa',1,'2016-04-29 01:34:02',1,NULL,NULL),(3,'cat3','aaaa',1,'2016-04-29 01:34:02',1,NULL,NULL),(4,'cat4','aaaa',1,'2016-04-29 01:34:02',1,NULL,NULL);
/*!40000 ALTER TABLE `project_catogory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `project_supervisor_view`
--

DROP TABLE IF EXISTS `project_supervisor_view`;
/*!50001 DROP VIEW IF EXISTS `project_supervisor_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `project_supervisor_view` AS SELECT 
 1 AS `sup_id`,
 1 AS `tea_id`,
 1 AS `tea_full_name`,
 1 AS `tea_name_with_initials`,
 1 AS `tea_land_phone_number`,
 1 AS `tea_mobile_phone_number`,
 1 AS `tea_address`,
 1 AS `tea_birth_day`,
 1 AS `tea_city`,
 1 AS `tec_nic`,
 1 AS `lib_mem_id`,
 1 AS `tea_distance_to_home`,
 1 AS `tea_occupation`,
 1 AS `tea_occupation_type`,
 1 AS `tea_office_address`,
 1 AS `tea_office_phone`,
 1 AS `tea_gender`,
 1 AS `tea_email`,
 1 AS `tea_student_id`,
 1 AS `tea_ob_id`,
 1 AS `status`,
 1 AS `recode_added_at`,
 1 AS `recode_added_by`,
 1 AS `recode_modified_at`,
 1 AS `recode_modified_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `projectsupervisor`
--

DROP TABLE IF EXISTS `projectsupervisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectsupervisor` (
  `sup_id` int(11) NOT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `status_copy1` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`sup_id`),
  CONSTRAINT `supervid` FOREIGN KEY (`sup_id`) REFERENCES `teacher` (`tea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectsupervisor`
--

LOCK TABLES `projectsupervisor` WRITE;
/*!40000 ALTER TABLE `projectsupervisor` DISABLE KEYS */;
INSERT INTO `projectsupervisor` VALUES (1,1,'2016-04-29 01:29:12',NULL,NULL,NULL),(2,1,'2016-04-29 01:29:12',NULL,NULL,NULL),(3,1,'2016-04-29 01:29:12',NULL,NULL,NULL),(4,1,'2016-04-29 01:29:12',NULL,NULL,NULL);
/*!40000 ALTER TABLE `projectsupervisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualification`
--

DROP TABLE IF EXISTS `qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qualification` (
  `qul_id` int(11) NOT NULL AUTO_INCREMENT,
  `qul_name` varchar(45) DEFAULT NULL,
  `qul_discription` varchar(45) DEFAULT NULL,
  `qul_type_id` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`qul_id`),
  KEY `quali_type_idx` (`qul_type_id`),
  CONSTRAINT `quali_type` FOREIGN KEY (`qul_type_id`) REFERENCES `qualification_type` (`qul_typ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualification`
--

LOCK TABLES `qualification` WRITE;
/*!40000 ALTER TABLE `qualification` DISABLE KEYS */;
/*!40000 ALTER TABLE `qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualification_type`
--

DROP TABLE IF EXISTS `qualification_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qualification_type` (
  `qul_typ_id` int(11) NOT NULL AUTO_INCREMENT,
  `qul_type_name` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`qul_typ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualification_type`
--

LOCK TABLES `qualification_type` WRITE;
/*!40000 ALTER TABLE `qualification_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `qualification_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommendation`
--

DROP TABLE IF EXISTS `recommendation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommendation` (
  `rec_id` int(11) NOT NULL AUTO_INCREMENT,
  `rec_stu_id` int(11) DEFAULT NULL,
  `rec_year` int(11) DEFAULT NULL,
  `rec_type_id` int(11) DEFAULT NULL,
  `rec_topic` varchar(500) DEFAULT NULL,
  `rec_discription` varchar(5000) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`rec_id`),
  KEY `rec_type_id_idx` (`rec_type_id`),
  KEY `rec_stu_id_idx` (`rec_stu_id`),
  CONSTRAINT `rec_stu_id` FOREIGN KEY (`rec_stu_id`) REFERENCES `student` (`stu_id`),
  CONSTRAINT `rec_type_id` FOREIGN KEY (`rec_type_id`) REFERENCES `recommendation_type` (`rec_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommendation`
--

LOCK TABLES `recommendation` WRITE;
/*!40000 ALTER TABLE `recommendation` DISABLE KEYS */;
INSERT INTO `recommendation` VALUES (1,1,2010,1,'aaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1,'2016-04-19 03:06:28',1,NULL,NULL),(4,1,2012,2,'aaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1,'2016-04-19 03:45:41',1,NULL,NULL),(6,1,2012,3,'aaaaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1,'2016-04-19 04:23:35',1,NULL,NULL),(8,1,2014,4,'aaaaaaaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1,'2016-04-19 04:25:45',1,NULL,NULL),(10,1,2016,5,'aaaaaaaa','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1,'2016-04-20 15:25:43',1,NULL,NULL),(11,1,2012,2,'aaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1,'2016-04-19 03:45:41',1,NULL,NULL);
/*!40000 ALTER TABLE `recommendation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommendation_type`
--

DROP TABLE IF EXISTS `recommendation_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommendation_type` (
  `rec_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `rec_type_name` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`rec_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommendation_type`
--

LOCK TABLES `recommendation_type` WRITE;
/*!40000 ALTER TABLE `recommendation_type` DISABLE KEYS */;
INSERT INTO `recommendation_type` VALUES (1,'Leadership - Recommendations related to Student\'s Leadership Activities',1,'2016-04-19 02:29:43',1,NULL,NULL),(2,'Special Good Deeds - Good Deeds of the Students',1,'2016-04-19 02:29:43',1,NULL,NULL),(3,'Behavioral Issues - Student\'s Unacceptable/Unfavourable Behavior',1,'2016-04-19 02:29:43',1,NULL,NULL),(4,'Family Issues - Mental Stresses due to the Student\'s Background',1,'2016-04-19 02:29:43',1,NULL,NULL),(5,'Achievements - Student\'s Achievements in his/her school or outside Dhamma School',1,'2016-04-19 02:29:43',1,NULL,NULL);
/*!40000 ALTER TABLE `recommendation_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `stu_id` int(11) NOT NULL,
  `exm_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `result` varchar(45) DEFAULT NULL,
  `stu_exm_index_number` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_id`,`exm_id`,`year`),
  KEY `exm_detail_idx` (`exm_id`),
  CONSTRAINT `exm_detail` FOREIGN KEY (`exm_id`) REFERENCES `exam` (`exm_id`),
  CONSTRAINT `stu_detail` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,1,2004,'10','aaaaaa',1,'2016-04-19 08:16:23',1,NULL,NULL),(1,1,2005,'11','aaaaaa',1,'2016-04-19 08:16:23',1,NULL,NULL),(1,2,2005,'12','aaaaaa',1,'2016-04-19 08:16:23',1,NULL,NULL),(1,3,2006,'13','aaaaaa',1,'2016-04-19 08:16:23',1,NULL,NULL),(1,4,2007,'14','aaaaaa',1,'2016-04-19 08:16:23',1,NULL,NULL),(6,1,2004,'15','aaaaaa',1,'2016-04-19 08:16:23',1,NULL,NULL);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `sch_id` int(11) NOT NULL AUTO_INCREMENT,
  `sch_name` varchar(45) DEFAULT NULL,
  `sch_situated_in` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`sch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (1,'Nalanda college','maharagama',1,'2016-03-26 00:20:10',1,NULL,NULL),(2,'Aalanda college','maharagama',1,'2016-03-26 00:20:10',1,NULL,NULL),(3,'Royal college','piliyandala',1,'2016-03-26 00:20:10',1,NULL,NULL),(4,'Vishaka vidyalaya','maharagama',1,'2016-03-26 00:20:10',1,NULL,NULL),(5,'Devi balika vidyalaya','maharagama',1,'2016-03-26 00:20:10',1,NULL,NULL),(6,'Sirimavo Vidyalaya','piliyandala',1,'2016-03-26 00:20:10',1,NULL,NULL),(7,'mysch','maharagama',1,'2016-04-19 01:11:27',1,NULL,NULL),(8,'myschq','maharagama',1,'2016-04-19 01:31:14',1,NULL,NULL),(9,'myschqq','maharagama',1,'2016-04-19 01:53:02',1,NULL,NULL),(10,'massaaaaa','aaaaa',1,'2016-04-19 01:58:21',1,NULL,NULL),(11,'qqqqqqq','wwwwww',1,'2016-04-19 02:25:46',1,NULL,NULL),(12,'Thakshila maha vidyalaya','Horana',1,'2016-04-20 17:17:58',1,NULL,NULL),(13,'hasitha','maharagama',1,'2016-05-29 03:22:37',1,NULL,NULL);
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `school_view`
--

DROP TABLE IF EXISTS `school_view`;
/*!50001 DROP VIEW IF EXISTS `school_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `school_view` AS SELECT 
 1 AS `stu_admission_number`,
 1 AS `sch_name`,
 1 AS `sch_situated_in`,
 1 AS `attend_year`,
 1 AS `leave_year`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `siblings`
--

DROP TABLE IF EXISTS `siblings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siblings` (
  `stu_id` int(11) NOT NULL,
  `slib_id` int(11) NOT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_id`,`slib_id`),
  CONSTRAINT `sib_id` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`),
  CONSTRAINT `stu_id` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siblings`
--

LOCK TABLES `siblings` WRITE;
/*!40000 ALTER TABLE `siblings` DISABLE KEYS */;
INSERT INTO `siblings` VALUES (1,2,1,'2016-04-14 05:31:20',1,NULL,NULL),(1,3,1,'2016-04-14 06:46:36',1,NULL,NULL),(1,4,1,'2016-04-14 06:46:53',1,NULL,NULL),(1,5,1,'2016-04-14 06:47:26',1,NULL,NULL),(1,31,1,'2016-04-14 12:45:08',1,NULL,NULL),(1,32,1,'2016-04-14 12:51:33',1,NULL,NULL),(1,33,1,'2016-04-14 12:56:45',1,NULL,NULL),(1,34,1,'2016-04-14 13:14:44',1,NULL,NULL),(1,35,1,'2016-04-14 13:15:55',1,NULL,NULL),(1,36,1,'2016-04-14 13:17:23',1,NULL,NULL),(1,37,1,'2016-04-14 13:26:16',1,NULL,NULL),(1,43,1,'2016-04-14 14:21:21',1,NULL,NULL),(1,85,1,'2016-04-15 07:43:29',1,NULL,NULL),(1,86,1,'2016-04-16 15:09:40',1,NULL,NULL),(1,87,1,'2016-04-27 10:47:20',1,NULL,NULL),(2,1,1,'2016-04-14 06:31:42',1,NULL,NULL),(2,3,1,'2016-04-14 06:46:36',1,NULL,NULL),(2,4,1,'2016-04-14 06:46:53',1,NULL,NULL),(2,5,1,'2016-04-14 06:47:26',1,NULL,NULL),(2,31,1,'2016-04-14 12:45:08',1,NULL,NULL),(2,32,1,'2016-04-14 12:51:33',1,NULL,NULL),(2,33,1,'2016-04-14 12:56:45',1,NULL,NULL),(2,34,1,'2016-04-14 13:14:44',1,NULL,NULL),(2,35,1,'2016-04-14 13:15:55',1,NULL,NULL),(2,36,1,'2016-04-14 13:17:23',1,NULL,NULL),(2,37,1,'2016-04-14 13:26:16',1,NULL,NULL),(2,43,1,'2016-04-14 14:21:21',1,NULL,NULL),(2,85,1,'2016-04-15 07:43:29',1,NULL,NULL),(2,86,1,'2016-04-16 15:09:40',1,NULL,NULL),(2,87,1,'2016-04-27 10:47:20',1,NULL,NULL),(3,1,1,'2016-04-14 06:46:36',1,NULL,NULL),(3,2,1,'2016-04-14 06:46:36',1,NULL,NULL),(3,4,1,'2016-04-14 06:46:53',1,NULL,NULL),(3,5,1,'2016-04-14 06:47:26',1,NULL,NULL),(3,31,1,'2016-04-14 12:45:08',1,NULL,NULL),(3,32,1,'2016-04-14 12:51:33',1,NULL,NULL),(3,33,1,'2016-04-14 12:56:45',1,NULL,NULL),(3,34,1,'2016-04-14 13:14:44',1,NULL,NULL),(3,35,1,'2016-04-14 13:15:55',1,NULL,NULL),(3,36,1,'2016-04-14 13:17:24',1,NULL,NULL),(3,37,1,'2016-04-14 13:26:16',1,NULL,NULL),(3,43,1,'2016-04-14 14:21:21',1,NULL,NULL),(3,85,1,'2016-04-15 07:43:30',1,NULL,NULL),(3,86,1,'2016-04-16 15:09:40',1,NULL,NULL),(3,87,1,'2016-04-27 10:47:20',1,NULL,NULL),(4,1,1,'2016-04-14 06:46:53',1,NULL,NULL),(4,2,1,'2016-04-14 06:46:53',1,NULL,NULL),(4,3,1,'2016-04-14 06:46:53',1,NULL,NULL),(4,5,1,'2016-04-14 06:47:26',1,NULL,NULL),(4,31,1,'2016-04-14 12:45:08',1,NULL,NULL),(4,32,1,'2016-04-14 12:51:33',1,NULL,NULL),(4,33,1,'2016-04-14 12:56:45',1,NULL,NULL),(4,34,1,'2016-04-14 13:14:44',1,NULL,NULL),(4,35,1,'2016-04-14 13:15:55',1,NULL,NULL),(4,36,1,'2016-04-14 13:17:24',1,NULL,NULL),(4,37,1,'2016-04-14 13:26:16',1,NULL,NULL),(4,43,1,'2016-04-14 14:21:21',1,NULL,NULL),(4,85,1,'2016-04-15 07:43:30',1,NULL,NULL),(4,86,1,'2016-04-16 15:09:40',1,NULL,NULL),(4,87,1,'2016-04-27 10:47:20',1,NULL,NULL),(5,1,1,'2016-04-14 06:47:26',1,NULL,NULL),(5,2,1,'2016-04-14 06:47:26',1,NULL,NULL),(5,3,1,'2016-04-14 06:47:26',1,NULL,NULL),(5,4,1,'2016-04-14 06:47:26',1,NULL,NULL),(5,31,1,'2016-04-14 12:45:08',1,NULL,NULL),(5,32,1,'2016-04-14 12:51:34',1,NULL,NULL),(5,33,1,'2016-04-14 12:56:45',1,NULL,NULL),(5,34,1,'2016-04-14 13:14:44',1,NULL,NULL),(5,35,1,'2016-04-14 13:15:56',1,NULL,NULL),(5,36,1,'2016-04-14 13:17:24',1,NULL,NULL),(5,37,1,'2016-04-14 13:26:17',1,NULL,NULL),(5,43,1,'2016-04-14 14:21:21',1,NULL,NULL),(5,85,1,'2016-04-15 07:43:30',1,NULL,NULL),(5,86,1,'2016-04-16 15:09:40',1,NULL,NULL),(5,87,1,'2016-04-27 10:47:20',1,NULL,NULL),(30,78,1,'2016-04-15 01:24:38',1,NULL,NULL),(30,79,1,'2016-04-15 01:25:57',1,NULL,NULL),(30,80,1,'2016-04-15 01:32:23',1,NULL,NULL),(30,81,1,'2016-04-15 01:35:26',1,NULL,NULL),(31,1,1,'2016-04-14 12:45:08',1,NULL,NULL),(31,2,1,'2016-04-14 12:45:08',1,NULL,NULL),(31,3,1,'2016-04-14 12:45:08',1,NULL,NULL),(31,4,1,'2016-04-14 12:45:08',1,NULL,NULL),(31,5,1,'2016-04-14 12:45:08',1,NULL,NULL),(31,32,1,'2016-04-14 12:51:34',1,NULL,NULL),(31,33,1,'2016-04-14 12:56:45',1,NULL,NULL),(31,34,1,'2016-04-14 13:14:44',1,NULL,NULL),(31,35,1,'2016-04-14 13:15:56',1,NULL,NULL),(31,36,1,'2016-04-14 13:17:24',1,NULL,NULL),(31,37,1,'2016-04-14 13:26:17',1,NULL,NULL),(31,43,1,'2016-04-14 14:21:21',1,NULL,NULL),(31,85,1,'2016-04-15 07:43:30',1,NULL,NULL),(31,86,1,'2016-04-16 15:09:40',1,NULL,NULL),(31,87,1,'2016-04-27 10:47:21',1,NULL,NULL),(32,1,1,'2016-04-14 12:51:33',1,NULL,NULL),(32,2,1,'2016-04-14 12:51:33',1,NULL,NULL),(32,3,1,'2016-04-14 12:51:33',1,NULL,NULL),(32,4,1,'2016-04-14 12:51:33',1,NULL,NULL),(32,5,1,'2016-04-14 12:51:33',1,NULL,NULL),(32,31,1,'2016-04-14 12:51:34',1,NULL,NULL),(32,33,1,'2016-04-14 12:56:45',1,NULL,NULL),(32,34,1,'2016-04-14 13:14:44',1,NULL,NULL),(32,35,1,'2016-04-14 13:15:56',1,NULL,NULL),(32,36,1,'2016-04-14 13:17:24',1,NULL,NULL),(32,37,1,'2016-04-14 13:26:17',1,NULL,NULL),(32,43,1,'2016-04-14 14:21:21',1,NULL,NULL),(32,85,1,'2016-04-15 07:43:30',1,NULL,NULL),(32,86,1,'2016-04-16 15:09:40',1,NULL,NULL),(32,87,1,'2016-04-27 10:47:21',1,NULL,NULL),(33,1,1,'2016-04-14 12:56:45',1,NULL,NULL),(33,2,1,'2016-04-14 12:56:45',1,NULL,NULL),(33,3,1,'2016-04-14 12:56:45',1,NULL,NULL),(33,4,1,'2016-04-14 12:56:45',1,NULL,NULL),(33,5,1,'2016-04-14 12:56:45',1,NULL,NULL),(33,31,1,'2016-04-14 12:56:45',1,NULL,NULL),(33,32,1,'2016-04-14 12:56:45',1,NULL,NULL),(33,34,1,'2016-04-14 13:14:44',1,NULL,NULL),(33,35,1,'2016-04-14 13:15:56',1,NULL,NULL),(33,36,1,'2016-04-14 13:17:24',1,NULL,NULL),(33,37,1,'2016-04-14 13:26:17',1,NULL,NULL),(33,43,1,'2016-04-14 14:21:21',1,NULL,NULL),(33,85,1,'2016-04-15 07:43:30',1,NULL,NULL),(33,86,1,'2016-04-16 15:09:40',1,NULL,NULL),(33,87,1,'2016-04-27 10:47:21',1,NULL,NULL),(34,1,1,'2016-04-14 13:14:44',1,NULL,NULL),(34,2,1,'2016-04-14 13:14:44',1,NULL,NULL),(34,3,1,'2016-04-14 13:14:44',1,NULL,NULL),(34,4,1,'2016-04-14 13:14:44',1,NULL,NULL),(34,5,1,'2016-04-14 13:14:44',1,NULL,NULL),(34,31,1,'2016-04-14 13:14:44',1,NULL,NULL),(34,32,1,'2016-04-14 13:14:44',1,NULL,NULL),(34,33,1,'2016-04-14 13:14:44',1,NULL,NULL),(34,35,1,'2016-04-14 13:15:56',1,NULL,NULL),(34,36,1,'2016-04-14 13:17:24',1,NULL,NULL),(34,37,1,'2016-04-14 13:26:17',1,NULL,NULL),(34,43,1,'2016-04-14 14:21:22',1,NULL,NULL),(34,85,1,'2016-04-15 07:43:30',1,NULL,NULL),(34,86,1,'2016-04-16 15:09:40',1,NULL,NULL),(34,87,1,'2016-04-27 10:47:21',1,NULL,NULL),(35,1,1,'2016-04-14 13:15:55',1,NULL,NULL),(35,2,1,'2016-04-14 13:15:55',1,NULL,NULL),(35,3,1,'2016-04-14 13:15:55',1,NULL,NULL),(35,4,1,'2016-04-14 13:15:55',1,NULL,NULL),(35,5,1,'2016-04-14 13:15:56',1,NULL,NULL),(35,31,1,'2016-04-14 13:15:56',1,NULL,NULL),(35,32,1,'2016-04-14 13:15:56',1,NULL,NULL),(35,33,1,'2016-04-14 13:15:56',1,NULL,NULL),(35,34,1,'2016-04-14 13:15:56',1,NULL,NULL),(35,36,1,'2016-04-14 13:17:24',1,NULL,NULL),(35,37,1,'2016-04-14 13:26:17',1,NULL,NULL),(35,43,1,'2016-04-14 14:21:22',1,NULL,NULL),(35,85,1,'2016-04-15 07:43:30',1,NULL,NULL),(35,86,1,'2016-04-16 15:09:40',1,NULL,NULL),(35,87,1,'2016-04-27 10:47:21',1,NULL,NULL),(36,1,1,'2016-04-14 13:17:23',1,NULL,NULL),(36,2,1,'2016-04-14 13:17:23',1,NULL,NULL),(36,3,1,'2016-04-14 13:17:23',1,NULL,NULL),(36,4,1,'2016-04-14 13:17:24',1,NULL,NULL),(36,5,1,'2016-04-14 13:17:24',1,NULL,NULL),(36,31,1,'2016-04-14 13:17:24',1,NULL,NULL),(36,32,1,'2016-04-14 13:17:24',1,NULL,NULL),(36,33,1,'2016-04-14 13:17:24',1,NULL,NULL),(36,34,1,'2016-04-14 13:17:24',1,NULL,NULL),(36,35,1,'2016-04-14 13:17:24',1,NULL,NULL),(36,37,1,'2016-04-14 13:26:17',1,NULL,NULL),(36,43,1,'2016-04-14 14:21:22',1,NULL,NULL),(36,85,1,'2016-04-15 07:43:30',1,NULL,NULL),(36,86,1,'2016-04-16 15:09:40',1,NULL,NULL),(36,87,1,'2016-04-27 10:47:21',1,NULL,NULL),(37,1,1,'2016-04-14 13:26:16',1,NULL,NULL),(37,2,1,'2016-04-14 13:26:16',1,NULL,NULL),(37,3,1,'2016-04-14 13:26:16',1,NULL,NULL),(37,4,1,'2016-04-14 13:26:16',1,NULL,NULL),(37,5,1,'2016-04-14 13:26:16',1,NULL,NULL),(37,31,1,'2016-04-14 13:26:17',1,NULL,NULL),(37,32,1,'2016-04-14 13:26:17',1,NULL,NULL),(37,33,1,'2016-04-14 13:26:17',1,NULL,NULL),(37,34,1,'2016-04-14 13:26:17',1,NULL,NULL),(37,35,1,'2016-04-14 13:26:17',1,NULL,NULL),(37,36,1,'2016-04-14 13:26:17',1,NULL,NULL),(37,43,1,'2016-04-14 14:21:22',1,NULL,NULL),(37,85,1,'2016-04-15 07:43:30',1,NULL,NULL),(37,86,1,'2016-04-16 15:09:40',1,NULL,NULL),(37,87,1,'2016-04-27 10:47:21',1,NULL,NULL),(43,1,1,'2016-04-14 14:21:21',1,NULL,NULL),(43,2,1,'2016-04-14 14:21:21',1,NULL,NULL),(43,3,1,'2016-04-14 14:21:21',1,NULL,NULL),(43,4,1,'2016-04-14 14:21:21',1,NULL,NULL),(43,5,1,'2016-04-14 14:21:21',1,NULL,NULL),(43,31,1,'2016-04-14 14:21:21',1,NULL,NULL),(43,32,1,'2016-04-14 14:21:21',1,NULL,NULL),(43,33,1,'2016-04-14 14:21:21',1,NULL,NULL),(43,34,1,'2016-04-14 14:21:22',1,NULL,NULL),(43,35,1,'2016-04-14 14:21:22',1,NULL,NULL),(43,36,1,'2016-04-14 14:21:22',1,NULL,NULL),(43,37,1,'2016-04-14 14:21:22',1,NULL,NULL),(43,85,1,'2016-04-15 07:43:30',1,NULL,NULL),(43,86,1,'2016-04-16 15:09:40',1,NULL,NULL),(43,87,1,'2016-04-27 10:47:21',1,NULL,NULL),(76,84,1,'2016-04-15 02:16:20',1,NULL,NULL),(78,30,1,'2016-04-15 01:24:38',1,NULL,NULL),(78,79,1,'2016-04-15 01:25:57',1,NULL,NULL),(78,80,1,'2016-04-15 01:32:23',1,NULL,NULL),(78,81,1,'2016-04-15 01:35:26',1,NULL,NULL),(79,30,1,'2016-04-15 01:25:57',1,NULL,NULL),(79,78,1,'2016-04-15 01:25:57',1,NULL,NULL),(79,80,1,'2016-04-15 01:32:23',1,NULL,NULL),(79,81,1,'2016-04-15 01:35:26',1,NULL,NULL),(80,30,1,'2016-04-15 01:32:23',1,NULL,NULL),(80,78,1,'2016-04-15 01:32:23',1,NULL,NULL),(80,79,1,'2016-04-15 01:32:23',1,NULL,NULL),(80,81,1,'2016-04-15 01:35:26',1,NULL,NULL),(81,30,1,'2016-04-15 01:35:26',1,NULL,NULL),(81,78,1,'2016-04-15 01:35:26',1,NULL,NULL),(81,79,1,'2016-04-15 01:35:26',1,NULL,NULL),(81,80,1,'2016-04-15 01:35:26',1,NULL,NULL),(84,76,1,'2016-04-15 02:16:20',1,NULL,NULL),(85,1,1,'2016-04-15 07:43:29',1,NULL,NULL),(85,2,1,'2016-04-15 07:43:29',1,NULL,NULL),(85,3,1,'2016-04-15 07:43:30',1,NULL,NULL),(85,4,1,'2016-04-15 07:43:30',1,NULL,NULL),(85,5,1,'2016-04-15 07:43:30',1,NULL,NULL),(85,31,1,'2016-04-15 07:43:30',1,NULL,NULL),(85,32,1,'2016-04-15 07:43:30',1,NULL,NULL),(85,33,1,'2016-04-15 07:43:30',1,NULL,NULL),(85,34,1,'2016-04-15 07:43:30',1,NULL,NULL),(85,35,1,'2016-04-15 07:43:30',1,NULL,NULL),(85,36,1,'2016-04-15 07:43:30',1,NULL,NULL),(85,37,1,'2016-04-15 07:43:30',1,NULL,NULL),(85,43,1,'2016-04-15 07:43:30',1,NULL,NULL),(85,86,1,'2016-04-16 15:09:40',1,NULL,NULL),(85,87,1,'2016-04-27 10:47:21',1,NULL,NULL),(86,1,1,'2016-04-16 15:09:40',1,NULL,NULL),(86,2,1,'2016-04-16 15:09:40',1,NULL,NULL),(86,3,1,'2016-04-16 15:09:40',1,NULL,NULL),(86,4,1,'2016-04-16 15:09:40',1,NULL,NULL),(86,5,1,'2016-04-16 15:09:40',1,NULL,NULL),(86,31,1,'2016-04-16 15:09:40',1,NULL,NULL),(86,32,1,'2016-04-16 15:09:40',1,NULL,NULL),(86,33,1,'2016-04-16 15:09:40',1,NULL,NULL),(86,34,1,'2016-04-16 15:09:40',1,NULL,NULL),(86,35,1,'2016-04-16 15:09:40',1,NULL,NULL),(86,36,1,'2016-04-16 15:09:40',1,NULL,NULL),(86,37,1,'2016-04-16 15:09:40',1,NULL,NULL),(86,43,1,'2016-04-16 15:09:40',1,NULL,NULL),(86,85,1,'2016-04-16 15:09:40',1,NULL,NULL),(86,87,1,'2016-04-27 10:47:21',1,NULL,NULL),(87,1,1,'2016-04-27 10:47:20',1,NULL,NULL),(87,2,1,'2016-04-27 10:47:20',1,NULL,NULL),(87,3,1,'2016-04-27 10:47:20',1,NULL,NULL),(87,4,1,'2016-04-27 10:47:20',1,NULL,NULL),(87,5,1,'2016-04-27 10:47:20',1,NULL,NULL),(87,31,1,'2016-04-27 10:47:21',1,NULL,NULL),(87,32,1,'2016-04-27 10:47:21',1,NULL,NULL),(87,33,1,'2016-04-27 10:47:21',1,NULL,NULL),(87,34,1,'2016-04-27 10:47:21',1,NULL,NULL),(87,35,1,'2016-04-27 10:47:21',1,NULL,NULL),(87,36,1,'2016-04-27 10:47:21',1,NULL,NULL),(87,37,1,'2016-04-27 10:47:21',1,NULL,NULL),(87,43,1,'2016-04-27 10:47:21',1,NULL,NULL),(87,85,1,'2016-04-27 10:47:21',1,NULL,NULL),(87,86,1,'2016-04-27 10:47:21',1,NULL,NULL);
/*!40000 ALTER TABLE `siblings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_admission_number` varchar(45) NOT NULL,
  `stu_full_name` varchar(500) NOT NULL,
  `stu_name_with_initisals` varchar(500) NOT NULL,
  `stu_gender` varchar(45) NOT NULL,
  `stu_date_of_birth` date NOT NULL,
  `stu_land_phone_number` varchar(45) DEFAULT NULL,
  `stu_mobile_number` varchar(45) DEFAULT NULL,
  `stu_address` varchar(500) DEFAULT NULL,
  `stu_city` varchar(45) DEFAULT NULL,
  `distance_to_home` int(11) DEFAULT NULL,
  `father_id` int(11) DEFAULT NULL,
  `mother_id` int(11) DEFAULT NULL,
  `guardian_id` int(11) DEFAULT NULL,
  `stu_email_address` varchar(500) DEFAULT NULL,
  `stu_nic_number` varchar(45) DEFAULT NULL,
  `ts_grade9_id` int(11) DEFAULT NULL,
  `ts_grade10_id` int(11) DEFAULT NULL,
  `ts_grade11_id` int(11) DEFAULT NULL,
  `ts_np_id` int(11) DEFAULT NULL,
  `lib_mem_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_id`),
  UNIQUE KEY `stuadmissionnumber_UNIQUE` (`stu_admission_number`),
  KEY `father_details_idx` (`father_id`),
  KEY `mother_details_idx` (`mother_id`),
  KEY `ts9_detail_idx` (`ts_grade9_id`),
  KEY `ts10_detail_idx` (`ts_grade10_id`),
  KEY `ts11_detail_idx` (`ts_grade11_id`),
  KEY `ts_np_detail_idx` (`ts_np_id`),
  KEY `lib_mem_id1_idx` (`lib_mem_id`),
  KEY `gar_detail_idx` (`guardian_id`),
  CONSTRAINT `father_details` FOREIGN KEY (`father_id`) REFERENCES `father` (`far_id`),
  CONSTRAINT `gar_detail` FOREIGN KEY (`guardian_id`) REFERENCES `guardian` (`gur_id`),
  CONSTRAINT `lib_mem_id1` FOREIGN KEY (`lib_mem_id`) REFERENCES `member` (`mem_id`),
  CONSTRAINT `mother_details` FOREIGN KEY (`mother_id`) REFERENCES `mother` (`mot_id`),
  CONSTRAINT `ts10_detail` FOREIGN KEY (`ts_grade10_id`) REFERENCES `gread_10_thurunu_saviya` (`ts10_id`),
  CONSTRAINT `ts11_detail` FOREIGN KEY (`ts_grade11_id`) REFERENCES `gread_11_thurunu_saviya` (`ts11_id`),
  CONSTRAINT `ts9_detail` FOREIGN KEY (`ts_grade9_id`) REFERENCES `grade_9_thurunu_saviya` (`ts9_id`),
  CONSTRAINT `ts_np_detail` FOREIGN KEY (`ts_np_id`) REFERENCES `nirmathru_pranama_thurunu_saviya` (`np_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'000001','hasitha lakmal gamage','s1','Male','1992-06-17','123456789','123456789','123aaaa','colombo',10,1,1,1,'gm@gm.com',NULL,24,146,5,NULL,NULL,2,'2016-03-26 00:20:10',1,'2016-04-29 02:29:47',1),(2,'000002','yashika gayathri daranjagama','s2','Male','1992-06-17','123456789','123456789','123aaaa','Maharagama',10,2,2,1,'gm@gm.com',NULL,25,125,6,NULL,NULL,2,'2016-03-26 00:20:10',1,'2016-04-29 02:29:47',1),(3,'000003','hiranya panawalla','s3','Male','1992-06-17','123456789','123456789','123aaaa','Boralesgamuwe',10,1,1,1,'gm@gm.com',NULL,26,127,7,NULL,NULL,2,'2016-03-26 00:20:10',1,'2016-04-29 02:29:47',1),(4,'000004','pavith sulochana hettiarachchi','s4','Male','1992-06-17','123456789','123456789','123aaaa','Maharagama',10,2,2,2,'gm@gm.com',NULL,27,128,9,NULL,NULL,2,'2016-03-26 00:20:10',1,'2016-04-29 02:29:48',1),(5,'000005','gayantha krishan dasanayaka','s5','Male','1992-06-17','123456789','123456789','123aaaa','colombo',10,3,3,3,'gm@gm.com',NULL,28,126,8,NULL,NULL,2,'2016-03-26 00:20:10',1,'2016-04-29 02:29:48',1),(6,'000006','sandamali swarnasingha','s6','Male','1992-06-17','',NULL,'123aaaaaa','colombo',NULL,NULL,NULL,NULL,NULL,NULL,29,129,10,NULL,NULL,2,'2016-04-13 02:52:09',NULL,'2016-04-29 02:29:48',1),(7,'000007','kasun isuru','s7','male','1992-06-17',NULL,NULL,NULL,'Maharagama',NULL,NULL,NULL,NULL,NULL,NULL,30,130,11,NULL,NULL,2,'2016-04-14 07:46:45',1,'2016-04-29 02:29:48',1),(8,'000008','waruni samaawikrama','s8','male','1992-06-17','123456789','123456789','123aaaaa','Maharagama',5,1,1,1,'ghasithalakmal@gmail.com','921692374v',31,131,12,NULL,NULL,2,'2016-04-14 07:49:37',1,'2016-04-29 02:29:48',1),(16,'000009','hiruni panamura','s9','male','1992-06-17','123456789','123456789','123aaaaa','aaaaa',5,1,1,1,'ghasithalakmal@gmail.com',NULL,32,132,13,NULL,NULL,2,'2016-04-14 08:20:00',1,'2016-04-29 02:29:48',1),(17,'000010','hasitha lakmali','s9','male','1992-06-17','123456789','123456789','123aaaaa','aaaaa',5,1,1,1,'ghasithalakmal@gmail.com',NULL,33,133,14,NULL,NULL,2,'2016-04-14 08:24:36',1,'2016-04-29 02:29:48',1),(18,'000011','leshika sanjeewani','g.h. lakmal','Female','2015-05-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 12:12:34',1,NULL,NULL),(19,'000012','anuradini nilaksi shashikala','y.g. daranagama','Female','1992-05-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 12:14:47',1,NULL,NULL),(20,'000013','gamage bandusiri','g.h. lakmal','Female','1992-06-17','123456789','123456789','123aaaa','colombo',10,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 12:20:06',1,NULL,NULL),(29,'000014','priyanka udagedara','s8','male','1992-06-17','123456789','123456789','123aaaaa','aaaaa',5,1,1,1,'ghasithalakmal@gmail.com','921692374v',NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 12:39:55',1,NULL,NULL),(30,'000015','ashan randunu','s8','male','1992-06-17','123456789','123456789','123aaaaa','aaaaa',5,1,1,1,'ghasithalakmal@gmail.com','921692374v',NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 12:41:45',1,NULL,NULL),(31,'000016','malith madusanka','lakmal','Male','1992-06-17','123456789','123456789','123aaaa','colombo',10,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 12:45:05',1,NULL,NULL),(32,'000017','kasun lakmal','aaaaa','Female','1992-06-17','123456789','123456789','123aaaa','colombo',10,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 12:51:33',1,NULL,NULL),(33,'000018','gayathri samarrawikrama','aaaaaaaaaa','Female','1992-06-17','123456789','123456789','123aaaa','colombo',10,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 12:56:44',1,NULL,NULL),(34,'000019','susith madusanka','aaaa','Female','1992-06-17','123456789','123456789','123aaaa','colombo',10,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-14 13:14:43',1,NULL,NULL),(35,'000020','malith perera','aaaa','Female','1992-06-17','123456789','123456789','123aaaa','colombo',10,1,1,1,NULL,NULL,35,134,16,NULL,NULL,2,'2016-04-14 13:15:55',1,'2016-04-29 02:29:48',1),(36,'000021','kasuni ramawikrama','aaaaaaaaaa','Male','1992-05-03','123456789','123456789','123aaaa','colombo',10,1,1,1,NULL,NULL,34,135,15,NULL,NULL,2,'2016-04-14 13:17:23',1,'2016-04-29 02:29:48',1),(37,'000022','danushka ramanayake','aaaaaaaaaa','Female','1996-07-05','123456789','123456789','123aaaa','colombo',10,1,1,1,NULL,NULL,36,138,17,NULL,NULL,2,'2016-04-14 13:26:16',1,'2016-04-29 02:29:48',1),(43,'000023','sandamali manike','aaaaaa','Female','1992-06-17','123456789','123456789','123aaaa','colombo',10,1,1,1,NULL,NULL,41,136,18,NULL,NULL,2,'2016-04-14 14:21:21',1,'2016-04-29 02:29:48',1),(61,'000024','jayana chamini','aaaaaaaa','Male','1992-06-17','','','aaaaaaaaaa','',0,50,39,27,NULL,NULL,37,137,19,NULL,NULL,2,'2016-04-14 15:20:03',1,'2016-04-29 02:29:48',1),(69,'000025','suresh panawalla','aaaaaa','Male','1992-06-15','','','aaaaaaaa','',0,58,48,35,NULL,NULL,40,139,20,NULL,NULL,2,'2016-04-15 01:02:46',1,'2016-04-29 02:29:48',1),(70,'000026','kasuni nimalka gayathri','aaaaa','Male','1992-06-15','','','aaaaaaaaa','',0,59,49,36,NULL,NULL,38,140,21,NULL,NULL,2,'2016-04-15 01:03:52',1,'2016-04-29 02:29:48',1),(71,'000027','gayani ranasingha','aaaaaa','Female','2011-09-25','','','aaaaaaaaaaa','',0,60,50,37,NULL,NULL,39,141,22,NULL,NULL,2,'2016-04-15 01:07:00',1,'2016-04-29 02:29:48',1),(73,'000028','gayathrika nanayakkara','aaaaa','Male','1992-06-15','','','aaaaaaaaaaa','',0,62,52,39,NULL,NULL,42,142,24,NULL,NULL,2,'2016-04-15 01:09:58',1,'2016-04-29 02:29:49',1),(74,'000029','gayan sandeepa','aaaaaaa','Male','1992-06-02','','','aaaaaaaaaaaa','',0,66,56,43,NULL,NULL,43,143,23,NULL,NULL,2,'2016-04-15 01:18:28',1,'2016-04-29 02:29:49',1),(76,'000030','gayan lakmal','aaaaaaaaaaaaaaaa','Male','2000-02-05','','','aaaaaaaaaaaa','',0,68,58,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 01:20:59',1,NULL,NULL),(77,'000031','gayani dikkumbura','aaaaaaa','Male','1992-06-25','','','aaaaaaaaaa','',0,70,60,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 01:22:44',1,NULL,NULL),(78,'000032','udara dukkumbura','aaaaaaa','Male','1992-06-15','123456789','123456789','123aaaaa','aaaaa',5,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 01:24:38',1,NULL,NULL),(79,'000033','hiranya gayathmi','aaaaaaa','Male','1992-06-15','123456789','123456789','123aaaaa','aaaaa',5,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 01:25:57',1,NULL,NULL),(80,'000034','gayathri sithumini','aaaaaaaaaa','Male','1992-06-15','123456789','123456789','123aaaaa','aaaaa',5,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 01:32:22',1,NULL,NULL),(81,'000035','nayani gayasha','aaaaaa','Male','1992-05-06','123456789','123456789','123aaaaa','aaaaa',5,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 01:35:26',1,NULL,NULL),(82,'000036','gayasha perera','aaaaaa','Male','1992-06-15','','','aaaaaaaaa','',0,71,61,48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 01:39:32',1,NULL,NULL),(83,'000037','gayantha krishan','aaaaaaaaaa','Male','1995-05-05','','','aaaaaaaaaaa','',0,72,62,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 01:41:40',1,NULL,NULL),(84,'000038','krishan gayantha dasanayakae','aaaaa','Male','1992-06-19','','','aaaaaaaaaaaa','',0,68,58,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 02:16:20',1,NULL,NULL),(85,'000039','gayani edwerd','g.h. lakmal','Male','1992-06-17','0112545263','0112545263','123aaaa','colombo',10,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-15 07:43:29',1,NULL,NULL),(86,'000040','gaythmi gayanthi gayana','Haji. f.kd','Male','1996-09-16','0112343434','0112509969','123aaaa','colombo',0,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-16 15:09:39',1,NULL,NULL),(87,'000079','hasitha lakmal gamage','g.h.lakmal','Male','1992-06-06','0112545263','0717584227','123aaaa','colombo',10,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-04-27 10:47:20',1,NULL,NULL),(88,'000123','aaaaaaaaaaa','aaaaaaaaaaa','Male','1992-05-05','','','aaaaaaaaaaaaaaaa','',0,73,63,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-06-07 08:11:28',1,NULL,NULL),(89,'000147','aaaaaaaaaaaaaaaaaa','aaaaaaaaaaaaaaaa','Male','1992-06-06','','','aaaaaaaaaaaaaaaaaaaaa','',0,74,64,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-06-07 08:21:02',1,NULL,NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_class`
--

DROP TABLE IF EXISTS `student_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_class` (
  `year` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `clz_id` int(11) DEFAULT NULL,
  `clz_report_id` int(11) DEFAULT '1',
  `prefect_report_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`year`,`stu_id`),
  KEY `stu_detailsnew_idx` (`stu_id`),
  KEY `clz_idnew_idx` (`clz_id`),
  KEY `clz_repo_id_idx` (`clz_report_id`),
  KEY `prf_repo_id_idx` (`prefect_report_id`),
  CONSTRAINT `clz_idnew` FOREIGN KEY (`clz_id`) REFERENCES `class` (`clz_id`),
  CONSTRAINT `clz_repo_id` FOREIGN KEY (`clz_report_id`) REFERENCES `class_report` (`clz_repo_id`),
  CONSTRAINT `prf_repo_id` FOREIGN KEY (`prefect_report_id`) REFERENCES `prefect_report` (`prf_repo_id`),
  CONSTRAINT `stu_detailsnew` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_class`
--

LOCK TABLES `student_class` WRITE;
/*!40000 ALTER TABLE `student_class` DISABLE KEYS */;
INSERT INTO `student_class` VALUES (2000,1,1,193,NULL,2,'2016-04-14 02:11:24',1,'2016-04-27 10:53:31',1),(2000,3,2,191,NULL,2,'2016-04-14 13:26:18',38,'2016-04-27 10:53:31',1),(2000,4,3,194,NULL,2,'2016-04-14 14:21:22',38,'2016-04-27 10:53:31',1),(2000,5,1,197,NULL,2,'2016-04-15 01:24:38',38,'2016-04-27 10:53:32',1),(2000,6,1,196,NULL,2,'2016-04-15 01:25:57',38,'2016-04-27 10:53:32',1),(2000,7,1,195,NULL,2,'2016-04-15 01:32:23',38,'2016-04-27 10:53:31',1),(2000,8,1,199,NULL,2,'2016-04-15 07:43:31',1,'2016-04-27 10:53:32',1),(2001,1,3,154,NULL,2,'2016-04-15 07:43:31',1,'2016-04-17 18:05:41',1),(2004,1,7,189,NULL,2,'2016-04-16 15:09:42',1,'2016-04-27 10:53:31',1),(2015,2,2,1,NULL,1,'2016-06-19 10:26:06',1,NULL,NULL),(2015,16,1,198,NULL,2,'2016-04-14 02:11:24',1,'2016-04-27 10:53:32',1),(2015,17,1,129,NULL,2,'2016-04-16 15:09:42',1,'2016-04-17 18:05:39',1),(2015,18,1,134,NULL,2,'2016-04-14 13:26:18',38,'2016-04-17 18:05:39',1),(2015,19,1,132,NULL,2,'2016-04-14 14:21:22',38,'2016-04-17 18:05:39',1),(2015,29,1,135,NULL,2,'2016-04-15 01:24:38',38,'2016-04-17 18:05:40',1),(2015,30,1,136,NULL,2,'2016-04-15 01:25:57',38,'2016-04-17 18:05:40',1),(2015,31,1,137,NULL,2,'2016-04-15 01:32:23',38,'2016-04-17 18:05:40',1),(2015,32,1,138,NULL,2,'2016-04-15 07:43:31',1,'2016-04-17 18:05:40',1),(2015,33,1,139,NULL,2,'2016-04-14 02:11:24',1,'2016-04-17 18:05:40',1),(2015,34,1,140,NULL,2,'2016-04-16 15:09:42',1,'2016-04-17 18:05:40',1),(2015,35,1,141,NULL,2,'2016-04-14 13:26:18',38,'2016-04-17 18:05:40',1),(2015,36,1,142,NULL,2,'2016-04-14 14:21:22',38,'2016-04-17 18:05:40',1),(2015,37,1,143,NULL,2,'2016-04-15 01:24:38',38,'2016-04-17 18:05:40',1),(2015,43,1,145,NULL,2,'2016-04-15 01:25:57',38,'2016-04-17 18:05:40',1),(2015,61,1,144,NULL,2,'2016-04-15 01:32:23',38,'2016-04-17 18:05:40',1),(2015,69,1,147,NULL,2,'2016-04-15 07:43:31',1,'2016-04-17 18:05:41',1),(2015,70,1,146,NULL,2,'2016-04-14 02:11:24',1,'2016-04-17 18:05:40',1),(2015,71,1,148,NULL,2,'2016-04-16 15:09:42',1,'2016-04-17 18:05:40',1),(2015,73,2,149,NULL,2,'2016-04-14 13:26:18',38,'2016-04-17 18:05:41',1),(2015,74,2,150,NULL,2,'2016-04-14 14:21:22',38,'2016-04-17 18:05:41',1),(2015,76,2,151,NULL,2,'2016-04-15 01:24:38',38,'2016-04-17 18:05:41',1),(2015,77,2,152,NULL,2,'2016-04-15 01:25:57',38,'2016-04-17 18:05:41',1),(2015,79,2,153,NULL,2,'2016-04-15 01:32:23',38,'2016-04-17 18:05:41',1),(2015,80,2,154,NULL,2,'2016-04-15 07:43:31',1,'2016-04-17 18:05:41',1),(2016,1,2,1,NULL,1,'2016-06-19 10:31:53',1,NULL,NULL),(2016,2,2,1,NULL,1,'2016-06-19 10:30:56',1,NULL,NULL),(2016,3,2,1,NULL,1,'2016-06-19 10:36:22',1,NULL,NULL),(2016,4,2,1,NULL,1,'2016-06-19 10:36:26',1,NULL,NULL),(2016,5,2,1,NULL,1,'2016-06-19 10:36:29',1,NULL,NULL),(2016,87,2,1,NULL,1,'2016-04-27 10:47:22',1,NULL,NULL);
/*!40000 ALTER TABLE `student_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `student_class_view`
--

DROP TABLE IF EXISTS `student_class_view`;
/*!50001 DROP VIEW IF EXISTS `student_class_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `student_class_view` AS SELECT 
 1 AS `stu_admission_number`,
 1 AS `year`,
 1 AS `clz_grade`,
 1 AS `clz_class`,
 1 AS `tea_full_name`,
 1 AS `tea_name_with_initials`,
 1 AS `clz_evaluation_cri_1`,
 1 AS `clz_evaluation_cri_2`,
 1 AS `clz_evaluation_cri_3`,
 1 AS `clz_evaluation_cri_4`,
 1 AS `clz_evaluation_cri_5`,
 1 AS `clz_evaluation_cri_6`,
 1 AS `clz_evaluation_cri_7`,
 1 AS `clz_evaluation_cri_8`,
 1 AS `clz_evaluation_cri_9`,
 1 AS `clz_evaluation_cri_10`,
 1 AS `clz_evaluation_cri_11`,
 1 AS `clz_evaluation_cri_12`,
 1 AS `clz_evaluation_cri_13`,
 1 AS `clz_evaluation_cri_14`,
 1 AS `clz_evaluation_cri_15`,
 1 AS `clz_evaluation_cri_16`,
 1 AS `clz_evaluation_cri_17`,
 1 AS `clz_evaluation_cri_18`,
 1 AS `clz_evaluation_cri_19`,
 1 AS `clz_evaluation_cri_20`,
 1 AS `clz_evaluation_cri_21`,
 1 AS `clz_evaluation_cri_22`,
 1 AS `clz_evaluation_cri_23`,
 1 AS `clz_evaluation_cri_24`,
 1 AS `clz_evaluation_cri_25`,
 1 AS `clz_evaluation_cri_26`,
 1 AS `clz_evaluation_cri_27`,
 1 AS `clz_evaluation_cri_28`,
 1 AS `clz_evaluation_cri_29`,
 1 AS `clz_evaluation_cri_30`,
 1 AS `clz_evaluation_cri_31`,
 1 AS `clz_evaluation_cri_32`,
 1 AS `clz_evaluation_cri_33`,
 1 AS `clz_evaluation_cri_34`,
 1 AS `clz_evaluation_cri_35`,
 1 AS `clz_evaluation_cri_36`,
 1 AS `clz_evaluation_cri_37`,
 1 AS `clz_evaluation_cri_38`,
 1 AS `clz_evaluation_cri_39`,
 1 AS `clz_evaluation_cri_40`,
 1 AS `clz_evaluation_cri_41`,
 1 AS `clz_evaluation_cri_42`,
 1 AS `clz_evaluation_cri_43`,
 1 AS `clz_evaluation_cri_44`,
 1 AS `clz_evaluation_cri_45`,
 1 AS `clz_evaluation_cri_46`,
 1 AS `clz_evaluation_cri_47`,
 1 AS `clz_evaluation_cri_48`,
 1 AS `clz_evaluation_cri_49`,
 1 AS `clz_evaluation_cri_50`,
 1 AS `clz_evaluation_cri_51`,
 1 AS `clz_evaluation_cri_52`,
 1 AS `clz_evaluation_cri_53`,
 1 AS `clz_evaluation_cri_54`,
 1 AS `clz_evaluation_cri_55`,
 1 AS `clz_evaluation_cri_56`,
 1 AS `clz_evaluation_cri_57`,
 1 AS `clz_evaluation_cri_58`,
 1 AS `clz_evaluation_cri_59`,
 1 AS `clz_evaluation_cri_60`,
 1 AS `clz_evaluation_cri_61`,
 1 AS `clz_evaluation_cri_62`,
 1 AS `clz_evaluation_cri_63`,
 1 AS `clz_evaluation_cri_64`,
 1 AS `clz_evaluation_cri_65`,
 1 AS `clz_evaluation_cri_66`,
 1 AS `clz_evaluation_cri_67`,
 1 AS `clz_evaluation_cri_68`,
 1 AS `clz_evaluation_cri_69`,
 1 AS `clz_evaluation_cri_70`,
 1 AS `clz_evaluation_cri_71`,
 1 AS `clz_evaluation_cri_72`,
 1 AS `clz_evaluation_cri_73`,
 1 AS `clz_evaluation_cri_74`,
 1 AS `clz_evaluation_cri_75`,
 1 AS `clz_evaluation_cri_76`,
 1 AS `clz_evaluation_cri_77`,
 1 AS `clz_evaluation_cri_78`,
 1 AS `clz_evaluation_cri_79`,
 1 AS `clz_evaluation_cri_80`,
 1 AS `clz_evaluation_cri_1_copy1`,
 1 AS `clz_evaluation_cri_2_copy1`,
 1 AS `clz_evaluation_cri_3_copy1`,
 1 AS `clz_evaluation_cri_4_copy1`,
 1 AS `clz_evaluation_cri_5_copy1`,
 1 AS `clz_evaluation_cri_6_copy1`,
 1 AS `clz_evaluation_cri_7_copy1`,
 1 AS `clz_evaluation_cri_8_copy1`,
 1 AS `clz_evaluation_cri_9_copy1`,
 1 AS `clz_evaluation_cri_10_copy1`,
 1 AS `clz_evaluation_cri_11_copy1`,
 1 AS `clz_evaluation_cri_12_copy1`,
 1 AS `clz_evaluation_cri_13_copy1`,
 1 AS `clz_evaluation_cri_14_copy1`,
 1 AS `clz_evaluation_cri_15_copy1`,
 1 AS `clz_evaluation_cri_16_copy1`,
 1 AS `clz_evaluation_cri_17_copy1`,
 1 AS `clz_evaluation_cri_18_copy1`,
 1 AS `clz_evaluation_cri_19_copy1`,
 1 AS `clz_evaluation_cri_20_copy1`,
 1 AS `clz_evaluation_cri_41_copy1`,
 1 AS `clz_evaluation_cri_42_copy1`,
 1 AS `clz_evaluation_cri_43_copy1`,
 1 AS `clz_evaluation_cri_44_copy1`,
 1 AS `clz_evaluation_cri_45_copy1`,
 1 AS `clz_evaluation_cri_46_copy1`,
 1 AS `clz_evaluation_cri_47_copy1`,
 1 AS `clz_evaluation_cri_48_copy1`,
 1 AS `clz_evaluation_cri_49_copy1`,
 1 AS `clz_evaluation_cri_50_copy1`,
 1 AS `clz_evaluation_cri_51_copy1`,
 1 AS `clz_evaluation_cri_52_copy1`,
 1 AS `clz_evaluation_cri_53_copy1`,
 1 AS `clz_evaluation_cri_54_copy1`,
 1 AS `clz_evaluation_cri_55_copy1`,
 1 AS `clz_evaluation_cri_56_copy1`,
 1 AS `clz_evaluation_cri_57_copy1`,
 1 AS `clz_evaluation_cri_58_copy1`,
 1 AS `clz_evaluation_cri_59_copy1`,
 1 AS `clz_evaluation_cri_60_copy1`,
 1 AS `prf_is_prf`,
 1 AS `sec_name`,
 1 AS `grp_name`,
 1 AS `pos_name`,
 1 AS `prf_sunday_attendence`,
 1 AS `prf_poyaday_attendence`,
 1 AS `pfr_meeting_attendance`,
 1 AS `prf_extra_work_attendance`,
 1 AS `prf_evaluation_cri_1`,
 1 AS `prf_evaluation_cri_2`,
 1 AS `prf_evaluation_cri_3`,
 1 AS `prf_evaluation_cri_4`,
 1 AS `prf_evaluation_cri_5`,
 1 AS `prf_evaluation_cri_6`,
 1 AS `prf_evaluation_cri_7`,
 1 AS `prf_evaluation_cri_8`,
 1 AS `prf_evaluation_cri_9`,
 1 AS `prf_evaluation_cri_10`,
 1 AS `prf_evaluation_cri_11`,
 1 AS `prf_evaluation_cri_12`,
 1 AS `prf_evaluation_cri_13`,
 1 AS `prf_evaluation_cri_14`,
 1 AS `prf_evaluation_cri_15`,
 1 AS `prf_evaluation_cri_16`,
 1 AS `prf_evaluation_cri_17`,
 1 AS `prf_evaluation_cri_18`,
 1 AS `prf_evaluation_cri_19`,
 1 AS `prf_evaluation_cri_20`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `student_diseases`
--

DROP TABLE IF EXISTS `student_diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_diseases` (
  `stu_id` int(11) NOT NULL,
  `dis_id` int(11) NOT NULL,
  `dis_found_year` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_id`,`dis_id`),
  KEY `dis_id_idx` (`dis_id`),
  CONSTRAINT `dis_id` FOREIGN KEY (`dis_id`) REFERENCES `diseases` (`dis_id`),
  CONSTRAINT `stu_details` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_diseases`
--

LOCK TABLES `student_diseases` WRITE;
/*!40000 ALTER TABLE `student_diseases` DISABLE KEYS */;
INSERT INTO `student_diseases` VALUES (1,1,2015,1,'2016-03-26 00:20:10',1,NULL,NULL),(1,2,2015,1,'2016-04-14 02:29:43',1,NULL,NULL),(1,3,NULL,1,'2016-04-14 02:30:24',1,NULL,NULL),(1,8,2015,1,'2016-04-19 05:17:29',1,NULL,NULL),(1,9,2015,1,'2016-04-19 05:13:19',1,NULL,NULL),(1,10,2015,1,'2016-04-19 05:19:56',1,NULL,NULL),(34,1,NULL,1,'2016-04-14 13:14:45',1,NULL,NULL),(35,1,NULL,1,'2016-04-14 13:15:56',1,NULL,NULL),(36,1,NULL,1,'2016-04-14 13:17:24',1,NULL,NULL),(36,3,NULL,1,'2016-04-14 13:17:24',1,NULL,NULL),(37,1,NULL,1,'2016-04-14 13:26:17',1,NULL,NULL),(37,3,NULL,1,'2016-04-14 13:26:17',1,NULL,NULL),(43,1,NULL,1,'2016-04-14 14:21:22',1,NULL,NULL),(43,2,NULL,1,'2016-04-14 14:21:22',1,NULL,NULL),(78,1,NULL,1,'2016-04-15 01:24:38',1,NULL,NULL),(79,1,NULL,1,'2016-04-15 01:25:57',1,NULL,NULL),(80,1,NULL,1,'2016-04-15 01:32:23',1,NULL,NULL),(85,1,NULL,1,'2016-04-15 07:43:31',1,NULL,NULL),(85,2,NULL,1,'2016-04-15 07:43:31',1,NULL,NULL),(86,3,NULL,1,'2016-04-16 15:09:41',1,NULL,NULL),(87,2,NULL,1,'2016-04-27 10:47:22',1,NULL,NULL),(87,4,NULL,1,'2016-04-27 10:47:22',1,NULL,NULL),(87,6,NULL,1,'2016-04-27 10:47:22',1,NULL,NULL),(87,7,NULL,1,'2016-04-27 10:47:22',1,NULL,NULL),(87,9,NULL,1,'2016-04-27 10:47:22',1,NULL,NULL);
/*!40000 ALTER TABLE `student_diseases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_donation`
--

DROP TABLE IF EXISTS `student_donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_donation` (
  `stu_id` int(11) NOT NULL,
  `don_id` int(11) NOT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_id`,`don_id`),
  KEY `don_id_idx` (`don_id`),
  CONSTRAINT `don_id` FOREIGN KEY (`don_id`) REFERENCES `donations` (`don_id`),
  CONSTRAINT `stud_id` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_donation`
--

LOCK TABLES `student_donation` WRITE;
/*!40000 ALTER TABLE `student_donation` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `student_examresult_view`
--

DROP TABLE IF EXISTS `student_examresult_view`;
/*!50001 DROP VIEW IF EXISTS `student_examresult_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `student_examresult_view` AS SELECT 
 1 AS `stu_admission_number`,
 1 AS `exm_name`,
 1 AS `exm_discription`,
 1 AS `year`,
 1 AS `result`,
 1 AS `stu_exm_index_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `student_name_separating_view`
--

DROP TABLE IF EXISTS `student_name_separating_view`;
/*!50001 DROP VIEW IF EXISTS `student_name_separating_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `student_name_separating_view` AS SELECT 
 1 AS `stu_id`,
 1 AS `stu_admission_number`,
 1 AS `stu_full_name`,
 1 AS `stu_name_with_initisals`,
 1 AS `name1`,
 1 AS `name2`,
 1 AS `name3`,
 1 AS `stu_gender`,
 1 AS `stu_date_of_birth`,
 1 AS `stu_address`,
 1 AS `stu_city`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `student_personal_detail_view`
--

DROP TABLE IF EXISTS `student_personal_detail_view`;
/*!50001 DROP VIEW IF EXISTS `student_personal_detail_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `student_personal_detail_view` AS SELECT 
 1 AS `stu_admission_number`,
 1 AS `stu_full_name`,
 1 AS `stu_name_with_initisals`,
 1 AS `stu_gender`,
 1 AS `stu_date_of_birth`,
 1 AS `stu_land_phone_number`,
 1 AS `stu_mobile_number`,
 1 AS `stu_address`,
 1 AS `stu_city`,
 1 AS `distance_to_home`,
 1 AS `stu_email_address`,
 1 AS `stu_nic_number`,
 1 AS `far_name`,
 1 AS `far_phone_number`,
 1 AS `far_adress`,
 1 AS `far_email_address`,
 1 AS `far_occupation`,
 1 AS `far_occ_type_name`,
 1 AS `far_occ_type_description`,
 1 AS `far_office_address`,
 1 AS `far_office_phone_number`,
 1 AS `far_stu_addmision_number`,
 1 AS `far_old_student_number`,
 1 AS `far_other_interactions_with_dp`,
 1 AS `far_nic`,
 1 AS `far_tea_id`,
 1 AS `mot_name`,
 1 AS `mot_phone_number`,
 1 AS `mot_adress`,
 1 AS `mot_email_address`,
 1 AS `mot_occupation`,
 1 AS `mot_occ_type_name`,
 1 AS `mot_occ_type_description`,
 1 AS `mot_office_address`,
 1 AS `mot_office_phone_number`,
 1 AS `mot_stu_addmision_number`,
 1 AS `mot_old_student_number`,
 1 AS `mot_other_interactions_with_dp`,
 1 AS `mot_nic`,
 1 AS `mot_tea_id`,
 1 AS `gur_name`,
 1 AS `gur_phone_number`,
 1 AS `gur_adress`,
 1 AS `gur_email_address`,
 1 AS `gur_occupation`,
 1 AS `gur_occ_type_name`,
 1 AS `gur_occ_type_description`,
 1 AS `gur_office_address`,
 1 AS `gur_office_phone_number`,
 1 AS `gur_stu_addmision_number`,
 1 AS `gur_old_student_number`,
 1 AS `gur_other_interactions_with_dp`,
 1 AS `gur_nic`,
 1 AS `gur_tea_id`,
 1 AS `gr9tsyear`,
 1 AS `ts9_group`,
 1 AS `ts9_daily_attendance`,
 1 AS `ts9_poya_attendance`,
 1 AS `ts9_recomendation`,
 1 AS `ts9_evaluation_cri_1`,
 1 AS `ts9_evaluation_cri_2`,
 1 AS `ts9_evaluation_cri_3`,
 1 AS `ts9_evaluation_cri_4`,
 1 AS `ts9_evaluation_cri_5`,
 1 AS `ts9_evaluation_cri_6`,
 1 AS `ts9_evaluation_cri_7`,
 1 AS `ts9_evaluation_cri_8`,
 1 AS `ts9_evaluation_cri_9`,
 1 AS `ts9_evaluation_cri_10`,
 1 AS `ts9_evaluation_cri_11`,
 1 AS `ts9_evaluation_cri_12`,
 1 AS `ts9_evaluation_cri_13`,
 1 AS `ts9_evaluation_cri_14`,
 1 AS `ts9_evaluation_cri_15`,
 1 AS `ts9_evaluation_cri_16`,
 1 AS `ts9_evaluation_cri_17`,
 1 AS `ts9_evaluation_cri_18`,
 1 AS `ts9_evaluation_cri_19`,
 1 AS `ts9_evaluation_cri_20`,
 1 AS `gr10tsyear`,
 1 AS `ts10_group`,
 1 AS `ts10_daily_attendance`,
 1 AS `ts10_poya_attendance`,
 1 AS `ts10_recomendation`,
 1 AS `ts10_evaluation_cri_1`,
 1 AS `ts10_evaluation_cri_2`,
 1 AS `ts10_evaluation_cri_3`,
 1 AS `ts10_evaluation_cri_4`,
 1 AS `ts10_evaluation_cri_5`,
 1 AS `ts10_evaluation_cri_6`,
 1 AS `ts10_evaluation_cri_7`,
 1 AS `ts10_evaluation_cri_8`,
 1 AS `ts10_evaluation_cri_9`,
 1 AS `ts10_evaluation_cri_10`,
 1 AS `ts10_evaluation_cri_11`,
 1 AS `ts10_evaluation_cri_12`,
 1 AS `ts10_evaluation_cri_13`,
 1 AS `ts10_evaluation_cri_14`,
 1 AS `ts10_evaluation_cri_15`,
 1 AS `ts10_evaluation_cri_16`,
 1 AS `ts10_evaluation_cri_17`,
 1 AS `ts10_evaluation_cri_18`,
 1 AS `ts10_evaluation_cri_19`,
 1 AS `ts10_evaluation_cri_20`,
 1 AS `ts10_evaluation_cri_21`,
 1 AS `ts10_evaluation_cri_22`,
 1 AS `ts10_evaluation_cri_23`,
 1 AS `ts10_evaluation_cri_24`,
 1 AS `ts10_evaluation_cri_25`,
 1 AS `ts10_evaluation_cri_26`,
 1 AS `ts10_evaluation_cri_27`,
 1 AS `ts10_evaluation_cri_28`,
 1 AS `ts10_evaluation_cri_29`,
 1 AS `ts10_evaluation_cri_30`,
 1 AS `gr11tsyear`,
 1 AS `ts11_pro_id`,
 1 AS `ts11_daily_attendance`,
 1 AS `ts11_poya_attendance`,
 1 AS `ts11_recomendation`,
 1 AS `ts11_evaluation_cri_1`,
 1 AS `ts11_evaluation_cri_2`,
 1 AS `ts11_evaluation_cri_3`,
 1 AS `ts11_evaluation_cri_4`,
 1 AS `ts11_evaluation_cri_5`,
 1 AS `ts11_evaluation_cri_6`,
 1 AS `ts11_evaluation_cri_7`,
 1 AS `ts11_evaluation_cri_8`,
 1 AS `ts11_evaluation_cri_9`,
 1 AS `ts11_evaluation_cri_10`,
 1 AS `ts11_evaluation_cri_11`,
 1 AS `ts11_evaluation_cri_12`,
 1 AS `ts11_evaluation_cri_13`,
 1 AS `ts11_evaluation_cri_14`,
 1 AS `ts11_evaluation_cri_15`,
 1 AS `ts11_evaluation_cri_16`,
 1 AS `ts11_evaluation_cri_17`,
 1 AS `ts11_evaluation_cri_18`,
 1 AS `ts11_evaluation_cri_19`,
 1 AS `ts11_evaluation_cri_20`,
 1 AS `nptsyear`,
 1 AS `np_pro1_id`,
 1 AS `np_pro2_id`,
 1 AS `np_pro3_id`,
 1 AS `np_pro4_id`,
 1 AS `np_daily_attendance`,
 1 AS `np_poya_attendance`,
 1 AS `np_recomendation`,
 1 AS `np_evaluation_cri_1`,
 1 AS `np_evaluation_cri_2`,
 1 AS `np_evaluation_cri_3`,
 1 AS `np_evaluation_cri_4`,
 1 AS `np_evaluation_cri_5`,
 1 AS `np_evaluation_cri_6`,
 1 AS `np_evaluation_cri_7`,
 1 AS `np_evaluation_cri_8`,
 1 AS `np_evaluation_cri_9`,
 1 AS `np_evaluation_cri_10`,
 1 AS `np_evaluation_cri_11`,
 1 AS `np_evaluation_cri_12`,
 1 AS `np_evaluation_cri_13`,
 1 AS `np_evaluation_cri_14`,
 1 AS `np_evaluation_cri_15`,
 1 AS `np_evaluation_cri_16`,
 1 AS `np_evaluation_cri_17`,
 1 AS `np_evaluation_cri_18`,
 1 AS `np_evaluation_cri_19`,
 1 AS `np_evaluation_cri_20`,
 1 AS `np_evaluation_cri_21`,
 1 AS `np_evaluation_cri_22`,
 1 AS `np_evaluation_cri_23`,
 1 AS `np_evaluation_cri_24`,
 1 AS `np_evaluation_cri_25`,
 1 AS `np_evaluation_cri_26`,
 1 AS `np_evaluation_cri_27`,
 1 AS `np_evaluation_cri_28`,
 1 AS `np_evaluation_cri_29`,
 1 AS `np_evaluation_cri_30`,
 1 AS `np_evaluation_cri_31`,
 1 AS `np_evaluation_cri_32`,
 1 AS `np_evaluation_cri_33`,
 1 AS `np_evaluation_cri_34`,
 1 AS `np_evaluation_cri_35`,
 1 AS `np_evaluation_cri_36`,
 1 AS `np_evaluation_cri_37`,
 1 AS `np_evaluation_cri_38`,
 1 AS `np_evaluation_cri_39`,
 1 AS `np_evaluation_cri_40`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `student_reccomendation_view`
--

DROP TABLE IF EXISTS `student_reccomendation_view`;
/*!50001 DROP VIEW IF EXISTS `student_reccomendation_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `student_reccomendation_view` AS SELECT 
 1 AS `stu_admission_number`,
 1 AS `rec_year`,
 1 AS `rec_type_id`,
 1 AS `rec_type_name`,
 1 AS `rec_topic`,
 1 AS `rec_discription`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `student_school`
--

DROP TABLE IF EXISTS `student_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_school` (
  `stu_id` int(11) NOT NULL,
  `sch_id` int(11) NOT NULL,
  `attend_year` int(11) DEFAULT NULL,
  `leave_year` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_id`,`sch_id`),
  KEY `stu-schl_details_idx` (`sch_id`),
  CONSTRAINT `stu-schl_details` FOREIGN KEY (`sch_id`) REFERENCES `school` (`sch_id`),
  CONSTRAINT `student_detail` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_school`
--

LOCK TABLES `student_school` WRITE;
/*!40000 ALTER TABLE `student_school` DISABLE KEYS */;
INSERT INTO `student_school` VALUES (1,1,2000,2005,1,'2016-03-26 00:20:10',1,NULL,NULL),(1,2,2005,2011,1,'2016-03-26 00:20:10',1,NULL,NULL),(1,3,2015,NULL,1,'2016-04-14 02:57:35',1,NULL,NULL),(2,1,2016,NULL,1,'2016-04-14 12:56:45',38,NULL,NULL),(2,3,2001,2010,1,'2016-03-26 00:20:10',1,NULL,NULL),(3,1,0,NULL,1,'2016-04-14 13:14:44',38,NULL,NULL),(4,1,2016,NULL,1,'2016-04-14 13:26:17',38,NULL,NULL),(4,2,0,NULL,1,'2016-04-14 13:17:24',38,NULL,NULL),(4,3,0,NULL,1,'2016-04-14 13:15:56',38,NULL,NULL),(5,3,2016,NULL,1,'2016-04-14 14:21:22',38,NULL,NULL),(6,1,0,NULL,1,'2016-04-14 15:20:03',38,NULL,NULL),(6,2,0,NULL,1,'2016-04-15 01:02:46',38,NULL,NULL),(7,1,0,NULL,1,'2016-04-15 01:07:00',38,NULL,NULL),(7,2,0,NULL,1,'2016-04-15 01:03:53',38,NULL,NULL),(73,1,0,NULL,1,'2016-04-15 01:09:58',38,NULL,NULL),(74,1,0,NULL,1,'2016-04-15 01:18:28',38,NULL,NULL),(76,1,0,NULL,1,'2016-04-15 01:20:59',38,NULL,NULL),(77,1,0,NULL,1,'2016-04-15 01:22:44',38,NULL,NULL),(78,3,2016,NULL,1,'2016-04-15 01:24:38',38,NULL,NULL),(79,3,2016,NULL,1,'2016-04-15 01:25:57',38,NULL,NULL),(80,1,0,NULL,1,'2016-04-15 01:32:23',38,NULL,NULL),(81,1,0,NULL,1,'2016-04-15 01:35:27',38,NULL,NULL),(82,1,0,NULL,1,'2016-04-15 01:39:32',38,NULL,NULL),(83,1,0,NULL,1,'2016-04-15 01:41:40',38,NULL,NULL),(84,1,0,NULL,1,'2016-04-15 02:16:20',38,NULL,NULL),(85,2,0,NULL,1,'2016-04-15 07:43:30',1,NULL,NULL),(86,2,0,NULL,1,'2016-04-16 15:09:41',1,NULL,NULL),(87,1,2016,NULL,1,'2016-04-27 10:47:21',1,NULL,NULL),(88,2,0,NULL,1,'2016-06-07 08:11:28',1,NULL,NULL),(89,2,0,NULL,1,'2016-06-07 08:21:02',1,NULL,NULL);
/*!40000 ALTER TABLE `student_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talants`
--

DROP TABLE IF EXISTS `talants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `talants` (
  `tal_id` int(11) NOT NULL AUTO_INCREMENT,
  `tal_name` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`tal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talants`
--

LOCK TABLES `talants` WRITE;
/*!40000 ALTER TABLE `talants` DISABLE KEYS */;
INSERT INTO `talants` VALUES (1,'tal1',1,'2016-03-26 00:20:10',1,NULL,NULL),(2,'tal2',1,'2016-03-26 00:20:10',1,NULL,NULL),(3,'tal3',1,'2016-03-26 00:20:10',1,NULL,NULL),(4,'talent1',1,'2016-04-03 06:28:43',27,NULL,NULL);
/*!40000 ALTER TABLE `talants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `tea_id` int(11) NOT NULL AUTO_INCREMENT,
  `tea_full_name` varchar(45) DEFAULT NULL,
  `tea_name_with_initials` varchar(45) DEFAULT NULL,
  `tea_land_phone_number` varchar(45) DEFAULT NULL,
  `tea_mobile_phone_number` varchar(45) DEFAULT NULL,
  `tea_address` varchar(45) DEFAULT NULL,
  `tea_birth_day` date DEFAULT NULL,
  `tea_city` varchar(45) DEFAULT NULL,
  `tec_nic` varchar(45) DEFAULT NULL,
  `lib_mem_id` int(11) DEFAULT NULL,
  `tea_distance_to_home` int(11) DEFAULT NULL,
  `tea_occupation` varchar(45) DEFAULT NULL,
  `tea_occupation_type` int(11) DEFAULT NULL,
  `tea_office_address` varchar(45) DEFAULT NULL,
  `tea_office_phone` varchar(45) DEFAULT NULL,
  `tea_gender` varchar(45) DEFAULT NULL,
  `tea_email` varchar(45) DEFAULT NULL,
  `tea_student_id` int(11) DEFAULT NULL,
  `tea_ob_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`tea_id`),
  KEY `lib_mem_id2_idx` (`lib_mem_id`),
  KEY `occ_type_idx` (`tea_occupation_type`),
  KEY `tea_stu_id_idx` (`tea_student_id`),
  CONSTRAINT `lib_mem_id2` FOREIGN KEY (`lib_mem_id`) REFERENCES `member` (`mem_id`),
  CONSTRAINT `occ_type` FOREIGN KEY (`tea_occupation_type`) REFERENCES `occupation_type` (`occ_type_id`),
  CONSTRAINT `tea_stu_id` FOREIGN KEY (`tea_student_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'tea1','aaa','123456789','123456789','123aaaa',NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(2,'tea2','aaa','123456789','123456789','123aaaa',NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(3,'tea3','aaa','123456789','123456789','123aaaa',NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(4,'tea4','aaa','123456789','123456789','123aaaa',NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(5,'tea5','aaa','123456789','123456789','123aaaa',NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_class`
--

DROP TABLE IF EXISTS `teacher_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_class` (
  `year` int(11) NOT NULL,
  `tec_id` int(11) NOT NULL,
  `clz_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`year`,`tec_id`),
  KEY `clz_id_idx` (`clz_id`),
  KEY `tea_id_idx` (`tec_id`),
  CONSTRAINT `clz_id` FOREIGN KEY (`clz_id`) REFERENCES `class` (`clz_id`),
  CONSTRAINT `tea_id` FOREIGN KEY (`tec_id`) REFERENCES `teacher` (`tea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_class`
--

LOCK TABLES `teacher_class` WRITE;
/*!40000 ALTER TABLE `teacher_class` DISABLE KEYS */;
INSERT INTO `teacher_class` VALUES (2000,1,1,1,'2016-03-26 00:20:10',1,NULL,NULL),(2000,2,2,1,'2016-03-26 00:20:10',1,NULL,NULL),(2000,3,3,1,'2016-03-26 00:20:10',1,NULL,NULL),(2000,4,4,1,'2016-03-26 00:20:10',1,NULL,NULL),(2000,5,5,1,'2016-03-26 00:20:10',1,NULL,NULL),(2001,1,1,1,'2016-03-26 00:20:10',1,NULL,NULL),(2001,2,3,1,'2016-03-26 00:20:10',1,NULL,NULL),(2001,3,2,1,'2016-03-26 00:20:10',1,NULL,NULL),(2002,1,3,1,'2016-03-26 00:20:10',1,NULL,NULL),(2002,2,2,1,'2016-03-26 00:20:10',1,NULL,NULL),(2004,2,7,1,'2016-03-26 00:20:10',1,NULL,NULL);
/*!40000 ALTER TABLE `teacher_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_qualification`
--

DROP TABLE IF EXISTS `teacher_qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_qualification` (
  `tea_id` int(11) NOT NULL,
  `qul_id` int(11) NOT NULL,
  `tea_qul_discription` varchar(45) NOT NULL,
  `qul_institute` varchar(45) DEFAULT NULL,
  `qul_year` varchar(45) DEFAULT NULL,
  `qul_result` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`tea_id`,`qul_id`,`tea_qul_discription`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_qualification`
--

LOCK TABLES `teacher_qualification` WRITE;
/*!40000 ALTER TABLE `teacher_qualification` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!50001 DROP VIEW IF EXISTS `temp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `temp` AS SELECT 
 1 AS `exm_id`,
 1 AS `exm_name`,
 1 AS `exm_discription`,
 1 AS `status`,
 1 AS `recode_added_at`,
 1 AS `recode_added_by`,
 1 AS `recode_modified_at`,
 1 AS `recode_modified_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_category`
--

DROP TABLE IF EXISTS `user_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_category` (
  `ucat_id` int(11) NOT NULL AUTO_INCREMENT,
  `ucat_name` varchar(45) DEFAULT NULL,
  `ucat_description` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`ucat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_category`
--

LOCK TABLES `user_category` WRITE;
/*!40000 ALTER TABLE `user_category` DISABLE KEYS */;
INSERT INTO `user_category` VALUES (1,'Super User','Super User',1,'2016-03-26 00:20:10',1,NULL,NULL),(2,'Admin','Reaserch and Development In-charge',1,'2016-04-01 05:40:36',15,NULL,NULL),(3,'Accountant','Accountant',1,'2016-04-01 05:41:53',15,NULL,NULL),(4,'Exam in-charge','Exam in-charge',1,'2016-04-01 05:41:53',1,NULL,NULL),(5,'Librarian','Librarian',1,'2016-04-01 05:41:53',1,NULL,NULL),(6,'Prefect In-charge','Prefect In-charge',1,'2016-04-01 05:41:53',1,NULL,NULL),(7,'Thurunusaviya In-charge','Thurunusaviya In-charge',1,'2016-04-01 05:41:53',1,NULL,NULL),(8,'Vidusarana In-charge','Vidusarana In-charge',1,'2016-04-01 05:41:53',1,NULL,NULL),(9,'Parent','Parent',1,'2016-04-01 05:41:53',1,NULL,NULL),(10,'Teacher','Teacher',1,'2016-04-01 05:41:53',1,NULL,NULL),(11,'Student','Student',1,'2016-04-01 05:41:53',1,NULL,NULL),(12,'R&D Officer','Reaserch and Development officer',1,'2016-04-01 05:41:53',1,NULL,NULL);
/*!40000 ALTER TABLE `user_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vidusarana`
--

DROP TABLE IF EXISTS `vidusarana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vidusarana` (
  `vid_id` int(11) NOT NULL AUTO_INCREMENT,
  `vid_date` date DEFAULT NULL,
  `discription` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`vid_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vidusarana`
--

LOCK TABLES `vidusarana` WRITE;
/*!40000 ALTER TABLE `vidusarana` DISABLE KEYS */;
/*!40000 ALTER TABLE `vidusarana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'svdmis'
--

--
-- Dumping routines for database 'svdmis'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_student_classes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_student_classes`(
stuadmissionNumber varchar(45),
yearofclass int,
clz_idofstu int,
recodeaddedby int
)
BEGIN
declare studentid int;
if exists  (SELECT stu_id FROM student where stu_admission_number = stuadmissionNumber) then
	set studentid = (SELECT stu_id FROM student where stu_admission_number = stuadmissionNumber);
    if exists (SELECT * FROM student_class where year = yearofclass and stu_id= studentid and clz_id= clz_idofstu) then 
		select 'Alredy exsists other recode';
	else
		INSERT INTO student_class(year, stu_id, clz_id, recode_added_by) values(yearofclass, studentid, clz_idofstu, recodeaddedby);
		select 'successfully updated';
	end if;
else
	select 'Student Admission number id invalid';
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_classReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_classReport`(
stuaddmisionnumber varchar(45),
reportyear int,


evlu_cri1 int,
evlu_cri2 int,
evlu_cri3 int,
evlu_cri4 int,
evlu_cri5 int,
evlu_cri6 int,
evlu_cri7 int,
evlu_cri8 int,
evlu_cri9 int,
evlu_cri10 int,
evlu_cri11 int,
evlu_cri12 int,
evlu_cri13 int,
evlu_cri14 int,
evlu_cri15 int,
evlu_cri16 int,
evlu_cri17 int,
evlu_cri18 int,
evlu_cri19 int,
evlu_cri20 int,
evlu_cri21 int,
evlu_cri22 int,
evlu_cri23 int,
evlu_cri24 int,
evlu_cri25 int,
evlu_cri26 int,
evlu_cri27 int,
evlu_cri28 int,
evlu_cri29 int,
evlu_cri30 int,
evlu_cri31 int,
evlu_cri32 int,
evlu_cri33 int,
evlu_cri34 int,
evlu_cri35 int,
evlu_cri36 int,
evlu_cri37 int,
evlu_cri38 int,
evlu_cri39 int,
evlu_cri40 int,


evlu_cri41 varchar(45),
evlu_cri42 varchar(45),
evlu_cri43 varchar(45),
evlu_cri44 varchar(45),
evlu_cri45 varchar(45),
evlu_cri46 varchar(45),
evlu_cri47 varchar(45),
evlu_cri48 varchar(45),
evlu_cri49 varchar(45),
evlu_cri50 varchar(45),
evlu_cri51 varchar(45),
evlu_cri52 varchar(45),
evlu_cri53 varchar(45),
evlu_cri54 varchar(45),
evlu_cri55 varchar(45),
evlu_cri56 varchar(45),
evlu_cri57 varchar(45),
evlu_cri58 varchar(45),
evlu_cri59 varchar(45),
evlu_cri60 varchar(45),
evlu_cri61 varchar(45),
evlu_cri62 varchar(45),
evlu_cri63 varchar(45),
evlu_cri64 varchar(45),
evlu_cri65 varchar(45),
evlu_cri66 varchar(45),
evlu_cri67 varchar(45),
evlu_cri68 varchar(45),
evlu_cri69 varchar(45),
evlu_cri70 varchar(45),
evlu_cri71 varchar(45),
evlu_cri72 varchar(45),
evlu_cri73 varchar(45),
evlu_cri74 varchar(45),
evlu_cri75 varchar(45),
evlu_cri76 varchar(45),
evlu_cri77 varchar(45),
evlu_cri78 varchar(45),
evlu_cri79 varchar(45),
evlu_cri80 varchar(45),


evlu_cri1_copy1 int,
evlu_cri2_copy1 int,
evlu_cri3_copy1 int,
evlu_cri4_copy1 int,
evlu_cri5_copy1 int,
evlu_cri6_copy1 int,
evlu_cri7_copy1 int,
evlu_cri8_copy1 int,
evlu_cri9_copy1 int,
evlu_cri10_copy1 int,
evlu_cri11_copy1 int,
evlu_cri12_copy1 int,
evlu_cri13_copy1 int,
evlu_cri14_copy1 int,
evlu_cri15_copy1 int,
evlu_cri16_copy1 int,
evlu_cri17_copy1 int,
evlu_cri18_copy1 int,
evlu_cri19_copy1 int,
evlu_cri20_copy1 int,

evlu_cri41_copy1 varchar(45),
evlu_cri42_copy1 varchar(45),
evlu_cri43_copy1 varchar(45),
evlu_cri44_copy1 varchar(45),
evlu_cri45_copy1 varchar(45),
evlu_cri46_copy1 varchar(45),
evlu_cri47_copy1 varchar(45),
evlu_cri48_copy1 varchar(45),
evlu_cri49_copy1 varchar(45),
evlu_cri50_copy1 varchar(45),
evlu_cri51_copy1 varchar(45),
evlu_cri52_copy1 varchar(45),
evlu_cri53_copy1 varchar(45),
evlu_cri54_copy1 varchar(45),
evlu_cri55_copy1 varchar(45),
evlu_cri56_copy1 varchar(45),
evlu_cri57_copy1 varchar(45),
evlu_cri58_copy1 varchar(45),
evlu_cri59_copy1 varchar(45),
evlu_cri60_copy1 varchar(45),

op_userid int

)
BEGIN
declare studentid int;
declare reportid int;
declare resultset varchar(45);

if exists (select stu_id from student where stu_admission_number = stuaddmisionnumber and  (status = 1 or status = 2)) then
	set studentid= (select stu_id from student where stu_admission_number = stuaddmisionnumber and  (status = 1 or status = 2));
	
    if exists (select * from student_class where stu_id = studentid and year=reportyear and (status = 1 or status = 2)) then
		insert into class_report(clz_evaluation_cri_1,clz_evaluation_cri_2,clz_evaluation_cri_3,clz_evaluation_cri_4,clz_evaluation_cri_5,clz_evaluation_cri_6,clz_evaluation_cri_7,clz_evaluation_cri_8,clz_evaluation_cri_9,clz_evaluation_cri_10,clz_evaluation_cri_11,clz_evaluation_cri_12,clz_evaluation_cri_13,clz_evaluation_cri_14,clz_evaluation_cri_15,clz_evaluation_cri_16,clz_evaluation_cri_17,clz_evaluation_cri_18,clz_evaluation_cri_19,clz_evaluation_cri_20,clz_evaluation_cri_21,clz_evaluation_cri_22,clz_evaluation_cri_23,clz_evaluation_cri_24,clz_evaluation_cri_25,clz_evaluation_cri_26,clz_evaluation_cri_27,clz_evaluation_cri_28,clz_evaluation_cri_29,clz_evaluation_cri_30,clz_evaluation_cri_31,clz_evaluation_cri_32,clz_evaluation_cri_33,clz_evaluation_cri_34,clz_evaluation_cri_35,clz_evaluation_cri_36,clz_evaluation_cri_37,clz_evaluation_cri_38,clz_evaluation_cri_39,clz_evaluation_cri_40,clz_evaluation_cri_41,clz_evaluation_cri_42,clz_evaluation_cri_43,clz_evaluation_cri_44,clz_evaluation_cri_45,clz_evaluation_cri_46,clz_evaluation_cri_47,clz_evaluation_cri_48,clz_evaluation_cri_49,clz_evaluation_cri_50,clz_evaluation_cri_51,clz_evaluation_cri_52,clz_evaluation_cri_53,clz_evaluation_cri_54,clz_evaluation_cri_55,clz_evaluation_cri_56,clz_evaluation_cri_57,clz_evaluation_cri_58,clz_evaluation_cri_59,clz_evaluation_cri_60,clz_evaluation_cri_61,clz_evaluation_cri_62,clz_evaluation_cri_63,clz_evaluation_cri_64,clz_evaluation_cri_65,clz_evaluation_cri_66,clz_evaluation_cri_67,clz_evaluation_cri_68,clz_evaluation_cri_69,clz_evaluation_cri_70,clz_evaluation_cri_71,clz_evaluation_cri_72,clz_evaluation_cri_73,clz_evaluation_cri_74,clz_evaluation_cri_75,clz_evaluation_cri_76,clz_evaluation_cri_77,clz_evaluation_cri_78,clz_evaluation_cri_79,clz_evaluation_cri_80, clz_evaluation_cri_1_copy1, clz_evaluation_cri_2_copy1, clz_evaluation_cri_3_copy1, clz_evaluation_cri_4_copy1, clz_evaluation_cri_5_copy1, clz_evaluation_cri_6_copy1, clz_evaluation_cri_7_copy1, clz_evaluation_cri_8_copy1, clz_evaluation_cri_9_copy1, clz_evaluation_cri_10_copy1, clz_evaluation_cri_11_copy1, clz_evaluation_cri_12_copy1, clz_evaluation_cri_13_copy1, clz_evaluation_cri_14_copy1, clz_evaluation_cri_15_copy1, clz_evaluation_cri_16_copy1, clz_evaluation_cri_17_copy1, clz_evaluation_cri_18_copy1, clz_evaluation_cri_19_copy1, clz_evaluation_cri_20_copy1, clz_evaluation_cri_41_copy1, clz_evaluation_cri_42_copy1, clz_evaluation_cri_43_copy1, clz_evaluation_cri_44_copy1, clz_evaluation_cri_45_copy1, clz_evaluation_cri_46_copy1, clz_evaluation_cri_47_copy1, clz_evaluation_cri_48_copy1, clz_evaluation_cri_49_copy1, clz_evaluation_cri_50_copy1, clz_evaluation_cri_51_copy1, clz_evaluation_cri_52_copy1, clz_evaluation_cri_53_copy1, clz_evaluation_cri_54_copy1, clz_evaluation_cri_55_copy1, clz_evaluation_cri_56_copy1, clz_evaluation_cri_57_copy1, clz_evaluation_cri_58_copy1, clz_evaluation_cri_59_copy1, clz_evaluation_cri_60_copy1,  recode_added_by) 
        values(evlu_cri1,evlu_cri2,evlu_cri3,evlu_cri4,evlu_cri5,evlu_cri6,evlu_cri7,evlu_cri8,evlu_cri9,evlu_cri10,evlu_cri11,evlu_cri12,evlu_cri13,evlu_cri14,evlu_cri15,evlu_cri16,evlu_cri17,evlu_cri18,evlu_cri19,evlu_cri20,evlu_cri21,evlu_cri22,evlu_cri23,evlu_cri24,evlu_cri25,evlu_cri26,evlu_cri27,evlu_cri28,evlu_cri29,evlu_cri30,evlu_cri31,evlu_cri32,evlu_cri33,evlu_cri34,evlu_cri35,evlu_cri36,evlu_cri37,evlu_cri38,evlu_cri39,evlu_cri40,evlu_cri41,evlu_cri42,evlu_cri43,evlu_cri44,evlu_cri45,evlu_cri46,evlu_cri47,evlu_cri48,evlu_cri49,evlu_cri50,evlu_cri51,evlu_cri52,evlu_cri53,evlu_cri54,evlu_cri55,evlu_cri56,evlu_cri57,evlu_cri58,evlu_cri59,evlu_cri60,evlu_cri61,evlu_cri62,evlu_cri63,evlu_cri64,evlu_cri65,evlu_cri66,evlu_cri67,evlu_cri68,evlu_cri69,evlu_cri70,evlu_cri71,evlu_cri72,evlu_cri73,evlu_cri74,evlu_cri75,evlu_cri76,evlu_cri77,evlu_cri78,evlu_cri79,evlu_cri80,evlu_cri1_copy1, evlu_cri2_copy1, evlu_cri3_copy1, evlu_cri4_copy1, evlu_cri5_copy1, evlu_cri6_copy1, evlu_cri7_copy1, evlu_cri8_copy1, evlu_cri9_copy1, evlu_cri10_copy1, evlu_cri11_copy1, evlu_cri12_copy1, evlu_cri13_copy1, evlu_cri14_copy1, evlu_cri15_copy1, evlu_cri16_copy1, evlu_cri17_copy1, evlu_cri18_copy1, evlu_cri19_copy1, evlu_cri20_copy1, evlu_cri41_copy1, evlu_cri42_copy1, evlu_cri43_copy1, evlu_cri44_copy1, evlu_cri45_copy1, evlu_cri46_copy1, evlu_cri47_copy1, evlu_cri48_copy1, evlu_cri49_copy1, evlu_cri50_copy1, evlu_cri51_copy1, evlu_cri52_copy1, evlu_cri53_copy1, evlu_cri54_copy1, evlu_cri55_copy1, evlu_cri56_copy1, evlu_cri57_copy1, evlu_cri58_copy1, evlu_cri59_copy1, evlu_cri60_copy1, op_userid);
		set reportid = (SELECT LAST_INSERT_ID());

		update student_class set clz_report_id = reportid, status=2, recode_modified_at=now(), recode_modified_by =op_userid  where stu_id = studentid and year=reportyear and (status = 1 or status = 2);
        
        set resultset = 'student behavior report added successfully';
        select resultset;
        
	else
		set resultset = 'student not exsist on that year';
        select resultset;
	end if;

else 
	set resultset ='student not exsist';
    select resultset;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_siblings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_siblings`(IN `newsetudentid` INT, IN `oldstudentid` INT, IN `opuserid` INT)
BEGIN

DECLARE done INT DEFAULT 0;
DECLARE oldstu_id INT;

DECLARE cur1 CURSOR FOR select slib_id from siblings where stu_id = oldstudentid;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

OPEN cur1;

set done=0;

INSERT INTO siblings(stu_id, slib_id, recode_added_by) values(newsetudentid, oldstudentid, opuserid);
INSERT INTO siblings(stu_id, slib_id, recode_added_by) values(oldstudentid, newsetudentid, opuserid);

REPEAT
 FETCH cur1 INTO oldstu_id;
	 IF NOT done THEN
		INSERT INTO siblings(stu_id, slib_id, recode_added_by) values(newsetudentid, oldstu_id, opuserid);
		INSERT INTO siblings(stu_id, slib_id, recode_added_by) values(oldstu_id, newsetudentid, opuserid);
	 END IF;
UNTIL done END REPEAT;

CLOSE cur1;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_tsgr10_report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_tsgr10_report`(
studentaddmisionnum varchar(45),
recordyear int,
rects10_group varchar(45),
rects10_daily_attendance int,
rects10_poya_attendance int,
rects10_recomendation varchar(1500),
rects10_evaluation_cri_1 int,
rects10_evaluation_cri_2 int,
rects10_evaluation_cri_3 int,
rects10_evaluation_cri_4 int,
rects10_evaluation_cri_5 int,
rects10_evaluation_cri_6 int,
rects10_evaluation_cri_7 int,
rects10_evaluation_cri_8 int,
rects10_evaluation_cri_9 int,
rects10_evaluation_cri_10 int,
rects10_evaluation_cri_11 int,
rects10_evaluation_cri_12 int,
rects10_evaluation_cri_13 int,
rects10_evaluation_cri_14 int,
rects10_evaluation_cri_15 int,
rects10_evaluation_cri_16 int,
rects10_evaluation_cri_17 int,
rects10_evaluation_cri_18 int,
rects10_evaluation_cri_19 int,
rects10_evaluation_cri_20 int,
rects10_evaluation_cri_21 int,
rects10_evaluation_cri_22 int,
rects10_evaluation_cri_23 int,
rects10_evaluation_cri_24 int,
rects10_evaluation_cri_25 int,
rects10_evaluation_cri_26 int,
rects10_evaluation_cri_27 int,
rects10_evaluation_cri_28 int,
rects10_evaluation_cri_29 int,
rects10_evaluation_cri_30 int,

operationaluser int
)
BEGIN
declare studentid int;
declare reportid int;
declare resutset varchar(45);

if exists (select stu_id from student where stu_admission_number = studentaddmisionnum and  (status = 1 or status = 2)) then
	set studentid= (select stu_id from student where stu_admission_number = studentaddmisionnum and  (status = 1 or status = 2));
    
    
	INSERT INTO gread_10_thurunu_saviya(year, ts10_group, ts10_daily_attendance, ts10_poya_attendance, ts10_recomendation, ts10_evaluation_cri_1, ts10_evaluation_cri_2, ts10_evaluation_cri_3, ts10_evaluation_cri_4, ts10_evaluation_cri_5, ts10_evaluation_cri_6, ts10_evaluation_cri_7, ts10_evaluation_cri_8, ts10_evaluation_cri_9, ts10_evaluation_cri_10, ts10_evaluation_cri_11, ts10_evaluation_cri_12, ts10_evaluation_cri_13, ts10_evaluation_cri_14, ts10_evaluation_cri_15, ts10_evaluation_cri_16, ts10_evaluation_cri_17, ts10_evaluation_cri_18, ts10_evaluation_cri_19, ts10_evaluation_cri_20,ts10_evaluation_cri_21, ts10_evaluation_cri_22, ts10_evaluation_cri_23, ts10_evaluation_cri_24, ts10_evaluation_cri_25, ts10_evaluation_cri_26, ts10_evaluation_cri_27, ts10_evaluation_cri_28, ts10_evaluation_cri_29, ts10_evaluation_cri_30,   recode_added_by) 
    values(recordyear, rects10_group, rects10_daily_attendance, rects10_poya_attendance, rects10_recomendation, rects10_evaluation_cri_1, rects10_evaluation_cri_2, rects10_evaluation_cri_3, rects10_evaluation_cri_4, rects10_evaluation_cri_5, rects10_evaluation_cri_6, rects10_evaluation_cri_7, rects10_evaluation_cri_8, rects10_evaluation_cri_9, rects10_evaluation_cri_10, rects10_evaluation_cri_11, rects10_evaluation_cri_12, rects10_evaluation_cri_13, rects10_evaluation_cri_14, rects10_evaluation_cri_15, rects10_evaluation_cri_16, rects10_evaluation_cri_17, rects10_evaluation_cri_18, rects10_evaluation_cri_19, rects10_evaluation_cri_20, rects10_evaluation_cri_21, rects10_evaluation_cri_22, rects10_evaluation_cri_23, rects10_evaluation_cri_24, rects10_evaluation_cri_25, rects10_evaluation_cri_26, rects10_evaluation_cri_27, rects10_evaluation_cri_28, rects10_evaluation_cri_29, rects10_evaluation_cri_30,  operationaluser);
    set reportid = (SELECT LAST_INSERT_ID());
    update student set ts_grade10_id = reportid, status=2, recode_modified_at=now(), recode_modified_by =operationaluser  where stu_id = studentid  and (status = 1 or status = 2);
    
    set resutset = "recode is successfully";
    select resutset;

else
	set resutset = "student addmision number is wrong";
    select resutset;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_tsgr11_report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_tsgr11_report`(
studentaddmisionnum varchar(45),
recordyear int,
rects11_group varchar(45),
rects11_daily_attendance int,
rects11_poya_attendance int,
rects11_recomendation varchar(5000),
rects11_evaluation_cri_1 int,
rects11_evaluation_cri_2 int,
rects11_evaluation_cri_3 int,
rects11_evaluation_cri_4 int,
rects11_evaluation_cri_5 int,
rects11_evaluation_cri_6 int,
rects11_evaluation_cri_7 int,
rects11_evaluation_cri_8 int,
rects11_evaluation_cri_9 int,
rects11_evaluation_cri_10 int,
rects11_evaluation_cri_11 int,
rects11_evaluation_cri_12 int,
rects11_evaluation_cri_13 int,
rects11_evaluation_cri_14 int,
rects11_evaluation_cri_15 int,
rects11_evaluation_cri_16 int,
rects11_evaluation_cri_17 int,
rects11_evaluation_cri_18 int,
rects11_evaluation_cri_19 int,
rects11_evaluation_cri_20 int,

operationaluser int
)
BEGIN
declare studentid int;
declare projectid int;
declare reportid int;
declare resutset varchar(45);

if exists (select stu_id from student where stu_admission_number = studentaddmisionnum and  (status = 1 or status = 2)) then
	set studentid= (select stu_id from student where stu_admission_number = studentaddmisionnum and  (status = 1 or status = 2));
    
    if exists(select pro_id from project where  pro_year = recordyear and pro_group_num = rects11_group) then
		set projectid = (select pro_id from project where  pro_year = recordyear and pro_group_num = rects11_group);
		INSERT INTO gread_11_thurunu_saviya(year, ts11_pro_id, ts11_daily_attendance, ts11_poya_attendance, ts11_recomendation, ts11_evaluation_cri_1, ts11_evaluation_cri_2, ts11_evaluation_cri_3, ts11_evaluation_cri_4, ts11_evaluation_cri_5, ts11_evaluation_cri_6, ts11_evaluation_cri_7, ts11_evaluation_cri_8, ts11_evaluation_cri_9, ts11_evaluation_cri_10, ts11_evaluation_cri_11, ts11_evaluation_cri_12, ts11_evaluation_cri_13, ts11_evaluation_cri_14, ts11_evaluation_cri_15, ts11_evaluation_cri_16, ts11_evaluation_cri_17, ts11_evaluation_cri_18, ts11_evaluation_cri_19, ts11_evaluation_cri_20,  recode_added_by) 
		values(recordyear, projectid, rects11_daily_attendance, rects11_poya_attendance, rects11_recomendation, rects11_evaluation_cri_1, rects11_evaluation_cri_2, rects11_evaluation_cri_3, rects11_evaluation_cri_4, rects11_evaluation_cri_5, rects11_evaluation_cri_6, rects11_evaluation_cri_7, rects11_evaluation_cri_8, rects11_evaluation_cri_9, rects11_evaluation_cri_10, rects11_evaluation_cri_11, rects11_evaluation_cri_12, rects11_evaluation_cri_13, rects11_evaluation_cri_14, rects11_evaluation_cri_15, rects11_evaluation_cri_16, rects11_evaluation_cri_17, rects11_evaluation_cri_18, rects11_evaluation_cri_19, rects11_evaluation_cri_20,  operationaluser);
		set reportid = (SELECT LAST_INSERT_ID());
		update student set ts_grade11_id = reportid, status=2, recode_modified_at=now(), recode_modified_by =operationaluser  where stu_id = studentid  and (status = 1 or status = 2);
		
		set resutset = "recode is successfully";
		select resutset;
	else
		set resutset = "Pleace add project first";
		select resutset;
	end if;
else
	set resutset = "student addmision number is wrong";
    select resutset;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_tsgr9_report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_tsgr9_report`(
studentaddmisionnum varchar(45),
recordyear int,
rects9_group varchar(45),
rects9_daily_attendance int,
rects9_poya_attendance int,
rects9_recomendation varchar(1500),
rects9_evaluation_cri_1 int,
rects9_evaluation_cri_2 int,
rects9_evaluation_cri_3 int,
rects9_evaluation_cri_4 int,
rects9_evaluation_cri_5 int,
rects9_evaluation_cri_6 int,
rects9_evaluation_cri_7 int,
rects9_evaluation_cri_8 int,
rects9_evaluation_cri_9 int,
rects9_evaluation_cri_10 int,
rects9_evaluation_cri_11 int,
rects9_evaluation_cri_12 int,
rects9_evaluation_cri_13 int,
rects9_evaluation_cri_14 int,
rects9_evaluation_cri_15 int,
rects9_evaluation_cri_16 int,
rects9_evaluation_cri_17 int,
rects9_evaluation_cri_18 int,
rects9_evaluation_cri_19 int,
rects9_evaluation_cri_20 int,
operationaluser int
)
BEGIN
declare studentid int;
declare reportid int;
declare resutset varchar(45);

if exists (select stu_id from student where stu_admission_number = studentaddmisionnum and  (status = 1 or status = 2)) then
	set studentid= (select stu_id from student where stu_admission_number = studentaddmisionnum and  (status = 1 or status = 2));
    
    
	INSERT INTO grade_9_thurunu_saviya(year, ts9_group, ts9_daily_attendance, ts9_poya_attendance, ts9_recomendation, ts9_evaluation_cri_1, ts9_evaluation_cri_2, ts9_evaluation_cri_3, ts9_evaluation_cri_4, ts9_evaluation_cri_5, ts9_evaluation_cri_6, ts9_evaluation_cri_7, ts9_evaluation_cri_8, ts9_evaluation_cri_9, ts9_evaluation_cri_10, ts9_evaluation_cri_11, ts9_evaluation_cri_12, ts9_evaluation_cri_13, ts9_evaluation_cri_14, ts9_evaluation_cri_15, ts9_evaluation_cri_16, ts9_evaluation_cri_17, ts9_evaluation_cri_18, ts9_evaluation_cri_19, ts9_evaluation_cri_20,  recode_added_by) 
    values(recordyear, rects9_group, rects9_daily_attendance, rects9_poya_attendance, rects9_recomendation, rects9_evaluation_cri_1, rects9_evaluation_cri_2, rects9_evaluation_cri_3, rects9_evaluation_cri_4, rects9_evaluation_cri_5, rects9_evaluation_cri_6, rects9_evaluation_cri_7, rects9_evaluation_cri_8, rects9_evaluation_cri_9, rects9_evaluation_cri_10, rects9_evaluation_cri_11, rects9_evaluation_cri_12, rects9_evaluation_cri_13, rects9_evaluation_cri_14, rects9_evaluation_cri_15, rects9_evaluation_cri_16, rects9_evaluation_cri_17, rects9_evaluation_cri_18, rects9_evaluation_cri_19, rects9_evaluation_cri_20,  operationaluser);
    set reportid = (SELECT LAST_INSERT_ID());
    update student set ts_grade9_id = reportid, status=2, recode_modified_at=now(), recode_modified_by =operationaluser  where stu_id = studentid  and (status = 1 or status = 2);
    
    set resutset = "recode is successfully";
    select resutset;

else
	set resutset = "student addmision number is wrong";
    select resutset;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inser_exam_results` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inser_exam_results`(
studentaddmisionnum varchar(45),
examnumber int,
examyear int,
examresult varchar(45),
examindexnum varchar(45),
operationaluser int
)
BEGIN
declare studentid int;
declare resutset varchar(45);
if exists (select stu_id from student where stu_admission_number = studentaddmisionnum and  (status = 1 or status = 2)) then
	set studentid= (select stu_id from student where stu_admission_number = studentaddmisionnum and  (status = 1 or status = 2));
    
    if exists (SELECT result from result WHERE (status = 1 or  status = 2) and stu_id = studentid and exm_id = examnumber and year = examyear ) then 		
		set resutset = "recode is alredy exsist";
        select resutset;
    else
		INSERT INTO result(stu_id, exm_id, year, result, stu_exm_index_number, recode_added_by) 
        values(studentid, examnumber, examyear, examresult, examindexnum, operationaluser);
        set resutset = "recode is successfully";
        select resutset;

    end if;
    
else
	set resutset = "student addmision number is wrong";
    select resutset;
end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_student_byName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_student_byName`(
stufullname varchar(45)
)
BEGIN
declare n1 varchar(45);
declare n2 varchar(45);
declare n3 varchar(45);
declare n4 varchar(45);
declare n5 varchar(45);
declare n6 varchar(45);
declare n7 varchar(45);
declare n8 varchar(45);
declare n9 varchar(45);
declare n10 varchar(45);

set n1 = (select SUBSTRING_INDEX(SUBSTRING_INDEX(stufullname, ' ', 1), ' ', -1));
set n2 = (select SUBSTRING_INDEX(SUBSTRING_INDEX(stufullname, ' ', 2), ' ', -1));
set n3 = (select SUBSTRING_INDEX(SUBSTRING_INDEX(stufullname, ' ', 3), ' ', -1));
set n4 = (select SUBSTRING_INDEX(SUBSTRING_INDEX(stufullname, ' ', 4), ' ', -1));
set n5 = (select SUBSTRING_INDEX(SUBSTRING_INDEX(stufullname, ' ', 5), ' ', -1));
set n6 = (select SUBSTRING_INDEX(SUBSTRING_INDEX(stufullname, ' ', 6), ' ', -1));
set n7 = (select SUBSTRING_INDEX(SUBSTRING_INDEX(stufullname, ' ', 7), ' ', -1));
set n8 = (select SUBSTRING_INDEX(SUBSTRING_INDEX(stufullname, ' ', 8), ' ', -1));
set n9 = (select SUBSTRING_INDEX(SUBSTRING_INDEX(stufullname, ' ', 9), ' ', -1));
set n10 = (select SUBSTRING_INDEX(SUBSTRING_INDEX(stufullname, ' ', 10), ' ', -1));

SELECT 
    *
FROM
    student_name_separating_view
WHERE
		stu_full_name LIKE concat('%', stufullname, '%')
		OR stu_full_name LIKE concat('%', n1, '%')
        OR stu_full_name LIKE concat('%', n2, '%')
        OR stu_full_name LIKE concat('%', n3, '%')
        OR stu_full_name LIKE concat('%', n4, '%')
        OR stu_full_name LIKE concat('%', n5, '%')
        OR stu_full_name LIKE concat('%', n6, '%')
        OR stu_full_name LIKE concat('%', n7, '%')
        OR stu_full_name LIKE concat('%', n8, '%')
        OR stu_full_name LIKE concat('%', n9, '%')
        OR stu_full_name LIKE concat('%', n10, '%');
        

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `student_class_report_calculation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `student_class_report_calculation`(
yearofdata int,
greads varchar(45),
classes varchar(45)
)
BEGIN
select 
	avg(clz_evaluation_cri_1) as Avarage_sunday,
	max(clz_evaluation_cri_1) as Max_sunday,
    min(clz_evaluation_cri_1) as Min_sunday,
    avg(clz_evaluation_cri_2) as Avarage_poyaday,
	max(clz_evaluation_cri_2) as Max_poyaday,
    min(clz_evaluation_cri_2) as Min_poyaday,
    
    
    avg(nullif(clz_evaluation_cri_3, 0)) as guna_1,
	avg(nullif(clz_evaluation_cri_4, 0)) as guna_2,
	avg(nullif(clz_evaluation_cri_5, 0)) as guna_3,
	avg(nullif(clz_evaluation_cri_6, 0)) as guna_4,
	avg(nullif(clz_evaluation_cri_7, 0)) as guna_5,
	avg(nullif(clz_evaluation_cri_8, 0)) as guna_6,
	avg(nullif(clz_evaluation_cri_9, 0)) as guna_7,
	avg(nullif(clz_evaluation_cri_10, 0)) as guna_8,
	avg(nullif(clz_evaluation_cri_11, 0)) as guna_9,
	avg(nullif(clz_evaluation_cri_12, 0)) as guna_10,
	avg(nullif(clz_evaluation_cri_13, 0)) as guna_11,
	avg(nullif(clz_evaluation_cri_14, 0)) as guna_12,
	avg(nullif(clz_evaluation_cri_15, 0)) as guna_13,
	avg(nullif(clz_evaluation_cri_16, 0)) as guna_14,
	avg(nullif(clz_evaluation_cri_17, 0)) as guna_15,
	avg(nullif(clz_evaluation_cri_18, 0)) as guna_16,
	avg(nullif(clz_evaluation_cri_19, 0)) as guna_17,
	avg(nullif(clz_evaluation_cri_20, 0)) as guna_18,
	avg(nullif(clz_evaluation_cri_21, 0)) as guna_19,
	avg(nullif(clz_evaluation_cri_22, 0)) as guna_20,
    
    
    COALESCE(SUM(clz_evaluation_cri_23), 0) as after_school_1,
	COALESCE(SUM(clz_evaluation_cri_24), 0) as after_school_2,
	COALESCE(SUM(clz_evaluation_cri_25), 0) as after_school_3,
	COALESCE(SUM(clz_evaluation_cri_26), 0) as after_school_4,
	COALESCE(SUM(clz_evaluation_cri_27), 0) as after_school_5,
	COALESCE(SUM(clz_evaluation_cri_28), 0) as after_school_6,
	COALESCE(SUM(clz_evaluation_cri_29), 0) as after_school_7,
    
    COALESCE(SUM(clz_evaluation_cri_30), 0) as tv_programmes_1,
	COALESCE(SUM(clz_evaluation_cri_31), 0) as tv_programmes_2,
	COALESCE(SUM(clz_evaluation_cri_32), 0) as tv_programmes_3,
	COALESCE(SUM(clz_evaluation_cri_33), 0) as tv_programmes_4,
	COALESCE(SUM(clz_evaluation_cri_34), 0) as tv_programmes_5,
	COALESCE(SUM(clz_evaluation_cri_35), 0) as tv_programmes_6,
	COALESCE(SUM(clz_evaluation_cri_36), 0) as tv_programmes_7,
	COALESCE(SUM(clz_evaluation_cri_37), 0) as tv_programmes_8,
	COALESCE(SUM(clz_evaluation_cri_38), 0) as tv_programmes_9,
	COALESCE(SUM(clz_evaluation_cri_39), 0) as tv_programmes_10,
	COALESCE(SUM(clz_evaluation_cri_40), 0) as tv_programmes_11,
    
    COALESCE(SUM(clz_evaluation_cri_1_copy1), 0) as readings_1,
	COALESCE(SUM(clz_evaluation_cri_2_copy1), 0) as readings_2,
	COALESCE(SUM(clz_evaluation_cri_3_copy1), 0) as readings_3,
	COALESCE(SUM(clz_evaluation_cri_4_copy1), 0) as readings_4,
	COALESCE(SUM(clz_evaluation_cri_5_copy1), 0) as readings_5,
	COALESCE(SUM(clz_evaluation_cri_6_copy1), 0) as readings_6,
    
    
    SUM(IF(clz_evaluation_cri_41 = "Yes", 1,0)) AS responsibilities_1_yes,
	SUM(IF(clz_evaluation_cri_41 = "No", 1,0)) AS responsibilities_1_no,
	SUM(IF(clz_evaluation_cri_42 = "Yes", 1,0)) AS responsibilities_2_yes,
	SUM(IF(clz_evaluation_cri_42 = "No", 1,0)) AS responsibilities_2_no,
	SUM(IF(clz_evaluation_cri_43 = "Yes", 1,0)) AS responsibilities_3_yes,
	SUM(IF(clz_evaluation_cri_43 = "No", 1,0)) AS responsibilities_3_no,
	SUM(IF(clz_evaluation_cri_44 = "Yes", 1,0)) AS responsibilities_4_yes,
	SUM(IF(clz_evaluation_cri_44 = "No", 1,0)) AS responsibilities_4_no,
	SUM(IF(clz_evaluation_cri_45 = "Yes", 1,0)) AS responsibilities_5_yes,
	SUM(IF(clz_evaluation_cri_45 = "No", 1,0)) AS responsibilities_5_no,
	SUM(IF(clz_evaluation_cri_46 = "Yes", 1,0)) AS responsibilities_6_yes,
	SUM(IF(clz_evaluation_cri_46 = "No", 1,0)) AS responsibilities_6_no,
	SUM(IF(clz_evaluation_cri_47 = "Yes", 1,0)) AS responsibilities_7_yes,
	SUM(IF(clz_evaluation_cri_47 = "No", 1,0)) AS responsibilities_7_no,
	SUM(IF(clz_evaluation_cri_48 = "Yes", 1,0)) AS responsibilities_8_yes,
	SUM(IF(clz_evaluation_cri_48 = "No", 1,0)) AS responsibilities_8_no,
	SUM(IF(clz_evaluation_cri_49 = "Yes", 1,0)) AS responsibilities_9_yes,
	SUM(IF(clz_evaluation_cri_49 = "No", 1,0)) AS responsibilities_9_no,
	SUM(IF(clz_evaluation_cri_50 = "Yes", 1,0)) AS responsibilities_10_yes,
	SUM(IF(clz_evaluation_cri_50 = "No", 1,0)) AS responsibilities_10_no,


	SUM(IF(clz_evaluation_cri_51 = "Yes", 1,0)) AS home_behavior_1_yes,
	SUM(IF(clz_evaluation_cri_51 = "No", 1,0)) AS home_behavior_1_no,
	SUM(IF(clz_evaluation_cri_52 = "Yes", 1,0)) AS home_behavior_2_yes,
	SUM(IF(clz_evaluation_cri_52 = "No", 1,0)) AS home_behavior_2_no,
	SUM(IF(clz_evaluation_cri_53 = "Yes", 1,0)) AS home_behavior_3_yes,
	SUM(IF(clz_evaluation_cri_53 = "No", 1,0)) AS home_behavior_3_no,
	SUM(IF(clz_evaluation_cri_54 = "Yes", 1,0)) AS home_behavior_4_yes,
	SUM(IF(clz_evaluation_cri_54 = "No", 1,0)) AS home_behavior_4_no,
	SUM(IF(clz_evaluation_cri_55 = "Yes", 1,0)) AS home_behavior_5_yes,
	SUM(IF(clz_evaluation_cri_55 = "No", 1,0)) AS home_behavior_5_no,
    
    
    
    SUM(IF(clz_evaluation_cri_56 = "Yes", 1,0)) AS talents_1_yes,
	SUM(IF(clz_evaluation_cri_56 = "No", 1,0)) AS talents_1_no,
	SUM(IF(clz_evaluation_cri_57 = "Yes", 1,0)) AS talents_2_yes,
	SUM(IF(clz_evaluation_cri_57 = "No", 1,0)) AS talents_2_no,
	SUM(IF(clz_evaluation_cri_58 = "Yes", 1,0)) AS talents_3_yes,
	SUM(IF(clz_evaluation_cri_58 = "No", 1,0)) AS talents_3_no,
	SUM(IF(clz_evaluation_cri_59 = "Yes", 1,0)) AS talents_4_yes,
	SUM(IF(clz_evaluation_cri_59 = "No", 1,0)) AS talents_4_no,
	SUM(IF(clz_evaluation_cri_60 = "Yes", 1,0)) AS talents_5_yes,
	SUM(IF(clz_evaluation_cri_60 = "No", 1,0)) AS talents_5_no,
	SUM(IF(clz_evaluation_cri_61 = "Yes", 1,0)) AS talents_6_yes,
	SUM(IF(clz_evaluation_cri_61 = "No", 1,0)) AS talents_6_no,
	SUM(IF(clz_evaluation_cri_62 = "Yes", 1,0)) AS talents_7_yes,
	SUM(IF(clz_evaluation_cri_62 = "No", 1,0)) AS talents_7_no,
	SUM(IF(clz_evaluation_cri_63 = "Yes", 1,0)) AS talents_8_yes,
	SUM(IF(clz_evaluation_cri_63 = "No", 1,0)) AS talents_8_no,
	SUM(IF(clz_evaluation_cri_64 = "Yes", 1,0)) AS talents_9_yes,
	SUM(IF(clz_evaluation_cri_64 = "No", 1,0)) AS talents_9_no,
	SUM(IF(clz_evaluation_cri_65 = "Yes", 1,0)) AS talents_10_yes,
	SUM(IF(clz_evaluation_cri_65 = "No", 1,0)) AS talents_10_no,
    
    
    SUM(IF(clz_evaluation_cri_66 = "Yes", 1,0)) AS facilities_1_yes,
	SUM(IF(clz_evaluation_cri_66 = "No", 1,0)) AS facilities_1_no,
	SUM(IF(clz_evaluation_cri_67 = "Yes", 1,0)) AS facilities_2_yes,
	SUM(IF(clz_evaluation_cri_67 = "No", 1,0)) AS facilities_2_no,
	SUM(IF(clz_evaluation_cri_68 = "Yes", 1,0)) AS facilities_3_yes,
	SUM(IF(clz_evaluation_cri_68 = "No", 1,0)) AS facilities_3_no,
	SUM(IF(clz_evaluation_cri_69 = "Yes", 1,0)) AS facilities_4_yes,
	SUM(IF(clz_evaluation_cri_69 = "No", 1,0)) AS facilities_4_no,
	SUM(IF(clz_evaluation_cri_70 = "Yes", 1,0)) AS facilities_5_yes,
	SUM(IF(clz_evaluation_cri_70 = "No", 1,0)) AS facilities_5_no,
	SUM(IF(clz_evaluation_cri_71 = "Yes", 1,0)) AS facilities_6_yes,
	SUM(IF(clz_evaluation_cri_71 = "No", 1,0)) AS facilities_6_no,
	SUM(IF(clz_evaluation_cri_72 = "Yes", 1,0)) AS facilities_7_yes,
	SUM(IF(clz_evaluation_cri_72 = "No", 1,0)) AS facilities_7_no,
	SUM(IF(clz_evaluation_cri_73 = "Yes", 1,0)) AS facilities_8_yes,
	SUM(IF(clz_evaluation_cri_73 = "No", 1,0)) AS facilities_8_no,
	SUM(IF(clz_evaluation_cri_74 = "Yes", 1,0)) AS facilities_9_yes,
	SUM(IF(clz_evaluation_cri_74 = "No", 1,0)) AS facilities_9_no,
	SUM(IF(clz_evaluation_cri_75 = "Yes", 1,0)) AS facilities_10_yes,
	SUM(IF(clz_evaluation_cri_75 = "No", 1,0)) AS facilities_10_no,
    
    SUM(IF(clz_evaluation_cri_41_copy1 = "Yes", 1,0)) AS family_details_1_yes,
	SUM(IF(clz_evaluation_cri_41_copy1 = "No", 1,0)) AS family_details_1_no,
	SUM(IF(clz_evaluation_cri_42_copy1 = "Yes", 1,0)) AS family_details_2_yes,
	SUM(IF(clz_evaluation_cri_42_copy1 = "No", 1,0)) AS family_details_2_no,
    SUM(IF(clz_evaluation_cri_43_copy1 != "No", 1,0)) AS family_details_3_yes,
	SUM(IF(clz_evaluation_cri_43_copy1 = "No", 1,0)) AS family_details_3_no,
    SUM(IF(clz_evaluation_cri_44_copy1 != "No", 1,0)) AS family_details_4_yes,
	SUM(IF(clz_evaluation_cri_44_copy1 = "No", 1,0)) AS family_details_4_no,
    
    SUM(IF(clz_evaluation_cri_45_copy1 = "1", 1,0)) AS family_details_5_1,
	SUM(IF(clz_evaluation_cri_45_copy1 = "2", 1,0)) AS family_details_5_2,
	SUM(IF(clz_evaluation_cri_45_copy1 = "3", 1,0)) AS family_details_5_3,
	SUM(IF(clz_evaluation_cri_45_copy1 = "4", 1,0)) AS family_details_5_4,
	SUM(IF(clz_evaluation_cri_45_copy1 = "5", 1,0)) AS family_details_5_5,
	SUM(IF(clz_evaluation_cri_45_copy1 = "6", 1,0)) AS family_details_5_6,
    
	SUM(IF(clz_evaluation_cri_46_copy1 = "1", 1,0)) AS family_details_6_1,
	SUM(IF(clz_evaluation_cri_46_copy1 = "2", 1,0)) AS family_details_6_2,
    SUM(IF(clz_evaluation_cri_46_copy1 = "3", 1,0)) AS family_details_6_3,
	SUM(IF(clz_evaluation_cri_46_copy1 = "4", 1,0)) AS family_details_6_4,
    SUM(IF(clz_evaluation_cri_46_copy1 = "5", 1,0)) AS family_details_6_5,
	SUM(IF(clz_evaluation_cri_46_copy1 = "6", 1,0)) AS family_details_6_6,
    
    SUM(IF(clz_evaluation_cri_47_copy1 = "1", 1,0)) AS family_details_7_1,
	SUM(IF(clz_evaluation_cri_47_copy1 = "2", 1,0)) AS family_details_7_2,
	SUM(IF(clz_evaluation_cri_47_copy1 = "3", 1,0)) AS family_details_7_3,
	SUM(IF(clz_evaluation_cri_47_copy1 = "4", 1,0)) AS family_details_7_4,
    
    SUM(IF(clz_evaluation_cri_48_copy1 = "Yes", 1,0)) AS family_details_8_yes,
	SUM(IF(clz_evaluation_cri_48_copy1 = "No", 1,0)) AS family_details_8_no,
	SUM(IF(clz_evaluation_cri_49_copy1 = "Yes", 1,0)) AS family_details_9_yes,
	SUM(IF(clz_evaluation_cri_49_copy1 = "No", 1,0)) AS family_details_9_no,
	SUM(IF(clz_evaluation_cri_50_copy1 = "Yes", 1,0)) AS family_details_10_yes,
	SUM(IF(clz_evaluation_cri_50_copy1 = "No", 1,0)) AS family_details_10_no,
	SUM(IF(clz_evaluation_cri_51_copy1 = "Yes", 1,0)) AS family_details_11_yes,
	SUM(IF(clz_evaluation_cri_51_copy1 = "No", 1,0)) AS family_details_11_no
    
from 
	class_report
where
	class_report.clz_repo_id in (select clz_report_id from student_class sc where sc.year=yearofdata 
    and sc.clz_id in ( select clz_id from class where FIND_IN_SET(clz_grade, greads) and  FIND_IN_SET(clz_class, classes) ));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `desies_view`
--

/*!50001 DROP VIEW IF EXISTS `desies_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `desies_view` AS select `stu`.`stu_admission_number` AS `stu_admission_number`,`sd`.`dis_found_year` AS `dis_found_year`,`d`.`dis_name` AS `dis_name`,`d`.`dis_explanation` AS `dis_explanation` from ((`student` `stu` left join `student_diseases` `sd` on((`stu`.`stu_id` = `sd`.`stu_id`))) left join `diseases` `d` on((`sd`.`dis_id` = `d`.`dis_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `operational_user_view`
--

/*!50001 DROP VIEW IF EXISTS `operational_user_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `operational_user_view` AS select `operational_user`.`usr_id` AS `usr_id`,`operational_user`.`usr_name` AS `usr_name`,`operational_user`.`usr_pwd` AS `usr_pwd`,`operational_user`.`usr_full_name` AS `usr_full_name`,`operational_user`.`usr_email` AS `usr_email`,`operational_user`.`usr_phone_number` AS `usr_phone_number`,`operational_user`.`usr_category` AS `usr_category`,`operational_user`.`usr_api_key` AS `usr_api_key`,`operational_user`.`status` AS `ou_status`,`operational_user`.`recode_added_at` AS `ou_recode_added_at`,`operational_user`.`recode_added_by` AS `ou_recode_added_by`,`user_category`.`ucat_id` AS `ucat_id`,`user_category`.`ucat_name` AS `ucat_name`,`user_category`.`ucat_description` AS `ucat_description`,`user_category`.`status` AS `uc_status`,`user_category`.`recode_added_at` AS `uc_recode_added_at`,`user_category`.`recode_added_by` AS `uc_recode_added_by` from (`operational_user` left join `user_category` on((`operational_user`.`usr_category` = `user_category`.`ucat_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `operational_user_view_release`
--

/*!50001 DROP VIEW IF EXISTS `operational_user_view_release`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `operational_user_view_release` AS select `operational_user`.`usr_name` AS `usr_name`,`operational_user`.`usr_full_name` AS `usr_full_name`,`operational_user`.`usr_email` AS `usr_email`,`operational_user`.`usr_phone_number` AS `usr_phone_number`,`operational_user`.`usr_api_key` AS `usr_api_key`,`operational_user`.`status` AS `ou_status`,`operational_user`.`recode_added_at` AS `ou_recode_added_at`,`user_category`.`ucat_name` AS `ucat_name`,`user_category`.`ucat_description` AS `ucat_description` from (`operational_user` left join `user_category` on((`operational_user`.`usr_category` = `user_category`.`ucat_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `project_supervisor_view`
--

/*!50001 DROP VIEW IF EXISTS `project_supervisor_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `project_supervisor_view` AS select `p`.`sup_id` AS `sup_id`,`t`.`tea_id` AS `tea_id`,`t`.`tea_full_name` AS `tea_full_name`,`t`.`tea_name_with_initials` AS `tea_name_with_initials`,`t`.`tea_land_phone_number` AS `tea_land_phone_number`,`t`.`tea_mobile_phone_number` AS `tea_mobile_phone_number`,`t`.`tea_address` AS `tea_address`,`t`.`tea_birth_day` AS `tea_birth_day`,`t`.`tea_city` AS `tea_city`,`t`.`tec_nic` AS `tec_nic`,`t`.`lib_mem_id` AS `lib_mem_id`,`t`.`tea_distance_to_home` AS `tea_distance_to_home`,`t`.`tea_occupation` AS `tea_occupation`,`t`.`tea_occupation_type` AS `tea_occupation_type`,`t`.`tea_office_address` AS `tea_office_address`,`t`.`tea_office_phone` AS `tea_office_phone`,`t`.`tea_gender` AS `tea_gender`,`t`.`tea_email` AS `tea_email`,`t`.`tea_student_id` AS `tea_student_id`,`t`.`tea_ob_id` AS `tea_ob_id`,`t`.`status` AS `status`,`t`.`recode_added_at` AS `recode_added_at`,`t`.`recode_added_by` AS `recode_added_by`,`t`.`recode_modified_at` AS `recode_modified_at`,`t`.`recode_modified_by` AS `recode_modified_by` from (`projectsupervisor` `p` left join `teacher` `t` on((`p`.`sup_id` = `t`.`tea_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `school_view`
--

/*!50001 DROP VIEW IF EXISTS `school_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `school_view` AS select `stu`.`stu_admission_number` AS `stu_admission_number`,`s`.`sch_name` AS `sch_name`,`s`.`sch_situated_in` AS `sch_situated_in`,`ss`.`attend_year` AS `attend_year`,`ss`.`leave_year` AS `leave_year` from ((`student` `stu` left join `student_school` `ss` on((`stu`.`stu_id` = `ss`.`stu_id`))) left join `school` `s` on((`ss`.`sch_id` = `s`.`sch_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_class_view`
--

/*!50001 DROP VIEW IF EXISTS `student_class_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_class_view` AS select `stu`.`stu_admission_number` AS `stu_admission_number`,`sc`.`year` AS `year`,`c`.`clz_grade` AS `clz_grade`,`c`.`clz_class` AS `clz_class`,`t`.`tea_full_name` AS `tea_full_name`,`t`.`tea_name_with_initials` AS `tea_name_with_initials`,`cr`.`clz_evaluation_cri_1` AS `clz_evaluation_cri_1`,`cr`.`clz_evaluation_cri_2` AS `clz_evaluation_cri_2`,`cr`.`clz_evaluation_cri_3` AS `clz_evaluation_cri_3`,`cr`.`clz_evaluation_cri_4` AS `clz_evaluation_cri_4`,`cr`.`clz_evaluation_cri_5` AS `clz_evaluation_cri_5`,`cr`.`clz_evaluation_cri_6` AS `clz_evaluation_cri_6`,`cr`.`clz_evaluation_cri_7` AS `clz_evaluation_cri_7`,`cr`.`clz_evaluation_cri_8` AS `clz_evaluation_cri_8`,`cr`.`clz_evaluation_cri_9` AS `clz_evaluation_cri_9`,`cr`.`clz_evaluation_cri_10` AS `clz_evaluation_cri_10`,`cr`.`clz_evaluation_cri_11` AS `clz_evaluation_cri_11`,`cr`.`clz_evaluation_cri_12` AS `clz_evaluation_cri_12`,`cr`.`clz_evaluation_cri_13` AS `clz_evaluation_cri_13`,`cr`.`clz_evaluation_cri_14` AS `clz_evaluation_cri_14`,`cr`.`clz_evaluation_cri_15` AS `clz_evaluation_cri_15`,`cr`.`clz_evaluation_cri_16` AS `clz_evaluation_cri_16`,`cr`.`clz_evaluation_cri_17` AS `clz_evaluation_cri_17`,`cr`.`clz_evaluation_cri_18` AS `clz_evaluation_cri_18`,`cr`.`clz_evaluation_cri_19` AS `clz_evaluation_cri_19`,`cr`.`clz_evaluation_cri_20` AS `clz_evaluation_cri_20`,`cr`.`clz_evaluation_cri_21` AS `clz_evaluation_cri_21`,`cr`.`clz_evaluation_cri_22` AS `clz_evaluation_cri_22`,`cr`.`clz_evaluation_cri_23` AS `clz_evaluation_cri_23`,`cr`.`clz_evaluation_cri_24` AS `clz_evaluation_cri_24`,`cr`.`clz_evaluation_cri_25` AS `clz_evaluation_cri_25`,`cr`.`clz_evaluation_cri_26` AS `clz_evaluation_cri_26`,`cr`.`clz_evaluation_cri_27` AS `clz_evaluation_cri_27`,`cr`.`clz_evaluation_cri_28` AS `clz_evaluation_cri_28`,`cr`.`clz_evaluation_cri_29` AS `clz_evaluation_cri_29`,`cr`.`clz_evaluation_cri_30` AS `clz_evaluation_cri_30`,`cr`.`clz_evaluation_cri_31` AS `clz_evaluation_cri_31`,`cr`.`clz_evaluation_cri_32` AS `clz_evaluation_cri_32`,`cr`.`clz_evaluation_cri_33` AS `clz_evaluation_cri_33`,`cr`.`clz_evaluation_cri_34` AS `clz_evaluation_cri_34`,`cr`.`clz_evaluation_cri_35` AS `clz_evaluation_cri_35`,`cr`.`clz_evaluation_cri_36` AS `clz_evaluation_cri_36`,`cr`.`clz_evaluation_cri_37` AS `clz_evaluation_cri_37`,`cr`.`clz_evaluation_cri_38` AS `clz_evaluation_cri_38`,`cr`.`clz_evaluation_cri_39` AS `clz_evaluation_cri_39`,`cr`.`clz_evaluation_cri_40` AS `clz_evaluation_cri_40`,`cr`.`clz_evaluation_cri_41` AS `clz_evaluation_cri_41`,`cr`.`clz_evaluation_cri_42` AS `clz_evaluation_cri_42`,`cr`.`clz_evaluation_cri_43` AS `clz_evaluation_cri_43`,`cr`.`clz_evaluation_cri_44` AS `clz_evaluation_cri_44`,`cr`.`clz_evaluation_cri_45` AS `clz_evaluation_cri_45`,`cr`.`clz_evaluation_cri_46` AS `clz_evaluation_cri_46`,`cr`.`clz_evaluation_cri_47` AS `clz_evaluation_cri_47`,`cr`.`clz_evaluation_cri_48` AS `clz_evaluation_cri_48`,`cr`.`clz_evaluation_cri_49` AS `clz_evaluation_cri_49`,`cr`.`clz_evaluation_cri_50` AS `clz_evaluation_cri_50`,`cr`.`clz_evaluation_cri_51` AS `clz_evaluation_cri_51`,`cr`.`clz_evaluation_cri_52` AS `clz_evaluation_cri_52`,`cr`.`clz_evaluation_cri_53` AS `clz_evaluation_cri_53`,`cr`.`clz_evaluation_cri_54` AS `clz_evaluation_cri_54`,`cr`.`clz_evaluation_cri_55` AS `clz_evaluation_cri_55`,`cr`.`clz_evaluation_cri_56` AS `clz_evaluation_cri_56`,`cr`.`clz_evaluation_cri_57` AS `clz_evaluation_cri_57`,`cr`.`clz_evaluation_cri_58` AS `clz_evaluation_cri_58`,`cr`.`clz_evaluation_cri_59` AS `clz_evaluation_cri_59`,`cr`.`clz_evaluation_cri_60` AS `clz_evaluation_cri_60`,`cr`.`clz_evaluation_cri_61` AS `clz_evaluation_cri_61`,`cr`.`clz_evaluation_cri_62` AS `clz_evaluation_cri_62`,`cr`.`clz_evaluation_cri_63` AS `clz_evaluation_cri_63`,`cr`.`clz_evaluation_cri_64` AS `clz_evaluation_cri_64`,`cr`.`clz_evaluation_cri_65` AS `clz_evaluation_cri_65`,`cr`.`clz_evaluation_cri_66` AS `clz_evaluation_cri_66`,`cr`.`clz_evaluation_cri_67` AS `clz_evaluation_cri_67`,`cr`.`clz_evaluation_cri_68` AS `clz_evaluation_cri_68`,`cr`.`clz_evaluation_cri_69` AS `clz_evaluation_cri_69`,`cr`.`clz_evaluation_cri_70` AS `clz_evaluation_cri_70`,`cr`.`clz_evaluation_cri_71` AS `clz_evaluation_cri_71`,`cr`.`clz_evaluation_cri_72` AS `clz_evaluation_cri_72`,`cr`.`clz_evaluation_cri_73` AS `clz_evaluation_cri_73`,`cr`.`clz_evaluation_cri_74` AS `clz_evaluation_cri_74`,`cr`.`clz_evaluation_cri_75` AS `clz_evaluation_cri_75`,`cr`.`clz_evaluation_cri_76` AS `clz_evaluation_cri_76`,`cr`.`clz_evaluation_cri_77` AS `clz_evaluation_cri_77`,`cr`.`clz_evaluation_cri_78` AS `clz_evaluation_cri_78`,`cr`.`clz_evaluation_cri_79` AS `clz_evaluation_cri_79`,`cr`.`clz_evaluation_cri_80` AS `clz_evaluation_cri_80`,`cr`.`clz_evaluation_cri_1_copy1` AS `clz_evaluation_cri_1_copy1`,`cr`.`clz_evaluation_cri_2_copy1` AS `clz_evaluation_cri_2_copy1`,`cr`.`clz_evaluation_cri_3_copy1` AS `clz_evaluation_cri_3_copy1`,`cr`.`clz_evaluation_cri_4_copy1` AS `clz_evaluation_cri_4_copy1`,`cr`.`clz_evaluation_cri_5_copy1` AS `clz_evaluation_cri_5_copy1`,`cr`.`clz_evaluation_cri_6_copy1` AS `clz_evaluation_cri_6_copy1`,`cr`.`clz_evaluation_cri_7_copy1` AS `clz_evaluation_cri_7_copy1`,`cr`.`clz_evaluation_cri_8_copy1` AS `clz_evaluation_cri_8_copy1`,`cr`.`clz_evaluation_cri_9_copy1` AS `clz_evaluation_cri_9_copy1`,`cr`.`clz_evaluation_cri_10_copy1` AS `clz_evaluation_cri_10_copy1`,`cr`.`clz_evaluation_cri_11_copy1` AS `clz_evaluation_cri_11_copy1`,`cr`.`clz_evaluation_cri_12_copy1` AS `clz_evaluation_cri_12_copy1`,`cr`.`clz_evaluation_cri_13_copy1` AS `clz_evaluation_cri_13_copy1`,`cr`.`clz_evaluation_cri_14_copy1` AS `clz_evaluation_cri_14_copy1`,`cr`.`clz_evaluation_cri_15_copy1` AS `clz_evaluation_cri_15_copy1`,`cr`.`clz_evaluation_cri_16_copy1` AS `clz_evaluation_cri_16_copy1`,`cr`.`clz_evaluation_cri_17_copy1` AS `clz_evaluation_cri_17_copy1`,`cr`.`clz_evaluation_cri_18_copy1` AS `clz_evaluation_cri_18_copy1`,`cr`.`clz_evaluation_cri_19_copy1` AS `clz_evaluation_cri_19_copy1`,`cr`.`clz_evaluation_cri_20_copy1` AS `clz_evaluation_cri_20_copy1`,`cr`.`clz_evaluation_cri_41_copy1` AS `clz_evaluation_cri_41_copy1`,`cr`.`clz_evaluation_cri_42_copy1` AS `clz_evaluation_cri_42_copy1`,`cr`.`clz_evaluation_cri_43_copy1` AS `clz_evaluation_cri_43_copy1`,`cr`.`clz_evaluation_cri_44_copy1` AS `clz_evaluation_cri_44_copy1`,`cr`.`clz_evaluation_cri_45_copy1` AS `clz_evaluation_cri_45_copy1`,`cr`.`clz_evaluation_cri_46_copy1` AS `clz_evaluation_cri_46_copy1`,`cr`.`clz_evaluation_cri_47_copy1` AS `clz_evaluation_cri_47_copy1`,`cr`.`clz_evaluation_cri_48_copy1` AS `clz_evaluation_cri_48_copy1`,`cr`.`clz_evaluation_cri_49_copy1` AS `clz_evaluation_cri_49_copy1`,`cr`.`clz_evaluation_cri_50_copy1` AS `clz_evaluation_cri_50_copy1`,`cr`.`clz_evaluation_cri_51_copy1` AS `clz_evaluation_cri_51_copy1`,`cr`.`clz_evaluation_cri_52_copy1` AS `clz_evaluation_cri_52_copy1`,`cr`.`clz_evaluation_cri_53_copy1` AS `clz_evaluation_cri_53_copy1`,`cr`.`clz_evaluation_cri_54_copy1` AS `clz_evaluation_cri_54_copy1`,`cr`.`clz_evaluation_cri_55_copy1` AS `clz_evaluation_cri_55_copy1`,`cr`.`clz_evaluation_cri_56_copy1` AS `clz_evaluation_cri_56_copy1`,`cr`.`clz_evaluation_cri_57_copy1` AS `clz_evaluation_cri_57_copy1`,`cr`.`clz_evaluation_cri_58_copy1` AS `clz_evaluation_cri_58_copy1`,`cr`.`clz_evaluation_cri_59_copy1` AS `clz_evaluation_cri_59_copy1`,`cr`.`clz_evaluation_cri_60_copy1` AS `clz_evaluation_cri_60_copy1`,`pr`.`prf_is_prf` AS `prf_is_prf`,`ps`.`sec_name` AS `sec_name`,`pg`.`grp_name` AS `grp_name`,`pp`.`pos_name` AS `pos_name`,`pr`.`prf_sunday_attendence` AS `prf_sunday_attendence`,`pr`.`prf_poyaday_attendence` AS `prf_poyaday_attendence`,`pr`.`pfr_meeting_attendance` AS `pfr_meeting_attendance`,`pr`.`prf_extra_work_attendance` AS `prf_extra_work_attendance`,`pr`.`prf_evaluation_cri_1` AS `prf_evaluation_cri_1`,`pr`.`prf_evaluation_cri_2` AS `prf_evaluation_cri_2`,`pr`.`prf_evaluation_cri_3` AS `prf_evaluation_cri_3`,`pr`.`prf_evaluation_cri_4` AS `prf_evaluation_cri_4`,`pr`.`prf_evaluation_cri_5` AS `prf_evaluation_cri_5`,`pr`.`prf_evaluation_cri_6` AS `prf_evaluation_cri_6`,`pr`.`prf_evaluation_cri_7` AS `prf_evaluation_cri_7`,`pr`.`prf_evaluation_cri_8` AS `prf_evaluation_cri_8`,`pr`.`prf_evaluation_cri_9` AS `prf_evaluation_cri_9`,`pr`.`prf_evaluation_cri_10` AS `prf_evaluation_cri_10`,`pr`.`prf_evaluation_cri_11` AS `prf_evaluation_cri_11`,`pr`.`prf_evaluation_cri_12` AS `prf_evaluation_cri_12`,`pr`.`prf_evaluation_cri_13` AS `prf_evaluation_cri_13`,`pr`.`prf_evaluation_cri_14` AS `prf_evaluation_cri_14`,`pr`.`prf_evaluation_cri_15` AS `prf_evaluation_cri_15`,`pr`.`prf_evaluation_cri_16` AS `prf_evaluation_cri_16`,`pr`.`prf_evaluation_cri_17` AS `prf_evaluation_cri_17`,`pr`.`prf_evaluation_cri_18` AS `prf_evaluation_cri_18`,`pr`.`prf_evaluation_cri_19` AS `prf_evaluation_cri_19`,`pr`.`prf_evaluation_cri_20` AS `prf_evaluation_cri_20` from (((((((((`student` `stu` left join `student_class` `sc` on((`stu`.`stu_id` = `sc`.`stu_id`))) left join `class` `c` on((`sc`.`clz_id` = `c`.`clz_id`))) left join `class_report` `cr` on((`sc`.`clz_report_id` = `cr`.`clz_repo_id`))) left join `prefect_report` `pr` on((`sc`.`prefect_report_id` = `pr`.`prf_repo_id`))) left join `prefect_section` `ps` on((`pr`.`prf_section_id` = `ps`.`sec_id`))) left join `prefect_group` `pg` on((`pr`.`prf_group_id` = `pg`.`grp_id`))) left join `prefect_possition` `pp` on((`pr`.`prf_possition_id` = `pp`.`pos_id`))) left join `teacher_class` `tc` on((`c`.`clz_id` = `tc`.`clz_id`))) left join `teacher` `t` on((`tc`.`tec_id` = `t`.`tea_id`))) where (`sc`.`year` = `tc`.`year`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_examresult_view`
--

/*!50001 DROP VIEW IF EXISTS `student_examresult_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_examresult_view` AS select `stu`.`stu_admission_number` AS `stu_admission_number`,`e`.`exm_name` AS `exm_name`,`e`.`exm_discription` AS `exm_discription`,`r`.`year` AS `year`,`r`.`result` AS `result`,`r`.`stu_exm_index_number` AS `stu_exm_index_number` from ((`student` `stu` left join `result` `r` on((`stu`.`stu_id` = `r`.`stu_id`))) left join `exam` `e` on((`r`.`exm_id` = `e`.`exm_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_name_separating_view`
--

/*!50001 DROP VIEW IF EXISTS `student_name_separating_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_name_separating_view` AS select `student`.`stu_id` AS `stu_id`,`student`.`stu_admission_number` AS `stu_admission_number`,`student`.`stu_full_name` AS `stu_full_name`,`student`.`stu_name_with_initisals` AS `stu_name_with_initisals`,substring_index(substring_index(`student`.`stu_full_name`,' ',1),' ',-(1)) AS `name1`,substring_index(substring_index(`student`.`stu_full_name`,' ',2),' ',-(1)) AS `name2`,substring_index(substring_index(`student`.`stu_full_name`,' ',3),' ',-(1)) AS `name3`,`student`.`stu_gender` AS `stu_gender`,`student`.`stu_date_of_birth` AS `stu_date_of_birth`,`student`.`stu_address` AS `stu_address`,`student`.`stu_city` AS `stu_city` from `student` where ((`student`.`status` = 1) or (`student`.`status` = 2)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_personal_detail_view`
--

/*!50001 DROP VIEW IF EXISTS `student_personal_detail_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_personal_detail_view` AS select `stu`.`stu_admission_number` AS `stu_admission_number`,`stu`.`stu_full_name` AS `stu_full_name`,`stu`.`stu_name_with_initisals` AS `stu_name_with_initisals`,`stu`.`stu_gender` AS `stu_gender`,`stu`.`stu_date_of_birth` AS `stu_date_of_birth`,`stu`.`stu_land_phone_number` AS `stu_land_phone_number`,`stu`.`stu_mobile_number` AS `stu_mobile_number`,`stu`.`stu_address` AS `stu_address`,`stu`.`stu_city` AS `stu_city`,`stu`.`distance_to_home` AS `distance_to_home`,`stu`.`stu_email_address` AS `stu_email_address`,`stu`.`stu_nic_number` AS `stu_nic_number`,`far`.`far_name` AS `far_name`,`far`.`far_phone_number` AS `far_phone_number`,`far`.`far_adress` AS `far_adress`,`far`.`far_email_address` AS `far_email_address`,`far`.`far_occupation` AS `far_occupation`,`ot1`.`occ_type_name` AS `far_occ_type_name`,`ot1`.`occ_type_description` AS `far_occ_type_description`,`far`.`far_office_address` AS `far_office_address`,`far`.`far_office_phone_number` AS `far_office_phone_number`,`far`.`far_stu_addmision_number` AS `far_stu_addmision_number`,`far`.`far_old_student_number` AS `far_old_student_number`,`far`.`far_other_interactions_with_dp` AS `far_other_interactions_with_dp`,`far`.`far_nic` AS `far_nic`,`far`.`far_tea_id` AS `far_tea_id`,`mot`.`mot_name` AS `mot_name`,`mot`.`mot_phone_number` AS `mot_phone_number`,`mot`.`mot_adress` AS `mot_adress`,`mot`.`mot_email_address` AS `mot_email_address`,`mot`.`mot_occupation` AS `mot_occupation`,`ot2`.`occ_type_name` AS `mot_occ_type_name`,`ot2`.`occ_type_description` AS `mot_occ_type_description`,`mot`.`mot_office_address` AS `mot_office_address`,`mot`.`mot_office_phone_number` AS `mot_office_phone_number`,`mot`.`mot_stu_addmision_number` AS `mot_stu_addmision_number`,`mot`.`mot_old_student_number` AS `mot_old_student_number`,`mot`.`mot_other_interactions_with_dp` AS `mot_other_interactions_with_dp`,`mot`.`mot_nic` AS `mot_nic`,`mot`.`mot_tea_id` AS `mot_tea_id`,`gur`.`gur_name` AS `gur_name`,`gur`.`gur_phone_number` AS `gur_phone_number`,`gur`.`gur_adress` AS `gur_adress`,`gur`.`gur_email_address` AS `gur_email_address`,`gur`.`gur_occupation` AS `gur_occupation`,`ot1`.`occ_type_name` AS `gur_occ_type_name`,`ot1`.`occ_type_description` AS `gur_occ_type_description`,`gur`.`gur_office_address` AS `gur_office_address`,`gur`.`gur_office_phone_number` AS `gur_office_phone_number`,`gur`.`gur_stu_addmision_number` AS `gur_stu_addmision_number`,`gur`.`gur_old_student_number` AS `gur_old_student_number`,`gur`.`gur_other_interactions_with_dp` AS `gur_other_interactions_with_dp`,`gur`.`gur_nic` AS `gur_nic`,`gur`.`gur_tea_id` AS `gur_tea_id`,`gr9ts`.`year` AS `gr9tsyear`,`gr9ts`.`ts9_group` AS `ts9_group`,`gr9ts`.`ts9_daily_attendance` AS `ts9_daily_attendance`,`gr9ts`.`ts9_poya_attendance` AS `ts9_poya_attendance`,`gr9ts`.`ts9_recomendation` AS `ts9_recomendation`,`gr9ts`.`ts9_evaluation_cri_1` AS `ts9_evaluation_cri_1`,`gr9ts`.`ts9_evaluation_cri_2` AS `ts9_evaluation_cri_2`,`gr9ts`.`ts9_evaluation_cri_3` AS `ts9_evaluation_cri_3`,`gr9ts`.`ts9_evaluation_cri_4` AS `ts9_evaluation_cri_4`,`gr9ts`.`ts9_evaluation_cri_5` AS `ts9_evaluation_cri_5`,`gr9ts`.`ts9_evaluation_cri_6` AS `ts9_evaluation_cri_6`,`gr9ts`.`ts9_evaluation_cri_7` AS `ts9_evaluation_cri_7`,`gr9ts`.`ts9_evaluation_cri_8` AS `ts9_evaluation_cri_8`,`gr9ts`.`ts9_evaluation_cri_9` AS `ts9_evaluation_cri_9`,`gr9ts`.`ts9_evaluation_cri_10` AS `ts9_evaluation_cri_10`,`gr9ts`.`ts9_evaluation_cri_11` AS `ts9_evaluation_cri_11`,`gr9ts`.`ts9_evaluation_cri_12` AS `ts9_evaluation_cri_12`,`gr9ts`.`ts9_evaluation_cri_13` AS `ts9_evaluation_cri_13`,`gr9ts`.`ts9_evaluation_cri_14` AS `ts9_evaluation_cri_14`,`gr9ts`.`ts9_evaluation_cri_15` AS `ts9_evaluation_cri_15`,`gr9ts`.`ts9_evaluation_cri_16` AS `ts9_evaluation_cri_16`,`gr9ts`.`ts9_evaluation_cri_17` AS `ts9_evaluation_cri_17`,`gr9ts`.`ts9_evaluation_cri_18` AS `ts9_evaluation_cri_18`,`gr9ts`.`ts9_evaluation_cri_19` AS `ts9_evaluation_cri_19`,`gr9ts`.`ts9_evaluation_cri_20` AS `ts9_evaluation_cri_20`,`gr10ts`.`year` AS `gr10tsyear`,`gr10ts`.`ts10_group` AS `ts10_group`,`gr10ts`.`ts10_daily_attendance` AS `ts10_daily_attendance`,`gr10ts`.`ts10_poya_attendance` AS `ts10_poya_attendance`,`gr10ts`.`ts10_recomendation` AS `ts10_recomendation`,`gr10ts`.`ts10_evaluation_cri_1` AS `ts10_evaluation_cri_1`,`gr10ts`.`ts10_evaluation_cri_2` AS `ts10_evaluation_cri_2`,`gr10ts`.`ts10_evaluation_cri_3` AS `ts10_evaluation_cri_3`,`gr10ts`.`ts10_evaluation_cri_4` AS `ts10_evaluation_cri_4`,`gr10ts`.`ts10_evaluation_cri_5` AS `ts10_evaluation_cri_5`,`gr10ts`.`ts10_evaluation_cri_6` AS `ts10_evaluation_cri_6`,`gr10ts`.`ts10_evaluation_cri_7` AS `ts10_evaluation_cri_7`,`gr10ts`.`ts10_evaluation_cri_8` AS `ts10_evaluation_cri_8`,`gr10ts`.`ts10_evaluation_cri_9` AS `ts10_evaluation_cri_9`,`gr10ts`.`ts10_evaluation_cri_10` AS `ts10_evaluation_cri_10`,`gr10ts`.`ts10_evaluation_cri_11` AS `ts10_evaluation_cri_11`,`gr10ts`.`ts10_evaluation_cri_12` AS `ts10_evaluation_cri_12`,`gr10ts`.`ts10_evaluation_cri_13` AS `ts10_evaluation_cri_13`,`gr10ts`.`ts10_evaluation_cri_14` AS `ts10_evaluation_cri_14`,`gr10ts`.`ts10_evaluation_cri_15` AS `ts10_evaluation_cri_15`,`gr10ts`.`ts10_evaluation_cri_16` AS `ts10_evaluation_cri_16`,`gr10ts`.`ts10_evaluation_cri_17` AS `ts10_evaluation_cri_17`,`gr10ts`.`ts10_evaluation_cri_18` AS `ts10_evaluation_cri_18`,`gr10ts`.`ts10_evaluation_cri_19` AS `ts10_evaluation_cri_19`,`gr10ts`.`ts10_evaluation_cri_20` AS `ts10_evaluation_cri_20`,`gr10ts`.`ts10_evaluation_cri_21` AS `ts10_evaluation_cri_21`,`gr10ts`.`ts10_evaluation_cri_22` AS `ts10_evaluation_cri_22`,`gr10ts`.`ts10_evaluation_cri_23` AS `ts10_evaluation_cri_23`,`gr10ts`.`ts10_evaluation_cri_24` AS `ts10_evaluation_cri_24`,`gr10ts`.`ts10_evaluation_cri_25` AS `ts10_evaluation_cri_25`,`gr10ts`.`ts10_evaluation_cri_26` AS `ts10_evaluation_cri_26`,`gr10ts`.`ts10_evaluation_cri_27` AS `ts10_evaluation_cri_27`,`gr10ts`.`ts10_evaluation_cri_28` AS `ts10_evaluation_cri_28`,`gr10ts`.`ts10_evaluation_cri_29` AS `ts10_evaluation_cri_29`,`gr10ts`.`ts10_evaluation_cri_30` AS `ts10_evaluation_cri_30`,`gr11ts`.`year` AS `gr11tsyear`,`gr11ts`.`ts11_pro_id` AS `ts11_pro_id`,`gr11ts`.`ts11_daily_attendance` AS `ts11_daily_attendance`,`gr11ts`.`ts11_poya_attendance` AS `ts11_poya_attendance`,`gr11ts`.`ts11_recomendation` AS `ts11_recomendation`,`gr11ts`.`ts11_evaluation_cri_1` AS `ts11_evaluation_cri_1`,`gr11ts`.`ts11_evaluation_cri_2` AS `ts11_evaluation_cri_2`,`gr11ts`.`ts11_evaluation_cri_3` AS `ts11_evaluation_cri_3`,`gr11ts`.`ts11_evaluation_cri_4` AS `ts11_evaluation_cri_4`,`gr11ts`.`ts11_evaluation_cri_5` AS `ts11_evaluation_cri_5`,`gr11ts`.`ts11_evaluation_cri_6` AS `ts11_evaluation_cri_6`,`gr11ts`.`ts11_evaluation_cri_7` AS `ts11_evaluation_cri_7`,`gr11ts`.`ts11_evaluation_cri_8` AS `ts11_evaluation_cri_8`,`gr11ts`.`ts11_evaluation_cri_9` AS `ts11_evaluation_cri_9`,`gr11ts`.`ts11_evaluation_cri_10` AS `ts11_evaluation_cri_10`,`gr11ts`.`ts11_evaluation_cri_11` AS `ts11_evaluation_cri_11`,`gr11ts`.`ts11_evaluation_cri_12` AS `ts11_evaluation_cri_12`,`gr11ts`.`ts11_evaluation_cri_13` AS `ts11_evaluation_cri_13`,`gr11ts`.`ts11_evaluation_cri_14` AS `ts11_evaluation_cri_14`,`gr11ts`.`ts11_evaluation_cri_15` AS `ts11_evaluation_cri_15`,`gr11ts`.`ts11_evaluation_cri_16` AS `ts11_evaluation_cri_16`,`gr11ts`.`ts11_evaluation_cri_17` AS `ts11_evaluation_cri_17`,`gr11ts`.`ts11_evaluation_cri_18` AS `ts11_evaluation_cri_18`,`gr11ts`.`ts11_evaluation_cri_19` AS `ts11_evaluation_cri_19`,`gr11ts`.`ts11_evaluation_cri_20` AS `ts11_evaluation_cri_20`,`npts`.`year` AS `nptsyear`,`npts`.`np_pro1_id` AS `np_pro1_id`,`npts`.`np_pro2_id` AS `np_pro2_id`,`npts`.`np_pro3_id` AS `np_pro3_id`,`npts`.`np_pro4_id` AS `np_pro4_id`,`npts`.`np_daily_attendance` AS `np_daily_attendance`,`npts`.`np_poya_attendance` AS `np_poya_attendance`,`npts`.`np_recomendation` AS `np_recomendation`,`npts`.`np_evaluation_cri_1` AS `np_evaluation_cri_1`,`npts`.`np_evaluation_cri_2` AS `np_evaluation_cri_2`,`npts`.`np_evaluation_cri_3` AS `np_evaluation_cri_3`,`npts`.`np_evaluation_cri_4` AS `np_evaluation_cri_4`,`npts`.`np_evaluation_cri_5` AS `np_evaluation_cri_5`,`npts`.`np_evaluation_cri_6` AS `np_evaluation_cri_6`,`npts`.`np_evaluation_cri_7` AS `np_evaluation_cri_7`,`npts`.`np_evaluation_cri_8` AS `np_evaluation_cri_8`,`npts`.`np_evaluation_cri_9` AS `np_evaluation_cri_9`,`npts`.`np_evaluation_cri_10` AS `np_evaluation_cri_10`,`npts`.`np_evaluation_cri_11` AS `np_evaluation_cri_11`,`npts`.`np_evaluation_cri_12` AS `np_evaluation_cri_12`,`npts`.`np_evaluation_cri_13` AS `np_evaluation_cri_13`,`npts`.`np_evaluation_cri_14` AS `np_evaluation_cri_14`,`npts`.`np_evaluation_cri_15` AS `np_evaluation_cri_15`,`npts`.`np_evaluation_cri_16` AS `np_evaluation_cri_16`,`npts`.`np_evaluation_cri_17` AS `np_evaluation_cri_17`,`npts`.`np_evaluation_cri_18` AS `np_evaluation_cri_18`,`npts`.`np_evaluation_cri_19` AS `np_evaluation_cri_19`,`npts`.`np_evaluation_cri_20` AS `np_evaluation_cri_20`,`npts`.`np_evaluation_cri_21` AS `np_evaluation_cri_21`,`npts`.`np_evaluation_cri_22` AS `np_evaluation_cri_22`,`npts`.`np_evaluation_cri_23` AS `np_evaluation_cri_23`,`npts`.`np_evaluation_cri_24` AS `np_evaluation_cri_24`,`npts`.`np_evaluation_cri_25` AS `np_evaluation_cri_25`,`npts`.`np_evaluation_cri_26` AS `np_evaluation_cri_26`,`npts`.`np_evaluation_cri_27` AS `np_evaluation_cri_27`,`npts`.`np_evaluation_cri_28` AS `np_evaluation_cri_28`,`npts`.`np_evaluation_cri_29` AS `np_evaluation_cri_29`,`npts`.`np_evaluation_cri_30` AS `np_evaluation_cri_30`,`npts`.`np_evaluation_cri_31` AS `np_evaluation_cri_31`,`npts`.`np_evaluation_cri_32` AS `np_evaluation_cri_32`,`npts`.`np_evaluation_cri_33` AS `np_evaluation_cri_33`,`npts`.`np_evaluation_cri_34` AS `np_evaluation_cri_34`,`npts`.`np_evaluation_cri_35` AS `np_evaluation_cri_35`,`npts`.`np_evaluation_cri_36` AS `np_evaluation_cri_36`,`npts`.`np_evaluation_cri_37` AS `np_evaluation_cri_37`,`npts`.`np_evaluation_cri_38` AS `np_evaluation_cri_38`,`npts`.`np_evaluation_cri_39` AS `np_evaluation_cri_39`,`npts`.`np_evaluation_cri_40` AS `np_evaluation_cri_40` from ((((((((((`student` `stu` left join `father` `far` on((`stu`.`father_id` = `far`.`far_id`))) left join `mother` `mot` on((`stu`.`mother_id` = `mot`.`mot_id`))) left join `guardian` `gur` on((`stu`.`guardian_id` = `gur`.`gur_id`))) left join `grade_9_thurunu_saviya` `gr9ts` on((`stu`.`ts_grade9_id` = `gr9ts`.`ts9_id`))) left join `gread_10_thurunu_saviya` `gr10ts` on((`stu`.`ts_grade10_id` = `gr10ts`.`ts10_id`))) left join `gread_11_thurunu_saviya` `gr11ts` on((`stu`.`ts_grade11_id` = `gr11ts`.`ts11_id`))) left join `nirmathru_pranama_thurunu_saviya` `npts` on((`stu`.`ts_np_id` = `npts`.`np_id`))) left join `occupation_type` `ot1` on((`far`.`far_occupation_type` = `ot1`.`occ_type_id`))) left join `occupation_type` `ot2` on((`mot`.`mot_occupation_type` = `ot2`.`occ_type_id`))) left join `occupation_type` `ot3` on((`gur`.`gur_occupation_type` = `ot3`.`occ_type_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_reccomendation_view`
--

/*!50001 DROP VIEW IF EXISTS `student_reccomendation_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_reccomendation_view` AS select `s`.`stu_admission_number` AS `stu_admission_number`,`r`.`rec_year` AS `rec_year`,`r`.`rec_type_id` AS `rec_type_id`,`rt`.`rec_type_name` AS `rec_type_name`,`r`.`rec_topic` AS `rec_topic`,`r`.`rec_discription` AS `rec_discription` from ((`student` `s` left join `recommendation` `r` on((`s`.`stu_id` = `r`.`rec_stu_id`))) left join `recommendation_type` `rt` on((`r`.`rec_type_id` = `rt`.`rec_type_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `temp`
--

/*!50001 DROP VIEW IF EXISTS `temp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `temp` AS select `exm`.`exm_id` AS `exm_id`,`exm`.`exm_name` AS `exm_name`,`exm`.`exm_discription` AS `exm_discription`,`exm`.`status` AS `status`,`exm`.`recode_added_at` AS `recode_added_at`,`exm`.`recode_added_by` AS `recode_added_by`,`exm`.`recode_modified_at` AS `recode_modified_at`,`exm`.`recode_modified_by` AS `recode_modified_by` from `exam` `exm` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-20  9:51:57
