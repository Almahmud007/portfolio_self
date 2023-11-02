-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: in_portfolio
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add about',7,'add_about'),(26,'Can change about',7,'change_about'),(27,'Can delete about',7,'delete_about'),(28,'Can view about',7,'view_about'),(29,'Can add inter',8,'add_inter'),(30,'Can change inter',8,'change_inter'),(31,'Can delete inter',8,'delete_inter'),(32,'Can view inter',8,'view_inter'),(33,'Can add experience',9,'add_experience'),(34,'Can change experience',9,'change_experience'),(35,'Can delete experience',9,'delete_experience'),(36,'Can view experience',9,'view_experience'),(37,'Can add education',10,'add_education'),(38,'Can change education',10,'change_education'),(39,'Can delete education',10,'delete_education'),(40,'Can view education',10,'view_education'),(41,'Can add awr_ cer',11,'add_awr_cer'),(42,'Can change awr_ cer',11,'change_awr_cer'),(43,'Can delete awr_ cer',11,'delete_awr_cer'),(44,'Can view awr_ cer',11,'view_awr_cer'),(45,'Can add skills',12,'add_skills'),(46,'Can change skills',12,'change_skills'),(47,'Can delete skills',12,'delete_skills'),(48,'Can view skills',12,'view_skills'),(49,'Can add image',13,'add_image'),(50,'Can change image',13,'change_image'),(51,'Can delete image',13,'delete_image'),(52,'Can view image',13,'view_image');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'port_app','about'),(11,'port_app','awr_cer'),(10,'port_app','education'),(9,'port_app','experience'),(13,'port_app','image'),(8,'port_app','inter'),(12,'port_app','skills'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-10-31 11:18:27.242695'),(2,'auth','0001_initial','2023-10-31 11:18:27.634483'),(3,'admin','0001_initial','2023-10-31 11:18:27.727892'),(4,'admin','0002_logentry_remove_auto_add','2023-10-31 11:18:27.736444'),(5,'admin','0003_logentry_add_action_flag_choices','2023-10-31 11:18:27.749759'),(6,'contenttypes','0002_remove_content_type_name','2023-10-31 11:18:27.810674'),(7,'auth','0002_alter_permission_name_max_length','2023-10-31 11:18:27.853560'),(8,'auth','0003_alter_user_email_max_length','2023-10-31 11:18:27.882460'),(9,'auth','0004_alter_user_username_opts','2023-10-31 11:18:27.897096'),(10,'auth','0005_alter_user_last_login_null','2023-10-31 11:18:27.936424'),(11,'auth','0006_require_contenttypes_0002','2023-10-31 11:18:27.944905'),(12,'auth','0007_alter_validators_add_error_messages','2023-10-31 11:18:27.955294'),(13,'auth','0008_alter_user_username_max_length','2023-10-31 11:18:28.010170'),(14,'auth','0009_alter_user_last_name_max_length','2023-10-31 11:18:28.064302'),(15,'auth','0010_alter_group_name_max_length','2023-10-31 11:18:28.083920'),(16,'auth','0011_update_proxy_permissions','2023-10-31 11:18:28.097383'),(17,'auth','0012_alter_user_first_name_max_length','2023-10-31 11:18:28.145771'),(18,'port_app','0001_initial','2023-10-31 11:18:28.163171'),(19,'sessions','0001_initial','2023-10-31 11:18:28.187005'),(20,'port_app','0002_inter','2023-10-31 11:51:38.575446'),(21,'port_app','0003_remove_inter_inter_date','2023-10-31 12:07:28.874526'),(22,'port_app','0004_experience','2023-10-31 12:25:01.655372'),(23,'port_app','0005_education','2023-10-31 13:18:25.855517'),(24,'port_app','0006_awr_cer','2023-10-31 14:14:14.490512'),(25,'port_app','0007_skills','2023-10-31 20:00:32.558831'),(26,'port_app','0008_rename_pt_1_skills_plt_1','2023-10-31 20:09:37.071915'),(27,'port_app','0009_image_remove_about_image','2023-10-31 21:11:01.194172');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `port_app_about`
--

DROP TABLE IF EXISTS `port_app_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `port_app_about` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` longtext,
  `about` longtext,
  `linkedin` varchar(200) DEFAULT NULL,
  `github` varchar(200) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `facebook` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `port_app_about`
--

