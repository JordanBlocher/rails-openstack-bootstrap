-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: nova
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
-- Table structure for table `agent_builds`
--

DROP TABLE IF EXISTS `agent_builds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_builds` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hypervisor` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `architecture` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `md5hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_builds`
--

LOCK TABLES `agent_builds` WRITE;
/*!40000 ALTER TABLE `agent_builds` DISABLE KEYS */;
/*!40000 ALTER TABLE `agent_builds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aggregate_hosts`
--

DROP TABLE IF EXISTS `aggregate_hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aggregate_hosts` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(255) DEFAULT NULL,
  `aggregate_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `host` (`host`),
  KEY `aggregate_id` (`aggregate_id`),
  CONSTRAINT `aggregate_hosts_ibfk_1` FOREIGN KEY (`aggregate_id`) REFERENCES `aggregates` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aggregate_hosts`
--

LOCK TABLES `aggregate_hosts` WRITE;
/*!40000 ALTER TABLE `aggregate_hosts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aggregate_hosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aggregate_metadata`
--

DROP TABLE IF EXISTS `aggregate_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aggregate_metadata` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aggregate_id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aggregate_id` (`aggregate_id`),
  CONSTRAINT `aggregate_metadata_ibfk_1` FOREIGN KEY (`aggregate_id`) REFERENCES `aggregates` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aggregate_metadata`
--

LOCK TABLES `aggregate_metadata` WRITE;
/*!40000 ALTER TABLE `aggregate_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `aggregate_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aggregates`
--

DROP TABLE IF EXISTS `aggregates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aggregates` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `operational_state` varchar(255) NOT NULL,
  `availability_zone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aggregates`
--

