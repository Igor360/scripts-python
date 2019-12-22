-- MySQL dump 10.17  Distrib 10.3.17-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: localhost    Database: HN_database
-- ------------------------------------------------------
-- Server version	10.3.17-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `__EFMigrationsHistory`
--

DROP TABLE IF EXISTS `__EFMigrationsHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__EFMigrationsHistory`
--

LOCK TABLES `__EFMigrationsHistory` WRITE;
/*!40000 ALTER TABLE `__EFMigrationsHistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `__EFMigrationsHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_sensors`
--

DROP TABLE IF EXISTS `group_sensors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_sensors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `SensorId` int(11) NOT NULL,
  `GroupId` int(11) NOT NULL,
  `SensorsGroupsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_group_sensors_SensorId` (`SensorId`),
  KEY `IX_group_sensors_SensorsGroupsid` (`SensorsGroupsid`),
  CONSTRAINT `FK_group_sensors_sensor_data_SensorId` FOREIGN KEY (`SensorId`) REFERENCES `sensor_data` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_group_sensors_sensors_groups_SensorsGroupsid` FOREIGN KEY (`SensorsGroupsid`) REFERENCES `sensors_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_sensors`
--

LOCK TABLES `group_sensors` WRITE;
/*!40000 ALTER TABLE `group_sensors` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_sensors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_data`
--

DROP TABLE IF EXISTS `sensor_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` text DEFAULT NULL,
  `value` text DEFAULT NULL,
  `code` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=354 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_data`
--

LOCK TABLES `sensor_data` WRITE;
/*!40000 ALTER TABLE `sensor_data` DISABLE KEYS */;
INSERT INTO `sensor_data` VALUES (1,'2019-10-27 22:25:44',NULL,'temperature','22.6','w1-temp'),(2,'2019-10-27 22:30:40',NULL,'temperature','22.8','w1-temp'),(3,'2019-10-27 22:32:30',NULL,'temperature','22.9','w1-temp'),(4,'2019-10-27 22:33:03',NULL,'temperature','22.8','w1-temp'),(5,'2019-10-27 22:33:36',NULL,'temperature','22.9','w1-temp'),(6,'2019-10-27 22:34:09',NULL,'temperature','22.8','w1-temp'),(7,'2019-10-27 22:34:42',NULL,'temperature','22.8','w1-temp'),(8,'2019-10-27 22:35:16',NULL,'temperature','22.9','w1-temp'),(9,'2019-10-27 22:35:47',NULL,'temperature','0','w1-temp'),(10,'2019-10-27 22:36:19',NULL,'temperature','0','w1-temp'),(11,'2019-10-27 22:36:51',NULL,'temperature','0','w1-temp'),(12,'2019-10-27 22:42:40',NULL,'temperature','22.6','w1-temp'),(13,'2019-10-27 22:43:13',NULL,'temperature','0','w1-temp'),(14,'2019-10-27 22:43:46',NULL,'temperature','22.8','w1-temp'),(15,'2019-10-27 22:44:19',NULL,'temperature','0','w1-temp'),(16,'2019-10-27 22:44:51',NULL,'temperature','0','w1-temp'),(17,'2019-10-27 22:45:23',NULL,'temperature','0','w1-temp'),(18,'2019-10-27 22:45:55',NULL,'temperature','0','w1-temp'),(19,'2019-10-27 22:46:27',NULL,'temperature','0','w1-temp'),(20,'2019-10-27 22:47:32',NULL,'temperature','24.4','w1-temp'),(21,'2019-10-27 22:48:05',NULL,'temperature','24.1','w1-temp'),(22,'2019-10-27 22:48:37',NULL,'temperature','0','w1-temp'),(23,'2019-10-27 22:49:09',NULL,'temperature','0','w1-temp'),(24,'2019-10-27 22:49:40',NULL,'temperature','0','w1-temp'),(25,'2019-10-27 22:50:12',NULL,'temperature','0','w1-temp'),(26,'2019-10-27 22:57:13',NULL,'temperature','25','dth11-temp'),(27,'2019-10-27 22:57:13',NULL,'hudaminity','47','dth11-temp'),(28,'2019-10-27 22:59:02',NULL,'temperature','25','dth11-temp'),(29,'2019-10-27 22:59:02',NULL,'hudaminity','47','dth11-temp'),(30,'2019-10-27 22:59:34',NULL,'temperature','25','dth11-temp'),(31,'2019-10-27 22:59:34',NULL,'hudaminity','47','dth11-temp'),(32,'2019-10-27 23:00:07',NULL,'temperature','25','dth11-temp'),(33,'2019-10-27 23:00:07',NULL,'hudaminity','47','dth11-temp'),(34,'2019-10-27 23:00:39',NULL,'temperature','25','dth11-temp'),(35,'2019-10-27 23:00:39',NULL,'hudaminity','48','dth11-temp'),(36,'2019-10-27 23:01:00',NULL,'temperature','25.9','w1-temp'),(37,'2019-10-27 23:01:12',NULL,'temperature','25','dth11-temp'),(38,'2019-10-27 23:01:12',NULL,'hudaminity','48','dth11-temp'),(39,'2019-10-27 23:01:34',NULL,'temperature','26.4','w1-temp'),(40,'2019-10-27 23:01:45',NULL,'temperature','25','dth11-temp'),(41,'2019-10-27 23:01:45',NULL,'hudaminity','49','dth11-temp'),(42,'2019-10-27 23:02:07',NULL,'temperature','26.5','w1-temp'),(43,'2019-10-27 23:02:17',NULL,'temperature','24','dth11-temp'),(44,'2019-10-27 23:02:17',NULL,'hudaminity','49','dth11-temp'),(45,'2019-10-27 23:02:40',NULL,'temperature','26.6','w1-temp'),(46,'2019-10-27 23:02:50',NULL,'temperature','24','dth11-temp'),(47,'2019-10-27 23:02:50',NULL,'hudaminity','50','dth11-temp'),(48,'2019-10-27 23:03:13',NULL,'temperature','26.6','w1-temp'),(49,'2019-10-27 23:03:22',NULL,'temperature','24','dth11-temp'),(50,'2019-10-27 23:03:22',NULL,'hudaminity','50','dth11-temp'),(51,'2019-10-27 23:03:46',NULL,'temperature','26.5','w1-temp'),(52,'2019-10-27 23:03:55',NULL,'temperature','24','dth11-temp'),(53,'2019-10-27 23:03:55',NULL,'hudaminity','50','dth11-temp'),(54,'2019-10-27 23:04:19',NULL,'temperature','26.3','w1-temp'),(55,'2019-10-27 23:04:29',NULL,'temperature','24','dth11-temp'),(56,'2019-10-27 23:04:29',NULL,'hudaminity','50','dth11-temp'),(57,'2019-10-27 23:04:52',NULL,'temperature','26.3','w1-temp'),(58,'2019-10-27 23:05:02',NULL,'temperature','24','dth11-temp'),(59,'2019-10-27 23:05:02',NULL,'hudaminity','50','dth11-temp'),(60,'2019-10-27 23:05:25',NULL,'temperature','26.2','w1-temp'),(61,'2019-10-27 23:05:34',NULL,'temperature','24','dth11-temp'),(62,'2019-10-27 23:05:34',NULL,'hudaminity','50','dth11-temp'),(63,'2019-10-27 23:05:58',NULL,'temperature','26.2','w1-temp'),(64,'2019-10-27 23:06:09',NULL,'temperature','24','dth11-temp'),(65,'2019-10-27 23:06:09',NULL,'hudaminity','50','dth11-temp'),(66,'2019-10-27 23:06:31',NULL,'temperature','26.1','w1-temp'),(67,'2019-10-27 23:06:41',NULL,'temperature','24','dth11-temp'),(68,'2019-10-27 23:06:41',NULL,'hudaminity','51','dth11-temp'),(69,'2019-10-27 23:07:04',NULL,'temperature','25.9','w1-temp'),(70,'2019-10-27 23:07:14',NULL,'temperature','24','dth11-temp'),(71,'2019-10-27 23:07:14',NULL,'hudaminity','51','dth11-temp'),(72,'2019-10-27 23:07:37',NULL,'temperature','26','w1-temp'),(73,'2019-10-27 23:07:48',NULL,'temperature','24','dth11-temp'),(74,'2019-10-27 23:07:48',NULL,'hudaminity','51','dth11-temp'),(75,'2019-10-27 23:08:10',NULL,'temperature','25.9','w1-temp'),(76,'2019-10-27 23:08:20',NULL,'temperature','24','dth11-temp'),(77,'2019-10-27 23:08:20',NULL,'hudaminity','50','dth11-temp'),(78,'2019-10-27 23:08:43',NULL,'temperature','25.8','w1-temp'),(79,'2019-10-27 23:08:53',NULL,'temperature','24','dth11-temp'),(80,'2019-10-27 23:08:53',NULL,'hudaminity','51','dth11-temp'),(81,'2019-10-27 23:09:16',NULL,'temperature','25.9','w1-temp'),(82,'2019-10-27 23:09:26',NULL,'temperature','24','dth11-temp'),(83,'2019-10-27 23:09:26',NULL,'hudaminity','51','dth11-temp'),(84,'2019-10-27 23:09:49',NULL,'temperature','25.8','w1-temp'),(85,'2019-10-27 23:09:58',NULL,'temperature','24','dth11-temp'),(86,'2019-10-27 23:09:58',NULL,'hudaminity','51','dth11-temp'),(87,'2019-10-27 23:10:22',NULL,'temperature','25.6','w1-temp'),(88,'2019-10-27 23:10:31',NULL,'temperature','24','dth11-temp'),(89,'2019-10-27 23:10:31',NULL,'hudaminity','51','dth11-temp'),(90,'2019-10-27 23:10:55',NULL,'temperature','25.8','w1-temp'),(91,'2019-10-27 23:11:03',NULL,'temperature','24','dth11-temp'),(92,'2019-10-27 23:11:03',NULL,'hudaminity','51','dth11-temp'),(93,'2019-10-27 23:11:29',NULL,'temperature','25.8','w1-temp'),(94,'2019-10-27 23:11:36',NULL,'temperature','24','dth11-temp'),(95,'2019-10-27 23:11:36',NULL,'hudaminity','51','dth11-temp'),(96,'2019-10-27 23:12:02',NULL,'temperature','25.8','w1-temp'),(97,'2019-10-27 23:12:09',NULL,'temperature','24','dth11-temp'),(98,'2019-10-27 23:12:09',NULL,'hudaminity','51','dth11-temp'),(99,'2019-10-27 23:12:35',NULL,'temperature','25.8','w1-temp'),(100,'2019-10-27 23:12:41',NULL,'temperature','24','dth11-temp'),(101,'2019-10-27 23:12:41',NULL,'hudaminity','51','dth11-temp'),(102,'2019-10-27 23:13:08',NULL,'temperature','25.8','w1-temp'),(103,'2019-10-27 23:13:14',NULL,'temperature','24','dth11-temp'),(104,'2019-10-27 23:13:14',NULL,'hudaminity','51','dth11-temp'),(105,'2019-10-27 23:13:41',NULL,'temperature','25.6','w1-temp'),(106,'2019-10-27 23:13:46',NULL,'temperature','24','dth11-temp'),(107,'2019-10-27 23:13:46',NULL,'hudaminity','51','dth11-temp'),(108,'2019-10-27 23:14:14',NULL,'temperature','25.8','w1-temp'),(109,'2019-10-27 23:14:19',NULL,'temperature','24','dth11-temp'),(110,'2019-10-27 23:14:19',NULL,'hudaminity','51','dth11-temp'),(111,'2019-10-27 23:14:47',NULL,'temperature','25.8','w1-temp'),(112,'2019-10-27 23:14:52',NULL,'temperature','24','dth11-temp'),(113,'2019-10-27 23:14:52',NULL,'hudaminity','51','dth11-temp'),(114,'2019-10-27 23:15:20',NULL,'temperature','25.8','w1-temp'),(115,'2019-10-27 23:15:24',NULL,'temperature','24','dth11-temp'),(116,'2019-10-27 23:15:24',NULL,'hudaminity','51','dth11-temp'),(117,'2019-10-27 23:15:53',NULL,'temperature','25.8','w1-temp'),(118,'2019-10-27 23:15:57',NULL,'temperature','24','dth11-temp'),(119,'2019-10-27 23:15:57',NULL,'hudaminity','51','dth11-temp'),(120,'2019-10-27 23:16:26',NULL,'temperature','25.7','w1-temp'),(121,'2019-10-27 23:16:29',NULL,'temperature','24','dth11-temp'),(122,'2019-10-27 23:16:29',NULL,'hudaminity','51','dth11-temp'),(123,'2019-10-27 23:16:59',NULL,'temperature','25.8','w1-temp'),(124,'2019-10-27 23:17:02',NULL,'temperature','24','dth11-temp'),(125,'2019-10-27 23:17:02',NULL,'hudaminity','51','dth11-temp'),(126,'2019-10-27 23:17:32',NULL,'temperature','25.8','w1-temp'),(127,'2019-10-27 23:17:34',NULL,'temperature','24','dth11-temp'),(128,'2019-10-27 23:17:34',NULL,'hudaminity','51','dth11-temp'),(129,'2019-10-27 23:18:05',NULL,'temperature','25.6','w1-temp'),(130,'2019-10-27 23:18:10',NULL,'temperature','24','dth11-temp'),(131,'2019-10-27 23:18:10',NULL,'hudaminity','51','dth11-temp'),(132,'2019-10-27 23:18:38',NULL,'temperature','25.6','w1-temp'),(133,'2019-10-27 23:18:43',NULL,'temperature','24','dth11-temp'),(134,'2019-10-27 23:18:43',NULL,'hudaminity','51','dth11-temp'),(135,'2019-10-27 23:19:12',NULL,'temperature','25.7','w1-temp'),(136,'2019-10-27 23:19:15',NULL,'temperature','24','dth11-temp'),(137,'2019-10-27 23:19:15',NULL,'hudaminity','51','dth11-temp'),(138,'2019-10-27 23:19:45',NULL,'temperature','25.5','w1-temp'),(139,'2019-10-27 23:19:50',NULL,'temperature','24','dth11-temp'),(140,'2019-10-27 23:19:50',NULL,'hudaminity','51','dth11-temp'),(141,'2019-10-27 23:20:18',NULL,'temperature','25.6','w1-temp'),(142,'2019-10-27 23:20:22',NULL,'temperature','24','dth11-temp'),(143,'2019-10-27 23:20:22',NULL,'hudaminity','51','dth11-temp'),(144,'2019-10-27 23:20:51',NULL,'temperature','25.6','w1-temp'),(145,'2019-10-27 23:20:55',NULL,'temperature','24','dth11-temp'),(146,'2019-10-27 23:20:55',NULL,'hudaminity','51','dth11-temp'),(147,'2019-10-27 23:21:24',NULL,'temperature','25.4','w1-temp'),(148,'2019-10-27 23:21:27',NULL,'temperature','24','dth11-temp'),(149,'2019-10-27 23:21:27',NULL,'hudaminity','51','dth11-temp'),(150,'2019-10-27 23:21:57',NULL,'temperature','25.6','w1-temp'),(151,'2019-10-27 23:22:00',NULL,'temperature','24','dth11-temp'),(152,'2019-10-27 23:22:00',NULL,'hudaminity','51','dth11-temp'),(153,'2019-10-27 23:22:30',NULL,'temperature','25.4','w1-temp'),(154,'2019-10-27 23:22:33',NULL,'temperature','24','dth11-temp'),(155,'2019-10-27 23:22:33',NULL,'hudaminity','51','dth11-temp'),(156,'2019-10-27 23:23:03',NULL,'temperature','25.4','w1-temp'),(157,'2019-10-27 23:23:05',NULL,'temperature','24','dth11-temp'),(158,'2019-10-27 23:23:05',NULL,'hudaminity','51','dth11-temp'),(159,'2019-10-27 23:23:36',NULL,'temperature','25.4','w1-temp'),(160,'2019-10-27 23:23:38',NULL,'temperature','24','dth11-temp'),(161,'2019-10-27 23:23:38',NULL,'hudaminity','51','dth11-temp'),(162,'2019-10-27 23:24:09',NULL,'temperature','25.5','w1-temp'),(163,'2019-10-27 23:24:10',NULL,'temperature','24','dth11-temp'),(164,'2019-10-27 23:24:10',NULL,'hudaminity','51','dth11-temp'),(165,'2019-10-27 23:24:42',NULL,'temperature','25.5','w1-temp'),(166,'2019-10-27 23:24:43',NULL,'temperature','24','dth11-temp'),(167,'2019-10-27 23:24:43',NULL,'hudaminity','51','dth11-temp'),(168,'2019-10-27 23:25:15',NULL,'temperature','25.4','w1-temp'),(169,'2019-10-27 23:25:16',NULL,'temperature','24','dth11-temp'),(170,'2019-10-27 23:25:16',NULL,'hudaminity','51','dth11-temp'),(171,'2019-10-27 23:25:47',NULL,'temperature','25.4','w1-temp'),(172,'2019-10-27 23:25:48',NULL,'temperature','24','dth11-temp'),(173,'2019-10-27 23:25:48',NULL,'hudaminity','51','dth11-temp'),(174,'2019-10-27 23:26:20',NULL,'temperature','25.3','w1-temp'),(175,'2019-10-27 23:26:21',NULL,'temperature','24','dth11-temp'),(176,'2019-10-27 23:26:21',NULL,'hudaminity','51','dth11-temp'),(177,'2019-10-27 23:26:52',NULL,'temperature','25.6','w1-temp'),(178,'2019-10-27 23:26:53',NULL,'temperature','24','dth11-temp'),(179,'2019-10-27 23:26:53',NULL,'hudaminity','51','dth11-temp'),(180,'2019-10-27 23:27:25',NULL,'temperature','25.5','w1-temp'),(181,'2019-10-27 23:27:26',NULL,'temperature','24','dth11-temp'),(182,'2019-10-27 23:27:26',NULL,'hudaminity','51','dth11-temp'),(183,'2019-10-27 23:27:58',NULL,'temperature','25.5','w1-temp'),(184,'2019-10-27 23:27:59',NULL,'temperature','24','dth11-temp'),(185,'2019-10-27 23:27:59',NULL,'hudaminity','51','dth11-temp'),(186,'2019-10-27 23:28:30',NULL,'temperature','25.4','w1-temp'),(187,'2019-10-27 23:28:31',NULL,'temperature','24','dth11-temp'),(188,'2019-10-27 23:28:31',NULL,'hudaminity','51','dth11-temp'),(189,'2019-10-27 23:29:03',NULL,'temperature','25.5','w1-temp'),(190,'2019-10-27 23:29:04',NULL,'temperature','24','dth11-temp'),(191,'2019-10-27 23:29:04',NULL,'hudaminity','51','dth11-temp'),(192,'2019-10-27 23:29:35',NULL,'temperature','25.4','w1-temp'),(193,'2019-10-27 23:29:36',NULL,'temperature','24','dth11-temp'),(194,'2019-10-27 23:29:36',NULL,'hudaminity','51','dth11-temp'),(195,'2019-10-27 23:30:08',NULL,'temperature','25.6','w1-temp'),(196,'2019-10-27 23:30:09',NULL,'temperature','24','dth11-temp'),(197,'2019-10-27 23:30:09',NULL,'hudaminity','51','dth11-temp'),(198,'2019-10-27 23:30:41',NULL,'temperature','25.9','w1-temp'),(199,'2019-10-27 23:30:41',NULL,'temperature','24','dth11-temp'),(200,'2019-10-27 23:30:41',NULL,'hudaminity','51','dth11-temp'),(201,'2019-10-27 23:31:13',NULL,'temperature','25.8','w1-temp'),(202,'2019-10-27 23:31:14',NULL,'temperature','24','dth11-temp'),(203,'2019-10-27 23:31:14',NULL,'hudaminity','51','dth11-temp'),(204,'2019-10-27 23:31:46',NULL,'temperature','25.9','w1-temp'),(205,'2019-10-27 23:31:47',NULL,'temperature','24','dth11-temp'),(206,'2019-10-27 23:31:47',NULL,'hudaminity','51','dth11-temp'),(207,'2019-10-27 23:32:18',NULL,'temperature','26.1','w1-temp'),(208,'2019-10-27 23:32:19',NULL,'temperature','24','dth11-temp'),(209,'2019-10-27 23:32:19',NULL,'hudaminity','51','dth11-temp'),(210,'2019-10-27 23:32:51',NULL,'temperature','26.1','w1-temp'),(211,'2019-10-27 23:32:52',NULL,'temperature','24','dth11-temp'),(212,'2019-10-27 23:32:52',NULL,'hudaminity','51','dth11-temp'),(213,'2019-10-27 23:33:23',NULL,'temperature','26.2','w1-temp'),(214,'2019-10-27 23:33:25',NULL,'temperature','24','dth11-temp'),(215,'2019-10-27 23:33:25',NULL,'hudaminity','51','dth11-temp'),(216,'2019-10-27 23:33:56',NULL,'temperature','26.3','w1-temp'),(217,'2019-10-27 23:33:57',NULL,'temperature','24','dth11-temp'),(218,'2019-10-27 23:33:57',NULL,'hudaminity','51','dth11-temp'),(219,'2019-10-27 23:34:29',NULL,'temperature','26.1','w1-temp'),(220,'2019-10-27 23:34:30',NULL,'temperature','24','dth11-temp'),(221,'2019-10-27 23:34:30',NULL,'hudaminity','50','dth11-temp'),(222,'2019-10-27 23:35:01',NULL,'temperature','26.1','w1-temp'),(223,'2019-10-27 23:35:02',NULL,'temperature','24','dth11-temp'),(224,'2019-10-27 23:35:02',NULL,'hudaminity','51','dth11-temp'),(225,'2019-10-27 23:35:34',NULL,'temperature','26.1','w1-temp'),(226,'2019-10-27 23:35:35',NULL,'temperature','24','dth11-temp'),(227,'2019-10-27 23:35:35',NULL,'hudaminity','51','dth11-temp'),(228,'2019-10-27 23:36:07',NULL,'temperature','26.1','w1-temp'),(229,'2019-10-27 23:36:08',NULL,'temperature','24','dth11-temp'),(230,'2019-10-27 23:36:08',NULL,'hudaminity','51','dth11-temp'),(231,'2019-10-27 23:36:39',NULL,'temperature','26.1','w1-temp'),(232,'2019-10-27 23:36:40',NULL,'temperature','24','dth11-temp'),(233,'2019-10-27 23:36:40',NULL,'hudaminity','51','dth11-temp'),(234,'2019-10-27 23:37:12',NULL,'temperature','26.1','w1-temp'),(235,'2019-10-27 23:37:13',NULL,'temperature','24','dth11-temp'),(236,'2019-10-27 23:37:13',NULL,'hudaminity','51','dth11-temp'),(237,'2019-10-27 23:37:45',NULL,'temperature','26.3','w1-temp'),(238,'2019-10-27 23:37:47',NULL,'temperature','24','dth11-temp'),(239,'2019-10-27 23:37:47',NULL,'hudaminity','51','dth11-temp'),(240,'2019-10-27 23:38:18',NULL,'temperature','26.3','w1-temp'),(241,'2019-10-27 23:38:20',NULL,'temperature','24','dth11-temp'),(242,'2019-10-27 23:38:20',NULL,'hudaminity','51','dth11-temp'),(243,'2019-10-27 23:38:51',NULL,'temperature','26.1','w1-temp'),(244,'2019-10-27 23:38:52',NULL,'temperature','24','dth11-temp'),(245,'2019-10-27 23:38:52',NULL,'hudaminity','50','dth11-temp'),(246,'2019-10-27 23:39:24',NULL,'temperature','26.1','w1-temp'),(247,'2019-10-27 23:39:25',NULL,'temperature','24','dth11-temp'),(248,'2019-10-27 23:39:25',NULL,'hudaminity','50','dth11-temp'),(249,'2019-10-27 23:39:56',NULL,'temperature','26.3','w1-temp'),(250,'2019-10-27 23:39:57',NULL,'temperature','24','dth11-temp'),(251,'2019-10-27 23:39:57',NULL,'hudaminity','50','dth11-temp'),(252,'2019-10-27 23:40:30',NULL,'temperature','24','dth11-temp'),(253,'2019-10-27 23:40:30',NULL,'hudaminity','50','dth11-temp'),(254,'2019-10-27 23:40:30',NULL,'temperature','26.4','w1-temp'),(255,'2019-10-27 23:41:02',NULL,'temperature','24','dth11-temp'),(256,'2019-10-27 23:41:02',NULL,'hudaminity','50','dth11-temp'),(257,'2019-10-27 23:41:03',NULL,'temperature','26.4','w1-temp'),(258,'2019-10-27 23:41:35',NULL,'temperature','24','dth11-temp'),(259,'2019-10-27 23:41:35',NULL,'hudaminity','50','dth11-temp'),(260,'2019-10-27 23:41:36',NULL,'temperature','26.5','w1-temp'),(261,'2019-10-27 23:42:08',NULL,'temperature','24','dth11-temp'),(262,'2019-10-27 23:42:08',NULL,'hudaminity','50','dth11-temp'),(263,'2019-10-27 23:42:09',NULL,'temperature','26.5','w1-temp'),(264,'2019-10-27 23:42:40',NULL,'temperature','24','dth11-temp'),(265,'2019-10-27 23:42:40',NULL,'hudaminity','50','dth11-temp'),(266,'2019-10-27 23:42:42',NULL,'temperature','26.5','w1-temp'),(267,'2019-10-27 23:43:13',NULL,'temperature','24','dth11-temp'),(268,'2019-10-27 23:43:13',NULL,'hudaminity','50','dth11-temp'),(269,'2019-10-27 23:43:15',NULL,'temperature','26.5','w1-temp'),(270,'2019-10-27 23:43:46',NULL,'temperature','24','dth11-temp'),(271,'2019-10-27 23:43:46',NULL,'hudaminity','50','dth11-temp'),(272,'2019-10-27 23:43:48',NULL,'temperature','26.4','w1-temp'),(273,'2019-10-27 23:44:18',NULL,'temperature','24','dth11-temp'),(274,'2019-10-27 23:44:18',NULL,'hudaminity','50','dth11-temp'),(275,'2019-10-27 23:44:22',NULL,'temperature','26.5','w1-temp'),(276,'2019-10-27 23:44:51',NULL,'temperature','24','dth11-temp'),(277,'2019-10-27 23:44:51',NULL,'hudaminity','51','dth11-temp'),(278,'2019-10-27 23:44:55',NULL,'temperature','26.4','w1-temp'),(279,'2019-10-27 23:45:23',NULL,'temperature','24','dth11-temp'),(280,'2019-10-27 23:45:23',NULL,'hudaminity','51','dth11-temp'),(281,'2019-10-27 23:45:28',NULL,'temperature','26.5','w1-temp'),(282,'2019-10-27 23:45:56',NULL,'temperature','24','dth11-temp'),(283,'2019-10-27 23:45:56',NULL,'hudaminity','50','dth11-temp'),(284,'2019-10-27 23:46:01',NULL,'temperature','26.4','w1-temp'),(285,'2019-10-27 23:46:29',NULL,'temperature','24','dth11-temp'),(286,'2019-10-27 23:46:29',NULL,'hudaminity','50','dth11-temp'),(287,'2019-10-27 23:46:34',NULL,'temperature','26.4','w1-temp'),(288,'2019-10-27 23:47:03',NULL,'temperature','24','dth11-temp'),(289,'2019-10-27 23:47:03',NULL,'hudaminity','50','dth11-temp'),(290,'2019-10-27 23:47:07',NULL,'temperature','26.5','w1-temp'),(291,'2019-10-27 23:47:35',NULL,'temperature','24','dth11-temp'),(292,'2019-10-27 23:47:35',NULL,'hudaminity','51','dth11-temp'),(293,'2019-10-27 23:47:40',NULL,'temperature','26.5','w1-temp'),(294,'2019-10-27 23:48:08',NULL,'temperature','24','dth11-temp'),(295,'2019-10-27 23:48:08',NULL,'hudaminity','50','dth11-temp'),(296,'2019-10-27 23:48:13',NULL,'temperature','26.4','w1-temp'),(297,'2019-10-27 23:48:40',NULL,'temperature','24','dth11-temp'),(298,'2019-10-27 23:48:40',NULL,'hudaminity','50','dth11-temp'),(299,'2019-10-27 23:48:46',NULL,'temperature','26.4','w1-temp'),(300,'2019-10-27 23:49:13',NULL,'temperature','24','dth11-temp'),(301,'2019-10-27 23:49:13',NULL,'hudaminity','50','dth11-temp'),(302,'2019-10-27 23:49:19',NULL,'temperature','26.4','w1-temp'),(303,'2019-10-27 23:49:46',NULL,'temperature','24','dth11-temp'),(304,'2019-10-27 23:49:46',NULL,'hudaminity','50','dth11-temp'),(305,'2019-10-27 23:49:52',NULL,'temperature','26.5','w1-temp'),(306,'2019-10-27 23:50:18',NULL,'temperature','24','dth11-temp'),(307,'2019-10-27 23:50:18',NULL,'hudaminity','50','dth11-temp'),(308,'2019-10-27 23:50:25',NULL,'temperature','26.4','w1-temp'),(309,'2019-10-27 23:50:51',NULL,'temperature','24','dth11-temp'),(310,'2019-10-27 23:50:51',NULL,'hudaminity','50','dth11-temp'),(311,'2019-10-27 23:50:58',NULL,'temperature','26.5','w1-temp'),(312,'2019-10-27 23:51:24',NULL,'temperature','24','dth11-temp'),(313,'2019-10-27 23:51:24',NULL,'hudaminity','50','dth11-temp'),(314,'2019-10-27 23:51:31',NULL,'temperature','26.6','w1-temp'),(315,'2019-10-27 23:51:56',NULL,'temperature','24','dth11-temp'),(316,'2019-10-27 23:51:56',NULL,'hudaminity','51','dth11-temp'),(317,'2019-10-27 23:52:04',NULL,'temperature','26.6','w1-temp'),(318,'2019-10-27 23:52:29',NULL,'temperature','24','dth11-temp'),(319,'2019-10-27 23:52:29',NULL,'hudaminity','51','dth11-temp'),(320,'2019-10-27 23:52:37',NULL,'temperature','26.5','w1-temp'),(321,'2019-10-27 23:53:03',NULL,'temperature','24','dth11-temp'),(322,'2019-10-27 23:53:03',NULL,'hudaminity','51','dth11-temp'),(323,'2019-10-27 23:53:10',NULL,'temperature','26.6','w1-temp'),(324,'2019-10-27 23:53:35',NULL,'temperature','24','dth11-temp'),(325,'2019-10-27 23:53:35',NULL,'hudaminity','51','dth11-temp'),(326,'2019-10-27 23:53:43',NULL,'temperature','26.5','w1-temp'),(327,'2019-10-27 23:54:08',NULL,'temperature','24','dth11-temp'),(328,'2019-10-27 23:54:08',NULL,'hudaminity','51','dth11-temp'),(329,'2019-10-27 23:54:16',NULL,'temperature','26.6','w1-temp'),(330,'2019-10-27 23:54:41',NULL,'temperature','24','dth11-temp'),(331,'2019-10-27 23:54:41',NULL,'hudaminity','51','dth11-temp'),(332,'2019-10-27 23:54:49',NULL,'temperature','26.6','w1-temp'),(333,'2019-10-27 23:55:13',NULL,'temperature','24','dth11-temp'),(334,'2019-10-27 23:55:13',NULL,'hudaminity','51','dth11-temp'),(335,'2019-10-27 23:55:22',NULL,'temperature','26.6','w1-temp'),(336,'2019-10-27 23:55:46',NULL,'temperature','24','dth11-temp'),(337,'2019-10-27 23:55:46',NULL,'hudaminity','51','dth11-temp'),(338,'2019-10-27 23:55:55',NULL,'temperature','26.6','w1-temp'),(339,'2019-10-27 23:56:19',NULL,'temperature','24','dth11-temp'),(340,'2019-10-27 23:56:19',NULL,'hudaminity','51','dth11-temp'),(341,'2019-10-27 23:56:28',NULL,'temperature','26.4','w1-temp'),(342,'2019-10-27 23:56:51',NULL,'temperature','24','dth11-temp'),(343,'2019-10-27 23:56:51',NULL,'hudaminity','50','dth11-temp'),(344,'2019-10-27 23:57:01',NULL,'temperature','26.6','w1-temp'),(345,'2019-10-27 23:57:24',NULL,'temperature','24','dth11-temp'),(346,'2019-10-27 23:57:24',NULL,'hudaminity','51','dth11-temp'),(347,'2019-10-27 23:57:34',NULL,'temperature','26.6','w1-temp'),(348,'2019-10-27 23:57:56',NULL,'temperature','24','dth11-temp'),(349,'2019-10-27 23:57:56',NULL,'hudaminity','50','dth11-temp'),(350,'2019-10-27 23:58:07',NULL,'temperature','26.7','w1-temp'),(351,'2019-10-27 23:58:32',NULL,'temperature','24','dth11-temp'),(352,'2019-10-27 23:58:32',NULL,'hudaminity','50','dth11-temp'),(353,'2019-10-27 23:58:40',NULL,'temperature','26.8','w1-temp');
/*!40000 ALTER TABLE `sensor_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensors_groups`
--

DROP TABLE IF EXISTS `sensors_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensors_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` text DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_sensors_groups_userid` (`userid`),
  CONSTRAINT `FK_sensors_groups_users_userid` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensors_groups`
--

LOCK TABLES `sensors_groups` WRITE;
/*!40000 ALTER TABLE `sensors_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `sensors_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `Username` varchar(60) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PasswordHash` varbinary(4000) DEFAULT NULL,
  `PasswordSalt` varbinary(4000) DEFAULT NULL,
  `email_confirmed` bit(1) NOT NULL,
  `FirstName` varchar(60) DEFAULT NULL,
  `LastName` varchar(60) DEFAULT NULL,
  `Token` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-22 16:58:46
