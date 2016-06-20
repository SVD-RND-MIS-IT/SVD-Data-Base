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

-- Dump completed on 2016-06-20  9:50:48