LOCK TABLES `aggregates` WRITE;
/*!40000 ALTER TABLE `aggregates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aggregates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_tokens`
--

DROP TABLE IF EXISTS `auth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_tokens` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `token_hash` varchar(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `server_management_url` varchar(255) DEFAULT NULL,
  `storage_url` varchar(255) DEFAULT NULL,
  `cdn_management_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`token_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_tokens`
--

LOCK TABLES `auth_tokens` WRITE;
/*!40000 ALTER TABLE `auth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_device_mapping`
--

DROP TABLE IF EXISTS `block_device_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_device_mapping` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL,
  `device_name` varchar(255) NOT NULL,
  `delete_on_termination` tinyint(1) DEFAULT NULL,
  `virtual_name` varchar(255) DEFAULT NULL,
  `snapshot_id` int(11) DEFAULT NULL,
  `volume_id` int(11) DEFAULT NULL,
  `volume_size` int(11) DEFAULT NULL,
  `no_device` tinyint(1) DEFAULT NULL,
  `connection_info` mediumtext,
  PRIMARY KEY (`id`),
  KEY `instance_id` (`instance_id`),
  KEY `snapshot_id` (`snapshot_id`),
  KEY `volume_id` (`volume_id`),
  CONSTRAINT `block_device_mapping_ibfk_1` FOREIGN KEY (`instance_id`) REFERENCES `instances` (`id`),
  CONSTRAINT `block_device_mapping_ibfk_2` FOREIGN KEY (`snapshot_id`) REFERENCES `snapshots` (`id`),
  CONSTRAINT `block_device_mapping_ibfk_3` FOREIGN KEY (`volume_id`) REFERENCES `volumes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_device_mapping`
--

LOCK TABLES `block_device_mapping` WRITE;
/*!40000 ALTER TABLE `block_device_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_device_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_usage_cache`
--

DROP TABLE IF EXISTS `bw_usage_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_usage_cache` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_period` datetime NOT NULL,
  `last_refreshed` datetime DEFAULT NULL,
  `bw_in` bigint(20) DEFAULT NULL,
  `bw_out` bigint(20) DEFAULT NULL,
  `mac` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_usage_cache`
--

LOCK TABLES `bw_usage_cache` WRITE;
/*!40000 ALTER TABLE `bw_usage_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `bw_usage_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cells`
--

DROP TABLE IF EXISTS `cells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cells` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_url` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `weight_offset` float DEFAULT NULL,
  `weight_scale` float DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT NULL,
  `rpc_host` varchar(255) DEFAULT NULL,
  `rpc_port` int(11) DEFAULT NULL,
  `rpc_virtual_host` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cells`
--

LOCK TABLES `cells` WRITE;
/*!40000 ALTER TABLE `cells` DISABLE KEYS */;
/*!40000 ALTER TABLE `cells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificates` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificates`
--

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;
INSERT INTO `certificates` VALUES ('2013-02-08 00:00:26',NULL,NULL,0,1,'openstack','cookbook','/var/lib/nova/CA/newcerts/10.pem'),('2013-02-08 00:03:26',NULL,NULL,0,2,'openstack','cookbook','/var/lib/nova/CA/newcerts/11.pem'),('2013-02-14 23:49:11',NULL,NULL,0,3,'myUser','cookbook','/var/lib/nova/CA/newcerts/12.pem');
/*!40000 ALTER TABLE `certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compute_nodes`
--

DROP TABLE IF EXISTS `compute_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compute_nodes` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `vcpus` int(11) NOT NULL,
  `memory_mb` int(11) NOT NULL,
  `local_gb` int(11) NOT NULL,
  `vcpus_used` int(11) NOT NULL,
  `memory_mb_used` int(11) NOT NULL,
  `local_gb_used` int(11) NOT NULL,
  `hypervisor_type` mediumtext NOT NULL,
  `hypervisor_version` int(11) NOT NULL,
  `cpu_info` mediumtext NOT NULL,
  `disk_available_least` int(11) DEFAULT NULL,
  `free_ram_mb` int(11) DEFAULT NULL,
  `free_disk_gb` int(11) DEFAULT NULL,
  `current_workload` int(11) DEFAULT NULL,
  `running_vms` int(11) DEFAULT NULL,
  `hypervisor_hostname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compute_nodes`
--

LOCK TABLES `compute_nodes` WRITE;
/*!40000 ALTER TABLE `compute_nodes` DISABLE KEYS */;
INSERT INTO `compute_nodes` VALUES ('2013-02-01 01:13:51','2013-04-20 10:05:41',NULL,0,1,2,4,3947,454,4,3491,20,'QEMU',1000000,'{\"vendor\": \"Intel\", \"model\": \"Nehalem\", \"arch\": \"x86_64\", \"features\": [\"rdtscp\", \"dca\", \"xtpr\", \"tm2\", \"est\", \"vmx\", \"ds_cpl\", \"monitor\", \"pbe\", \"tm\", \"ht\", \"ss\", \"acpi\", \"ds\", \"vme\"], \"topology\": {\"cores\": \"4\", \"threads\": \"1\", \"sockets\": \"1\"}}',430,1387,454,0,4,NULL);
/*!40000 ALTER TABLE `compute_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `console_pools`
--

DROP TABLE IF EXISTS `console_pools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `console_pools` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `console_type` varchar(255) DEFAULT NULL,
  `public_hostname` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `compute_host` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `console_pools`
--

LOCK TABLES `console_pools` WRITE;
/*!40000 ALTER TABLE `console_pools` DISABLE KEYS */;
/*!40000 ALTER TABLE `console_pools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consoles`
--

DROP TABLE IF EXISTS `consoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consoles` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instance_name` varchar(255) DEFAULT NULL,
  `instance_id` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `pool_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pool_id` (`pool_id`),
  CONSTRAINT `consoles_ibfk_1` FOREIGN KEY (`pool_id`) REFERENCES `console_pools` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consoles`
--

LOCK TABLES `consoles` WRITE;
/*!40000 ALTER TABLE `consoles` DISABLE KEYS */;
/*!40000 ALTER TABLE `consoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dns_domains`
--

DROP TABLE IF EXISTS `dns_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dns_domains` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `domain` varchar(255) NOT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `availability_zone` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`domain`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `dns_domains_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dns_domains`
--

LOCK TABLES `dns_domains` WRITE;
/*!40000 ALTER TABLE `dns_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `dns_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fixed_ips`
--

DROP TABLE IF EXISTS `fixed_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fixed_ips` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `network_id` int(11) DEFAULT NULL,
  `instance_id` int(11) DEFAULT NULL,
  `allocated` tinyint(1) DEFAULT NULL,
  `leased` tinyint(1) DEFAULT NULL,
  `reserved` tinyint(1) DEFAULT NULL,
  `virtual_interface_id` int(11) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `network_id` (`network_id`),
  KEY `instance_id` (`instance_id`),
  KEY `fixed_ips_virtual_interface_id_fkey` (`virtual_interface_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixed_ips`
--

LOCK TABLES `fixed_ips` WRITE;
/*!40000 ALTER TABLE `fixed_ips` DISABLE KEYS */;
INSERT INTO `fixed_ips` VALUES ('2013-02-01 01:04:11',NULL,NULL,0,1,'10.0.0.0',1,NULL,0,0,1,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,2,'10.0.0.1',1,NULL,0,0,1,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,3,'10.0.0.2',1,NULL,0,0,1,NULL,NULL),('2013-02-01 01:04:11','2013-04-12 00:04:47',NULL,0,4,'10.0.0.3',1,129,1,1,0,19,NULL),('2013-02-01 01:04:11','2013-04-11 23:53:34',NULL,0,5,'10.0.0.4',1,119,1,1,0,12,NULL),('2013-02-01 01:04:11','2013-04-12 00:04:41',NULL,0,6,'10.0.0.5',1,130,1,1,0,20,NULL),('2013-02-01 01:04:11','2013-04-11 22:58:45',NULL,0,7,'10.0.0.6',1,125,1,1,0,18,NULL),('2013-02-01 01:04:11','2013-04-15 15:07:30',NULL,0,8,'10.0.0.7',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11','2013-02-15 03:26:34',NULL,0,9,'10.0.0.8',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11','2013-02-15 03:54:04',NULL,0,10,'10.0.0.9',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11','2013-02-15 03:54:04',NULL,0,11,'10.0.0.10',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11','2013-02-15 03:36:39',NULL,0,12,'10.0.0.11',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11','2013-02-15 03:26:33',NULL,0,13,'10.0.0.12',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11','2013-02-15 00:29:07',NULL,0,14,'10.0.0.13',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11','2013-02-13 17:23:47',NULL,0,15,'10.0.0.14',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11','2013-02-13 17:23:47',NULL,0,16,'10.0.0.15',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11','2013-02-12 02:46:27',NULL,0,17,'10.0.0.16',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,18,'10.0.0.17',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,19,'10.0.0.18',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,20,'10.0.0.19',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,21,'10.0.0.20',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,22,'10.0.0.21',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,23,'10.0.0.22',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,24,'10.0.0.23',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,25,'10.0.0.24',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,26,'10.0.0.25',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,27,'10.0.0.26',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,28,'10.0.0.27',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,29,'10.0.0.28',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,30,'10.0.0.29',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,31,'10.0.0.30',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,32,'10.0.0.31',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,33,'10.0.0.32',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,34,'10.0.0.33',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,35,'10.0.0.34',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,36,'10.0.0.35',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,37,'10.0.0.36',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,38,'10.0.0.37',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,39,'10.0.0.38',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,40,'10.0.0.39',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,41,'10.0.0.40',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,42,'10.0.0.41',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,43,'10.0.0.42',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,44,'10.0.0.43',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,45,'10.0.0.44',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,46,'10.0.0.45',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,47,'10.0.0.46',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,48,'10.0.0.47',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,49,'10.0.0.48',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,50,'10.0.0.49',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,51,'10.0.0.50',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,52,'10.0.0.51',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,53,'10.0.0.52',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,54,'10.0.0.53',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,55,'10.0.0.54',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,56,'10.0.0.55',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,57,'10.0.0.56',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,58,'10.0.0.57',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,59,'10.0.0.58',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,60,'10.0.0.59',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,61,'10.0.0.60',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,62,'10.0.0.61',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,63,'10.0.0.62',1,NULL,0,0,0,NULL,NULL),('2013-02-01 01:04:11',NULL,NULL,0,64,'10.0.0.63',1,NULL,0,0,1,NULL,NULL);
/*!40000 ALTER TABLE `fixed_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floating_ips`
--

DROP TABLE IF EXISTS `floating_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `floating_ips` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `fixed_ip_id` int(11) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `auto_assigned` tinyint(1) DEFAULT NULL,
  `pool` varchar(255) DEFAULT NULL,
  `interface` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fixed_ip_id` (`fixed_ip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floating_ips`
--

LOCK TABLES `floating_ips` WRITE;
/*!40000 ALTER TABLE `floating_ips` DISABLE KEYS */;
INSERT INTO `floating_ips` VALUES ('2013-02-01 01:04:46','2013-03-07 23:11:40',NULL,0,1,'192.168.187.1',5,'cookbook','cs-os-hv8',1,'nova','eth1'),('2013-02-01 01:04:46','2013-04-12 00:03:04',NULL,0,2,'192.168.187.2',4,'cookbook','cs-os-hv8',1,'nova','eth1'),('2013-02-01 01:04:46','2013-04-12 00:03:30',NULL,0,3,'192.168.187.3',6,'cookbook','cs-os-hv8',1,'nova','eth1'),('2013-02-01 01:04:46','2013-04-04 23:36:39',NULL,0,4,'192.168.187.4',7,'cookbook','cs-os-hv8',1,'nova','eth1'),('2013-02-01 01:04:46','2013-04-15 15:07:29',NULL,0,5,'192.168.187.5',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:46','2013-02-15 03:26:30',NULL,0,6,'192.168.187.6',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:46','2013-02-15 03:40:39',NULL,0,7,'192.168.187.7',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:46','2013-02-15 03:26:31',NULL,0,8,'192.168.187.8',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47','2013-02-15 03:26:31',NULL,0,9,'192.168.187.9',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47','2013-02-15 03:26:30',NULL,0,10,'192.168.187.10',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,11,'192.168.187.11',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,12,'192.168.187.12',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,13,'192.168.187.13',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,14,'192.168.187.14',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,15,'192.168.187.15',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,16,'192.168.187.16',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,17,'192.168.187.17',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,18,'192.168.187.18',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,19,'192.168.187.19',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,20,'192.168.187.20',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,21,'192.168.187.21',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,22,'192.168.187.22',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,23,'192.168.187.23',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,24,'192.168.187.24',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,25,'192.168.187.25',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,26,'192.168.187.26',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,27,'192.168.187.27',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,28,'192.168.187.28',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,29,'192.168.187.29',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,30,'192.168.187.30',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,31,'192.168.187.31',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,32,'192.168.187.32',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,33,'192.168.187.33',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,34,'192.168.187.34',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:47',NULL,NULL,0,35,'192.168.187.35',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:48',NULL,NULL,0,36,'192.168.187.36',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:48',NULL,NULL,0,37,'192.168.187.37',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:48',NULL,NULL,0,38,'192.168.187.38',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:48',NULL,NULL,0,39,'192.168.187.39',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:48',NULL,NULL,0,40,'192.168.187.40',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:48',NULL,NULL,0,41,'192.168.187.41',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:48',NULL,NULL,0,42,'192.168.187.42',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:48',NULL,NULL,0,43,'192.168.187.43',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:48',NULL,NULL,0,44,'192.168.187.44',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:48',NULL,NULL,0,45,'192.168.187.45',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:48',NULL,NULL,0,46,'192.168.187.46',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:48',NULL,NULL,0,47,'192.168.187.47',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:48',NULL,NULL,0,48,'192.168.187.48',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:48',NULL,NULL,0,49,'192.168.187.49',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:48',NULL,NULL,0,50,'192.168.187.50',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:48',NULL,NULL,0,51,'192.168.187.51',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:48',NULL,NULL,0,52,'192.168.187.52',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:48',NULL,NULL,0,53,'192.168.187.53',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,54,'192.168.187.54',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,55,'192.168.187.55',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,56,'192.168.187.56',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,57,'192.168.187.57',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,58,'192.168.187.58',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,59,'192.168.187.59',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,60,'192.168.187.60',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,61,'192.168.187.61',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,62,'192.168.187.62',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,63,'192.168.187.63',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,64,'192.168.187.64',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,65,'192.168.187.65',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,66,'192.168.187.66',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,67,'192.168.187.67',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,68,'192.168.187.68',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,69,'192.168.187.69',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,70,'192.168.187.70',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,71,'192.168.187.71',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,72,'192.168.187.72',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,73,'192.168.187.73',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,74,'192.168.187.74',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:49',NULL,NULL,0,75,'192.168.187.75',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,76,'192.168.187.76',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,77,'192.168.187.77',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,78,'192.168.187.78',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,79,'192.168.187.79',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,80,'192.168.187.80',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,81,'192.168.187.81',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,82,'192.168.187.82',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,83,'192.168.187.83',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,84,'192.168.187.84',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,85,'192.168.187.85',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,86,'192.168.187.86',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,87,'192.168.187.87',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,88,'192.168.187.88',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,89,'192.168.187.89',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,90,'192.168.187.90',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,91,'192.168.187.91',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,92,'192.168.187.92',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,93,'192.168.187.93',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,94,'192.168.187.94',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,95,'192.168.187.95',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,96,'192.168.187.96',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,97,'192.168.187.97',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,98,'192.168.187.98',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,99,'192.168.187.99',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:50',NULL,NULL,0,100,'192.168.187.100',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,101,'192.168.187.101',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,102,'192.168.187.102',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,103,'192.168.187.103',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,104,'192.168.187.104',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,105,'192.168.187.105',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,106,'192.168.187.106',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,107,'192.168.187.107',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,108,'192.168.187.108',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,109,'192.168.187.109',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,110,'192.168.187.110',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,111,'192.168.187.111',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,112,'192.168.187.112',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,113,'192.168.187.113',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,114,'192.168.187.114',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,115,'192.168.187.115',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,116,'192.168.187.116',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,117,'192.168.187.117',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,118,'192.168.187.118',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,119,'192.168.187.119',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:51',NULL,NULL,0,120,'192.168.187.120',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:52',NULL,NULL,0,121,'192.168.187.121',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:52',NULL,NULL,0,122,'192.168.187.122',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:52',NULL,NULL,0,123,'192.168.187.123',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:52',NULL,NULL,0,124,'192.168.187.124',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:52',NULL,NULL,0,125,'192.168.187.125',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:52',NULL,NULL,0,126,'192.168.187.126',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:52',NULL,NULL,0,127,'192.168.187.127',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:52',NULL,NULL,0,128,'192.168.187.128',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:52',NULL,NULL,0,129,'192.168.187.129',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:52',NULL,NULL,0,130,'192.168.187.130',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:52',NULL,NULL,0,131,'192.168.187.131',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:52',NULL,NULL,0,132,'192.168.187.132',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,133,'192.168.187.133',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,134,'192.168.187.134',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,135,'192.168.187.135',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,136,'192.168.187.136',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,137,'192.168.187.137',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,138,'192.168.187.138',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,139,'192.168.187.139',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,140,'192.168.187.140',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,141,'192.168.187.141',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,142,'192.168.187.142',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,143,'192.168.187.143',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,144,'192.168.187.144',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,145,'192.168.187.145',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,146,'192.168.187.146',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,147,'192.168.187.147',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,148,'192.168.187.148',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,149,'192.168.187.149',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,150,'192.168.187.150',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,151,'192.168.187.151',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,152,'192.168.187.152',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,153,'192.168.187.153',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,154,'192.168.187.154',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,155,'192.168.187.155',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,156,'192.168.187.156',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,157,'192.168.187.157',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,158,'192.168.187.158',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:53',NULL,NULL,0,159,'192.168.187.159',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,160,'192.168.187.160',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,161,'192.168.187.161',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,162,'192.168.187.162',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,163,'192.168.187.163',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,164,'192.168.187.164',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,165,'192.168.187.165',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,166,'192.168.187.166',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,167,'192.168.187.167',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,168,'192.168.187.168',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,169,'192.168.187.169',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,170,'192.168.187.170',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,171,'192.168.187.171',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,172,'192.168.187.172',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,173,'192.168.187.173',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,174,'192.168.187.174',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,175,'192.168.187.175',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,176,'192.168.187.176',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,177,'192.168.187.177',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,178,'192.168.187.178',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,179,'192.168.187.179',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,180,'192.168.187.180',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,181,'192.168.187.181',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,182,'192.168.187.182',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:54',NULL,NULL,0,183,'192.168.187.183',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,184,'192.168.187.184',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,185,'192.168.187.185',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,186,'192.168.187.186',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,187,'192.168.187.187',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,188,'192.168.187.188',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,189,'192.168.187.189',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,190,'192.168.187.190',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,191,'192.168.187.191',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,192,'192.168.187.192',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,193,'192.168.187.193',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,194,'192.168.187.194',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,195,'192.168.187.195',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,196,'192.168.187.196',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,197,'192.168.187.197',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,198,'192.168.187.198',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,199,'192.168.187.199',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,200,'192.168.187.200',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,201,'192.168.187.201',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:55',NULL,NULL,0,202,'192.168.187.202',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,203,'192.168.187.203',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,204,'192.168.187.204',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,205,'192.168.187.205',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,206,'192.168.187.206',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,207,'192.168.187.207',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,208,'192.168.187.208',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,209,'192.168.187.209',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,210,'192.168.187.210',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,211,'192.168.187.211',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,212,'192.168.187.212',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,213,'192.168.187.213',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,214,'192.168.187.214',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,215,'192.168.187.215',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,216,'192.168.187.216',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,217,'192.168.187.217',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,218,'192.168.187.218',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,219,'192.168.187.219',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,220,'192.168.187.220',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:56',NULL,NULL,0,221,'192.168.187.221',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,222,'192.168.187.222',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,223,'192.168.187.223',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,224,'192.168.187.224',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,225,'192.168.187.225',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,226,'192.168.187.226',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,227,'192.168.187.227',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,228,'192.168.187.228',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,229,'192.168.187.229',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,230,'192.168.187.230',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,231,'192.168.187.231',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,232,'192.168.187.232',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,233,'192.168.187.233',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,234,'192.168.187.234',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,235,'192.168.187.235',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,236,'192.168.187.236',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,237,'192.168.187.237',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,238,'192.168.187.238',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,239,'192.168.187.239',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,240,'192.168.187.240',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,241,'192.168.187.241',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:57',NULL,NULL,0,242,'192.168.187.242',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:58',NULL,NULL,0,243,'192.168.187.243',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:58',NULL,NULL,0,244,'192.168.187.244',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:58',NULL,NULL,0,245,'192.168.187.245',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:58',NULL,NULL,0,246,'192.168.187.246',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:58',NULL,NULL,0,247,'192.168.187.247',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:58',NULL,NULL,0,248,'192.168.187.248',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:58',NULL,NULL,0,249,'192.168.187.249',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:58',NULL,NULL,0,250,'192.168.187.250',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:58',NULL,NULL,0,251,'192.168.187.251',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:58',NULL,NULL,0,252,'192.168.187.252',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:58',NULL,NULL,0,253,'192.168.187.253',NULL,NULL,NULL,0,'nova','eth1'),('2013-02-01 01:04:58',NULL,NULL,0,254,'192.168.187.254',NULL,NULL,NULL,0,'nova','eth1');
/*!40000 ALTER TABLE `floating_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instance_actions`
--

DROP TABLE IF EXISTS `instance_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_actions` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `error` mediumtext,
  `instance_uuid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance_actions`
--

LOCK TABLES `instance_actions` WRITE;
/*!40000 ALTER TABLE `instance_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instance_faults`
--

DROP TABLE IF EXISTS `instance_faults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_faults` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instance_uuid` varchar(36) DEFAULT NULL,
  `code` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `details` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance_faults`
--

LOCK TABLES `instance_faults` WRITE;
/*!40000 ALTER TABLE `instance_faults` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance_faults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instance_info_caches`
--

DROP TABLE IF EXISTS `instance_info_caches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_info_caches` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `network_info` mediumtext,
  `instance_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `instance_id` (`instance_id`),
  CONSTRAINT `instance_info_caches_ibfk_1` FOREIGN KEY (`instance_id`) REFERENCES `instances` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance_info_caches`
--

LOCK TABLES `instance_info_caches` WRITE;
/*!40000 ALTER TABLE `instance_info_caches` DISABLE KEYS */;
INSERT INTO `instance_info_caches` VALUES ('2013-02-08 00:16:34','2013-02-08 00:32:47','2013-02-08 00:32:47',1,1,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"e7859ed3-cdf2-4838-be2c-5398ead1f5de\", \"address\": \"fa:16:3e:0e:83:67\"}]','81456216-2744-468b-bd7a-9e8f16d2ef12'),('2013-02-08 00:32:53','2013-02-08 01:04:10','2013-02-08 01:04:10',1,2,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"ecdd7a7b-d8c1-466b-8607-f8643cc8ff82\", \"address\": \"fa:16:3e:05:1f:65\"}]','ebf6b62c-6477-4f41-a9bc-b2813a42846a'),('2013-02-08 01:09:20','2013-02-13 17:23:41','2013-02-13 17:23:41',1,3,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"4b2abbce-e3fd-4584-8599-7b8f139d0695\", \"address\": \"fa:16:3e:25:28:13\"}]','29d549d1-2b4f-4e61-a0a5-133825051d8f'),('2013-02-08 01:09:41','2013-02-08 01:10:16','2013-02-08 01:10:16',1,4,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.2\"}], \"address\": \"10.0.0.4\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"b58fb17d-a04f-46c0-b670-966f013f46b9\", \"address\": \"fa:16:3e:74:2b:2b\"}]','3185b9b4-44c9-4799-9a55-aab8ee215ae6'),('2013-02-08 01:10:02','2013-02-13 17:23:43','2013-02-13 17:23:43',1,5,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.3\"}], \"address\": \"10.0.0.5\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"0b2033b4-be85-46d1-a379-a25303333c46\", \"address\": \"fa:16:3e:66:38:70\"}]','73450081-6160-4b67-b0f1-79e2ba196412'),('2013-02-08 01:10:29','2013-02-13 17:23:44','2013-02-13 17:23:44',1,6,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.2\"}], \"address\": \"10.0.0.6\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"3971f037-4e0a-41f6-9f62-2789529756c3\", \"address\": \"fa:16:3e:1a:6a:d5\"}]','20533753-7d20-47ca-8b92-4d4237d4567e'),('2013-02-08 01:10:46','2013-02-13 17:23:46','2013-02-13 17:23:46',1,7,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.4\"}], \"address\": \"10.0.0.7\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"35aee264-1a89-4091-99ae-4a9aaa265e9d\", \"address\": \"fa:16:3e:7d:7a:0c\"}]','5629ef76-0d32-451b-9f04-f65f5fcb3583'),('2013-02-08 01:10:56','2013-02-08 01:12:03','2013-02-08 01:12:03',1,8,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.5\"}], \"address\": \"10.0.0.8\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"67bd6c19-57f9-4d65-89a8-03d0f5111f5a\", \"address\": \"fa:16:3e:68:3c:22\"}]','6b3b6a1b-d5e0-4621-a045-8c616319427f'),('2013-02-08 01:11:04','2013-02-08 01:11:57','2013-02-08 01:11:57',1,9,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.6\"}], \"address\": \"10.0.0.9\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"2b86847d-a346-41c7-8f66-2ddd11e5902c\", \"address\": \"fa:16:3e:13:a8:3d\"}]','1ee95cda-d341-48bc-9b1f-9672210afe44'),('2013-02-08 01:11:23','2013-02-08 01:11:51','2013-02-08 01:11:51',1,10,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.7\"}], \"address\": \"10.0.0.10\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"0cfbfcb7-6338-411e-837b-fad23360ee94\", \"address\": \"fa:16:3e:6b:b3:60\"}]','0a728566-b6da-42c9-9b2a-bd08ef56ada0'),('2013-02-08 01:11:29','2013-02-13 17:23:52','2013-02-13 17:23:52',1,11,'[]','45682207-0f28-4643-b27b-1254ed693ee4'),('2013-02-08 01:12:26','2013-02-13 17:23:51','2013-02-13 17:23:51',1,12,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.5\"}], \"address\": \"10.0.0.12\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"6797e3b0-c2ed-4fd2-9791-68491a6c56dd\", \"address\": \"fa:16:3e:1c:f9:be\"}]','1ab1fc65-2109-4bac-a2cc-1d900b3c3f9c'),('2013-02-08 01:12:56','2013-02-13 17:23:51','2013-02-13 17:23:51',1,13,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.6\"}], \"address\": \"10.0.0.13\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"416c9e5a-dce0-482e-8fe8-10a3017369ba\", \"address\": \"fa:16:3e:2f:81:70\"}]','8b847a1e-c607-465b-9818-81531c5b6403'),('2013-02-08 01:13:41','2013-02-13 17:23:52','2013-02-13 17:23:52',1,14,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.7\"}], \"address\": \"10.0.0.14\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"9ab84e67-4f04-4661-9d50-044d064b52cd\", \"address\": \"fa:16:3e:41:cc:a1\"}]','7becf319-0125-4cea-bcbe-5d4bf5b68694'),('2013-02-08 01:17:25','2013-02-13 17:23:52','2013-02-13 17:23:52',1,15,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.9\"}], \"address\": \"10.0.0.15\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"4b0ba93a-856b-49b8-860d-acc034805be7\", \"address\": \"fa:16:3e:29:2b:12\"}]','caae3e31-959f-47ca-bf52-2bf71ebdfff0'),('2013-02-08 01:17:41','2013-02-12 02:46:30','2013-02-12 02:46:30',1,16,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.10\"}], \"address\": \"10.0.0.16\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"b6d67b94-a393-4211-985e-d3cff957d6ce\", \"address\": \"fa:16:3e:44:0d:4b\"}]','edc4f663-5878-4eca-9636-32fe9b62cf4b'),('2013-02-12 02:46:44','2013-02-12 02:47:44','2013-02-12 02:47:44',1,17,NULL,'de9bf936-1ccf-4a7b-b7a0-1415c312d18b'),('2013-02-12 02:48:08','2013-02-12 02:48:51','2013-02-12 02:48:51',1,18,NULL,'b705629d-21b2-4e77-81dc-9eec0240d830'),('2013-02-13 17:24:52','2013-02-13 17:27:34','2013-02-13 17:27:34',1,19,NULL,'d8b0c205-1aa7-44e1-a94b-cd311f4214ec'),('2013-02-13 17:27:43','2013-02-13 17:33:41','2013-02-13 17:33:41',1,20,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"b3fea81d-64b0-4c1d-84e4-72c5f3c3edb4\", \"address\": \"fa:16:3e:79:aa:eb\"}]','99378a12-651f-4948-8474-398fa4a5294f'),('2013-02-13 17:35:20','2013-02-13 18:01:51','2013-02-13 18:01:51',1,21,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"81e58aac-2200-49e0-8b24-eba509f10704\", \"address\": \"fa:16:3e:6d:b5:69\"}]','1f90014b-37ed-4807-a8cf-19b1ceb203f2'),('2013-02-13 17:35:22','2013-02-13 18:01:47','2013-02-13 18:01:47',1,22,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.2\"}], \"address\": \"10.0.0.4\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"8fde0f97-d7b6-4dab-bb51-8769f7318002\", \"address\": \"fa:16:3e:16:c9:33\"}]','2412a2ce-7d92-40ef-8c2b-bbe64f245645'),('2013-02-13 17:35:23','2013-02-13 18:01:57','2013-02-13 18:01:57',1,23,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.3\"}], \"address\": \"10.0.0.5\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"9082b4a0-beb7-4315-9d7c-efaa9aaa5de6\", \"address\": \"fa:16:3e:78:dc:a3\"}]','e8d23e5e-960b-4233-bc96-ac44d19f03af'),('2013-02-13 17:35:25','2013-02-13 18:01:59','2013-02-13 18:01:59',1,24,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.4\"}], \"address\": \"10.0.0.6\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"f44d91b0-8474-400a-a28c-c20d0e5e4cc7\", \"address\": \"fa:16:3e:09:10:59\"}]','ff066f84-daf0-431d-bfa2-298c2749bea5'),('2013-02-13 17:35:28','2013-02-13 18:01:58','2013-02-13 18:01:58',1,25,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.5\"}], \"address\": \"10.0.0.7\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"04b7579d-33b4-4b15-9fc0-4f458218e83f\", \"address\": \"fa:16:3e:26:58:79\"}]','430cdc9c-4ca3-4080-ab3b-7d971db4b6ef'),('2013-02-13 17:35:29','2013-02-13 18:01:57','2013-02-13 18:01:57',1,26,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.9\"}], \"address\": \"10.0.0.8\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"dcca14ae-d7dd-4294-89eb-0c9f2ab5429f\", \"address\": \"fa:16:3e:7a:4a:44\"}]','5dfa8b4d-02bf-49c0-a653-950a57b1e451'),('2013-02-13 17:35:30','2013-02-13 18:01:58','2013-02-13 18:01:58',1,27,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.8\"}], \"address\": \"10.0.0.9\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"ac8f7ee9-3369-49c5-a7b1-30094ce418c7\", \"address\": \"fa:16:3e:46:b9:9b\"}]','3c8e0e52-cdc3-4e77-bcec-fc57a6bb040a'),('2013-02-13 17:35:31','2013-02-13 18:01:59','2013-02-13 18:01:59',1,28,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.7\"}], \"address\": \"10.0.0.10\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"35a723e9-b261-43eb-a96d-4da341ba321d\", \"address\": \"fa:16:3e:4f:ae:2e\"}]','03be33f4-bbb3-47b8-acca-3c4c16a1cfc9'),('2013-02-13 17:35:33','2013-02-13 18:01:59','2013-02-13 18:01:59',1,29,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.6\"}], \"address\": \"10.0.0.11\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"c99e704e-ccdd-4fa4-a479-578d769ae986\", \"address\": \"fa:16:3e:54:23:a0\"}]','e4ffc3d0-61c5-470b-8a03-3068cd2eae85'),('2013-02-13 17:35:35','2013-02-13 18:01:58','2013-02-13 18:01:58',1,30,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.10\"}], \"address\": \"10.0.0.12\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"57026f39-a666-4d1f-964d-158f39589ad2\", \"address\": \"fa:16:3e:63:14:e4\"}]','aacae706-ca92-4a34-99ba-88e9a11df23c'),('2013-02-14 23:54:10','2013-02-15 00:04:48','2013-02-15 00:04:48',1,31,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"88ae4822-85d8-4366-a1a8-36508059460d\", \"address\": \"fa:16:3e:5a:58:26\"}]','aeed38f8-c204-4a63-a265-e663f6143fd8'),('2013-02-14 23:55:18','2013-02-15 00:04:54','2013-02-15 00:04:54',1,32,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.2\"}], \"address\": \"10.0.0.4\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"6d784472-588b-4ca9-97cf-134f79f39231\", \"address\": \"fa:16:3e:76:95:3b\"}]','b4e89593-962d-4393-b573-85b701bea7e3'),('2013-02-14 23:55:18','2013-02-15 00:04:48','2013-02-15 00:04:48',1,33,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.3\"}], \"address\": \"10.0.0.5\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"f6cc3bc6-59f9-4f0a-b755-a3416f887a3c\", \"address\": \"fa:16:3e:21:ae:c7\"}]','7c083db7-37c2-4b57-8966-c12e708a2e33'),('2013-02-14 23:55:19','2013-02-15 00:04:55','2013-02-15 00:04:55',1,34,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.4\"}], \"address\": \"10.0.0.6\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"f332f41a-f064-4c87-99a6-bfd57dd60c33\", \"address\": \"fa:16:3e:55:44:08\"}]','fdf155b9-be69-4374-bbfd-60202efb5ef8'),('2013-02-14 23:55:20','2013-02-15 00:04:55','2013-02-15 00:04:55',1,35,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.9\"}], \"address\": \"10.0.0.7\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"195d02a9-6b01-4eb0-af85-41b5e5b5c86e\", \"address\": \"fa:16:3e:7d:1e:e8\"}]','a431a725-2e9d-426f-aaee-a06831c23822'),('2013-02-14 23:55:21','2013-02-15 00:04:44','2013-02-15 00:04:44',1,36,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.10\"}], \"address\": \"10.0.0.8\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"a78ab8b3-94a7-473a-854e-bf8c9ab7e817\", \"address\": \"fa:16:3e:38:88:80\"}]','7b57cfa4-73cd-4370-a054-2a1fe4512914'),('2013-02-14 23:55:22','2013-02-15 00:04:44','2013-02-15 00:04:44',1,37,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.5\"}], \"address\": \"10.0.0.9\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"4bb9a7ed-d171-41a9-825b-73d4bad66fec\", \"address\": \"fa:16:3e:1e:d1:cd\"}]','4e4ec743-c88a-4032-ab75-bc8da47c46ea'),('2013-02-14 23:55:23','2013-02-15 00:04:54','2013-02-15 00:04:54',1,38,'[]','9075c68a-98f5-4123-b74c-d3f797846cc8'),('2013-02-14 23:55:24','2013-02-15 00:03:23','2013-02-15 00:03:23',1,39,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.8\"}], \"address\": \"10.0.0.11\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"b1ca6db6-9184-43e8-a687-c6e4565564df\", \"address\": \"fa:16:3e:4d:51:90\"}]','39af733e-6fb3-4c2f-b22b-adf64b1d62dc'),('2013-02-14 23:55:25','2013-02-15 00:01:13','2013-02-15 00:01:13',1,40,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.7\"}], \"address\": \"10.0.0.12\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"32895636-35d2-4a3f-9c7b-a9f0d21f0bbf\", \"address\": \"fa:16:3e:6e:6b:6a\"}]','649bfde8-f4ca-4c34-ac46-6a77c12abb00'),('2013-02-15 00:23:20','2013-02-15 00:42:33','2013-02-15 00:42:33',1,41,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"0ce4ab23-4ce2-45bb-ba71-9f359af989bb\", \"address\": \"fa:16:3e:65:ef:67\"}]','a46cf4a9-a18b-4b2f-be7e-2f5a8bbd602d'),('2013-02-15 00:23:21','2013-02-15 00:42:36','2013-02-15 00:42:36',1,42,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.2\"}], \"address\": \"10.0.0.4\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"ac589ea1-46bf-4594-a9ed-a093e23a8c92\", \"address\": \"fa:16:3e:6b:7d:fe\"}]','e67c6d0d-ba6d-4d13-b9eb-5ae0ca2bdc2f'),('2013-02-15 00:23:21','2013-02-15 00:42:42','2013-02-15 00:42:42',1,43,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.4\"}], \"address\": \"10.0.0.5\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"23c5533b-107e-4a94-9566-12792f899604\", \"address\": \"fa:16:3e:44:8e:29\"}]','0c60b33a-6e2e-4add-b84a-338663124874'),('2013-02-15 00:23:22','2013-02-15 00:42:44','2013-02-15 00:42:44',1,44,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.3\"}], \"address\": \"10.0.0.6\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"e39e77d7-9c01-4f41-8a40-bfaff15ea371\", \"address\": \"fa:16:3e:69:4e:4e\"}]','e4495bb6-b40c-4274-a51d-3589f38cc28f'),('2013-02-15 00:23:23','2013-02-15 00:42:37','2013-02-15 00:42:37',1,45,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.6\"}], \"address\": \"10.0.0.7\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"81f0916c-239a-4471-9912-b0e74af263d7\", \"address\": \"fa:16:3e:2b:ac:0c\"}]','8b955c58-0bc5-44ab-9e49-774db0871a62'),('2013-02-15 00:23:24','2013-02-15 00:42:43','2013-02-15 00:42:43',1,46,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.5\"}], \"address\": \"10.0.0.8\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"97cf7898-c0d7-4d15-91fe-2ed42e4ffb07\", \"address\": \"fa:16:3e:76:85:53\"}]','8bd3b1a1-2bdb-4a5b-b116-b1365e1cf60c'),('2013-02-15 00:23:24','2013-02-15 00:42:45','2013-02-15 00:42:45',1,47,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.7\"}], \"address\": \"10.0.0.9\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"43f1c0bf-c5fb-4c74-829c-6aa2fd3f5e38\", \"address\": \"fa:16:3e:15:34:39\"}]','84d7fa10-a092-4351-9cc6-4e2790679024'),('2013-02-15 00:23:26','2013-02-15 00:42:43','2013-02-15 00:42:43',1,48,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.8\"}], \"address\": \"10.0.0.10\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"737f34ef-86c9-4725-b91a-5ca3ceb4cfab\", \"address\": \"fa:16:3e:0c:6a:60\"}]','ad114f66-cfaf-47b2-a111-8f455efcae8c'),('2013-02-15 00:23:27','2013-02-15 00:42:44','2013-02-15 00:42:44',1,49,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.10\"}], \"address\": \"10.0.0.11\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"6c9389aa-3c36-4af0-8fd3-179d07e68309\", \"address\": \"fa:16:3e:65:26:d2\"}]','8f94e835-624c-444e-9cbd-524a04f3cab5'),('2013-02-15 00:23:28','2013-02-15 00:24:34','2013-02-15 00:24:34',1,50,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.9\"}], \"address\": \"10.0.0.12\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"12a18e68-6485-4b9a-8315-33d38fc8b0dc\", \"address\": \"fa:16:3e:60:37:e8\"}]','8d259b7e-3956-4f68-8128-5715e6b8191f'),('2013-02-15 00:25:57','2013-02-15 00:29:08','2013-02-15 00:29:08',1,51,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.9\"}], \"address\": \"10.0.0.13\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"508b6962-5761-45f9-96b7-7011b90d3d47\", \"address\": \"fa:16:3e:36:19:64\"}]','14e681bb-a8ba-450b-a2ee-fb7a1c89af15'),('2013-02-15 00:40:30','2013-02-15 01:30:14','2013-02-15 01:30:14',1,52,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.9\"}], \"address\": \"10.0.0.12\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"93db037a-ce18-44da-921c-05c1037dfcd4\", \"address\": \"fa:16:3e:1d:0e:68\"}]','4b62dc21-106e-477c-90ed-06f39e2a6b61'),('2013-02-15 00:50:44','2013-02-15 01:30:15','2013-02-15 01:30:15',1,53,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"22fbf3ac-b396-41dc-86cd-35f9f87ed0be\", \"address\": \"fa:16:3e:50:00:0e\"}]','e1c54f26-5661-40f5-a669-1db23e15ec31'),('2013-02-15 00:59:23','2013-02-15 01:21:49','2013-02-15 01:21:49',1,54,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.2\"}], \"address\": \"10.0.0.4\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"c64549d8-17ff-4d60-a9e1-bc5a041ef766\", \"address\": \"fa:16:3e:32:ce:0b\"}]','0ba0689e-0732-4eb7-8d89-d96d74c4e9be'),('2013-02-15 01:22:01','2013-02-15 01:29:21','2013-02-15 01:29:21',1,55,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.2\"}], \"address\": \"10.0.0.4\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"016d65a0-135a-4132-9f7b-b14b1735cebd\", \"address\": \"fa:16:3e:25:21:56\"}]','70c62689-729e-499b-a62c-be419bb45fd0'),('2013-02-15 02:59:50','2013-02-15 03:06:07','2013-02-15 03:06:07',1,56,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"4fc6ecaf-0cec-4441-96a0-d8ef13e934e3\", \"address\": \"fa:16:3e:3e:ec:eb\"}]','e3afe5b2-3b4a-4717-9752-9427f5abc5b1'),('2013-02-15 02:59:50','2013-02-15 03:06:10','2013-02-15 03:06:10',1,57,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.2\"}], \"address\": \"10.0.0.4\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"292dae3c-02b6-42ad-8d44-d55d68ecaa48\", \"address\": \"fa:16:3e:6e:61:68\"}]','f849afd3-2b89-423d-86b0-aa1da06295c1'),('2013-02-15 02:59:51','2013-02-15 03:06:00','2013-02-15 03:06:00',1,58,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.3\"}], \"address\": \"10.0.0.5\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"8cad441e-dee6-40ff-a8ea-bd00082d531f\", \"address\": \"fa:16:3e:4d:58:64\"}]','17ef8077-aa87-4db3-976f-8808aa7c9df3'),('2013-02-15 02:59:52','2013-02-15 03:06:09','2013-02-15 03:06:09',1,59,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.4\"}], \"address\": \"10.0.0.6\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"255e265b-67a1-4c2a-af0d-fb8a0f3dc72c\", \"address\": \"fa:16:3e:78:3c:eb\"}]','58f0a232-56a9-4a51-8b07-f07da4dbe41d'),('2013-02-15 02:59:53','2013-02-15 03:06:07','2013-02-15 03:06:07',1,60,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.6\"}], \"address\": \"10.0.0.7\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"7b621860-4ab7-40cd-9209-d81ddb7f4ed9\", \"address\": \"fa:16:3e:4c:a6:e4\"}]','75ca3873-c09d-45f8-80c2-c446b60d8265'),('2013-02-15 02:59:53','2013-02-15 03:06:08','2013-02-15 03:06:08',1,61,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.5\"}], \"address\": \"10.0.0.8\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"9dd959c2-b3c3-476f-a00a-fa8b238199a1\", \"address\": \"fa:16:3e:1f:bb:a5\"}]','8709791a-ac4b-4288-b10a-85b2d4726fca'),('2013-02-15 02:59:54','2013-02-15 03:06:09','2013-02-15 03:06:09',1,62,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.7\"}], \"address\": \"10.0.0.9\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"10a81cdb-af76-4209-b8ef-b2740bb8b672\", \"address\": \"fa:16:3e:1c:49:4f\"}]','e0d4fdf0-62b1-4e02-818a-cd82d144fc78'),('2013-02-15 02:59:55','2013-02-15 03:06:10','2013-02-15 03:06:10',1,63,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.8\"}], \"address\": \"10.0.0.10\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"494529ea-2799-44de-8af0-de64508d1e06\", \"address\": \"fa:16:3e:4a:60:06\"}]','e933a60a-c668-41f3-bb52-70adafccd7f4'),('2013-02-15 02:59:57','2013-02-15 03:06:08','2013-02-15 03:06:08',1,64,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.10\"}], \"address\": \"10.0.0.11\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"f8c8584a-5526-4ff2-bba7-36506ceed18a\", \"address\": \"fa:16:3e:23:3e:e1\"}]','c6705a74-6b0d-4cb4-bae2-98d308de723f'),('2013-02-15 02:59:58','2013-02-15 03:05:59','2013-02-15 03:05:59',1,65,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.9\"}], \"address\": \"10.0.0.12\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"37e37ccc-f820-4883-91e8-6cf68703351b\", \"address\": \"fa:16:3e:62:f5:1d\"}]','1540fa6c-2646-4d98-b906-77952525e049'),('2013-02-15 03:06:21','2013-02-15 03:10:17','2013-02-15 03:10:17',1,66,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"fa04a651-7ae3-4dfc-8f68-868d7ad196cd\", \"address\": \"fa:16:3e:65:6b:ed\"}]','0861c724-6bb8-4b89-b451-73343edc6e7d'),('2013-02-15 03:06:22','2013-02-15 03:10:18','2013-02-15 03:10:18',1,67,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.2\"}], \"address\": \"10.0.0.4\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"2b42d280-e8ce-4e49-82bb-12f700686c5a\", \"address\": \"fa:16:3e:6a:65:d8\"}]','4de95771-f16d-4115-94ec-d97b7babe53f'),('2013-02-15 03:06:22','2013-02-15 03:10:20','2013-02-15 03:10:20',1,68,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.3\"}], \"address\": \"10.0.0.5\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"9dc806fb-66f4-4f76-9663-819ef29cad37\", \"address\": \"fa:16:3e:7c:f5:ed\"}]','51b61328-8340-454f-8495-bbc904b26d6b'),('2013-02-15 03:06:23','2013-02-15 03:10:32','2013-02-15 03:10:32',1,69,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [], \"address\": \"10.0.0.6\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"1099691a-94ef-42b0-99d4-558f772ac4f9\", \"address\": \"fa:16:3e:18:cb:dd\"}]','dae97c8d-0f06-4804-a6fd-19e4b31abd00'),('2013-02-15 03:06:24','2013-02-15 03:10:28','2013-02-15 03:10:28',1,70,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.5\"}], \"address\": \"10.0.0.7\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"6e502c39-0184-4756-84e7-1cf2440d0b18\", \"address\": \"fa:16:3e:76:da:87\"}]','7803933a-7059-404f-9d2b-0db68702144f'),('2013-02-15 03:06:25','2013-02-15 03:10:31','2013-02-15 03:10:31',1,71,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.6\"}], \"address\": \"10.0.0.8\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"cf719156-c40e-477a-83ef-da39591fb461\", \"address\": \"fa:16:3e:2f:7e:8a\"}]','f75ffc3b-a1c0-49f4-94d6-74a2230fb287'),('2013-02-15 03:06:26','2013-02-15 03:10:31','2013-02-15 03:10:31',1,72,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.10\"}], \"address\": \"10.0.0.9\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"f069b4b7-ede0-4c69-82de-28bf2ad744c9\", \"address\": \"fa:16:3e:7b:e3:12\"}]','b59c96b1-1753-4c29-9535-6a4a3907fee6'),('2013-02-15 03:06:27','2013-02-15 03:10:28','2013-02-15 03:10:28',1,73,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.7\"}], \"address\": \"10.0.0.10\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"5a6a35d1-9827-4ac5-be0c-2754f34e7e92\", \"address\": \"fa:16:3e:52:42:1d\"}]','c0a5d4b4-d25a-407f-a428-d42f62e793f9'),('2013-02-15 03:06:28','2013-02-15 03:10:32','2013-02-15 03:10:32',1,74,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.9\"}], \"address\": \"10.0.0.11\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"8a88f986-82e7-4fe2-9031-a3e6cb40474e\", \"address\": \"fa:16:3e:25:c9:76\"}]','b6d841ce-5d3a-4a1a-9142-fd11444dfbba'),('2013-02-15 03:06:30','2013-02-15 03:10:22','2013-02-15 03:10:22',1,75,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.8\"}], \"address\": \"10.0.0.12\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"71c45112-dd93-498c-8da7-9e23208fdf54\", \"address\": \"fa:16:3e:12:0d:86\"}]','6b1a3d88-4b65-41d4-84e9-ee232a6221d0'),('2013-02-15 03:10:42','2013-02-15 03:16:20','2013-02-15 03:16:20',1,76,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"c5863dd0-46b0-47fa-8df5-e7497f9fda37\", \"address\": \"fa:16:3e:52:48:43\"}]','1ee163b1-140f-47bf-b3fc-0bc32e45ebe0'),('2013-02-15 03:10:52','2013-02-15 03:16:19','2013-02-15 03:16:19',1,77,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.2\"}], \"address\": \"10.0.0.4\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"1994a36b-611f-44f1-b8f7-aff33902c2c5\", \"address\": \"fa:16:3e:61:5b:f7\"}]','30d868a7-08a0-46f2-ab17-061191858aa8'),('2013-02-15 03:11:03','2013-02-15 03:16:19','2013-02-15 03:16:19',1,78,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.3\"}], \"address\": \"10.0.0.5\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"2273bd61-e9e4-4f52-942d-cde57a90b334\", \"address\": \"fa:16:3e:6d:c8:6d\"}]','d98ea866-54ec-40af-99e4-cdf59efeb7fc'),('2013-02-15 03:11:14','2013-02-15 03:16:09','2013-02-15 03:16:09',1,79,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.4\"}], \"address\": \"10.0.0.6\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"7dcca592-eb27-4265-b0f6-a022a6a1fec0\", \"address\": \"fa:16:3e:7b:a1:94\"}]','12e96f5e-6106-4f0b-8cd5-b213e1e5ae0c'),('2013-02-15 03:11:25','2013-02-15 03:16:17','2013-02-15 03:16:17',1,80,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [], \"address\": \"10.0.0.7\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"ddd468c8-7bed-408c-b05e-61e27bc2f247\", \"address\": \"fa:16:3e:1d:de:21\"}]','0ddd9f49-e567-4477-b404-215d480cf394'),('2013-02-15 03:11:36','2013-02-15 03:16:18','2013-02-15 03:16:18',1,81,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.6\"}], \"address\": \"10.0.0.8\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"6531aedc-66b1-47d4-81b2-1228e64d3fe6\", \"address\": \"fa:16:3e:36:ad:4f\"}]','7374e70f-d497-48ec-b6fa-782ad9ef1f1e'),('2013-02-15 03:11:47','2013-02-15 03:16:18','2013-02-15 03:16:18',1,82,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.7\"}], \"address\": \"10.0.0.9\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"0c3ecd03-0a28-4be1-a6b6-e958aaeee974\", \"address\": \"fa:16:3e:50:02:49\"}]','fd30f14f-152e-4b20-ac62-6037c35f748f'),('2013-02-15 03:11:59','2013-02-15 03:16:19','2013-02-15 03:16:19',1,83,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.8\"}], \"address\": \"10.0.0.10\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"a8a4aeec-bd79-490a-974b-c8124a12345e\", \"address\": \"fa:16:3e:4c:18:3a\"}]','60a26400-addd-4cfe-a0e1-1b752ba36855'),('2013-02-15 03:12:10','2013-02-15 03:16:18','2013-02-15 03:16:18',1,84,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.9\"}], \"address\": \"10.0.0.11\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"ea1df2a9-ae02-437d-aa1e-4c3add9a3ce1\", \"address\": \"fa:16:3e:32:80:7b\"}]','92ace453-50e1-4caf-938a-7ea6b212d407'),('2013-02-15 03:12:21','2013-02-15 03:16:05','2013-02-15 03:16:05',1,85,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.10\"}], \"address\": \"10.0.0.12\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"527f98d0-68eb-4a07-941a-5bd9e98861cc\", \"address\": \"fa:16:3e:4a:50:9e\"}]','18ebde32-7b51-4832-98b4-86113025129e'),('2013-02-15 03:18:07','2013-02-15 03:40:39','2013-02-15 03:40:39',1,86,'[]','6da52cc2-0b42-4a9f-b60b-e1a9334063f1'),('2013-02-15 03:20:26','2013-02-15 03:40:36','2013-02-15 03:40:36',1,87,'[]','08dd37cf-36f2-40d6-9558-bbb956b9735d'),('2013-02-15 03:20:27','2013-02-15 03:40:36','2013-02-15 03:40:36',1,88,'[]','1b115f2f-117b-4845-a9af-8088474ad8a1'),('2013-02-15 03:20:27','2013-02-15 03:40:38','2013-02-15 03:40:38',1,89,'[]','49c5e3bd-5d6f-476a-957c-82d882745726'),('2013-02-15 03:20:28','2013-02-15 03:40:39','2013-02-15 03:40:39',1,90,'[]','c0da84f2-838b-4c78-bb45-deed46bb7ede'),('2013-02-15 03:20:29','2013-02-15 03:40:38','2013-02-15 03:40:38',1,91,'[]','5469a68a-4747-4a83-8115-d6abefbb2715'),('2013-02-15 03:20:30','2013-02-15 03:40:40','2013-02-15 03:40:40',1,92,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.7\"}], \"address\": \"10.0.0.9\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"bbe18aa1-4a04-4afe-9dca-f990d3ea1753\", \"address\": \"fa:16:3e:45:fd:a2\"}]','e1d9cfd5-a6a1-4f19-824c-63c89693030d'),('2013-02-15 03:20:31','2013-02-15 03:40:37','2013-02-15 03:40:37',1,93,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [], \"address\": \"10.0.0.10\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"1cee8f4a-c5b8-4d28-9116-3dce4fc72af7\", \"address\": \"fa:16:3e:25:76:85\"}]','09e77039-d970-4796-b8d3-93452722a098'),('2013-02-15 03:20:32','2013-02-15 03:40:37','2013-02-15 03:40:37',1,94,'[]','4562db53-d244-42cb-b837-91fed15e2f0c'),('2013-02-15 03:20:33','2013-02-15 03:40:39','2013-02-15 03:40:39',1,95,'[]','5bcad3d1-d47b-454b-b4a3-a083f913b6c0'),('2013-02-15 03:40:49','2013-02-15 03:43:15','2013-02-15 03:43:15',1,96,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"d989ca31-bf05-4477-8810-e7c01456f26c\", \"address\": \"fa:16:3e:15:e9:3f\"}]','d7e44644-26ba-4006-aee6-7a1af1b33db5'),('2013-02-15 03:44:20','2013-02-15 03:46:19','2013-02-15 03:46:19',1,97,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"9356c01a-3f10-4e01-a53f-28d35447fc19\", \"address\": \"fa:16:3e:52:32:d5\"}]','9087a544-a94b-456a-857a-0c3409b89d79'),('2013-02-15 03:54:37','2013-02-15 03:56:45','2013-02-15 03:56:45',1,98,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"9a5227ed-bf41-43d6-933a-50864a28a302\", \"address\": \"fa:16:3e:06:80:72\"}]','2af9b189-e2b1-4a53-aaa1-e4601ad76468'),('2013-02-15 03:57:23','2013-02-21 23:50:04','2013-02-21 23:50:04',1,99,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"33b6b2d5-9753-4ee7-917e-9f85f5ed4544\", \"address\": \"fa:16:3e:74:4d:bd\"}]','33c7b3ca-96d2-4f11-9c02-d35abffb4cca'),('2013-02-22 00:01:25','2013-02-22 00:09:36','2013-02-22 00:09:36',1,100,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"cf2928db-dfad-4ca9-9931-4ebed6a9db43\", \"address\": \"fa:16:3e:08:e3:01\"}]','bd7fb770-8d06-42ee-86b7-1f4b13a5b4b1'),('2013-02-22 00:22:36','2013-02-22 00:25:47','2013-02-22 00:25:47',1,101,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"f7032d0e-6118-4cab-8923-38b05909492c\", \"address\": \"fa:16:3e:48:f7:17\"}]','8c066c75-5c87-4dd0-ae0c-afeac8ad2ac2'),('2013-02-22 00:22:51','2013-02-22 00:25:45','2013-02-22 00:25:45',1,102,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.2\"}], \"address\": \"10.0.0.4\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"de3d568a-0dfe-45de-b771-a5a9635c4e27\", \"address\": \"fa:16:3e:7e:b1:8c\"}]','fba0bb74-3344-4f75-b10b-353ed39a288b'),('2013-02-22 00:23:11','2013-02-22 00:23:42','2013-02-22 00:23:42',1,103,NULL,'cce08d10-d138-4233-9d86-ecb3d7174b17'),('2013-02-22 00:23:19','2013-02-22 00:23:37','2013-02-22 00:23:37',1,104,NULL,'198ba710-67e2-484d-96d5-d2d316db8e3d'),('2013-02-22 00:23:48','2013-02-22 00:25:23','2013-02-22 00:25:23',1,105,NULL,'79399077-f4ca-4ff6-9091-903b8b97a823'),('2013-02-22 00:25:33','2013-02-22 00:25:38','2013-02-22 00:25:38',1,106,NULL,'193d963f-0620-4464-8e6d-05bcd55ae8aa'),('2013-02-22 00:25:52','2013-03-01 00:24:44','2013-03-01 00:24:44',1,107,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"c26019a7-89d6-454f-bd13-63ca6b836d83\", \"address\": \"fa:16:3e:00:48:70\"}]','d7679130-c1f5-4907-917b-af7363c31489'),('2013-02-22 00:26:12','2013-03-01 00:24:43','2013-03-01 00:24:43',1,108,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.2\"}], \"address\": \"10.0.0.4\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"c28ee49b-e304-4f89-8a83-8c0dfbdaf1b7\", \"address\": \"fa:16:3e:5d:6a:e9\"}]','210022f6-e710-4ed4-85a4-31c5a9da24a2'),('2013-02-22 00:26:31','2013-02-22 00:26:42','2013-02-22 00:26:42',1,109,NULL,'c53b0875-8422-4deb-a6b6-4097445a4e89'),('2013-02-22 00:26:49','2013-02-22 00:26:56','2013-02-22 00:26:56',1,110,NULL,'e51c3569-f862-40e4-bf02-857d5f7e1525'),('2013-02-22 00:27:38','2013-02-22 00:27:50','2013-02-22 00:27:50',1,111,NULL,'74448868-275d-43f3-96ec-55cff40da895'),('2013-02-25 01:37:30','2013-03-01 00:24:42','2013-03-01 00:24:42',1,112,NULL,'a5dddef5-fcfd-4e19-83e1-8c7b2618f77e'),('2013-03-01 00:25:12','2013-03-01 01:12:39','2013-03-01 01:12:39',1,113,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.5\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"5aa9b154-9a3c-46df-8af1-fe7e6783375b\", \"address\": \"fa:16:3e:04:ad:37\"}]','f0aa3590-1cbf-483c-8712-d5f4068614a9'),('2013-03-01 00:25:14','2013-03-01 01:12:38','2013-03-01 01:12:38',1,114,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.2\"}], \"address\": \"10.0.0.6\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"5e5d5f20-6c86-4459-ae65-9c061a3ea44d\", \"address\": \"fa:16:3e:31:7e:67\"}]','b3c153f2-13e0-4e31-8cff-56e0c5e9792e'),('2013-03-01 00:25:15','2013-03-01 01:12:36','2013-03-01 01:12:36',1,115,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.3\"}], \"address\": \"10.0.0.7\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"0b68450c-1483-454a-9ade-ba5a03c2c281\", \"address\": \"fa:16:3e:33:83:0b\"}]','af776f80-ae5e-4617-81eb-af54b8e9641e'),('2013-03-01 01:13:51','2013-03-07 23:07:18','2013-03-07 23:07:18',1,116,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"0cc60052-8081-41bc-babd-98cd85c1b4ce\", \"address\": \"fa:16:3e:39:a4:ac\"}]','fdd45f35-20cf-4a8d-9ec1-38cefbd563ae'),('2013-03-07 22:45:48','2013-03-07 22:51:35','2013-03-07 22:51:35',1,117,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.2\"}], \"address\": \"10.0.0.4\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"28e348c6-2cd8-4c8c-99a9-991d878cfcbb\", \"address\": \"fa:16:3e:12:a6:df\"}]','82874b2d-96b2-4412-9e97-5bc5ae4426d0'),('2013-03-07 22:53:40','2013-03-14 23:25:41','2013-03-14 23:25:41',1,118,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.2\"}], \"address\": \"10.0.0.5\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"3ed63d7a-d2c5-46fa-9e28-bdacdf3149ba\", \"address\": \"fa:16:3e:6b:87:5f\"}]','5ac049fb-a905-435c-b105-685405cdf69e'),('2013-03-07 23:11:38','2013-03-07 23:13:20',NULL,0,119,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.1\"}], \"address\": \"10.0.0.4\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"f4f59b14-28d1-425a-9623-304d3f19a405\", \"address\": \"fa:16:3e:43:60:a8\"}]','3101e6b0-1397-4796-9120-9c9a6fcc1671'),('2013-03-07 23:11:40','2013-03-14 23:25:43','2013-03-14 23:25:43',1,120,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.3\"}], \"address\": \"10.0.0.6\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"a6f4035a-365d-4c35-b40c-9800e2cd7fb9\", \"address\": \"fa:16:3e:4e:ee:8e\"}]','5bdc6532-aa46-44fa-b8e5-8a9f6367c744'),('2013-03-14 23:26:24','2013-03-28 23:22:42','2013-03-28 23:22:42',1,121,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.2\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"48bef8c9-2c29-4eda-a7c3-9ef614384ae1\", \"address\": \"fa:16:3e:1d:c0:c4\"}]','6da5ae98-a25e-4abf-9209-cc6248a274a1'),('2013-03-14 23:26:39','2013-03-28 23:22:43','2013-03-28 23:22:43',1,122,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.3\"}], \"address\": \"10.0.0.5\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"80c5d8a4-b120-43ee-b688-37411693661d\", \"address\": \"fa:16:3e:2f:70:f7\"}]','621c85ba-c21e-4289-b9d1-72800902cf85'),('2013-03-28 23:23:10','2013-04-11 23:54:02','2013-04-11 23:54:02',1,123,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.2\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"72369994-f94f-461a-83fc-3d53a4949590\", \"address\": \"fa:16:3e:27:9d:a2\"}]','a64c1dad-e1c7-4042-a70a-bb83b223afe6'),('2013-03-28 23:23:12','2013-04-11 23:54:04','2013-04-11 23:54:04',1,124,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.3\"}], \"address\": \"10.0.0.5\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"9eca1694-f8a4-4aa2-aea8-c0a033cce8d0\", \"address\": \"fa:16:3e:16:04:00\"}]','c1a4402e-68ff-4a89-bd8b-90fcdc1e1e9c'),('2013-04-04 23:36:38','2013-04-04 23:41:30',NULL,0,125,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.4\"}], \"address\": \"10.0.0.6\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"8979b00f-e0a1-490d-aade-6d1e12cc9198\", \"address\": \"fa:16:3e:7c:5d:13\"}]','52f2ecc9-1945-415b-a0fe-b05c7b0276c5'),('2013-04-11 23:22:19','2013-04-11 23:24:49','2013-04-11 23:24:49',1,126,NULL,'c0993ede-49cd-4923-b6a0-faa18d5c71b4'),('2013-04-11 23:54:22','2013-04-12 00:02:53','2013-04-12 00:02:53',1,127,NULL,'81fbd467-8d8d-4b8e-bd7c-adaf04b84ae3'),('2013-04-11 23:54:24','2013-04-12 00:02:57','2013-04-12 00:02:57',1,128,NULL,'58c25fbf-0e90-4d79-8171-88cee341c5a2'),('2013-04-12 00:03:03','2013-04-12 00:05:22',NULL,0,129,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.2\"}], \"address\": \"10.0.0.3\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"b11b1696-6153-4094-990b-b5e7c6264f2c\", \"address\": \"fa:16:3e:6e:40:ef\"}]','190763a7-80bd-4f6e-9214-a7957253f225'),('2013-04-12 00:03:17','2013-04-12 00:09:29',NULL,0,130,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.3\"}], \"address\": \"10.0.0.5\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"dbd3d383-9d69-4cac-a41d-774409f818b2\", \"address\": \"fa:16:3e:14:0a:34\"}]','e0dc499b-ecd8-46ac-9d5f-ab03b9a3bff8'),('2013-04-15 15:05:03','2013-04-15 15:07:32','2013-04-15 15:07:32',1,131,'[{\"network\": {\"bridge\": \"br100\", \"subnets\": [{\"ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"fixed\", \"floating_ips\": [{\"meta\": {}, \"version\": 4, \"type\": \"floating\", \"address\": \"192.168.187.5\"}], \"address\": \"10.0.0.7\"}], \"version\": 4, \"meta\": {\"dhcp_server\": \"10.0.0.1\"}, \"dns\": [], \"routes\": [], \"cidr\": \"10.0.0.0/26\", \"gateway\": {\"meta\": {}, \"version\": 4, \"type\": \"gateway\", \"address\": \"10.0.0.1\"}}, {\"ips\": [], \"version\": null, \"meta\": {\"dhcp_server\": null}, \"dns\": [], \"routes\": [], \"cidr\": null, \"gateway\": {\"meta\": {}, \"version\": null, \"type\": \"gateway\", \"address\": null}}], \"meta\": {\"tenant_id\": \"cookbook\", \"vlan\": 100, \"should_create_bridge\": true, \"should_create_vlan\": true, \"bridge_interface\": \"eth2\"}, \"id\": \"e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3\", \"label\": \"vmnet\"}, \"meta\": {}, \"id\": \"bd60ba0d-927c-46a2-958f-434eb3d525c6\", \"address\": \"fa:16:3e:59:d4:e5\"}]','eb54f5f5-0b17-4000-a941-363987802c70');
/*!40000 ALTER TABLE `instance_info_caches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instance_metadata`
--

DROP TABLE IF EXISTS `instance_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_metadata` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `instance_id` (`instance_id`),
  CONSTRAINT `instance_metadata_ibfk_1` FOREIGN KEY (`instance_id`) REFERENCES `instances` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance_metadata`
--

LOCK TABLES `instance_metadata` WRITE;
/*!40000 ALTER TABLE `instance_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instance_type_extra_specs`
--

DROP TABLE IF EXISTS `instance_type_extra_specs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_type_extra_specs` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instance_type_id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `instance_type_id` (`instance_type_id`),
  CONSTRAINT `instance_type_extra_specs_ibfk_1` FOREIGN KEY (`instance_type_id`) REFERENCES `instance_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance_type_extra_specs`
--

LOCK TABLES `instance_type_extra_specs` WRITE;
/*!40000 ALTER TABLE `instance_type_extra_specs` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance_type_extra_specs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instance_types`
--

DROP TABLE IF EXISTS `instance_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_types` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memory_mb` int(11) NOT NULL,
  `vcpus` int(11) NOT NULL,
  `swap` int(11) NOT NULL,
  `vcpu_weight` int(11) DEFAULT NULL,
  `flavorid` varchar(255) DEFAULT NULL,
  `rxtx_factor` float DEFAULT NULL,
  `root_gb` int(11) DEFAULT NULL,
  `ephemeral_gb` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance_types`
--

LOCK TABLES `instance_types` WRITE;
/*!40000 ALTER TABLE `instance_types` DISABLE KEYS */;
INSERT INTO `instance_types` VALUES (NULL,NULL,NULL,0,'m1.medium',1,4096,2,0,NULL,'3',1,10,40),(NULL,NULL,NULL,0,'m1.tiny',2,512,1,0,NULL,'1',1,0,0),(NULL,NULL,NULL,0,'m1.large',3,8192,4,0,NULL,'4',1,10,80),(NULL,NULL,NULL,0,'m1.xlarge',4,16384,8,0,NULL,'5',1,10,160),(NULL,NULL,NULL,0,'m1.small',5,2048,1,0,NULL,'2',1,10,20);
/*!40000 ALTER TABLE `instance_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instances`
--

DROP TABLE IF EXISTS `instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instances` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `internal_id` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `image_ref` varchar(255) DEFAULT NULL,
  `kernel_id` varchar(255) DEFAULT NULL,
  `ramdisk_id` varchar(255) DEFAULT NULL,
  `server_name` varchar(255) DEFAULT NULL,
  `launch_index` int(11) DEFAULT NULL,
  `key_name` varchar(255) DEFAULT NULL,
  `key_data` mediumtext,
  `power_state` int(11) DEFAULT NULL,
  `vm_state` varchar(255) DEFAULT NULL,
  `memory_mb` int(11) DEFAULT NULL,
  `vcpus` int(11) DEFAULT NULL,
  `hostname` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `user_data` mediumtext,
  `reservation_id` varchar(255) DEFAULT NULL,
  `scheduled_at` datetime DEFAULT NULL,
  `launched_at` datetime DEFAULT NULL,
  `terminated_at` datetime DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `display_description` varchar(255) DEFAULT NULL,
  `availability_zone` varchar(255) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT NULL,
  `os_type` varchar(255) DEFAULT NULL,
  `launched_on` mediumtext,
  `instance_type_id` int(11) DEFAULT NULL,
  `vm_mode` varchar(255) DEFAULT NULL,
  `uuid` varchar(36) DEFAULT NULL,
  `architecture` varchar(255) DEFAULT NULL,
  `root_device_name` varchar(255) DEFAULT NULL,
  `access_ip_v4` varchar(255) DEFAULT NULL,
  `access_ip_v6` varchar(255) DEFAULT NULL,
  `config_drive` varchar(255) DEFAULT NULL,
  `task_state` varchar(255) DEFAULT NULL,
  `default_ephemeral_device` varchar(255) DEFAULT NULL,
  `default_swap_device` varchar(255) DEFAULT NULL,
  `progress` int(11) DEFAULT NULL,
  `auto_disk_config` tinyint(1) DEFAULT NULL,
  `shutdown_terminate` tinyint(1) DEFAULT NULL,
  `disable_terminate` tinyint(1) DEFAULT NULL,
  `root_gb` int(11) DEFAULT NULL,
  `ephemeral_gb` int(11) DEFAULT NULL,
  `cell_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instances`
--

LOCK TABLES `instances` WRITE;
/*!40000 ALTER TABLE `instances` DISABLE KEYS */;
INSERT INTO `instances` VALUES ('2013-02-08 00:16:34','2013-02-08 00:32:46','2013-02-08 00:32:47',1,1,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDczDvCcJOJuNC5XL4JEX+n0f3F1WIBx0i1p7YEg3RwT/zCA8rUb0qvhfie4cFxgoxkeAc/UvgnGeKkv8qGJiJz0m0prEy8NWzYBc4v0MR8yETYyR3P53eHyIyOMqXslGI02GbAIM6B74KfkwB3A0b6Rn+d4x9WH4c9QO7Y9Kvp7w== nova@cs-os-hv8\n',1,'deleted',2048,1,'myinstance','cs-os-hv8','','r-6bj07zxm','2013-02-08 00:16:35','2013-02-08 00:18:09','2013-02-08 00:32:46','myInstance','myInstance',NULL,0,NULL,'cs-os-hv8',5,NULL,'81456216-2744-468b-bd7a-9e8f16d2ef12',NULL,'/dev/vda',NULL,NULL,'',NULL,'/dev/vdb',NULL,0,NULL,1,0,10,20,NULL),('2013-02-08 00:32:53','2013-02-08 01:04:10','2013-02-08 01:04:10',1,2,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',2048,1,'myinstance','cs-os-hv8','','r-rkt90n55','2013-02-08 00:32:54','2013-02-08 00:32:59','2013-02-08 01:04:10','myInstance','myInstance',NULL,0,NULL,'cs-os-hv8',5,NULL,'ebf6b62c-6477-4f41-a9bc-b2813a42846a',NULL,'/dev/vda',NULL,NULL,'',NULL,'/dev/vdb',NULL,0,NULL,1,0,10,20,NULL),('2013-02-08 01:09:20','2013-02-13 17:23:40','2013-02-13 17:23:41',1,3,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny1','cs-os-hv8','','r-4cp1k8or','2013-02-08 01:09:20','2013-02-08 01:09:26','2013-02-13 17:23:40','tiny1','tiny1',NULL,0,NULL,'cs-os-hv8',2,NULL,'29d549d1-2b4f-4e61-a0a5-133825051d8f',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-08 01:09:41','2013-02-08 01:10:16','2013-02-08 01:10:16',1,4,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny1','cs-os-hv8','','r-s7st27t0','2013-02-08 01:09:42','2013-02-08 01:09:49','2013-02-08 01:10:16','tiny1','tiny1',NULL,0,NULL,'cs-os-hv8',2,NULL,'3185b9b4-44c9-4799-9a55-aab8ee215ae6',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-08 01:10:02','2013-02-13 17:23:43','2013-02-13 17:23:43',1,5,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny2','cs-os-hv8','','r-00fok2cd','2013-02-08 01:10:02','2013-02-08 01:10:09','2013-02-13 17:23:43','tiny2','tiny2',NULL,0,NULL,'cs-os-hv8',2,NULL,'73450081-6160-4b67-b0f1-79e2ba196412',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-08 01:10:29','2013-02-13 17:23:44','2013-02-13 17:23:44',1,6,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny3','cs-os-hv8','','r-dq8vq0aa','2013-02-08 01:10:29','2013-02-08 01:10:36','2013-02-13 17:23:44','tiny3','tiny3',NULL,0,NULL,'cs-os-hv8',2,NULL,'20533753-7d20-47ca-8b92-4d4237d4567e',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-08 01:10:46','2013-02-13 17:23:46','2013-02-13 17:23:46',1,7,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',5,'deleted',512,1,'tiny4','cs-os-hv8','','r-v8qeb0w0','2013-02-08 01:10:47','2013-02-08 01:10:55','2013-02-13 17:23:46','tiny4','tiny4',NULL,0,NULL,'cs-os-hv8',2,NULL,'5629ef76-0d32-451b-9f04-f65f5fcb3583',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-08 01:10:56','2013-02-08 01:12:03','2013-02-08 01:12:03',1,8,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny4','cs-os-hv8','','r-625iduvp','2013-02-08 01:10:57','2013-02-08 01:11:06','2013-02-08 01:12:03','tiny4','tiny4',NULL,0,NULL,'cs-os-hv8',2,NULL,'6b3b6a1b-d5e0-4621-a045-8c616319427f',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-08 01:11:04','2013-02-08 01:11:57','2013-02-08 01:11:57',1,9,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny5','cs-os-hv8','','r-wn7s8ob0','2013-02-08 01:11:05','2013-02-08 01:11:18','2013-02-08 01:11:57','tiny5','tiny5',NULL,0,NULL,'cs-os-hv8',2,NULL,'1ee95cda-d341-48bc-9b1f-9672210afe44',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-08 01:11:23','2013-02-08 01:11:51','2013-02-08 01:11:51',1,10,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny5','cs-os-hv8','','r-iztn15d5','2013-02-08 01:11:23','2013-02-08 01:11:34','2013-02-08 01:11:51','tiny5','tiny5',NULL,0,NULL,'cs-os-hv8',2,NULL,'0a728566-b6da-42c9-9b2a-bd08ef56ada0',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-08 01:11:29','2013-02-13 17:23:52','2013-02-13 17:23:52',1,11,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny6','cs-os-hv8','','r-kjbrtcdx','2013-02-08 01:11:30','2013-02-08 01:11:46','2013-02-13 17:23:52','tiny6','tiny6',NULL,0,NULL,'cs-os-hv8',2,NULL,'45682207-0f28-4643-b27b-1254ed693ee4',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-08 01:12:26','2013-02-13 17:23:51','2013-02-13 17:23:51',1,12,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny5','cs-os-hv8','','r-ctaxmh14','2013-02-08 01:12:27','2013-02-08 01:12:36','2013-02-13 17:23:51','tiny5','tiny5',NULL,0,NULL,'cs-os-hv8',2,NULL,'1ab1fc65-2109-4bac-a2cc-1d900b3c3f9c',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-08 01:12:56','2013-02-13 17:23:51','2013-02-13 17:23:51',1,13,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny7','cs-os-hv8','','r-mo9rvnte','2013-02-08 01:12:56','2013-02-08 01:13:05','2013-02-13 17:23:51','tiny7','tiny7',NULL,0,NULL,'cs-os-hv8',2,NULL,'8b847a1e-c607-465b-9818-81531c5b6403',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-08 01:13:41','2013-02-13 17:23:52','2013-02-13 17:23:52',1,14,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny8','cs-os-hv8','','r-qddmqjqo','2013-02-08 01:13:42','2013-02-08 01:13:50','2013-02-13 17:23:52','tiny8','tiny8',NULL,0,NULL,'cs-os-hv8',2,NULL,'7becf319-0125-4cea-bcbe-5d4bf5b68694',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-08 01:17:25','2013-02-13 17:23:52','2013-02-13 17:23:52',1,15,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny9','cs-os-hv8','','r-n8e370b1','2013-02-08 01:17:25','2013-02-08 01:17:31','2013-02-13 17:23:52','tiny9','tiny9',NULL,0,NULL,'cs-os-hv8',2,NULL,'caae3e31-959f-47ca-bf52-2bf71ebdfff0',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-08 01:17:41','2013-02-12 02:46:30','2013-02-12 02:46:30',1,16,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny10','cs-os-hv8','','r-f2fa0kmz','2013-02-08 01:17:41','2013-02-08 01:18:08','2013-02-12 02:46:30','tiny10','tiny10',NULL,0,NULL,'cs-os-hv8',2,NULL,'edc4f663-5878-4eca-9636-32fe9b62cf4b',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-12 02:46:44','2013-02-12 02:46:48','2013-02-12 02:47:44',1,17,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',0,'error',2048,1,'x',NULL,'','r-rx2mmzu0',NULL,NULL,NULL,'x','x',NULL,0,NULL,NULL,5,NULL,'de9bf936-1ccf-4a7b-b7a0-1415c312d18b',NULL,NULL,NULL,NULL,'','scheduling',NULL,NULL,0,NULL,1,0,10,20,NULL),('2013-02-12 02:48:08','2013-02-12 02:48:08','2013-02-12 02:48:51',1,18,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',0,'error',2048,1,'x',NULL,'','r-x0tfioxi',NULL,NULL,NULL,'x','x',NULL,0,NULL,NULL,5,NULL,'b705629d-21b2-4e77-81dc-9eec0240d830',NULL,NULL,NULL,NULL,'','scheduling',NULL,NULL,0,NULL,1,0,10,20,NULL),('2013-02-13 17:24:51','2013-02-13 17:24:52','2013-02-13 17:27:34',1,19,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',0,'error',16384,8,'xl1',NULL,'','r-nfduyt6z',NULL,NULL,NULL,'xl1','xl1',NULL,0,NULL,NULL,4,NULL,'d8b0c205-1aa7-44e1-a94b-cd311f4214ec',NULL,NULL,NULL,NULL,'','scheduling',NULL,NULL,0,NULL,1,0,10,160,NULL),('2013-02-13 17:27:43','2013-02-13 17:33:41','2013-02-13 17:33:41',1,20,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'xl1','cs-os-hv8','','r-7rk2da1q','2013-02-13 17:27:43','2013-02-13 17:27:51','2013-02-13 17:33:41','xl1','xl1',NULL,0,NULL,'cs-os-hv8',2,NULL,'99378a12-651f-4948-8474-398fa4a5294f',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-13 17:35:20','2013-02-13 18:01:51','2013-02-13 18:01:51',1,21,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny1','cs-os-hv8','','r-h6ev26bb','2013-02-13 17:35:21','2013-02-13 17:35:31','2013-02-13 18:01:51','tiny1','tiny1',NULL,0,NULL,'cs-os-hv8',2,NULL,'1f90014b-37ed-4807-a8cf-19b1ceb203f2',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-13 17:35:22','2013-02-13 18:01:47','2013-02-13 18:01:47',1,22,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny2','cs-os-hv8','','r-h04l0tsi','2013-02-13 17:35:22','2013-02-13 17:35:37','2013-02-13 18:01:47','tiny2','tiny2',NULL,0,NULL,'cs-os-hv8',2,NULL,'2412a2ce-7d92-40ef-8c2b-bbe64f245645',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-13 17:35:23','2013-02-13 18:01:57','2013-02-13 18:01:57',1,23,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny3','cs-os-hv8','','r-noo9czeb','2013-02-13 17:35:23','2013-02-13 17:35:42','2013-02-13 18:01:57','tiny3','tiny3',NULL,0,NULL,'cs-os-hv8',2,NULL,'e8d23e5e-960b-4233-bc96-ac44d19f03af',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-13 17:35:25','2013-02-13 18:01:59','2013-02-13 18:01:59',1,24,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny4','cs-os-hv8','','r-h6udn0sb','2013-02-13 17:35:26','2013-02-13 17:35:44','2013-02-13 18:01:59','tiny4','tiny4',NULL,0,NULL,'cs-os-hv8',2,NULL,'ff066f84-daf0-431d-bfa2-298c2749bea5',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-13 17:35:28','2013-02-13 18:01:58','2013-02-13 18:01:58',1,25,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny5','cs-os-hv8','','r-cjowbsyh','2013-02-13 17:35:29','2013-02-13 17:35:53','2013-02-13 18:01:58','tiny5','tiny5',NULL,0,NULL,'cs-os-hv8',2,NULL,'430cdc9c-4ca3-4080-ab3b-7d971db4b6ef',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-13 17:35:29','2013-02-13 18:01:57','2013-02-13 18:01:57',1,26,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny6','cs-os-hv8','','r-utgjd0wt','2013-02-13 17:35:30','2013-02-13 17:36:03','2013-02-13 18:01:57','tiny6','tiny6',NULL,0,NULL,'cs-os-hv8',2,NULL,'5dfa8b4d-02bf-49c0-a653-950a57b1e451',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-13 17:35:30','2013-02-13 18:01:58','2013-02-13 18:01:58',1,27,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny7','cs-os-hv8','','r-in85wnis','2013-02-13 17:35:31','2013-02-13 17:36:02','2013-02-13 18:01:58','tiny7','tiny7',NULL,0,NULL,'cs-os-hv8',2,NULL,'3c8e0e52-cdc3-4e77-bcec-fc57a6bb040a',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-13 17:35:31','2013-02-13 18:01:59','2013-02-13 18:01:59',1,28,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny8','cs-os-hv8','','r-0mm2omnc','2013-02-13 17:35:31','2013-02-13 17:36:02','2013-02-13 18:01:59','tiny8','tiny8',NULL,0,NULL,'cs-os-hv8',2,NULL,'03be33f4-bbb3-47b8-acca-3c4c16a1cfc9',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-13 17:35:32','2013-02-13 18:01:59','2013-02-13 18:01:59',1,29,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny9','cs-os-hv8','','r-zrj0cwis','2013-02-13 17:35:34','2013-02-13 17:35:55','2013-02-13 18:01:59','tiny9','tiny9',NULL,0,NULL,'cs-os-hv8',2,NULL,'e4ffc3d0-61c5-470b-8a03-3068cd2eae85',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-13 17:35:35','2013-02-13 18:01:58','2013-02-13 18:01:58',1,30,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny10','cs-os-hv8','','r-gykg5ar5','2013-02-13 17:35:35','2013-02-13 17:36:03','2013-02-13 18:01:58','tiny10','tiny10',NULL,0,NULL,'cs-os-hv8',2,NULL,'aacae706-ca92-4a34-99ba-88e9a11df23c',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-14 23:54:10','2013-02-15 00:04:48','2013-02-15 00:04:48',1,31,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny1','cs-os-hv8','','r-hs04e2a0','2013-02-14 23:54:11','2013-02-14 23:54:17','2013-02-15 00:04:48','tiny1','tiny1',NULL,0,NULL,'cs-os-hv8',2,NULL,'aeed38f8-c204-4a63-a265-e663f6143fd8',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-14 23:55:17','2013-02-15 00:04:54','2013-02-15 00:04:54',1,32,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',0,'deleted',512,1,'tiny2','cs-os-hv8','','r-a1mj9b40','2013-02-14 23:55:18','2013-02-14 23:55:28','2013-02-15 00:04:54','tiny2','tiny2',NULL,0,NULL,'cs-os-hv8',2,NULL,'b4e89593-962d-4393-b573-85b701bea7e3',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-14 23:55:18','2013-02-15 00:04:48','2013-02-15 00:04:48',1,33,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny3','cs-os-hv8','','r-t0sdry4g','2013-02-14 23:55:19','2013-02-14 23:55:30','2013-02-15 00:04:48','tiny3','tiny3',NULL,0,NULL,'cs-os-hv8',2,NULL,'7c083db7-37c2-4b57-8966-c12e708a2e33',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-14 23:55:19','2013-02-15 00:04:55','2013-02-15 00:04:55',1,34,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',0,'deleted',512,1,'tiny4','cs-os-hv8','','r-7av4rhop','2013-02-14 23:55:20','2013-02-14 23:55:38','2013-02-15 00:04:55','tiny4','tiny4',NULL,0,NULL,'cs-os-hv8',2,NULL,'fdf155b9-be69-4374-bbfd-60202efb5ef8',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-14 23:55:20','2013-02-15 00:04:54','2013-02-15 00:04:55',1,35,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',0,'deleted',512,1,'tiny5','cs-os-hv8','','r-wgwcwz48','2013-02-14 23:55:21','2013-02-14 23:55:52','2013-02-15 00:04:54','tiny5','tiny5',NULL,0,NULL,'cs-os-hv8',2,NULL,'a431a725-2e9d-426f-aaee-a06831c23822',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-14 23:55:21','2013-02-15 00:04:44','2013-02-15 00:04:44',1,36,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny6','cs-os-hv8','','r-b73uqx8z','2013-02-14 23:55:21','2013-02-14 23:55:53','2013-02-15 00:04:44','tiny6','tiny6',NULL,0,NULL,'cs-os-hv8',2,NULL,'7b57cfa4-73cd-4370-a054-2a1fe4512914',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-14 23:55:22','2013-02-15 00:04:44','2013-02-15 00:04:44',1,37,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny7','cs-os-hv8','','r-adjy9bcp','2013-02-14 23:55:22','2013-02-14 23:55:40','2013-02-15 00:04:44','tiny7','tiny7',NULL,0,NULL,'cs-os-hv8',2,NULL,'4e4ec743-c88a-4032-ab75-bc8da47c46ea',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-14 23:55:22','2013-02-15 00:04:54','2013-02-15 00:04:54',1,38,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',0,'deleted',512,1,'tiny8','cs-os-hv8','','r-x8hcxcgd','2013-02-14 23:55:23','2013-02-14 23:55:43','2013-02-15 00:04:54','tiny8','tiny8',NULL,0,NULL,'cs-os-hv8',2,NULL,'9075c68a-98f5-4123-b74c-d3f797846cc8',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-14 23:55:24','2013-02-15 00:03:23','2013-02-15 00:03:23',1,39,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny9','cs-os-hv8','','r-h7w47bme','2013-02-14 23:55:24','2013-02-14 23:55:49','2013-02-15 00:03:22','tiny9','tiny9',NULL,0,NULL,'cs-os-hv8',2,NULL,'39af733e-6fb3-4c2f-b22b-adf64b1d62dc',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-14 23:55:25','2013-02-15 00:01:13','2013-02-15 00:01:13',1,40,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny10','cs-os-hv8','','r-01xe0qk9','2013-02-14 23:55:25','2013-02-14 23:55:43','2013-02-15 00:01:13','tiny10','tiny10',NULL,0,NULL,'cs-os-hv8',2,NULL,'649bfde8-f4ca-4c34-ac46-6a77c12abb00',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 00:23:20','2013-02-15 00:42:33','2013-02-15 00:42:33',1,41,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny1','cs-os-hv8','','r-purhlg5n','2013-02-15 00:23:20','2013-02-15 00:23:33','2013-02-15 00:42:33','tiny1','tiny1',NULL,0,NULL,'cs-os-hv8',2,NULL,'a46cf4a9-a18b-4b2f-be7e-2f5a8bbd602d',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 00:23:21','2013-02-15 00:42:36','2013-02-15 00:42:36',1,42,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny2','cs-os-hv8','','r-4ygqp63i','2013-02-15 00:23:21','2013-02-15 00:23:34','2013-02-15 00:42:36','tiny2','tiny2',NULL,0,NULL,'cs-os-hv8',2,NULL,'e67c6d0d-ba6d-4d13-b9eb-5ae0ca2bdc2f',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 00:23:21','2013-02-15 00:42:41','2013-02-15 00:42:42',1,43,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny3','cs-os-hv8','','r-scxao1m0','2013-02-15 00:23:22','2013-02-15 00:23:44','2013-02-15 00:42:41','tiny3','tiny3',NULL,0,NULL,'cs-os-hv8',2,NULL,'0c60b33a-6e2e-4add-b84a-338663124874',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 00:23:22','2013-02-15 00:42:44','2013-02-15 00:42:44',1,44,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny4','cs-os-hv8','','r-ukjd0wqn','2013-02-15 00:23:22','2013-02-15 00:23:36','2013-02-15 00:42:44','tiny4','tiny4',NULL,0,NULL,'cs-os-hv8',2,NULL,'e4495bb6-b40c-4274-a51d-3589f38cc28f',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 00:23:23','2013-02-15 00:42:37','2013-02-15 00:42:37',1,45,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny5','cs-os-hv8','','r-76fb1yqe','2013-02-15 00:23:23','2013-02-15 00:23:51','2013-02-15 00:42:37','tiny5','tiny5',NULL,0,NULL,'cs-os-hv8',2,NULL,'8b955c58-0bc5-44ab-9e49-774db0871a62',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 00:23:24','2013-02-15 00:42:43','2013-02-15 00:42:43',1,46,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny6','cs-os-hv8','','r-1ppty09t','2013-02-15 00:23:24','2013-02-15 00:23:46','2013-02-15 00:42:43','tiny6','tiny6',NULL,0,NULL,'cs-os-hv8',2,NULL,'8bd3b1a1-2bdb-4a5b-b116-b1365e1cf60c',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 00:23:24','2013-02-15 00:42:45','2013-02-15 00:42:45',1,47,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny7','cs-os-hv8','','r-i0zbfqbu','2013-02-15 00:23:25','2013-02-15 00:23:55','2013-02-15 00:42:45','tiny7','tiny7',NULL,0,NULL,'cs-os-hv8',2,NULL,'84d7fa10-a092-4351-9cc6-4e2790679024',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 00:23:25','2013-02-15 00:42:43','2013-02-15 00:42:43',1,48,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny8','cs-os-hv8','','r-93vd0p2m','2013-02-15 00:23:26','2013-02-15 00:23:51','2013-02-15 00:42:43','tiny8','tiny8',NULL,0,NULL,'cs-os-hv8',2,NULL,'ad114f66-cfaf-47b2-a111-8f455efcae8c',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 00:23:27','2013-02-15 00:42:44','2013-02-15 00:42:44',1,49,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny9','cs-os-hv8','','r-23hedn4x','2013-02-15 00:23:28','2013-02-15 00:23:55','2013-02-15 00:42:44','tiny9','tiny9',NULL,0,NULL,'cs-os-hv8',2,NULL,'8f94e835-624c-444e-9cbd-524a04f3cab5',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 00:23:28','2013-02-15 00:24:33','2013-02-15 00:24:34',1,50,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny10','cs-os-hv8','','r-3ujvqwdr','2013-02-15 00:23:29','2013-02-15 00:23:51','2013-02-15 00:24:33','tiny10','tiny10',NULL,0,NULL,'cs-os-hv8',2,NULL,'8d259b7e-3956-4f68-8128-5715e6b8191f',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 00:25:57','2013-02-15 00:29:08','2013-02-15 00:29:08',1,51,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny10','cs-os-hv8','','r-zcl63r05','2013-02-15 00:25:58','2013-02-15 00:26:05','2013-02-15 00:29:08','tiny10','tiny10',NULL,0,NULL,'cs-os-hv8',2,NULL,'14e681bb-a8ba-450b-a2ee-fb7a1c89af15',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 00:40:30','2013-02-15 01:30:14','2013-02-15 01:30:14',1,52,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'myKey','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDN+j1J3wxlKjP3culoMqxyKKc3Art6FB844jNV2tJ/yPUZm8Q+Aqf9dntJjLUsIOyoDLXv/WF+CLlVC28MXpuECtFtUWkR1DzdQ605u0n5RVu5YjE0fH2v6BGw5MlrB4xzJmZBvqHIZ8EYpZoRFVD8li+GQovDSOvSoKlbTzTOVQ== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny10','cs-os-hv8','','r-io0r3rk0','2013-02-15 00:40:30','2013-02-15 00:40:37','2013-02-15 01:30:14','tiny10','tiny10',NULL,0,NULL,'cs-os-hv8',2,NULL,'4b62dc21-106e-477c-90ed-06f39e2a6b61',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 00:50:44','2013-02-15 01:30:15','2013-02-15 01:30:15',1,53,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny1','cs-os-hv8','','r-u0tx3gn1','2013-02-15 00:50:44','2013-02-15 00:50:49','2013-02-15 01:30:15','tiny1','tiny1',NULL,0,NULL,'cs-os-hv8',2,NULL,'e1c54f26-5661-40f5-a669-1db23e15ec31',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 00:59:22','2013-02-15 01:21:48','2013-02-15 01:21:49',1,54,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',2048,1,'small1','cs-os-hv8','','r-bs2998rb','2013-02-15 00:59:23','2013-02-15 00:59:30','2013-02-15 01:21:48','small1','small1',NULL,0,NULL,'cs-os-hv8',5,NULL,'0ba0689e-0732-4eb7-8d89-d96d74c4e9be',NULL,'/dev/vda',NULL,NULL,'',NULL,'/dev/vdb',NULL,0,NULL,1,0,10,20,NULL),('2013-02-15 01:22:01','2013-02-15 01:29:21','2013-02-15 01:29:21',1,55,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',2048,1,'small1','cs-os-hv8','','r-7vfoss4m','2013-02-15 01:22:01','2013-02-15 01:22:06','2013-02-15 01:29:21','small1','small1',NULL,0,NULL,'cs-os-hv8',5,NULL,'70c62689-729e-499b-a62c-be419bb45fd0',NULL,'/dev/vda',NULL,NULL,'',NULL,'/dev/vdb',NULL,0,NULL,1,0,10,20,NULL),('2013-02-15 02:59:49','2013-02-15 03:06:07','2013-02-15 03:06:07',1,56,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny1','cs-os-hv8','','r-3i0cevju','2013-02-15 02:59:50','2013-02-15 03:00:00','2013-02-15 03:06:07','tiny1','tiny1',NULL,0,NULL,'cs-os-hv8',2,NULL,'e3afe5b2-3b4a-4717-9752-9427f5abc5b1',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 02:59:50','2013-02-15 03:06:10','2013-02-15 03:06:10',1,57,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny2','cs-os-hv8','','r-t0p70rkc','2013-02-15 02:59:51','2013-02-15 03:00:02','2013-02-15 03:06:10','tiny2','tiny2',NULL,0,NULL,'cs-os-hv8',2,NULL,'f849afd3-2b89-423d-86b0-aa1da06295c1',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 02:59:51','2013-02-15 03:06:00','2013-02-15 03:06:00',1,58,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny3','cs-os-hv8','','r-i30qo028','2013-02-15 02:59:51','2013-02-15 03:00:07','2013-02-15 03:06:00','tiny3','tiny3',NULL,0,NULL,'cs-os-hv8',2,NULL,'17ef8077-aa87-4db3-976f-8808aa7c9df3',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 02:59:52','2013-02-15 03:06:09','2013-02-15 03:06:09',1,59,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny4','cs-os-hv8','','r-h7fjcby6','2013-02-15 02:59:52','2013-02-15 03:00:10','2013-02-15 03:06:09','tiny4','tiny4',NULL,0,NULL,'cs-os-hv8',2,NULL,'58f0a232-56a9-4a51-8b07-f07da4dbe41d',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 02:59:53','2013-02-15 03:06:07','2013-02-15 03:06:07',1,60,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny5','cs-os-hv8','','r-c9l45u1o','2013-02-15 02:59:53','2013-02-15 03:00:15','2013-02-15 03:06:07','tiny5','tiny5',NULL,0,NULL,'cs-os-hv8',2,NULL,'75ca3873-c09d-45f8-80c2-c446b60d8265',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 02:59:53','2013-02-15 03:06:08','2013-02-15 03:06:08',1,61,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny6','cs-os-hv8','','r-mvg3igy5','2013-02-15 02:59:54','2013-02-15 03:00:14','2013-02-15 03:06:08','tiny6','tiny6',NULL,0,NULL,'cs-os-hv8',2,NULL,'8709791a-ac4b-4288-b10a-85b2d4726fca',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 02:59:54','2013-02-15 03:06:09','2013-02-15 03:06:09',1,62,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny7','cs-os-hv8','','r-4b96ruda','2013-02-15 02:59:55','2013-02-15 03:00:14','2013-02-15 03:06:09','tiny7','tiny7',NULL,0,NULL,'cs-os-hv8',2,NULL,'e0d4fdf0-62b1-4e02-818a-cd82d144fc78',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 02:59:55','2013-02-15 03:06:10','2013-02-15 03:06:10',1,63,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny8','cs-os-hv8','','r-u7rd01tu','2013-02-15 02:59:56','2013-02-15 03:00:20','2013-02-15 03:06:10','tiny8','tiny8',NULL,0,NULL,'cs-os-hv8',2,NULL,'e933a60a-c668-41f3-bb52-70adafccd7f4',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 02:59:57','2013-02-15 03:06:08','2013-02-15 03:06:08',1,64,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny9','cs-os-hv8','','r-0bx7x1sk','2013-02-15 02:59:58','2013-02-15 03:00:25','2013-02-15 03:06:08','tiny9','tiny9',NULL,0,NULL,'cs-os-hv8',2,NULL,'c6705a74-6b0d-4cb4-bae2-98d308de723f',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 02:59:58','2013-02-15 03:05:59','2013-02-15 03:05:59',1,65,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny10','cs-os-hv8','','r-4lh5fn9w','2013-02-15 02:59:59','2013-02-15 03:00:23','2013-02-15 03:05:59','tiny10','tiny10',NULL,0,NULL,'cs-os-hv8',2,NULL,'1540fa6c-2646-4d98-b906-77952525e049',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:06:21','2013-02-15 03:10:17','2013-02-15 03:10:17',1,66,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny1','cs-os-hv8','','r-h3ch4abj','2013-02-15 03:06:21','2013-02-15 03:06:34','2013-02-15 03:10:17','tiny1','tiny1',NULL,0,NULL,'cs-os-hv8',2,NULL,'0861c724-6bb8-4b89-b451-73343edc6e7d',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:06:21','2013-02-15 03:10:18','2013-02-15 03:10:18',1,67,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny2','cs-os-hv8','','r-h7cr8khp','2013-02-15 03:06:22','2013-02-15 03:06:36','2013-02-15 03:10:18','tiny2','tiny2',NULL,0,NULL,'cs-os-hv8',2,NULL,'4de95771-f16d-4115-94ec-d97b7babe53f',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:06:22','2013-02-15 03:10:20','2013-02-15 03:10:20',1,68,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny3','cs-os-hv8','','r-pe30sp8d','2013-02-15 03:06:23','2013-02-15 03:06:39','2013-02-15 03:10:20','tiny3','tiny3',NULL,0,NULL,'cs-os-hv8',2,NULL,'51b61328-8340-454f-8495-bbc904b26d6b',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:06:23','2013-02-15 03:10:32','2013-02-15 03:10:32',1,69,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny4','cs-os-hv8','','r-t389gtyr','2013-02-15 03:06:23','2013-02-15 03:06:39','2013-02-15 03:10:32','tiny4','tiny4',NULL,0,NULL,'cs-os-hv8',2,NULL,'dae97c8d-0f06-4804-a6fd-19e4b31abd00',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:06:24','2013-02-15 03:10:28','2013-02-15 03:10:28',1,70,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny5','cs-os-hv8','','r-08hy3f80','2013-02-15 03:06:24','2013-02-15 03:06:49','2013-02-15 03:10:28','tiny5','tiny5',NULL,0,NULL,'cs-os-hv8',2,NULL,'7803933a-7059-404f-9d2b-0db68702144f',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:06:25','2013-02-15 03:10:31','2013-02-15 03:10:31',1,71,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny6','cs-os-hv8','','r-cri1224i','2013-02-15 03:06:25','2013-02-15 03:06:51','2013-02-15 03:10:31','tiny6','tiny6',NULL,0,NULL,'cs-os-hv8',2,NULL,'f75ffc3b-a1c0-49f4-94d6-74a2230fb287',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:06:26','2013-02-15 03:10:31','2013-02-15 03:10:31',1,72,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny7','cs-os-hv8','','r-oe5sw8dw','2013-02-15 03:06:26','2013-02-15 03:06:58','2013-02-15 03:10:31','tiny7','tiny7',NULL,0,NULL,'cs-os-hv8',2,NULL,'b59c96b1-1753-4c29-9535-6a4a3907fee6',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:06:27','2013-02-15 03:10:28','2013-02-15 03:10:28',1,73,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny8','cs-os-hv8','','r-trbndllb','2013-02-15 03:06:27','2013-02-15 03:06:58','2013-02-15 03:10:28','tiny8','tiny8',NULL,0,NULL,'cs-os-hv8',2,NULL,'c0a5d4b4-d25a-407f-a428-d42f62e793f9',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:06:28','2013-02-15 03:10:32','2013-02-15 03:10:32',1,74,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny9','cs-os-hv8','','r-uq940bix','2013-02-15 03:06:29','2013-02-15 03:06:57','2013-02-15 03:10:32','tiny9','tiny9',NULL,0,NULL,'cs-os-hv8',2,NULL,'b6d841ce-5d3a-4a1a-9142-fd11444dfbba',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:06:29','2013-02-15 03:10:22','2013-02-15 03:10:22',1,75,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny10','cs-os-hv8','','r-u1pskxj3','2013-02-15 03:06:31','2013-02-15 03:06:58','2013-02-15 03:10:22','tiny10','tiny10',NULL,0,NULL,'cs-os-hv8',2,NULL,'6b1a3d88-4b65-41d4-84e9-ee232a6221d0',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:10:42','2013-02-15 03:16:20','2013-02-15 03:16:20',1,76,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny1','cs-os-hv8','','r-3yrd1ycd','2013-02-15 03:10:42','2013-02-15 03:10:48','2013-02-15 03:16:19','tiny1','tiny1',NULL,0,NULL,'cs-os-hv8',2,NULL,'1ee163b1-140f-47bf-b3fc-0bc32e45ebe0',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:10:52','2013-02-15 03:16:19','2013-02-15 03:16:19',1,77,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny2','cs-os-hv8','','r-abw4func','2013-02-15 03:10:53','2013-02-15 03:10:58','2013-02-15 03:16:19','tiny2','tiny2',NULL,0,NULL,'cs-os-hv8',2,NULL,'30d868a7-08a0-46f2-ab17-061191858aa8',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:11:03','2013-02-15 03:16:19','2013-02-15 03:16:19',1,78,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny3','cs-os-hv8','','r-a03pvch9','2013-02-15 03:11:03','2013-02-15 03:11:11','2013-02-15 03:16:19','tiny3','tiny3',NULL,0,NULL,'cs-os-hv8',2,NULL,'d98ea866-54ec-40af-99e4-cdf59efeb7fc',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:11:14','2013-02-15 03:16:08','2013-02-15 03:16:09',1,79,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny4','cs-os-hv8','','r-xm50txsf','2013-02-15 03:11:14','2013-02-15 03:11:22','2013-02-15 03:16:08','tiny4','tiny4',NULL,0,NULL,'cs-os-hv8',2,NULL,'12e96f5e-6106-4f0b-8cd5-b213e1e5ae0c',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:11:25','2013-02-15 03:16:17','2013-02-15 03:16:17',1,80,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny5','cs-os-hv8','','r-m0eth05m','2013-02-15 03:11:26','2013-02-15 03:11:37','2013-02-15 03:16:17','tiny5','tiny5',NULL,0,NULL,'cs-os-hv8',2,NULL,'0ddd9f49-e567-4477-b404-215d480cf394',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:11:36','2013-02-15 03:16:18','2013-02-15 03:16:18',1,81,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny6','cs-os-hv8','','r-tsv5ce17','2013-02-15 03:11:37','2013-02-15 03:11:48','2013-02-15 03:16:18','tiny6','tiny6',NULL,0,NULL,'cs-os-hv8',2,NULL,'7374e70f-d497-48ec-b6fa-782ad9ef1f1e',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:11:47','2013-02-15 03:16:18','2013-02-15 03:16:18',1,82,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny7','cs-os-hv8','','r-qrkf2muf','2013-02-15 03:11:48','2013-02-15 03:12:00','2013-02-15 03:16:18','tiny7','tiny7',NULL,0,NULL,'cs-os-hv8',2,NULL,'fd30f14f-152e-4b20-ac62-6037c35f748f',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:11:58','2013-02-15 03:16:19','2013-02-15 03:16:19',1,83,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny8','cs-os-hv8','','r-d05clsjo','2013-02-15 03:11:59','2013-02-15 03:12:12','2013-02-15 03:16:18','tiny8','tiny8',NULL,0,NULL,'cs-os-hv8',2,NULL,'60a26400-addd-4cfe-a0e1-1b752ba36855',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:12:10','2013-02-15 03:16:18','2013-02-15 03:16:18',1,84,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny9','cs-os-hv8','','r-o2lf5ny9','2013-02-15 03:12:10','2013-02-15 03:12:24','2013-02-15 03:16:18','tiny9','tiny9',NULL,0,NULL,'cs-os-hv8',2,NULL,'92ace453-50e1-4caf-938a-7ea6b212d407',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:12:21','2013-02-15 03:16:05','2013-02-15 03:16:05',1,85,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny10','cs-os-hv8','','r-86tjq7zr','2013-02-15 03:12:22','2013-02-15 03:12:35','2013-02-15 03:16:05','tiny10','tiny10',NULL,0,NULL,'cs-os-hv8',2,NULL,'18ebde32-7b51-4832-98b4-86113025129e',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:18:07','2013-02-15 03:40:39','2013-02-15 03:40:39',1,86,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny1','cs-os-hv8','','r-3xyq640c','2013-02-15 03:18:08','2013-02-15 03:18:14','2013-02-15 03:40:39','tiny1','tiny1',NULL,0,NULL,'cs-os-hv8',2,NULL,'6da52cc2-0b42-4a9f-b60b-e1a9334063f1',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:20:26','2013-02-15 03:40:36','2013-02-15 03:40:36',1,87,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny2','cs-os-hv8','','r-8g32r8n3','2013-02-15 03:20:26','2013-02-15 03:20:37','2013-02-15 03:40:35','tiny2','tiny2',NULL,0,NULL,'cs-os-hv8',2,NULL,'08dd37cf-36f2-40d6-9558-bbb956b9735d',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:20:27','2013-02-15 03:40:36','2013-02-15 03:40:36',1,88,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny3','cs-os-hv8','','r-t5aolk0x','2013-02-15 03:20:27','2013-02-15 03:20:41','2013-02-15 03:40:36','tiny3','tiny3',NULL,0,NULL,'cs-os-hv8',2,NULL,'1b115f2f-117b-4845-a9af-8088474ad8a1',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:20:27','2013-02-15 03:40:38','2013-02-15 03:40:38',1,89,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny4','cs-os-hv8','','r-7nm0anlu','2013-02-15 03:20:28','2013-02-15 03:20:43','2013-02-15 03:40:38','tiny4','tiny4',NULL,0,NULL,'cs-os-hv8',2,NULL,'49c5e3bd-5d6f-476a-957c-82d882745726',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:20:28','2013-02-15 03:40:39','2013-02-15 03:40:39',1,90,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny5','cs-os-hv8','','r-q847wupe','2013-02-15 03:20:28','2013-02-15 03:20:46','2013-02-15 03:40:39','tiny5','tiny5',NULL,0,NULL,'cs-os-hv8',2,NULL,'c0da84f2-838b-4c78-bb45-deed46bb7ede',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:20:29','2013-02-15 03:40:38','2013-02-15 03:40:38',1,91,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny6','cs-os-hv8','','r-trg4qh8b','2013-02-15 03:20:29','2013-02-15 03:20:48','2013-02-15 03:40:38','tiny6','tiny6',NULL,0,NULL,'cs-os-hv8',2,NULL,'5469a68a-4747-4a83-8115-d6abefbb2715',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:20:30','2013-02-15 03:40:40','2013-02-15 03:40:40',1,92,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny7','cs-os-hv8','','r-h6ye09y0','2013-02-15 03:20:30','2013-02-15 03:20:50','2013-02-15 03:40:40','tiny7','tiny7',NULL,0,NULL,'cs-os-hv8',2,NULL,'e1d9cfd5-a6a1-4f19-824c-63c89693030d',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:20:30','2013-02-15 03:40:37','2013-02-15 03:40:37',1,93,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny8','cs-os-hv8','','r-pjhadly4','2013-02-15 03:20:31','2013-02-15 03:20:54','2013-02-15 03:40:37','tiny8','tiny8',NULL,0,NULL,'cs-os-hv8',2,NULL,'09e77039-d970-4796-b8d3-93452722a098',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:20:31','2013-02-15 03:40:37','2013-02-15 03:40:37',1,94,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny9','cs-os-hv8','','r-uz9zo84n','2013-02-15 03:20:32','2013-02-15 03:20:56','2013-02-15 03:40:37','tiny9','tiny9',NULL,0,NULL,'cs-os-hv8',2,NULL,'4562db53-d244-42cb-b837-91fed15e2f0c',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:20:32','2013-02-15 03:40:39','2013-02-15 03:40:39',1,95,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny10','cs-os-hv8','','r-qdl3lzh6','2013-02-15 03:20:33','2013-02-15 03:21:03','2013-02-15 03:40:39','tiny10','tiny10',NULL,0,NULL,'cs-os-hv8',2,NULL,'5bcad3d1-d47b-454b-b4a3-a083f913b6c0',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:40:49','2013-02-15 03:43:15','2013-02-15 03:43:15',1,96,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny1','cs-os-hv8','','r-gxvxlidj','2013-02-15 03:40:49','2013-02-15 03:40:57','2013-02-15 03:43:15','tiny1','tiny1',NULL,0,NULL,'cs-os-hv8',2,NULL,'d7e44644-26ba-4006-aee6-7a1af1b33db5',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:44:20','2013-02-15 03:46:18','2013-02-15 03:46:19',1,97,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny','cs-os-hv8','','r-qsbue5oh','2013-02-15 03:44:20','2013-02-15 03:44:25','2013-02-15 03:46:18','tiny','tiny',NULL,0,NULL,'cs-os-hv8',2,NULL,'9087a544-a94b-456a-857a-0c3409b89d79',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:54:37','2013-02-15 03:56:44','2013-02-15 03:56:45',1,98,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'tiny1','cs-os-hv8','','r-snqfx4so','2013-02-15 03:54:38','2013-02-15 03:54:45','2013-02-15 03:56:44','tiny1','tiny1',NULL,0,NULL,'cs-os-hv8',2,NULL,'2af9b189-e2b1-4a53-aaa1-e4601ad76468',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-15 03:57:23','2013-02-21 23:50:04','2013-02-21 23:50:04',1,99,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',5,'deleted',512,1,'tiny1','cs-os-hv8','','r-mus1odpc','2013-02-15 03:57:23','2013-02-15 03:57:28','2013-02-21 23:50:04','tiny1','tiny1',NULL,0,NULL,'cs-os-hv8',2,NULL,'33c7b3ca-96d2-4f11-9c02-d35abffb4cca',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-02-22 00:01:24','2013-02-22 00:09:36','2013-02-22 00:09:36',1,100,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',2048,1,'tiny1','cs-os-hv8','','r-u39ly6vo','2013-02-22 00:01:25','2013-02-22 00:01:32','2013-02-22 00:09:36','tiny1','tiny1',NULL,0,NULL,'cs-os-hv8',5,NULL,'bd7fb770-8d06-42ee-86b7-1f4b13a5b4b1',NULL,'/dev/vda',NULL,NULL,'',NULL,'/dev/vdb',NULL,0,NULL,1,0,10,20,NULL),('2013-02-22 00:22:36','2013-02-22 00:25:47','2013-02-22 00:25:47',1,101,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',2048,1,'small1','cs-os-hv8','','r-rr4yqosc','2013-02-22 00:22:36','2013-02-22 00:22:42','2013-02-22 00:25:47','small1','small1',NULL,0,NULL,'cs-os-hv8',5,NULL,'8c066c75-5c87-4dd0-ae0c-afeac8ad2ac2',NULL,'/dev/vda',NULL,NULL,'',NULL,'/dev/vdb',NULL,0,NULL,1,0,10,20,NULL),('2013-02-22 00:22:51','2013-02-22 00:25:45','2013-02-22 00:25:45',1,102,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',2048,1,'small2','cs-os-hv8','','r-sbepx6l5','2013-02-22 00:22:51','2013-02-22 00:22:58','2013-02-22 00:25:45','small2','small2',NULL,0,NULL,'cs-os-hv8',5,NULL,'fba0bb74-3344-4f75-b10b-353ed39a288b',NULL,'/dev/vda',NULL,NULL,'',NULL,'/dev/vdb',NULL,0,NULL,1,0,10,20,NULL),('2013-02-22 00:23:11','2013-02-22 00:23:11','2013-02-22 00:23:42',1,103,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',0,'error',2048,1,'small3',NULL,'','r-z7cppqx0',NULL,NULL,NULL,'small3','small3',NULL,0,NULL,NULL,5,NULL,'cce08d10-d138-4233-9d86-ecb3d7174b17',NULL,NULL,NULL,NULL,'','scheduling',NULL,NULL,0,NULL,1,0,10,20,NULL),('2013-02-22 00:23:19','2013-02-22 00:23:19','2013-02-22 00:23:37',1,104,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',0,'error',2048,1,'small3',NULL,'','r-ewu5krsa',NULL,NULL,NULL,'small3','small3',NULL,0,NULL,NULL,5,NULL,'198ba710-67e2-484d-96d5-d2d316db8e3d',NULL,NULL,NULL,NULL,'','scheduling',NULL,NULL,0,NULL,1,0,10,20,NULL),('2013-02-22 00:23:48','2013-02-22 00:23:49','2013-02-22 00:25:23',1,105,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',0,'error',2048,1,'small3',NULL,'','r-y0n50jsk',NULL,NULL,NULL,'small3','small3',NULL,0,NULL,NULL,5,NULL,'79399077-f4ca-4ff6-9091-903b8b97a823',NULL,NULL,NULL,NULL,'','scheduling',NULL,NULL,0,NULL,1,0,10,20,NULL),('2013-02-22 00:25:33','2013-02-22 00:25:34','2013-02-22 00:25:38',1,106,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',0,'error',2048,1,'small3',NULL,'','r-lqddcqhe',NULL,NULL,NULL,'small3','small3',NULL,0,NULL,NULL,5,NULL,'193d963f-0620-4464-8e6d-05bcd55ae8aa',NULL,NULL,NULL,NULL,'','scheduling',NULL,NULL,0,NULL,1,0,10,20,NULL),('2013-02-22 00:25:52','2013-03-01 00:24:44','2013-03-01 00:24:44',1,107,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',5,'deleted',2048,1,'small1','cs-os-hv8','','r-13149u8u','2013-02-22 00:25:52','2013-02-22 00:25:57','2013-03-01 00:24:44','small1','small1',NULL,0,NULL,'cs-os-hv8',5,NULL,'d7679130-c1f5-4907-917b-af7363c31489',NULL,'/dev/vda',NULL,NULL,'',NULL,'/dev/vdb',NULL,0,NULL,1,0,10,20,NULL),('2013-02-22 00:26:12','2013-03-01 00:24:43','2013-03-01 00:24:43',1,108,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',5,'deleted',2048,1,'small2','cs-os-hv8','','r-d1bekepf','2013-02-22 00:26:12','2013-02-22 00:26:19','2013-03-01 00:24:43','small2','small2',NULL,0,NULL,'cs-os-hv8',5,NULL,'210022f6-e710-4ed4-85a4-31c5a9da24a2',NULL,'/dev/vda',NULL,NULL,'',NULL,'/dev/vdb',NULL,0,NULL,1,0,10,20,NULL),('2013-02-22 00:26:31','2013-02-22 00:26:32','2013-02-22 00:26:42',1,109,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',0,'error',2048,1,'small3',NULL,'','r-rqft3ti4',NULL,NULL,NULL,'small3','small3',NULL,0,NULL,NULL,5,NULL,'c53b0875-8422-4deb-a6b6-4097445a4e89',NULL,NULL,NULL,NULL,'','scheduling',NULL,NULL,0,NULL,1,0,10,20,NULL),('2013-02-22 00:26:49','2013-02-22 00:26:49','2013-02-22 00:26:56',1,110,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',0,'error',2048,1,'small4',NULL,'','r-jll74nnt',NULL,NULL,NULL,'small4','small4',NULL,0,NULL,NULL,5,NULL,'e51c3569-f862-40e4-bf02-857d5f7e1525',NULL,NULL,NULL,NULL,'','scheduling',NULL,NULL,0,NULL,1,0,10,20,NULL),('2013-02-22 00:27:38','2013-02-22 00:27:38','2013-02-22 00:27:50',1,111,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',0,'error',2048,1,'small3',NULL,'','r-m9m0kg3q',NULL,NULL,NULL,'small3','small3',NULL,0,NULL,NULL,5,NULL,'74448868-275d-43f3-96ec-55cff40da895',NULL,NULL,NULL,NULL,'','scheduling',NULL,NULL,0,NULL,1,0,10,20,NULL),('2013-02-25 01:37:30','2013-02-25 01:37:30','2013-03-01 00:24:42',1,112,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',0,'error',2048,1,'test1',NULL,'','r-woaoskrt',NULL,NULL,NULL,'test1','test1',NULL,0,NULL,NULL,5,NULL,'a5dddef5-fcfd-4e19-83e1-8c7b2618f77e',NULL,NULL,NULL,NULL,'','scheduling',NULL,NULL,0,NULL,1,0,10,20,NULL),('2013-03-01 00:25:12','2013-03-01 01:12:39','2013-03-01 01:12:39',1,113,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'web8-1','cs-os-hv8','','r-znzhjx1k','2013-03-01 00:25:12','2013-03-01 00:25:20','2013-03-01 01:12:39','web8-1','web8-1',NULL,0,NULL,'cs-os-hv8',2,NULL,'f0aa3590-1cbf-483c-8712-d5f4068614a9',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-03-01 00:25:14','2013-03-01 01:12:38','2013-03-01 01:12:38',1,114,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'web8-2','cs-os-hv8','','r-0yyehdl7','2013-03-01 00:25:14','2013-03-01 00:25:22','2013-03-01 01:12:38','web8-2','web8-2',NULL,0,NULL,'cs-os-hv8',2,NULL,'b3c153f2-13e0-4e31-8cff-56e0c5e9792e',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-03-01 00:25:15','2013-03-01 01:12:36','2013-03-01 01:12:36',1,115,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'web8-3','cs-os-hv8','','r-jf1e3i51','2013-03-01 00:25:16','2013-03-01 00:25:26','2013-03-01 01:12:36','web8-3','web8-3',NULL,0,NULL,'cs-os-hv8',2,NULL,'af776f80-ae5e-4617-81eb-af54b8e9641e',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-03-01 01:13:51','2013-03-07 23:07:18','2013-03-07 23:07:18',1,116,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'web8-1','cs-os-hv8','','r-ywu4rxj3','2013-03-01 01:13:51','2013-03-01 01:13:57','2013-03-07 23:07:18','web8-1','web8-1',NULL,0,NULL,'cs-os-hv8',2,NULL,'fdd45f35-20cf-4a8d-9ec1-38cefbd563ae',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-03-07 22:45:48','2013-03-07 22:51:35','2013-03-07 22:51:35',1,117,NULL,'openstack','cookbook','36a64868-d6a5-429c-89d3-2ffeabc35c9f','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'web8-2','cs-os-hv8','','r-kabiwzn7','2013-03-07 22:45:48','2013-03-07 22:46:35','2013-03-07 22:51:35','web8-2','web8-2',NULL,0,NULL,'cs-os-hv8',2,NULL,'82874b2d-96b2-4412-9e97-5bc5ae4426d0',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-03-07 22:53:40','2013-03-14 23:25:41','2013-03-14 23:25:41',1,118,NULL,'openstack','cookbook','36a64868-d6a5-429c-89d3-2ffeabc35c9f','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'web8-2','cs-os-hv8','','r-4wakr9jw','2013-03-07 22:53:41','2013-03-07 22:53:48','2013-03-14 23:25:41','web8-2','web8-2',NULL,0,NULL,'cs-os-hv8',2,NULL,'5ac049fb-a905-435c-b105-685405cdf69e',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-03-07 23:11:38','2013-04-11 23:53:47',NULL,0,119,NULL,'openstack','cookbook','36a64868-d6a5-429c-89d3-2ffeabc35c9f','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'active',512,1,'web8-1','cs-os-hv8','','r-2eof11g9','2013-03-07 23:11:38','2013-03-07 23:11:46',NULL,'web8-1','web8-1',NULL,0,NULL,'cs-os-hv8',2,NULL,'3101e6b0-1397-4796-9120-9c9a6fcc1671',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-03-07 23:11:40','2013-03-14 23:25:43','2013-03-14 23:25:43',1,120,NULL,'openstack','cookbook','36a64868-d6a5-429c-89d3-2ffeabc35c9f','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'web8-3','cs-os-hv8','','r-gjbvzu07','2013-03-07 23:11:40','2013-03-07 23:11:48','2013-03-14 23:25:43','web8-3','web8-3',NULL,0,NULL,'cs-os-hv8',2,NULL,'5bdc6532-aa46-44fa-b8e5-8a9f6367c744',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-03-14 23:26:24','2013-03-28 23:22:42','2013-03-28 23:22:42',1,121,NULL,'openstack','cookbook','7930cceb-6242-4136-aa77-29349de4d444','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'web8-2','cs-os-hv8','','r-d7fxp0in','2013-03-14 23:26:25','2013-03-14 23:27:27','2013-03-28 23:22:41','web8-2','web8-2',NULL,0,NULL,'cs-os-hv8',2,NULL,'6da5ae98-a25e-4abf-9209-cc6248a274a1',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-03-14 23:26:39','2013-03-28 23:22:43','2013-03-28 23:22:43',1,122,NULL,'openstack','cookbook','7930cceb-6242-4136-aa77-29349de4d444','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'web8-3','cs-os-hv8','','r-cc3qhzxy','2013-03-14 23:26:40','2013-03-14 23:27:29','2013-03-28 23:22:43','web8-3','web8-3',NULL,0,NULL,'cs-os-hv8',2,NULL,'621c85ba-c21e-4289-b9d1-72800902cf85',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-03-28 23:23:09','2013-04-11 23:54:02','2013-04-11 23:54:02',1,123,NULL,'openstack','cookbook','568c06ad-6935-44c6-bfc5-9b130a0f2c9d','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'web8-2','cs-os-hv8','','r-w6cx6z63','2013-03-28 23:23:10','2013-03-28 23:24:37','2013-04-11 23:54:02','web8-2','web8-2',NULL,0,NULL,'cs-os-hv8',2,NULL,'a64c1dad-e1c7-4042-a70a-bb83b223afe6',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-03-28 23:23:12','2013-04-11 23:54:04','2013-04-11 23:54:04',1,124,NULL,'openstack','cookbook','568c06ad-6935-44c6-bfc5-9b130a0f2c9d','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'web8-3','cs-os-hv8','','r-qixfevwg','2013-03-28 23:23:12','2013-03-28 23:24:37','2013-04-11 23:54:04','web8-3','web8-3',NULL,0,NULL,'cs-os-hv8',2,NULL,'c1a4402e-68ff-4a89-bd8b-90fcdc1e1e9c',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-04-04 23:36:38','2013-04-18 20:55:51',NULL,0,125,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'active',512,1,'pg','cs-os-hv8','','r-t5b70k5r','2013-04-04 23:36:38','2013-04-04 23:36:44',NULL,'db','pg',NULL,0,NULL,'cs-os-hv8',2,NULL,'52f2ecc9-1945-415b-a0fe-b05c7b0276c5',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-04-11 23:22:19','2013-04-11 23:22:19','2013-04-11 23:24:49',1,126,NULL,'openstack','cookbook','79ec5e9b-0943-491b-956f-aad3e4a3cc0c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',0,'building',512,1,'db-mysql',NULL,'','r-fo4veztd',NULL,NULL,NULL,'db-mysql','db-mysql',NULL,0,NULL,NULL,2,NULL,'c0993ede-49cd-4923-b6a0-faa18d5c71b4',NULL,NULL,NULL,NULL,'','scheduling',NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-04-11 23:54:22','2013-04-11 23:54:22','2013-04-12 00:02:53',1,127,NULL,'openstack','cookbook','af56052f-8205-4c77-b1ac-4ec97e303d2c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',0,'building',512,1,'web8-2',NULL,'','r-vuscp6cs',NULL,NULL,NULL,'web8-2','web8-2',NULL,0,NULL,NULL,2,NULL,'81fbd467-8d8d-4b8e-bd7c-adaf04b84ae3',NULL,NULL,NULL,NULL,'','scheduling',NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-04-11 23:54:24','2013-04-11 23:54:24','2013-04-12 00:02:57',1,128,NULL,'openstack','cookbook','af56052f-8205-4c77-b1ac-4ec97e303d2c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',0,'building',512,1,'web8-3',NULL,'','r-uweecq68',NULL,NULL,NULL,'web8-3','web8-3',NULL,0,NULL,NULL,2,NULL,'58c25fbf-0e90-4d79-8171-88cee341c5a2',NULL,NULL,NULL,NULL,'','scheduling',NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-04-12 00:03:03','2013-04-12 00:04:18',NULL,0,129,NULL,'openstack','cookbook','af56052f-8205-4c77-b1ac-4ec97e303d2c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'active',512,1,'web8-2','cs-os-hv8','','r-cbttmder','2013-04-12 00:03:03','2013-04-12 00:04:18',NULL,'web8-2','web8-2',NULL,0,NULL,'cs-os-hv8',2,NULL,'190763a7-80bd-4f6e-9214-a7957253f225',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-04-12 00:03:17','2013-04-12 00:04:18',NULL,0,130,NULL,'openstack','cookbook','af56052f-8205-4c77-b1ac-4ec97e303d2c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'active',512,1,'web8-3','cs-os-hv8','','r-l6zes5fy','2013-04-12 00:03:17','2013-04-12 00:04:18',NULL,'web8-3','web8-3',NULL,0,NULL,'cs-os-hv8',2,NULL,'e0dc499b-ecd8-46ac-9d5f-ab03b9a3bff8',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL),('2013-04-15 15:05:02','2013-04-15 15:07:31','2013-04-15 15:07:31',1,131,NULL,'openstack','cookbook','af56052f-8205-4c77-b1ac-4ec97e303d2c','48c4e646-8571-4171-bcb7-0de8cb83f91f','',NULL,0,'openstack','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n',1,'deleted',512,1,'web8-4','cs-os-hv8','','r-wd9nej55','2013-04-15 15:05:03','2013-04-15 15:05:28','2013-04-15 15:07:31','web8-4','web8-4',NULL,0,NULL,'cs-os-hv8',2,NULL,'eb54f5f5-0b17-4000-a941-363987802c70',NULL,'/dev/vda',NULL,NULL,'',NULL,NULL,NULL,0,NULL,1,0,0,0,NULL);
/*!40000 ALTER TABLE `instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iscsi_targets`
--

DROP TABLE IF EXISTS `iscsi_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iscsi_targets` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target_num` int(11) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `volume_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `volume_id` (`volume_id`),
  CONSTRAINT `iscsi_targets_ibfk_1` FOREIGN KEY (`volume_id`) REFERENCES `volumes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iscsi_targets`
--

LOCK TABLES `iscsi_targets` WRITE;
/*!40000 ALTER TABLE `iscsi_targets` DISABLE KEYS */;
/*!40000 ALTER TABLE `iscsi_targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `key_pairs`
--

DROP TABLE IF EXISTS `key_pairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `key_pairs` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `fingerprint` varchar(255) DEFAULT NULL,
  `public_key` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `key_pairs`
--

LOCK TABLES `key_pairs` WRITE;
/*!40000 ALTER TABLE `key_pairs` DISABLE KEYS */;
INSERT INTO `key_pairs` VALUES ('2013-02-08 00:05:46','2013-02-08 00:29:42','2013-02-08 00:29:42',1,1,'openstack','openstack','cd:1b:d3:e8:fa:e0:72:cc:74:e3:94:ce:c3:2a:f9:26','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDczDvCcJOJuNC5XL4JEX+n0f3F1WIBx0i1p7YEg3RwT/zCA8rUb0qvhfie4cFxgoxkeAc/UvgnGeKkv8qGJiJz0m0prEy8NWzYBc4v0MR8yETYyR3P53eHyIyOMqXslGI02GbAIM6B74KfkwB3A0b6Rn+d4x9WH4c9QO7Y9Kvp7w== nova@cs-os-hv8\n'),('2013-02-08 00:29:49',NULL,NULL,0,2,'openstack','openstack','de:9e:91:e1:53:22:7d:fa:6e:58:69:b9:7d:a5:3d:bd','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDj0cYJi3q43MOUOfXLrBpbgcnCpGUiysD6yyB90Cl/gl+utADkiwQKnupkQukHD78PPh0Bk6YiVu8EwfRw7POh5lPQHRCIXSE0vuk+q3LHw16PHTTdMjItO1mvAPI0jVxtvW+poQQ4pkwZg3Y9MNpKcMtnZ2zMM9CX/gWVXKMOow== nova@cs-os-hv8\n'),('2013-02-15 00:36:23',NULL,NULL,0,3,'myKey','openstack','97:c0:fc:69:3c:c9:38:85:81:08:0f:e2:de:8e:9d:36','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDN+j1J3wxlKjP3culoMqxyKKc3Art6FB844jNV2tJ/yPUZm8Q+Aqf9dntJjLUsIOyoDLXv/WF+CLlVC28MXpuECtFtUWkR1DzdQ605u0n5RVu5YjE0fH2v6BGw5MlrB4xzJmZBvqHIZ8EYpZoRFVD8li+GQovDSOvSoKlbTzTOVQ== nova@cs-os-hv8\n'),('2013-03-14 23:57:11',NULL,NULL,0,4,'jordan','openstack','17:af:03:8e:c3:9e:f5:75:41:df:88:a8:2c:9c:44:96','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDT2UlrgsO9IDEGdaUbDO6Q5Q4sq6x5CMsCSBaKqfBOxzoaHvPcHP6e9goysViRM4K6BrOAMxH3DM25447bGjsnA0Ioay7qNy/snhWTedjitYnwQ8ivqChwIT4B8CkjweSkseZGocZDQ6HeTdOGXHJqgGX86Fl0Il0bftDgXOcYoQ== nova@cs-os-hv8\n');
/*!40000 ALTER TABLE `key_pairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrate_version`
--

DROP TABLE IF EXISTS `migrate_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrate_version` (
  `repository_id` varchar(250) NOT NULL,
  `repository_path` mediumtext,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`repository_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrate_version`
--

LOCK TABLES `migrate_version` WRITE;
/*!40000 ALTER TABLE `migrate_version` DISABLE KEYS */;
INSERT INTO `migrate_version` VALUES ('nova','/usr/lib/python2.7/dist-packages/nova/db/sqlalchemy/migrate_repo',82);
/*!40000 ALTER TABLE `migrate_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_compute` varchar(255) DEFAULT NULL,
  `dest_compute` varchar(255) DEFAULT NULL,
  `dest_host` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `instance_uuid` varchar(255) DEFAULT NULL,
  `old_instance_type_id` int(11) DEFAULT NULL,
  `new_instance_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networks`
--

DROP TABLE IF EXISTS `networks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `networks` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `injected` tinyint(1) DEFAULT NULL,
  `cidr` varchar(255) DEFAULT NULL,
  `netmask` varchar(255) DEFAULT NULL,
  `bridge` varchar(255) DEFAULT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `broadcast` varchar(255) DEFAULT NULL,
  `dns1` varchar(255) DEFAULT NULL,
  `vlan` int(11) DEFAULT NULL,
  `vpn_public_address` varchar(255) DEFAULT NULL,
  `vpn_public_port` int(11) DEFAULT NULL,
  `vpn_private_address` varchar(255) DEFAULT NULL,
  `dhcp_start` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `cidr_v6` varchar(255) DEFAULT NULL,
  `gateway_v6` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `netmask_v6` varchar(255) DEFAULT NULL,
  `bridge_interface` varchar(255) DEFAULT NULL,
  `multi_host` tinyint(1) DEFAULT NULL,
  `dns2` varchar(255) DEFAULT NULL,
  `uuid` varchar(36) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `rxtx_base` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networks`
--

LOCK TABLES `networks` WRITE;
/*!40000 ALTER TABLE `networks` DISABLE KEYS */;
INSERT INTO `networks` VALUES ('2013-02-01 01:04:11','2013-02-08 00:16:35',NULL,0,1,0,'10.0.0.0/26','255.255.255.192','br100','10.0.0.1','10.0.0.63',NULL,100,'134.197.43.22',1000,'10.0.0.2','10.0.0.3','cookbook','cs-os-hv8',NULL,NULL,'vmnet',NULL,'eth2',0,NULL,'e9b3bb73-0f42-4fa6-bedf-35c7c3a201a3',NULL,NULL);
/*!40000 ALTER TABLE `networks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `project_manager` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_manager` (`project_manager`),
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`project_manager`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES ('2013-02-07 23:59:55',NULL,NULL,0,'cookbook','cookbook','cookbook','openstack');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider_fw_rules`
--

DROP TABLE IF EXISTS `provider_fw_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provider_fw_rules` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `protocol` varchar(5) DEFAULT NULL,
  `from_port` int(11) DEFAULT NULL,
  `to_port` int(11) DEFAULT NULL,
  `cidr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider_fw_rules`
--

LOCK TABLES `provider_fw_rules` WRITE;
/*!40000 ALTER TABLE `provider_fw_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `provider_fw_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotas`
--

DROP TABLE IF EXISTS `quotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `resource` varchar(255) NOT NULL,
  `hard_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotas`
--

LOCK TABLES `quotas` WRITE;
/*!40000 ALTER TABLE `quotas` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s3_images`
--

DROP TABLE IF EXISTS `s3_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s3_images` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s3_images`
--

LOCK TABLES `s3_images` WRITE;
/*!40000 ALTER TABLE `s3_images` DISABLE KEYS */;
INSERT INTO `s3_images` VALUES ('2013-02-08 00:11:06',NULL,NULL,0,1,'48c4e646-8571-4171-bcb7-0de8cb83f91f'),('2013-02-08 00:11:40',NULL,NULL,0,2,'79ec5e9b-0943-491b-956f-aad3e4a3cc0c'),('2013-03-07 22:47:19',NULL,NULL,0,3,'36a64868-d6a5-429c-89d3-2ffeabc35c9f'),('2013-03-14 23:28:13',NULL,NULL,0,4,'7930cceb-6242-4136-aa77-29349de4d444'),('2013-03-28 23:25:24',NULL,NULL,0,5,'568c06ad-6935-44c6-bfc5-9b130a0f2c9d'),('2013-04-12 00:05:03',NULL,NULL,0,6,'af56052f-8205-4c77-b1ac-4ec97e303d2c');
/*!40000 ALTER TABLE `s3_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_group_instance_association`
--

DROP TABLE IF EXISTS `security_group_instance_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_group_instance_association` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `security_group_id` int(11) DEFAULT NULL,
  `instance_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `security_group_id` (`security_group_id`),
  KEY `instance_id` (`instance_id`),
  CONSTRAINT `security_group_instance_association_ibfk_1` FOREIGN KEY (`security_group_id`) REFERENCES `security_groups` (`id`),
  CONSTRAINT `security_group_instance_association_ibfk_2` FOREIGN KEY (`instance_id`) REFERENCES `instances` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_group_instance_association`
--

LOCK TABLES `security_group_instance_association` WRITE;
/*!40000 ALTER TABLE `security_group_instance_association` DISABLE KEYS */;
INSERT INTO `security_group_instance_association` VALUES ('2013-02-08 00:16:34',NULL,'2013-02-08 00:32:47',1,1,1,1),('2013-02-08 00:32:53',NULL,'2013-02-08 01:04:10',1,2,1,2),('2013-02-08 01:09:20',NULL,'2013-02-13 17:23:41',1,3,1,3),('2013-02-08 01:09:42',NULL,'2013-02-08 01:10:16',1,4,1,4),('2013-02-08 01:10:02',NULL,'2013-02-13 17:23:43',1,5,1,5),('2013-02-08 01:10:29',NULL,'2013-02-13 17:23:44',1,6,1,6),('2013-02-08 01:10:46',NULL,'2013-02-13 17:23:46',1,7,1,7),('2013-02-08 01:10:57',NULL,'2013-02-08 01:12:03',1,8,1,8),('2013-02-08 01:11:04',NULL,'2013-02-08 01:11:57',1,9,1,9),('2013-02-08 01:11:23',NULL,'2013-02-08 01:11:51',1,10,1,10),('2013-02-08 01:11:29',NULL,'2013-02-13 17:23:52',1,11,1,11),('2013-02-08 01:12:26',NULL,'2013-02-13 17:23:51',1,12,1,12),('2013-02-08 01:12:56',NULL,'2013-02-13 17:23:51',1,13,1,13),('2013-02-08 01:13:41',NULL,'2013-02-13 17:23:52',1,14,1,14),('2013-02-08 01:17:25',NULL,'2013-02-13 17:23:52',1,15,1,15),('2013-02-08 01:17:41',NULL,'2013-02-12 02:46:30',1,16,1,16),('2013-02-12 02:46:44',NULL,'2013-02-12 02:47:44',1,17,1,17),('2013-02-12 02:48:08',NULL,'2013-02-12 02:48:51',1,18,1,18),('2013-02-13 17:24:52',NULL,'2013-02-13 17:27:34',1,19,1,19),('2013-02-13 17:27:43',NULL,'2013-02-13 17:33:41',1,20,1,20),('2013-02-13 17:35:20',NULL,'2013-02-13 18:01:51',1,21,1,21),('2013-02-13 17:35:22',NULL,'2013-02-13 18:01:47',1,22,1,22),('2013-02-13 17:35:23',NULL,'2013-02-13 18:01:57',1,23,1,23),('2013-02-13 17:35:25',NULL,'2013-02-13 18:01:59',1,24,1,24),('2013-02-13 17:35:28',NULL,'2013-02-13 18:01:58',1,25,1,25),('2013-02-13 17:35:29',NULL,'2013-02-13 18:01:57',1,26,1,26),('2013-02-13 17:35:30',NULL,'2013-02-13 18:01:58',1,27,1,27),('2013-02-13 17:35:31',NULL,'2013-02-13 18:01:59',1,28,1,28),('2013-02-13 17:35:34',NULL,'2013-02-13 18:01:59',1,29,1,29),('2013-02-13 17:35:35',NULL,'2013-02-13 18:01:58',1,30,1,30),('2013-02-14 23:54:10',NULL,'2013-02-15 00:04:48',1,31,1,31),('2013-02-14 23:55:18',NULL,'2013-02-15 00:04:54',1,32,1,32),('2013-02-14 23:55:19',NULL,'2013-02-15 00:04:48',1,33,1,33),('2013-02-14 23:55:19',NULL,'2013-02-15 00:04:55',1,34,1,34),('2013-02-14 23:55:20',NULL,'2013-02-15 00:04:55',1,35,1,35),('2013-02-14 23:55:21',NULL,'2013-02-15 00:04:44',1,36,1,36),('2013-02-14 23:55:22',NULL,'2013-02-15 00:04:44',1,37,1,37),('2013-02-14 23:55:23',NULL,'2013-02-15 00:04:54',1,38,1,38),('2013-02-14 23:55:24',NULL,'2013-02-15 00:03:23',1,39,1,39),('2013-02-14 23:55:25',NULL,'2013-02-15 00:01:13',1,40,1,40),('2013-02-15 00:23:20',NULL,'2013-02-15 00:42:33',1,41,1,41),('2013-02-15 00:23:21',NULL,'2013-02-15 00:42:36',1,42,1,42),('2013-02-15 00:23:22',NULL,'2013-02-15 00:42:42',1,43,1,43),('2013-02-15 00:23:22',NULL,'2013-02-15 00:42:44',1,44,1,44),('2013-02-15 00:23:23',NULL,'2013-02-15 00:42:37',1,45,1,45),('2013-02-15 00:23:24',NULL,'2013-02-15 00:42:43',1,46,1,46),('2013-02-15 00:23:25',NULL,'2013-02-15 00:42:45',1,47,1,47),('2013-02-15 00:23:26',NULL,'2013-02-15 00:42:43',1,48,1,48),('2013-02-15 00:23:27',NULL,'2013-02-15 00:42:44',1,49,1,49),('2013-02-15 00:23:28',NULL,'2013-02-15 00:24:34',1,50,1,50),('2013-02-15 00:25:57',NULL,'2013-02-15 00:29:08',1,51,1,51),('2013-02-15 00:25:57',NULL,'2013-02-15 00:29:10',1,52,2,51),('2013-02-15 00:40:30',NULL,'2013-02-15 01:30:14',1,53,1,52),('2013-02-15 00:50:44',NULL,'2013-02-15 01:30:15',1,54,1,53),('2013-02-15 00:59:23',NULL,'2013-02-15 01:21:49',1,55,1,54),('2013-02-15 01:22:01',NULL,'2013-02-15 01:29:21',1,56,1,55),('2013-02-15 02:59:50',NULL,'2013-02-15 03:06:07',1,57,1,56),('2013-02-15 02:59:50',NULL,'2013-02-15 03:06:10',1,58,1,57),('2013-02-15 02:59:51',NULL,'2013-02-15 03:06:00',1,59,1,58),('2013-02-15 02:59:52',NULL,'2013-02-15 03:06:09',1,60,1,59),('2013-02-15 02:59:53',NULL,'2013-02-15 03:06:07',1,61,1,60),('2013-02-15 02:59:54',NULL,'2013-02-15 03:06:08',1,62,1,61),('2013-02-15 02:59:54',NULL,'2013-02-15 03:06:09',1,63,1,62),('2013-02-15 02:59:55',NULL,'2013-02-15 03:06:10',1,64,1,63),('2013-02-15 02:59:57',NULL,'2013-02-15 03:06:08',1,65,1,64),('2013-02-15 02:59:58',NULL,'2013-02-15 03:05:59',1,66,1,65),('2013-02-15 03:06:21',NULL,'2013-02-15 03:10:17',1,67,1,66),('2013-02-15 03:06:22',NULL,'2013-02-15 03:10:18',1,68,1,67),('2013-02-15 03:06:22',NULL,'2013-02-15 03:10:20',1,69,1,68),('2013-02-15 03:06:23',NULL,'2013-02-15 03:10:32',1,70,1,69),('2013-02-15 03:06:24',NULL,'2013-02-15 03:10:28',1,71,1,70),('2013-02-15 03:06:25',NULL,'2013-02-15 03:10:31',1,72,1,71),('2013-02-15 03:06:26',NULL,'2013-02-15 03:10:31',1,73,1,72),('2013-02-15 03:06:27',NULL,'2013-02-15 03:10:28',1,74,1,73),('2013-02-15 03:06:28',NULL,'2013-02-15 03:10:32',1,75,1,74),('2013-02-15 03:06:30',NULL,'2013-02-15 03:10:22',1,76,1,75),('2013-02-15 03:10:42',NULL,'2013-02-15 03:16:20',1,77,1,76),('2013-02-15 03:10:53',NULL,'2013-02-15 03:16:19',1,78,1,77),('2013-02-15 03:11:03',NULL,'2013-02-15 03:16:19',1,79,1,78),('2013-02-15 03:11:14',NULL,'2013-02-15 03:16:09',1,80,1,79),('2013-02-15 03:11:26',NULL,'2013-02-15 03:16:17',1,81,1,80),('2013-02-15 03:11:36',NULL,'2013-02-15 03:16:18',1,82,1,81),('2013-02-15 03:11:48',NULL,'2013-02-15 03:16:18',1,83,1,82),('2013-02-15 03:11:59',NULL,'2013-02-15 03:16:19',1,84,1,83),('2013-02-15 03:12:10',NULL,'2013-02-15 03:16:18',1,85,1,84),('2013-02-15 03:12:21',NULL,'2013-02-15 03:16:05',1,86,1,85),('2013-02-15 03:18:07',NULL,'2013-02-15 03:40:39',1,87,1,86),('2013-02-15 03:20:26',NULL,'2013-02-15 03:40:36',1,88,1,87),('2013-02-15 03:20:27',NULL,'2013-02-15 03:40:36',1,89,1,88),('2013-02-15 03:20:27',NULL,'2013-02-15 03:40:38',1,90,1,89),('2013-02-15 03:20:28',NULL,'2013-02-15 03:40:39',1,91,1,90),('2013-02-15 03:20:29',NULL,'2013-02-15 03:40:38',1,92,1,91),('2013-02-15 03:20:30',NULL,'2013-02-15 03:40:40',1,93,1,92),('2013-02-15 03:20:31',NULL,'2013-02-15 03:40:37',1,94,1,93),('2013-02-15 03:20:32',NULL,'2013-02-15 03:40:37',1,95,1,94),('2013-02-15 03:20:33',NULL,'2013-02-15 03:40:39',1,96,1,95),('2013-02-15 03:40:49',NULL,'2013-02-15 03:43:15',1,97,1,96),('2013-02-15 03:44:20',NULL,'2013-02-15 03:46:19',1,98,1,97),('2013-02-15 03:54:38',NULL,'2013-02-15 03:56:45',1,99,1,98),('2013-02-15 03:57:23',NULL,'2013-02-21 23:50:04',1,100,1,99),('2013-02-22 00:01:25',NULL,'2013-02-22 00:09:36',1,101,1,100),('2013-02-22 00:22:36',NULL,'2013-02-22 00:25:47',1,102,1,101),('2013-02-22 00:22:51',NULL,'2013-02-22 00:25:45',1,103,1,102),('2013-02-22 00:23:11',NULL,'2013-02-22 00:23:42',1,104,1,103),('2013-02-22 00:23:19',NULL,'2013-02-22 00:23:37',1,105,1,104),('2013-02-22 00:23:49',NULL,'2013-02-22 00:25:23',1,106,1,105),('2013-02-22 00:25:33',NULL,'2013-02-22 00:25:38',1,107,1,106),('2013-02-22 00:25:52',NULL,'2013-03-01 00:24:44',1,108,1,107),('2013-02-22 00:26:12',NULL,'2013-03-01 00:24:43',1,109,1,108),('2013-02-22 00:26:31',NULL,'2013-02-22 00:26:42',1,110,1,109),('2013-02-22 00:26:49',NULL,'2013-02-22 00:26:56',1,111,1,110),('2013-02-22 00:27:38',NULL,'2013-02-22 00:27:50',1,112,1,111),('2013-02-25 01:37:30',NULL,'2013-03-01 00:24:42',1,113,1,112),('2013-03-01 00:25:12',NULL,'2013-03-01 01:12:39',1,114,1,113),('2013-03-01 00:25:14',NULL,'2013-03-01 01:12:38',1,115,1,114),('2013-03-01 00:25:16',NULL,'2013-03-01 01:12:36',1,116,1,115),('2013-03-01 01:13:51',NULL,'2013-03-07 23:07:18',1,117,1,116),('2013-03-07 22:45:48',NULL,'2013-03-07 22:51:35',1,118,1,117),('2013-03-07 22:53:40',NULL,'2013-03-14 23:25:41',1,119,1,118),('2013-03-07 23:11:38',NULL,NULL,0,120,1,119),('2013-03-07 23:11:40',NULL,'2013-03-14 23:25:43',1,121,1,120),('2013-03-14 23:26:24',NULL,'2013-03-28 23:22:42',1,122,1,121),('2013-03-14 23:26:39',NULL,'2013-03-28 23:22:43',1,123,1,122),('2013-03-28 23:23:10',NULL,'2013-04-11 23:54:02',1,124,1,123),('2013-03-28 23:23:12',NULL,'2013-04-11 23:54:04',1,125,1,124),('2013-04-04 23:36:38',NULL,NULL,0,126,1,125),('2013-04-11 23:22:19',NULL,'2013-04-11 23:24:49',1,127,1,126),('2013-04-11 23:54:22',NULL,'2013-04-12 00:02:53',1,128,1,127),('2013-04-11 23:54:24',NULL,'2013-04-12 00:02:57',1,129,1,128),('2013-04-12 00:03:03',NULL,NULL,0,130,1,129),('2013-04-12 00:03:17',NULL,NULL,0,131,1,130),('2013-04-15 15:05:03',NULL,'2013-04-15 15:07:31',1,132,1,131);
/*!40000 ALTER TABLE `security_group_instance_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_group_rules`
--

DROP TABLE IF EXISTS `security_group_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_group_rules` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_group_id` int(11) DEFAULT NULL,
  `protocol` varchar(255) DEFAULT NULL,
  `from_port` int(11) DEFAULT NULL,
  `to_port` int(11) DEFAULT NULL,
  `cidr` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_group_id` (`parent_group_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `security_group_rules_ibfk_1` FOREIGN KEY (`parent_group_id`) REFERENCES `security_groups` (`id`),
  CONSTRAINT `security_group_rules_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `security_groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_group_rules`
--

LOCK TABLES `security_group_rules` WRITE;
/*!40000 ALTER TABLE `security_group_rules` DISABLE KEYS */;
INSERT INTO `security_group_rules` VALUES ('2013-02-08 00:13:32',NULL,NULL,0,1,1,'tcp',22,22,'0.0.0.0/0',NULL),('2013-02-08 00:14:28',NULL,NULL,0,2,1,'icmp',-1,-1,'0.0.0.0/0',NULL),('2013-02-15 00:21:57','2013-02-15 00:28:45','2013-02-15 00:28:45',1,3,2,'tcp',80,80,'192.168.186.1/0',NULL),('2013-02-15 00:22:09','2013-02-15 00:28:01','2013-02-15 00:28:01',1,4,2,'tcp',443,443,'192.168.186.1/0',NULL),('2013-02-15 01:04:44','2013-02-15 01:06:39','2013-02-15 01:06:39',1,5,1,'tcp',22,22,'192.168.186.1/0',NULL);
/*!40000 ALTER TABLE `security_group_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_groups`
--

DROP TABLE IF EXISTS `security_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_groups` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_groups`
--

LOCK TABLES `security_groups` WRITE;
/*!40000 ALTER TABLE `security_groups` DISABLE KEYS */;
INSERT INTO `security_groups` VALUES ('2013-02-08 00:13:32',NULL,NULL,0,1,'default','default','openstack','cookbook'),('2013-02-15 00:19:17',NULL,'2013-02-15 00:29:10',1,2,'webserver','Web Server Access','openstack','cookbook'),('2013-02-15 00:34:27',NULL,'2013-02-15 00:36:01',1,3,'frontend_user','users','openstack','cookbook');
/*!40000 ALTER TABLE `security_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(255) DEFAULT NULL,
  `binary` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `report_count` int(11) NOT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `availability_zone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES ('2013-02-01 01:13:50','2013-04-20 10:05:44',NULL,0,1,'cs-os-hv8','nova-network','network',671655,0,'nova'),('2013-02-01 01:13:50','2013-04-20 10:05:41',NULL,0,2,'cs-os-hv8','nova-compute','compute',670547,0,'nova'),('2013-02-01 01:13:54','2013-04-11 22:49:25',NULL,0,3,'cs-os-hv8','nova-cert','cert',598965,0,'nova'),('2013-02-01 01:13:54','2013-04-20 10:05:44',NULL,0,4,'cs-os-hv8','nova-scheduler','scheduler',671172,0,'nova');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_backend_config`
--

DROP TABLE IF EXISTS `sm_backend_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_backend_config` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flavor_id` int(11) NOT NULL,
  `sr_uuid` varchar(255) DEFAULT NULL,
  `sr_type` varchar(255) DEFAULT NULL,
  `config_params` varchar(2047) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `flavor_id` (`flavor_id`),
  CONSTRAINT `sm_backend_config_ibfk_1` FOREIGN KEY (`flavor_id`) REFERENCES `sm_flavors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_backend_config`
--

LOCK TABLES `sm_backend_config` WRITE;
/*!40000 ALTER TABLE `sm_backend_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `sm_backend_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_flavors`
--

DROP TABLE IF EXISTS `sm_flavors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_flavors` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_flavors`
--

LOCK TABLES `sm_flavors` WRITE;
/*!40000 ALTER TABLE `sm_flavors` DISABLE KEYS */;
/*!40000 ALTER TABLE `sm_flavors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_volume`
--

DROP TABLE IF EXISTS `sm_volume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_volume` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `backend_id` int(11) NOT NULL,
  `vdi_uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `backend_id` (`backend_id`),
  CONSTRAINT `sm_volume_ibfk_1` FOREIGN KEY (`id`) REFERENCES `volumes` (`id`),
  CONSTRAINT `sm_volume_ibfk_2` FOREIGN KEY (`backend_id`) REFERENCES `sm_backend_config` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_volume`
--

LOCK TABLES `sm_volume` WRITE;
/*!40000 ALTER TABLE `sm_volume` DISABLE KEYS */;
/*!40000 ALTER TABLE `sm_volume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snapshots`
--

DROP TABLE IF EXISTS `snapshots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snapshots` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `volume_id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `progress` varchar(255) DEFAULT NULL,
  `volume_size` int(11) DEFAULT NULL,
  `scheduled_at` datetime DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `display_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snapshots`
--

LOCK TABLES `snapshots` WRITE;
/*!40000 ALTER TABLE `snapshots` DISABLE KEYS */;
/*!40000 ALTER TABLE `snapshots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_project_association`
--

DROP TABLE IF EXISTS `user_project_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_project_association` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL,
  `project_id` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`,`project_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `user_project_association_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_project_association_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_project_association`
--

LOCK TABLES `user_project_association` WRITE;
/*!40000 ALTER TABLE `user_project_association` DISABLE KEYS */;
INSERT INTO `user_project_association` VALUES ('2013-02-07 23:59:55',NULL,NULL,0,'openstack','cookbook');
/*!40000 ALTER TABLE `user_project_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_project_role_association`
--

DROP TABLE IF EXISTS `user_project_role_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_project_role_association` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL,
  `project_id` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`,`project_id`,`role`),
  CONSTRAINT `user_project_role_association_ibfk_1` FOREIGN KEY (`user_id`, `project_id`) REFERENCES `user_project_association` (`user_id`, `project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_project_role_association`
--

LOCK TABLES `user_project_role_association` WRITE;
/*!40000 ALTER TABLE `user_project_role_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_project_role_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role_association`
--

DROP TABLE IF EXISTS `user_role_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role_association` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`,`role`),
  CONSTRAINT `user_role_association_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role_association`
--

LOCK TABLES `user_role_association` WRITE;
/*!40000 ALTER TABLE `user_role_association` DISABLE KEYS */;
INSERT INTO `user_role_association` VALUES ('2013-02-07 23:59:19',NULL,NULL,0,'openstack','cloudadmin');
/*!40000 ALTER TABLE `user_role_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('2013-02-07 23:58:17',NULL,NULL,0,'openstack',NULL,'7fdd30e4-96e8-488d-9f8e-0aabbe3ff656','8604a4de-f234-4c83-a150-29db0f094b20',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtual_interfaces`
--

DROP TABLE IF EXISTS `virtual_interfaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virtual_interfaces` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `network_id` int(11) DEFAULT NULL,
  `instance_id` int(11) NOT NULL,
  `uuid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `address` (`address`),
  KEY `network_id` (`network_id`),
  KEY `instance_id` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtual_interfaces`
--

LOCK TABLES `virtual_interfaces` WRITE;
/*!40000 ALTER TABLE `virtual_interfaces` DISABLE KEYS */;
INSERT INTO `virtual_interfaces` VALUES ('2013-03-07 23:11:39',NULL,NULL,0,12,'fa:16:3e:43:60:a8',1,119,'f4f59b14-28d1-425a-9623-304d3f19a405'),('2013-04-04 23:36:38',NULL,NULL,0,18,'fa:16:3e:7c:5d:13',1,125,'8979b00f-e0a1-490d-aade-6d1e12cc9198'),('2013-04-12 00:03:03',NULL,NULL,0,19,'fa:16:3e:6e:40:ef',1,129,'b11b1696-6153-4094-990b-b5e7c6264f2c'),('2013-04-12 00:03:28',NULL,NULL,0,20,'fa:16:3e:14:0a:34',1,130,'dbd3d383-9d69-4cac-a41d-774409f818b2');
/*!40000 ALTER TABLE `virtual_interfaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtual_storage_arrays`
--

DROP TABLE IF EXISTS `virtual_storage_arrays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virtual_storage_arrays` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `display_name` varchar(255) DEFAULT NULL,
  `display_description` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `availability_zone` varchar(255) DEFAULT NULL,
  `instance_type_id` int(11) NOT NULL,
  `image_ref` varchar(255) DEFAULT NULL,
  `vc_count` int(11) NOT NULL,
  `vol_count` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtual_storage_arrays`
--

LOCK TABLES `virtual_storage_arrays` WRITE;
/*!40000 ALTER TABLE `virtual_storage_arrays` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtual_storage_arrays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volume_metadata`
--

DROP TABLE IF EXISTS `volume_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volume_metadata` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `volume_id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `volume_id` (`volume_id`),
  CONSTRAINT `volume_metadata_ibfk_1` FOREIGN KEY (`volume_id`) REFERENCES `volumes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volume_metadata`
--

LOCK TABLES `volume_metadata` WRITE;
/*!40000 ALTER TABLE `volume_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `volume_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volume_type_extra_specs`
--

DROP TABLE IF EXISTS `volume_type_extra_specs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volume_type_extra_specs` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `volume_type_id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `volume_type_id` (`volume_type_id`),
  CONSTRAINT `volume_type_extra_specs_ibfk_1` FOREIGN KEY (`volume_type_id`) REFERENCES `volume_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volume_type_extra_specs`
--

LOCK TABLES `volume_type_extra_specs` WRITE;
/*!40000 ALTER TABLE `volume_type_extra_specs` DISABLE KEYS */;
/*!40000 ALTER TABLE `volume_type_extra_specs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volume_types`
--

DROP TABLE IF EXISTS `volume_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volume_types` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volume_types`
--

LOCK TABLES `volume_types` WRITE;
/*!40000 ALTER TABLE `volume_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `volume_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volumes`
--

DROP TABLE IF EXISTS `volumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volumes` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ec2_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `availability_zone` varchar(255) DEFAULT NULL,
  `instance_id` int(11) DEFAULT NULL,
  `mountpoint` varchar(255) DEFAULT NULL,
  `attach_time` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `attach_status` varchar(255) DEFAULT NULL,
  `scheduled_at` datetime DEFAULT NULL,
  `launched_at` datetime DEFAULT NULL,
  `terminated_at` datetime DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `display_description` varchar(255) DEFAULT NULL,
  `provider_location` varchar(256) DEFAULT NULL,
  `provider_auth` varchar(256) DEFAULT NULL,
  `snapshot_id` int(11) DEFAULT NULL,
  `volume_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `instance_id` (`instance_id`),
  CONSTRAINT `volumes_ibfk_1` FOREIGN KEY (`instance_id`) REFERENCES `instances` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volumes`
--

LOCK TABLES `volumes` WRITE;
/*!40000 ALTER TABLE `volumes` DISABLE KEYS */;
/*!40000 ALTER TABLE `volumes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-20  3:05:45
