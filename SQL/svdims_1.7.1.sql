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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,2,'a','1','2016-03-26 00:20:10',1,NULL,NULL),(2,2,'b','1','2016-03-26 00:20:10',1,NULL,NULL),(3,3,'a','1','2016-03-26 00:20:10',1,NULL,NULL),(4,3,'b','1','2016-03-26 00:20:10',1,NULL,NULL),(5,4,'a','1','2016-03-26 00:20:10',1,NULL,NULL),(6,4,'b','1','2016-03-26 00:20:10',1,NULL,NULL);
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
  `status` varchar(45) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
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
-- Table structure for table `diseases`
--

DROP TABLE IF EXISTS `diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diseases` (
  `dis_id` int(11) NOT NULL AUTO_INCREMENT,
  `dis_name` varchar(45) DEFAULT NULL,
  `dis_explanation` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`dis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diseases`
--

LOCK TABLES `diseases` WRITE;
/*!40000 ALTER TABLE `diseases` DISABLE KEYS */;
INSERT INTO `diseases` VALUES (1,'dis1','aaaaaaa',1,'2016-03-26 00:20:10',1,NULL,NULL),(2,'dis2','aaaaaaa',1,'2016-03-26 00:20:10',1,NULL,NULL),(3,'dis3','aaaaaaa',1,'2016-03-26 00:20:10',1,NULL,NULL);
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
  `exm_name` varchar(45) DEFAULT NULL,
  `exm_discription` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`exm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` VALUES (1,'exm1','aaaaa',3,'2016-03-26 00:20:10',1,NULL,NULL),(2,'exm2','aaaaa',3,'2016-03-26 00:20:10',1,NULL,NULL),(3,'exm3','aaaaa',3,'2016-03-26 00:20:10',1,NULL,NULL),(4,'exam1','aaaaaaaaaaa',3,'2016-04-01 11:55:07',15,'2016-04-02 15:25:49',27),(5,'exam2','aaaaaaaaaaa',3,'2016-04-01 11:59:22',27,'2016-04-02 15:25:37',27),(6,'exam3','aaaaaaaaaaa',3,'2016-04-02 14:30:43',27,'2016-04-02 14:48:07',27),(7,'exam4','aaaaaaaaaaa',3,'2016-04-02 14:32:14',27,'2016-04-02 14:58:30',27),(8,'exam3','updated',3,'2016-04-02 14:46:14',27,'2016-04-02 14:48:07',27),(9,'exam3','updated',3,'2016-04-02 14:48:07',27,NULL,NULL),(10,'exam4','updated',3,'2016-04-02 14:58:30',27,'2016-04-02 15:00:46',27),(11,'exam1','updated',3,'2016-04-02 15:25:49',27,NULL,NULL),(12,'exam4','aaaaaaaaaaa',3,'2016-04-02 15:25:57',27,NULL,NULL),(13,'exam4','aaaaaaaaaaa',3,'2016-04-02 15:33:15',27,NULL,NULL),(14,'exam44','aaaaaaaaaaa',2,'2016-04-02 15:35:43',27,NULL,NULL),(15,'exm8','aaaaaaaaaaa',2,'2016-04-02 23:35:25',27,NULL,NULL),(16,'exm9','aaaaaaaaaaa',2,'2016-04-02 23:35:45',27,NULL,NULL),(17,'exm10','aaaaaaaaaaa',2,'2016-04-02 23:36:10',27,NULL,NULL),(18,'exm1','aaaaaaaaaaa',2,'2016-04-02 23:36:41',27,NULL,NULL),(19,'exm2','aaaaaaaaaaa',2,'2016-04-02 23:36:44',27,'2016-04-02 23:39:47',27),(20,'exm3','aaaaaaaaaaa',2,'2016-04-02 23:36:47',27,'2016-04-02 23:41:28',27),(21,'exm4','aaaaaaaaaaa',3,'2016-04-02 23:36:51',27,'2016-04-02 23:41:45',27),(22,'exm5','aaaaaaaaaaa',3,'2016-04-02 23:36:55',27,'2016-04-02 23:41:50',27),(23,'exm6','aaaaaaaaaaa',2,'2016-04-02 23:36:59',27,NULL,NULL),(24,'exm7','aaaaaaaaaaa',2,'2016-04-02 23:37:03',27,NULL,NULL),(25,'exam8','aaaaaaaaaaa',2,'2016-04-02 23:38:13',27,NULL,NULL),(26,'exam7','aaaaaaaaaaa',2,'2016-04-02 23:38:21',27,NULL,NULL),(27,'exm2','updated',2,'2016-04-02 23:39:47',27,NULL,NULL),(28,'exm3','updated',2,'2016-04-02 23:41:28',27,NULL,NULL),(29,'exam41','aaaaaaaaaaa',2,'2016-04-02 23:53:26',27,NULL,NULL),(30,'exam42','aaaaaaaaaaa',2,'2016-04-02 23:53:35',27,NULL,NULL),(31,'exam43','aaaaaaaaaaa',2,'2016-04-02 23:53:39',27,NULL,NULL),(32,'exam4','aaaaaaaaaaa',2,'2016-04-02 23:56:49',27,NULL,NULL),(33,'exam4','aaaaaaaaaaa',2,'2016-04-02 23:56:55',27,NULL,NULL),(34,'exam4','aaaaaaaaaaa',2,'2016-04-02 23:57:00',27,NULL,NULL),(35,'exam4','aaaaaaaaaaa',2,'2016-04-02 23:57:26',27,NULL,NULL),(36,'exam4','aaaaaaaaaaa',2,'2016-04-02 23:58:15',27,NULL,NULL),(37,'exam4','aaaaaaaaaaa',2,'2016-04-03 00:01:49',27,NULL,NULL),(38,'exam massa','aaaaaaaaaaa',1,'2016-04-03 00:04:54',27,NULL,NULL),(39,'exam4','aaaaaaaaaaa',1,'2016-04-03 00:07:51',27,NULL,NULL),(40,'wwwww','massa exam',1,'2016-04-03 00:10:35',27,NULL,NULL),(41,'exajjj','aaaaaaaaaaa',1,'2016-04-03 00:11:47',27,NULL,NULL),(42,'qqq','aaaaaaaaaaa',2,'2016-04-03 00:14:48',27,'2016-04-03 00:16:31',27),(43,'qqqee','aaaaaaaaaaa',1,'2016-04-03 00:16:05',27,NULL,NULL),(44,'qqq','updated',3,'2016-04-03 00:16:31',27,'2016-04-03 00:16:47',27),(45,'qqqwwee','aaaaaaaaaaa',1,'2016-04-03 00:18:06',27,NULL,NULL),(46,'qqqqaaaddd','aaaaaaaaaaa',1,'2016-04-03 00:25:21',27,NULL,NULL),(47,'wwwwwkaaa','massa exam',1,'2016-04-06 09:39:11',27,NULL,NULL),(48,'wwwwwk','null',1,'2016-04-06 09:46:55',27,NULL,NULL);
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `exam_result_view`
--

DROP TABLE IF EXISTS `exam_result_view`;
/*!50001 DROP VIEW IF EXISTS `exam_result_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `exam_result_view` AS SELECT 
 1 AS `stu_id`,
 1 AS `res_exm_id`,
 1 AS `year`,
 1 AS `result`,
 1 AS `stu_exm_index_number`,
 1 AS `res_status`,
 1 AS `res_recode_added_at`,
 1 AS `res_recode_added_by`,
 1 AS `exm_exm_id`,
 1 AS `exm_name`,
 1 AS `exm_discription`,
 1 AS `exm_status`,
 1 AS `exm_recode_added_at`,
 1 AS `exm_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `farther_view`
--

DROP TABLE IF EXISTS `farther_view`;
/*!50001 DROP VIEW IF EXISTS `farther_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `farther_view` AS SELECT 
 1 AS `far_id`,
 1 AS `far_name`,
 1 AS `far_phone_number`,
 1 AS `far_adress`,
 1 AS `far_email_address`,
 1 AS `far_occupation`,
 1 AS `far_occupation _type`,
 1 AS `far_office_address`,
 1 AS `far_office_phone_number`,
 1 AS `far_stu_addmision_number`,
 1 AS `far_old_student_number`,
 1 AS `far_other_interactions_with_dp`,
 1 AS `far_status`,
 1 AS `far_recode_added_at`,
 1 AS `far_recode_added_by`,
 1 AS `occ_type_id`,
 1 AS `occ_type_name`,
 1 AS `occ_type_description`,
 1 AS `ot_status`,
 1 AS `ot_recode_added_at`,
 1 AS `ot_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

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
  `far_occupation_type` int(11) DEFAULT NULL,
  `far_office_address` varchar(45) DEFAULT NULL,
  `far_office_phone_number` varchar(45) DEFAULT NULL,
  `far_stu_addmision_number` varchar(45) DEFAULT NULL,
  `far_old_student_number` varchar(45) DEFAULT NULL,
  `far_other_interactions_with_dp` varchar(45) DEFAULT NULL,
  `far_nic` int(11) DEFAULT NULL,
  `far_tea_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`far_id`),
  KEY `occ_type_id_idx` (`far_occupation_type`),
  KEY `far_tea_id_idx` (`far_tea_id`),
  CONSTRAINT `far_tea_id` FOREIGN KEY (`far_tea_id`) REFERENCES `teacher` (`tea_id`),
  CONSTRAINT `occ_type_id` FOREIGN KEY (`far_occupation_type`) REFERENCES `occupation_type` (`occ_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `father`
--

LOCK TABLES `father` WRITE;
/*!40000 ALTER TABLE `father` DISABLE KEYS */;
INSERT INTO `father` VALUES (1,'far1','01111','123hhhh','ghasithalakmal@gmail.com','techer',1,'123aaaa','123456789',NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(2,'far2','01111','123hhhh','ghasithalakmal@gmail.com','techer',2,'123aaaa','123456789',NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(3,'far3','01111','123hhhh','ghasithalakmal@gmail.com','techer',1,'123aaaa','123456789',NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL);
/*!40000 ALTER TABLE `father` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `gr11_thurunusaviya_view`
--

DROP TABLE IF EXISTS `gr11_thurunusaviya_view`;
/*!50001 DROP VIEW IF EXISTS `gr11_thurunusaviya_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `gr11_thurunusaviya_view` AS SELECT 
 1 AS `ts11_id`,
 1 AS `year`,
 1 AS `ts11_pro_id`,
 1 AS `ts11_pro_supervisor_id`,
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
 1 AS `status`,
 1 AS `recode_added_at`,
 1 AS `recode_added_by`,
 1 AS `11proj_pro_id`,
 1 AS `11proj_pro_name`,
 1 AS `11proj_pro_discription`,
 1 AS `11proj_pro_PDF_path`,
 1 AS `11proj_pro_supervisor_id`,
 1 AS `11proj_status`,
 1 AS `11proj_recode_added_at`,
 1 AS `11proj_recode_added_by`,
 1 AS `ts11_tea_id`,
 1 AS `ts11_tea_full_name`,
 1 AS `ts11_tea_name_with_initials`,
 1 AS `ts11_tea_land_phone_number`,
 1 AS `ts11_tea_mobile_phone_number`,
 1 AS `ts11_tea_address`,
 1 AS `ts11_tea_city`,
 1 AS `ts11_lib_mem_id`,
 1 AS `ts11_status`,
 1 AS `ts11_recode_added_at`,
 1 AS `ts11_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

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
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
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
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
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
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
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
  `gur_id` int(11) NOT NULL AUTO_INCREMENT,
  `gur_name` varchar(45) NOT NULL,
  `gur_phone_number` varchar(45) DEFAULT NULL,
  `gur_adress` varchar(45) DEFAULT NULL,
  `gur_email_address` varchar(45) DEFAULT NULL,
  `gur_occupation` varchar(45) DEFAULT NULL,
  `gur_occupation _type` int(11) DEFAULT NULL,
  `gur_office_address` varchar(45) DEFAULT NULL,
  `gur_office_phone_number` varchar(45) DEFAULT NULL,
  `gar_nic` int(11) DEFAULT NULL,
  `gar_tea_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`gur_id`),
  KEY `ocu_id_idx` (`gur_occupation _type`),
  KEY `gar_tea_id_idx` (`gar_tea_id`),
  CONSTRAINT `gar_tea_id` FOREIGN KEY (`gar_tea_id`) REFERENCES `teacher` (`tea_id`),
  CONSTRAINT `ocu_id` FOREIGN KEY (`gur_occupation _type`) REFERENCES `occupation_type` (`occ_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian`
--

LOCK TABLES `guardian` WRITE;
/*!40000 ALTER TABLE `guardian` DISABLE KEYS */;
INSERT INTO `guardian` VALUES (1,'gar1','123456789','123aaaa','gha@gma.com','aaa',1,'123aaa','123456789',NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(2,'gar2','123456789','123aaaa','gha@gma.com','aaa',2,'123aaa','123456789',NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(3,'gar3','123456789','123aaaa','gha@gma.com','aaa',3,'123aaa','123456789',NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL);
/*!40000 ALTER TABLE `guardian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `guardian_view`
--

DROP TABLE IF EXISTS `guardian_view`;
/*!50001 DROP VIEW IF EXISTS `guardian_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `guardian_view` AS SELECT 
 1 AS `gur_id`,
 1 AS `gur_name`,
 1 AS `gur_phone_number`,
 1 AS `gur_adress`,
 1 AS `gur_email_address`,
 1 AS `gur_occupation`,
 1 AS `gur_occupation _type`,
 1 AS `gur_office_address`,
 1 AS `gur_office_phone_number`,
 1 AS `status`,
 1 AS `recode_added_at`,
 1 AS `recode_added_by`,
 1 AS `occ_type_id`,
 1 AS `occ_type_name`,
 1 AS `occ_type_description`,
 1 AS `ot_status`,
 1 AS `ot_recode_added_at`,
 1 AS `ot_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

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
  `mot_nic` int(11) DEFAULT NULL,
  `mot_tea_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`mot_id`),
  KEY `occ_type_detail_idx` (`mot_occupation _type`),
  KEY `mot_tea_id_idx` (`mot_tea_id`),
  CONSTRAINT `mot_tea_id` FOREIGN KEY (`mot_tea_id`) REFERENCES `teacher` (`tea_id`),
  CONSTRAINT `occ_type_detail` FOREIGN KEY (`mot_occupation _type`) REFERENCES `occupation_type` (`occ_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mother`
--

LOCK TABLES `mother` WRITE;
/*!40000 ALTER TABLE `mother` DISABLE KEYS */;
INSERT INTO `mother` VALUES (1,'mot1','123456789','123aaaa','gh@gmail','mmmm',1,'123aaa','123456789',NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(2,'mot2','123456789','123aaaa','gh@gmail','mmmm',2,'123aaa','123456789',NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(3,'mot3','123456789','123aaaa','gh@gmail','mmmm',1,'123aaa','123456789',NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL);
/*!40000 ALTER TABLE `mother` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `mother_view`
--

DROP TABLE IF EXISTS `mother_view`;
/*!50001 DROP VIEW IF EXISTS `mother_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `mother_view` AS SELECT 
 1 AS `mot_id`,
 1 AS `mot_name`,
 1 AS `mot_phone_number`,
 1 AS `mot_adress`,
 1 AS `mot_email_address`,
 1 AS `mot_occupation`,
 1 AS `mot_occupation _type`,
 1 AS `mot_office_address`,
 1 AS `mot_office_phone_number`,
 1 AS `mot_stu_addmision_number`,
 1 AS `mot_old_student_number`,
 1 AS `mot_other_interactions_with_dp`,
 1 AS `status`,
 1 AS `recode_added_at`,
 1 AS `recode_added_by`,
 1 AS `occ_type_id`,
 1 AS `occ_type_name`,
 1 AS `occ_type_description`,
 1 AS `ot_status`,
 1 AS `ot_recode_added_at`,
 1 AS `ot_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

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
-- Temporary view structure for view `np_ts_view`
--

DROP TABLE IF EXISTS `np_ts_view`;
/*!50001 DROP VIEW IF EXISTS `np_ts_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `np_ts_view` AS SELECT 
 1 AS `np_id`,
 1 AS `npts_year`,
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
 1 AS `np_evaluation_cri_40`,
 1 AS `npts_status`,
 1 AS `npts_recode_added_at`,
 1 AS `npts_recode_added_by`,
 1 AS `pro_id1`,
 1 AS `pro_name1`,
 1 AS `pro_discription1`,
 1 AS `pro_PDF_path1`,
 1 AS `pro_supervisor_id1`,
 1 AS `pro_status1`,
 1 AS `pro_recode_added_at1`,
 1 AS `pro_recode_added_by1`,
 1 AS `tea_id1`,
 1 AS `tea_full_name1`,
 1 AS `tea_name_with_initials1`,
 1 AS `tea_land_phone_number1`,
 1 AS `tea_mobile_phone_number1`,
 1 AS `tea_address1`,
 1 AS `tea_city1`,
 1 AS `tea_lib_mem_id1`,
 1 AS `tea_status1`,
 1 AS `tea_recode_added_at1`,
 1 AS `tea_recode_added_by1`,
 1 AS `pro_id2`,
 1 AS `pro_name2`,
 1 AS `pro_discription2`,
 1 AS `pro_PDF_path2`,
 1 AS `pro_supervisor_id2`,
 1 AS `pro_status2`,
 1 AS `pro_recode_added_at2`,
 1 AS `pro_recode_added_by2`,
 1 AS `tea_id2`,
 1 AS `tea_full_name2`,
 1 AS `tea_name_with_initials2`,
 1 AS `tea_land_phone_number2`,
 1 AS `tea_mobile_phone_number2`,
 1 AS `tea_address2`,
 1 AS `tea_city2`,
 1 AS `tea_lib_mem_id2`,
 1 AS `tea_status2`,
 1 AS `tea_recode_added_at2`,
 1 AS `tea_recode_added_by2`,
 1 AS `pro_id3`,
 1 AS `pro_name3`,
 1 AS `pro_discription3`,
 1 AS `pro_PDF_path3`,
 1 AS `pro_supervisor_id3`,
 1 AS `pro_status3`,
 1 AS `pro_recode_added_at3`,
 1 AS `pro_recode_added_by3`,
 1 AS `tea_id3`,
 1 AS `tea_full_name3`,
 1 AS `tea_name_with_initials3`,
 1 AS `tea_land_phone_number3`,
 1 AS `tea_mobile_phone_number3`,
 1 AS `tea_address3`,
 1 AS `tea_city3`,
 1 AS `tea_lib_mem_id3`,
 1 AS `tea_status3`,
 1 AS `tea_recode_added_at3`,
 1 AS `tea_recode_added_by3`,
 1 AS `pro_id4`,
 1 AS `pro_name4`,
 1 AS `pro_discription4`,
 1 AS `pro_PDF_path4`,
 1 AS `pro_supervisor_id4`,
 1 AS `pro_status4`,
 1 AS `pro_recode_added_at4`,
 1 AS `pro_recode_added_by4`,
 1 AS `tea_id4`,
 1 AS `tea_full_name4`,
 1 AS `tea_name_with_initials4`,
 1 AS `tea_land_phone_number4`,
 1 AS `tea_mobile_phone_number4`,
 1 AS `tea_address4`,
 1 AS `tea_city4`,
 1 AS `tea_lib_mem_id4`,
 1 AS `tea_status4`,
 1 AS `tea_recode_added_at4`,
 1 AS `tea_recode_added_by4`*/;
SET character_set_client = @saved_cs_client;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupation_type`
--

LOCK TABLES `occupation_type` WRITE;
/*!40000 ALTER TABLE `occupation_type` DISABLE KEYS */;
INSERT INTO `occupation_type` VALUES (1,'teacher','school teacher',1,'2016-03-26 00:20:10',1,NULL,NULL),(2,'Software Engineer','SE',1,'2016-03-26 00:20:10',1,NULL,NULL),(3,'police','police officer',1,'2016-03-26 00:20:10',1,NULL,NULL),(4,'coup1','massa',2,'2016-04-06 10:22:59',27,'2016-04-07 05:19:26',27),(5,'coup2','massa',1,'2016-04-06 10:41:36',27,NULL,NULL),(6,'ocu12','aaaaaaaaaaa',1,'2016-04-07 01:07:55',1,NULL,NULL),(7,'ocu14','aaaaaaaaaaa',1,'2016-04-07 01:14:32',1,NULL,NULL),(8,'ocu15','aaaaaaaaaaa',1,'2016-04-07 01:15:16',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operational_user`
--

LOCK TABLES `operational_user` WRITE;
/*!40000 ALTER TABLE `operational_user` DISABLE KEYS */;
INSERT INTO `operational_user` VALUES (1,'hasitha','$2a$10$d04ee9b3b685050aea7dauT/ipJNaosa18fQ2q71pQeGS.I9Ev8Du','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'e57598603448df03a0c99652319c6ffc',1,'2016-03-31 03:58:07',1,NULL,NULL),(2,'hasitha2','$2a$10$12b9e5760815de84017d0e83GWRasG1buLYY/pvugSEFv4ZymNyPa','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'fae91e80dcfe44c6677a1ff6c92c6422',2,'2016-03-31 03:59:10',1,'2016-04-01 05:10:48',15),(3,'hasitha3','$2a$10$29da8dfa0ea906224d27au79SUy/MfMM1SP//pqmFf6d8RM4Q.KlG','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'53bf6cfac7dfb5019d03182d932087c9',2,'2016-03-31 03:59:26',1,'2016-04-03 00:35:13',15),(4,'hasitha4','$2a$10$beae54e3281c74299b1c6uL3h7Vju.o972cqOM3xwTEGSIuqIuXre','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'614a961a70965efd7e282b0fd0a88a48',3,'2016-03-31 04:01:18',1,'2016-04-07 01:05:02',1),(5,'hasitha5','$2a$10$e476bedb1afe652f2975bOuBjv.wAZhwj4jkHa.roSmHxPXyWqX9q','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'8578beaab256c8849a16157ab5bcbc0c',1,'2016-03-31 04:03:21',1,NULL,NULL),(6,'hasitha6','$2a$10$99de69dbd7cf054b56753ujCXxujTv1jyzVIoONZj32ooD4I4X6wS','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'04205faf35b50aa0a606ff3c5bd3b134',1,'2016-03-31 04:03:55',2,NULL,NULL),(7,'hasitha7','$2a$10$ee69628d477d496511e38uKbOHw8jq2qw3wRN2D16LNNPVrqFdvw6','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'53d44c8ac5e0c464da46b87e14adc071',1,'2016-03-31 05:49:25',1,NULL,NULL),(8,'hasitha8','$2a$10$48e49283e958d6daa8057usKMeMYnzmo9C4WxSu4WB7z0RzbOlMmS','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'473e5a3c172eacbf8af938e6a5a5816a',3,'2016-03-31 07:08:25',1,'2016-04-01 05:19:33',15),(9,'hasitha9','$2a$10$bee5146a27af46ba9230duZJ/crBJqbZ/SDB/j6fFUsBJa9dUm8WS','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'e27c6f3d3c1d4682675bfe1d23910fc0',1,'2016-03-31 07:09:00',1,NULL,NULL),(10,'hasitha10','$2a$10$5247d84fde55364a41478uS9OcMzSIJujndDIgj7iRUltv2juV86K','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'5b1436444fa6a57833b459e766878d39',3,'2016-03-31 07:09:12',1,'2016-03-31 15:51:41',15),(11,'hasitha11','$2a$10$41f92a88bba4f5e5d4601u6NRyEUW4O4suGMbFBc.mV8CFnnUW0h2','hasitha lakmal','ghasithalakmal@gmail.com','0756780065',1,'3d2bcbc69b8a963d4787704f2a622efe',3,'2016-03-31 07:10:23',1,'2016-03-31 15:52:47',15),(12,'Waruni','$2a$10$bd78e15d747422952fcb0uVVlvHTXE.qrfrhM.SEO1QxhCmBqyOKG','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'94342f3a2fd2c951d0a9a8cd56f3eff0',1,'2016-03-31 07:53:48',1,NULL,NULL),(13,'Waruni2','$2a$10$86a3cca96b6b994479709uqweXtXig43Zym3MGaMwLohebhf5MerS','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'be64f260bca902302f91adcdfb1f2713',1,'2016-03-31 08:01:20',1,NULL,NULL),(14,'Waruni3','$2a$10$d6674ab645980c0e4929fuxW.stODcyY//sTuipzpYK2GEDf0phF6','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'c9b8979e4cad44c8c7dc17ccd602b867',1,'2016-03-31 08:07:38',1,NULL,NULL),(15,'Waruni4','$2a$10$8f91406ae3d642f29e38cOrQFMsTQ0MdmAfQOlYIgfgYIRfS1ZpDu','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'46157968bc86e2bd18d543864885d881',1,'2016-03-31 08:08:47',1,NULL,NULL),(16,'Waruni5','$2a$10$91e1a417969f392a6eba1Oc3LsDXho9I/ym48uprSuzXbHlUF.dUG','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'6119c2bfe9c9c56f5b376b74658a730f',1,'2016-03-31 08:12:11',1,NULL,NULL),(17,'Waruni6','$2a$10$68be338f58f04dd3dbe05uMvO0KUAw9NjsGcoos.Oh1zwZsYvsQLa','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'c5c6b8516aa974ddc0f291f7b04e7e9e',3,'2016-03-31 08:13:04',1,'2016-03-31 14:53:26',15),(18,'Waruni7','$2a$10$6e7d411a25874500f6491uXxKTOJgdFRUXEDj9tidrazbNKkvPGTa','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'86ade512c87681cdaff5a596e64b15c7',3,'2016-03-31 08:13:32',15,'2016-03-31 15:06:53',15),(19,'Waruni8','$2a$10$e77c486b713ee7c9e4ecdu9oY0brQIZBQsiRzoKbd2ynZxQEawul2','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'ae190b27059e980368c6049083eb0523',2,'2016-03-31 13:24:42',15,NULL,NULL),(22,'Waruni8','$2a$10$9b853fdb146842fa0e66eucJwJOU0sW3CRumx7iBmgRBjyknU/0zu','Waruni Samarawickrama new','warunish@gmail.com','0717584228',1,'9596b131f116207898fa4411dd900b17',2,'2016-03-31 13:31:33',15,NULL,NULL),(23,'Waruni8','$2a$10$94e23a57818d0e21ad782uBXt3oxBh/OmjPgdaBgXhYmpxFDr7r82','Waruni Samarawickrama new','warunish@gmail.com','0717584228',1,'bfd1ad25077fb3d01d7e55ce9e5d9d88',3,'2016-03-31 13:38:30',15,'2016-03-31 14:41:55',15),(24,'hasitha2','$2a$10$a10f4a19fad93063b9191eiiM3zRYM7OW1rRmeEyufLvjb4C30Hwu','aaaaaaaaa','ghasithalakmal@gmail.com','0717567855',1,'8f65cf5303781bd6e2c6a4ccf71ac0a9',2,'2016-03-31 16:18:20',15,'2016-04-01 05:10:48',15),(25,'hasitha2','$2a$10$8a4d1fc11a36b4fc147a4ui80tnIKTnM33HNUEuobQFHuLfU0L9gC','Hasitha Lakmal','ghasithalakmal@gmail.com','0756780065',1,'9c754261896170f596a3e131ecf24ef3',2,'2016-03-31 16:21:10',15,'2016-04-01 05:10:48',15),(26,'hasitha2','$2a$10$ef1c4acfe453c94103071uQ45ZlSK.uBHgDFSv3cAgQV4YaHE4sY2','Hasitha Lakmal Gamage','ghasithalakmal@gmail.com','0756780065',1,'c42569a9eb2bfd0a5757e2e5b9956694',2,'2016-03-31 16:29:48',15,'2016-04-01 05:10:48',15),(27,'ucsc1','$2a$10$981b95a7f251955879d90uTCGOoo8mD9p8loxfIpkxfnJoDtc1wyK','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'15522f5f30d795c7405c4f35237367ed',1,'2016-04-01 01:25:32',3,NULL,NULL),(28,'ucsc2','$2a$10$7440ffa7de92bded8d56bu0XnWbyg9Yu7HN2tOjIqo8.fFI5zS4/O','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'d1bb1a710754162bd5552e6cc571f9f6',1,'2016-04-01 01:29:16',3,NULL,NULL),(29,'ucsc3','$2a$10$d8cf55ae89698631106fau5p7b0beN9b75Ea5ruxBINSt4x/b2uea','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'961c1f289c4ae1c9ef9f626339099956',1,'2016-04-01 05:05:14',3,NULL,NULL),(30,'ucsc4','$2a$10$5b63ccc5255aed2a966d8u2xeOrOyDM9N2CeXXz3SEghVE2vspqLa','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'e288534cf8cf72e104359dc2da404781',1,'2016-04-01 05:05:20',3,NULL,NULL),(31,'ucsc5','$2a$10$7320817b99bee29976fb2eF2h6d22YTUgqQz/QjNgw7mDFGU7df.O','Waruni Samarawickrama','warunish@gmail.com','0717584228',1,'257911627d8fa314564073c3421cde25',1,'2016-04-01 05:05:25',3,NULL,NULL),(32,'hasitha2','$2a$10$bdda4b37d5f56b19df1bdewUbitZcTF/12Zf9gvnoVLmYFXprejCi','Hasitha Lakmal new','ghasithalakmal@gmail.com','0717584227',1,'b0f36a158b02ffc07b51901913176a34',1,'2016-04-01 05:10:48',15,NULL,NULL),(33,'Hasitha12','$2a$10$a503a142cba66b50855fcebN4BZ0B0Xakd.73vAs0j9fOcOwKEViS','Hasitha Lakmal Gamage','ghasithalakmal@gmail.com','0756780065',1,'a12493b9674cfb5bea03bdc757341555',1,'2016-04-01 05:17:53',3,NULL,NULL),(34,'Hasitha13','$2a$10$eb955fdda41001c3be4eeOG4yq7tyXd8wF3L3wwCwUUWTVS5SjWsa','Hasitha Lakmal Gamage','ghasithalakmal@gmail.com','0756780065',1,'6e3287653a2aa72c5288129ab8e36a8c',1,'2016-04-01 06:44:56',3,NULL,NULL),(35,'Hasitha15','$2a$10$9578051f3530538b3b622u077z/69IOqkaOSbpuT2kXVqtnk91TK6','Hasitha Lakmal Gamage','ghasithalakmal@gmail.com','0756780065',1,'698627760f1061bf41808c2c9120e2f5',3,'2016-04-01 09:58:36',3,'2016-04-01 10:04:28',15),(36,'Hasitha18','$2a$10$ebc34b58e033ded6c0fcbO5I04/hsbkXt5/HzUOKNI4R70ZRPVcw6','Hasitha Lakmal Gamage','ghasithalakmal@gmail.com','0756780065',1,'4b1e8d9b81b1425ee92d0dce5bf46ba7',1,'2016-04-03 00:34:43',3,NULL,NULL),(37,'hasitha3','$2a$10$94929466608d9a5672cb1OdQODEgmo5dyIk8HV3JrerOb8/KM/D/e','Hasitha Lakmal','ghasithalakmal@gmail.com','0717584227',1,'ddd6531252523af43500fff973d82b90',3,'2016-04-03 00:35:13',15,'2016-04-03 00:36:01',15);
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
-- Temporary view structure for view `prefect_report_view`
--

DROP TABLE IF EXISTS `prefect_report_view`;
/*!50001 DROP VIEW IF EXISTS `prefect_report_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `prefect_report_view` AS SELECT 
 1 AS `prf_repo_id`,
 1 AS `prf_is_prf`,
 1 AS `prf_section_id`,
 1 AS `prf_group_id`,
 1 AS `prf_possition_id`,
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
 1 AS `prf_evaluation_cri_20`,
 1 AS `pr_status`,
 1 AS `pr_recode_added_at`,
 1 AS `pr_recode_added_by`,
 1 AS `sec_id`,
 1 AS `sec_name`,
 1 AS `ps_status`,
 1 AS `ps_recode_added_at`,
 1 AS `ps_recode_added_by`,
 1 AS `pos_id`,
 1 AS `pos_name`,
 1 AS `pos_status`,
 1 AS `pos_recode_added_at`,
 1 AS `pos_recode_added_by`,
 1 AS `grp_id`,
 1 AS `grp_name`,
 1 AS `status`,
 1 AS `recode_added_at`,
 1 AS `recode_added_by`*/;
SET character_set_client = @saved_cs_client;

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
-- Temporary view structure for view `prf_tal_view_by_stu_id`
--

DROP TABLE IF EXISTS `prf_tal_view_by_stu_id`;
/*!50001 DROP VIEW IF EXISTS `prf_tal_view_by_stu_id`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `prf_tal_view_by_stu_id` AS SELECT 
 1 AS `sc_year`,
 1 AS `sc_stu_id`,
 1 AS `sc_clz_id`,
 1 AS `year`,
 1 AS `prf_repo_id`,
 1 AS `prf_tal_id`,
 1 AS `prf_tal_status`,
 1 AS `prf_tal_recode_added_at`,
 1 AS `prf_tal_recode_added_by`,
 1 AS `tal_id`,
 1 AS `tal_name`,
 1 AS `tal_status`,
 1 AS `tal_recode_added_at`,
 1 AS `tal_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `prf_talant_view`
--

DROP TABLE IF EXISTS `prf_talant_view`;
/*!50001 DROP VIEW IF EXISTS `prf_talant_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `prf_talant_view` AS SELECT 
 1 AS `year`,
 1 AS `prf_repo_id`,
 1 AS `prf_tal_id`,
 1 AS `prf_tal_status`,
 1 AS `prf_tal_recode_added_at`,
 1 AS `prf_tal_recode_added_by`,
 1 AS `tal_id`,
 1 AS `tal_name`,
 1 AS `tal_status`,
 1 AS `tal_recode_added_at`,
 1 AS `tal_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

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
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
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
-- Temporary view structure for view `project_view`
--

DROP TABLE IF EXISTS `project_view`;
/*!50001 DROP VIEW IF EXISTS `project_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `project_view` AS SELECT 
 1 AS `pro_id`,
 1 AS `pro_name`,
 1 AS `pro_discription`,
 1 AS `pro_PDF_path`,
 1 AS `pro_supervisor_id`,
 1 AS `pro_status`,
 1 AS `pro_recode_added_at`,
 1 AS `pro_recode_added_by`,
 1 AS `tea_id`,
 1 AS `tea_full_name`,
 1 AS `tea_name_with_initials`,
 1 AS `tea_land_phone_number`,
 1 AS `tea_mobile_phone_number`,
 1 AS `tea_address`,
 1 AS `tea_city`,
 1 AS `tea_lib_mem_id`,
 1 AS `tea_status`,
 1 AS `tea_recode_added_at`,
 1 AS `tea_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

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
  `rec_id` int(11) NOT NULL,
  `rec_stu_id` int(11) DEFAULT NULL,
  `rec_type_id` int(11) DEFAULT NULL,
  `rec_topic` varchar(45) DEFAULT NULL,
  `rec_discription` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`rec_id`),
  KEY `rec_type_id_idx` (`rec_type_id`),
  KEY `rec_stu_id_idx` (`rec_stu_id`),
  CONSTRAINT `rec_stu_id` FOREIGN KEY (`rec_stu_id`) REFERENCES `student` (`stu_id`),
  CONSTRAINT `rec_type_id` FOREIGN KEY (`rec_type_id`) REFERENCES `recommendation_type` (`rec_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommendation`
--

LOCK TABLES `recommendation` WRITE;
/*!40000 ALTER TABLE `recommendation` DISABLE KEYS */;
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
  `rec_type_name` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`rec_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommendation_type`
--

LOCK TABLES `recommendation_type` WRITE;
/*!40000 ALTER TABLE `recommendation_type` DISABLE KEYS */;
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
INSERT INTO `result` VALUES (1,1,2010,'A','12345',1,'2016-03-26 00:20:10',1,NULL,NULL),(1,1,2011,'A','12345',1,'2016-03-26 00:20:10',1,NULL,NULL),(1,2,2010,'A','12345',1,'2016-03-26 00:20:10',1,NULL,NULL),(1,3,2012,'A','12345',1,'2016-03-26 00:20:10',1,NULL,NULL),(2,1,2010,'A','12345',1,'2016-03-26 00:20:10',1,NULL,NULL),(2,1,2011,'A','12345',1,'2016-03-26 00:20:10',1,NULL,NULL),(2,2,2010,'A','12345',1,'2016-03-26 00:20:10',1,NULL,NULL),(2,3,2012,'A','12345',1,'2016-03-26 00:20:10',1,NULL,NULL),(3,1,2010,'A','12345',1,'2016-03-26 00:20:10',1,NULL,NULL),(3,1,2011,'A','12345',1,'2016-03-26 00:20:10',1,NULL,NULL),(3,2,2010,'A','12345',1,'2016-03-26 00:20:10',1,NULL,NULL),(3,3,2012,'A','12345',1,'2016-03-26 00:20:10',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (1,'sch1','maharagama',1,'2016-03-26 00:20:10',1,NULL,NULL),(2,'sch2','maharagama',1,'2016-03-26 00:20:10',1,NULL,NULL),(3,'sch3','piliyandala',1,'2016-03-26 00:20:10',1,NULL,NULL);
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
 1 AS `stu_id`,
 1 AS `stu_sch_id`,
 1 AS `attend_year`,
 1 AS `leave_year`,
 1 AS `stu_sch_status`,
 1 AS `stu_sch_recode_added_at`,
 1 AS `stu_sch_recode_added_by`,
 1 AS `sch_sch_id`,
 1 AS `sch_name`,
 1 AS `sch_situated_in`,
 1 AS `sch_status`,
 1 AS `sch_recode_added_at`,
 1 AS `sch_recode_added_by`*/;
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
/*!40000 ALTER TABLE `siblings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `stu_details_view`
--

DROP TABLE IF EXISTS `stu_details_view`;
/*!50001 DROP VIEW IF EXISTS `stu_details_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `stu_details_view` AS SELECT 
 1 AS `stu_id`,
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
 1 AS `father_id`,
 1 AS `mother_id`,
 1 AS `guardian_id`,
 1 AS `stu_email_address`,
 1 AS `stu_nic_number`,
 1 AS `ts_grade9_id`,
 1 AS `ts_grade10_id`,
 1 AS `ts_grade11_id`,
 1 AS `ts_np_id`,
 1 AS `lib_mem_id`,
 1 AS `status`,
 1 AS `recode_added_at`,
 1 AS `recode_added_by`,
 1 AS `far_id`,
 1 AS `far_name`,
 1 AS `far_phone_number`,
 1 AS `far_adress`,
 1 AS `far_email_address`,
 1 AS `far_occupation`,
 1 AS `far_occupation _type`,
 1 AS `far_office_address`,
 1 AS `far_office_phone_number`,
 1 AS `far_stu_addmision_number`,
 1 AS `far_old_student_number`,
 1 AS `far_other_interactions_with_dp`,
 1 AS `far_status`,
 1 AS `far_recode_added_at`,
 1 AS `far_recode_added_by`,
 1 AS `f_occ_type_id`,
 1 AS `f_occ_type_name`,
 1 AS `f_occ_type_description`,
 1 AS `f_ot_status`,
 1 AS `f_ot_recode_added_at`,
 1 AS `f_ot_recode_added_by`,
 1 AS `mot_id`,
 1 AS `mot_name`,
 1 AS `mot_phone_number`,
 1 AS `mot_adress`,
 1 AS `mot_email_address`,
 1 AS `mot_occupation`,
 1 AS `mot_occupation _type`,
 1 AS `mot_office_address`,
 1 AS `mot_office_phone_number`,
 1 AS `mot_stu_addmision_number`,
 1 AS `mot_old_student_number`,
 1 AS `mot_other_interactions_with_dp`,
 1 AS `mv_status`,
 1 AS `mv_recode_added_at`,
 1 AS `mv_recode_added_by`,
 1 AS `mv_occ_type_id`,
 1 AS `mv_occ_type_name`,
 1 AS `mv_occ_type_description`,
 1 AS `mv_ot_status`,
 1 AS `mv_ot_recode_added_at`,
 1 AS `mv_ot_recode_added_by`,
 1 AS `gur_id`,
 1 AS `gur_name`,
 1 AS `gur_phone_number`,
 1 AS `gur_adress`,
 1 AS `gur_email_address`,
 1 AS `gur_occupation`,
 1 AS `gur_occupation _type`,
 1 AS `gur_office_address`,
 1 AS `gur_office_phone_number`,
 1 AS `gv_status`,
 1 AS `gv_recode_added_at`,
 1 AS `gv_recode_added_by`,
 1 AS `gv_occ_type_id`,
 1 AS `gv_occ_type_name`,
 1 AS `gv_occ_type_description`,
 1 AS `gv_ot_status`,
 1 AS `gv_ot_recode_added_at`,
 1 AS `gv_ot_recode_added_by`,
 1 AS `ts9_id`,
 1 AS `g9ts_year`,
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
 1 AS `ts9_evaluation_cri_21`,
 1 AS `ts9_evaluation_cri_22`,
 1 AS `ts9_evaluation_cri_23`,
 1 AS `ts9_evaluation_cri_24`,
 1 AS `ts9_evaluation_cri_25`,
 1 AS `ts9_evaluation_cri_26`,
 1 AS `ts9_evaluation_cri_27`,
 1 AS `ts9_evaluation_cri_28`,
 1 AS `ts9_evaluation_cri_29`,
 1 AS `ts9_evaluation_cri_30`,
 1 AS `g9ts_status`,
 1 AS `g9ts_recode_added_at`,
 1 AS `g9ts_recode_added_by`,
 1 AS `ts10_id`,
 1 AS `g10ts_year`,
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
 1 AS `g10ts_status`,
 1 AS `g10ts_recode_added_at`,
 1 AS `g10ts_recode_added_by`,
 1 AS `ts11_id`,
 1 AS `ts11_year`,
 1 AS `ts11_pro_id`,
 1 AS `ts11_pro_supervisor_id`,
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
 1 AS `ts11_status`,
 1 AS `ts11_recode_added_at`,
 1 AS `ts11_recode_added_by`,
 1 AS `11proj_pro_id`,
 1 AS `11proj_pro_name`,
 1 AS `11proj_pro_discription`,
 1 AS `11proj_pro_PDF_path`,
 1 AS `11proj_pro_supervisor_id`,
 1 AS `11proj_status`,
 1 AS `11proj_recode_added_at`,
 1 AS `11proj_recode_added_by`,
 1 AS `ts11_tea_id`,
 1 AS `ts11_tea_full_name`,
 1 AS `ts11_tea_name_with_initials`,
 1 AS `ts11_tea_land_phone_number`,
 1 AS `ts11_tea_mobile_phone_number`,
 1 AS `ts11_tea_address`,
 1 AS `ts11_tea_city`,
 1 AS `ts11_lib_mem_id`,
 1 AS `ts11_tea_status`,
 1 AS `ts11_tea_recode_added_at`,
 1 AS `ts11_tea_recode_added_by`,
 1 AS `np_id`,
 1 AS `npts_year`,
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
 1 AS `np_evaluation_cri_40`,
 1 AS `npts_status`,
 1 AS `npts_recode_added_at`,
 1 AS `npts_recode_added_by`,
 1 AS `pro_id1`,
 1 AS `pro_name1`,
 1 AS `pro_discription1`,
 1 AS `pro_PDF_path1`,
 1 AS `pro_supervisor_id1`,
 1 AS `pro_status1`,
 1 AS `pro_recode_added_at1`,
 1 AS `pro_recode_added_by1`,
 1 AS `tea_id1`,
 1 AS `tea_full_name1`,
 1 AS `tea_name_with_initials1`,
 1 AS `tea_land_phone_number1`,
 1 AS `tea_mobile_phone_number1`,
 1 AS `tea_address1`,
 1 AS `tea_city1`,
 1 AS `tea_lib_mem_id1`,
 1 AS `tea_status1`,
 1 AS `tea_recode_added_at1`,
 1 AS `tea_recode_added_by1`,
 1 AS `pro_id2`,
 1 AS `pro_name2`,
 1 AS `pro_discription2`,
 1 AS `pro_PDF_path2`,
 1 AS `pro_supervisor_id2`,
 1 AS `pro_status2`,
 1 AS `pro_recode_added_at2`,
 1 AS `pro_recode_added_by2`,
 1 AS `tea_id2`,
 1 AS `tea_full_name2`,
 1 AS `tea_name_with_initials2`,
 1 AS `tea_land_phone_number2`,
 1 AS `tea_mobile_phone_number2`,
 1 AS `tea_address2`,
 1 AS `tea_city2`,
 1 AS `tea_lib_mem_id2`,
 1 AS `tea_status2`,
 1 AS `tea_recode_added_at2`,
 1 AS `tea_recode_added_by2`,
 1 AS `pro_id3`,
 1 AS `pro_name3`,
 1 AS `pro_discription3`,
 1 AS `pro_PDF_path3`,
 1 AS `pro_supervisor_id3`,
 1 AS `pro_status3`,
 1 AS `pro_recode_added_at3`,
 1 AS `pro_recode_added_by3`,
 1 AS `tea_id3`,
 1 AS `tea_full_name3`,
 1 AS `tea_name_with_initials3`,
 1 AS `tea_land_phone_number3`,
 1 AS `tea_mobile_phone_number3`,
 1 AS `tea_address3`,
 1 AS `tea_city3`,
 1 AS `tea_lib_mem_id3`,
 1 AS `tea_status3`,
 1 AS `tea_recode_added_at3`,
 1 AS `tea_recode_added_by3`,
 1 AS `pro_id4`,
 1 AS `pro_name4`,
 1 AS `pro_discription4`,
 1 AS `pro_PDF_path4`,
 1 AS `pro_supervisor_id4`,
 1 AS `pro_status4`,
 1 AS `pro_recode_added_at4`,
 1 AS `pro_recode_added_by4`,
 1 AS `tea_id4`,
 1 AS `tea_full_name4`,
 1 AS `tea_name_with_initials4`,
 1 AS `tea_land_phone_number4`,
 1 AS `tea_mobile_phone_number4`,
 1 AS `tea_address4`,
 1 AS `tea_city4`,
 1 AS `tea_lib_mem_id4`,
 1 AS `tea_status4`,
 1 AS `tea_recode_added_at4`,
 1 AS `tea_recode_added_by4`*/;
SET character_set_client = @saved_cs_client;

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
  `status` int(11) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  `recode_modified_at` timestamp NULL DEFAULT NULL,
  `recode_modified_by` int(11) DEFAULT NULL,
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
  KEY `gar_detail_idx` (`guardian_id`),
  CONSTRAINT `father_details` FOREIGN KEY (`father_id`) REFERENCES `father` (`far_id`),
  CONSTRAINT `gar_detail` FOREIGN KEY (`guardian_id`) REFERENCES `guardian` (`gur_id`),
  CONSTRAINT `lib_mem_id1` FOREIGN KEY (`lib_mem_id`) REFERENCES `member` (`mem_id`),
  CONSTRAINT `mother_details` FOREIGN KEY (`mother_id`) REFERENCES `mother` (`mot_id`),
  CONSTRAINT `ts10_detail` FOREIGN KEY (`ts_grade10_id`) REFERENCES `gread_10_thurunu_saviya` (`ts10_id`),
  CONSTRAINT `ts11_detail` FOREIGN KEY (`ts_grade11_id`) REFERENCES `gread_11_thurunu_saviya` (`ts11_id`),
  CONSTRAINT `ts9_detail` FOREIGN KEY (`ts_grade9_id`) REFERENCES `grade_9_thurunu_saviya` (`ts9_id`),
  CONSTRAINT `ts_np_detail` FOREIGN KEY (`ts_np_id`) REFERENCES `nirmathru_pranama_thurunu_saviya` (`np_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'00001','stu1','s1','Male','1992-06-17','123456789','123456789','123aaaa','colombo',10,1,1,1,'gm@gm.com',NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(2,'00002','stu2','s2','Male','1992-06-17','123456789','123456789','123aaaa','colombo',10,2,2,1,'gm@gm.com',NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(3,'00003','stu3','s3','Male','1992-06-17','123456789','123456789','123aaaa','colombo',10,1,1,1,'gm@gm.com',NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(4,'00004','stu4','s4','Male','1992-06-17','123456789','123456789','123aaaa','colombo',10,2,2,2,'gm@gm.com',NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL),(5,'00005','stu5','s5','Male','1992-06-17','123456789','123456789','123aaaa','colombo',10,3,3,3,'gm@gm.com',NULL,NULL,NULL,NULL,NULL,NULL,1,'2016-03-26 00:20:10',1,NULL,NULL);
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
 1 AS `sc_year`,
 1 AS `sc_stu_id`,
 1 AS `sc_clz_id`,
 1 AS `sc_clz_report_id`,
 1 AS `sc_prefect_report_id`,
 1 AS `sc_status`,
 1 AS `sc_recode_added_at`,
 1 AS `sc_recode_added_by`,
 1 AS `c_clz_id`,
 1 AS `c_clz_grade`,
 1 AS `c_clz_class`,
 1 AS `c_status`,
 1 AS `c_recode_added_at`,
 1 AS `c_recode_added_by`,
 1 AS `tc_year`,
 1 AS `tc_tec_id`,
 1 AS `tc_clz_id`,
 1 AS `tc_status`,
 1 AS `tc_recode_added_at`,
 1 AS `tc_recode_added_by`,
 1 AS `t_tea_id`,
 1 AS `tea_full_name`,
 1 AS `tea_name_with_initials`,
 1 AS `tea_land_phone_number`,
 1 AS `tea_mobile_phone_number`,
 1 AS `tea_address`,
 1 AS `tea_city`,
 1 AS `lib_mem_id`,
 1 AS `t_status`,
 1 AS `t_recode_added_at`,
 1 AS `t_recode_added_by`,
 1 AS `cr_clz_repo_id`,
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
 1 AS `clz_evaluation_cri_29`,
 1 AS `clz_evaluation_cri_30`,
 1 AS `clz_evaluation_cri_31`,
 1 AS `clz_evaluation_cri_32`,
 1 AS `clz_evaluation_cri_33`,
 1 AS `clz_evaluation_cri_34`,
 1 AS `clz_evaluation_cri_35`,
 1 AS `clz_evaluation_cri_36`,
 1 AS `clz_evaluation_cri_37`,
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
 1 AS `cr_status`,
 1 AS `cr_recode_added_at`,
 1 AS `cr_recode_added_by`,
 1 AS `prf_repo_id`,
 1 AS `prf_is_prf`,
 1 AS `prf_section_id`,
 1 AS `prf_group_id`,
 1 AS `prf_possition_id`,
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
 1 AS `prf_evaluation_cri_20`,
 1 AS `pr_status`,
 1 AS `pr_recode_added_at`,
 1 AS `pr_recode_added_by`,
 1 AS `sec_id`,
 1 AS `sec_name`,
 1 AS `ps_status`,
 1 AS `ps_recode_added_at`,
 1 AS `ps_recode_added_by`,
 1 AS `pos_id`,
 1 AS `pos_name`,
 1 AS `pos_status`,
 1 AS `pos_recode_added_at`,
 1 AS `pos_recode_added_by`,
 1 AS `grp_id`,
 1 AS `grp_name`,
 1 AS `pr_status1`,
 1 AS `pr_recode_added_at1`,
 1 AS `pr_recode_added_by1`*/;
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
INSERT INTO `student_diseases` VALUES (1,1,2015,1,'2016-03-26 00:20:10',1,NULL,NULL),(1,2,2010,1,'2016-03-26 00:20:10',1,NULL,NULL),(2,1,2015,1,'2016-03-26 00:20:10',1,NULL,NULL);
/*!40000 ALTER TABLE `student_diseases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `student_diseases_view`
--

DROP TABLE IF EXISTS `student_diseases_view`;
/*!50001 DROP VIEW IF EXISTS `student_diseases_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `student_diseases_view` AS SELECT 
 1 AS `stu_id`,
 1 AS `stu_dis_dis_id`,
 1 AS `dis_found_year`,
 1 AS `stu_dis_status`,
 1 AS `stu_dis_recode_added_at`,
 1 AS `stu_dis_recode_added_by`,
 1 AS `dis_dis_id`,
 1 AS `dis_name`,
 1 AS `dis_explanation`,
 1 AS `dis_status`,
 1 AS `dis_recode_added_at`,
 1 AS `dis_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

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
INSERT INTO `student_school` VALUES (1,1,2000,2005,1,'2016-03-26 00:20:10',1,NULL,NULL),(1,2,2005,2011,1,'2016-03-26 00:20:10',1,NULL,NULL),(2,3,2001,2010,1,'2016-03-26 00:20:10',1,NULL,NULL);
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
INSERT INTO `teacher_class` VALUES (2000,1,1,1,'2016-03-26 00:20:10',1,NULL,NULL),(2000,2,2,1,'2016-03-26 00:20:10',1,NULL,NULL),(2000,3,3,1,'2016-03-26 00:20:10',1,NULL,NULL),(2000,4,4,1,'2016-03-26 00:20:10',1,NULL,NULL),(2000,5,5,1,'2016-03-26 00:20:10',1,NULL,NULL),(2001,1,1,1,'2016-03-26 00:20:10',1,NULL,NULL),(2001,2,3,1,'2016-03-26 00:20:10',1,NULL,NULL),(2001,3,2,1,'2016-03-26 00:20:10',1,NULL,NULL),(2002,1,3,1,'2016-03-26 00:20:10',1,NULL,NULL),(2002,2,2,1,'2016-03-26 00:20:10',1,NULL,NULL);
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
-- Temporary view structure for view `techer_class_view`
--

DROP TABLE IF EXISTS `techer_class_view`;
/*!50001 DROP VIEW IF EXISTS `techer_class_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `techer_class_view` AS SELECT 
 1 AS `c_clz_id`,
 1 AS `c_clz_grade`,
 1 AS `c_clz_class`,
 1 AS `c_status`,
 1 AS `c_recode_added_at`,
 1 AS `c_recode_added_by`,
 1 AS `tc_year`,
 1 AS `tc_tec_id`,
 1 AS `tc_clz_id`,
 1 AS `tc_status`,
 1 AS `tc_recode_added_at`,
 1 AS `tc_recode_added_by`,
 1 AS `t_tea_id`,
 1 AS `tea_full_name`,
 1 AS `tea_name_with_initials`,
 1 AS `tea_land_phone_number`,
 1 AS `tea_mobile_phone_number`,
 1 AS `tea_address`,
 1 AS `tea_city`,
 1 AS `lib_mem_id`,
 1 AS `t_status`,
 1 AS `t_recode_added_at`,
 1 AS `t_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `temp_view`
--

DROP TABLE IF EXISTS `temp_view`;
/*!50001 DROP VIEW IF EXISTS `temp_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `temp_view` AS SELECT 
 1 AS `ucat_id`,
 1 AS `ucat_name`,
 1 AS `ucat_description`,
 1 AS `status`,
 1 AS `recode_added_at`,
 1 AS `recode_added_by`*/;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_category`
--

LOCK TABLES `user_category` WRITE;
/*!40000 ALTER TABLE `user_category` DISABLE KEYS */;
INSERT INTO `user_category` VALUES (1,'admin','superuser',1,'2016-03-26 00:20:10',1,NULL,NULL),(2,'R&D indcharge','Research and development unit incharge',1,'2016-04-01 05:40:36',15,NULL,NULL),(3,'Exam incharge','Exam unit incharge',1,'2016-04-01 05:41:53',15,NULL,NULL);
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
-- Dumping events for database 'svdims'
--

--
-- Dumping routines for database 'svdims'
--

--
-- Final view structure for view `exam_result_view`
--

/*!50001 DROP VIEW IF EXISTS `exam_result_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `exam_result_view` AS select `res`.`stu_id` AS `stu_id`,`res`.`exm_id` AS `res_exm_id`,`res`.`year` AS `year`,`res`.`result` AS `result`,`res`.`stu_exm_index_number` AS `stu_exm_index_number`,`res`.`status` AS `res_status`,`res`.`recode_added_at` AS `res_recode_added_at`,`res`.`recode_added_by` AS `res_recode_added_by`,`exm`.`exm_id` AS `exm_exm_id`,`exm`.`exm_name` AS `exm_name`,`exm`.`exm_discription` AS `exm_discription`,`exm`.`status` AS `exm_status`,`exm`.`recode_added_at` AS `exm_recode_added_at`,`exm`.`recode_added_by` AS `exm_recode_added_by` from (`result` `res` left join `exam` `exm` on((`exm`.`exm_id` = `res`.`exm_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `farther_view`
--

/*!50001 DROP VIEW IF EXISTS `farther_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `farther_view` AS select `f`.`far_id` AS `far_id`,`f`.`far_name` AS `far_name`,`f`.`far_phone_number` AS `far_phone_number`,`f`.`far_adress` AS `far_adress`,`f`.`far_email_address` AS `far_email_address`,`f`.`far_occupation` AS `far_occupation`,`f`.`far_occupation_type` AS `far_occupation _type`,`f`.`far_office_address` AS `far_office_address`,`f`.`far_office_phone_number` AS `far_office_phone_number`,`f`.`far_stu_addmision_number` AS `far_stu_addmision_number`,`f`.`far_old_student_number` AS `far_old_student_number`,`f`.`far_other_interactions_with_dp` AS `far_other_interactions_with_dp`,`f`.`status` AS `far_status`,`f`.`recode_added_at` AS `far_recode_added_at`,`f`.`recode_added_by` AS `far_recode_added_by`,`ot`.`occ_type_id` AS `occ_type_id`,`ot`.`occ_type_name` AS `occ_type_name`,`ot`.`occ_type_description` AS `occ_type_description`,`ot`.`status` AS `ot_status`,`ot`.`recode_added_at` AS `ot_recode_added_at`,`ot`.`recode_added_by` AS `ot_recode_added_by` from (`father` `f` left join `occupation_type` `ot` on((`f`.`far_occupation_type` = `ot`.`occ_type_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gr11_thurunusaviya_view`
--

/*!50001 DROP VIEW IF EXISTS `gr11_thurunusaviya_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gr11_thurunusaviya_view` AS select `gread_11_thurunu_saviya`.`ts11_id` AS `ts11_id`,`gread_11_thurunu_saviya`.`year` AS `year`,`gread_11_thurunu_saviya`.`ts11_pro_id` AS `ts11_pro_id`,`gread_11_thurunu_saviya`.`ts11_pro_supervisor_id` AS `ts11_pro_supervisor_id`,`gread_11_thurunu_saviya`.`ts11_daily_attendance` AS `ts11_daily_attendance`,`gread_11_thurunu_saviya`.`ts11_poya_attendance` AS `ts11_poya_attendance`,`gread_11_thurunu_saviya`.`ts11_recomendation` AS `ts11_recomendation`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_1` AS `ts11_evaluation_cri_1`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_2` AS `ts11_evaluation_cri_2`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_3` AS `ts11_evaluation_cri_3`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_4` AS `ts11_evaluation_cri_4`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_5` AS `ts11_evaluation_cri_5`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_6` AS `ts11_evaluation_cri_6`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_7` AS `ts11_evaluation_cri_7`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_8` AS `ts11_evaluation_cri_8`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_9` AS `ts11_evaluation_cri_9`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_10` AS `ts11_evaluation_cri_10`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_11` AS `ts11_evaluation_cri_11`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_12` AS `ts11_evaluation_cri_12`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_13` AS `ts11_evaluation_cri_13`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_14` AS `ts11_evaluation_cri_14`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_15` AS `ts11_evaluation_cri_15`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_16` AS `ts11_evaluation_cri_16`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_17` AS `ts11_evaluation_cri_17`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_18` AS `ts11_evaluation_cri_18`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_19` AS `ts11_evaluation_cri_19`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_20` AS `ts11_evaluation_cri_20`,`gread_11_thurunu_saviya`.`status` AS `status`,`gread_11_thurunu_saviya`.`recode_added_at` AS `recode_added_at`,`gread_11_thurunu_saviya`.`recode_added_by` AS `recode_added_by`,`project`.`pro_id` AS `11proj_pro_id`,`project`.`pro_name` AS `11proj_pro_name`,`project`.`pro_discription` AS `11proj_pro_discription`,`project`.`pro_PDF_path` AS `11proj_pro_PDF_path`,`project`.`pro_supervisor_id` AS `11proj_pro_supervisor_id`,`project`.`status` AS `11proj_status`,`project`.`recode_added_at` AS `11proj_recode_added_at`,`project`.`recode_added_by` AS `11proj_recode_added_by`,`teacher`.`tea_id` AS `ts11_tea_id`,`teacher`.`tea_full_name` AS `ts11_tea_full_name`,`teacher`.`tea_name_with_initials` AS `ts11_tea_name_with_initials`,`teacher`.`tea_land_phone_number` AS `ts11_tea_land_phone_number`,`teacher`.`tea_mobile_phone_number` AS `ts11_tea_mobile_phone_number`,`teacher`.`tea_address` AS `ts11_tea_address`,`teacher`.`tea_city` AS `ts11_tea_city`,`teacher`.`lib_mem_id` AS `ts11_lib_mem_id`,`teacher`.`status` AS `ts11_status`,`teacher`.`recode_added_at` AS `ts11_recode_added_at`,`teacher`.`recode_added_by` AS `ts11_recode_added_by` from ((`gread_11_thurunu_saviya` left join `project` on((`gread_11_thurunu_saviya`.`ts11_pro_id` = `project`.`pro_id`))) left join `teacher` on((`project`.`pro_supervisor_id` = `teacher`.`tea_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `guardian_view`
--

/*!50001 DROP VIEW IF EXISTS `guardian_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `guardian_view` AS select `g`.`gur_id` AS `gur_id`,`g`.`gur_name` AS `gur_name`,`g`.`gur_phone_number` AS `gur_phone_number`,`g`.`gur_adress` AS `gur_adress`,`g`.`gur_email_address` AS `gur_email_address`,`g`.`gur_occupation` AS `gur_occupation`,`g`.`gur_occupation _type` AS `gur_occupation _type`,`g`.`gur_office_address` AS `gur_office_address`,`g`.`gur_office_phone_number` AS `gur_office_phone_number`,`g`.`status` AS `status`,`g`.`recode_added_at` AS `recode_added_at`,`g`.`recode_added_by` AS `recode_added_by`,`ot`.`occ_type_id` AS `occ_type_id`,`ot`.`occ_type_name` AS `occ_type_name`,`ot`.`occ_type_description` AS `occ_type_description`,`ot`.`status` AS `ot_status`,`ot`.`recode_added_at` AS `ot_recode_added_at`,`ot`.`recode_added_by` AS `ot_recode_added_by` from (`guardian` `g` left join `occupation_type` `ot` on((`g`.`gur_occupation _type` = `ot`.`occ_type_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mother_view`
--

/*!50001 DROP VIEW IF EXISTS `mother_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mother_view` AS select `m`.`mot_id` AS `mot_id`,`m`.`mot_name` AS `mot_name`,`m`.`mot_phone_number` AS `mot_phone_number`,`m`.`mot_adress` AS `mot_adress`,`m`.`mot_email_address` AS `mot_email_address`,`m`.`mot_occupation` AS `mot_occupation`,`m`.`mot_occupation _type` AS `mot_occupation _type`,`m`.`mot_office_address` AS `mot_office_address`,`m`.`mot_office_phone_number` AS `mot_office_phone_number`,`m`.`mot_stu_addmision_number` AS `mot_stu_addmision_number`,`m`.`mot_old_student_number` AS `mot_old_student_number`,`m`.`mot_other_interactions_with_dp` AS `mot_other_interactions_with_dp`,`m`.`status` AS `status`,`m`.`recode_added_at` AS `recode_added_at`,`m`.`recode_added_by` AS `recode_added_by`,`ot`.`occ_type_id` AS `occ_type_id`,`ot`.`occ_type_name` AS `occ_type_name`,`ot`.`occ_type_description` AS `occ_type_description`,`ot`.`status` AS `ot_status`,`ot`.`recode_added_at` AS `ot_recode_added_at`,`ot`.`recode_added_by` AS `ot_recode_added_by` from (`mother` `m` left join `occupation_type` `ot` on((`m`.`mot_occupation _type` = `ot`.`occ_type_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `np_ts_view`
--

/*!50001 DROP VIEW IF EXISTS `np_ts_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `np_ts_view` AS select `npts`.`np_id` AS `np_id`,`npts`.`year` AS `npts_year`,`npts`.`np_pro1_id` AS `np_pro1_id`,`npts`.`np_pro2_id` AS `np_pro2_id`,`npts`.`np_pro3_id` AS `np_pro3_id`,`npts`.`np_pro4_id` AS `np_pro4_id`,`npts`.`np_daily_attendance` AS `np_daily_attendance`,`npts`.`np_poya_attendance` AS `np_poya_attendance`,`npts`.`np_recomendation` AS `np_recomendation`,`npts`.`np_evaluation_cri_1` AS `np_evaluation_cri_1`,`npts`.`np_evaluation_cri_2` AS `np_evaluation_cri_2`,`npts`.`np_evaluation_cri_3` AS `np_evaluation_cri_3`,`npts`.`np_evaluation_cri_4` AS `np_evaluation_cri_4`,`npts`.`np_evaluation_cri_5` AS `np_evaluation_cri_5`,`npts`.`np_evaluation_cri_6` AS `np_evaluation_cri_6`,`npts`.`np_evaluation_cri_7` AS `np_evaluation_cri_7`,`npts`.`np_evaluation_cri_8` AS `np_evaluation_cri_8`,`npts`.`np_evaluation_cri_9` AS `np_evaluation_cri_9`,`npts`.`np_evaluation_cri_10` AS `np_evaluation_cri_10`,`npts`.`np_evaluation_cri_11` AS `np_evaluation_cri_11`,`npts`.`np_evaluation_cri_12` AS `np_evaluation_cri_12`,`npts`.`np_evaluation_cri_13` AS `np_evaluation_cri_13`,`npts`.`np_evaluation_cri_14` AS `np_evaluation_cri_14`,`npts`.`np_evaluation_cri_15` AS `np_evaluation_cri_15`,`npts`.`np_evaluation_cri_16` AS `np_evaluation_cri_16`,`npts`.`np_evaluation_cri_17` AS `np_evaluation_cri_17`,`npts`.`np_evaluation_cri_18` AS `np_evaluation_cri_18`,`npts`.`np_evaluation_cri_19` AS `np_evaluation_cri_19`,`npts`.`np_evaluation_cri_20` AS `np_evaluation_cri_20`,`npts`.`np_evaluation_cri_21` AS `np_evaluation_cri_21`,`npts`.`np_evaluation_cri_22` AS `np_evaluation_cri_22`,`npts`.`np_evaluation_cri_23` AS `np_evaluation_cri_23`,`npts`.`np_evaluation_cri_24` AS `np_evaluation_cri_24`,`npts`.`np_evaluation_cri_25` AS `np_evaluation_cri_25`,`npts`.`np_evaluation_cri_26` AS `np_evaluation_cri_26`,`npts`.`np_evaluation_cri_27` AS `np_evaluation_cri_27`,`npts`.`np_evaluation_cri_28` AS `np_evaluation_cri_28`,`npts`.`np_evaluation_cri_29` AS `np_evaluation_cri_29`,`npts`.`np_evaluation_cri_30` AS `np_evaluation_cri_30`,`npts`.`np_evaluation_cri_31` AS `np_evaluation_cri_31`,`npts`.`np_evaluation_cri_32` AS `np_evaluation_cri_32`,`npts`.`np_evaluation_cri_33` AS `np_evaluation_cri_33`,`npts`.`np_evaluation_cri_34` AS `np_evaluation_cri_34`,`npts`.`np_evaluation_cri_35` AS `np_evaluation_cri_35`,`npts`.`np_evaluation_cri_36` AS `np_evaluation_cri_36`,`npts`.`np_evaluation_cri_37` AS `np_evaluation_cri_37`,`npts`.`np_evaluation_cri_38` AS `np_evaluation_cri_38`,`npts`.`np_evaluation_cri_39` AS `np_evaluation_cri_39`,`npts`.`np_evaluation_cri_40` AS `np_evaluation_cri_40`,`npts`.`status` AS `npts_status`,`npts`.`recode_added_at` AS `npts_recode_added_at`,`npts`.`recode_added_by` AS `npts_recode_added_by`,`p`.`pro_id` AS `pro_id1`,`p`.`pro_name` AS `pro_name1`,`p`.`pro_discription` AS `pro_discription1`,`p`.`pro_PDF_path` AS `pro_PDF_path1`,`p`.`pro_supervisor_id` AS `pro_supervisor_id1`,`p`.`pro_status` AS `pro_status1`,`p`.`pro_recode_added_at` AS `pro_recode_added_at1`,`p`.`pro_recode_added_by` AS `pro_recode_added_by1`,`p`.`tea_id` AS `tea_id1`,`p`.`tea_full_name` AS `tea_full_name1`,`p`.`tea_name_with_initials` AS `tea_name_with_initials1`,`p`.`tea_land_phone_number` AS `tea_land_phone_number1`,`p`.`tea_mobile_phone_number` AS `tea_mobile_phone_number1`,`p`.`tea_address` AS `tea_address1`,`p`.`tea_city` AS `tea_city1`,`p`.`tea_lib_mem_id` AS `tea_lib_mem_id1`,`p`.`tea_status` AS `tea_status1`,`p`.`tea_recode_added_at` AS `tea_recode_added_at1`,`p`.`tea_recode_added_by` AS `tea_recode_added_by1`,`q`.`pro_id` AS `pro_id2`,`q`.`pro_name` AS `pro_name2`,`q`.`pro_discription` AS `pro_discription2`,`q`.`pro_PDF_path` AS `pro_PDF_path2`,`q`.`pro_supervisor_id` AS `pro_supervisor_id2`,`q`.`pro_status` AS `pro_status2`,`q`.`pro_recode_added_at` AS `pro_recode_added_at2`,`q`.`pro_recode_added_by` AS `pro_recode_added_by2`,`q`.`tea_id` AS `tea_id2`,`q`.`tea_full_name` AS `tea_full_name2`,`q`.`tea_name_with_initials` AS `tea_name_with_initials2`,`q`.`tea_land_phone_number` AS `tea_land_phone_number2`,`q`.`tea_mobile_phone_number` AS `tea_mobile_phone_number2`,`q`.`tea_address` AS `tea_address2`,`q`.`tea_city` AS `tea_city2`,`q`.`tea_lib_mem_id` AS `tea_lib_mem_id2`,`q`.`tea_status` AS `tea_status2`,`q`.`tea_recode_added_at` AS `tea_recode_added_at2`,`q`.`tea_recode_added_by` AS `tea_recode_added_by2`,`r`.`pro_id` AS `pro_id3`,`r`.`pro_name` AS `pro_name3`,`r`.`pro_discription` AS `pro_discription3`,`r`.`pro_PDF_path` AS `pro_PDF_path3`,`r`.`pro_supervisor_id` AS `pro_supervisor_id3`,`r`.`pro_status` AS `pro_status3`,`r`.`pro_recode_added_at` AS `pro_recode_added_at3`,`r`.`pro_recode_added_by` AS `pro_recode_added_by3`,`r`.`tea_id` AS `tea_id3`,`r`.`tea_full_name` AS `tea_full_name3`,`r`.`tea_name_with_initials` AS `tea_name_with_initials3`,`r`.`tea_land_phone_number` AS `tea_land_phone_number3`,`r`.`tea_mobile_phone_number` AS `tea_mobile_phone_number3`,`r`.`tea_address` AS `tea_address3`,`r`.`tea_city` AS `tea_city3`,`r`.`tea_lib_mem_id` AS `tea_lib_mem_id3`,`r`.`tea_status` AS `tea_status3`,`r`.`tea_recode_added_at` AS `tea_recode_added_at3`,`r`.`tea_recode_added_by` AS `tea_recode_added_by3`,`s`.`pro_id` AS `pro_id4`,`s`.`pro_name` AS `pro_name4`,`s`.`pro_discription` AS `pro_discription4`,`s`.`pro_PDF_path` AS `pro_PDF_path4`,`s`.`pro_supervisor_id` AS `pro_supervisor_id4`,`s`.`pro_status` AS `pro_status4`,`s`.`pro_recode_added_at` AS `pro_recode_added_at4`,`s`.`pro_recode_added_by` AS `pro_recode_added_by4`,`s`.`tea_id` AS `tea_id4`,`s`.`tea_full_name` AS `tea_full_name4`,`s`.`tea_name_with_initials` AS `tea_name_with_initials4`,`s`.`tea_land_phone_number` AS `tea_land_phone_number4`,`s`.`tea_mobile_phone_number` AS `tea_mobile_phone_number4`,`s`.`tea_address` AS `tea_address4`,`s`.`tea_city` AS `tea_city4`,`s`.`tea_lib_mem_id` AS `tea_lib_mem_id4`,`s`.`tea_status` AS `tea_status4`,`s`.`tea_recode_added_at` AS `tea_recode_added_at4`,`s`.`tea_recode_added_by` AS `tea_recode_added_by4` from ((((`nirmathru_pranama_thurunu_saviya` `npts` left join `project_view` `p` on((`npts`.`np_pro1_id` = `p`.`pro_id`))) left join `project_view` `q` on((`npts`.`np_pro2_id` = `q`.`pro_id`))) left join `project_view` `r` on((`npts`.`np_pro3_id` = `r`.`pro_id`))) left join `project_view` `s` on((`npts`.`np_pro4_id` = `r`.`pro_id`))) */;
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
-- Final view structure for view `prefect_report_view`
--

/*!50001 DROP VIEW IF EXISTS `prefect_report_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prefect_report_view` AS select `pr`.`prf_repo_id` AS `prf_repo_id`,`pr`.`prf_is_prf` AS `prf_is_prf`,`pr`.`prf_section_id` AS `prf_section_id`,`pr`.`prf_group_id` AS `prf_group_id`,`pr`.`prf_possition_id` AS `prf_possition_id`,`pr`.`prf_sunday_attendence` AS `prf_sunday_attendence`,`pr`.`prf_poyaday_attendence` AS `prf_poyaday_attendence`,`pr`.`pfr_meeting_attendance` AS `pfr_meeting_attendance`,`pr`.`prf_extra_work_attendance` AS `prf_extra_work_attendance`,`pr`.`prf_evaluation_cri_1` AS `prf_evaluation_cri_1`,`pr`.`prf_evaluation_cri_2` AS `prf_evaluation_cri_2`,`pr`.`prf_evaluation_cri_3` AS `prf_evaluation_cri_3`,`pr`.`prf_evaluation_cri_4` AS `prf_evaluation_cri_4`,`pr`.`prf_evaluation_cri_5` AS `prf_evaluation_cri_5`,`pr`.`prf_evaluation_cri_6` AS `prf_evaluation_cri_6`,`pr`.`prf_evaluation_cri_7` AS `prf_evaluation_cri_7`,`pr`.`prf_evaluation_cri_8` AS `prf_evaluation_cri_8`,`pr`.`prf_evaluation_cri_9` AS `prf_evaluation_cri_9`,`pr`.`prf_evaluation_cri_10` AS `prf_evaluation_cri_10`,`pr`.`prf_evaluation_cri_11` AS `prf_evaluation_cri_11`,`pr`.`prf_evaluation_cri_12` AS `prf_evaluation_cri_12`,`pr`.`prf_evaluation_cri_13` AS `prf_evaluation_cri_13`,`pr`.`prf_evaluation_cri_14` AS `prf_evaluation_cri_14`,`pr`.`prf_evaluation_cri_15` AS `prf_evaluation_cri_15`,`pr`.`prf_evaluation_cri_16` AS `prf_evaluation_cri_16`,`pr`.`prf_evaluation_cri_17` AS `prf_evaluation_cri_17`,`pr`.`prf_evaluation_cri_18` AS `prf_evaluation_cri_18`,`pr`.`prf_evaluation_cri_19` AS `prf_evaluation_cri_19`,`pr`.`prf_evaluation_cri_20` AS `prf_evaluation_cri_20`,`pr`.`status` AS `pr_status`,`pr`.`recode_added_at` AS `pr_recode_added_at`,`pr`.`recode_added_by` AS `pr_recode_added_by`,`ps`.`sec_id` AS `sec_id`,`ps`.`sec_name` AS `sec_name`,`ps`.`status` AS `ps_status`,`ps`.`recode_added_at` AS `ps_recode_added_at`,`ps`.`recode_added_by` AS `ps_recode_added_by`,`pos`.`pos_id` AS `pos_id`,`pos`.`pos_name` AS `pos_name`,`pos`.`status` AS `pos_status`,`pos`.`recode_added_at` AS `pos_recode_added_at`,`pos`.`recode_added_by` AS `pos_recode_added_by`,`pgrp`.`grp_id` AS `grp_id`,`pgrp`.`grp_name` AS `grp_name`,`pgrp`.`status` AS `status`,`pgrp`.`recode_added_at` AS `recode_added_at`,`pgrp`.`recode_added_by` AS `recode_added_by` from (((`prefect_report` `pr` left join `prefect_section` `ps` on((`pr`.`prf_section_id` = `ps`.`sec_id`))) left join `prefect_possition` `pos` on((`pr`.`prf_possition_id` = `pos`.`pos_id`))) left join `prefect_group` `pgrp` on((`pr`.`prf_group_id` = `pgrp`.`grp_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prf_tal_view_by_stu_id`
--

/*!50001 DROP VIEW IF EXISTS `prf_tal_view_by_stu_id`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prf_tal_view_by_stu_id` AS select `student_class`.`year` AS `sc_year`,`student_class`.`stu_id` AS `sc_stu_id`,`student_class`.`clz_id` AS `sc_clz_id`,`prf_talant_view`.`year` AS `year`,`prf_talant_view`.`prf_repo_id` AS `prf_repo_id`,`prf_talant_view`.`prf_tal_id` AS `prf_tal_id`,`prf_talant_view`.`prf_tal_status` AS `prf_tal_status`,`prf_talant_view`.`prf_tal_recode_added_at` AS `prf_tal_recode_added_at`,`prf_talant_view`.`prf_tal_recode_added_by` AS `prf_tal_recode_added_by`,`prf_talant_view`.`tal_id` AS `tal_id`,`prf_talant_view`.`tal_name` AS `tal_name`,`prf_talant_view`.`tal_status` AS `tal_status`,`prf_talant_view`.`tal_recode_added_at` AS `tal_recode_added_at`,`prf_talant_view`.`tal_recode_added_by` AS `tal_recode_added_by` from ((`student_class` left join `prefect_report` on((`student_class`.`prefect_report_id` = `prefect_report`.`prf_repo_id`))) left join `prf_talant_view` on((`prefect_report`.`prf_repo_id` = `prf_talant_view`.`prf_repo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prf_talant_view`
--

/*!50001 DROP VIEW IF EXISTS `prf_talant_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prf_talant_view` AS select `prefect_talant`.`year` AS `year`,`prefect_talant`.`prf_repo_id` AS `prf_repo_id`,`prefect_talant`.`prf_tal_id` AS `prf_tal_id`,`prefect_talant`.`status` AS `prf_tal_status`,`prefect_talant`.`recode_added_at` AS `prf_tal_recode_added_at`,`prefect_talant`.`recode_added_by` AS `prf_tal_recode_added_by`,`talants`.`tal_id` AS `tal_id`,`talants`.`tal_name` AS `tal_name`,`talants`.`status` AS `tal_status`,`talants`.`recode_added_at` AS `tal_recode_added_at`,`talants`.`recode_added_by` AS `tal_recode_added_by` from (`prefect_talant` left join `talants` on((`prefect_talant`.`prf_tal_id` = `talants`.`tal_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `project_view`
--

/*!50001 DROP VIEW IF EXISTS `project_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `project_view` AS select `project`.`pro_id` AS `pro_id`,`project`.`pro_name` AS `pro_name`,`project`.`pro_discription` AS `pro_discription`,`project`.`pro_PDF_path` AS `pro_PDF_path`,`project`.`pro_supervisor_id` AS `pro_supervisor_id`,`project`.`status` AS `pro_status`,`project`.`recode_added_at` AS `pro_recode_added_at`,`project`.`recode_added_by` AS `pro_recode_added_by`,`teacher`.`tea_id` AS `tea_id`,`teacher`.`tea_full_name` AS `tea_full_name`,`teacher`.`tea_name_with_initials` AS `tea_name_with_initials`,`teacher`.`tea_land_phone_number` AS `tea_land_phone_number`,`teacher`.`tea_mobile_phone_number` AS `tea_mobile_phone_number`,`teacher`.`tea_address` AS `tea_address`,`teacher`.`tea_city` AS `tea_city`,`teacher`.`lib_mem_id` AS `tea_lib_mem_id`,`teacher`.`status` AS `tea_status`,`teacher`.`recode_added_at` AS `tea_recode_added_at`,`teacher`.`recode_added_by` AS `tea_recode_added_by` from (`project` left join `teacher` on((`project`.`pro_supervisor_id` = `teacher`.`tea_id`))) */;
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
/*!50001 VIEW `school_view` AS select `student_school`.`stu_id` AS `stu_id`,`student_school`.`sch_id` AS `stu_sch_id`,`student_school`.`attend_year` AS `attend_year`,`student_school`.`leave_year` AS `leave_year`,`student_school`.`status` AS `stu_sch_status`,`student_school`.`recode_added_at` AS `stu_sch_recode_added_at`,`student_school`.`recode_added_by` AS `stu_sch_recode_added_by`,`school`.`sch_id` AS `sch_sch_id`,`school`.`sch_name` AS `sch_name`,`school`.`sch_situated_in` AS `sch_situated_in`,`school`.`status` AS `sch_status`,`school`.`recode_added_at` AS `sch_recode_added_at`,`school`.`recode_added_by` AS `sch_recode_added_by` from (`student_school` left join `school` on((`student_school`.`sch_id` = `school`.`sch_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stu_details_view`
--

/*!50001 DROP VIEW IF EXISTS `stu_details_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stu_details_view` AS select `s`.`stu_id` AS `stu_id`,`s`.`stu_admission_number` AS `stu_admission_number`,`s`.`stu_full_name` AS `stu_full_name`,`s`.`stu_name_with_initisals` AS `stu_name_with_initisals`,`s`.`stu_gender` AS `stu_gender`,`s`.`stu_date_of_birth` AS `stu_date_of_birth`,`s`.`stu_land_phone_number` AS `stu_land_phone_number`,`s`.`stu_mobile_number` AS `stu_mobile_number`,`s`.`stu_address` AS `stu_address`,`s`.`stu_city` AS `stu_city`,`s`.`distance_to_home` AS `distance_to_home`,`s`.`father_id` AS `father_id`,`s`.`mother_id` AS `mother_id`,`s`.`guardian_id` AS `guardian_id`,`s`.`stu_email_address` AS `stu_email_address`,`s`.`stu_nic_number` AS `stu_nic_number`,`s`.`ts_grade9_id` AS `ts_grade9_id`,`s`.`ts_grade10_id` AS `ts_grade10_id`,`s`.`ts_grade11_id` AS `ts_grade11_id`,`s`.`ts_np_id` AS `ts_np_id`,`s`.`lib_mem_id` AS `lib_mem_id`,`s`.`status` AS `status`,`s`.`recode_added_at` AS `recode_added_at`,`s`.`recode_added_by` AS `recode_added_by`,`fv`.`far_id` AS `far_id`,`fv`.`far_name` AS `far_name`,`fv`.`far_phone_number` AS `far_phone_number`,`fv`.`far_adress` AS `far_adress`,`fv`.`far_email_address` AS `far_email_address`,`fv`.`far_occupation` AS `far_occupation`,`fv`.`far_occupation _type` AS `far_occupation _type`,`fv`.`far_office_address` AS `far_office_address`,`fv`.`far_office_phone_number` AS `far_office_phone_number`,`fv`.`far_stu_addmision_number` AS `far_stu_addmision_number`,`fv`.`far_old_student_number` AS `far_old_student_number`,`fv`.`far_other_interactions_with_dp` AS `far_other_interactions_with_dp`,`fv`.`far_status` AS `far_status`,`fv`.`far_recode_added_at` AS `far_recode_added_at`,`fv`.`far_recode_added_by` AS `far_recode_added_by`,`fv`.`occ_type_id` AS `f_occ_type_id`,`fv`.`occ_type_name` AS `f_occ_type_name`,`fv`.`occ_type_description` AS `f_occ_type_description`,`fv`.`ot_status` AS `f_ot_status`,`fv`.`ot_recode_added_at` AS `f_ot_recode_added_at`,`fv`.`ot_recode_added_by` AS `f_ot_recode_added_by`,`mv`.`mot_id` AS `mot_id`,`mv`.`mot_name` AS `mot_name`,`mv`.`mot_phone_number` AS `mot_phone_number`,`mv`.`mot_adress` AS `mot_adress`,`mv`.`mot_email_address` AS `mot_email_address`,`mv`.`mot_occupation` AS `mot_occupation`,`mv`.`mot_occupation _type` AS `mot_occupation _type`,`mv`.`mot_office_address` AS `mot_office_address`,`mv`.`mot_office_phone_number` AS `mot_office_phone_number`,`mv`.`mot_stu_addmision_number` AS `mot_stu_addmision_number`,`mv`.`mot_old_student_number` AS `mot_old_student_number`,`mv`.`mot_other_interactions_with_dp` AS `mot_other_interactions_with_dp`,`mv`.`status` AS `mv_status`,`mv`.`recode_added_at` AS `mv_recode_added_at`,`mv`.`recode_added_by` AS `mv_recode_added_by`,`mv`.`occ_type_id` AS `mv_occ_type_id`,`mv`.`occ_type_name` AS `mv_occ_type_name`,`mv`.`occ_type_description` AS `mv_occ_type_description`,`mv`.`ot_status` AS `mv_ot_status`,`mv`.`ot_recode_added_at` AS `mv_ot_recode_added_at`,`mv`.`ot_recode_added_by` AS `mv_ot_recode_added_by`,`gv`.`gur_id` AS `gur_id`,`gv`.`gur_name` AS `gur_name`,`gv`.`gur_phone_number` AS `gur_phone_number`,`gv`.`gur_adress` AS `gur_adress`,`gv`.`gur_email_address` AS `gur_email_address`,`gv`.`gur_occupation` AS `gur_occupation`,`gv`.`gur_occupation _type` AS `gur_occupation _type`,`gv`.`gur_office_address` AS `gur_office_address`,`gv`.`gur_office_phone_number` AS `gur_office_phone_number`,`gv`.`status` AS `gv_status`,`gv`.`recode_added_at` AS `gv_recode_added_at`,`gv`.`recode_added_by` AS `gv_recode_added_by`,`gv`.`occ_type_id` AS `gv_occ_type_id`,`gv`.`occ_type_name` AS `gv_occ_type_name`,`gv`.`occ_type_description` AS `gv_occ_type_description`,`gv`.`ot_status` AS `gv_ot_status`,`gv`.`ot_recode_added_at` AS `gv_ot_recode_added_at`,`gv`.`ot_recode_added_by` AS `gv_ot_recode_added_by`,`g9ts`.`ts9_id` AS `ts9_id`,`g9ts`.`year` AS `g9ts_year`,`g9ts`.`ts9_group` AS `ts9_group`,`g9ts`.`ts9_daily_attendance` AS `ts9_daily_attendance`,`g9ts`.`ts9_poya_attendance` AS `ts9_poya_attendance`,`g9ts`.`ts9_recomendation` AS `ts9_recomendation`,`g9ts`.`ts9_evaluation_cri_1` AS `ts9_evaluation_cri_1`,`g9ts`.`ts9_evaluation_cri_2` AS `ts9_evaluation_cri_2`,`g9ts`.`ts9_evaluation_cri_3` AS `ts9_evaluation_cri_3`,`g9ts`.`ts9_evaluation_cri_4` AS `ts9_evaluation_cri_4`,`g9ts`.`ts9_evaluation_cri_5` AS `ts9_evaluation_cri_5`,`g9ts`.`ts9_evaluation_cri_6` AS `ts9_evaluation_cri_6`,`g9ts`.`ts9_evaluation_cri_7` AS `ts9_evaluation_cri_7`,`g9ts`.`ts9_evaluation_cri_8` AS `ts9_evaluation_cri_8`,`g9ts`.`ts9_evaluation_cri_9` AS `ts9_evaluation_cri_9`,`g9ts`.`ts9_evaluation_cri_10` AS `ts9_evaluation_cri_10`,`g9ts`.`ts9_evaluation_cri_11` AS `ts9_evaluation_cri_11`,`g9ts`.`ts9_evaluation_cri_12` AS `ts9_evaluation_cri_12`,`g9ts`.`ts9_evaluation_cri_13` AS `ts9_evaluation_cri_13`,`g9ts`.`ts9_evaluation_cri_14` AS `ts9_evaluation_cri_14`,`g9ts`.`ts9_evaluation_cri_15` AS `ts9_evaluation_cri_15`,`g9ts`.`ts9_evaluation_cri_16` AS `ts9_evaluation_cri_16`,`g9ts`.`ts9_evaluation_cri_17` AS `ts9_evaluation_cri_17`,`g9ts`.`ts9_evaluation_cri_18` AS `ts9_evaluation_cri_18`,`g9ts`.`ts9_evaluation_cri_19` AS `ts9_evaluation_cri_19`,`g9ts`.`ts9_evaluation_cri_20` AS `ts9_evaluation_cri_20`,`g9ts`.`ts9_evaluation_cri_21` AS `ts9_evaluation_cri_21`,`g9ts`.`ts9_evaluation_cri_22` AS `ts9_evaluation_cri_22`,`g9ts`.`ts9_evaluation_cri_23` AS `ts9_evaluation_cri_23`,`g9ts`.`ts9_evaluation_cri_24` AS `ts9_evaluation_cri_24`,`g9ts`.`ts9_evaluation_cri_25` AS `ts9_evaluation_cri_25`,`g9ts`.`ts9_evaluation_cri_26` AS `ts9_evaluation_cri_26`,`g9ts`.`ts9_evaluation_cri_27` AS `ts9_evaluation_cri_27`,`g9ts`.`ts9_evaluation_cri_28` AS `ts9_evaluation_cri_28`,`g9ts`.`ts9_evaluation_cri_29` AS `ts9_evaluation_cri_29`,`g9ts`.`ts9_evaluation_cri_30` AS `ts9_evaluation_cri_30`,`g9ts`.`status` AS `g9ts_status`,`g9ts`.`recode_added_at` AS `g9ts_recode_added_at`,`g9ts`.`recode_added_by` AS `g9ts_recode_added_by`,`g10ts`.`ts10_id` AS `ts10_id`,`g10ts`.`year` AS `g10ts_year`,`g10ts`.`ts10_group` AS `ts10_group`,`g10ts`.`ts10_daily_attendance` AS `ts10_daily_attendance`,`g10ts`.`ts10_poya_attendance` AS `ts10_poya_attendance`,`g10ts`.`ts10_recomendation` AS `ts10_recomendation`,`g10ts`.`ts10_evaluation_cri_1` AS `ts10_evaluation_cri_1`,`g10ts`.`ts10_evaluation_cri_2` AS `ts10_evaluation_cri_2`,`g10ts`.`ts10_evaluation_cri_3` AS `ts10_evaluation_cri_3`,`g10ts`.`ts10_evaluation_cri_4` AS `ts10_evaluation_cri_4`,`g10ts`.`ts10_evaluation_cri_5` AS `ts10_evaluation_cri_5`,`g10ts`.`ts10_evaluation_cri_6` AS `ts10_evaluation_cri_6`,`g10ts`.`ts10_evaluation_cri_7` AS `ts10_evaluation_cri_7`,`g10ts`.`ts10_evaluation_cri_8` AS `ts10_evaluation_cri_8`,`g10ts`.`ts10_evaluation_cri_9` AS `ts10_evaluation_cri_9`,`g10ts`.`ts10_evaluation_cri_10` AS `ts10_evaluation_cri_10`,`g10ts`.`ts10_evaluation_cri_11` AS `ts10_evaluation_cri_11`,`g10ts`.`ts10_evaluation_cri_12` AS `ts10_evaluation_cri_12`,`g10ts`.`ts10_evaluation_cri_13` AS `ts10_evaluation_cri_13`,`g10ts`.`ts10_evaluation_cri_14` AS `ts10_evaluation_cri_14`,`g10ts`.`ts10_evaluation_cri_15` AS `ts10_evaluation_cri_15`,`g10ts`.`ts10_evaluation_cri_16` AS `ts10_evaluation_cri_16`,`g10ts`.`ts10_evaluation_cri_17` AS `ts10_evaluation_cri_17`,`g10ts`.`ts10_evaluation_cri_18` AS `ts10_evaluation_cri_18`,`g10ts`.`ts10_evaluation_cri_19` AS `ts10_evaluation_cri_19`,`g10ts`.`ts10_evaluation_cri_20` AS `ts10_evaluation_cri_20`,`g10ts`.`ts10_evaluation_cri_21` AS `ts10_evaluation_cri_21`,`g10ts`.`ts10_evaluation_cri_22` AS `ts10_evaluation_cri_22`,`g10ts`.`ts10_evaluation_cri_23` AS `ts10_evaluation_cri_23`,`g10ts`.`ts10_evaluation_cri_24` AS `ts10_evaluation_cri_24`,`g10ts`.`ts10_evaluation_cri_25` AS `ts10_evaluation_cri_25`,`g10ts`.`ts10_evaluation_cri_26` AS `ts10_evaluation_cri_26`,`g10ts`.`ts10_evaluation_cri_27` AS `ts10_evaluation_cri_27`,`g10ts`.`ts10_evaluation_cri_28` AS `ts10_evaluation_cri_28`,`g10ts`.`ts10_evaluation_cri_29` AS `ts10_evaluation_cri_29`,`g10ts`.`ts10_evaluation_cri_30` AS `ts10_evaluation_cri_30`,`g10ts`.`status` AS `g10ts_status`,`g10ts`.`recode_added_at` AS `g10ts_recode_added_at`,`g10ts`.`recode_added_by` AS `g10ts_recode_added_by`,`gr11ts`.`ts11_id` AS `ts11_id`,`gr11ts`.`year` AS `ts11_year`,`gr11ts`.`ts11_pro_id` AS `ts11_pro_id`,`gr11ts`.`ts11_pro_supervisor_id` AS `ts11_pro_supervisor_id`,`gr11ts`.`ts11_daily_attendance` AS `ts11_daily_attendance`,`gr11ts`.`ts11_poya_attendance` AS `ts11_poya_attendance`,`gr11ts`.`ts11_recomendation` AS `ts11_recomendation`,`gr11ts`.`ts11_evaluation_cri_1` AS `ts11_evaluation_cri_1`,`gr11ts`.`ts11_evaluation_cri_2` AS `ts11_evaluation_cri_2`,`gr11ts`.`ts11_evaluation_cri_3` AS `ts11_evaluation_cri_3`,`gr11ts`.`ts11_evaluation_cri_4` AS `ts11_evaluation_cri_4`,`gr11ts`.`ts11_evaluation_cri_5` AS `ts11_evaluation_cri_5`,`gr11ts`.`ts11_evaluation_cri_6` AS `ts11_evaluation_cri_6`,`gr11ts`.`ts11_evaluation_cri_7` AS `ts11_evaluation_cri_7`,`gr11ts`.`ts11_evaluation_cri_8` AS `ts11_evaluation_cri_8`,`gr11ts`.`ts11_evaluation_cri_9` AS `ts11_evaluation_cri_9`,`gr11ts`.`ts11_evaluation_cri_10` AS `ts11_evaluation_cri_10`,`gr11ts`.`ts11_evaluation_cri_11` AS `ts11_evaluation_cri_11`,`gr11ts`.`ts11_evaluation_cri_12` AS `ts11_evaluation_cri_12`,`gr11ts`.`ts11_evaluation_cri_13` AS `ts11_evaluation_cri_13`,`gr11ts`.`ts11_evaluation_cri_14` AS `ts11_evaluation_cri_14`,`gr11ts`.`ts11_evaluation_cri_15` AS `ts11_evaluation_cri_15`,`gr11ts`.`ts11_evaluation_cri_16` AS `ts11_evaluation_cri_16`,`gr11ts`.`ts11_evaluation_cri_17` AS `ts11_evaluation_cri_17`,`gr11ts`.`ts11_evaluation_cri_18` AS `ts11_evaluation_cri_18`,`gr11ts`.`ts11_evaluation_cri_19` AS `ts11_evaluation_cri_19`,`gr11ts`.`ts11_evaluation_cri_20` AS `ts11_evaluation_cri_20`,`gr11ts`.`status` AS `ts11_status`,`gr11ts`.`recode_added_at` AS `ts11_recode_added_at`,`gr11ts`.`recode_added_by` AS `ts11_recode_added_by`,`gr11ts`.`11proj_pro_id` AS `11proj_pro_id`,`gr11ts`.`11proj_pro_name` AS `11proj_pro_name`,`gr11ts`.`11proj_pro_discription` AS `11proj_pro_discription`,`gr11ts`.`11proj_pro_PDF_path` AS `11proj_pro_PDF_path`,`gr11ts`.`11proj_pro_supervisor_id` AS `11proj_pro_supervisor_id`,`gr11ts`.`11proj_status` AS `11proj_status`,`gr11ts`.`11proj_recode_added_at` AS `11proj_recode_added_at`,`gr11ts`.`11proj_recode_added_by` AS `11proj_recode_added_by`,`gr11ts`.`ts11_tea_id` AS `ts11_tea_id`,`gr11ts`.`ts11_tea_full_name` AS `ts11_tea_full_name`,`gr11ts`.`ts11_tea_name_with_initials` AS `ts11_tea_name_with_initials`,`gr11ts`.`ts11_tea_land_phone_number` AS `ts11_tea_land_phone_number`,`gr11ts`.`ts11_tea_mobile_phone_number` AS `ts11_tea_mobile_phone_number`,`gr11ts`.`ts11_tea_address` AS `ts11_tea_address`,`gr11ts`.`ts11_tea_city` AS `ts11_tea_city`,`gr11ts`.`ts11_lib_mem_id` AS `ts11_lib_mem_id`,`gr11ts`.`ts11_status` AS `ts11_tea_status`,`gr11ts`.`ts11_recode_added_at` AS `ts11_tea_recode_added_at`,`gr11ts`.`ts11_recode_added_by` AS `ts11_tea_recode_added_by`,`npts`.`np_id` AS `np_id`,`npts`.`npts_year` AS `npts_year`,`npts`.`np_pro1_id` AS `np_pro1_id`,`npts`.`np_pro2_id` AS `np_pro2_id`,`npts`.`np_pro3_id` AS `np_pro3_id`,`npts`.`np_pro4_id` AS `np_pro4_id`,`npts`.`np_daily_attendance` AS `np_daily_attendance`,`npts`.`np_poya_attendance` AS `np_poya_attendance`,`npts`.`np_recomendation` AS `np_recomendation`,`npts`.`np_evaluation_cri_1` AS `np_evaluation_cri_1`,`npts`.`np_evaluation_cri_2` AS `np_evaluation_cri_2`,`npts`.`np_evaluation_cri_3` AS `np_evaluation_cri_3`,`npts`.`np_evaluation_cri_4` AS `np_evaluation_cri_4`,`npts`.`np_evaluation_cri_5` AS `np_evaluation_cri_5`,`npts`.`np_evaluation_cri_6` AS `np_evaluation_cri_6`,`npts`.`np_evaluation_cri_7` AS `np_evaluation_cri_7`,`npts`.`np_evaluation_cri_8` AS `np_evaluation_cri_8`,`npts`.`np_evaluation_cri_9` AS `np_evaluation_cri_9`,`npts`.`np_evaluation_cri_10` AS `np_evaluation_cri_10`,`npts`.`np_evaluation_cri_11` AS `np_evaluation_cri_11`,`npts`.`np_evaluation_cri_12` AS `np_evaluation_cri_12`,`npts`.`np_evaluation_cri_13` AS `np_evaluation_cri_13`,`npts`.`np_evaluation_cri_14` AS `np_evaluation_cri_14`,`npts`.`np_evaluation_cri_15` AS `np_evaluation_cri_15`,`npts`.`np_evaluation_cri_16` AS `np_evaluation_cri_16`,`npts`.`np_evaluation_cri_17` AS `np_evaluation_cri_17`,`npts`.`np_evaluation_cri_18` AS `np_evaluation_cri_18`,`npts`.`np_evaluation_cri_19` AS `np_evaluation_cri_19`,`npts`.`np_evaluation_cri_20` AS `np_evaluation_cri_20`,`npts`.`np_evaluation_cri_21` AS `np_evaluation_cri_21`,`npts`.`np_evaluation_cri_22` AS `np_evaluation_cri_22`,`npts`.`np_evaluation_cri_23` AS `np_evaluation_cri_23`,`npts`.`np_evaluation_cri_24` AS `np_evaluation_cri_24`,`npts`.`np_evaluation_cri_25` AS `np_evaluation_cri_25`,`npts`.`np_evaluation_cri_26` AS `np_evaluation_cri_26`,`npts`.`np_evaluation_cri_27` AS `np_evaluation_cri_27`,`npts`.`np_evaluation_cri_28` AS `np_evaluation_cri_28`,`npts`.`np_evaluation_cri_29` AS `np_evaluation_cri_29`,`npts`.`np_evaluation_cri_30` AS `np_evaluation_cri_30`,`npts`.`np_evaluation_cri_31` AS `np_evaluation_cri_31`,`npts`.`np_evaluation_cri_32` AS `np_evaluation_cri_32`,`npts`.`np_evaluation_cri_33` AS `np_evaluation_cri_33`,`npts`.`np_evaluation_cri_34` AS `np_evaluation_cri_34`,`npts`.`np_evaluation_cri_35` AS `np_evaluation_cri_35`,`npts`.`np_evaluation_cri_36` AS `np_evaluation_cri_36`,`npts`.`np_evaluation_cri_37` AS `np_evaluation_cri_37`,`npts`.`np_evaluation_cri_38` AS `np_evaluation_cri_38`,`npts`.`np_evaluation_cri_39` AS `np_evaluation_cri_39`,`npts`.`np_evaluation_cri_40` AS `np_evaluation_cri_40`,`npts`.`npts_status` AS `npts_status`,`npts`.`npts_recode_added_at` AS `npts_recode_added_at`,`npts`.`npts_recode_added_by` AS `npts_recode_added_by`,`npts`.`pro_id1` AS `pro_id1`,`npts`.`pro_name1` AS `pro_name1`,`npts`.`pro_discription1` AS `pro_discription1`,`npts`.`pro_PDF_path1` AS `pro_PDF_path1`,`npts`.`pro_supervisor_id1` AS `pro_supervisor_id1`,`npts`.`pro_status1` AS `pro_status1`,`npts`.`pro_recode_added_at1` AS `pro_recode_added_at1`,`npts`.`pro_recode_added_by1` AS `pro_recode_added_by1`,`npts`.`tea_id1` AS `tea_id1`,`npts`.`tea_full_name1` AS `tea_full_name1`,`npts`.`tea_name_with_initials1` AS `tea_name_with_initials1`,`npts`.`tea_land_phone_number1` AS `tea_land_phone_number1`,`npts`.`tea_mobile_phone_number1` AS `tea_mobile_phone_number1`,`npts`.`tea_address1` AS `tea_address1`,`npts`.`tea_city1` AS `tea_city1`,`npts`.`tea_lib_mem_id1` AS `tea_lib_mem_id1`,`npts`.`tea_status1` AS `tea_status1`,`npts`.`tea_recode_added_at1` AS `tea_recode_added_at1`,`npts`.`tea_recode_added_by1` AS `tea_recode_added_by1`,`npts`.`pro_id2` AS `pro_id2`,`npts`.`pro_name2` AS `pro_name2`,`npts`.`pro_discription2` AS `pro_discription2`,`npts`.`pro_PDF_path2` AS `pro_PDF_path2`,`npts`.`pro_supervisor_id2` AS `pro_supervisor_id2`,`npts`.`pro_status2` AS `pro_status2`,`npts`.`pro_recode_added_at2` AS `pro_recode_added_at2`,`npts`.`pro_recode_added_by2` AS `pro_recode_added_by2`,`npts`.`tea_id2` AS `tea_id2`,`npts`.`tea_full_name2` AS `tea_full_name2`,`npts`.`tea_name_with_initials2` AS `tea_name_with_initials2`,`npts`.`tea_land_phone_number2` AS `tea_land_phone_number2`,`npts`.`tea_mobile_phone_number2` AS `tea_mobile_phone_number2`,`npts`.`tea_address2` AS `tea_address2`,`npts`.`tea_city2` AS `tea_city2`,`npts`.`tea_lib_mem_id2` AS `tea_lib_mem_id2`,`npts`.`tea_status2` AS `tea_status2`,`npts`.`tea_recode_added_at2` AS `tea_recode_added_at2`,`npts`.`tea_recode_added_by2` AS `tea_recode_added_by2`,`npts`.`pro_id3` AS `pro_id3`,`npts`.`pro_name3` AS `pro_name3`,`npts`.`pro_discription3` AS `pro_discription3`,`npts`.`pro_PDF_path3` AS `pro_PDF_path3`,`npts`.`pro_supervisor_id3` AS `pro_supervisor_id3`,`npts`.`pro_status3` AS `pro_status3`,`npts`.`pro_recode_added_at3` AS `pro_recode_added_at3`,`npts`.`pro_recode_added_by3` AS `pro_recode_added_by3`,`npts`.`tea_id3` AS `tea_id3`,`npts`.`tea_full_name3` AS `tea_full_name3`,`npts`.`tea_name_with_initials3` AS `tea_name_with_initials3`,`npts`.`tea_land_phone_number3` AS `tea_land_phone_number3`,`npts`.`tea_mobile_phone_number3` AS `tea_mobile_phone_number3`,`npts`.`tea_address3` AS `tea_address3`,`npts`.`tea_city3` AS `tea_city3`,`npts`.`tea_lib_mem_id3` AS `tea_lib_mem_id3`,`npts`.`tea_status3` AS `tea_status3`,`npts`.`tea_recode_added_at3` AS `tea_recode_added_at3`,`npts`.`tea_recode_added_by3` AS `tea_recode_added_by3`,`npts`.`pro_id4` AS `pro_id4`,`npts`.`pro_name4` AS `pro_name4`,`npts`.`pro_discription4` AS `pro_discription4`,`npts`.`pro_PDF_path4` AS `pro_PDF_path4`,`npts`.`pro_supervisor_id4` AS `pro_supervisor_id4`,`npts`.`pro_status4` AS `pro_status4`,`npts`.`pro_recode_added_at4` AS `pro_recode_added_at4`,`npts`.`pro_recode_added_by4` AS `pro_recode_added_by4`,`npts`.`tea_id4` AS `tea_id4`,`npts`.`tea_full_name4` AS `tea_full_name4`,`npts`.`tea_name_with_initials4` AS `tea_name_with_initials4`,`npts`.`tea_land_phone_number4` AS `tea_land_phone_number4`,`npts`.`tea_mobile_phone_number4` AS `tea_mobile_phone_number4`,`npts`.`tea_address4` AS `tea_address4`,`npts`.`tea_city4` AS `tea_city4`,`npts`.`tea_lib_mem_id4` AS `tea_lib_mem_id4`,`npts`.`tea_status4` AS `tea_status4`,`npts`.`tea_recode_added_at4` AS `tea_recode_added_at4`,`npts`.`tea_recode_added_by4` AS `tea_recode_added_by4` from (((((((`student` `s` left join `farther_view` `fv` on((`s`.`father_id` = `fv`.`far_id`))) left join `mother_view` `mv` on((`s`.`mother_id` = `mv`.`mot_id`))) left join `guardian_view` `gv` on((`s`.`guardian_id` = `gv`.`gur_id`))) left join `grade_9_thurunu_saviya` `g9ts` on((`s`.`ts_grade9_id` = `g9ts`.`ts9_id`))) left join `gread_10_thurunu_saviya` `g10ts` on((`s`.`ts_grade10_id` = `g10ts`.`ts10_id`))) left join `gr11_thurunusaviya_view` `gr11ts` on((`s`.`ts_grade11_id` = `gr11ts`.`ts11_id`))) left join `np_ts_view` `npts` on((`s`.`ts_np_id` = `npts`.`np_id`))) */;
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
/*!50001 VIEW `student_class_view` AS select `sc`.`year` AS `sc_year`,`sc`.`stu_id` AS `sc_stu_id`,`sc`.`clz_id` AS `sc_clz_id`,`sc`.`clz_report_id` AS `sc_clz_report_id`,`sc`.`prefect_report_id` AS `sc_prefect_report_id`,`sc`.`status` AS `sc_status`,`sc`.`recode_added_at` AS `sc_recode_added_at`,`sc`.`recode_added_by` AS `sc_recode_added_by`,`tcv`.`c_clz_id` AS `c_clz_id`,`tcv`.`c_clz_grade` AS `c_clz_grade`,`tcv`.`c_clz_class` AS `c_clz_class`,`tcv`.`c_status` AS `c_status`,`tcv`.`c_recode_added_at` AS `c_recode_added_at`,`tcv`.`c_recode_added_by` AS `c_recode_added_by`,`tcv`.`tc_year` AS `tc_year`,`tcv`.`tc_tec_id` AS `tc_tec_id`,`tcv`.`tc_clz_id` AS `tc_clz_id`,`tcv`.`tc_status` AS `tc_status`,`tcv`.`tc_recode_added_at` AS `tc_recode_added_at`,`tcv`.`tc_recode_added_by` AS `tc_recode_added_by`,`tcv`.`t_tea_id` AS `t_tea_id`,`tcv`.`tea_full_name` AS `tea_full_name`,`tcv`.`tea_name_with_initials` AS `tea_name_with_initials`,`tcv`.`tea_land_phone_number` AS `tea_land_phone_number`,`tcv`.`tea_mobile_phone_number` AS `tea_mobile_phone_number`,`tcv`.`tea_address` AS `tea_address`,`tcv`.`tea_city` AS `tea_city`,`tcv`.`lib_mem_id` AS `lib_mem_id`,`tcv`.`t_status` AS `t_status`,`tcv`.`t_recode_added_at` AS `t_recode_added_at`,`tcv`.`t_recode_added_by` AS `t_recode_added_by`,`cr`.`clz_repo_id` AS `cr_clz_repo_id`,`cr`.`clz_evaluation_cri_1` AS `clz_evaluation_cri_1`,`cr`.`clz_evaluation_cri_2` AS `clz_evaluation_cri_2`,`cr`.`clz_evaluation_cri_3` AS `clz_evaluation_cri_3`,`cr`.`clz_evaluation_cri_4` AS `clz_evaluation_cri_4`,`cr`.`clz_evaluation_cri_5` AS `clz_evaluation_cri_5`,`cr`.`clz_evaluation_cri_6` AS `clz_evaluation_cri_6`,`cr`.`clz_evaluation_cri_7` AS `clz_evaluation_cri_7`,`cr`.`clz_evaluation_cri_8` AS `clz_evaluation_cri_8`,`cr`.`clz_evaluation_cri_9` AS `clz_evaluation_cri_9`,`cr`.`clz_evaluation_cri_10` AS `clz_evaluation_cri_10`,`cr`.`clz_evaluation_cri_11` AS `clz_evaluation_cri_11`,`cr`.`clz_evaluation_cri_12` AS `clz_evaluation_cri_12`,`cr`.`clz_evaluation_cri_13` AS `clz_evaluation_cri_13`,`cr`.`clz_evaluation_cri_14` AS `clz_evaluation_cri_14`,`cr`.`clz_evaluation_cri_15` AS `clz_evaluation_cri_15`,`cr`.`clz_evaluation_cri_16` AS `clz_evaluation_cri_16`,`cr`.`clz_evaluation_cri_17` AS `clz_evaluation_cri_17`,`cr`.`clz_evaluation_cri_18` AS `clz_evaluation_cri_18`,`cr`.`clz_evaluation_cri_19` AS `clz_evaluation_cri_19`,`cr`.`clz_evaluation_cri_20` AS `clz_evaluation_cri_20`,`cr`.`clz_evaluation_cri_21` AS `clz_evaluation_cri_21`,`cr`.`clz_evaluation_cri_22` AS `clz_evaluation_cri_22`,`cr`.`clz_evaluation_cri_23` AS `clz_evaluation_cri_23`,`cr`.`clz_evaluation_cri_24` AS `clz_evaluation_cri_24`,`cr`.`clz_evaluation_cri_25` AS `clz_evaluation_cri_25`,`cr`.`clz_evaluation_cri_26` AS `clz_evaluation_cri_26`,`cr`.`clz_evaluation_cri_27` AS `clz_evaluation_cri_27`,`cr`.`clz_evaluation_cri_29` AS `clz_evaluation_cri_29`,`cr`.`clz_evaluation_cri_30` AS `clz_evaluation_cri_30`,`cr`.`clz_evaluation_cri_31` AS `clz_evaluation_cri_31`,`cr`.`clz_evaluation_cri_32` AS `clz_evaluation_cri_32`,`cr`.`clz_evaluation_cri_33` AS `clz_evaluation_cri_33`,`cr`.`clz_evaluation_cri_34` AS `clz_evaluation_cri_34`,`cr`.`clz_evaluation_cri_35` AS `clz_evaluation_cri_35`,`cr`.`clz_evaluation_cri_36` AS `clz_evaluation_cri_36`,`cr`.`clz_evaluation_cri_37` AS `clz_evaluation_cri_37`,`cr`.`clz_evaluation_cri_39` AS `clz_evaluation_cri_39`,`cr`.`clz_evaluation_cri_40` AS `clz_evaluation_cri_40`,`cr`.`clz_evaluation_cri_41` AS `clz_evaluation_cri_41`,`cr`.`clz_evaluation_cri_42` AS `clz_evaluation_cri_42`,`cr`.`clz_evaluation_cri_43` AS `clz_evaluation_cri_43`,`cr`.`clz_evaluation_cri_44` AS `clz_evaluation_cri_44`,`cr`.`clz_evaluation_cri_45` AS `clz_evaluation_cri_45`,`cr`.`clz_evaluation_cri_46` AS `clz_evaluation_cri_46`,`cr`.`clz_evaluation_cri_47` AS `clz_evaluation_cri_47`,`cr`.`clz_evaluation_cri_48` AS `clz_evaluation_cri_48`,`cr`.`clz_evaluation_cri_49` AS `clz_evaluation_cri_49`,`cr`.`clz_evaluation_cri_50` AS `clz_evaluation_cri_50`,`cr`.`clz_evaluation_cri_51` AS `clz_evaluation_cri_51`,`cr`.`clz_evaluation_cri_52` AS `clz_evaluation_cri_52`,`cr`.`clz_evaluation_cri_53` AS `clz_evaluation_cri_53`,`cr`.`clz_evaluation_cri_54` AS `clz_evaluation_cri_54`,`cr`.`clz_evaluation_cri_55` AS `clz_evaluation_cri_55`,`cr`.`clz_evaluation_cri_56` AS `clz_evaluation_cri_56`,`cr`.`clz_evaluation_cri_57` AS `clz_evaluation_cri_57`,`cr`.`clz_evaluation_cri_58` AS `clz_evaluation_cri_58`,`cr`.`clz_evaluation_cri_59` AS `clz_evaluation_cri_59`,`cr`.`clz_evaluation_cri_60` AS `clz_evaluation_cri_60`,`cr`.`clz_evaluation_cri_61` AS `clz_evaluation_cri_61`,`cr`.`clz_evaluation_cri_62` AS `clz_evaluation_cri_62`,`cr`.`clz_evaluation_cri_63` AS `clz_evaluation_cri_63`,`cr`.`clz_evaluation_cri_64` AS `clz_evaluation_cri_64`,`cr`.`clz_evaluation_cri_65` AS `clz_evaluation_cri_65`,`cr`.`clz_evaluation_cri_66` AS `clz_evaluation_cri_66`,`cr`.`clz_evaluation_cri_67` AS `clz_evaluation_cri_67`,`cr`.`clz_evaluation_cri_68` AS `clz_evaluation_cri_68`,`cr`.`clz_evaluation_cri_69` AS `clz_evaluation_cri_69`,`cr`.`clz_evaluation_cri_70` AS `clz_evaluation_cri_70`,`cr`.`clz_evaluation_cri_71` AS `clz_evaluation_cri_71`,`cr`.`clz_evaluation_cri_72` AS `clz_evaluation_cri_72`,`cr`.`clz_evaluation_cri_73` AS `clz_evaluation_cri_73`,`cr`.`clz_evaluation_cri_74` AS `clz_evaluation_cri_74`,`cr`.`clz_evaluation_cri_75` AS `clz_evaluation_cri_75`,`cr`.`clz_evaluation_cri_76` AS `clz_evaluation_cri_76`,`cr`.`clz_evaluation_cri_77` AS `clz_evaluation_cri_77`,`cr`.`clz_evaluation_cri_78` AS `clz_evaluation_cri_78`,`cr`.`clz_evaluation_cri_79` AS `clz_evaluation_cri_79`,`cr`.`clz_evaluation_cri_80` AS `clz_evaluation_cri_80`,`cr`.`status` AS `cr_status`,`cr`.`recode_added_at` AS `cr_recode_added_at`,`cr`.`recode_added_by` AS `cr_recode_added_by`,`pr`.`prf_repo_id` AS `prf_repo_id`,`pr`.`prf_is_prf` AS `prf_is_prf`,`pr`.`prf_section_id` AS `prf_section_id`,`pr`.`prf_group_id` AS `prf_group_id`,`pr`.`prf_possition_id` AS `prf_possition_id`,`pr`.`prf_sunday_attendence` AS `prf_sunday_attendence`,`pr`.`prf_poyaday_attendence` AS `prf_poyaday_attendence`,`pr`.`pfr_meeting_attendance` AS `pfr_meeting_attendance`,`pr`.`prf_extra_work_attendance` AS `prf_extra_work_attendance`,`pr`.`prf_evaluation_cri_1` AS `prf_evaluation_cri_1`,`pr`.`prf_evaluation_cri_2` AS `prf_evaluation_cri_2`,`pr`.`prf_evaluation_cri_3` AS `prf_evaluation_cri_3`,`pr`.`prf_evaluation_cri_4` AS `prf_evaluation_cri_4`,`pr`.`prf_evaluation_cri_5` AS `prf_evaluation_cri_5`,`pr`.`prf_evaluation_cri_6` AS `prf_evaluation_cri_6`,`pr`.`prf_evaluation_cri_7` AS `prf_evaluation_cri_7`,`pr`.`prf_evaluation_cri_8` AS `prf_evaluation_cri_8`,`pr`.`prf_evaluation_cri_9` AS `prf_evaluation_cri_9`,`pr`.`prf_evaluation_cri_10` AS `prf_evaluation_cri_10`,`pr`.`prf_evaluation_cri_11` AS `prf_evaluation_cri_11`,`pr`.`prf_evaluation_cri_12` AS `prf_evaluation_cri_12`,`pr`.`prf_evaluation_cri_13` AS `prf_evaluation_cri_13`,`pr`.`prf_evaluation_cri_14` AS `prf_evaluation_cri_14`,`pr`.`prf_evaluation_cri_15` AS `prf_evaluation_cri_15`,`pr`.`prf_evaluation_cri_16` AS `prf_evaluation_cri_16`,`pr`.`prf_evaluation_cri_17` AS `prf_evaluation_cri_17`,`pr`.`prf_evaluation_cri_18` AS `prf_evaluation_cri_18`,`pr`.`prf_evaluation_cri_19` AS `prf_evaluation_cri_19`,`pr`.`prf_evaluation_cri_20` AS `prf_evaluation_cri_20`,`pr`.`pr_status` AS `pr_status`,`pr`.`pr_recode_added_at` AS `pr_recode_added_at`,`pr`.`pr_recode_added_by` AS `pr_recode_added_by`,`pr`.`sec_id` AS `sec_id`,`pr`.`sec_name` AS `sec_name`,`pr`.`ps_status` AS `ps_status`,`pr`.`ps_recode_added_at` AS `ps_recode_added_at`,`pr`.`ps_recode_added_by` AS `ps_recode_added_by`,`pr`.`pos_id` AS `pos_id`,`pr`.`pos_name` AS `pos_name`,`pr`.`pos_status` AS `pos_status`,`pr`.`pos_recode_added_at` AS `pos_recode_added_at`,`pr`.`pos_recode_added_by` AS `pos_recode_added_by`,`pr`.`grp_id` AS `grp_id`,`pr`.`grp_name` AS `grp_name`,`pr`.`status` AS `pr_status1`,`pr`.`recode_added_at` AS `pr_recode_added_at1`,`pr`.`recode_added_by` AS `pr_recode_added_by1` from (((`student_class` `sc` left join `techer_class_view` `tcv` on(((`sc`.`year` = `tcv`.`tc_year`) and (`sc`.`clz_id` = `tcv`.`c_clz_id`)))) left join `class_report` `cr` on((`sc`.`clz_report_id` = `cr`.`clz_repo_id`))) left join `prefect_report_view` `pr` on((`sc`.`prefect_report_id` = `pr`.`prf_repo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_diseases_view`
--

/*!50001 DROP VIEW IF EXISTS `student_diseases_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_diseases_view` AS select `stud`.`stu_id` AS `stu_id`,`stud`.`dis_id` AS `stu_dis_dis_id`,`stud`.`dis_found_year` AS `dis_found_year`,`stud`.`status` AS `stu_dis_status`,`stud`.`recode_added_at` AS `stu_dis_recode_added_at`,`stud`.`recode_added_by` AS `stu_dis_recode_added_by`,`d`.`dis_id` AS `dis_dis_id`,`d`.`dis_name` AS `dis_name`,`d`.`dis_explanation` AS `dis_explanation`,`d`.`status` AS `dis_status`,`d`.`recode_added_at` AS `dis_recode_added_at`,`d`.`recode_added_by` AS `dis_recode_added_by` from (`student_diseases` `stud` left join `diseases` `d` on((`stud`.`dis_id` = `d`.`dis_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `techer_class_view`
--

/*!50001 DROP VIEW IF EXISTS `techer_class_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `techer_class_view` AS select `c`.`clz_id` AS `c_clz_id`,`c`.`clz_grade` AS `c_clz_grade`,`c`.`clz_class` AS `c_clz_class`,`c`.`status` AS `c_status`,`c`.`recode_added_at` AS `c_recode_added_at`,`c`.`recode_added_by` AS `c_recode_added_by`,`tc`.`year` AS `tc_year`,`tc`.`tec_id` AS `tc_tec_id`,`tc`.`clz_id` AS `tc_clz_id`,`tc`.`status` AS `tc_status`,`tc`.`recode_added_at` AS `tc_recode_added_at`,`tc`.`recode_added_by` AS `tc_recode_added_by`,`t`.`tea_id` AS `t_tea_id`,`t`.`tea_full_name` AS `tea_full_name`,`t`.`tea_name_with_initials` AS `tea_name_with_initials`,`t`.`tea_land_phone_number` AS `tea_land_phone_number`,`t`.`tea_mobile_phone_number` AS `tea_mobile_phone_number`,`t`.`tea_address` AS `tea_address`,`t`.`tea_city` AS `tea_city`,`t`.`lib_mem_id` AS `lib_mem_id`,`t`.`status` AS `t_status`,`t`.`recode_added_at` AS `t_recode_added_at`,`t`.`recode_added_by` AS `t_recode_added_by` from ((`class` `c` left join `teacher_class` `tc` on((`c`.`clz_id` = `tc`.`clz_id`))) left join `teacher` `t` on((`tc`.`tec_id` = `t`.`tea_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `temp_view`
--

/*!50001 DROP VIEW IF EXISTS `temp_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `temp_view` AS select `user_category`.`ucat_id` AS `ucat_id`,`user_category`.`ucat_name` AS `ucat_name`,`user_category`.`ucat_description` AS `ucat_description`,`user_category`.`status` AS `status`,`user_category`.`recode_added_at` AS `recode_added_at`,`user_category`.`recode_added_by` AS `recode_added_by` from `user_category` */;
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

-- Dump completed on 2016-04-07 12:50:54
