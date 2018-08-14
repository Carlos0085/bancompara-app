-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bancompara
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add artist',7,'add_artist'),(26,'Can change artist',7,'change_artist'),(27,'Can delete artist',7,'delete_artist'),(28,'Can view artist',7,'view_artist'),(29,'Can add genre',8,'add_genre'),(30,'Can change genre',8,'change_genre'),(31,'Can delete genre',8,'delete_genre'),(32,'Can view genre',8,'view_genre'),(33,'Can add song',9,'add_song'),(34,'Can change song',9,'change_song'),(35,'Can delete song',9,'delete_song'),(36,'Can view song',9,'view_song');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$t8keF5l6FB45$L/lgbwVSozpKkSlL2x6vUzxy6c9N2b/TNpwDcmIJXpI=','2018-08-12 23:12:04.809457',1,'carlos','','','carlos_em7@hotmail.com',1,1,'2018-08-12 23:11:44.782819');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-08-12 23:26:17.690978','1','Alternative Rock',1,'[{\"added\": {}}, {\"added\": {\"name\": \"artist\", \"object\": \"Pearl Jam\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"Radiohead\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"The Smashing Pumpkins\"}}]',8,1),(2,'2018-08-12 23:27:13.831185','2','Grunge Metal',1,'[{\"added\": {}}, {\"added\": {\"name\": \"artist\", \"object\": \"Alice in Chains\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"Soundgarden\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"Nirvana\"}}]',8,1),(3,'2018-08-12 23:28:06.318850','2','Grunge Metal',2,'[{\"added\": {\"name\": \"artist\", \"object\": \"Stone Temple Pilots\"}}, {\"changed\": {\"name\": \"artist\", \"object\": \"Nirvana\", \"fields\": [\"band_name\"]}}, {\"changed\": {\"name\": \"artist\", \"object\": \"Soundgarden\", \"fields\": [\"band_name\"]}}]',8,1),(4,'2018-08-12 23:28:35.467860','3','Hard Rock',1,'[{\"added\": {}}, {\"added\": {\"name\": \"artist\", \"object\": \"AC/DC\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"Guns N\' Roses\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"KISS\"}}]',8,1),(5,'2018-08-12 23:29:00.951153','4','Hardcore Punk',1,'[{\"added\": {}}, {\"added\": {\"name\": \"artist\", \"object\": \"Bad Religion\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"Dead Kennedys\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"Rise Against\"}}]',8,1),(6,'2018-08-12 23:29:40.696756','5','Indie Rock',1,'[{\"added\": {}}, {\"added\": {\"name\": \"artist\", \"object\": \"Artic Monkeys\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"The Killers\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"The Kooks\"}}]',8,1),(7,'2018-08-12 23:30:05.830856','5','Indie Rock',2,'[{\"added\": {\"name\": \"artist\", \"object\": \"The Strokes\"}}]',8,1),(8,'2018-08-12 23:30:32.639110','6','Metal Alternativo',1,'[{\"added\": {}}, {\"added\": {\"name\": \"artist\", \"object\": \"Chevelle\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"Papa Roach\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"Tool\"}}]',8,1),(9,'2018-08-12 23:30:56.553530','7','Nu Metal',1,'[{\"added\": {}}, {\"added\": {\"name\": \"artist\", \"object\": \"Korn\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"Limp Bizkit\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"System of a Down\"}}]',8,1),(10,'2018-08-12 23:31:36.712850','8','Pop Punk',1,'[{\"added\": {}}, {\"added\": {\"name\": \"artist\", \"object\": \"Green Day\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"Sum 41\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"Yellowcard\"}}]',8,1),(11,'2018-08-12 23:31:56.342243','9','Rap Metal',1,'[{\"added\": {}}, {\"added\": {\"name\": \"artist\", \"object\": \"Beastie Boys\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"Faith No More\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"Rage Against the Machine\"}}]',8,1),(12,'2018-08-12 23:32:19.886960','9','Rap Metal',2,'[{\"added\": {\"name\": \"artist\", \"object\": \"Red Hot Chili Peppers\"}}]',8,1),(13,'2018-08-12 23:32:50.926263','10','Thrash Metal',1,'[{\"added\": {}}, {\"added\": {\"name\": \"artist\", \"object\": \"Anthrax\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"Megadeth\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"Metallica\"}}, {\"added\": {\"name\": \"artist\", \"object\": \"Slayer\"}}]',8,1),(14,'2018-08-12 23:57:34.387561','26','Yellowcard',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Breathing\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Ocean Avenue\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Only One\"}}]',7,1),(15,'2018-08-12 23:58:42.019927','34','Slayer',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Angel Of Death\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Raining Blood\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Repentless\"}}]',7,1),(16,'2018-08-12 23:59:27.135416','33','Metallica',2,'[{\"added\": {\"name\": \"song\", \"object\": \"All Nightmare Long\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Jump In The Fire\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Now That We\'re Dead\"}}]',7,1),(17,'2018-08-12 23:59:56.791268','32','Megadeth',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Dystopia\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Tornado Of Souls\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Trust\"}}]',7,1),(18,'2018-08-13 00:00:37.294579','31','Anthrax',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Caught In A Mosh\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Got The Time\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Madhouse\"}}]',7,1),(19,'2018-08-13 00:01:12.617877','30','Red Hot Chili Peppers',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Otherside\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Tell Me Baby\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Under The Bridge\"}}]',7,1),(20,'2018-08-13 00:01:45.300899','29','Rage Against the Machine',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Guerrilla Radio\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Killing In The Name\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Wake Up\"}}]',7,1),(21,'2018-08-13 00:02:19.373519','28','Faith No More',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Epic\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Falling To Pieces\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Midlife Crisis\"}}]',7,1),(22,'2018-08-13 00:02:56.379162','27','Beastie Boys',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Fight For Your Right\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Intergalactic\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Sabotage\"}}]',7,1),(23,'2018-08-13 00:03:27.678150','26','Yellowcard',2,'[{\"changed\": {\"name\": \"song\", \"object\": \"Breathing\", \"fields\": [\"video_id\"]}}, {\"changed\": {\"name\": \"song\", \"object\": \"Ocean Avenue\", \"fields\": [\"video_id\"]}}, {\"changed\": {\"name\": \"song\", \"object\": \"Only One\", \"fields\": [\"video_id\"]}}]',7,1),(24,'2018-08-13 00:04:01.788150','25','Sum 41',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Blood In My Eyes\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Fat Lip\"}}, {\"added\": {\"name\": \"song\", \"object\": \"In Too Deep\"}}]',7,1),(25,'2018-08-13 00:04:39.061351','24','Green Day',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Bang Bang\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Holiday\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Jesus Of Suburbia\"}}]',7,1),(26,'2018-08-13 00:05:26.170497','23','System of a Down',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Aerials\"}}, {\"added\": {\"name\": \"song\", \"object\": \"B.Y.O.B.\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Toxicity\"}}]',7,1),(27,'2018-08-13 00:06:00.763716','22','Limp Bizkit',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Break Stuff\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Rollin\'\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Take a Look Around\"}}]',7,1),(28,'2018-08-13 00:06:31.971871','21','Korn',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Coming Undone\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Freak On a Leash\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Twisted Transistor\"}}]',7,1),(29,'2018-08-13 00:07:04.568352','20','Tool',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Lateralus\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Parabola\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Schism\"}}]',7,1),(30,'2018-08-13 00:07:36.571845','19','Papa Roach',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Between Angels and Insects\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Help\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Last Resort\"}}]',7,1),(31,'2018-08-13 00:08:12.011098','18','Chevelle',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Hunter Eats Hunter\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Take Out the Gunman\"}}, {\"added\": {\"name\": \"song\", \"object\": \"The Clincher\"}}]',7,1),(32,'2018-08-13 00:08:58.159840','17','The Strokes',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Reptilia\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Under Cover of Darkness\"}}, {\"added\": {\"name\": \"song\", \"object\": \"You Only Live Once\"}}]',7,1),(33,'2018-08-13 00:09:30.171592','16','The Kooks',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Naive\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Seaside\"}}, {\"added\": {\"name\": \"song\", \"object\": \"She Moves In Her Own Way\"}}]',7,1),(34,'2018-08-13 00:10:02.248681','15','The Killers',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Runaways\"}}, {\"added\": {\"name\": \"song\", \"object\": \"The Way It Was\"}}, {\"added\": {\"name\": \"song\", \"object\": \"When You Were Young\"}}]',7,1),(35,'2018-08-13 00:10:31.253727','14','Artic Monkeys',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Do I Wanna Know?\"}}, {\"added\": {\"name\": \"song\", \"object\": \"I Bet You Look Good On The Dancefloor\"}}, {\"added\": {\"name\": \"song\", \"object\": \"R U Mine?\"}}]',7,1),(36,'2018-08-13 00:11:36.721229','13','Rise Against',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Disparity By Design\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Injection\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Savior\"}}]',7,1),(37,'2018-08-13 00:12:11.163580','12','Dead Kennedys',2,'[{\"added\": {\"name\": \"song\", \"object\": \"California Uber Alles\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Holiday in Cambodia\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Police Truck\"}}]',7,1),(38,'2018-08-13 00:13:01.134356','11','Bad Religion',2,'[{\"added\": {\"name\": \"song\", \"object\": \"21st Century (Digital Boy)\"}}, {\"added\": {\"name\": \"song\", \"object\": \"American Jesus\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Fuck You\"}}]',7,1),(39,'2018-08-13 00:13:34.968362','10','KISS',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Detroit Rock City\"}}, {\"added\": {\"name\": \"song\", \"object\": \"I Was Made For Lovin\' You\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Rock And Roll All Nite\"}}]',7,1),(40,'2018-08-13 00:14:02.188165','9','Guns N\' Roses',2,'[{\"added\": {\"name\": \"song\", \"object\": \"November Rain\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Paradise City\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Welcome To The Jungle\"}}]',7,1),(41,'2018-08-13 00:14:29.844406','8','AC/DC',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Back In Black\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Highway to Hell\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Thunderstruck\"}}]',7,1),(42,'2018-08-13 00:14:57.460191','7','Stone Temple Pilots',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Interstate Love Song\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Plush\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Sex Type Thing\"}}]',7,1),(43,'2018-08-13 00:15:31.117717','6','Soundgarden',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Black Hole Sun\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Outshined\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Spoonman\"}}]',7,1),(44,'2018-08-13 00:16:05.679428','5','Nirvana',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Come As You Are\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Smells Like Teen Spirit\"}}, {\"added\": {\"name\": \"song\", \"object\": \"The Man Who Sold The World\"}}]',7,1),(45,'2018-08-13 00:16:31.910533','4','Alice in Chains',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Man in the Box\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Rooster\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Would?\"}}]',7,1),(46,'2018-08-13 00:17:06.842295','3','The Smashing Pumpkins',2,'[{\"added\": {\"name\": \"song\", \"object\": \"1979\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Bullet With Butterfly Wings\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Cherub Rock\"}}]',7,1),(47,'2018-08-13 00:17:48.538380','2','Radiohead',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Creep\"}}, {\"added\": {\"name\": \"song\", \"object\": \"High And Dry\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Karma Police\"}}]',7,1),(48,'2018-08-13 00:18:16.743519','1','Pearl Jam',2,'[{\"added\": {\"name\": \"song\", \"object\": \"Alive\"}}, {\"added\": {\"name\": \"song\", \"object\": \"Black\"}}, {\"added\": {\"name\": \"song\", \"object\": \"The Fixer\"}}]',7,1),(49,'2018-08-13 01:04:30.583739','34','Slayer',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(50,'2018-08-13 01:05:51.453192','33','Metallica',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(51,'2018-08-13 01:08:29.656598','32','Megadeth',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(52,'2018-08-13 01:09:05.080772','31','Anthrax',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(53,'2018-08-13 01:10:09.143628','30','Red Hot Chili Peppers',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(54,'2018-08-13 01:10:35.938866','29','Rage Against the Machine',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(55,'2018-08-13 01:11:10.962417','28','Faith No More',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(56,'2018-08-13 01:11:39.528602','27','Beastie Boys',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(57,'2018-08-13 01:12:06.107643','26','Yellowcard',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(58,'2018-08-13 01:13:01.592946','25','Sum 41',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(59,'2018-08-13 01:13:40.583581','24','Green Day',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(60,'2018-08-13 01:14:10.768782','23','System of a Down',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(61,'2018-08-13 01:14:47.894861','22','Limp Bizkit',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(62,'2018-08-13 01:15:15.967450','21','Korn',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(63,'2018-08-13 01:15:55.030183','20','Tool',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(64,'2018-08-13 01:16:59.400293','19','Papa Roach',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(65,'2018-08-13 01:17:32.622426','18','Chevelle',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(66,'2018-08-13 01:18:05.036551','17','The Strokes',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(67,'2018-08-13 01:18:34.139288','16','The Kooks',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(68,'2018-08-13 01:19:03.126689','15','The Killers',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(69,'2018-08-13 01:19:43.610670','14','Artic Monkeys',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(70,'2018-08-13 01:20:26.597331','13','Rise Against',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(71,'2018-08-13 01:21:23.074503','12','Dead Kennedys',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(72,'2018-08-13 01:21:52.654868','11','Bad Religion',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(73,'2018-08-13 01:22:16.261298','10','KISS',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(74,'2018-08-13 01:22:43.334216','9','Guns N\' Roses',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(75,'2018-08-13 01:23:15.153764','8','AC/DC',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(76,'2018-08-13 01:23:48.852800','7','Stone Temple Pilots',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(77,'2018-08-13 01:24:26.262129','6','Soundgarden',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(78,'2018-08-13 01:24:56.432381','5','Nirvana',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(79,'2018-08-13 01:25:24.285118','4','Alice in Chains',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(80,'2018-08-13 01:25:56.848269','3','The Smashing Pumpkins',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(81,'2018-08-13 01:26:37.236500','2','Radiohead',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(82,'2018-08-13 01:27:52.434653','1','Pearl Jam',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1),(83,'2018-08-13 01:31:49.998342','34','Slayer',2,'[{\"changed\": {\"fields\": [\"artist_cover_image\"]}}]',7,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'jukebox','artist'),(8,'jukebox','genre'),(9,'jukebox','song'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'jukebox','0001_initial','2018-08-12 23:00:17.260348'),(2,'jukebox','0002_auto_20180811_2214','2018-08-12 23:00:18.756800'),(3,'contenttypes','0001_initial','2018-08-12 23:10:01.598345'),(4,'auth','0001_initial','2018-08-12 23:10:16.749365'),(5,'admin','0001_initial','2018-08-12 23:10:20.688490'),(6,'admin','0002_logentry_remove_auto_add','2018-08-12 23:10:20.889677'),(7,'admin','0003_logentry_add_action_flag_choices','2018-08-12 23:10:20.975471'),(8,'contenttypes','0002_remove_content_type_name','2018-08-12 23:10:22.784324'),(9,'auth','0002_alter_permission_name_max_length','2018-08-12 23:10:23.972286'),(10,'auth','0003_alter_user_email_max_length','2018-08-12 23:10:26.375865'),(11,'auth','0004_alter_user_username_opts','2018-08-12 23:10:26.494972'),(12,'auth','0005_alter_user_last_login_null','2018-08-12 23:10:27.755929'),(13,'auth','0006_require_contenttypes_0002','2018-08-12 23:10:27.817273'),(14,'auth','0007_alter_validators_add_error_messages','2018-08-12 23:10:27.985386'),(15,'auth','0008_alter_user_username_max_length','2018-08-12 23:10:29.121570'),(16,'auth','0009_alter_user_last_name_max_length','2018-08-12 23:10:30.271436'),(17,'sessions','0001_initial','2018-08-12 23:10:31.643528');
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
INSERT INTO `django_session` VALUES ('ofdw0055ytl9soqo135x387y6pmvkcpr','NWZhY2Y0Nzk5Zjg0MzMyNGFiNmVlNjgwNGUxZTgwNTZjNzQzMTFkMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOTk5ZGY2ZWVjNDFlZWJlYzJiMmI1ZjFkZTgzNTRkYmRmNmFmN2JkIn0=','2018-08-26 23:12:04.876483');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jukebox_artist`
--

DROP TABLE IF EXISTS `jukebox_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jukebox_artist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `band_name` varchar(255) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `artist_cover_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jukebox_artist_genre_id_1336bb2c_fk_jukebox_genre_id` (`genre_id`),
  CONSTRAINT `jukebox_artist_genre_id_1336bb2c_fk_jukebox_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `jukebox_genre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jukebox_artist`
--

LOCK TABLES `jukebox_artist` WRITE;
/*!40000 ALTER TABLE `jukebox_artist` DISABLE KEYS */;
INSERT INTO `jukebox_artist` VALUES (1,'2018-08-12 23:26:17.653971','Pearl Jam',1,'https://i.ebayimg.com/images/g/n9oAAOSwWTRWvmFK/s-l300.jpg'),(2,'2018-08-12 23:26:17.656969','Radiohead',1,'https://albumartexchange.com/coverart/gallery/ra/radiohead_comlag2plus2isfive_rm0.jpg'),(3,'2018-08-12 23:26:17.658970','The Smashing Pumpkins',1,'http://cdn.ismorbo.com/wp-content/uploads/2016/11/mellon-collie-and-the-infinite-sadness-cover.jpg'),(4,'2018-08-12 23:27:13.826188','Alice in Chains',2,'https://upload.wikimedia.org/wikipedia/en/thumb/f/f9/Dirt_%28Alice_in_Chains_album_-_cover_art%29.jpg/220px-Dirt_%28Alice_in_Chains_album_-_cover_art%29.jpg'),(5,'2018-08-12 23:27:13.828187','Nirvana',2,'https://upload.wikimedia.org/wikipedia/en/thumb/b/b7/NirvanaNevermindalbumcover.jpg/220px-NirvanaNevermindalbumcover.jpg'),(6,'2018-08-12 23:27:13.829159','Soundgarden',2,'https://images-na.ssl-images-amazon.com/images/I/71FIrNJG3FL._SL1400_.jpg'),(7,'2018-08-12 23:28:06.317880','Stone Temple Pilots',2,'http://www.feelnumb.com/wp-content/uploads/2010/10/allcdcovers_stone_temple_pilots_purple_1994_retail_cd-front-1024x1009.jpg'),(8,'2018-08-12 23:28:35.318945','AC/DC',3,'https://upload.wikimedia.org/wikipedia/en/5/5c/ACDC_Back_in_Black_Single_Cover.jpg'),(9,'2018-08-12 23:28:35.320944','Guns N\' Roses',3,'https://upload.wikimedia.org/wikipedia/en/thumb/6/60/GunsnRosesAppetiteforDestructionalbumcover.jpg/220px-GunsnRosesAppetiteforDestructionalbumcover.jpg'),(10,'2018-08-12 23:28:35.465861','KISS',3,'https://upload.wikimedia.org/wikipedia/en/thumb/b/b6/Dynasty_%28album%29_cover.jpg/220px-Dynasty_%28album%29_cover.jpg'),(11,'2018-08-12 23:29:00.608029','Bad Religion',4,'https://upload.wikimedia.org/wikipedia/en/thumb/3/33/Bad_Religion_-_True_North.jpg/220px-Bad_Religion_-_True_North.jpg'),(12,'2018-08-12 23:29:00.811855','Dead Kennedys',4,'https://upload.wikimedia.org/wikipedia/en/b/ba/Dead_Kennedys_-_Too_Drunk_to_Fuck_cover.jpg'),(13,'2018-08-12 23:29:00.949154','Rise Against',4,'https://upload.wikimedia.org/wikipedia/en/thumb/d/df/ATRFinal.jpg/220px-ATRFinal.jpg'),(14,'2018-08-12 23:29:40.585825','Artic Monkeys',5,'https://www.albumartexchange.com/coverart/gallery/ar/arcticmonkeys_am_67p5.jpg'),(15,'2018-08-12 23:29:40.586851','The Killers',5,'https://ksassets.timeincuk.net/wp/uploads/sites/55/2012/09/TheKillersBattleBorn600Gb030912.jpg'),(16,'2018-08-12 23:29:40.694751','The Kooks',5,'https://media.timeout.com/images/101693225/630/472/image.jpg'),(17,'2018-08-12 23:30:05.819861','The Strokes',5,'https://upload.wikimedia.org/wikipedia/en/thumb/d/d9/Strokes_1.jpg/220px-Strokes_1.jpg'),(18,'2018-08-12 23:30:32.493027','Chevelle',6,'https://upload.wikimedia.org/wikipedia/en/thumb/1/17/Chevelle_La_G%C3%A1rgola_album_cover.jpg/220px-Chevelle_La_G%C3%A1rgola_album_cover.jpg'),(19,'2018-08-12 23:30:32.635107','Papa Roach',6,'https://vignette.wikia.nocookie.net/paparoach/images/b/b2/Papa_Roach-Lovehatetragedy-Frontal-1-.jpg/revision/latest?cb=20111122094351'),(20,'2018-08-12 23:30:32.637135','Tool',6,'https://i.ytimg.com/vi/yYCtz-BzlMU/hqdefault.jpg'),(21,'2018-08-12 23:30:56.390625','Korn',7,'https://upload.wikimedia.org/wikipedia/en/thumb/b/b6/KoRnIssues.jpg/220px-KoRnIssues.jpg'),(22,'2018-08-12 23:30:56.393623','Limp Bizkit',7,'https://upload.wikimedia.org/wikipedia/en/thumb/b/b8/Limp_Bizkit_Significant_Other.jpg/220px-Limp_Bizkit_Significant_Other.jpg'),(23,'2018-08-12 23:30:56.550533','System of a Down',7,'https://upload.wikimedia.org/wikipedia/en/thumb/6/64/SystemofaDownToxicityalbumcover.jpg/220px-SystemofaDownToxicityalbumcover.jpg'),(24,'2018-08-12 23:31:36.413034','Green Day',8,'https://upload.wikimedia.org/wikipedia/en/thumb/2/2b/Green_Day_-_American_Idiot_cover.jpg/220px-Green_Day_-_American_Idiot_cover.jpg'),(25,'2018-08-12 23:31:36.610910','Sum 41',8,'https://albumartexchange.com/coverart/gallery/su/sum41_doesthislookinfected_36m7.jpg'),(26,'2018-08-12 23:31:36.613909','Yellowcard',8,'https://upload.wikimedia.org/wikipedia/en/thumb/0/08/Ocean_Avenue_-_Yellowcard.jpg/220px-Ocean_Avenue_-_Yellowcard.jpg'),(27,'2018-08-12 23:31:56.329250','Beastie Boys',9,'https://upload.wikimedia.org/wikipedia/en/thumb/d/d1/Beastieboys_checkyourhead.jpg/220px-Beastieboys_checkyourhead.jpg'),(28,'2018-08-12 23:31:56.338244','Faith No More',9,'https://upload.wikimedia.org/wikipedia/en/thumb/2/24/Faith_no_more_angel_dust.jpg/220px-Faith_no_more_angel_dust.jpg'),(29,'2018-08-12 23:31:56.340243','Rage Against the Machine',9,'https://upload.wikimedia.org/wikipedia/en/thumb/1/1a/RageAgainsttheMachineRageAgainsttheMachine.jpg/220px-RageAgainsttheMachineRageAgainsttheMachine.jpg'),(30,'2018-08-12 23:32:19.860098','Red Hot Chili Peppers',9,'https://i.pinimg.com/originals/cc/cb/32/cccb3266b4e6aa7cb0d303f95d0c2796.jpg'),(31,'2018-08-12 23:32:50.917268','Anthrax',10,'https://upload.wikimedia.org/wikipedia/en/thumb/7/7a/Worship_Music.jpg/220px-Worship_Music.jpg'),(32,'2018-08-12 23:32:50.919266','Megadeth',10,'https://upload.wikimedia.org/wikipedia/en/thumb/4/40/Megadeth_-_Peace_Sells..._But_Who%27s_Buying-.jpg/220px-Megadeth_-_Peace_Sells..._But_Who%27s_Buying-.jpg'),(33,'2018-08-12 23:32:50.922265','Metallica',10,'https://up-1.cdn-fullscreendirect.com/photos/7549/large/20161022_184841_7549_958066.jpeg'),(34,'2018-08-12 23:32:50.924264','Slayer',10,'https://upload.wikimedia.org/wikipedia/en/thumb/8/8e/Reign_in_blood.jpg/220px-Reign_in_blood.jpg');
/*!40000 ALTER TABLE `jukebox_artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jukebox_genre`
--

DROP TABLE IF EXISTS `jukebox_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jukebox_genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jukebox_genre`
--

LOCK TABLES `jukebox_genre` WRITE;
/*!40000 ALTER TABLE `jukebox_genre` DISABLE KEYS */;
INSERT INTO `jukebox_genre` VALUES (1,'2018-08-12 23:26:17.647984','Alternative Rock'),(2,'2018-08-12 23:27:13.821167','Grunge Metal'),(3,'2018-08-12 23:28:35.315946','Hard Rock'),(4,'2018-08-12 23:29:00.602030','Hardcore Punk'),(5,'2018-08-12 23:29:40.517611','Indie Rock'),(6,'2018-08-12 23:30:32.432073','Metal Alternativo'),(7,'2018-08-12 23:30:56.360642','Nu Metal'),(8,'2018-08-12 23:31:36.367047','Pop Punk'),(9,'2018-08-12 23:31:56.314257','Rap Metal'),(10,'2018-08-12 23:32:50.887312','Thrash Metal');
/*!40000 ALTER TABLE `jukebox_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jukebox_song`
--

DROP TABLE IF EXISTS `jukebox_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jukebox_song` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `song_name` varchar(255) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `video_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jukebox_song_artist_id_926d00c0_fk_jukebox_artist_id` (`artist_id`),
  CONSTRAINT `jukebox_song_artist_id_926d00c0_fk_jukebox_artist_id` FOREIGN KEY (`artist_id`) REFERENCES `jukebox_artist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jukebox_song`
--

LOCK TABLES `jukebox_song` WRITE;
/*!40000 ALTER TABLE `jukebox_song` DISABLE KEYS */;
INSERT INTO `jukebox_song` VALUES (1,'2018-08-12 23:57:34.299639','Breathing',26,'71785867'),(2,'2018-08-12 23:57:34.319606','Ocean Avenue',26,'88938937'),(3,'2018-08-12 23:57:34.321597','Only One',26,'40028813'),(4,'2018-08-12 23:58:41.781151','Angel Of Death',34,'67308135'),(5,'2018-08-12 23:58:41.828031','Raining Blood',34,'73583158'),(6,'2018-08-12 23:58:41.830030','Repentless',34,'129833057'),(7,'2018-08-12 23:59:26.960519','All Nightmare Long',33,'80227747'),(8,'2018-08-12 23:59:26.994498','Jump In The Fire',33,'221399491'),(9,'2018-08-12 23:59:27.133419','Now That We\'re Dead',33,'217721572'),(10,'2018-08-12 23:59:56.739958','Dystopia',32,'1'),(11,'2018-08-12 23:59:56.787294','Tornado Of Souls',32,'23139246'),(12,'2018-08-12 23:59:56.789292','Trust',32,'47803526'),(13,'2018-08-13 00:00:37.258621','Caught In A Mosh',31,'21672414'),(14,'2018-08-13 00:00:37.290575','Got The Time',31,'21824455'),(15,'2018-08-13 00:00:37.291579','Madhouse',31,'1162463'),(16,'2018-08-13 00:01:12.583888','Otherside',30,'40934159'),(17,'2018-08-13 00:01:12.612867','Tell Me Baby',30,'46184565'),(18,'2018-08-13 00:01:12.614867','Under The Bridge',30,'36522197'),(19,'2018-08-13 00:01:45.266249','Guerrilla Radio',29,'214517615'),(20,'2018-08-13 00:01:45.297902','Killing In The Name',29,'6797215'),(21,'2018-08-13 00:01:45.298872','Wake Up',29,'55670343'),(22,'2018-08-13 00:02:19.153390','Epic',28,'30463669'),(23,'2018-08-13 00:02:19.177603','Falling To Pieces',28,'1'),(24,'2018-08-13 00:02:19.371492','Midlife Crisis',28,'65094025'),(25,'2018-08-13 00:02:56.294211','Fight For Your Right',27,'91581061'),(26,'2018-08-13 00:02:56.302207','Intergalactic',27,'2527773'),(27,'2018-08-13 00:02:56.304205','Sabotage',27,'41574523'),(28,'2018-08-13 00:04:01.756167','Blood In My Eyes',25,'36223757'),(29,'2018-08-13 00:04:01.784151','Fat Lip',25,'215586710'),(30,'2018-08-13 00:04:01.786151','In Too Deep',25,'210419486'),(31,'2018-08-13 00:04:38.940730','Bang Bang',24,'198929935'),(32,'2018-08-13 00:04:38.961674','Holiday',24,'71997762'),(33,'2018-08-13 00:04:39.059324','Jesus Of Suburbia',24,'6381448'),(34,'2018-08-13 00:05:26.131526','Aerials',23,'7113279'),(35,'2018-08-13 00:05:26.166500','B.Y.O.B.',23,'23723682'),(36,'2018-08-13 00:05:26.168499','Toxicity',23,'9322859'),(37,'2018-08-13 00:06:00.735212','Break Stuff',22,'98436448'),(38,'2018-08-13 00:06:00.759718','Rollin\'',22,'82674409'),(39,'2018-08-13 00:06:00.761716','Take a Look Around',22,'1064765'),(40,'2018-08-13 00:06:31.956881','Coming Undone',21,'14001165'),(41,'2018-08-13 00:06:31.966874','Freak On a Leash',21,'10039740'),(42,'2018-08-13 00:06:31.968874','Twisted Transistor',21,'268222261'),(43,'2018-08-13 00:07:04.511237','Lateralus',20,'34701906'),(44,'2018-08-13 00:07:04.565383','Parabola',20,'114189982'),(45,'2018-08-13 00:07:04.566354','Schism',20,'49578865'),(46,'2018-08-13 00:07:36.540863','Between Angels and Insects',19,'93770909'),(47,'2018-08-13 00:07:36.568848','Help',19,'220353699'),(48,'2018-08-13 00:07:36.569818','Last Resort',19,'61475094'),(49,'2018-08-13 00:08:11.981106','Hunter Eats Hunter',18,'95782540'),(50,'2018-08-13 00:08:12.007099','Take Out the Gunman',18,'96113904'),(51,'2018-08-13 00:08:12.009099','The Clincher',18,'243294668'),(52,'2018-08-13 00:08:58.130483','Reptilia',17,'4483630'),(53,'2018-08-13 00:08:58.156843','Under Cover of Darkness',17,'20568098'),(54,'2018-08-13 00:08:58.157813','You Only Live Once',17,'28530223'),(55,'2018-08-13 00:09:30.051662','Naive',16,'2997645'),(56,'2018-08-13 00:09:30.065654','Seaside',16,'26054114'),(57,'2018-08-13 00:09:30.168595','She Moves In Her Own Way',16,'155334799'),(58,'2018-08-13 00:10:02.211296','Runaways',15,'56050802'),(59,'2018-08-13 00:10:02.244684','The Way It Was',15,'63921851'),(60,'2018-08-13 00:10:02.246661','When You Were Young',15,'49305758'),(61,'2018-08-13 00:10:31.215748','Do I Wanna Know?',14,'69107547'),(62,'2018-08-13 00:10:31.247731','I Bet You Look Good On The Dancefloor',14,'119300496'),(63,'2018-08-13 00:10:31.250729','R U Mine?',14,'86735191'),(64,'2018-08-13 00:11:36.674248','Disparity By Design',13,'1'),(65,'2018-08-13 00:11:36.717223','Injection',13,'16448384'),(66,'2018-08-13 00:11:36.719251','Savior',13,'6788557'),(67,'2018-08-13 00:12:11.159583','California Uber Alles',12,'66730852'),(68,'2018-08-13 00:12:11.160563','Holiday in Cambodia',12,'45624499'),(69,'2018-08-13 00:12:11.161581','Police Truck',12,'4172547'),(70,'2018-08-13 00:13:01.128354','21st Century (Digital Boy)',11,'12458968'),(71,'2018-08-13 00:13:01.130353','American Jesus',11,'71562882'),(72,'2018-08-13 00:13:01.132351','Fuck You',11,'69570220'),(73,'2018-08-13 00:13:34.947374','Detroit Rock City',10,'12378434'),(74,'2018-08-13 00:13:34.964342','I Was Made For Lovin\' You',10,'208596870'),(75,'2018-08-13 00:13:34.966342','Rock And Roll All Nite',10,'86771605'),(76,'2018-08-13 00:14:02.183168','November Rain',9,'5535072'),(77,'2018-08-13 00:14:02.185161','Paradise City',9,'66714990'),(78,'2018-08-13 00:14:02.187167','Welcome To The Jungle',9,'262558970'),(79,'2018-08-13 00:14:29.795886','Back In Black',8,'6467648'),(80,'2018-08-13 00:14:29.840381','Highway to Hell',8,'141125221'),(81,'2018-08-13 00:14:29.842380','Thunderstruck',8,'4013963'),(82,'2018-08-13 00:14:57.256315','Interstate Love Song',7,'17763625'),(83,'2018-08-13 00:14:57.294286','Plush',7,'155050334'),(84,'2018-08-13 00:14:57.457194','Sex Type Thing',7,'75115628'),(85,'2018-08-13 00:15:31.080738','Black Hole Sun',6,'66640396'),(86,'2018-08-13 00:15:31.113690','Outshined',6,'168413990'),(87,'2018-08-13 00:15:31.115690','Spoonman',6,'16208279'),(88,'2018-08-13 00:16:05.638452','Come As You Are',5,'30045532'),(89,'2018-08-13 00:16:05.675430','Smells Like Teen Spirit',5,'52215127'),(90,'2018-08-13 00:16:05.677428','The Man Who Sold The World',5,'67294775'),(91,'2018-08-13 00:16:31.902538','Man in the Box',4,'76682633'),(92,'2018-08-13 00:16:31.905535','Rooster',4,'20150953'),(93,'2018-08-13 00:16:31.907534','Would?',4,'87773134'),(94,'2018-08-13 00:17:06.783204','1979',3,'88315428'),(95,'2018-08-13 00:17:06.838302','Bullet With Butterfly Wings',3,'13859064'),(96,'2018-08-13 00:17:06.840294','Cherub Rock',3,'1702910'),(97,'2018-08-13 00:17:48.533383','Creep',2,'152846096'),(98,'2018-08-13 00:17:48.534389','High And Dry',2,'27117312'),(99,'2018-08-13 00:17:48.536380','Karma Police',2,'22918239'),(100,'2018-08-13 00:18:16.738522','Alive',1,'1458036'),(101,'2018-08-13 00:18:16.740525','Black',1,'34270507'),(102,'2018-08-13 00:18:16.741519','The Fixer',1,'23015803');
/*!40000 ALTER TABLE `jukebox_song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-13  1:30:52
