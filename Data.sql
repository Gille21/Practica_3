-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: piproyecto
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `api_computer`
--

DROP TABLE IF EXISTS `api_computer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_computer` (
  `id_computer` bigint NOT NULL AUTO_INCREMENT,
  `tip_computador` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `modelo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `marca` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tip_memoria` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cap_memoria` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `put_memoria` bigint DEFAULT NULL,
  `tip_disco` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cap_disco` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `put_disco` bigint DEFAULT NULL,
  `grafica` tinyint(1) NOT NULL,
  `tip_grafica` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cap_grafica` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `put_grafica` bigint NOT NULL,
  `procesador` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `vel_procesador` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `put_procesador` bigint NOT NULL,
  `sistema_operativo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `costo` decimal(10,0) DEFAULT NULL,
  `proposito` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tienda` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_computer`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_computer`
--

LOCK TABLES `api_computer` WRITE;
/*!40000 ALTER TABLE `api_computer` DISABLE KEYS */;
INSERT INTO `api_computer` VALUES (1,'Portatil','CYBORG 15 A12VF','MSI','DDR5','8 GB',NULL,'SSD NVME','512 GB',NULL,1,'GeForce RTX 4060 Laptop','8 GB',18323,'Intel Core I7 12650h','‎4,7 GHz',23679,NULL,6696000,'Gamer','https://clonesyperifericos.com/comprar/72887/','files/covers/PORTATIL-MSI-CYBORG-15-A12VF-1.webp'),(2,'Portatil','L14 Gen 2','Lenovo','DDR4','12 GB',NULL,'SSD PCIe','512 GB',NULL,1,'Intel Iris Xe','1 GB',2685,'Intel Core i5-1135G7','‎2,4 GHz',9921,'Windows 11',2356761,'Trabajo','https://www.amazon.com/L14-Bussiness-antirreflejo-accesorios-incluidos/dp/B0C83PRBP4/ref=sr_1_2_sspa?adgrpid=79519763698&currency=COP&hvadid=602470407598&hvdev=c&hvlocphy=1003659&hvnetw=g&hvqmt=e&hvrand=6537600193264708550&hvtargid=kwd-11149391&hydadcr=26503_11703977&keywords=thinkpad&qid=1694918020&sr=8-2-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&th=1',NULL),(3,'Portatil','Ef2524la','HP','DDR4','8 GB',NULL,'SSD PCIe','512 GB',NULL,1,'Intel Iris Xe','1 GB',2443,'Intel Core i5-1135G7','‎2,4 GHz',13180,'Windows 11',1999000,'Trabajo','https://www.alkosto.com/computador-portatil-hp-156-pulgadas-ef2524la-amd-r5-ram-8gb-disco-ssd-512-gb-plateado-natural/p/197497269369',NULL);
/*!40000 ALTER TABLE `api_computer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Empieza aqui la actualización de la base de datos
-- Table structure for table `auth_api_usuarioapp`
--

DROP TABLE IF EXISTS `auth_api_usuarioapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_api_usuarioapp` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `user_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_api_usuarioapp`
--

LOCK TABLES `auth_api_usuarioapp` WRITE;
/*!40000 ALTER TABLE `auth_api_usuarioapp` DISABLE KEYS */;
INSERT INTO `auth_api_usuarioapp` VALUES ('pbkdf2_sha256$600000$O0RhKHwiGrOF6H1jeDeUoR$wojf6bg2QbwpiSXEaXsVq2D/2qnyrS2ncPIpvjzodO0=','2023-10-22 23:06:37.914680',1,1,'admin@gmail.com','',1,1),('pbkdf2_sha256$600000$zTVsS1N8pbIdsmIATclkFP$GqdE64oomNKJzkeCJQYOB6kesiEa7O5a7ydZa2ZGQLw=','2023-10-23 01:28:47.606675',0,2,'jduitamap@ucentral.edu.co','JuanesDev',1,1),('pbkdf2_sha256$600000$uO6jOVGh1kmWwQvsxcsE1p$+8cMYSYGkLZX3Zoz9OXRHe4Z9BHDN5Lb3r150X4IE/w=','2023-10-22 23:10:01.676981',0,3,'glicirm@ucentral.edu.co','GuilleDev',1,1),('pbkdf2_sha256$600000$7U6xndOCbwJ322WGfMuH9h$bucmejuQVGDYCaPu5+6oECSHwKM8jYDkLU/dmUv0XcY=','2023-10-23 02:13:49.902741',0,4,'strianar@ucentral.edu.co','SamuelDev',1,1);
/*!40000 ALTER TABLE `auth_api_usuarioapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_api_usuarioapp_groups`
--

DROP TABLE IF EXISTS `auth_api_usuarioapp_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_api_usuarioapp_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `usuarioapp_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_api_usuarioapp_groups_usuarioapp_id_group_id_b571b075_uniq` (`usuarioapp_id`,`group_id`),
  KEY `auth_api_usuarioapp_groups_group_id_30d674eb_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_api_usuarioapp__usuarioapp_id_d0872172_fk_auth_api_` FOREIGN KEY (`usuarioapp_id`) REFERENCES `auth_api_usuarioapp` (`user_id`),
  CONSTRAINT `auth_api_usuarioapp_groups_group_id_30d674eb_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_api_usuarioapp_groups`
--

LOCK TABLES `auth_api_usuarioapp_groups` WRITE;
/*!40000 ALTER TABLE `auth_api_usuarioapp_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_api_usuarioapp_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_api_usuarioapp_user_permissions`
--

DROP TABLE IF EXISTS `auth_api_usuarioapp_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_api_usuarioapp_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `usuarioapp_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_api_usuarioapp_user_usuarioapp_id_permission_cbd41480_uniq` (`usuarioapp_id`,`permission_id`),
  KEY `auth_api_usuarioapp__permission_id_e8732948_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_api_usuarioapp__permission_id_e8732948_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_api_usuarioapp__usuarioapp_id_2abadaf3_fk_auth_api_` FOREIGN KEY (`usuarioapp_id`) REFERENCES `auth_api_usuarioapp` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_api_usuarioapp_user_permissions`
--

LOCK TABLES `auth_api_usuarioapp_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_api_usuarioapp_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_api_usuarioapp_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add computer',6,'add_computer'),(22,'Can change computer',6,'change_computer'),(23,'Can delete computer',6,'delete_computer'),(24,'Can view computer',6,'view_computer'),(25,'Can add usuario app',7,'add_usuarioapp'),(26,'Can change usuario app',7,'change_usuarioapp'),(27,'Can delete usuario app',7,'delete_usuarioapp'),(28,'Can view usuario app',7,'view_usuarioapp');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
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
  KEY `django_admin_log_user_id_c564eba6_fk_auth_api_usuarioapp_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_api_usuarioapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_api_usuarioapp` (`user_id`),
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(6,'api','computer'),(3,'auth','group'),(2,'auth','permission'),(7,'auth_api','usuarioapp'),(4,'contenttypes','contenttype'),(5,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-10-22 22:53:24.070501'),(2,'contenttypes','0002_remove_content_type_name','2023-10-22 22:53:24.093756'),(3,'auth','0001_initial','2023-10-22 22:53:24.260866'),(4,'auth','0002_alter_permission_name_max_length','2023-10-22 22:53:24.316146'),(5,'auth','0003_alter_user_email_max_length','2023-10-22 22:53:24.321146'),(6,'auth','0004_alter_user_username_opts','2023-10-22 22:53:24.325790'),(7,'auth','0005_alter_user_last_login_null','2023-10-22 22:53:24.329791'),(8,'auth','0006_require_contenttypes_0002','2023-10-22 22:53:24.331791'),(9,'auth','0007_alter_validators_add_error_messages','2023-10-22 22:53:24.335793'),(10,'auth','0008_alter_user_username_max_length','2023-10-22 22:53:24.339794'),(11,'auth','0009_alter_user_last_name_max_length','2023-10-22 22:53:24.344794'),(12,'auth','0010_alter_group_name_max_length','2023-10-22 22:53:24.353614'),(13,'auth','0011_update_proxy_permissions','2023-10-22 22:53:24.359617'),(14,'auth','0012_alter_user_first_name_max_length','2023-10-22 22:53:24.363615'),(15,'auth_api','0001_initial','2023-10-22 22:53:24.525982'),(16,'admin','0001_initial','2023-10-22 22:53:24.580018'),(17,'admin','0002_logentry_remove_auto_add','2023-10-22 22:53:24.586020'),(18,'admin','0003_logentry_add_action_flag_choices','2023-10-22 22:53:24.592022'),(19,'api','0001_initial','2023-10-22 22:53:24.603995'),(20,'api','0002_computer_sistema_operativo','2023-10-22 22:53:24.614996'),(21,'api','0003_computer_costo','2023-10-22 22:53:24.624998'),(22,'api','0004_computer_proposito','2023-10-22 22:53:24.633700'),(23,'api','0005_computer_tienda','2023-10-22 22:53:24.643022'),(24,'api','0006_computer_img','2023-10-22 22:53:24.651909'),(25,'api','0007_alter_computer_tienda','2023-10-22 22:53:24.662910'),(26,'api','0008_alter_computer_img','2023-10-22 22:53:24.665912'),(27,'api','0009_alter_computer_img','2023-10-22 22:53:24.669912'),(28,'auth_api','0002_usuarioapp_is_staff','2023-10-22 22:53:24.693919'),(29,'auth_api','0003_usuarioapp_is_active','2023-10-22 22:53:24.718924'),(30,'sessions','0001_initial','2023-10-22 22:53:24.737910');
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
INSERT INTO `django_session` VALUES ('3ks8u3ul1nuwlct0vcrdvvli0ngk9ajk','.eJxVjMsOwiAQRf-FtSEM5dG6dO83kGEGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpd4tIj1R3wHestyap1XWZo9wVedAur43T83K4fwcFe_nWLjs3AGTgrAcFRueJHQFE8oyKtJ3MiDAYIgaVHEatLTv2XiVtkxrF-wPVbDeI:1qujnc:FLxpmwBArfF_rCN37tMHd2YOFgOOZYGp56N-mVJJMcE','2023-11-06 01:32:08.491669'),('43h3y0y3j8epx1o7vzq68892d1dxlkih','.eJxVjMsOwiAQRf-FtSEM5dG6dO83kGEGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpd4tIj1R3wHestyap1XWZo9wVedAur43T83K4fwcFe_nWLjs3AGTgrAcFRueJHQFE8oyKtJ3MiDAYIgaVHEatLTv2XiVtkxrF-wPVbDeI:1qujI9:9kEgF1NNP-0-qMg7XbVEX3-WUiYlgZEadDLBRsIQivo','2023-11-06 00:59:37.039521'),('4n5tpysb0hpr91ttx6lzn3ly7menmvuh','.eJxVjMsOwiAQRf-FtSEM5dG6dO83kGEGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpd4tIj1R3wHestyap1XWZo9wVedAur43T83K4fwcFe_nWLjs3AGTgrAcFRueJHQFE8oyKtJ3MiDAYIgaVHEatLTv2XiVtkxrF-wPVbDeI:1qukLf:Lp3Vbzj1Z8iTBWkx791A8kyRPFYsYNgCVESQvN1euoI','2023-11-06 02:07:19.742937'),('67gsnyywtqd0f67qxh1g90vnziywkbd1','.eJxVjMsOwiAQRf-FtSEM5dG6dO83kGEGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpd4tIj1R3wHestyap1XWZo9wVedAur43T83K4fwcFe_nWLjs3AGTgrAcFRueJHQFE8oyKtJ3MiDAYIgaVHEatLTv2XiVtkxrF-wPVbDeI:1qukRx:tzA2w5lk4N69FQWALLhw559WANVVho863tq7lyUqE84','2023-11-06 02:13:49.904742'),('7hwqr6otzswpuwzqwlgkvqj83mtutce2','.eJxVjMsOwiAQRf-FtSEM5dG6dO83kGEGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpd4tIj1R3wHestyap1XWZo9wVedAur43T83K4fwcFe_nWLjs3AGTgrAcFRueJHQFE8oyKtJ3MiDAYIgaVHEatLTv2XiVtkxrF-wPVbDeI:1qujNB:sLwSjflBPcYbgCzLblwhw3o_Ragy-DexmiX8kTT7oHU','2023-11-06 01:04:49.574455'),('cvqd1f050kytj7le3ct9zk66dxoeo20k','.eJxVjEsOwiAUAO_C2pCWPy7d9wzkwXtI1UBS2pXx7oakC93OTObNAhx7CUenLazIrkywyy-LkJ5Uh8AH1HvjqdV9WyMfCT9t50tDet3O9m9QoJexTVpmR5m0NRow5mQFTHNU2szJTWSs8RGl8lJoaW1yOQMhOmOViB4V-3wB8Qo4HQ:1qujkN:ji8btZ4nT1nTAgF2kJ32gCkI2oMfouKqFvXiF0VDU3E','2023-11-06 01:28:47.610675'),('cxyf82cnmdwwctcupcznehcqjo75tpwy','.eJxVjMsOwiAQRf-FtSEM5dG6dO83kGEGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpd4tIj1R3wHestyap1XWZo9wVedAur43T83K4fwcFe_nWLjs3AGTgrAcFRueJHQFE8oyKtJ3MiDAYIgaVHEatLTv2XiVtkxrF-wPVbDeI:1qujkv:IuLZb8a5Qh7oWm4s0LErhHRfqpJhZostg-sUKmIq1I8','2023-11-06 01:29:21.507846'),('d99tc0vxbc7bfrdvu87hnmz07bqwrgpl','.eJxVjMsOwiAQRf-FtSEM5dG6dO83kGEGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpd4tIj1R3wHestyap1XWZo9wVedAur43T83K4fwcFe_nWLjs3AGTgrAcFRueJHQFE8oyKtJ3MiDAYIgaVHEatLTv2XiVtkxrF-wPVbDeI:1qujZG:mxZmeBhZWoQVSF2rW8u8SNg0TlKdbPEnO-Rv1R1yzKA','2023-11-06 01:17:18.929284'),('dc3165yv49othvff00jwxysbeqzwzoxw','.eJxVjMsOwiAQRf-FtSEM5dG6dO83kGEGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpd4tIj1R3wHestyap1XWZo9wVedAur43T83K4fwcFe_nWLjs3AGTgrAcFRueJHQFE8oyKtJ3MiDAYIgaVHEatLTv2XiVtkxrF-wPVbDeI:1quji7:LFl5X_FHa-Pni7yInpAE1_aNelTK1FjgFu7-9jlvikY','2023-11-06 01:26:27.547171'),('h0msaoq9wjyfmiyjp5xr5j8xo214pjdv','.eJxVjMsOwiAQRf-FtSEM5dG6dO83kGEGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpd4tIj1R3wHestyap1XWZo9wVedAur43T83K4fwcFe_nWLjs3AGTgrAcFRueJHQFE8oyKtJ3MiDAYIgaVHEatLTv2XiVtkxrF-wPVbDeI:1qukP9:2m_hs9RF6WAZa_y2N0B07-JdQOh2NIFsCRNuTkgLm6Q','2023-11-06 02:10:55.453731'),('hnkei5pbkr7qmgefmbgf8fvcljay8jy6','.eJxVjMsOwiAQRf-FtSEM5dG6dO83kGEGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpd4tIj1R3wHestyap1XWZo9wVedAur43T83K4fwcFe_nWLjs3AGTgrAcFRueJHQFE8oyKtJ3MiDAYIgaVHEatLTv2XiVtkxrF-wPVbDeI:1qujiu:uukZK1Pvj8uXb7etKnfqJ2FPdFmrpEdfDmmLSNy2rqQ','2023-11-06 01:27:16.937508'),('m5go1hmlsglxe2l0bodswtekrx2qhkur','.eJxVjMsOwiAQRf-FtSEM5dG6dO83kGEGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpd4tIj1R3wHestyap1XWZo9wVedAur43T83K4fwcFe_nWLjs3AGTgrAcFRueJHQFE8oyKtJ3MiDAYIgaVHEatLTv2XiVtkxrF-wPVbDeI:1qujUa:zKF-97eYBrqbEbZGSuDn5xmyxOaAgKrtCZkrEf22ebA','2023-11-06 01:12:28.238029'),('ol1yaqp7d3fqaxrz27gx7aac0nckpdtq','.eJxVjMsOwiAQRf-FtSEM5dG6dO83kGEGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpd4tIj1R3wHestyap1XWZo9wVedAur43T83K4fwcFe_nWLjs3AGTgrAcFRueJHQFE8oyKtJ3MiDAYIgaVHEatLTv2XiVtkxrF-wPVbDeI:1qujJe:zdHmLvPJG9wTU-gjYmHkKP9pc0eWbYVOQmf3IKWHNDs','2023-11-06 01:01:10.393510'),('t6soykvlc3fy61dkwtg9m31u9jlqwlh0','.eJxVjMsOwiAQRf-FtSEM5dG6dO83kGEGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpd4tIj1R3wHestyap1XWZo9wVedAur43T83K4fwcFe_nWLjs3AGTgrAcFRueJHQFE8oyKtJ3MiDAYIgaVHEatLTv2XiVtkxrF-wPVbDeI:1qujUE:ok1rVk0oT27G2RcA7s17CqbhD6BtdDt00ZVnZQIVYM0','2023-11-06 01:12:06.252802'),('tmxextw63hw9hfwa0scplnum6jxzso5t','.eJxVjMsOwiAQRf-FtSEM5dG6dO83kGEGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpd4tIj1R3wHestyap1XWZo9wVedAur43T83K4fwcFe_nWLjs3AGTgrAcFRueJHQFE8oyKtJ3MiDAYIgaVHEatLTv2XiVtkxrF-wPVbDeI:1qujTt:otU0dMQn3d2FyMAG-EVjoYKfL5clXAAt3Pm5zpbHWi4','2023-11-06 01:11:45.948859'),('uozgexpcuwni7kg2vu8kfcxdu6rmmfpg','.eJxVjMsOwiAQRf-FtSEM5dG6dO83kGEGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpd4tIj1R3wHestyap1XWZo9wVedAur43T83K4fwcFe_nWLjs3AGTgrAcFRueJHQFE8oyKtJ3MiDAYIgaVHEatLTv2XiVtkxrF-wPVbDeI:1qukAV:eioT9MFDTZQqlv-qnUaVTMSWMXp238S-m3MjpgtBCxU','2023-11-06 01:55:47.716567'),('wecoco5jvt5b353s68ceeu8cx096i7no','.eJxVjMsOwiAQRf-FtSEM5dG6dO83kGEGpGogKe3K-O_apAvd3nPOfYmA21rC1tMSZhZnYcTpd4tIj1R3wHestyap1XWZo9wVedAur43T83K4fwcFe_nWLjs3AGTgrAcFRueJHQFE8oyKtJ3MiDAYIgaVHEatLTv2XiVtkxrF-wPVbDeI:1qujTv:Bg1N7KKWoZNYlXWP879FdQk8ep-yZqWhKTUWNEwYP9U','2023-11-06 01:11:47.328486'),('x9ckjm2nh9ohq593zbhaycet97hfwjfy','e30:1qujYh:DiG5VmELM_bvDCO_USvAep8NnO_tM5k-g1KwSM0m9jo','2023-11-06 01:16:43.667333');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-22 23:17:02

