-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: power
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_type` varchar(64) DEFAULT NULL,
  `device_mac` varchar(64) NOT NULL,
  `device_ip` varchar(64) DEFAULT NULL,
  `ssid` varchar(64) DEFAULT NULL,
  `bssid` varchar(64) DEFAULT NULL,
  `vendor` varchar(64) DEFAULT NULL,
  `rssi` int DEFAULT NULL,
  `band` varchar(64) DEFAULT NULL,
  `channel` int DEFAULT NULL,
  `width` varchar(64) DEFAULT NULL,
  `beacon_interval` float DEFAULT NULL,
  `generation` varchar(64) DEFAULT NULL,
  `amendments` varchar(64) DEFAULT NULL,
  `streams` int DEFAULT NULL,
  `country_code` varchar(64) DEFAULT NULL,
  `stations` int DEFAULT NULL,
  `chan_util` int DEFAULT NULL,
  `ap_uptime` datetime DEFAULT NULL,
  `security` varchar(64) DEFAULT NULL,
  `first_contact_time` datetime DEFAULT NULL,
  `last_contact_time` datetime DEFAULT NULL,
  `sensor_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sensor_id` (`sensor_id`,`device_mac`),
  CONSTRAINT `devices_ibfk_1` FOREIGN KEY (`sensor_id`) REFERENCES `sensors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES (1,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,NULL,NULL,-51,NULL,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3),(2,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,NULL,NULL,-65,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(3,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,NULL,NULL,-85,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4),(4,NULL,'BB:BB:AA:AA:AA:BB',NULL,NULL,NULL,NULL,-46,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(6,NULL,'BB:BB:AA:AA:AA:BB',NULL,NULL,NULL,NULL,-52,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3);
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devpoints`
--

DROP TABLE IF EXISTS `devpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devpoints` (
  `id` int NOT NULL AUTO_INCREMENT,
  `loctime` datetime DEFAULT NULL,
  `device_mac` varchar(64) NOT NULL,
  `colour` varchar(64) DEFAULT NULL,
  `mapid` int DEFAULT NULL,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devpoints`
--

LOCK TABLES `devpoints` WRITE;
/*!40000 ALTER TABLE `devpoints` DISABLE KEYS */;
INSERT INTO `devpoints` VALUES (1,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,0,3,'2022-01-06 19:23:00'),(2,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,0,4,'2022-01-06 19:23:00'),(3,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,0,5,'2022-01-06 19:23:00'),(4,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,0,6,'2022-01-06 19:23:00'),(5,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,0,7,'2022-01-06 19:23:00'),(6,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,1,2,'2022-01-06 19:23:00'),(7,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,1,8,'2022-01-06 19:23:00'),(8,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,1,9,'2022-01-06 19:23:00'),(9,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,2,9,'2022-01-06 19:23:00'),(10,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,3,10,'2022-01-06 19:23:00'),(11,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,4,0,'2022-01-06 19:23:00'),(12,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,4,10,'2022-01-06 19:23:00'),(13,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,5,0,'2022-01-06 19:23:00'),(14,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,6,0,'2022-01-06 19:23:00'),(15,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,7,0,'2022-01-06 19:23:00'),(16,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,7,7,'2022-01-06 19:23:00'),(17,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,8,1,'2022-01-06 19:23:00'),(18,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,9,1,'2022-01-06 19:23:00'),(19,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,9,2,'2022-01-06 19:23:00'),(20,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,10,3,'2022-01-06 19:23:00'),(21,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,10,4,'2022-01-06 19:23:00'),(22,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,5,2,'2022-01-06 19:23:00'),(23,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,6,0,'2022-01-06 19:23:00'),(24,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,6,1,'2022-01-06 19:23:00'),(25,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,6,2,'2022-01-06 19:23:00'),(26,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,6,6,'2022-01-06 19:23:00'),(27,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,6,8,'2022-01-06 19:23:00'),(28,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,6,9,'2022-01-06 19:23:00'),(29,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,7,8,'2022-01-06 19:23:00'),(30,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,7,9,'2022-01-06 19:23:00'),(31,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,9,4,'2022-01-06 19:23:00'),(32,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,9,5,'2022-01-06 19:23:00'),(33,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,4,10,'2022-01-06 19:23:00'),(34,NULL,'AA:AA:AA:AA:AA:AA',NULL,NULL,5,8,'2022-01-06 19:23:00'),(35,NULL,'BB:BB:AA:AA:AA:BB',NULL,NULL,0,3,'2022-01-06 19:23:00'),(36,NULL,'BB:BB:AA:AA:AA:BB',NULL,NULL,1,3,'2022-01-06 19:23:00'),(37,NULL,'BB:BB:AA:AA:AA:BB',NULL,NULL,2,2,'2022-01-06 19:23:00'),(38,NULL,'BB:BB:AA:AA:AA:BB',NULL,NULL,2,4,'2022-01-06 19:23:00'),(39,NULL,'BB:BB:AA:AA:AA:BB',NULL,NULL,2,5,'2022-01-06 19:23:00'),(40,NULL,'BB:BB:AA:AA:AA:BB',NULL,NULL,2,6,'2022-01-06 19:23:00'),(41,NULL,'BB:BB:AA:AA:AA:BB',NULL,NULL,3,7,'2022-01-06 19:23:00'),(42,NULL,'BB:BB:AA:AA:AA:BB',NULL,NULL,4,2,'2022-01-06 19:23:00'),(43,NULL,'BB:BB:AA:AA:AA:BB',NULL,NULL,4,8,'2022-01-06 19:23:00'),(44,NULL,'BB:BB:AA:AA:AA:BB',NULL,NULL,5,2,'2022-01-06 19:23:00'),(45,NULL,'BB:BB:AA:AA:AA:BB',NULL,NULL,6,2,'2022-01-06 19:23:01'),(46,NULL,'BB:BB:AA:AA:AA:BB',NULL,NULL,7,3,'2022-01-06 19:23:01'),(47,NULL,'BB:BB:AA:AA:AA:BB',NULL,NULL,8,4,'2022-01-06 19:23:01');
/*!40000 ALTER TABLE `devpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensors`
--

DROP TABLE IF EXISTS `sensors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sensors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mapid` int DEFAULT NULL,
  `x` int DEFAULT NULL,
  `y` int DEFAULT NULL,
  `z` int DEFAULT NULL,
  `gain` float DEFAULT NULL,
  `sensor_mac` varchar(64) DEFAULT NULL,
  `sensor_ip` varchar(64) DEFAULT NULL,
  `sensor_name` varchar(45) DEFAULT NULL,
  `interface_0` varchar(45) DEFAULT NULL,
  `interface_1` varchar(45) DEFAULT NULL,
  `interface_2` varchar(45) DEFAULT NULL,
  `state` enum('UP','DOWN') DEFAULT NULL,
  `state_change` datetime DEFAULT NULL,
  `uptime` varchar(45) DEFAULT NULL,
  `logs_path` varchar(45) DEFAULT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `allias` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sensor_mac` (`sensor_mac`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensors`
--

LOCK TABLES `sensors` WRITE;
/*!40000 ALTER TABLE `sensors` DISABLE KEYS */;
INSERT INTO `sensors` VALUES (1,1,0,0,3,3,'AA-AA-AA-AA-AA-AA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,5,5,3,3,'AA-AA-AA-AA-AA-A2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,1,10,0,3,3,'AA-AA-AA-AA-AA-A3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sensors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signal_matrix`
--

DROP TABLE IF EXISTS `signal_matrix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signal_matrix` (
  `id` int NOT NULL AUTO_INCREMENT,
  `x` int DEFAULT NULL,
  `y` int DEFAULT NULL,
  `sensor_id` int DEFAULT NULL,
  `Rx_24` float DEFAULT NULL,
  `Rx_5` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signal_matrix`
--

LOCK TABLES `signal_matrix` WRITE;
/*!40000 ALTER TABLE `signal_matrix` DISABLE KEYS */;
INSERT INTO `signal_matrix` VALUES (1,0,0,1,-38.9,-45.58),(2,0,0,3,-62.7,-69.38),(3,0,0,4,-70.07,-76.75),(4,0,1,1,-40.21,-46.89),(5,0,1,3,-53.14,-59.82),(6,0,1,4,-70.18,-76.87),(7,0,2,1,-42.97,-49.66),(8,0,2,3,-52.14,-58.83),(9,0,2,4,-70.53,-77.21),(10,0,3,1,-45.83,-52.51),(11,0,3,3,-51.31,-58),(12,0,3,4,-71.08,-77.77),(13,0,4,1,-48.37,-55.05),(14,0,4,3,-50.75,-57.43),(15,0,4,4,-71.83,-78.52),(16,0,5,1,-50.55,-57.24),(17,0,5,3,-50.55,-57.24),(18,0,5,4,-59.34,-66.02),(19,0,6,1,-52.45,-59.13),(20,0,6,3,-50.75,-57.43),(21,0,6,4,-59.82,-66.5),(22,0,7,1,-54.1,-60.78),(23,0,7,3,-51.31,-58),(24,0,7,4,-60.34,-67.02),(25,0,8,1,-55.57,-62.25),(26,0,8,3,-52.14,-58.83),(27,0,8,4,-60.89,-67.57),(28,0,9,1,-56.88,-63.56),(29,0,9,3,-53.14,-59.82),(30,0,9,4,-61.46,-68.14),(31,0,10,1,-58.07,-64.75),(32,0,10,3,-54.21,-60.89),(33,0,10,4,-62.03,-68.72),(34,1,0,1,-40.21,-46.89),(35,1,0,3,-62.74,-69.43),(36,1,0,4,-68.88,-75.56),(37,1,1,1,-41.28,-47.96),(38,1,1,3,-60.31,-66.99),(39,1,1,4,-69.02,-75.71),(40,1,2,1,-43.67,-50.35),(41,1,2,3,-50.55,-57.24),(42,1,2,4,-69.44,-76.13),(43,1,3,1,-46.27,-52.95),(44,1,3,3,-49.44,-56.12),(45,1,3,4,-70.12,-76.8),(46,1,4,1,-48.65,-55.34),(47,1,4,3,-48.65,-55.34),(48,1,4,4,-57.9,-64.58),(49,1,5,1,-50.75,-57.43),(50,1,5,3,-48.37,-55.05),(51,1,5,4,-58.4,-65.08),(52,1,6,1,-52.59,-59.27),(53,1,6,3,-48.65,-55.34),(54,1,6,4,-58.96,-65.64),(55,1,7,1,-54.21,-60.89),(56,1,7,3,-49.44,-56.12),(57,1,7,4,-59.56,-66.24),(58,1,8,1,-55.65,-62.34),(59,1,8,3,-50.55,-57.24),(60,1,8,4,-60.18,-66.87),(61,1,9,1,-56.95,-63.63),(62,1,9,3,-51.83,-58.51),(63,1,9,4,-60.82,-67.5),(64,1,10,1,-58.12,-64.81),(65,1,10,3,-53.14,-59.82),(66,1,10,4,-61.46,-68.14),(67,2,0,1,-42.97,-49.66),(68,2,0,3,-63.81,-70.49),(69,2,0,4,-67.57,-74.25),(70,2,1,1,-43.67,-50.35),(71,2,1,3,-60.55,-67.24),(72,2,1,4,-67.75,-74.43),(73,2,2,1,-45.36,-52.04),(74,2,2,3,-57.41,-64.09),(75,2,2,4,-68.27,-74.96),(76,2,3,1,-47.41,-54.09),(77,2,3,3,-47.41,-54.09),(78,2,3,4,-69.12,-75.8),(79,2,4,1,-49.44,-56.12),(80,2,4,3,-46.27,-52.95),(81,2,4,4,-56.81,-63.49),(82,2,5,1,-51.31,-58),(83,2,5,3,-45.83,-52.51),(84,2,5,4,-57.41,-64.09),(85,2,6,1,-53.01,-59.69),(86,2,6,3,-46.27,-52.95),(87,2,6,4,-58.07,-64.75),(88,2,7,1,-54.53,-61.21),(89,2,7,3,-47.41,-54.09),(90,2,7,4,-58.76,-65.44),(91,2,8,1,-55.9,-62.59),(92,2,8,3,-48.93,-55.61),(93,2,8,4,-59.47,-66.15),(94,2,9,1,-57.15,-63.83),(95,2,9,3,-50.55,-57.24),(96,2,9,4,-60.18,-66.87),(97,2,10,1,-58.29,-64.97),(98,2,10,3,-52.14,-58.83),(99,2,10,4,-60.89,-67.57),(100,3,0,1,-51.83,-58.51),(101,3,0,3,-67.47,-74.15),(102,3,0,4,-66.1,-72.78),(103,3,1,1,-52.59,-59.27),(104,3,1,3,-62.86,-69.54),(105,3,1,4,-66.33,-73.02),(106,3,2,1,-54.62,-61.3),(107,3,2,3,-58.23,-64.91),(108,3,2,4,-67.01,-73.69),(109,3,3,1,-57.41,-64.09),(110,3,3,3,-53.85,-60.53),(111,3,3,4,-61.55,-68.23),(112,3,4,1,-50.55,-57.24),(113,3,4,3,-43.67,-50.35),(114,3,4,4,-55.65,-62.34),(115,3,5,1,-52.14,-58.83),(116,3,5,3,-42.97,-49.66),(117,3,5,4,-56.37,-63.06),(118,3,6,1,-53.64,-60.32),(119,3,6,3,-43.67,-50.35),(120,3,6,4,-57.15,-63.83),(121,3,7,1,-55.02,-61.71),(122,3,7,3,-45.36,-52.04),(123,3,7,4,-57.95,-64.64),(124,3,8,1,-56.3,-62.98),(125,3,8,3,-47.41,-54.09),(126,3,8,4,-58.76,-65.44),(127,3,9,1,-57.47,-64.16),(128,3,9,3,-49.44,-56.12),(129,3,9,4,-59.56,-66.24),(130,3,10,1,-58.56,-65.24),(131,3,10,3,-51.31,-58),(132,3,10,4,-60.34,-67.02),(133,4,0,1,-54.37,-61.05),(134,4,0,3,-50.75,-57.43),(135,4,0,4,-58.45,-65.13),(136,4,1,1,-54.84,-61.52),(137,4,1,3,-48.65,-55.34),(138,4,1,4,-58.67,-65.36),(139,4,2,1,-56.15,-62.83),(140,4,2,3,-46.27,-52.95),(141,4,2,4,-59.33,-66.01),(142,4,3,1,-58.05,-64.74),(143,4,3,3,-43.67,-50.35),(144,4,3,4,-53.64,-60.32),(145,4,4,1,-60.31,-66.99),(146,4,4,3,-41.28,-47.96),(147,4,4,4,-54.43,-61.11),(148,4,5,1,-53.14,-59.82),(149,4,5,3,-40.21,-46.89),(150,4,5,4,-55.3,-61.98),(151,4,6,1,-54.43,-61.11),(152,4,6,3,-41.28,-47.96),(153,4,6,4,-56.22,-62.9),(154,4,7,1,-55.65,-62.34),(155,4,7,3,-43.67,-50.35),(156,4,7,4,-57.15,-63.83),(157,4,8,1,-56.81,-63.49),(158,4,8,3,-46.27,-52.95),(159,4,8,4,-58.07,-64.75),(160,4,9,1,-57.9,-64.58),(161,4,9,3,-48.65,-55.34),(162,4,9,4,-58.96,-65.64),(163,4,10,1,-58.91,-65.59),(164,4,10,3,-50.75,-57.43),(165,4,10,4,-84.56,0),(166,5,0,1,-62.55,-69.24),(167,5,0,3,-50.55,-57.24),(168,5,0,4,-56.55,-63.24),(169,5,1,1,-62.99,-69.67),(170,5,1,3,-48.37,-55.05),(171,5,1,4,-56.87,-63.55),(172,5,2,1,-64.24,-70.92),(173,5,2,3,-45.83,-52.51),(174,5,2,4,-57.78,-64.46),(175,5,3,1,-59.14,-65.82),(176,5,3,3,-42.97,-49.66),(177,5,3,4,-52.14,-58.83),(178,5,4,1,-60.82,-67.5),(179,5,4,3,-40.21,-46.89),(180,5,4,4,-53.14,-59.82),(181,5,5,1,-62.7,-69.38),(182,5,5,3,-38.9,-45.58),(183,5,5,4,-54.21,-60.89),(184,5,6,1,-55.3,-61.98),(185,5,6,3,-40.21,-46.89),(186,5,6,4,-55.3,-61.98),(187,5,7,1,-56.37,-63.06),(188,5,7,3,-42.97,-49.66),(189,5,7,4,-56.37,-63.06),(190,5,8,1,-63.57,-70.25),(191,5,8,3,-54.32,-61),(192,5,8,4,-84.09,0),(193,5,9,1,-58.4,-65.08),(194,5,9,3,-56.85,-63.53),(195,5,9,4,-80.24,0),(196,5,10,1,-59.34,-66.02),(197,5,10,3,-59.04,-65.72),(198,5,10,4,-78.31,-84.99),(199,6,0,1,-64.45,-71.13),(200,6,0,3,-50.75,-57.43),(201,6,0,4,-48.37,-55.05),(202,6,1,1,-64.76,-71.44),(203,6,1,3,-48.65,-55.34),(204,6,1,4,-48.65,-55.34),(205,6,2,1,-65.66,-72.34),(206,6,2,3,-46.27,-52.95),(207,6,2,4,-49.44,-56.12),(208,6,3,1,-60.35,-67.03),(209,6,3,3,-43.67,-50.35),(210,6,3,4,-50.55,-57.24),(211,6,4,1,-61.64,-68.32),(212,6,4,3,-41.28,-47.96),(213,6,4,4,-51.83,-58.51),(214,6,5,1,-63.11,-69.79),(215,6,5,3,-40.21,-46.89),(216,6,5,4,-53.14,-59.82),(217,6,6,1,-64.71,-71.39),(218,6,6,3,-41.28,-47.96),(219,6,6,4,-54.43,-61.11),(220,6,7,1,-63.17,-69.85),(221,6,7,3,-49.99,-56.67),(222,6,7,4,-78.46,0),(223,6,8,1,-64.13,-70.81),(224,6,8,3,-52.98,-59.66),(225,6,8,4,-75.78,-82.47),(226,6,9,1,-65.08,-71.76),(227,6,9,3,-55.65,-62.33),(228,6,9,4,-74.61,-81.29),(229,6,10,1,-59.82,-66.5),(230,6,10,3,-57.96,-64.65),(231,6,10,4,-74.14,-80.82),(232,7,0,1,-66.1,-72.78),(233,7,0,3,-51.31,-58),(234,7,0,4,-45.83,-52.51),(235,7,1,1,-66.33,-73.02),(236,7,1,3,-49.44,-56.12),(237,7,1,4,-46.27,-52.95),(238,7,2,1,-67.01,-73.69),(239,7,2,3,-47.41,-54.09),(240,7,2,4,-47.41,-54.09),(241,7,3,1,-61.55,-68.23),(242,7,3,3,-45.36,-52.04),(243,7,3,4,-48.93,-55.61),(244,7,4,1,-62.56,-69.25),(245,7,4,3,-43.67,-50.35),(246,7,4,4,-50.55,-57.24),(247,7,5,1,-63.75,-70.43),(248,7,5,3,-42.97,-49.66),(249,7,5,4,-52.14,-58.83),(250,7,6,1,-71.07,-77.75),(251,7,6,3,-49.99,-56.67),(252,7,6,4,-72.61,-79.3),(253,7,7,1,-72.44,-79.12),(254,7,7,3,-51.36,-58.04),(255,7,7,4,-71.18,-77.86),(256,7,8,1,-64.77,-71.46),(257,7,8,3,-53.53,-60.21),(258,7,8,4,-56.3,-62.98),(259,7,9,1,-65.61,-72.29),(260,7,9,3,-55.76,-62.45),(261,7,9,4,-57.47,-64.16),(262,7,10,1,-66.43,-73.11),(263,7,10,3,-57.84,-64.52),(264,7,10,4,-58.56,-65.24),(265,8,0,1,-67.57,-74.25),(266,8,0,3,-52.14,-58.83),(267,8,0,4,-42.97,-49.66),(268,8,1,1,-67.75,-74.43),(269,8,1,3,-50.55,-57.24),(270,8,1,4,-43.67,-50.35),(271,8,2,1,-68.27,-74.96),(272,8,2,3,-48.93,-55.61),(273,8,2,4,-45.36,-52.04),(274,8,3,1,-69.12,-75.8),(275,8,3,3,-47.41,-54.09),(276,8,3,4,-47.41,-54.09),(277,8,4,1,-63.52,-70.2),(278,8,4,3,-46.27,-52.95),(279,8,4,4,-49.44,-56.12),(280,8,5,1,-70.64,-77.33),(281,8,5,3,-54.32,-61),(282,8,5,4,-66.54,-73.23),(283,8,6,1,-71.63,-78.31),(284,8,6,3,-52.98,-59.66),(285,8,6,4,-53.01,-59.69),(286,8,7,1,-72.75,-79.43),(287,8,7,3,-53.53,-60.21),(288,8,7,4,-54.53,-61.21),(289,8,8,1,-73.96,-80.64),(290,8,8,3,-54.93,-61.61),(291,8,8,4,-55.9,-62.59),(292,8,9,1,-66.19,-72.88),(293,8,9,3,-56.61,-63.3),(294,8,9,4,-57.15,-63.83),(295,8,10,1,-66.93,-73.61),(296,8,10,3,-58.33,-65.01),(297,8,10,4,-58.29,-64.97),(298,9,0,1,-68.88,-75.56),(299,9,0,3,-53.14,-59.82),(300,9,0,4,-40.21,-46.89),(301,9,1,1,-69.02,-75.71),(302,9,1,3,-51.83,-58.51),(303,9,1,4,-41.28,-47.96),(304,9,2,1,-69.44,-76.13),(305,9,2,3,-50.55,-57.24),(306,9,2,4,-43.67,-50.35),(307,9,3,1,-70.12,-76.8),(308,9,3,3,-49.44,-56.12),(309,9,3,4,-46.27,-52.95),(310,9,4,1,-64.46,-71.14),(311,9,4,3,-48.65,-55.34),(312,9,4,4,-48.65,-55.34),(313,9,5,1,-65.26,-71.94),(314,9,5,3,-56.85,-63.53),(315,9,5,4,-50.75,-57.43),(316,9,6,1,-72.29,-78.97),(317,9,6,3,-55.65,-62.33),(318,9,6,4,-52.59,-59.27),(319,9,7,1,-73.21,-79.89),(320,9,7,3,-55.76,-62.45),(321,9,7,4,-54.21,-60.89),(322,9,8,1,-74.22,-80.9),(323,9,8,3,-56.61,-63.3),(324,9,8,4,-55.65,-62.34),(325,9,9,1,-75.3,-81.99),(326,9,9,3,-57.83,-64.51),(327,9,9,4,-56.95,-63.63),(328,9,10,1,-67.47,-74.15),(329,9,10,3,-59.18,-65.86),(330,9,10,4,-58.12,-64.81),(331,10,0,1,-70.07,-76.75),(332,10,0,3,-54.21,-60.89),(333,10,0,4,-38.9,-45.58),(334,10,1,1,-70.18,-76.87),(335,10,1,3,-53.14,-59.82),(336,10,1,4,-40.21,-46.89),(337,10,2,1,-70.53,-77.21),(338,10,2,3,-52.14,-58.83),(339,10,2,4,-42.97,-49.66),(340,10,3,1,-71.08,-77.77),(341,10,3,3,-51.31,-58),(342,10,3,4,-45.83,-52.51),(343,10,4,1,-71.83,-78.52),(344,10,4,3,-50.75,-57.43),(345,10,4,4,-48.37,-55.05),(346,10,5,1,-66.04,-72.73),(347,10,5,3,-59.04,-65.72),(348,10,5,4,-50.55,-57.24),(349,10,6,1,-66.81,-73.5),(350,10,6,3,-57.96,-64.65),(351,10,6,4,-52.45,-59.13),(352,10,7,1,-73.76,-80.44),(353,10,7,3,-57.84,-64.52),(354,10,7,4,-54.1,-60.78),(355,10,8,1,-74.61,-81.29),(356,10,8,3,-58.33,-65.01),(357,10,8,4,-55.57,-62.25),(358,10,9,1,-75.54,-82.22),(359,10,9,3,-59.18,-65.86),(360,10,9,4,-56.88,-63.56),(361,10,10,1,-76.52,-83.2),(362,10,10,3,-60.21,-66.89),(363,10,10,4,-58.07,-64.75);
/*!40000 ALTER TABLE `signal_matrix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `walls`
--

DROP TABLE IF EXISTS `walls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `walls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `material` varchar(64) NOT NULL,
  `colour` varchar(64) DEFAULT NULL,
  `mapid` int DEFAULT NULL,
  `atten24` float DEFAULT NULL,
  `atten5` float DEFAULT NULL,
  `thick` float DEFAULT NULL,
  `x1` float DEFAULT NULL,
  `y1` float DEFAULT NULL,
  `x2` float DEFAULT NULL,
  `y2` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `walls`
--

LOCK TABLES `walls` WRITE;
/*!40000 ALTER TABLE `walls` DISABLE KEYS */;
INSERT INTO `walls` VALUES (1,'1','000000',1,6,6,0.2,3,0,3,3),(2,'concrete','000000',1,6,6,0.2,5,8,8,5),(3,'concrete','000000',1,6,6,0.2,5,0,5,2);
/*!40000 ALTER TABLE `walls` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-06 19:41:56
