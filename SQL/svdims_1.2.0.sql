CREATE DATABASE  IF NOT EXISTS `svdims` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `svdims`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: svdims
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
  `status` varchar(45) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
  `status` varchar(45) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
  `status` varchar(45) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status_copy1` int(11) DEFAULT NULL,
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
  `status` varchar(45) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
  `status` varchar(45) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`clz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
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
  `clz_evaluation_cri_29` int(11) DEFAULT NULL,
  `clz_evaluation_cri_30` int(11) DEFAULT NULL,
  `clz_evaluation_cri_31` int(11) DEFAULT NULL,
  `clz_evaluation_cri_32` int(11) DEFAULT NULL,
  `clz_evaluation_cri_33` int(11) DEFAULT NULL,
  `clz_evaluation_cri_34` int(11) DEFAULT NULL,
  `clz_evaluation_cri_35` int(11) DEFAULT NULL,
  `clz_evaluation_cri_36` int(11) DEFAULT NULL,
  `clz_evaluation_cri_37` int(11) DEFAULT NULL,
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
  `status` varchar(45) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`clz_repo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_report`
--

LOCK TABLES `class_report` WRITE;
/*!40000 ALTER TABLE `class_report` DISABLE KEYS */;
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
  `status` varchar(45) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
-- Table structure for table `diseases`
--

