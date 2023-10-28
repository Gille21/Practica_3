-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: piproyecto
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
-- Table structure for table `api_computer`
--

DROP TABLE IF EXISTS `api_computer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_computer` (
  `id_computer` bigint NOT NULL AUTO_INCREMENT,
  `tip_computador` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `tip_memoria` varchar(50) NOT NULL,
  `cap_memoria` varchar(50) NOT NULL,
  `put_memoria` bigint DEFAULT NULL,
  `tip_disco` varchar(50) NOT NULL,
  `cap_disco` varchar(50) NOT NULL,
  `put_disco` bigint DEFAULT NULL,
  `grafica` tinyint(1) NOT NULL,
  `tip_grafica` varchar(50) NOT NULL,
  `cap_grafica` varchar(50) NOT NULL,
  `put_grafica` bigint NOT NULL,
  `procesador` varchar(50) NOT NULL,
  `vel_procesador` varchar(50) NOT NULL,
  `put_procesador` bigint NOT NULL,
  `sistema_operativo` varchar(50) DEFAULT NULL,
  `costo` double DEFAULT NULL,
  `proposito` varchar(50) DEFAULT NULL,
  `tienda` varchar(500) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_computer`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_computer`
--

LOCK TABLES `api_computer` WRITE;
/*!40000 ALTER TABLE `api_computer` DISABLE KEYS */;
INSERT INTO `api_computer` VALUES (1,'Portatil','CYBORG 15 A12VF','MSI','DDR5','8 GB',NULL,'SSD NVME','512 GB',NULL,1,'GeForce RTX 4060 Laptop','8 GB',18323,'Intel Core I7 12650h','‎4,7 GHz',23679,'Windows',6696000,'Gamer','https://clonesyperifericos.com/comprar/72887/','files/covers/PORTATIL-MSI-CYBORG-15-A12VF-1.webp'),(2,'Portatil','L14 Gen 2','Lenovo','DDR4','12 GB',NULL,'SSD PCIe','512 GB',NULL,1,'Intel Iris Xe','1 GB',2685,'Intel Core i5-1135G7','‎2,4 GHz',9921,'Windows 11',2356761,'Trabajo','https://www.amazon.com/L14-Bussiness-antirreflejo-accesorios-incluidos/dp/B0C83PRBP4/ref=sr_1_2_sspa?adgrpid=79519763698&currency=COP&hvadid=602470407598&hvdev=c&hvlocphy=1003659&hvnetw=g&hvqmt=e&hvrand=6537600193264708550&hvtargid=kwd-11149391&hydadcr=26503_11703977&keywords=thinkpad&qid=1694918020&sr=8-2-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&th=1',NULL),(3,'Portatil','Ef2524la','HP','DDR4','8 GB',NULL,'SSD PCIe','512 GB',NULL,1,'Intel Iris Xe','1 GB',2443,'Intel Core i5-1135G7','‎2,4 GHz',13180,'Windows 11',1999000,'Trabajo','https://www.alkosto.com/computador-portatil-hp-156-pulgadas-ef2524la-amd-r5-ram-8gb-disco-ssd-512-gb-plateado-natural/p/197497269369',NULL),(4,'Portatil','EliteBook 840 G9','HP','DDR5','16 GB',NULL,'SSD PCCle','512',NULL,1,'Intel Iris Xe','1 GB',2442,'Intel Core I5','2,4 GHz',13180,'Windows',1999000,'Trabajo','https://www.hp.com/co-es/shop/portatiles/portatiles-empresariales/portatil-hp-elitebook-840-g9-6q4h5lt.html','files/covers/HP-EliteBook.jpg'),(10,'Portatil','Mac Book','Apple','DDR5','16 GB',1,'SSD Sata','512 GB',1,0,'NA','2 GB',2,'M1','3,6 GHz',1,'Mac',4900000,'Entretenimiento','https://www.alkosto.com/macbook-air-13-pulgadas-mgnd3la-a-chip-m1ram-8gb-disco-estado-solido-256-gb-ssd-oro/p/194252425909?fuente=google&medio=cpc&campaign=AK_COL_MAX_PEF_CPC_AON_COMP_TLP_Computadores-Brand-AON_PAC&keyword=&gclid=EAIaIQobChMIofLykoeYggMVlUp_AB0T_QewEAQYASABEgK2PPD_BwE','https://res.cloudinary.com/deecwop2g/image/upload/v1698511734/media/imgs_compu/Mac_is0kdo.jpg');
/*!40000 ALTER TABLE `api_computer` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Proveedor');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,25),(2,1,26),(3,1,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add computer',7,'add_computer'),(26,'Can change computer',7,'change_computer'),(27,'Can delete computer',7,'delete_computer'),(28,'Can view computer',7,'view_computer'),(29,'Can add blacklisted token',8,'add_blacklistedtoken'),(30,'Can change blacklisted token',8,'change_blacklistedtoken'),(31,'Can delete blacklisted token',8,'delete_blacklistedtoken'),(32,'Can view blacklisted token',8,'view_blacklistedtoken'),(33,'Can add outstanding token',9,'add_outstandingtoken'),(34,'Can change outstanding token',9,'change_outstandingtoken'),(35,'Can delete outstanding token',9,'delete_outstandingtoken'),(36,'Can view outstanding token',9,'view_outstandingtoken');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$ouWn6xMZbyannoQlqP8LB3$b/71PRN7uw9FIFW02v/xh/WdJ5GMIddxuNtOr9WHmfA=','2023-10-27 21:32:41.822268',1,'AdminDev','','','admin@ucentral.edu.co',1,1,'2023-10-27 03:34:13.972378'),(2,'pbkdf2_sha256$600000$2oAxap8shY5Iz5iet6TxCH$yDCuPu3Qi9Z4cO0iLrkavinKUfI3wu/Ha1qwB8big80=',NULL,0,'JuanesDev','','','',0,1,'2023-10-27 03:36:46.000000'),(3,'pbkdf2_sha256$600000$CFjKgt6CEHgvp6XWH0oMcF$weacbg9+L72Dx+OWPI+JTeFRTlq2eNC8ZIUvRA9FJsg=',NULL,0,'SamuelDev','','','',0,1,'2023-10-27 05:47:41.589524');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,2,25),(2,2,26),(3,2,27),(4,2,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-10-27 18:57:31.620325','1','Proveedor',1,'[{\"added\": {}}]',3,1),(2,'2023-10-27 18:57:50.998351','2','JuanesDev',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(3,'2023-10-28 03:17:03.807488','2','JuanesDev',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'api','computer'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(8,'token_blacklist','blacklistedtoken'),(9,'token_blacklist','outstandingtoken');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-10-27 03:30:48.868610'),(2,'auth','0001_initial','2023-10-27 03:30:49.239278'),(3,'admin','0001_initial','2023-10-27 03:30:49.310691'),(4,'admin','0002_logentry_remove_auto_add','2023-10-27 03:30:49.316693'),(5,'admin','0003_logentry_add_action_flag_choices','2023-10-27 03:30:49.321694'),(6,'api','0001_initial','2023-10-27 03:30:49.334697'),(7,'api','0002_computer_sistema_operativo','2023-10-27 03:30:49.344699'),(8,'api','0003_computer_costo','2023-10-27 03:30:49.353701'),(9,'api','0004_computer_proposito','2023-10-27 03:30:49.363703'),(10,'api','0005_computer_tienda','2023-10-27 03:30:49.372607'),(11,'api','0006_computer_img','2023-10-27 03:30:49.384706'),(12,'api','0007_alter_computer_tienda','2023-10-27 03:30:49.395709'),(13,'api','0008_alter_computer_img','2023-10-27 03:30:49.399710'),(14,'api','0009_alter_computer_img','2023-10-27 03:30:49.402712'),(15,'contenttypes','0002_remove_content_type_name','2023-10-27 03:30:49.440720'),(16,'auth','0002_alter_permission_name_max_length','2023-10-27 03:30:49.467726'),(17,'auth','0003_alter_user_email_max_length','2023-10-27 03:30:49.485730'),(18,'auth','0004_alter_user_username_opts','2023-10-27 03:30:49.492731'),(19,'auth','0005_alter_user_last_login_null','2023-10-27 03:30:49.518737'),(20,'auth','0006_require_contenttypes_0002','2023-10-27 03:30:49.520477'),(21,'auth','0007_alter_validators_add_error_messages','2023-10-27 03:30:49.527480'),(22,'auth','0008_alter_user_username_max_length','2023-10-27 03:30:49.556488'),(23,'auth','0009_alter_user_last_name_max_length','2023-10-27 03:30:49.585879'),(24,'auth','0010_alter_group_name_max_length','2023-10-27 03:30:49.602882'),(25,'auth','0011_update_proxy_permissions','2023-10-27 03:30:49.608883'),(26,'auth','0012_alter_user_first_name_max_length','2023-10-27 03:30:49.638382'),(27,'sessions','0001_initial','2023-10-27 03:30:49.656155'),(28,'token_blacklist','0001_initial','2023-10-27 03:30:49.723928'),(29,'token_blacklist','0002_outstandingtoken_jti_hex','2023-10-27 03:30:49.740267'),(30,'token_blacklist','0003_auto_20171017_2007','2023-10-27 03:30:49.748269'),(31,'token_blacklist','0004_auto_20171017_2013','2023-10-27 03:30:49.784277'),(32,'token_blacklist','0005_remove_outstandingtoken_jti','2023-10-27 03:30:49.814284'),(33,'token_blacklist','0006_auto_20171017_2113','2023-10-27 03:30:49.829287'),(34,'token_blacklist','0007_auto_20171017_2214','2023-10-27 03:30:49.912908'),(35,'token_blacklist','0008_migrate_to_bigautofield','2023-10-27 03:30:50.007322'),(36,'token_blacklist','0010_fix_migrate_to_bigautofield','2023-10-27 03:30:50.015324'),(37,'token_blacklist','0011_linearizes_history','2023-10-27 03:30:50.016825'),(38,'token_blacklist','0012_alter_outstandingtoken_user','2023-10-27 03:30:50.022646'),(39,'api','0010_alter_computer_img','2023-10-28 04:07:31.418123');
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
INSERT INTO `django_session` VALUES ('1wogdpwogk9vgng72ion6r4lo6nhuioh','.eJxVjDsOwjAQBe_iGllex19Kes5geb0bHECOFCcV4u4QKQW0b2beS6S8rTVtnZc0kTgLEKffDXN5cNsB3XO7zbLMbV0mlLsiD9rldSZ-Xg7376DmXr81WtSeXQgM5K0uwKGQCl6NLkbtCAxoCprRslIKBg3GFEaMFPI4KBbvD9RxN5k:1qwU7a:oW9Gw79SjofOuAz02OTo93vnwPE-EXFgs0pH069zqtw','2023-11-10 21:11:58.237297'),('d6a44sxfggkgcdal4m1giikm7quzqspx','.eJxVjDsOwjAQBe_iGllex19Kes5geb0bHECOFCcV4u4QKQW0b2beS6S8rTVtnZc0kTgLEKffDXN5cNsB3XO7zbLMbV0mlLsiD9rldSZ-Xg7376DmXr81WtSeXQgM5K0uwKGQCl6NLkbtCAxoCprRslIKBg3GFEaMFPI4KBbvD9RxN5k:1qwP3n:dcIsITTHp4GN7hxOhD3guecRmCEN_4ooX9K0xNOw1TY','2023-11-10 15:47:43.393320'),('kahlsd6e3ejljskodg4ldj83kcd3prvq','.eJxVjDsOwjAQBe_iGllex19Kes5geb0bHECOFCcV4u4QKQW0b2beS6S8rTVtnZc0kTgLEKffDXN5cNsB3XO7zbLMbV0mlLsiD9rldSZ-Xg7376DmXr81WtSeXQgM5K0uwKGQCl6NLkbtCAxoCprRslIKBg3GFEaMFPI4KBbvD9RxN5k:1qwDpA:6e9VphaWnFuOciMHSgnVclnXKd5G5fhOHfGVkM48hnc','2023-11-10 03:47:52.588317'),('od1bm0j1rvlnob138dw3aeyblrx29qy2','.eJxVjDsOwjAQBe_iGllex19Kes5geb0bHECOFCcV4u4QKQW0b2beS6S8rTVtnZc0kTgLEKffDXN5cNsB3XO7zbLMbV0mlLsiD9rldSZ-Xg7376DmXr81WtSeXQgM5K0uwKGQCl6NLkbtCAxoCprRslIKBg3GFEaMFPI4KBbvD9RxN5k:1qwS0c:xr9I2ZQgDDh-7tWWqy4Bi1E8EA3Gpxayq7iQeWSnEdQ','2023-11-10 18:56:38.834805');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

DROP TABLE IF EXISTS `token_blacklist_blacklistedtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_id` (`token_id`),
  CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_blacklistedtoken`
--

LOCK TABLES `token_blacklist_blacklistedtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_blacklistedtoken` VALUES (1,'2023-10-27 03:35:44.496158',1),(2,'2023-10-28 03:04:35.788623',31),(4,'2023-10-28 16:38:18.573667',44),(6,'2023-10-28 17:29:20.250944',47);
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

DROP TABLE IF EXISTS `token_blacklist_outstandingtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` int DEFAULT NULL,
  `jti` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  KEY `token_blacklist_outs_user_id_83bc629a_fk_auth_user` (`user_id`),
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

LOCK TABLES `token_blacklist_outstandingtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_outstandingtoken` VALUES (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjY5NzY3NywiaWF0IjoxNjk4Mzc3Njc3LCJqdGkiOiJiODdkOTY3NmMyODQ0MzViYjMzN2Y3NTA5NTAyOTgzNCIsInVzZXJfaWQiOjF9.j5d_OFyUmeQ4OBKUWOxN-RRLUW9Y1J6zR6kuz7JB83o','2023-10-27 03:34:37.972380','2023-12-16 03:34:37.000000',1,'b87d9676c284435bb337f75095029834'),(2,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjY5NzkyMiwiaWF0IjoxNjk4Mzc3OTIyLCJqdGkiOiJiZjljZDkxZGU2MzM0YzZjYTc4ZjM3ZGJmZmQxOGNlMCIsInVzZXJfaWQiOjF9.IdfKmxuilqMF3oSXinCmwuAo-QApZDfjwh3GtZgLgA0','2023-10-27 03:38:42.149795','2023-12-16 03:38:42.000000',1,'bf9cd91de6334c6ca78f37dbffd18ce0'),(3,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjY5ODEzMCwiaWF0IjoxNjk4Mzc4MTMwLCJqdGkiOiJhMWQwMjBkZDU3ZTk0OWRlYjc2OWFiMjRlYzRkYzQxNSIsInVzZXJfaWQiOjF9.4mIpO7DIA8bf8XZLAWBWFVFIuI5YLhyWP23ErJjVXwU','2023-10-27 03:42:10.257773','2023-12-16 03:42:10.000000',1,'a1d020dd57e949deb769ab24ec4dc415'),(4,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjcwNTI4MiwiaWF0IjoxNjk4Mzg1MjgyLCJqdGkiOiIxZjIzM2ZjZDVlNmM0MmI5YWIxZjVlMTVmZDBjODBiNyIsInVzZXJfaWQiOjJ9.kLGTcvc1a56y7tigfECGuePCdgPvrRiPX-F9TEIirUM','2023-10-27 05:41:22.907141','2023-12-16 05:41:22.000000',2,'1f233fcd5e6c42b9ab1f5e15fd0c80b7'),(5,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjcwNTY2MiwiaWF0IjoxNjk4Mzg1NjYyLCJqdGkiOiJmNjQ0MmQxNzg1YTQ0YjVmODgxMmQ3Y2ZkNzllZDNmNyIsInVzZXJfaWQiOjN9.F9TgLXslnk6PVyYdRfAu_-YYojd31Bx5j5iE8dkiub4','2023-10-27 05:47:42.048631','2023-12-16 05:47:42.000000',3,'f6442d1785a44b5f8812d7cfd79ed3f7'),(6,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjcwNjE5MiwiaWF0IjoxNjk4Mzg2MTkyLCJqdGkiOiIxNTRmM2I5OWViOGE0ZDQ3YmE2ZDdhZjNjZmYwY2FmMCIsInVzZXJfaWQiOjJ9.4tOhuG5WYDtgblces3Sdjm_H8hXlngzlq521s46Id4E','2023-10-27 05:56:32.767695','2023-12-16 05:56:32.000000',2,'154f3b99eb8a4d47ba6d7af3cff0caf0'),(7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjcwNjUzMiwiaWF0IjoxNjk4Mzg2NTMyLCJqdGkiOiI2ODg3OTVhOWM1Zjc0OGZlODU5YTI5ZGMzMjNkZTMxYiIsInVzZXJfaWQiOjJ9.pNOTgI_2iV3IG4dlIY4niGxrDeDRbz9WcD0sRFgnIR0','2023-10-27 06:02:12.321095','2023-12-16 06:02:12.000000',2,'688795a9c5f748fe859a29dc323de31b'),(8,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjcwNzk2NiwiaWF0IjoxNjk4Mzg3OTY2LCJqdGkiOiIyYjVmMGZmZGMyMjU0NzkyOTZlZTFkMjA4ZTY1NTIzOCIsInVzZXJfaWQiOjJ9._EKtA7wtit8FMQblLxHddYxdMMA8BD508V4EAcnaijA','2023-10-27 06:26:06.217998','2023-12-16 06:26:06.000000',2,'2b5f0ffdc225479296ee1d208e655238'),(9,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjcwODE3MywiaWF0IjoxNjk4Mzg4MTczLCJqdGkiOiJjY2QyMTQyNDYxMjU0MzgxYmU1NzM0OGMyYzRlNzIxYyIsInVzZXJfaWQiOjJ9.o3Z3798wDBsWl0mxcLbSzsRywHAtu2vxoFxxnlM0myc','2023-10-27 06:29:33.451348','2023-12-16 06:29:33.000000',2,'ccd2142461254381be57348c2c4e721c'),(10,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjcwODI3MSwiaWF0IjoxNjk4Mzg4MjcxLCJqdGkiOiJmMzNkMjE1MTM5N2I0YzcyYjRhMDIxMmFlMzA2ODdkMSIsInVzZXJfaWQiOjJ9.PgV5RVZNd43uVgBRzj8tysocPLImpz7544_xUQ9LOHU','2023-10-27 06:31:11.252413','2023-12-16 06:31:11.000000',2,'f33d2151397b4c72b4a0212ae30687d1'),(11,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjcwODI4MiwiaWF0IjoxNjk4Mzg4MjgyLCJqdGkiOiJmODU3YjU1MjY0M2M0MjBhODUyN2JlZDMxZDg3NTEzYSIsInVzZXJfaWQiOjJ9.X2DsiHTXCFjoUTWWAbNbE2Nnh56QduGf01FlMVVW5xc','2023-10-27 06:31:22.993222','2023-12-16 06:31:22.000000',2,'f857b552643c420a8527bed31d87513a'),(12,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjcwODQ2OCwiaWF0IjoxNjk4Mzg4NDY4LCJqdGkiOiJlMzY5NzkzNjNhMGQ0YmE4YmMwYzgyY2FhMTIzMGViMCIsInVzZXJfaWQiOjJ9.FTDFJWvji0D_hKDrLxV3f-0dcY4oDMFFkukLfr9Y2Dg','2023-10-27 06:34:28.669313','2023-12-16 06:34:28.000000',2,'e36979363a0d4ba8bc0c82caa1230eb0'),(13,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjcwODc0MSwiaWF0IjoxNjk4Mzg4NzQxLCJqdGkiOiIwMDZhYjEyZjRhZmM0ZTE2YWZmZGIzNmE1ZDk2MjRmMCIsInVzZXJfaWQiOjJ9.YRbkDUo4WQysO2lAhGvlaITm8P4TC4uYnYFJbup4mio','2023-10-27 06:39:01.596430','2023-12-16 06:39:01.000000',2,'006ab12f4afc4e16affdb36a5d9624f0'),(14,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjcwOTEzMSwiaWF0IjoxNjk4Mzg5MTMxLCJqdGkiOiI5NTRmYTQ2NzExNGU0MTNhYWY0YzljMzIxNmI1YTE1OSIsInVzZXJfaWQiOjJ9.QUVEE_o8XTaEtH8NlmQo46TDP3GIIQ4ChExQPvOWSuo','2023-10-27 06:45:31.895898','2023-12-16 06:45:31.000000',2,'954fa467114e413aaf4c9c3216b5a159'),(15,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjcwOTE3MywiaWF0IjoxNjk4Mzg5MTczLCJqdGkiOiIwOTUzYzE0MzIwZmQ0NjYzODU2NTc3YmE4NTU4ZDUwZiIsInVzZXJfaWQiOjJ9.c5BQB2MVtCWXsCddc-uVnwP4HCzicjWwPLIZLbp6Dis','2023-10-27 06:46:13.929319','2023-12-16 06:46:13.000000',2,'0953c14320fd4663856577ba8558d50f'),(16,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjcwOTM4OSwiaWF0IjoxNjk4Mzg5Mzg5LCJqdGkiOiI4OThmNzc4MjkxYzY0YzFjYTdlZGI1MDM0YTM0ZmQ1NyIsInVzZXJfaWQiOjJ9.VKwHO_fK4lpj5s36ujkJO0B4GZ6CANQ8dEezTsuhkUI','2023-10-27 06:49:49.610667','2023-12-16 06:49:49.000000',2,'898f778291c64c1ca7edb5034a34fd57'),(17,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjcwOTQxMCwiaWF0IjoxNjk4Mzg5NDEwLCJqdGkiOiJmNGYyN2Y2YzI0NGY0OTJiOTk4NDU4NzBmOTY5NWYyYiIsInVzZXJfaWQiOjJ9.NFmjCCSe4KruCkfnzmVwwbvpm--KSbd7E-6cj9iRdd4','2023-10-27 06:50:10.808452','2023-12-16 06:50:10.000000',2,'f4f27f6c244f492b99845870f9695f2b'),(18,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjcwOTgzOCwiaWF0IjoxNjk4Mzg5ODM4LCJqdGkiOiJlODI0OWJlY2YzM2M0NWYwYjhiOWRiNjk2MjliZjE2YyIsInVzZXJfaWQiOjJ9.ScPHCskLF6dex91ayZ3c1p9Qg9oErviUydTx7ajIv9s','2023-10-27 06:57:18.361346','2023-12-16 06:57:18.000000',2,'e8249becf33c45f0b8b9db69629bf16c'),(19,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjczNDcwNiwiaWF0IjoxNjk4NDE0NzA2LCJqdGkiOiI0MDZjNDMwMjRlZTM0YjVkYWE2ZTRjZmFkNjkzY2ZhNSIsInVzZXJfaWQiOjJ9.kEbPEWHajfRYNhsldgQ3-8a_TQT6Jlid-W5ox49Q6fs','2023-10-27 13:51:46.235902','2023-12-16 13:51:46.000000',2,'406c43024ee34b5daa6e4cfad693cfa5'),(20,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjczOTUzMiwiaWF0IjoxNjk4NDE5NTMyLCJqdGkiOiJlNjQwY2Q2ZDRhMDI0MjIyODFhZmRmNWJkODE4YmQ1NyIsInVzZXJfaWQiOjJ9.WEM8J-HfHHaPL6yRoLV7oxX3mdrCBguZH_eZTAfFu44','2023-10-27 15:12:12.760055','2023-12-16 15:12:12.000000',2,'e640cd6d4a02422281afdf5bd818bd57'),(21,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjc0MTYzNCwiaWF0IjoxNjk4NDIxNjM0LCJqdGkiOiJjYWI1YWYwZTc1YzQ0MGVjYmE1OWZhN2RmMmQ1ZTYzNCIsInVzZXJfaWQiOjF9.ygcnnlUrD0RDToxMci0OmtQpg0eaxz5_R6_s2xguU8U','2023-10-27 15:47:14.015065','2023-12-16 15:47:14.000000',1,'cab5af0e75c440ecba59fa7df2d5e634'),(22,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjc1MjgwNCwiaWF0IjoxNjk4NDMyODA0LCJqdGkiOiJkNTE5YjEyYmI2Mjg0MWMzODI3ZDhkOWI0YmYyM2ExNCIsInVzZXJfaWQiOjJ9.134DVemY5ILQMqgnoBtZ5aLIRa1FSXM7tlCgTKYCJAo','2023-10-27 18:53:24.559122','2023-12-16 18:53:24.000000',2,'d519b12bb62841c3827d8d9b4bf23a14'),(23,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjc1Mzg1OCwiaWF0IjoxNjk4NDMzODU4LCJqdGkiOiJhODEwMmNjZWFkMGI0ZWU3YTM2OWIyNTQ4YTc2ODlkOSIsInVzZXJfaWQiOjJ9.CqIYDd8RlPgYuhl2o-oAY3UMR0VHvFOX5m8VHwaHoT4','2023-10-27 19:10:58.385933','2023-12-16 19:10:58.000000',2,'a8102ccead0b4ee7a369b2548a7689d9'),(24,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjc2MDkxOSwiaWF0IjoxNjk4NDQwOTE5LCJqdGkiOiIyODk4ZGRhZmQ0ODE0YjUxYWM3MmRjOTFjMTg5MjRkMSIsInVzZXJfaWQiOjJ9.bPA1zFsiqyIW1rzWo81YhXlUx69awb-R1OOHbrJ17Ss','2023-10-27 21:08:39.687692','2023-12-16 21:08:39.000000',2,'2898ddafd4814b51ac72dc91c18924d1'),(25,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjc2MTUwMSwiaWF0IjoxNjk4NDQxNTAxLCJqdGkiOiJhNTRkMGQxZThlZjk0NTAxYTE1YmNjYzU3NTJhODFkYyIsInVzZXJfaWQiOjJ9.gkzjFZMyYPfnA45XddVxW-36RDCN9v0raK4IwgkuEXg','2023-10-27 21:18:21.537526','2023-12-16 21:18:21.000000',2,'a54d0d1e8ef94501a15bccc5752a81dc'),(26,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjc2MTUxMCwiaWF0IjoxNjk4NDQxNTEwLCJqdGkiOiIzZmUwNzAzMDRiMzE0NGI3YTU4ZDAxYzNkYjBkZmZmZSIsInVzZXJfaWQiOjJ9.rxoc0dx8D3Pt68GfJhmIfRMt-DlKtOHrHSrXFPZ4thE','2023-10-27 21:18:30.945309','2023-12-16 21:18:30.000000',2,'3fe070304b3144b7a58d01c3db0dfffe'),(27,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjc2MTU0MSwiaWF0IjoxNjk4NDQxNTQxLCJqdGkiOiI2NWU5NzZkZjIyODI0MjUzOTEwOWE5ZDUwZTg4MDJhYSIsInVzZXJfaWQiOjJ9.j81LFZ0oOR_LEIX6xu0P-UQ8PZQmSL68qY3jOuJVFPo','2023-10-27 21:19:01.290815','2023-12-16 21:19:01.000000',2,'65e976df228242539109a9d50e8802aa'),(28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjc2MjQ3MCwiaWF0IjoxNjk4NDQyNDcwLCJqdGkiOiIyMmU1NzhlZTI0NmY0N2U5OTQ2MzRhODE0OTg3NTA1YSIsInVzZXJfaWQiOjJ9.ddbn7-G0HhvF359BcNjEvbisCtkiepU7emE3wJ3Nshk','2023-10-27 21:34:30.212134','2023-12-16 21:34:30.000000',2,'22e578ee246f47e994634a814987505a'),(29,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjc2MjUxNSwiaWF0IjoxNjk4NDQyNTE1LCJqdGkiOiI3MGU0YzA2MDNlZGY0OGFkYjA5OTI4NTk4ODQ1ODdhZiIsInVzZXJfaWQiOjJ9.-AJTLjv7KE8DihyXOEYu90mmEtDU_FhYjICNbSSlwmc','2023-10-27 21:35:15.275649','2023-12-16 21:35:15.000000',2,'70e4c0603edf48adb0992859884587af'),(30,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjc2Mzg0OCwiaWF0IjoxNjk4NDQzODQ4LCJqdGkiOiJlMzQ4ODU4YzgwZGE0MzI4ODNlMTlhYTJlY2UwYjIyYiIsInVzZXJfaWQiOjJ9.jW35RgPzWJ0eGlq7dZI8GTEvxL6zUwdm_siLpBl7x8A','2023-10-27 21:57:28.257714','2023-12-16 21:57:28.000000',2,'e348858c80da432883e19aa2ece0b22b'),(31,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjc4MTQwMywiaWF0IjoxNjk4NDYxNDAzLCJqdGkiOiIzYWViODAxOTM5NDk0MjJiODc1ZGE0MDI1YWJmMjk2NiIsInVzZXJfaWQiOjJ9.x8-TxtPTXCcCqi_4dBY32eXJv4-vB_AvMsutMoHJfvI','2023-10-28 02:50:03.051676','2023-12-17 02:50:03.000000',2,'3aeb80193949422b875da4025abf2966'),(32,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjc4MjI5NCwiaWF0IjoxNjk4NDYyMjk0LCJqdGkiOiIzODZlMzNkMWQxMDM0YmFlYWQ3ZGViYjNjNmE1MGQ2OCIsInVzZXJfaWQiOjJ9.yUd8Yk-lzdLH2121Z17HJYBqMMGmCtsQOv3v4WZESNE','2023-10-28 03:04:54.821478','2023-12-17 03:04:54.000000',2,'386e33d1d1034baead7debb3c6a50d68'),(33,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjc4ODU3MywiaWF0IjoxNjk4NDY4NTczLCJqdGkiOiJjNmQ1N2Y1YmIyMjc0NmQyOWIxZmQ5ZjMwNmY3MTIzYyIsInVzZXJfaWQiOjJ9.RwBSOohF5zI_K1kfrxE_h8uXrOXGled3whJPad0PT-w','2023-10-28 04:49:33.885432','2023-12-17 04:49:33.000000',2,'c6d57f5bb22746d29b1fd9f306f7123c'),(34,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjc4OTE4MiwiaWF0IjoxNjk4NDY5MTgyLCJqdGkiOiJiYTM5ZDdmZTU5OWE0M2U2OWU1ODcxN2MzZjY2NDdmYSIsInVzZXJfaWQiOjJ9.8bjfGcOzi5PF3Q7zSPoqUNZcjTcSxQ5g-pDkLk90Kpo','2023-10-28 04:59:42.449839','2023-12-17 04:59:42.000000',2,'ba39d7fe599a43e69e58717c3f6647fa'),(35,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjc4OTI2NCwiaWF0IjoxNjk4NDY5MjY0LCJqdGkiOiJjMGI0NDEzZjdjNzY0YTY1ODVkNzljYTNmYWZlMDYxNSIsInVzZXJfaWQiOjJ9.GxoYUgICQMwSNcU8vuB_W3ykQ9lEX3qUHzp44ACjpio','2023-10-28 05:01:04.734805','2023-12-17 05:01:04.000000',2,'c0b4413f7c764a6585d79ca3fafe0615'),(36,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjc4OTU4MSwiaWF0IjoxNjk4NDY5NTgxLCJqdGkiOiIzOWU3MjNjZmZjZGU0NWJhYTc1YzAyZGE0M2UzNzA1ZSIsInVzZXJfaWQiOjJ9.UhKS-PV0N4y1RcVbZVjq2kMJ_3JA0hvsBBeRIUItA1g','2023-10-28 05:06:21.450608','2023-12-17 05:06:21.000000',2,'39e723cffcde45baa75c02da43e3705e'),(37,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjc4OTYzNywiaWF0IjoxNjk4NDY5NjM3LCJqdGkiOiIwNjIyN2ZkMTk3ZDI0ZDRkOGNlYmUyMGRmNzg3ZGIwYiIsInVzZXJfaWQiOjJ9.pui-OvNJ52G8KAlZ25r6Spt0Ukl91pwPFEKz2vhCDg0','2023-10-28 05:07:17.023683','2023-12-17 05:07:17.000000',2,'06227fd197d24d4d8cebe20df787db0b'),(38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjc4OTg5MCwiaWF0IjoxNjk4NDY5ODkwLCJqdGkiOiJmYjJjZGUwODE5MDQ0MTJhOGI3ZmRjM2Y2YWZkNjlhMSIsInVzZXJfaWQiOjJ9.7nSoUeIBQxp-9ICpATpCAgJlAVLVJzE7_RNZoPkqa3Y','2023-10-28 05:11:30.452609','2023-12-17 05:11:30.000000',2,'fb2cde081904412a8b7fdc3f6afd69a1'),(39,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjgyMDg2NCwiaWF0IjoxNjk4NTAwODY0LCJqdGkiOiIyNjQyNWM1NDQwNTc0ZTllYTNlMzQ5ZGY3YWE5MDMzMiIsInVzZXJfaWQiOjJ9.XuNQnJCSnFtg_c8GSxNQRtTIRyJJ7O3SsVgydPRuT90','2023-10-28 13:47:44.294516','2023-12-17 13:47:44.000000',2,'26425c5440574e9ea3e349df7aa90332'),(40,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjgyMTk2NSwiaWF0IjoxNjk4NTAxOTY1LCJqdGkiOiJhYTM0MjQ4Zjc4NzE0ODU2OGU2ZjljZGJiNGQ1MTM0OSIsInVzZXJfaWQiOjJ9.08n7VUbhD0E9BgzKGGAE3uwDRlXeIqAdpyx03-nlVWs','2023-10-28 14:06:05.923376','2023-12-17 14:06:05.000000',2,'aa34248f787148568e6f9cdbb4d51349'),(41,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjgyMjAxNSwiaWF0IjoxNjk4NTAyMDE1LCJqdGkiOiIzNWNiY2YyZGVhNTY0OWEwYjA5ODc2YmNlMmVmOTBiNiIsInVzZXJfaWQiOjJ9.8t5l9sSRbvO0hd3cUMFVTTUMWZE3X4Anf17cVkCAl2E','2023-10-28 14:06:55.165284','2023-12-17 14:06:55.000000',2,'35cbcf2dea5649a0b09876bce2ef90b6'),(42,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjgyNjE5NiwiaWF0IjoxNjk4NTA2MTk2LCJqdGkiOiI2MjJjZmM0MGM4ZTU0OTk1OGNlMWM3YmE3NzNlNjJkNyIsInVzZXJfaWQiOjJ9.8URnXJwQVnvy1MshaGND8pqe0fl1OSa_7E4m4SDHt8U','2023-10-28 15:16:36.882260','2023-12-17 15:16:36.000000',2,'622cfc40c8e549958ce1c7ba773e62d7'),(43,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjgyNjMzNywiaWF0IjoxNjk4NTA2MzM3LCJqdGkiOiI5NzhkN2RjNzFiNTI0ODI4YmE2NWJlZTIyM2JjZWYyZiIsInVzZXJfaWQiOjJ9.k3lvHNrMUoQm5E5Ok2OkGbprlD2DpgLowRqssHcRSYU','2023-10-28 15:18:57.751633','2023-12-17 15:18:57.000000',2,'978d7dc71b524828ba65bee223bcef2f'),(44,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjgyODA0NiwiaWF0IjoxNjk4NTA4MDQ2LCJqdGkiOiI1M2Q1YTBmNjY0Yzk0MGRjYWVmZTc0NzVjYTMwZjk2ZSIsInVzZXJfaWQiOjJ9.Y6Pz1a5iDE3sTLxdc_5RjB7_Hud1Ol3SQxNZjy7ugLE','2023-10-28 15:47:26.304665','2023-12-17 15:47:26.000000',2,'53d5a0f664c940dcaefe7475ca30f96e'),(45,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjgzMTUyNywiaWF0IjoxNjk4NTExNTI3LCJqdGkiOiI3OWUzOWM0NzMxYWQ0OWI5YmVkZTVmNjgzMzM0NmYzNCIsInVzZXJfaWQiOjJ9.H0dm8ImHQaxN98P5-fodWIJMopv-QPeUcespk1a__GA','2023-10-28 16:45:27.782283','2023-12-17 16:45:27.000000',2,'79e39c4731ad49b9bede5f6833346f34'),(46,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjgzMjM3OSwiaWF0IjoxNjk4NTEyMzc5LCJqdGkiOiJlYjRjMDIxNDRhYzg0ODEzYTE5YTE5NDNkZjAxNGU2YSIsInVzZXJfaWQiOjJ9.jKSEKXHk9cqYWd642RExJCKlETG0AtX70nJgGn1E1FY','2023-10-28 16:59:39.797208','2023-12-17 16:59:39.000000',2,'eb4c02144ac84813a19a1943df014e6a'),(47,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjgzMzc0MCwiaWF0IjoxNjk4NTEzNzQwLCJqdGkiOiJlZWM1MTBhMDc1OTM0NzIyYWNmYWE1MWFmNjZjNWFlZCIsInVzZXJfaWQiOjJ9.cBQ4FMBocX-nrbkxRvHT9h65gV_vqnj4jzReKYrC88w','2023-10-28 17:22:20.474352','2023-12-17 17:22:20.000000',2,'eec510a075934722acfaa51af66c5aed'),(48,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjgzNDI3NywiaWF0IjoxNjk4NTE0Mjc3LCJqdGkiOiIzZDlhMjU5Mzk2NTk0YTkyYTU1OGZjMzI3OGYzM2VlMSIsInVzZXJfaWQiOjJ9.qY6r7RKXyLTsdlFvEQY-XQskPmgslHM88aiiEz83qOU','2023-10-28 17:31:17.190796','2023-12-17 17:31:17.000000',2,'3d9a259396594a92a558fc3278f33ee1'),(49,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcwMjgzNDM3MCwiaWF0IjoxNjk4NTE0MzcwLCJqdGkiOiJiOGRiY2IxYTBlNTE0YzhkOTc5NDc4YTQ3OGVlYmFhYSIsInVzZXJfaWQiOjJ9.Q-T_n1ospC6wyBFesMx6aTYGKDcyf0Bq9CXP6Zlma8s','2023-10-28 17:32:50.653933','2023-12-17 17:32:50.000000',2,'b8dbcb1a0e514c8d979478a478eebaaa');
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'piproyecto'
--
/*!50003 DROP PROCEDURE IF EXISTS `obtenerEquipos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerEquipos`(IN proposito VARCHAR(255), marca VARCHAR(255),sistema_operativo VARCHAR(255), cap_disco VARCHAR(255), tip_computador VARCHAR(255))
BEGIN
	SELECT JSON_OBJECT ('presupuesto', compu.costo,'marca', compu.marca,'tipo',compu.tip_computador,'proposito',compu.proposito,'img', compu.img,'disco',compu.cap_disco)
    FROM api_computer as compu 
	WHERE compu.proposito = proposito AND compu.marca = marca AND compu.tip_computador = tip_computador AND compu.sistema_operativo = sistema_operativo AND compu.cap_disco = cap_disco;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-28 12:44:27