LOCK TABLES `port_app_about` WRITE;
/*!40000 ALTER TABLE `port_app_about` DISABLE KEYS */;
INSERT INTO `port_app_about` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Md. Abdullah','Al Mahmud','shaowntxt@gmail.com','01711124221','474/1 South Kafrul\r\nKachukhet, Cantonment, Dhaka','<p>To work for an organization where I am in a position of responsibility and will able to utilize my skills and experience to commit myself for achieving organizational goals and targets with efficiently and successfully. Being energetic, I believe in effective hard work, I also like to face challenges, which shows how dynamic I am.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Another text is here.</p>\r\n','https://bd.linkedin.com/','https://github.com/Almahmud007','https://twitter.com/','https://facebook.com/');
/*!40000 ALTER TABLE `port_app_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `port_app_awr_cer`
--

DROP TABLE IF EXISTS `port_app_awr_cer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `port_app_awr_cer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `AC_1` varchar(255) DEFAULT NULL,
  `AC_2` varchar(255) DEFAULT NULL,
  `AC_3` varchar(255) DEFAULT NULL,
  `AC_4` varchar(255) DEFAULT NULL,
  `AC_5` varchar(255) DEFAULT NULL,
  `AC_6` varchar(255) DEFAULT NULL,
  `AC_7` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `port_app_awr_cer`
--

LOCK TABLES `port_app_awr_cer` WRITE;
/*!40000 ALTER TABLE `port_app_awr_cer` DISABLE KEYS */;
INSERT INTO `port_app_awr_cer` VALUES (1,'Secondary School Certificate (SSC)','Higher Secondary School Certificate (HSC)','B.Sc. in Textile Engineering','MBA in Textile Management','Data Science','','');
/*!40000 ALTER TABLE `port_app_awr_cer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `port_app_education`
--

DROP TABLE IF EXISTS `port_app_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `port_app_education` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `edu_inst_1` varchar(255) DEFAULT NULL,
  `edu_dept_1` varchar(255) DEFAULT NULL,
  `edu_deg_1` varchar(255) DEFAULT NULL,
  `edu_gpa_1` varchar(255) DEFAULT NULL,
  `edu_std_1` date DEFAULT NULL,
  `edu_end_1` date DEFAULT NULL,
  `edu_inst_2` varchar(255) DEFAULT NULL,
  `edu_dept_2` varchar(255) DEFAULT NULL,
  `edu_deg_2` varchar(255) DEFAULT NULL,
  `edu_gpa_2` varchar(255) DEFAULT NULL,
  `edu_std_2` date DEFAULT NULL,
  `edu_end_2` date DEFAULT NULL,
  `edu_inst_3` varchar(255) DEFAULT NULL,
  `edu_dept_3` varchar(255) DEFAULT NULL,
  `edu_deg_3` varchar(255) DEFAULT NULL,
  `edu_gpa_3` varchar(255) DEFAULT NULL,
  `edu_std_3` date DEFAULT NULL,
  `edu_end_3` date DEFAULT NULL,
  `edu_inst_4` varchar(255) DEFAULT NULL,
  `edu_dept_4` varchar(255) DEFAULT NULL,
  `edu_deg_4` varchar(255) DEFAULT NULL,
  `edu_gpa_4` varchar(255) DEFAULT NULL,
  `edu_std_4` date DEFAULT NULL,
  `edu_end_4` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `port_app_education`
--

LOCK TABLES `port_app_education` WRITE;
/*!40000 ALTER TABLE `port_app_education` DISABLE KEYS */;
INSERT INTO `port_app_education` VALUES (1,'Border Guard Public School Jashore','Science Group','Secondary School Certificate (SSC)','4.25','2004-01-01','2006-05-10','BAF Shaheen College, Jashore',NULL,'Higher Secondary School Certificate (HSC)','3.80','2006-06-15','2008-10-15','Primeasia University','Department of Textile Engineering','BSC in Textile Engineering','3.14','2009-12-01','2013-08-31','Bangladesh University of Textile','Textile Mangement','MBA in Textile Management','3.13',NULL,NULL),(2,'Rifles School Jashore','Science Group','Secondary School Certificate(SSC)','4.25',NULL,NULL,'BAF Shaheen College, Jashore','Science','Higher Secondary School Certificate (HSC)','3.80',NULL,NULL,'Primeasia University','Department of Textile Engineering','BSC in Textile Engineering','3.14',NULL,NULL,'Bangladesh University of Textile','Textile Mangement','MBA in Textile Management','3.13',NULL,NULL);
/*!40000 ALTER TABLE `port_app_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `port_app_experience`
--

DROP TABLE IF EXISTS `port_app_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `port_app_experience` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `job_pos_1` varchar(255) DEFAULT NULL,
  `company_nam_1` varchar(255) DEFAULT NULL,
  `start_date_1` date DEFAULT NULL,
  `end_date_1` date DEFAULT NULL,
  `job_respo_1` longtext,
  `job_pos_2` varchar(255) DEFAULT NULL,
  `company_nam_2` varchar(255) DEFAULT NULL,
  `start_date_2` date DEFAULT NULL,
  `end_date_2` date DEFAULT NULL,
  `job_respo_2` longtext,
  `job_pos_3` varchar(255) DEFAULT NULL,
  `company_nam_3` varchar(255) DEFAULT NULL,
  `start_date_3` date DEFAULT NULL,
  `end_date_3` date DEFAULT NULL,
  `job_respo_3` longtext,
  `job_pos_4` varchar(255) DEFAULT NULL,
  `company_nam_4` varchar(255) DEFAULT NULL,
  `start_date_4` date DEFAULT NULL,
  `end_date_4` date DEFAULT NULL,
  `job_respo_4` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `port_app_experience`
--

LOCK TABLES `port_app_experience` WRITE;
/*!40000 ALTER TABLE `port_app_experience` DISABLE KEYS */;
INSERT INTO `port_app_experience` VALUES (1,'Development Officer ( Wet process- R&D)','Radisson Washing Plant Limited.','2023-11-01','2023-11-02','','Merchandiser (Development)','Youngone Hi-Tech Sportswear Ind. Ltd.','2017-11-01','2020-01-01','<p><u><strong>Area of Responsibility:</strong></u></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:12px\">Handle More than 85 styles in the area of development at the team.</span></li>\r\n	<li><span style=\"font-size:12px\">Product Development- Woven and knitwear for Men&rsquo;s, Ladie&rsquo;s and Kid&rsquo;s</span></li>\r\n	<li><span style=\"font-size:12px\">Material arrange for sample.&bull;Garments sample follow up to meet the lead time.</span></li>\r\n	<li><span style=\"font-size:12px\">Communication with YOK regarding product development.</span></li>\r\n	<li><span style=\"font-size:12px\">Prepare costing sheet.</span></li>\r\n	<li><span style=\"font-size:12px\">Preparing material list for bulk production order.</span></li>\r\n	<li><span style=\"font-size:12px\">AMC (Costing file) file creation for SAP system.</span></li>\r\n	<li><span style=\"font-size:12px\">SO (Sales order) code creation in SAP for payment, martial issue, profit calculation.</span></li>\r\n	<li><span style=\"font-size:12px\">Attend Preproduction meeting.</span></li>\r\n	<li><span style=\"font-size:12px\">Random quality checking and report to YOK Team.</span></li>\r\n	<li><span style=\"font-size:12px\">Follow up all the issues regarding Development.</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:12px\">Adding some text</span></p>\r\n','Sr. Merchandiser (Development & Production)','DK Company A/S (Bangladesh Liaison Office)','2023-08-08',NULL,'<p><span style=\"font-size:12px\">Following Brand:Previous- Men&rsquo;s Brand- Blend , Casual Friday, Matinique and FQ//1924. </span></p>\r\n\r\n<p><span style=\"font-size:12px\">Turn Over- 6 Million yearly</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Product Type: Denim and Non Denim Tops and Bottom for Men&#39;s.</span></p>\r\n\r\n<p><span style=\"font-size:12px\"><u><strong>Area of Responsibility:</strong></u></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:12px\">All types of important communication with our Denmark Team for smooth business operation and meet the company goal.</span></li>\r\n	<li><span style=\"font-size:12px\">Price negotiation with Garment vendor as per target.</span></li>\r\n	<li><span style=\"font-size:12px\">All types of important communication with our vendor.</span></li>\r\n	<li><span style=\"font-size:12px\">Develop new vendor to source better product in competitive price.</span></li>\r\n	<li><span style=\"font-size:12px\">Collect and develop inspiration sample by following trend and new idea.</span></li>\r\n	<li><span style=\"font-size:12px\">Participate all the meeting when colleagues are come from Denmark for buying meeting.</span></li>\r\n	<li><span style=\"font-size:12px\">SMS and order placement to the right vendor based on price and product.</span></li>\r\n	<li><span style=\"font-size:12px\">Handle TT payment for SMS and LC/Sales contact for bulk production.</span></li>\r\n	<li><span style=\"font-size:12px\">Follow-up SMS program and production for six different seasons.</span></li>\r\n	<li><span style=\"font-size:12px\">Follow up material in house for both SMS and Production.</span></li>\r\n	<li><span style=\"font-size:12px\">Follow up for running SMS and production to meet the deadline.</span></li>\r\n	<li><span style=\"font-size:12px\">Follow up all the required approval for production.</span></li>\r\n	<li><span style=\"font-size:12px\">Fabric, Trim and Accessories approval for bulk production.</span></li>\r\n	<li><span style=\"font-size:12px\">Final quality and wash approval for both in production and SMS.</span></li>\r\n	<li><span style=\"font-size:12px\">Handling claim issue if arise.</span></li>\r\n</ul>\r\n','','',NULL,NULL,'');
/*!40000 ALTER TABLE `port_app_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `port_app_image`
--

DROP TABLE IF EXISTS `port_app_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `port_app_image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `port_app_image`
--

LOCK TABLES `port_app_image` WRITE;
/*!40000 ALTER TABLE `port_app_image` DISABLE KEYS */;
INSERT INTO `port_app_image` VALUES (1,'images/115364568_5hKgtLw.jpeg'),(2,'images/download.jpeg'),(3,'images/115364568_PnR9nKO.jpeg');
/*!40000 ALTER TABLE `port_app_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `port_app_inter`
--

DROP TABLE IF EXISTS `port_app_inter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `port_app_inter` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Interests` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `port_app_inter`
--

LOCK TABLES `port_app_inter` WRITE;
/*!40000 ALTER TABLE `port_app_inter` DISABLE KEYS */;
INSERT INTO `port_app_inter` VALUES (1,'<p>asdfsadf</p>\r\n'),(2,'<p>asdfsdf</p>\r\n'),(3,'<ul>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Web development and AI</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Technology with their intution.</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Traveling across the country and outside the country.</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Playing cricket and football.</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Reading books.</span></span></li>\r\n</ul>\r\n');
/*!40000 ALTER TABLE `port_app_inter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `port_app_skills`
--

DROP TABLE IF EXISTS `port_app_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `port_app_skills` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `plt_1` varchar(100) DEFAULT NULL,
  `plt_2` varchar(100) DEFAULT NULL,
  `plt_3` varchar(100) DEFAULT NULL,
  `plt_4` varchar(100) DEFAULT NULL,
  `plt_5` varchar(100) DEFAULT NULL,
  `plt_6` varchar(100) DEFAULT NULL,
  `plt_7` varchar(100) DEFAULT NULL,
  `plt_8` varchar(100) DEFAULT NULL,
  `plt_9` varchar(100) DEFAULT NULL,
  `plt_10` varchar(100) DEFAULT NULL,
  `workflow` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `port_app_skills`
--

LOCK TABLES `port_app_skills` WRITE;
/*!40000 ALTER TABLE `port_app_skills` DISABLE KEYS */;
INSERT INTO `port_app_skills` VALUES (1,'icons/icons8-html-48.png','icons/icons8-html-48_SFslhso.png','','','','','','','','','<ul>\r\n	<li><span style=\"font-size:14px\">Mobile-First, Responsive Design</span></li>\r\n	<li><span style=\"font-size:14px\">Cross Browser Testing &amp; Debugging</span></li>\r\n	<li><span style=\"font-size:14px\">Cross Functional Teams</span></li>\r\n	<li><span style=\"font-size:14px\">Agile Development &amp; Scrum</span></li>\r\n</ul>\r\n'),(2,'icons/icons8-html-48_1_UfxDpnH.png','icons/icons8-html-48_pPukbEM.png','icons/icons8-java-script-64_PY5KGw1.png','icons/icons8-django-48_VbRc2to.png','icons/icons8-pandas-48_hXySu4j.png','icons/icons8-html-48_PpFKCIi.png','','','','','<ul>\r\n	<li><span style=\"font-size:16px\">Mobile-First, Responsive Design</span></li>\r\n	<li><span style=\"font-size:16px\">Cross Browser Testing &amp; Debugging</span></li>\r\n	<li><span style=\"font-size:16px\">Cross Functional Teams</span></li>\r\n	<li><span style=\"font-size:16px\">Agile Development &amp; Scrum</span></li>\r\n</ul>\r\n');
/*!40000 ALTER TABLE `port_app_skills` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-02 15:51:49
