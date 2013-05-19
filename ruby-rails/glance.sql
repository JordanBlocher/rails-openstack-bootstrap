-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: glance
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.04.2

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
-- Table structure for table `image_members`
--

DROP TABLE IF EXISTS `image_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` varchar(36) NOT NULL,
  `member` varchar(255) NOT NULL,
  `can_share` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `image_id` (`image_id`,`member`),
  KEY `ix_image_members_image_id` (`image_id`),
  KEY `ix_image_members_deleted` (`deleted`),
  KEY `ix_image_members_image_id_member` (`image_id`,`member`),
  CONSTRAINT `image_members_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_members`
--

LOCK TABLES `image_members` WRITE;
/*!40000 ALTER TABLE `image_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_properties`
--

DROP TABLE IF EXISTS `image_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `image_id` (`image_id`,`name`),
  UNIQUE KEY `ix_image_properties_image_id_name` (`image_id`,`name`),
  KEY `ix_image_properties_deleted` (`deleted`),
  KEY `ix_image_properties_image_id` (`image_id`),
  CONSTRAINT `image_properties_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_properties`
--

LOCK TABLES `image_properties` WRITE;
/*!40000 ALTER TABLE `image_properties` DISABLE KEYS */;
INSERT INTO `image_properties` VALUES (1,'d27e732f-07b1-4fd4-ac71-a61654e880ba','distro','Ubuntu','2013-03-07 22:30:07','2013-03-07 22:30:07',NULL,0),(2,'cb1d6851-a18b-4620-b97c-227e51230633','kernel_id',NULL,'2013-03-07 22:30:41','2013-03-07 22:30:41',NULL,0),(3,'cb1d6851-a18b-4620-b97c-227e51230633','distro','Ubuntu','2013-03-07 22:30:41','2013-03-07 22:30:41',NULL,0);
/*!40000 ALTER TABLE `image_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `location` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `disk_format` varchar(20) DEFAULT NULL,
  `container_format` varchar(20) DEFAULT NULL,
  `checksum` varchar(32) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `min_disk` int(11) NOT NULL,
  `min_ram` int(11) NOT NULL,
  `protected` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_images_deleted` (`deleted`),
  KEY `ix_images_is_public` (`is_public`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES ('cb1d6851-a18b-4620-b97c-227e51230633','Ubuntu 12.04 i386 Server',1476395008,'killed',1,NULL,'2013-03-07 22:30:41','2013-03-07 22:31:12',NULL,0,'ami','ami',NULL,NULL,0,0,0),('d27e732f-07b1-4fd4-ac71-a61654e880ba','Ubuntu 12.04 i386 Kernel',5016384,'killed',1,NULL,'2013-03-07 22:30:07','2013-03-07 22:30:41',NULL,0,'aki','aki',NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrate_version`
--

DROP TABLE IF EXISTS `migrate_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrate_version` (
  `repository_id` varchar(250) NOT NULL,
  `repository_path` text,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`repository_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrate_version`
--

LOCK TABLES `migrate_version` WRITE;
/*!40000 ALTER TABLE `migrate_version` DISABLE KEYS */;
INSERT INTO `migrate_version` VALUES ('Glance Migrations','/usr/lib/python2.7/dist-packages/glance/registry/db/migrate_repo',13);
/*!40000 ALTER TABLE `migrate_version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-20  3:05:28