DROP TABLE IF EXISTS `diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diseases` (
  `dis_id` int(11) NOT NULL AUTO_INCREMENT,
  `dis_name` varchar(45) DEFAULT NULL,
  `dis_explanation` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`dis_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diseases`
--

LOCK TABLES `diseases` WRITE;
/*!40000 ALTER TABLE `diseases` DISABLE KEYS */;
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
  `exm_name` varchar(45) DEFAULT NULL,
  `exm_discription` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`exm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
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
  `far_name` varchar(45) NOT NULL,
  `far_phone_number` varchar(45) DEFAULT NULL,
  `far_adress` varchar(45) DEFAULT NULL,
  `far_email_address` varchar(45) DEFAULT NULL,
  `far_occupation` varchar(45) DEFAULT NULL,
  `far_occupation _type` int(11) DEFAULT NULL,
  `far_office_address` varchar(45) DEFAULT NULL,
  `far_office_phone_number` varchar(45) DEFAULT NULL,
  `far_stu_addmision_number` varchar(45) DEFAULT NULL,
  `far_old_student_number` varchar(45) DEFAULT NULL,
  `far_other_interactions_with_dp` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`far_id`),
  KEY `occ_type_id_idx` (`far_occupation _type`),
  CONSTRAINT `occ_type_id` FOREIGN KEY (`far_occupation _type`) REFERENCES `occupation_type` (`occ_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `father`
--

LOCK TABLES `father` WRITE;
/*!40000 ALTER TABLE `father` DISABLE KEYS */;
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
  `ts9_recomendation` varchar(45) DEFAULT NULL,
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`ts9_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_9_thurunu_saviya`
--

LOCK TABLES `grade_9_thurunu_saviya` WRITE;
/*!40000 ALTER TABLE `grade_9_thurunu_saviya` DISABLE KEYS */;
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
  `ts10_recomendation` varchar(45) DEFAULT NULL,
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`ts10_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gread_10_thurunu_saviya`
--

LOCK TABLES `gread_10_thurunu_saviya` WRITE;
/*!40000 ALTER TABLE `gread_10_thurunu_saviya` DISABLE KEYS */;
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
  `ts11_pro_supervisor_id` int(11) DEFAULT NULL,
  `ts11_daily_attendance` int(11) DEFAULT NULL,
  `ts11_poya_attendance` int(11) DEFAULT NULL,
  `ts11_recomendation` varchar(45) DEFAULT NULL,
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`ts11_id`),
  KEY `tss_project_idx` (`ts11_pro_id`),
  CONSTRAINT `tss_project` FOREIGN KEY (`ts11_pro_id`) REFERENCES `project` (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gread_11_thurunu_saviya`
--

LOCK TABLES `gread_11_thurunu_saviya` WRITE;
/*!40000 ALTER TABLE `gread_11_thurunu_saviya` DISABLE KEYS */;
/*!40000 ALTER TABLE `gread_11_thurunu_saviya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardian`
--

DROP TABLE IF EXISTS `guardian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardian` (
  `gur_id` int(11) NOT NULL,
  `gur_name` varchar(45) NOT NULL,
  `gur_phone_number` varchar(45) DEFAULT NULL,
  `gur_adress` varchar(45) DEFAULT NULL,
  `gur_email_address` varchar(45) DEFAULT NULL,
  `gur_occupation` varchar(45) DEFAULT NULL,
  `gur_occupation _type` int(11) DEFAULT NULL,
  `gur_office_address` varchar(45) DEFAULT NULL,
  `gur_office_phone_number` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`gur_id`),
  KEY `ocu_id_idx` (`gur_occupation _type`),
  CONSTRAINT `ocu_id` FOREIGN KEY (`gur_occupation _type`) REFERENCES `occupation_type` (`occ_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian`
--

LOCK TABLES `guardian` WRITE;
/*!40000 ALTER TABLE `guardian` DISABLE KEYS */;
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
  `mot_name` varchar(45) NOT NULL,
  `mot_phone_number` varchar(45) DEFAULT NULL,
  `mot_adress` varchar(45) DEFAULT NULL,
  `mot_email_address` varchar(45) DEFAULT NULL,
  `mot_occupation` varchar(45) DEFAULT NULL,
  `mot_occupation _type` int(11) DEFAULT NULL,
  `mot_office_address` varchar(45) DEFAULT NULL,
  `mot_office_phone_number` varchar(45) DEFAULT NULL,
  `mot_stu_addmision_number` varchar(45) DEFAULT NULL,
  `mot_old_student_number` varchar(45) DEFAULT NULL,
  `mot_other_interactions_with_dp` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`mot_id`),
  KEY `occ_type_detail_idx` (`mot_occupation _type`),
  CONSTRAINT `occ_type_detail` FOREIGN KEY (`mot_occupation _type`) REFERENCES `occupation_type` (`occ_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mother`
--

LOCK TABLES `mother` WRITE;
/*!40000 ALTER TABLE `mother` DISABLE KEYS */;
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`occ_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupation_type`
--

LOCK TABLES `occupation_type` WRITE;
/*!40000 ALTER TABLE `occupation_type` DISABLE KEYS */;
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
  `usr_pwd` varchar(45) NOT NULL,
  `usr_full_name` varchar(45) DEFAULT NULL,
  `usr_email` varchar(45) DEFAULT NULL,
  `usr_phone_number` varchar(45) DEFAULT NULL,
  `usr_category` int(11) NOT NULL,
  `usr_api_key` varchar(45) DEFAULT NULL,
  `usr_created_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`usr_id`),
  UNIQUE KEY `usr_name_UNIQUE` (`usr_name`),
  KEY `usr_cat_idx` (`usr_category`),
  CONSTRAINT `usr_cat` FOREIGN KEY (`usr_category`) REFERENCES `user_category` (`ucat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operational_user`
--

LOCK TABLES `operational_user` WRITE;
/*!40000 ALTER TABLE `operational_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `operational_user` ENABLE KEYS */;
UNLOCK TABLES;

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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
  `pro_name` varchar(45) DEFAULT NULL,
  `pro_discription` varchar(45) DEFAULT NULL,
  `pro_PDF_path` varchar(45) DEFAULT NULL,
  `pro_supervisor_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `supervisor_idx` (`pro_supervisor_id`),
  CONSTRAINT `supervisor` FOREIGN KEY (`pro_supervisor_id`) REFERENCES `teacher` (`tea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`sch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
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
  `stu_full_name` varchar(45) NOT NULL,
  `stu_name_with_initisals` varchar(45) NOT NULL,
  `stu_gender` varchar(45) NOT NULL,
  `stu_date_of_birth` date NOT NULL,
  `stu_land_phone_number` varchar(45) DEFAULT NULL,
  `stu_mobile_number` varchar(45) DEFAULT NULL,
  `stu_address` varchar(45) DEFAULT NULL,
  `stu_city` varchar(45) DEFAULT NULL,
  `distance_to_home` int(11) DEFAULT NULL,
  `father_id` int(11) NOT NULL,
  `mother_id` int(11) NOT NULL,
  `guardian_id` int(11) DEFAULT NULL,
  `stu_email_address` varchar(45) DEFAULT NULL,
  `stu_nic_number` varchar(45) DEFAULT NULL,
  `ts_grade9_id` int(11) DEFAULT NULL,
  `ts_grade10_id` int(11) DEFAULT NULL,
  `ts_grade11_id` int(11) DEFAULT NULL,
  `ts_np_id` int(11) DEFAULT NULL,
  `lib_mem_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_id`),
  UNIQUE KEY `stuadmissionnumber_UNIQUE` (`stu_admission_number`),
  UNIQUE KEY `stu_nic_number_UNIQUE` (`stu_nic_number`),
  KEY `father_details_idx` (`father_id`),
  KEY `mother_details_idx` (`mother_id`),
  KEY `ts9_detail_idx` (`ts_grade9_id`),
  KEY `ts10_detail_idx` (`ts_grade10_id`),
  KEY `ts11_detail_idx` (`ts_grade11_id`),
  KEY `ts_np_detail_idx` (`ts_np_id`),
  KEY `lib_mem_id1_idx` (`lib_mem_id`),
  CONSTRAINT `father_details` FOREIGN KEY (`father_id`) REFERENCES `father` (`far_id`),
  CONSTRAINT `lib_mem_id1` FOREIGN KEY (`lib_mem_id`) REFERENCES `member` (`mem_id`),
  CONSTRAINT `mother_details` FOREIGN KEY (`mother_id`) REFERENCES `mother` (`mot_id`),
  CONSTRAINT `ts10_detail` FOREIGN KEY (`ts_grade10_id`) REFERENCES `gread_10_thurunu_saviya` (`ts10_id`),
  CONSTRAINT `ts11_detail` FOREIGN KEY (`ts_grade11_id`) REFERENCES `gread_11_thurunu_saviya` (`ts11_id`),
  CONSTRAINT `ts9_detail` FOREIGN KEY (`ts_grade9_id`) REFERENCES `grade_9_thurunu_saviya` (`ts9_id`),
  CONSTRAINT `ts_np_detail` FOREIGN KEY (`ts_np_id`) REFERENCES `nirmathru_pranama_thurunu_saviya` (`np_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
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
  `clz_report_id` int(11) DEFAULT NULL,
  `prefect_report_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
/*!40000 ALTER TABLE `student_class` ENABLE KEYS */;
UNLOCK TABLES;

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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`tal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talants`
--

LOCK TABLES `talants` WRITE;
/*!40000 ALTER TABLE `talants` DISABLE KEYS */;
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
  `tea_city` varchar(45) DEFAULT NULL,
  `lib_mem_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`tea_id`),
  KEY `lib_mem_id2_idx` (`lib_mem_id`),
  CONSTRAINT `lib_mem_id2` FOREIGN KEY (`lib_mem_id`) REFERENCES `member` (`mem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
/*!40000 ALTER TABLE `teacher_class` ENABLE KEYS */;
UNLOCK TABLES;

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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`ucat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_category`
--

LOCK TABLES `user_category` WRITE;
/*!40000 ALTER TABLE `user_category` DISABLE KEYS */;
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
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
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
-- Dumping events for database 'svdims'
--

--
-- Dumping routines for database 'svdims'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-26  5:32:39
